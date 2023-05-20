#using scripts\codescripts\struct;
#using scripts\cp\_accolades;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_oed;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_eth_prologue;
#using scripts\cp\cp_mi_eth_prologue_accolades;
#using scripts\cp\cp_mi_eth_prologue_fx;
#using scripts\cp\cp_mi_eth_prologue_sound;
#using scripts\cp\cp_prologue_player_sacrifice;
#using scripts\cp\cp_prologue_robot_reveal;
#using scripts\cp\cp_prologue_util;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_save;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\fx_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\math_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\vehicleriders_shared;

#namespace namespace_1eb7e8f5;

/*
	Name: function_61ebdfad
	Namespace: namespace_1eb7e8f5
	Checksum: 0x3A52B9CD
	Offset: 0x21F8
	Size: 0x243
	Parameters: 2
	Flags: None
*/
function function_61ebdfad(var_a67db03e, var_96ecaade)
{
	namespace_4dc8633b::function_77d9dff("objective_apc_init");
	if(var_96ecaade)
	{
		namespace_d7916d65::function_73adcefc();
		level thread namespace_2cb3876f::function_cfabe921();
		var_935a64f = function_6ada35ba("clip_ai_garage", "targetname");
		var_935a64f function_8bdea13c(-200, 0.05);
		var_c8af31c9 = function_6ada35ba("clip_player_garage", "targetname");
		var_c8af31c9 function_8bdea13c(200 * -1, 0.05);
		level.var_92d245e2 = namespace_82b91a51::function_740f8516("prometheus");
		level.var_2fd26037 = namespace_82b91a51::function_740f8516("hendricks");
		namespace_1d795d47::function_3096a6fd(var_a67db03e, level.var_6a876531);
		namespace_d7916d65::function_a2995f22();
		level namespace_2cb3876f::function_6a5f89cb("skipto_apc_ai");
		namespace_4dbf3ae3::function_42e87952("triggercolor_allies_garage");
		level function_50d6bf35("vehicle_apc_hijack_node", 0);
		level namespace_ad23e503::function_74d6b22f("players_in_garage");
	}
	level.var_1a71fabf = 0;
	function_a0321b9a();
	if(isdefined(level.var_88610be3))
	{
		level thread [[level.var_88610be3]]();
	}
	function_3ee236cf();
}

/*
	Name: function_a0321b9a
	Namespace: namespace_1eb7e8f5
	Checksum: 0xF3398B10
	Offset: 0x2448
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_a0321b9a()
{
	if(namespace_cc27597::function_367f8966("cin_pro_13_01_vtoltackle_vign_takedown"))
	{
		var_e006a077 = namespace_cc27597::function_af9fe39b("vtol");
		if(isdefined(var_e006a077))
		{
			var_e006a077.var_3e3a41eb = 1;
			var_e006a077 notify("hash_128f8789");
			if(!function_5b49d38c(var_e006a077))
			{
				var_e006a077 function_dc8c8404();
			}
		}
		namespace_cc27597::function_fcf56ab5("cin_pro_13_01_vtoltackle_vign_takedown");
	}
}

/*
	Name: function_c92883a
	Namespace: namespace_1eb7e8f5
	Checksum: 0x9D70658F
	Offset: 0x2508
	Size: 0x6B
	Parameters: 4
	Flags: None
*/
function function_c92883a(var_4be20d44, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	level namespace_cc27597::function_c35e6aab("p7_fxanim_cp_prologue_pump_station_crash_bundle");
	level.var_b8f294e8 = 1;
	namespace_4dc8633b::function_77d9dff("apc_done");
}

/*
	Name: function_3ee236cf
	Namespace: namespace_1eb7e8f5
	Checksum: 0x941BE3CD
	Offset: 0x2580
	Size: 0x1EB
	Parameters: 0
	Flags: None
*/
function function_3ee236cf()
{
	namespace_76d95162::function_d9f49fba(0);
	level thread function_258a16c();
	level thread function_651e7b34(1);
	level thread function_b31512cf();
	level thread function_599ebca1();
	level thread function_a4abb20e();
	level.var_92d245e2 function_169cc712(function_b4cb3503("nd_taylor_garage", "targetname"), 1);
	level namespace_cc27597::function_43718187("cin_pro_15_01_opendoor_vign_getinside_new_hendricks_and_prometheus");
	level namespace_ad23e503::function_74d6b22f("apc_ready");
	level thread function_5c746711();
	level namespace_ad23e503::function_1ab5ebec("players_are_in_apc");
	level namespace_ad23e503::function_1ab5ebec("ai_in_apc");
	if(!level namespace_ad23e503::function_7922262b("failed_apc_boarding"))
	{
		level.var_2fd26037 namespace_96fa87af::function_230eadd7(level.var_1eb7e8f5, "driver", 1);
		level thread function_5c1321b9();
		namespace_1d795d47::function_be8adfb8("skipto_apc");
	}
}

/*
	Name: function_a4abb20e
	Namespace: namespace_1eb7e8f5
	Checksum: 0xEF2891A3
	Offset: 0x2778
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_a4abb20e()
{
	level waittill("hash_ef5b1f55");
	level namespace_82b91a51::function_ef3f75eb("sndStartGarage");
}

/*
	Name: function_599ebca1
	Namespace: namespace_1eb7e8f5
	Checksum: 0xDE6BF581
	Offset: 0x27B0
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_599ebca1()
{
	wait(45);
	if(!level namespace_ad23e503::function_7922262b("apc_unlocked"))
	{
		level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_i_got_the_wheel_gra_0");
	}
	level namespace_ad23e503::function_74d6b22f("apc_unlocked");
}

/*
	Name: function_5c746711
	Namespace: namespace_1eb7e8f5
	Checksum: 0x7B057059
	Offset: 0x2820
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_5c746711()
{
	level namespace_ad23e503::function_1ab5ebec("garage_dent");
	if(!level namespace_ad23e503::function_7922262b("players_are_in_apc"))
	{
		level thread function_1b4b1ac0();
		namespace_82b91a51::function_c9aa1ff("players_are_in_apc", 5);
	}
	level namespace_ad23e503::function_74d6b22f("garage_breach");
}

/*
	Name: function_1b4b1ac0
	Namespace: namespace_1eb7e8f5
	Checksum: 0x1097E4FD
	Offset: 0x28C8
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_1b4b1ac0()
{
	level endon("hash_8b0e5eab");
	if(!level namespace_ad23e503::function_7922262b("players_are_in_apc"))
	{
		level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_we_re_out_of_time_g_0");
		wait(5);
		level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_that_drone_won_t_wai_0");
	}
}

/*
	Name: function_b31512cf
	Namespace: namespace_1eb7e8f5
	Checksum: 0x1A076B01
	Offset: 0x2948
	Size: 0x189
	Parameters: 0
	Flags: None
*/
function function_b31512cf()
{
	level namespace_ad23e503::function_1ab5ebec("players_are_in_apc");
	level thread function_4792c4cc();
	level namespace_ad23e503::function_1ab5ebec("apc_thru_door");
	function_eac31668(namespace_14b42b8a::function_7922262b("apc_door_exp").var_722885f3, 200, 1000, 800, undefined, "MOD_EXPLOSIVE");
	namespace_80983c42::function_80983c42("fx_exploder_fog_part_01");
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_prologue_apc_door_03_break_bundle");
	level namespace_ad23e503::function_74d6b22f("spawn_road_robots");
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a function_e2af603e("cp_prologue_rumble_apc_offroad");
	}
}

/*
	Name: function_833cbef4
	Namespace: namespace_1eb7e8f5
	Checksum: 0xB3AD0B7B
	Offset: 0x2AE0
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_833cbef4()
{
	self waittill("hash_eb5cc7bc");
	level thread namespace_82b91a51::function_67520c6a(10, "player_picked_up_collectible", &namespace_ad23e503::function_74d6b22f, "garage_dent");
}

/*
	Name: function_651e7b34
	Namespace: namespace_1eb7e8f5
	Checksum: 0x71DB06FF
	Offset: 0x2B38
	Size: 0x69B
	Parameters: 1
	Flags: None
*/
function function_651e7b34(var_aa0f824f)
{
	if(var_aa0f824f)
	{
		level namespace_ad23e503::function_1ab5ebec("apc_unlocked");
	}
	level thread namespace_82b91a51::function_67520c6a(15, "player_picked_up_collectible", &namespace_ad23e503::function_74d6b22f, "garage_dent");
	namespace_84970cc4::function_966ecb29(level.var_9b1393e7, &function_833cbef4);
	namespace_dabbe128::function_356a4ee1(&function_833cbef4);
	level namespace_ad23e503::function_1ab5ebec("garage_dent");
	namespace_dabbe128::function_a0ac4434(&function_833cbef4);
	namespace_2f06d687::function_22356ba7("garage_robot_attackers", &function_dccdf588);
	level namespace_cc27597::function_43718187("p7_fxanim_cp_prologue_apc_door_03_dent_bundle");
	if(level namespace_ad23e503::function_7922262b("players_are_in_apc"))
	{
		return;
	}
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_prologue_apc_door_03_fail_bundle");
	var_935a64f = function_6ada35ba("clip_garage_exit", "targetname");
	if(isdefined(var_935a64f))
	{
		var_935a64f function_dc8c8404();
	}
	var_be61cb01 = function_6ada35ba("clip_garage_door", "targetname");
	if(isdefined(var_be61cb01))
	{
		var_be61cb01 function_dc8c8404();
	}
	level waittill("hash_93057b55");
	wait(2);
	if(level namespace_ad23e503::function_7922262b("players_are_in_apc") || level.var_1a71fabf >= level.var_9b1393e7.size)
	{
		return;
	}
	level namespace_ad23e503::function_74d6b22f("failed_apc_boarding");
	var_6ca49220 = [];
	var_6ca49220[0] = function_6ada35ba("trig_apc_gunner1", "script_noteworthy");
	var_6ca49220[1] = function_6ada35ba("trig_apc_gunner2", "script_noteworthy");
	var_6ca49220[2] = function_6ada35ba("trig_apc_gunner3", "script_noteworthy");
	var_6ca49220[3] = function_6ada35ba("trig_apc_gunner4", "script_noteworthy");
	foreach(var_66b9fddf in var_6ca49220)
	{
		if(isdefined(var_66b9fddf.var_5356d2cc))
		{
			var_66b9fddf.var_5356d2cc namespace_a230c2b1::function_e54c54c3();
		}
		var_66b9fddf function_dc8c8404();
	}
	var_1f75b80a = namespace_14b42b8a::function_7faf4c39("garage_fail_rockets", "targetname");
	var_8af78429 = function_c4d5ec1f("launcher_standard_magic_bullet");
	foreach(var_10729d99 in var_1f75b80a)
	{
		function_87f3c622(var_8af78429, var_10729d99.var_722885f3, namespace_14b42b8a::function_7922262b(var_10729d99.var_b07228b6, "targetname").var_722885f3);
		wait(0.15);
	}
	namespace_82b91a51::function_c49ce021("ally_01");
	namespace_82b91a51::function_c49ce021("ally_02");
	namespace_82b91a51::function_c49ce021("ally_03");
	namespace_82b91a51::function_c49ce021("hendricks");
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		if(isdefined(var_5dc5e20a))
		{
			var_5dc5e20a thread namespace_835fda7e::function_c794d3c2(100, 100, 1, 0);
			wait(0.15);
		}
	}
	wait(0.25);
	level.var_1eb7e8f5.var_dc29a320 = undefined;
	level.var_1eb7e8f5 function_8d63f8d0(1);
	level.var_1eb7e8f5 function_c3945cd5(level.var_1eb7e8f5.var_3a90f16b + 1, level.var_1eb7e8f5.var_722885f3);
	wait(1);
	namespace_82b91a51::function_207f8667(&"CP_MI_ETH_PROLOGUE_GARAGE_FAIL");
}

/*
	Name: function_4792c4cc
	Namespace: namespace_1eb7e8f5
	Checksum: 0x65689892
	Offset: 0x31E0
	Size: 0x1BF
	Parameters: 0
	Flags: None
*/
function function_4792c4cc()
{
	level endon("hash_b21dcc36");
	level endon("hash_98a72693");
	var_be61cb01 = function_6ada35ba("clip_garage_door", "targetname");
	if(!isdefined(var_be61cb01))
	{
		return;
	}
	var_be61cb01 function_8d63f8d0(1);
	while(1)
	{
		var_be61cb01 waittill("hash_f9348fda", var_f9348fda, var_a0ad4f34, var_34d7a5cf, var_dd89f865, var_fe311e35, var_f10f645, var_cd9517d2, var_f105c26b, var_dfcc01fd, var_bf827987);
		if(isdefined(var_dfcc01fd) && isdefined(var_dfcc01fd.var_4be20d44))
		{
			if(var_dfcc01fd.var_4be20d44 == "turret_bo3_mil_macv_gunner1" || var_dfcc01fd.var_4be20d44 == "turret_bo3_mil_macv_gunner2" || var_dfcc01fd.var_4be20d44 == "turret_bo3_mil_macv_gunner3" || var_dfcc01fd.var_4be20d44 == "turret_bo3_mil_macv_gunner4")
			{
				var_be61cb01 function_dc8c8404();
				level namespace_ad23e503::function_74d6b22f("apc_thru_door");
			}
		}
	}
}

/*
	Name: function_50d6bf35
	Namespace: namespace_1eb7e8f5
	Checksum: 0xFE817D74
	Offset: 0x33A8
	Size: 0x22B
	Parameters: 2
	Flags: None
*/
function function_50d6bf35(var_6c5c89e1, var_cab8c90c)
{
	namespace_96fa87af::function_994832bd("apc", &function_c695b790, var_cab8c90c);
	var_503961a8 = 0;
	var_9c9766b2 = 0;
	if(var_6c5c89e1 == "nd_stall_start")
	{
		level.var_1eb7e8f5 = namespace_96fa87af::function_7387a40a("apc_stall");
		level.var_1eb7e8f5.var_b691b9cf = "apc";
		var_503961a8 = 1;
		var_9c9766b2 = 1;
	}
	else
	{
		level.var_1eb7e8f5 = namespace_96fa87af::function_7387a40a("apc");
		level.var_1eb7e8f5 function_8d63f8d0(0);
		level.var_1eb7e8f5 function_917f75ac(1, 1);
		level.var_1eb7e8f5 function_917f75ac(2, 1);
		level.var_1eb7e8f5 function_917f75ac(3, 1);
		level.var_1eb7e8f5 function_917f75ac(4, 1);
	}
	level namespace_ad23e503::function_1ab5ebec("all_players_spawned");
	level function_87f36425(var_6c5c89e1, var_cab8c90c);
	level function_faafa578();
	level thread function_38362d1e();
	level.var_1eb7e8f5 thread function_8dc833e9(var_503961a8, var_9c9766b2);
	function_6c1294b8("vehicle_selfCollision", 1);
}

/*
	Name: function_c695b790
	Namespace: namespace_1eb7e8f5
	Checksum: 0x800AF926
	Offset: 0x35E0
	Size: 0x153
	Parameters: 1
	Flags: None
*/
function function_c695b790(var_cab8c90c)
{
	self namespace_96fa87af::function_3762fc40();
	level namespace_ad23e503::function_1ab5ebec("players_are_in_apc");
	function_37cbcf1a("veh_apc_startup", self.var_722885f3);
	self function_c2931a36("veh_apc_idle", 3);
	level namespace_82b91a51::function_ef3f75eb("sndStopGarage");
	if(!var_cab8c90c)
	{
		foreach(var_5dc5e20a in level.var_9b1393e7)
		{
			var_5dc5e20a function_e2af603e("cp_prologue_rumble_apc_engine_start");
		}
	}
	wait(1);
	self namespace_96fa87af::function_e103651a();
}

/*
	Name: function_8dc833e9
	Namespace: namespace_1eb7e8f5
	Checksum: 0xB9E2CDFA
	Offset: 0x3740
	Size: 0x119
	Parameters: 2
	Flags: None
*/
function function_8dc833e9(var_503961a8, var_d74d752a)
{
	if(!isdefined(var_503961a8))
	{
		var_503961a8 = 0;
	}
	if(!isdefined(var_d74d752a))
	{
		var_d74d752a = 0;
	}
	self endon("hash_128f8789");
	self endon("hash_ab8f1b97");
	var_adc2b62f = [];
	var_adc2b62f[0] = level.var_c1aa5253["apc_dmg_low"];
	var_adc2b62f[1] = level.var_c1aa5253["apc_dmg_high"];
	var_4cf5cdf3 = 0;
	while(1)
	{
		if(var_d74d752a == 0)
		{
			self waittill("hash_96522489");
		}
		function_da6acfd2(var_adc2b62f[var_4cf5cdf3], self, "tag_origin");
		var_4cf5cdf3++;
		if(var_d74d752a > 0)
		{
			var_d74d752a--;
		}
		if(var_4cf5cdf3 >= var_adc2b62f.size)
		{
			return;
		}
	}
}

/*
	Name: function_514ce5dd
	Namespace: namespace_1eb7e8f5
	Checksum: 0x45FDFC2B
	Offset: 0x3868
	Size: 0xBF
	Parameters: 0
	Flags: None
*/
function function_514ce5dd()
{
	/#
		while(1)
		{
			while(!level.var_2395e945[0] function_ecd44e51() || !level.var_2395e945[0] function_be4a4b0d())
			{
				wait(0.05);
			}
			level.var_1eb7e8f5 notify("hash_96522489");
			while(level.var_2395e945[0] function_ecd44e51() || level.var_2395e945[0] function_be4a4b0d())
			{
				wait(0.05);
			}
		}
	#/
}

/*
	Name: function_87f36425
	Namespace: namespace_1eb7e8f5
	Checksum: 0xC9579BA6
	Offset: 0x3930
	Size: 0xBB
	Parameters: 2
	Flags: None
*/
function function_87f36425(var_6c5c89e1, var_cab8c90c)
{
	level thread function_2309bb98(var_6c5c89e1, var_cab8c90c);
	if(level.var_31aefea8 != "skipto_apc_rail_stall" && level.var_31aefea8 != "skipto_apc_rail")
	{
		level thread function_ade89a8a();
	}
	level thread function_29c3397f();
	level.var_1eb7e8f5 function_9ed72b0c();
	level.var_1eb7e8f5 function_917f75ac(0);
}

/*
	Name: function_81a9e31c
	Namespace: namespace_1eb7e8f5
	Checksum: 0x466632B
	Offset: 0x39F8
	Size: 0x13B
	Parameters: 0
	Flags: None
*/
function function_81a9e31c()
{
	level.var_586b4bd0 = 0;
	level.var_4480630f = function_84970cc4("gunner1", "gunner2", "gunner3", "gunner4");
	var_3f213c83 = function_99201f25("t_enter_apc", "targetname");
	namespace_84970cc4::function_eaab05dc(var_3f213c83, &function_175e6b8e, 0);
	var_718396de = function_6ada35ba("m_tunnel_vtol_death", "targetname");
	var_718396de function_50ccee8d();
	level thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_prologue_apc_door_01_open_bundle");
	level thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_prologue_apc_door_02_open_bundle");
	level thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_prologue_apc_door_03_dent_bundle");
}

/*
	Name: function_258a16c
	Namespace: namespace_1eb7e8f5
	Checksum: 0x156D79A3
	Offset: 0x3B40
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_258a16c()
{
	if(isdefined(level.var_f58c9f31))
	{
		level.var_f58c9f31 function_dc8c8404();
	}
	if(isdefined(level.var_7f246cd7))
	{
		level.var_7f246cd7 function_dc8c8404();
	}
	if(isdefined(level.var_5d4087a6))
	{
		level.var_5d4087a6 function_dc8c8404();
	}
	namespace_12501af4::function_c2619de1();
}

/*
	Name: function_7ef8f611
	Namespace: namespace_1eb7e8f5
	Checksum: 0xD626FDF3
	Offset: 0x3BD8
	Size: 0x75
	Parameters: 0
	Flags: None
*/
function function_7ef8f611()
{
	var_e3b635fb = function_b8494651("axis");
	if(isdefined(var_e3b635fb))
	{
		for(var_c957f6b6 = 0; var_c957f6b6 < var_e3b635fb.size; var_c957f6b6++)
		{
			var_e3b635fb[var_c957f6b6] function_dc8c8404();
		}
	}
}

/*
	Name: function_c1b99214
	Namespace: namespace_1eb7e8f5
	Checksum: 0xDC792A01
	Offset: 0x3C58
	Size: 0x29B
	Parameters: 2
	Flags: None
*/
function function_c1b99214(var_a67db03e, var_74cd64bc)
{
	namespace_4dc8633b::function_77d9dff("objective_apc_rail_init");
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		level thread namespace_2cb3876f::function_cfabe921();
		namespace_76d95162::function_d9f49fba(0);
		level.var_92d245e2 = namespace_82b91a51::function_740f8516("prometheus");
		level.var_2fd26037 = namespace_82b91a51::function_740f8516("hendricks");
		level namespace_2cb3876f::function_6a5f89cb("skipto_apc_rail_ai");
		level function_50d6bf35("vehicle_apc_hijack_node", 1);
		namespace_d7916d65::function_a2995f22();
		level function_26fb0662();
		level.var_92d245e2 function_169cc712(level.var_92d245e2.var_722885f3, 1);
		level.var_2fd26037 function_169cc712(level.var_2fd26037.var_722885f3, 1);
		level.var_2fd26037 namespace_96fa87af::function_230eadd7(level.var_1eb7e8f5, "driver", 1);
		level namespace_ad23e503::function_74d6b22f("apc_unlocked");
		level namespace_ad23e503::function_74d6b22f("apc_ready");
		level thread function_5c1321b9();
		level thread function_b31512cf();
		level thread function_651e7b34(0);
		level thread function_599ebca1();
		wait(0.1);
		level namespace_ad23e503::function_74d6b22f("garage_dent");
		level thread function_e928ca6f();
	}
	function_e41aeec0();
}

/*
	Name: function_961480e7
	Namespace: namespace_1eb7e8f5
	Checksum: 0x84A96012
	Offset: 0x3F00
	Size: 0x3B
	Parameters: 4
	Flags: None
*/
function function_961480e7(var_4be20d44, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	namespace_4dc8633b::function_77d9dff("apc_rail_done");
}

/*
	Name: function_e41aeec0
	Namespace: namespace_1eb7e8f5
	Checksum: 0xFB89D4BD
	Offset: 0x3F48
	Size: 0x2BB
	Parameters: 0
	Flags: None
*/
function function_e41aeec0()
{
	level.var_1eb7e8f5 function_e48f905e("veh_t7_mil_macv_prologue_optimized");
	var_b7007b04 = namespace_96fa87af::function_22356ba7("truck_parked_one");
	foreach(var_a9993ca4 in var_b7007b04)
	{
		var_a9993ca4.var_dc29a320 = &function_2923c71;
		var_a9993ca4.var_5fbda1b0 = &function_afd7b227;
	}
	var_45900c37 = namespace_96fa87af::function_7387a40a("truck_challenge_1");
	var_45900c37.var_5fbda1b0 = &function_afd7b227;
	var_45900c37.var_dc29a320 = &function_2923c71;
	level thread function_2f99d976();
	level thread function_3a615091();
	level namespace_ad23e503::function_1ab5ebec("players_are_in_apc");
	level namespace_ad23e503::function_1ab5ebec("ai_in_apc");
	wait(1);
	var_935a64f = function_6ada35ba("clip_garage_exit", "targetname");
	if(isdefined(var_935a64f))
	{
		var_935a64f function_dc8c8404();
	}
	level thread function_8ff9807e();
	level thread function_8d1d7010();
	level thread function_83f90899();
	level thread function_9e863a52();
	level thread function_4b0777ee();
	level thread function_809f2e11();
	level thread function_4eae0e09();
	namespace_80983c42::function_80983c42("light_exploder_rails_stall");
}

/*
	Name: function_2f99d976
	Namespace: namespace_1eb7e8f5
	Checksum: 0x2E023418
	Offset: 0x4210
	Size: 0x113
	Parameters: 0
	Flags: None
*/
function function_2f99d976()
{
	level namespace_ad23e503::function_1ab5ebec("apc_rail_begin");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_get_ready_we_gotta_0", 0.5);
	level namespace_ad23e503::function_1ab5ebec("apc_thru_door");
	level thread namespace_21b2c1f2::function_da98f0c7();
	var_49b32118 = function_6ada35ba("pa_nrc_warning", "targetname");
	var_49b32118 namespace_71b8dba1::function_81141386("nrcp_infiltrators_moving_1", 0.5, 1);
	namespace_4dbf3ae3::function_1ab5ebec("t_apc_sees_vtols");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_focus_fire_on_that_b_0");
}

/*
	Name: function_3a615091
	Namespace: namespace_1eb7e8f5
	Checksum: 0x60CE8FF6
	Offset: 0x4330
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_3a615091()
{
	namespace_4dbf3ae3::function_1ab5ebec("trigger_reached_roadblock");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_we_gotta_take_a_deto_0", 0.5);
	namespace_4dbf3ae3::function_1ab5ebec("trigger_roadblock_bypass");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_apc_from_the_right_0");
	namespace_4dbf3ae3::function_1ab5ebec("ambush_vtol_takeoff");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_inbound_vtol_redire_0", 1);
}

/*
	Name: function_4b0777ee
	Namespace: namespace_1eb7e8f5
	Checksum: 0x18477CBD
	Offset: 0x43F8
	Size: 0x1B7
	Parameters: 0
	Flags: None
*/
function function_4b0777ee()
{
	namespace_96fa87af::function_994832bd("garage_truck1", &namespace_2cb3876f::function_9af14b02, "reached_roadblock", 3);
	namespace_96fa87af::function_994832bd("garage_truck2", &namespace_2cb3876f::function_9af14b02, "reached_roadblock", 3);
	namespace_96fa87af::function_994832bd("garage_truck2", &function_67348f4b);
	namespace_2f06d687::function_2b37a3c9("group_garage_trucker", "script_aigroup", &namespace_2cb3876f::function_1db6047f, "trigger_spawn_roadblock");
	namespace_4dbf3ae3::function_1ab5ebec("trigger_door_smash");
	var_b337b3dc = namespace_96fa87af::function_7387a40a("garage_truck1");
	var_b337b3dc.var_dc29a320 = &function_2923c71;
	var_b337b3dc.var_5fbda1b0 = &function_afd7b227;
	namespace_4dbf3ae3::function_1ab5ebec("trig_cleanup_intro_garage");
	wait(1.5);
	var_253f2317 = namespace_96fa87af::function_7387a40a("garage_truck2");
	var_253f2317.var_dc29a320 = &function_2923c71;
	var_253f2317.var_5fbda1b0 = &function_afd7b227;
}

/*
	Name: function_9e863a52
	Namespace: namespace_1eb7e8f5
	Checksum: 0x9E0DCAFB
	Offset: 0x45B8
	Size: 0x11F
	Parameters: 0
	Flags: None
*/
function function_9e863a52()
{
	level namespace_ad23e503::function_1ab5ebec("apc_thru_door");
	namespace_96fa87af::function_994832bd("vtol_right", &function_5cc1f320);
	namespace_96fa87af::function_994832bd("vtol_left", &function_282b068c);
	namespace_96fa87af::function_994832bd("truck_parked_1", &function_9b11b2b2);
	namespace_96fa87af::function_7387a40a("vtol_right");
	namespace_96fa87af::function_7387a40a("vtol_left");
	namespace_4dbf3ae3::function_1ab5ebec("t_helipad_guys");
	var_45900c37 = namespace_96fa87af::function_7387a40a("truck_parked_1");
	var_45900c37.var_5fbda1b0 = &function_afd7b227;
}

/*
	Name: function_9b11b2b2
	Namespace: namespace_1eb7e8f5
	Checksum: 0x925CD978
	Offset: 0x46E0
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_9b11b2b2()
{
	self endon("hash_128f8789");
	self.var_dc29a320 = &function_2923c71;
	self namespace_96fa87af::function_3762fc40();
	namespace_4dbf3ae3::function_1ab5ebec("t_rail_ambush_apc");
	self.var_3e3a41eb = 1;
	self notify("hash_128f8789");
	if(!function_5b49d38c(self))
	{
		self function_dc8c8404();
	}
}

/*
	Name: function_5cc1f320
	Namespace: namespace_1eb7e8f5
	Checksum: 0x7A75E91D
	Offset: 0x4788
	Size: 0x1BB
	Parameters: 0
	Flags: None
*/
function function_5cc1f320()
{
	self endon("hash_128f8789");
	self.var_5fbda1b0 = &function_a6ea2383;
	self namespace_96fa87af::function_3762fc40();
	self namespace_96fa87af::function_42496438(0);
	self.var_aab0d56f = 0;
	namespace_4dbf3ae3::function_1ab5ebec("t_apc_sees_vtols");
	self namespace_96fa87af::function_e103651a();
	self function_8b51b0e9("evt_apcrail_vtol1_takeoff", "tag_barrel");
	self thread function_d20ef450();
	wait(0.25);
	self thread namespace_96fa87af::function_edb3a94e(function_243bb261(self.var_b07228b6, "targetname"));
	wait(0.5);
	self.var_aab0d56f = 1;
	for(var_c957f6b6 = 0; var_c957f6b6 < 3; var_c957f6b6++)
	{
		self namespace_37b990db::function_bae40a28(var_c957f6b6, 0);
	}
	self waittill("hash_6cf6ac7e");
	self.var_3e3a41eb = 1;
	self notify("hash_128f8789");
	if(!function_5b49d38c(self))
	{
		self function_dc8c8404();
	}
}

/*
	Name: function_282b068c
	Namespace: namespace_1eb7e8f5
	Checksum: 0x6EE2FF5A
	Offset: 0x4950
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_282b068c()
{
	self endon("hash_128f8789");
	self.var_5fbda1b0 = &function_a6ea2383;
	self namespace_96fa87af::function_42496438(0);
	self thread function_826bc065();
	namespace_d5067552::function_bae40a28("sm_vtol_guard");
	level namespace_ad23e503::function_1ab5ebec("robot_swarm");
	namespace_d5067552::function_2992720d("sm_vtol_guard", 1);
	self.var_3e3a41eb = 1;
	self notify("hash_128f8789");
	if(!function_5b49d38c(self))
	{
		self function_dc8c8404();
	}
}

/*
	Name: function_826bc065
	Namespace: namespace_1eb7e8f5
	Checksum: 0x2F21DC58
	Offset: 0x4A50
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_826bc065()
{
	var_c7b6e8e4 = self.var_722885f3;
	self waittill("hash_128f8789");
	function_37cbcf1a("evt_apcride_vtolpad_explo", var_c7b6e8e4);
}

/*
	Name: function_3d6b0c2e
	Namespace: namespace_1eb7e8f5
	Checksum: 0xE7150F4E
	Offset: 0x4AA0
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_3d6b0c2e()
{
	self endon("hash_128f8789");
	self waittill("hash_6cf6ac7e");
	wait(1);
	self thread function_a942e878(level.var_1eb7e8f5.var_722885f3, level.var_1eb7e8f5.var_722885f3);
}

/*
	Name: function_a942e878
	Namespace: namespace_1eb7e8f5
	Checksum: 0xB30D56FB
	Offset: 0x4B00
	Size: 0x139
	Parameters: 3
	Flags: None
*/
function function_a942e878(var_cd13e495, var_8f45fdaa, var_da05687c)
{
	self endon("hash_128f8789");
	var_9d9a11a7 = self function_d48f2ab3("tag_rocket_left");
	var_38c28fa2 = self function_d48f2ab3("tag_rocket_right");
	if(isdefined(var_da05687c))
	{
		var_8af78429 = function_c4d5ec1f(var_da05687c);
	}
	else
	{
		var_8af78429 = function_c4d5ec1f("hunter_rocket_turret");
	}
	var_b76e95dc = [];
	var_b76e95dc[0] = function_87f3c622(var_8af78429, var_9d9a11a7, var_cd13e495, self);
	wait(0.2);
	var_b76e95dc[1] = function_87f3c622(var_8af78429, var_38c28fa2, var_8f45fdaa, self);
	return var_b76e95dc;
}

/*
	Name: function_83f90899
	Namespace: namespace_1eb7e8f5
	Checksum: 0x7E928F06
	Offset: 0x4C48
	Size: 0x1EB
	Parameters: 0
	Flags: None
*/
function function_83f90899()
{
	var_866451b = namespace_96fa87af::function_7387a40a("attack_ambush_vtol");
	var_866451b.var_5fbda1b0 = &function_a6ea2383;
	var_866451b namespace_82b91a51::function_958c7633();
	var_866451b thread function_7d33cac1();
	namespace_2f06d687::function_2b37a3c9("apex_garage_humans", "targetname", &function_4dbae164);
	level thread function_e3e24f64("intro_road_humans", "trig_first_crawler", "trig_cleanup_apex_garage");
	level thread function_5b0849af();
	level thread function_e3e24f64("apex_garage_humans", "trig_cleanup_intro_garage", "trig_cleanup_apex_garage");
	level thread function_b6adac49();
	level thread function_3da7ede0();
	level thread function_ff99c927();
	level thread function_e3e24f64("helipad_human", "trigger_helipad_guards", "trigger_roadblock_bypass");
	level thread function_3c04ed4b();
	level namespace_ad23e503::function_1ab5ebec("spawn_road_robots");
	namespace_2f06d687::function_22356ba7("intro_road_robots", &function_722f45c3);
}

/*
	Name: function_4dbae164
	Namespace: namespace_1eb7e8f5
	Checksum: 0xA0E1FAD1
	Offset: 0x4E40
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_4dbae164()
{
	var_713e715e = namespace_14b42b8a::function_7922262b("garage_guy_pos");
	var_72237359 = namespace_82b91a51::function_ee78923e(var_713e715e.var_722885f3, 64, 200, 70, 40);
	self function_169cc712(var_72237359[function_26299103(var_72237359.size)], 1);
}

/*
	Name: function_722f45c3
	Namespace: namespace_1eb7e8f5
	Checksum: 0x5F0451ED
	Offset: 0x4EE0
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_722f45c3()
{
	self endon("hash_128f8789");
	namespace_4dbf3ae3::function_1ab5ebec("trig_cleanup_apex_garage");
	self function_dc8c8404();
}

/*
	Name: function_ff99c927
	Namespace: namespace_1eb7e8f5
	Checksum: 0xB73F3823
	Offset: 0x4F28
	Size: 0x163
	Parameters: 0
	Flags: None
*/
function function_ff99c927()
{
	namespace_2f06d687::function_2b37a3c9("roadblock_guard", "targetname", &function_b3a3ec26);
	namespace_2f06d687::function_2b37a3c9("group_roadblock", "script_aigroup", &namespace_2cb3876f::function_1db6047f, "t_offroad_enemies");
	namespace_2f06d687::function_2b37a3c9("parking_guard", "script_aigroup", &namespace_2cb3876f::function_1db6047f, "t_offroad_enemies");
	namespace_4dbf3ae3::function_1ab5ebec("trigger_garage_cleanup");
	namespace_d5067552::function_bae40a28("sm_roadblock_guard");
	namespace_4dbf3ae3::function_1ab5ebec("trigger_spawn_roadblock");
	wait(6);
	namespace_2f06d687::function_7387a40a("parking_guard1", &function_a22f604f, "truck_parked_1", "driver");
	namespace_2f06d687::function_7387a40a("parking_guard2", &function_a22f604f, "truck_parked_1", "gunner1");
}

/*
	Name: function_a22f604f
	Namespace: namespace_1eb7e8f5
	Checksum: 0x5560A2E9
	Offset: 0x5098
	Size: 0x83
	Parameters: 2
	Flags: None
*/
function function_a22f604f(var_1c74455b, var_60ef80c1)
{
	self endon("hash_128f8789");
	var_1d874f37 = function_6ada35ba(var_1c74455b + "_vh", "targetname");
	if(function_5b49d38c(var_1d874f37))
	{
		self thread namespace_96fa87af::function_230eadd7(var_1d874f37, var_60ef80c1, 0);
	}
}

/*
	Name: function_b3a3ec26
	Namespace: namespace_1eb7e8f5
	Checksum: 0xD6D12436
	Offset: 0x5128
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_b3a3ec26()
{
	self endon("hash_128f8789");
	level namespace_ad23e503::function_1ab5ebec("reached_roadblock");
	self namespace_d84e54db::function_b4f5e3b9(1);
	self function_169cc712(namespace_14b42b8a::function_7922262b(self.var_caae374e).var_722885f3, 1);
	self waittill("hash_41d1aaf0");
	self function_dc8c8404();
}

/*
	Name: function_3da7ede0
	Namespace: namespace_1eb7e8f5
	Checksum: 0xCAFA2BC8
	Offset: 0x51D0
	Size: 0x1B3
	Parameters: 0
	Flags: None
*/
function function_3da7ede0()
{
	level namespace_ad23e503::function_1ab5ebec("spawn_roadblock");
	var_1e13503b = namespace_96fa87af::function_7387a40a("macv_roadblock");
	var_1e13503b.var_dc29a320 = &function_2923c71;
	var_1e13503b.var_5fbda1b0 = &function_afd7b227;
	var_1e13503b endon("hash_128f8789");
	var_1e13503b thread namespace_96fa87af::function_edb3a94e(function_243bb261(var_1e13503b.var_b07228b6, "targetname"));
	for(var_c957f6b6 = 1; var_c957f6b6 <= 2; var_c957f6b6++)
	{
		var_1e13503b thread namespace_37b990db::function_2aefd6ec(var_c957f6b6, 1);
		var_1e13503b thread namespace_37b990db::function_d104c596(level.var_1eb7e8f5, 3, undefined, var_c957f6b6, 0);
	}
	wait(3);
	for(var_c957f6b6 = 1; var_c957f6b6 <= 4; var_c957f6b6++)
	{
		var_1e13503b namespace_37b990db::function_bae40a28(var_c957f6b6, 1);
	}
	level namespace_ad23e503::function_1ab5ebec("player_in_tunnel");
	var_1e13503b thread namespace_2cb3876f::function_3a642801();
}

/*
	Name: function_b6adac49
	Namespace: namespace_1eb7e8f5
	Checksum: 0x1AF5205F
	Offset: 0x5390
	Size: 0x6F
	Parameters: 0
	Flags: None
*/
function function_b6adac49()
{
	level namespace_ad23e503::function_1ab5ebec("spawn_roadblock");
	namespace_96fa87af::function_994832bd("helipad_roadbloack_trucks", &function_ea1ff9c4);
	var_11e46f4e = namespace_96fa87af::function_22356ba7("helipad_roadbloack_trucks");
}

/*
	Name: function_ea1ff9c4
	Namespace: namespace_1eb7e8f5
	Checksum: 0x4E1842DA
	Offset: 0x5408
	Size: 0x143
	Parameters: 0
	Flags: None
*/
function function_ea1ff9c4()
{
	self endon("hash_128f8789");
	self.var_dc29a320 = &function_2923c71;
	self.var_5fbda1b0 = &function_afd7b227;
	self thread namespace_96fa87af::function_edb3a94e(function_243bb261(self.var_b07228b6, "targetname"));
	self thread function_178c0a7a();
	var_27c4935 = (function_dc99997a(-80, 80), function_dc99997a(-80, 80), function_dc99997a(80, 100));
	self thread namespace_37b990db::function_d104c596(level.var_1eb7e8f5, 8, var_27c4935, 1, 0);
	level namespace_ad23e503::function_1ab5ebec("player_in_tunnel");
	self thread namespace_2cb3876f::function_3a642801();
}

/*
	Name: function_178c0a7a
	Namespace: namespace_1eb7e8f5
	Checksum: 0xF535AB61
	Offset: 0x5558
	Size: 0xD1
	Parameters: 0
	Flags: None
*/
function function_178c0a7a()
{
	self endon("hash_128f8789");
	self waittill("hash_6cf6ac7e");
	foreach(var_402c598a in self.var_d925663e)
	{
		if(function_5b49d38c(var_402c598a) && var_402c598a.var_219c140a != "gunner1")
		{
			var_402c598a thread namespace_2cb3876f::function_2f943869();
		}
	}
}

/*
	Name: function_3c04ed4b
	Namespace: namespace_1eb7e8f5
	Checksum: 0x36260102
	Offset: 0x5638
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_3c04ed4b()
{
	namespace_4dbf3ae3::function_1ab5ebec("trigger_chaser");
	namespace_96fa87af::function_994832bd("macv_chaser1", &function_61f3859c);
	namespace_96fa87af::function_22356ba7("macv_chaser1");
	if(level.var_9b1393e7.size > 1)
	{
		namespace_96fa87af::function_994832bd("macv_chaser2", &function_61f3859c);
		namespace_96fa87af::function_22356ba7("macv_chaser2");
	}
}

/*
	Name: function_61f3859c
	Namespace: namespace_1eb7e8f5
	Checksum: 0xBE6C3A03
	Offset: 0x56F0
	Size: 0x19B
	Parameters: 0
	Flags: None
*/
function function_61f3859c()
{
	self endon("hash_128f8789");
	self namespace_82b91a51::function_958c7633();
	self.var_dc29a320 = &function_2923c71;
	self.var_5fbda1b0 = &function_afd7b227;
	self thread namespace_96fa87af::function_edb3a94e(function_243bb261(self.var_b07228b6, "targetname"));
	self thread function_3ef12439();
	for(var_c957f6b6 = 1; var_c957f6b6 <= 4; var_c957f6b6++)
	{
		self thread namespace_37b990db::function_d104c596(level.var_1eb7e8f5, 8, undefined, var_c957f6b6, 0);
	}
	self waittill("hash_63884d2d");
	self namespace_82b91a51::function_4b741fdc();
	namespace_4dbf3ae3::function_1ab5ebec("ambush_vtol_takeoff");
	for(var_c957f6b6 = 1; var_c957f6b6 <= 4; var_c957f6b6++)
	{
		self thread namespace_37b990db::function_fcf56ab5(var_c957f6b6);
	}
	self notify("hash_b6c30be8");
	self waittill("hash_6cf6ac7e");
	self function_2992720d();
}

/*
	Name: function_3ef12439
	Namespace: namespace_1eb7e8f5
	Checksum: 0x1B5B24D1
	Offset: 0x5898
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_3ef12439()
{
	self endon("hash_b6c30be8");
	self waittill("hash_128f8789");
	if(self.var_fe2c8dda === 1)
	{
		self waittill("hash_90f83311");
	}
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_nice_fucking_shootin_0");
}

/*
	Name: function_e3e24f64
	Namespace: namespace_1eb7e8f5
	Checksum: 0x93BE2C05
	Offset: 0x5900
	Size: 0x169
	Parameters: 3
	Flags: None
*/
function function_e3e24f64(var_28c25ffb, var_421fd9c7, var_fe7e3b3a)
{
	var_6d6eaca4 = var_28c25ffb + "_ai";
	if(isdefined(var_421fd9c7))
	{
		namespace_4dbf3ae3::function_1ab5ebec(var_421fd9c7);
	}
	namespace_2f06d687::function_22356ba7(var_28c25ffb, &function_322a61a9);
	var_f92a03e7 = function_6ada35ba(var_fe7e3b3a, "targetname");
	var_f92a03e7 waittill("hash_4dbf3ae3");
	var_3f508c44 = function_99201f25(var_6d6eaca4, "targetname");
	foreach(var_5abbae22 in var_3f508c44)
	{
		if(isdefined(var_5abbae22))
		{
			var_5abbae22 function_dc8c8404();
		}
	}
}

/*
	Name: function_322a61a9
	Namespace: namespace_1eb7e8f5
	Checksum: 0x29EFDE7D
	Offset: 0x5A78
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_322a61a9()
{
	self.var_44a68a57 = &function_d73ad05a;
}

/*
	Name: function_1d1df80f
	Namespace: namespace_1eb7e8f5
	Checksum: 0xD6901188
	Offset: 0x5AA0
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_1d1df80f()
{
	self endon("hash_128f8789");
	var_d28b337 = function_243bb261("nd_humans_run_away", "script_noteworthy");
	var_d28b337 waittill("hash_4dbf3ae3");
	var_19c8d8db = function_b4cb3503("nd_humans_run_away", "targetname");
	self thread namespace_d84e54db::function_19e98020(var_19c8d8db, 32, 1);
}

/*
	Name: function_dccdf588
	Namespace: namespace_1eb7e8f5
	Checksum: 0xEE4523CA
	Offset: 0x5B40
	Size: 0xDB
	Parameters: 0
	Flags: None
*/
function function_dccdf588()
{
	self endon("hash_128f8789");
	self.var_7dfaf62 = 4;
	self function_169cc712(self.var_722885f3, 1);
	self thread function_eccbf04a();
	level namespace_ad23e503::function_1ab5ebec("apc_thru_door");
	self namespace_d84e54db::function_b4f5e3b9(0);
	var_20c0a07b = function_243bb261("nd_cleanup_garage_attackers", "script_noteworthy");
	var_20c0a07b waittill("hash_4dbf3ae3");
	self function_dc8c8404();
}

/*
	Name: function_eccbf04a
	Namespace: namespace_1eb7e8f5
	Checksum: 0xB2E2C4FA
	Offset: 0x5C28
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_eccbf04a()
{
	level endon("hash_b21dcc36");
	level waittill("hash_98a72693");
	self namespace_d84e54db::function_b4f5e3b9(0);
	self namespace_d84e54db::function_ceb883cd("move_mode", "rusher");
}

/*
	Name: function_5b0849af
	Namespace: namespace_1eb7e8f5
	Checksum: 0x60E07BCC
	Offset: 0x5C90
	Size: 0x3D
	Parameters: 0
	Flags: None
*/
function function_5b0849af()
{
	var_474ca92e = function_243bb261("nd_open_garage", "script_noteworthy");
	var_474ca92e waittill("hash_4dbf3ae3");
}

/*
	Name: function_8ff9807e
	Namespace: namespace_1eb7e8f5
	Checksum: 0x2AE5A36A
	Offset: 0x5CD8
	Size: 0x2FB
	Parameters: 0
	Flags: None
*/
function function_8ff9807e()
{
	level namespace_ad23e503::function_74d6b22f("apc_rail_begin");
	level.var_1eb7e8f5 function_921a1574("evt_apc_railstart");
	level thread function_5e86daf4();
	level.var_1eb7e8f5.var_7dfaf62 = 130;
	level.var_1eb7e8f5 thread namespace_96fa87af::function_edb3a94e(function_243bb261("vehicle_apc_hijack_node", "targetname"));
	level.var_1eb7e8f5 thread function_b328d415();
	level.var_1eb7e8f5 thread function_4d508278();
	level.var_1eb7e8f5 thread function_9d87900e();
	level thread function_b86a90c3();
	level thread function_e928ca6f();
	level thread function_97fa5e1d();
	namespace_4dbf3ae3::function_1ab5ebec("t_rail_ambush_apc");
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_prologue_pump_station_crash_bundle");
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a function_e2af603e("cp_prologue_rumble_apc_offroad");
	}
	level.var_1eb7e8f5 waittill("hash_6cf6ac7e");
	level.var_1eb7e8f5 function_eaa69754(2);
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a function_e2af603e("cp_prologue_rumble_apc_offroad");
	}
	namespace_2cb3876f::function_b50f5d52();
	namespace_80983c42::function_67e7a937("light_exploder_rails_stall");
	namespace_1d795d47::function_be8adfb8("skipto_apc_rail");
}

/*
	Name: function_e928ca6f
	Namespace: namespace_1eb7e8f5
	Checksum: 0xE9C0BF5D
	Offset: 0x5FE0
	Size: 0x14B
	Parameters: 1
	Flags: None
*/
function function_e928ca6f(var_1af3ff57)
{
	if(!isdefined(var_1af3ff57))
	{
		var_1af3ff57 = 0;
	}
	level notify("hash_d9c09629");
	level endon("hash_d9c09629");
	if(!isdefined(level.var_f9bd5790))
	{
		level.var_f9bd5790 = [];
		if(!var_1af3ff57)
		{
			level.var_f9bd5790["first_turnaround"] = &function_da78deb1;
			level.var_aaf3820c = function_84970cc4("first_turnaround", "vtol_tunnel");
		}
		else
		{
			level.var_aaf3820c = function_84970cc4("vtol_tunnel");
		}
		level.var_f9bd5790["vtol_tunnel"] = &function_9eeeaa5d;
	}
	level thread function_be3e569a();
	level namespace_ad23e503::function_1ab5ebec("apc_rail_fail");
	level [[level.var_f9bd5790[level.var_b5d119f0]]]();
	namespace_82b91a51::function_207f8667(&"CP_MI_ETH_PROLOGUE_GARAGE_FAIL");
}

/*
	Name: function_da78deb1
	Namespace: namespace_1eb7e8f5
	Checksum: 0x8825A244
	Offset: 0x6138
	Size: 0x161
	Parameters: 0
	Flags: None
*/
function function_da78deb1()
{
	var_6e104714 = VectorScale((0, 0, 1), 48);
	var_1f75b80a = namespace_14b42b8a::function_7faf4c39("apc_fail_rocket_structs", "targetname");
	var_8af78429 = function_c4d5ec1f("launcher_standard_magic_bullet");
	for(var_c957f6b6 = 0; var_c957f6b6 < 2; var_c957f6b6++)
	{
		var_b76e95dc = [];
		var_b76e95dc[0] = function_87f3c622(var_8af78429, var_1f75b80a[0].var_722885f3, level.var_1eb7e8f5.var_722885f3 + var_6e104714, undefined, level.var_1eb7e8f5);
		wait(0.1);
		var_b76e95dc[1] = function_87f3c622(var_8af78429, var_1f75b80a[1].var_722885f3, level.var_1eb7e8f5.var_722885f3 + var_6e104714, undefined, level.var_1eb7e8f5);
	}
	var_b76e95dc[0] waittill("hash_128f8789");
}

/*
	Name: function_9eeeaa5d
	Namespace: namespace_1eb7e8f5
	Checksum: 0xCE878145
	Offset: 0x62A8
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_9eeeaa5d()
{
	level notify("hash_8b1044c1");
	var_edc6e0e1 = function_6ada35ba("fxanim_vtol_tunnel", "targetname", 1);
	var_b76e95dc = var_edc6e0e1 function_a942e878(level.var_1eb7e8f5.var_722885f3, level.var_1eb7e8f5.var_722885f3, "launcher_standard_magic_bullet");
	var_b76e95dc[var_b76e95dc.size - 1] waittill("hash_128f8789");
}

/*
	Name: function_be3e569a
	Namespace: namespace_1eb7e8f5
	Checksum: 0x6E1587F1
	Offset: 0x6358
	Size: 0x1C7
	Parameters: 0
	Flags: None
*/
function function_be3e569a()
{
	level endon("hash_d9c09629");
	for(var_c957f6b6 = 0; var_c957f6b6 < level.var_aaf3820c.size; var_c957f6b6++)
	{
		level.var_b5d119f0 = level.var_aaf3820c[var_c957f6b6];
		foreach(var_5dc5e20a in level.var_2395e945)
		{
			var_5dc5e20a.var_52a8c6b = 0;
			var_5dc5e20a thread function_2de9c217();
		}
		level waittill("hash_9d265855");
		var_c25b6cc2 = 1;
		foreach(var_5dc5e20a in level.var_2395e945)
		{
			if(isdefined(var_5dc5e20a.var_52a8c6b) && var_5dc5e20a.var_52a8c6b)
			{
				var_c25b6cc2 = 0;
			}
		}
		if(var_c25b6cc2)
		{
			namespace_ad23e503::function_74d6b22f("apc_rail_fail");
			return;
		}
	}
}

/*
	Name: function_2de9c217
	Namespace: namespace_1eb7e8f5
	Checksum: 0xE7D6788A
	Offset: 0x6528
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_2de9c217()
{
	self notify("hash_837aa23e");
	self endon("hash_128f8789");
	self endon("hash_837aa23e");
	level endon("hash_d9c09629");
	while(1)
	{
		if(self function_be4a4b0d())
		{
			self.var_52a8c6b = 1;
			return;
		}
		wait(0.05);
	}
}

/*
	Name: function_b86a90c3
	Namespace: namespace_1eb7e8f5
	Checksum: 0x8F16526B
	Offset: 0x65A8
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_b86a90c3()
{
	var_4253be48 = function_243bb261("nd_garage_attackers", "script_noteworthy");
	var_4253be48 waittill("hash_4dbf3ae3");
	level.var_1eb7e8f5 thread function_219a1e60();
	function_6ac512e();
}

/*
	Name: function_97fa5e1d
	Namespace: namespace_1eb7e8f5
	Checksum: 0x9C0087E4
	Offset: 0x6618
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function function_97fa5e1d()
{
	level namespace_ad23e503::function_1ab5ebec("delete_garage_allies");
	if(isdefined(level.var_92d245e2))
	{
		level.var_92d245e2 function_dc8c8404();
	}
	if(isdefined(level.var_f58c9f31))
	{
		level.var_f58c9f31 function_dc8c8404();
	}
	if(isdefined(level.var_7f246cd7))
	{
		level.var_7f246cd7 function_dc8c8404();
	}
	if(isdefined(level.var_5d4087a6))
	{
		level.var_5d4087a6 function_dc8c8404();
	}
}

/*
	Name: function_2ac0c49
	Namespace: namespace_1eb7e8f5
	Checksum: 0xA778EAEE
	Offset: 0x66E8
	Size: 0x28B
	Parameters: 2
	Flags: None
*/
function function_2ac0c49(var_a67db03e, var_74cd64bc)
{
	namespace_4dc8633b::function_77d9dff("objective_apc_rail_stall_init");
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		level thread namespace_cc27597::function_5c143f59("p7_fxanim_cp_prologue_pump_station_crash_bundle");
		level thread namespace_2cb3876f::function_cfabe921();
		namespace_76d95162::function_d9f49fba(0);
		level.var_2fd26037 = namespace_82b91a51::function_740f8516("hendricks");
		level namespace_2cb3876f::function_6a5f89cb("skipto_apc_rail_stall_ai");
		level function_50d6bf35("nd_stall_start", 0);
		namespace_d7916d65::function_a2995f22();
		namespace_80983c42::function_80983c42("fx_exploder_fog_part_01");
		level function_26fb0662();
		level.var_2fd26037 namespace_96fa87af::function_230eadd7(level.var_1eb7e8f5, "driver", 1);
		var_8d053b4 = function_6ada35ba("t_rail_ambush_apc", "targetname");
		function_a45fee8b(var_8d053b4.var_722885f3, 150, 150, 2);
		level namespace_ad23e503::function_1ab5ebec("players_are_in_apc");
		level namespace_ad23e503::function_74d6b22f("apc_unlocked");
		level namespace_ad23e503::function_74d6b22f("apc_ready");
		level thread function_5c1321b9();
		level thread function_599ebca1();
		level thread function_809f2e11();
		level thread function_e928ca6f(1);
	}
	function_fa4b82f9();
}

/*
	Name: function_fbfbaee6
	Namespace: namespace_1eb7e8f5
	Checksum: 0x33CCF78E
	Offset: 0x6980
	Size: 0x19B
	Parameters: 4
	Flags: None
*/
function function_fbfbaee6(var_4be20d44, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	namespace_80983c42::function_67e7a937("light_exploder_cameraroom");
	namespace_80983c42::function_67e7a937("light_exploder_prison_door");
	namespace_80983c42::function_67e7a937("light_exploder_prison_exit");
	namespace_80983c42::function_67e7a937("light_exploder_torture_rooms");
	namespace_80983c42::function_67e7a937("light_lift_panel_red");
	namespace_80983c42::function_67e7a937("light_lift_panel_green");
	namespace_80983c42::function_67e7a937("light_exploder_lift_inside");
	namespace_80983c42::function_67e7a937("light_exploder_lift_rising");
	namespace_80983c42::function_67e7a937("light_exploder_igc_cybersoldier");
	namespace_80983c42::function_67e7a937("light_exploder_bridge");
	namespace_80983c42::function_67e7a937("light_exploder_darkbattle");
	namespace_80983c42::function_67e7a937("light_exploder_vtol_tackle_fire");
	level.var_b8f294e8 = 0;
	namespace_4dc8633b::function_77d9dff("apc_rail_stall_done");
	if(isdefined(level.var_1eb7e8f5))
	{
		level.var_1eb7e8f5 function_e48f905e("veh_t7_mil_macv");
	}
}

/*
	Name: function_fa4b82f9
	Namespace: namespace_1eb7e8f5
	Checksum: 0xF753C50D
	Offset: 0x6B28
	Size: 0x603
	Parameters: 0
	Flags: None
*/
function function_fa4b82f9()
{
	namespace_2cb3876f::function_b50f5d52();
	var_b7007b04 = namespace_96fa87af::function_22356ba7("truck_parked_two");
	foreach(var_a9993ca4 in var_b7007b04)
	{
		var_a9993ca4.var_dc29a320 = &function_2923c71;
	}
	var_45900c37 = namespace_96fa87af::function_7387a40a("truck_challenge_2");
	var_45900c37.var_dc29a320 = &function_2923c71;
	var_45900c37.var_5fbda1b0 = &function_afd7b227;
	level.var_1eb7e8f5 namespace_96fa87af::function_3762fc40();
	level thread function_4c84e244();
	level thread function_855b7b87();
	level thread function_7bfe936c();
	level thread function_2e621ac9();
	level thread function_643f155c();
	level thread function_80e4d901();
	level thread function_5c3fc7c6();
	level thread function_370bf66();
	if(isdefined(level.var_5e84772b))
	{
		level thread [[level.var_5e84772b]]();
	}
	level namespace_ad23e503::function_1ab5ebec("apc_resume");
	level.var_1eb7e8f5 function_921a1574("evt_apc_vtol_takeoff");
	level.var_1eb7e8f5 function_c2931a36("veh_railapc_move_lp", 3);
	var_3c54858a = function_243bb261("nd_stall_start", "targetname");
	level.var_1eb7e8f5 namespace_82b91a51::function_67520c6a(1, undefined, &namespace_96fa87af::function_edb3a94e, var_3c54858a);
	namespace_96fa87af::function_994832bd("tunnel_chase_apc", &namespace_2cb3876f::function_bd761fba, "tunnel_vtol_hit");
	namespace_96fa87af::function_994832bd("tunnel_truck", &namespace_2cb3876f::function_bd761fba, "tunnel_vtol_hit");
	var_418b69a6 = namespace_96fa87af::function_2962e239("tunnel_chase_apc");
	var_418b69a6.var_dc29a320 = &function_2923c71;
	var_418b69a6.var_5fbda1b0 = &function_afd7b227;
	var_e71aed84 = namespace_96fa87af::function_7387a40a("tunnel_truck");
	var_e71aed84.var_dc29a320 = &function_2923c71;
	var_e71aed84.var_5fbda1b0 = &function_afd7b227;
	level thread function_2ceecfc0();
	level thread function_870b1c2();
	level thread function_e3e24f64("tunnel_roadblock_guard", "trigger_tunnel_guards", "trig_cleanup_tunnel_roadblock");
	var_919a5632 = function_6ada35ba("trig_player_in_tunnel", "targetname");
	var_919a5632 waittill("hash_4dbf3ae3");
	level namespace_ad23e503::function_74d6b22f("player_in_tunnel");
	level thread function_704f0351();
	level thread function_f0e1f99();
	level.var_1eb7e8f5 waittill("hash_6cf6ac7e");
	level.var_1eb7e8f5 function_eaa69754(2);
	level.var_1eb7e8f5 function_ada64136();
	level thread function_aac37081();
	foreach(var_6bfe1586 in level.var_2395e945)
	{
		var_6bfe1586 notify("hash_ee92aeb6");
	}
	level namespace_ad23e503::function_74d6b22f("apc_crash");
	level thread namespace_21b2c1f2::function_27bc11a3();
	level namespace_ad23e503::function_1ab5ebec("apc_done");
	namespace_1d795d47::function_be8adfb8("skipto_apc_rail_stall");
}

/*
	Name: function_aac37081
	Namespace: namespace_1eb7e8f5
	Checksum: 0x2B5CCB21
	Offset: 0x7138
	Size: 0x473
	Parameters: 0
	Flags: None
*/
function function_aac37081()
{
	level thread namespace_2cb3876f::function_b50f5d52();
	level thread namespace_cc27597::function_8f9f34e0("cin_pro_17_01_robotdefend_vign_apc_exit_frontleft", &function_a51eb84, "done");
	level thread namespace_cc27597::function_8f9f34e0("cin_pro_17_01_robotdefend_vign_apc_exit_frontright", &function_a51eb84, "done");
	level thread namespace_cc27597::function_8f9f34e0("cin_pro_17_01_robotdefend_vign_apc_exit_rearleft", &function_a51eb84, "done");
	level thread namespace_cc27597::function_8f9f34e0("cin_pro_17_01_robotdefend_vign_apc_exit_rearright", &function_a51eb84, "done");
	level thread namespace_cc27597::function_8f9f34e0("cin_pro_17_01_robotdefend_vign_apc_exit_frontleft", &namespace_835fda7e::function_a4e4e77d, "play");
	var_1cbcb46d = namespace_14b42b8a::function_7922262b("tag_align_robot_defend2");
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		if(var_5dc5e20a.var_f9f3d62e == 1)
		{
			var_5dc5e20a.var_26e12b3 = "cin_pro_17_01_robotdefend_vign_apc_exit_frontleft";
			continue;
		}
		if(var_5dc5e20a.var_f9f3d62e == 2)
		{
			var_5dc5e20a.var_26e12b3 = "cin_pro_17_01_robotdefend_vign_apc_exit_frontright";
			continue;
		}
		if(var_5dc5e20a.var_f9f3d62e == 3)
		{
			var_5dc5e20a.var_26e12b3 = "cin_pro_17_01_robotdefend_vign_apc_exit_rearright";
			continue;
		}
		if(var_5dc5e20a.var_f9f3d62e == 4)
		{
			var_5dc5e20a.var_26e12b3 = "cin_pro_17_01_robotdefend_vign_apc_exit_rearleft";
		}
	}
	level thread function_1aa160fc();
	level thread function_7fd9539();
	level namespace_2cb3876f::function_12ce22ee();
	level.var_2fd26037 thread namespace_96fa87af::function_dca9dba2();
	foreach(var_e4463170 in level.var_933bbc2c)
	{
		if(function_5b49d38c(var_e4463170))
		{
			var_e4463170 thread namespace_96fa87af::function_dca9dba2();
		}
	}
	level thread namespace_cc27597::function_43718187("cin_pro_17_01_robotdefend_vign_apc_exit_apc");
	level thread namespace_cc27597::function_43718187("cin_pro_17_01_robotdefend_vign_apc_exit_ai");
	level thread namespace_cc27597::function_43718187("cin_pro_17_01_robotdefend_vign_apc_exit_hendricks");
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		if(function_5b49d38c(var_5dc5e20a))
		{
			level thread namespace_cc27597::function_43718187(var_5dc5e20a.var_26e12b3, var_5dc5e20a);
		}
	}
	level waittill("hash_68000fca");
	level thread namespace_835fda7e::function_8e9f8d38();
}

/*
	Name: function_7fd9539
	Namespace: namespace_1eb7e8f5
	Checksum: 0xA8A77E58
	Offset: 0x75B8
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_7fd9539()
{
	level waittill("hash_bb097890");
	level namespace_82b91a51::function_ef3f75eb("sndAPC");
	level waittill("hash_3c7fea6f");
	level namespace_82b91a51::function_ef3f75eb("sndAPCend");
}

/*
	Name: function_a51eb84
	Namespace: namespace_1eb7e8f5
	Checksum: 0x12BBD5B9
	Offset: 0x7618
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_a51eb84(var_c77d2837)
{
	level namespace_ad23e503::function_74d6b22f("apc_done");
}

/*
	Name: function_f0e1f99
	Namespace: namespace_1eb7e8f5
	Checksum: 0x331C948F
	Offset: 0x7650
	Size: 0x32B
	Parameters: 0
	Flags: None
*/
function function_f0e1f99()
{
	var_7b5de48c = namespace_14b42b8a::function_7922262b("rpg_shot");
	var_7693abd3 = namespace_14b42b8a::function_7922262b("derail_1");
	var_48c3c98 = namespace_14b42b8a::function_7922262b("derail_2");
	var_1e829b3c = namespace_14b42b8a::function_7922262b("explosion_derail");
	var_8af78429 = function_c4d5ec1f("launcher_standard");
	level.var_1eb7e8f5 waittill("hash_5c1321b9");
	function_87f3c622(var_8af78429, var_7b5de48c.var_722885f3, var_7693abd3.var_722885f3);
	wait(0.3);
	level thread namespace_5753664b::function_43718187("gen_explosion", namespace_14b42b8a::function_7922262b(var_7693abd3.var_b07228b6).var_722885f3);
	function_37cbcf1a("wpn_rocket_explode", namespace_14b42b8a::function_7922262b(var_7693abd3.var_b07228b6).var_722885f3);
	level.var_1eb7e8f5 waittill("hash_492aff01");
	function_87f3c622(var_8af78429, var_7b5de48c.var_722885f3, var_48c3c98.var_722885f3);
	wait(0.3);
	level thread namespace_5753664b::function_43718187("gen_explosion", namespace_14b42b8a::function_7922262b(var_48c3c98.var_b07228b6).var_722885f3);
	function_37cbcf1a("wpn_rocket_explode", namespace_14b42b8a::function_7922262b(var_48c3c98.var_b07228b6).var_722885f3);
	level.var_1eb7e8f5 waittill("hash_c98eccfe");
	wait(0.5);
	function_87f3c622(var_8af78429, var_7b5de48c.var_722885f3, var_1e829b3c.var_722885f3);
	wait(0.3);
	level thread namespace_5753664b::function_43718187("gen_explosion", namespace_14b42b8a::function_7922262b(var_1e829b3c.var_b07228b6).var_722885f3);
	function_37cbcf1a("wpn_rocket_explode", namespace_14b42b8a::function_7922262b(var_1e829b3c.var_b07228b6).var_722885f3);
}

/*
	Name: function_4c84e244
	Namespace: namespace_1eb7e8f5
	Checksum: 0xB8A1BAB2
	Offset: 0x7988
	Size: 0x113
	Parameters: 0
	Flags: None
*/
function function_4c84e244()
{
	level namespace_ad23e503::function_74d6b22f("robot_swarm");
	level thread namespace_21b2c1f2::function_27bc11a3();
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_fuck_damn_piece_of_0", 0.5);
	level thread function_abe568bf();
	wait(2);
	level.var_2fd26037 namespace_71b8dba1::function_81141386("khal_jacob_start_the_dam_0", 1);
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_what_the_hell_do_you_0", 0.5);
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_hold_them_back_this_0", 0.3);
	wait(5);
	level namespace_ad23e503::function_74d6b22f("apc_restart");
}

/*
	Name: function_855b7b87
	Namespace: namespace_1eb7e8f5
	Checksum: 0xF471A3B0
	Offset: 0x7AA8
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_855b7b87()
{
	level namespace_ad23e503::function_1ab5ebec("apc_engine_started");
	level namespace_ad23e503::function_74d6b22f("apc_resume");
	level thread namespace_21b2c1f2::function_8feece84();
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_we_re_good_let_s_fu_0");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_take_out_that_afv_0", 1);
}

/*
	Name: function_7bfe936c
	Namespace: namespace_1eb7e8f5
	Checksum: 0xD2004075
	Offset: 0x7B58
	Size: 0x183
	Parameters: 0
	Flags: None
*/
function function_7bfe936c()
{
	namespace_4dbf3ae3::function_1ab5ebec("trig_cleanup_tunnel_roadblock");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_buzzard_dead_ahead_0");
	level.var_1eb7e8f5 namespace_71b8dba1::function_81141386("dops_drone_in_range_thir_0", 0.5, 1);
	level.var_1eb7e8f5 namespace_71b8dba1::function_81141386("dops_sending_drop_coordin_0", 1);
	level namespace_ad23e503::function_1ab5ebec("tunnel_vtol_hit");
	level.var_1eb7e8f5 notify("hash_96522489");
	level.var_1eb7e8f5 namespace_71b8dba1::function_81141386("tayr_hendricks_additiona_0", 0.5, 1);
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_copy_that_2", 0.15);
	level namespace_ad23e503::function_1ab5ebec("obs_collapse");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_going_offroad_exfil_0");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_fuck_we_re_coming_i_0", 0.15);
}

/*
	Name: function_704f0351
	Namespace: namespace_1eb7e8f5
	Checksum: 0x93F7B1CA
	Offset: 0x7CE8
	Size: 0x113
	Parameters: 0
	Flags: None
*/
function function_704f0351()
{
	namespace_96fa87af::function_994832bd("last_truck", &function_6cb71a05);
	namespace_96fa87af::function_994832bd("truck_divert1", &function_6cb71a05);
	namespace_4dbf3ae3::function_1ab5ebec("trigger_truck_divert");
	var_5bde7cd3 = namespace_96fa87af::function_7387a40a("truck_divert1");
	var_5bde7cd3.var_5fbda1b0 = &function_4ddf39a4;
	namespace_4dbf3ae3::function_1ab5ebec("trigger_last_roadblock");
	namespace_96fa87af::function_22356ba7("last_truck");
	namespace_2f06d687::function_22356ba7("checkpoint_guard");
	wait(1);
	namespace_80983c42::function_80983c42("light_exploder_rails_roadblock");
}

/*
	Name: function_6cb71a05
	Namespace: namespace_1eb7e8f5
	Checksum: 0x5DAA5F08
	Offset: 0x7E08
	Size: 0x143
	Parameters: 0
	Flags: None
*/
function function_6cb71a05()
{
	self endon("hash_128f8789");
	self.var_dc29a320 = &function_2923c71;
	self.var_5fbda1b0 = &function_afd7b227;
	self thread namespace_96fa87af::function_edb3a94e(function_243bb261(self.var_b07228b6, "targetname"));
	var_27c4935 = (function_dc99997a(-80, 80), function_dc99997a(-80, 80), function_dc99997a(80, 100));
	self thread namespace_37b990db::function_d104c596(level.var_1eb7e8f5, 8, var_27c4935, 1, 0);
	level namespace_ad23e503::function_1ab5ebec("apc_crash");
	level thread namespace_21b2c1f2::function_27bc11a3();
	self thread namespace_2cb3876f::function_3a642801();
}

/*
	Name: function_fbbf6635
	Namespace: namespace_1eb7e8f5
	Checksum: 0x4E21898B
	Offset: 0x7F58
	Size: 0x143
	Parameters: 0
	Flags: None
*/
function function_fbbf6635()
{
	self endon("hash_128f8789");
	self.var_dc29a320 = &function_2923c71;
	self.var_5fbda1b0 = &function_afd7b227;
	self thread namespace_96fa87af::function_edb3a94e(function_243bb261(self.var_b07228b6, "targetname"));
	var_27c4935 = (function_dc99997a(-80, 80), function_dc99997a(-80, 80), function_dc99997a(80, 100));
	self thread namespace_37b990db::function_d104c596(level.var_1eb7e8f5, 8, var_27c4935, 1, 0);
	level namespace_ad23e503::function_1ab5ebec("apc_crash");
	level thread namespace_21b2c1f2::function_27bc11a3();
	self thread namespace_2cb3876f::function_3a642801();
}

/*
	Name: function_643f155c
	Namespace: namespace_1eb7e8f5
	Checksum: 0xFCC9D76C
	Offset: 0x80A8
	Size: 0x18D
	Parameters: 0
	Flags: None
*/
function function_643f155c()
{
	namespace_2f06d687::function_2b37a3c9("group_ambush_truck", "script_aigroup", &namespace_2cb3876f::function_1db6047f, "apc_hits_truck_in_tunnel");
	var_b23a66fe = namespace_96fa87af::function_994832bd("stall_truck", &function_b82df867);
	var_8c37ec95 = namespace_96fa87af::function_994832bd("stall_truck_rear", &function_b82df867);
	level namespace_ad23e503::function_1ab5ebec("robot_swarm");
	var_11e46f4e = namespace_96fa87af::function_22356ba7("stall_truck");
	foreach(var_45900c37 in var_11e46f4e)
	{
		if(level.var_9b1393e7.size > 1)
		{
			var_f0049a8 = namespace_96fa87af::function_22356ba7("stall_truck_rear");
		}
	}
}

/*
	Name: function_b82df867
	Namespace: namespace_1eb7e8f5
	Checksum: 0x9DB2B781
	Offset: 0x8240
	Size: 0x133
	Parameters: 0
	Flags: None
*/
function function_b82df867()
{
	self endon("hash_128f8789");
	self namespace_82b91a51::function_958c7633();
	self namespace_96fa87af::function_3762fc40();
	self thread namespace_96fa87af::function_edb3a94e(function_243bb261(self.var_b07228b6, "targetname"));
	self waittill("hash_63884d2d");
	wait(2);
	self namespace_82b91a51::function_4b741fdc();
	self namespace_37b990db::function_bae40a28(1, 1);
	self.var_dc29a320 = &function_2923c71;
	self.var_5fbda1b0 = &function_afd7b227;
	self waittill("hash_6cf6ac7e");
	self namespace_96fa87af::function_e103651a();
	namespace_4dbf3ae3::function_1ab5ebec("trig_player_in_tunnel");
	self thread namespace_2cb3876f::function_3a642801();
}

/*
	Name: function_2e621ac9
	Namespace: namespace_1eb7e8f5
	Checksum: 0x8A470B1D
	Offset: 0x8380
	Size: 0x193
	Parameters: 0
	Flags: None
*/
function function_2e621ac9()
{
	level namespace_ad23e503::function_1ab5ebec("robot_swarm");
	wait(2);
	level thread function_fc2d6bf3();
	namespace_2f06d687::function_2b37a3c9("ambush_robots_front", "targetname", &function_d8b959d6);
	namespace_d5067552::function_bae40a28("sm_ambush_robots_front");
	if(level.var_9b1393e7.size > 1)
	{
		namespace_2f06d687::function_2b37a3c9("ambush_robots_rear", "targetname", &function_d8b959d6);
		namespace_d5067552::function_bae40a28("sm_ambush_robots_rear");
		level thread function_27ee29e6();
		level thread function_4446fa95();
	}
	level thread function_b4145fc1();
	level thread function_35eded54();
	namespace_4dbf3ae3::function_1ab5ebec("trigger_tunnel_entrance");
	namespace_d5067552::function_2992720d("sm_ambush_robots_front");
	if(level.var_9b1393e7.size > 1)
	{
		namespace_d5067552::function_2992720d("sm_ambush_robots_rear");
	}
}

/*
	Name: function_d8b959d6
	Namespace: namespace_1eb7e8f5
	Checksum: 0xE3D98797
	Offset: 0x8520
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_d8b959d6()
{
	self endon("hash_128f8789");
	self namespace_d84e54db::function_ceb883cd("move_mode", "marching");
	self namespace_d84e54db::function_b4f5e3b9(1);
	self namespace_d84e54db::function_c9e45d52(1);
	wait(1);
	self namespace_d84e54db::function_b4f5e3b9(0);
	self namespace_d84e54db::function_c9e45d52(0);
	namespace_4dbf3ae3::function_1ab5ebec("t_spawn_tunnel_roadblock");
	self function_dc8c8404();
}

/*
	Name: function_fc2d6bf3
	Namespace: namespace_1eb7e8f5
	Checksum: 0xB34DC8D5
	Offset: 0x85F8
	Size: 0x183
	Parameters: 0
	Flags: None
*/
function function_fc2d6bf3()
{
	level endon("hash_2a6578a1");
	var_87783e2a = 4000;
	while(1)
	{
		var_d96f8b8b = [];
		foreach(var_1e25855 in function_bd90138e())
		{
			if(isdefined(var_1e25855.var_8344d65f) && isdefined(var_1e25855.var_8fc0e50e) && var_1e25855.var_8fc0e50e == "robot" && var_1e25855.var_8344d65f + var_87783e2a < GetTime())
			{
				var_d96f8b8b[var_d96f8b8b.size] = var_1e25855;
			}
		}
		for(var_5e76f0af = 0; var_5e76f0af < var_d96f8b8b.size; var_5e76f0af++)
		{
			var_d96f8b8b[var_5e76f0af] function_dc8c8404();
		}
		wait(var_87783e2a / 1000 / 2);
	}
}

/*
	Name: function_abe568bf
	Namespace: namespace_1eb7e8f5
	Checksum: 0xB9B59FB9
	Offset: 0x8788
	Size: 0x21B
	Parameters: 0
	Flags: None
*/
function function_abe568bf()
{
	while(!level namespace_ad23e503::function_7922262b("apc_restart"))
	{
		level.var_1eb7e8f5 function_921a1574("evt_apc_start_fail");
		foreach(var_5dc5e20a in level.var_9b1393e7)
		{
			var_5dc5e20a function_e2af603e("cp_prologue_rumble_apc_engine_restart");
		}
		namespace_80983c42::function_80983c42("light_exploder_headlight_flicker_01");
		wait(1.5);
		namespace_80983c42::function_67e7a937("light_exploder_headlight_flicker_01");
		wait(function_72a94f05(0.5, 1));
	}
	level.var_1eb7e8f5 function_921a1574("evt_apc_start_success");
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a function_e2af603e("cp_prologue_rumble_apc_engine_start");
	}
	wait(1.5);
	level.var_1eb7e8f5 namespace_96fa87af::function_e103651a();
	level namespace_ad23e503::function_74d6b22f("apc_engine_started");
}

/*
	Name: function_2ceecfc0
	Namespace: namespace_1eb7e8f5
	Checksum: 0x2604CD77
	Offset: 0x89B0
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_2ceecfc0()
{
	namespace_4dbf3ae3::function_1ab5ebec("t_spawn_tunnel_roadblock");
	namespace_2f06d687::function_22356ba7("tunnel_guard", &function_97127072);
}

/*
	Name: function_97127072
	Namespace: namespace_1eb7e8f5
	Checksum: 0x8E541A5E
	Offset: 0x8A00
	Size: 0x12B
	Parameters: 0
	Flags: None
*/
function function_97127072()
{
	self endon("hash_128f8789");
	level namespace_ad23e503::function_1ab5ebec("player_in_tunnel");
	if(self.var_caae374e === "runner_delay")
	{
		wait(1);
		self function_169cc712(namespace_14b42b8a::function_7922262b("struct_tunnel_safe").var_722885f3);
	}
	else if(self.var_caae374e === "runner")
	{
		wait(function_72a94f05(0.1, 0.6));
		self function_169cc712(namespace_14b42b8a::function_7922262b("struct_tunnel_safe").var_722885f3);
	}
	self namespace_d84e54db::function_b4f5e3b9(1);
	namespace_4dbf3ae3::function_1ab5ebec("trigger_tunnel_exit");
	self function_dc8c8404();
}

/*
	Name: function_870b1c2
	Namespace: namespace_1eb7e8f5
	Checksum: 0x39B27321
	Offset: 0x8B38
	Size: 0xDB
	Parameters: 0
	Flags: None
*/
function function_870b1c2()
{
	level namespace_ad23e503::function_1ab5ebec("player_in_tunnel");
	level thread namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_prologue_vtol_tunnel_rail_bundle", &function_a8eae8ac, "init");
	level thread namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_prologue_vtol_tunnel_rail_bundle", &function_3d3711ec, "done");
	var_2749762c = function_243bb261("nd_spawn_tunnel_vtol", "script_noteworthy");
	var_2749762c waittill("hash_4dbf3ae3");
	level thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_prologue_vtol_tunnel_rail_bundle");
}

/*
	Name: function_a8eae8ac
	Namespace: namespace_1eb7e8f5
	Checksum: 0x5FC90731
	Offset: 0x8C20
	Size: 0xFB
	Parameters: 1
	Flags: None
*/
function function_a8eae8ac(var_c77d2837)
{
	level endon("hash_8b1044c1");
	var_edc6e0e1 = var_c77d2837["fxanim_vtol_tunnel"];
	var_edc6e0e1 endon("hash_128f8789");
	var_edc6e0e1 namespace_82b91a51::function_958c7633();
	wait(1);
	var_edc6e0e1 thread function_f5dde0f6();
	var_edc6e0e1 thread function_95580b5();
	var_edc6e0e1 thread function_a59f4d1f();
	wait(2);
	var_edc6e0e1 namespace_82b91a51::function_4b741fdc();
	var_edc6e0e1.var_dc29a320 = &function_70cc1e9c;
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_prologue_vtol_tunnel_rail_bundle");
}

/*
	Name: function_95580b5
	Namespace: namespace_1eb7e8f5
	Checksum: 0xAAC94022
	Offset: 0x8D28
	Size: 0x1DB
	Parameters: 0
	Flags: None
*/
function function_95580b5()
{
	level namespace_ad23e503::function_1ab5ebec("tunnel_vtol_hit");
	self thread namespace_5753664b::function_43718187("gen_explosion", self.var_722885f3, self.var_6ab6f4fd);
	function_37cbcf1a("wpn_rocket_explode", self.var_722885f3);
	function_9cf04c2e(0.5, 0.5, level.var_1eb7e8f5.var_722885f3, 400);
	self namespace_96fa87af::function_42496438(0);
	self function_921a1574("evt_apcrail_tunnel_vtol_crash");
	namespace_80983c42::function_67e7a937("fx_exploder_fog_part_01");
	namespace_80983c42::function_80983c42("fx_exploder_fog_part_02");
	level waittill("hash_e63c708a");
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a function_e2af603e("cp_prologue_rumble_apc_offroad");
	}
	self namespace_96fa87af::function_500f51c7(0);
	wait(1);
	self namespace_96fa87af::function_3762fc40();
}

/*
	Name: function_3d3711ec
	Namespace: namespace_1eb7e8f5
	Checksum: 0x8923F235
	Offset: 0x8F10
	Size: 0xCB
	Parameters: 1
	Flags: None
*/
function function_3d3711ec(var_c77d2837)
{
	var_edc6e0e1 = var_c77d2837["fxanim_vtol_tunnel"];
	var_edc6e0e1 thread namespace_5753664b::function_43718187("gen_explosion", var_edc6e0e1.var_722885f3);
	function_37cbcf1a("wpn_rocket_explode", var_edc6e0e1.var_722885f3);
	function_9cf04c2e(0.5, 0.5, level.var_1eb7e8f5.var_722885f3, 400);
	namespace_80983c42::function_80983c42("light_exploder_defend_vtol_crash");
}

/*
	Name: function_a59f4d1f
	Namespace: namespace_1eb7e8f5
	Checksum: 0x66F6E0AE
	Offset: 0x8FE8
	Size: 0x123
	Parameters: 0
	Flags: None
*/
function function_a59f4d1f()
{
	self endon("hash_128f8789");
	wait(5);
	self thread namespace_5753664b::function_43718187("gen_explosion", self.var_722885f3, self.var_6ab6f4fd);
	function_37cbcf1a("wpn_rocket_explode", self.var_722885f3);
	wait(2);
	self thread namespace_5753664b::function_43718187("gen_explosion", self.var_722885f3, self.var_6ab6f4fd);
	function_37cbcf1a("wpn_rocket_explode", self.var_722885f3);
	self function_e48f905e("veh_t7_mil_vtol_nrc_no_interior_d");
	wait(3);
	self thread namespace_5753664b::function_43718187("gen_explosion", self.var_722885f3, self.var_6ab6f4fd);
	function_37cbcf1a("wpn_rocket_explode", self.var_722885f3);
}

/*
	Name: function_5c3fc7c6
	Namespace: namespace_1eb7e8f5
	Checksum: 0x68F99CF4
	Offset: 0x9118
	Size: 0x1EB
	Parameters: 0
	Flags: None
*/
function function_5c3fc7c6()
{
	namespace_4dbf3ae3::function_1ab5ebec("trigger_tower_rpg");
	level thread function_97ca9c14();
	var_9a278800 = namespace_14b42b8a::function_7922262b("tower_top");
	var_4f28ef54 = namespace_14b42b8a::function_7922262b("tower_base");
	var_ac05cd45 = namespace_14b42b8a::function_7922262b("tower_road");
	var_7b5de48c = namespace_14b42b8a::function_7922262b("rpg_checkpoint");
	var_8af78429 = function_c4d5ec1f("launcher_standard_magic_bullet");
	var_848a02ee = function_87f3c622(var_8af78429, var_7b5de48c.var_722885f3, var_9a278800.var_722885f3);
	var_848a02ee thread function_5a046dfa("fx_exploder_vtol_crash_rail", "top");
	wait(0.5);
	function_87f3c622(var_8af78429, var_7b5de48c.var_722885f3, var_ac05cd45.var_722885f3);
	wait(0.4);
	var_848a02ee = function_87f3c622(var_8af78429, var_7b5de48c.var_722885f3, var_4f28ef54.var_722885f3);
	var_848a02ee thread function_5a046dfa("fx_exploder_rail_tower", "base");
}

/*
	Name: function_97ca9c14
	Namespace: namespace_1eb7e8f5
	Checksum: 0x18FCE7B8
	Offset: 0x9310
	Size: 0xFD
	Parameters: 0
	Flags: None
*/
function function_97ca9c14()
{
	var_7b5de48c = namespace_14b42b8a::function_7922262b("rpg_checkpoint");
	var_5a40a77b = namespace_14b42b8a::function_7922262b("tower_apc");
	var_8af78429 = function_c4d5ec1f("launcher_standard");
	var_27c4935 = (0, 0, 0);
	for(var_c957f6b6 = 0; var_c957f6b6 < 3; var_c957f6b6++)
	{
		function_87f3c622(var_8af78429, var_7b5de48c.var_722885f3, var_5a40a77b.var_722885f3 + var_27c4935);
		var_27c4935 = VectorScale((-1, 0, 0), 80);
		wait(1);
	}
}

/*
	Name: function_5a046dfa
	Namespace: namespace_1eb7e8f5
	Checksum: 0xDD174C6A
	Offset: 0x9418
	Size: 0x201
	Parameters: 2
	Flags: None
*/
function function_5a046dfa(var_77996abe, var_95456b04)
{
	self namespace_82b91a51::function_5b7e3888("death", "explode");
	namespace_80983c42::function_80983c42(var_77996abe);
	if(var_95456b04 == "top")
	{
		level thread namespace_71e9cb84::function_74d6b22f("apc_rail_tower_collapse", 1);
		namespace_82b91a51::function_76f13293();
		namespace_82b91a51::function_76f13293();
		var_553f6c78 = function_99201f25("guard_tower", "targetname");
		foreach(var_e8399118 in var_553f6c78)
		{
			var_e8399118 function_50ccee8d();
		}
		level namespace_ad23e503::function_74d6b22f("obs_collapse");
		wait(4);
		foreach(var_5dc5e20a in level.var_9b1393e7)
		{
			var_5dc5e20a function_e2af603e("cp_prologue_rumble_pod_land");
		}
	}
}

/*
	Name: function_370bf66
	Namespace: namespace_1eb7e8f5
	Checksum: 0x90E97A7C
	Offset: 0x9628
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_370bf66()
{
	namespace_4dbf3ae3::function_1ab5ebec("trigger_gate_exit");
	namespace_80983c42::function_80983c42("light_exploder_defend_tower_crash");
	level namespace_2cb3876f::function_b50f5d52();
	namespace_2f06d687::function_7387a40a("tower_guard", &function_a55e088c);
	level namespace_ad23e503::function_1ab5ebec("obs_collapse");
	namespace_80983c42::function_67e7a937("light_exploder_defend_tower_crash");
}

/*
	Name: function_a55e088c
	Namespace: namespace_1eb7e8f5
	Checksum: 0xD3BC09CF
	Offset: 0x96E0
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_a55e088c()
{
	self endon("hash_128f8789");
	level namespace_ad23e503::function_1ab5ebec("obs_collapse");
	self function_d7a0a9d8();
	self function_8461d2b1((-100, 50, 80));
	self function_2992720d();
}

/*
	Name: function_70cc1e9c
	Namespace: namespace_1eb7e8f5
	Checksum: 0x7E5472A8
	Offset: 0x9768
	Size: 0x1B1
	Parameters: 15
	Flags: None
*/
function function_70cc1e9c(var_51e6a548, var_3a212fd7, var_f9a179ed, var_bf827987, var_ba36487d, var_dfcc01fd, var_88482219, var_e8bb43ee, var_a77ad8eb, var_6eb5fc54, var_a5cf2304, var_ad8afadc, var_ae725cb8, var_f105c26b, var_7419ba1f)
{
	if(isdefined(self.var_170527fb) && self.var_170527fb == "fxanim_vtol_tunnel")
	{
		level namespace_ad23e503::function_74d6b22f("tunnel_vtol_hit");
		if(isdefined(var_3a212fd7) && function_65f192a6(var_3a212fd7) && !isdefined(var_3a212fd7.var_bbbdbd12) && self.var_88c09c1c !== 1)
		{
			var_3a212fd7.var_bbbdbd12 = 1;
			self.var_88c09c1c = 1;
			level thread namespace_61c634f2::function_51213eb7();
		}
		var_f9a179ed = 0;
	}
	else if(isdefined(var_dfcc01fd) && isdefined(var_dfcc01fd.var_4be20d44))
	{
		if(var_dfcc01fd.var_4be20d44 == "turret_bo3_mil_macv_gunner1" || var_dfcc01fd.var_4be20d44 == "turret_bo3_mil_macv_gunner2")
		{
			var_f9a179ed = var_f9a179ed * 0.1;
		}
	}
	return var_f9a179ed;
}

/*
	Name: function_a6ea2383
	Namespace: namespace_1eb7e8f5
	Checksum: 0xFC02A940
	Offset: 0x9928
	Size: 0x11B
	Parameters: 8
	Flags: None
*/
function function_a6ea2383(var_51e6a548, var_3a212fd7, var_f9a179ed, var_ba36487d, var_dfcc01fd, var_e8bb43ee, var_a77ad8eb, var_a5cf2304)
{
	if(isdefined(var_3a212fd7) && function_65f192a6(var_3a212fd7) && self.var_88c09c1c !== 1)
	{
		self.var_88c09c1c = 1;
		level thread namespace_61c634f2::function_51213eb7();
	}
	self function_e48f905e("veh_t7_mil_vtol_nrc_no_interior_d");
	function_da6acfd2(level.var_c1aa5253["vtol_death_explosion"], self, "tag_origin");
	function_da6acfd2(level.var_c1aa5253["vtol_death_smoke"], self, "tag_origin");
}

/*
	Name: function_afd7b227
	Namespace: namespace_1eb7e8f5
	Checksum: 0x111CC89B
	Offset: 0x9A50
	Size: 0x8B
	Parameters: 8
	Flags: None
*/
function function_afd7b227(var_51e6a548, var_3a212fd7, var_f9a179ed, var_ba36487d, var_dfcc01fd, var_e8bb43ee, var_a77ad8eb, var_a5cf2304)
{
	self.var_255b9315 = 1;
	if(isdefined(var_3a212fd7) && function_65f192a6(var_3a212fd7))
	{
		namespace_61c634f2::function_2b1ec44e();
	}
}

/*
	Name: function_4ddf39a4
	Namespace: namespace_1eb7e8f5
	Checksum: 0xA5542A67
	Offset: 0x9AE8
	Size: 0x123
	Parameters: 8
	Flags: None
*/
function function_4ddf39a4(var_51e6a548, var_3a212fd7, var_f9a179ed, var_ba36487d, var_dfcc01fd, var_e8bb43ee, var_a77ad8eb, var_a5cf2304)
{
	self function_afd7b227(var_51e6a548, var_3a212fd7, var_f9a179ed, var_ba36487d, var_dfcc01fd, var_e8bb43ee, var_a77ad8eb, var_a5cf2304);
	var_35ab7d45 = function_bc7ce905(self.var_6ab6f4fd) * -1;
	self namespace_96fa87af::function_1f32f94a();
	self function_7d4fb40(VectorScale((0, 0, 1), 180) + var_35ab7d45 * 5, (function_72a94f05(5, 10), function_72a94f05(-5, 5), 0), 1, 0, 1);
}

/*
	Name: function_a7743280
	Namespace: namespace_1eb7e8f5
	Checksum: 0x28CA6C3E
	Offset: 0x9C18
	Size: 0x1EB
	Parameters: 2
	Flags: None
*/
function function_a7743280(var_521a0327, var_6d6eaca4)
{
	if(isdefined(self.var_6604b19f))
	{
		wait(self.var_6604b19f);
	}
	var_f4b1d057 = self namespace_2f06d687::function_9b7fda5e();
	var_f4b1d057 endon("hash_128f8789");
	var_f4b1d057 namespace_4dc8633b::function_b6ef2c4e(var_6d6eaca4);
	var_f4b1d057.var_44a68a57 = &function_d73ad05a;
	if(!isdefined(self.var_a33b36db))
	{
		if(!isdefined(level.var_44d40179))
		{
			level.var_44d40179 = 1;
		}
		if(level.var_44d40179 == 0)
		{
			var_f4b1d057.var_c584775c = 1;
		}
		level.var_44d40179++;
		if(level.var_44d40179 > 1)
		{
			level.var_44d40179 = 0;
		}
	}
	if(isdefined(self.var_caae374e) && self.var_caae374e == "sprinter")
	{
		var_f4b1d057 namespace_d84e54db::function_ceb883cd("sprint", 1);
		break;
	}
	switch(var_521a0327)
	{
		case 0:
		{
			var_f4b1d057 namespace_d84e54db::function_ceb883cd("move_mode", "marching");
			break;
		}
		case 1:
		{
			break;
		}
		case 2:
		{
			var_f4b1d057 namespace_d84e54db::function_ceb883cd("sprint", 1);
			break;
		}
	}
	if(isdefined(var_f4b1d057.var_db7bb468))
	{
		var_f4b1d057 thread namespace_2cb3876f::function_8abaca05();
	}
	else
	{
		var_f4b1d057.var_7dfaf62 = 64;
	}
}

/*
	Name: function_d73ad05a
	Namespace: namespace_1eb7e8f5
	Checksum: 0x4714776E
	Offset: 0x9E10
	Size: 0x337
	Parameters: 14
	Flags: None
*/
function function_d73ad05a(var_51e6a548, var_3a212fd7, var_f9a179ed, var_bf827987, var_ba36487d, var_dfcc01fd, var_88482219, var_e8bb43ee, var_a77ad8eb, var_6eb5fc54, var_ae725cb8, var_a5cf2304, var_5d7e7ac2, var_7419ba1f)
{
	if(isdefined(var_ba36487d) && var_ba36487d == "MOD_CRUSH")
	{
		if(!isdefined(self.var_7d8fa639))
		{
			self.var_7d8fa639 = 1;
			self function_d7a0a9d8(1);
			var_a8775778 = function_72a94f05(-60, 60);
			var_cfcb49a5 = (var_a8775778, 0, function_72a94f05(40, 140));
			var_cfcb49a5 = var_cfcb49a5 + function_bc7ce905(var_51e6a548.var_6ab6f4fd) * 250;
			self function_8461d2b1(var_cfcb49a5, "J_SpineUpper");
		}
	}
	else if(isdefined(var_dfcc01fd) && isdefined(var_dfcc01fd.var_4be20d44))
	{
		if(!isdefined(self.var_7d8fa639))
		{
			if(var_dfcc01fd.var_4be20d44 == "turret_bo3_mil_macv_gunner1" || var_dfcc01fd.var_4be20d44 == "turret_bo3_mil_macv_gunner2")
			{
				self.var_7d8fa639 = 1;
				self function_d7a0a9d8(1);
				var_cfcb49a5 = VectorScale((0, 0, 1), 50);
				var_cfcb49a5 = var_cfcb49a5 + function_bc7ce905(var_51e6a548.var_6ab6f4fd) * 120;
				self function_8461d2b1(var_cfcb49a5, "J_SpineUpper");
			}
			else if(var_dfcc01fd.var_4be20d44 == "turret_bo3_mil_macv_gunner3" || var_dfcc01fd.var_4be20d44 == "turret_bo3_mil_macv_gunner4")
			{
				self.var_7d8fa639 = 1;
				self function_d7a0a9d8(1);
				var_cfcb49a5 = (0, 0, function_72a94f05(30, 90));
				var_cfcb49a5 = var_cfcb49a5 + function_bc7ce905(var_51e6a548.var_6ab6f4fd) * 120;
				self function_8461d2b1(var_cfcb49a5, "J_SpineUpper");
			}
		}
	}
	return var_f9a179ed;
}

/*
	Name: function_b4145fc1
	Namespace: namespace_1eb7e8f5
	Checksum: 0xAECC0254
	Offset: 0xA150
	Size: 0xD7
	Parameters: 0
	Flags: None
*/
function function_b4145fc1()
{
	level endon("hash_2a6578a1");
	level endon("hash_f776796b");
	var_281358e1 = 0;
	wait(function_72a94f05(4.5, 5.5));
	while(1)
	{
		var_f6c5842 = namespace_2f06d687::function_7387a40a("robot_crawler");
		if(function_5b49d38c(var_f6c5842))
		{
			level.var_1eb7e8f5 namespace_cc27597::function_43718187("cin_pro_16_02_apc_vign_stall_attack_left_front", var_f6c5842);
		}
		wait(function_72a94f05(3, 5));
	}
}

/*
	Name: function_27ee29e6
	Namespace: namespace_1eb7e8f5
	Checksum: 0x8AD1A42E
	Offset: 0xA230
	Size: 0xD7
	Parameters: 0
	Flags: None
*/
function function_27ee29e6()
{
	level endon("hash_2a6578a1");
	level endon("hash_baebe028");
	var_281358e1 = 0;
	wait(function_72a94f05(4, 5.5));
	while(1)
	{
		var_f6c5842 = namespace_2f06d687::function_7387a40a("robot_crawler");
		if(function_5b49d38c(var_f6c5842))
		{
			level.var_1eb7e8f5 namespace_cc27597::function_43718187("cin_pro_16_02_apc_vign_stall_attack_left_rear", var_f6c5842);
		}
		wait(function_72a94f05(3, 5));
	}
}

/*
	Name: function_35eded54
	Namespace: namespace_1eb7e8f5
	Checksum: 0x678FF746
	Offset: 0xA310
	Size: 0xC7
	Parameters: 0
	Flags: None
*/
function function_35eded54()
{
	level endon("hash_2a6578a1");
	level endon("hash_916c56a6");
	wait(function_72a94f05(4.5, 5.5));
	while(1)
	{
		var_f6c5842 = namespace_2f06d687::function_7387a40a("robot_crawler");
		if(function_5b49d38c(var_f6c5842))
		{
			level.var_1eb7e8f5 namespace_cc27597::function_43718187("cin_pro_16_02_apc_vign_stall_attack_right_front", var_f6c5842);
		}
		wait(function_72a94f05(3, 5));
	}
}

/*
	Name: function_4446fa95
	Namespace: namespace_1eb7e8f5
	Checksum: 0x5E0CBD47
	Offset: 0xA3E0
	Size: 0xD7
	Parameters: 0
	Flags: None
*/
function function_4446fa95()
{
	level endon("hash_2a6578a1");
	level endon("hash_3437fba3");
	var_281358e1 = 0;
	wait(function_72a94f05(4, 5.5));
	while(1)
	{
		var_f6c5842 = namespace_2f06d687::function_7387a40a("robot_crawler");
		if(function_5b49d38c(var_f6c5842))
		{
			level.var_1eb7e8f5 namespace_cc27597::function_43718187("cin_pro_16_02_apc_vign_stall_attack_right_rear", var_f6c5842);
		}
		wait(function_72a94f05(3, 5));
	}
}

/*
	Name: function_98b546ae
	Namespace: namespace_1eb7e8f5
	Checksum: 0xEF04056E
	Offset: 0xA4C0
	Size: 0xD3
	Parameters: 1
	Flags: None
*/
function function_98b546ae(var_9bc566d8)
{
	switch(var_9bc566d8)
	{
		case "left_front":
		{
			var_294306eb = "cin_pro_16_02_apc_vign_flung_robot_left_front_01";
			break;
		}
		case "left_rear":
		{
			var_294306eb = "cin_pro_16_02_apc_vign_flung_robot_left_rear_01";
			break;
		}
		case "right_front":
		{
			var_294306eb = "cin_pro_16_02_apc_vign_flung_robot_right_front_01";
			break;
		}
	}
	var_f6c5842 = namespace_2f06d687::function_7387a40a("robot_crawler", &function_d6c9484a);
	if(function_5b49d38c(var_f6c5842))
	{
		level.var_1eb7e8f5 namespace_cc27597::function_43718187(var_294306eb, var_f6c5842);
	}
}

/*
	Name: function_d6c9484a
	Namespace: namespace_1eb7e8f5
	Checksum: 0x4CC20BC5
	Offset: 0xA5A0
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_d6c9484a()
{
	self endon("hash_128f8789");
	level waittill("hash_70bb2345");
	self function_2992720d();
}

/*
	Name: function_9d87900e
	Namespace: namespace_1eb7e8f5
	Checksum: 0xC1EF8FEA
	Offset: 0xA5E0
	Size: 0xB5
	Parameters: 0
	Flags: None
*/
function function_9d87900e()
{
	level endon("hash_5d671c7b");
	while(1)
	{
		level waittill("hash_4f0dddd");
		foreach(var_5dc5e20a in level.var_9b1393e7)
		{
			var_5dc5e20a function_e2af603e("cp_prologue_rumble_apc_robot_land");
		}
	}
}

/*
	Name: function_b328d415
	Namespace: namespace_1eb7e8f5
	Checksum: 0xB7BC1A4E
	Offset: 0xA6A0
	Size: 0x77
	Parameters: 0
	Flags: None
*/
function function_b328d415()
{
	while(!level namespace_ad23e503::function_7922262b("apc_crash"))
	{
		self waittill("hash_760fecd0");
		var_f6c5842 = namespace_2f06d687::function_7387a40a("robot_crawler");
		var_f6c5842 thread function_61f0ff7a("left");
	}
}

/*
	Name: function_4d508278
	Namespace: namespace_1eb7e8f5
	Checksum: 0xD545BCDD
	Offset: 0xA720
	Size: 0x77
	Parameters: 0
	Flags: None
*/
function function_4d508278()
{
	while(!level namespace_ad23e503::function_7922262b("apc_crash"))
	{
		self waittill("hash_2f6ab0ff");
		var_f6c5842 = namespace_2f06d687::function_7387a40a("robot_crawler");
		var_f6c5842 thread function_61f0ff7a("right");
	}
}

/*
	Name: function_61f0ff7a
	Namespace: namespace_1eb7e8f5
	Checksum: 0xF9AF8187
	Offset: 0xA7A0
	Size: 0xB3
	Parameters: 1
	Flags: None
*/
function function_61f0ff7a(var_695fdfde)
{
	self endon("hash_128f8789");
	if(var_695fdfde == "left")
	{
		level.var_1eb7e8f5 namespace_cc27597::function_43718187("cin_pro_16_02_apc_vign_truck_jump", self);
		level.var_1eb7e8f5 namespace_cc27597::function_43718187("cin_pro_16_02_apc_vign_flung_robot_left_front_01", self);
	}
	else
	{
		level.var_1eb7e8f5 namespace_cc27597::function_43718187("cin_pro_16_02_apc_vign_truck_jump2", self);
		level.var_1eb7e8f5 namespace_cc27597::function_43718187("cin_pro_16_02_apc_vign_flung_robot_right_front_01", self);
	}
}

/*
	Name: function_7d33cac1
	Namespace: namespace_1eb7e8f5
	Checksum: 0x2412287D
	Offset: 0xA860
	Size: 0x3DB
	Parameters: 0
	Flags: None
*/
function function_7d33cac1()
{
	self endon("hash_128f8789");
	namespace_4dbf3ae3::function_1ab5ebec("ambush_vtol_takeoff");
	level.var_1eb7e8f5 notify("hash_96522489");
	var_9d1abae9 = function_243bb261("nd_tunnel_vtol_ambush_start", "targetname");
	self thread namespace_96fa87af::function_edb3a94e(var_9d1abae9);
	var_d47f85df = function_243bb261("nd_vtol_ambush_fire", "script_noteworthy");
	var_d47f85df waittill("hash_4dbf3ae3");
	for(var_c957f6b6 = 0; var_c957f6b6 < 3; var_c957f6b6++)
	{
		self namespace_37b990db::function_bae40a28(var_c957f6b6, 0);
	}
	wait(3.75);
	level thread function_f907ad59();
	var_a7625465 = namespace_14b42b8a::function_7faf4c39("tunnel_vtol_target", "targetname");
	var_a7625465 = function_57efbe1(var_a7625465, level.var_1eb7e8f5.var_722885f3);
	for(var_c957f6b6 = 0; var_c957f6b6 < var_a7625465.size; var_c957f6b6++)
	{
		var_a690d72c = var_a7625465[var_c957f6b6].var_722885f3;
		self thread function_dd092bdf(var_a690d72c, "launcher_standard_dud", var_c957f6b6 > 3);
		wait(0.25);
		if(var_c957f6b6 == 3)
		{
			self namespace_82b91a51::function_4b741fdc();
		}
	}
	self namespace_82b91a51::function_4b741fdc();
	for(var_c957f6b6 = 0; var_c957f6b6 < 3; var_c957f6b6++)
	{
		self namespace_37b990db::function_54bdb053(var_c957f6b6);
	}
	var_6abcce89 = function_243bb261("nd_vtol_fire_at_tunnel", "script_noteworthy");
	var_6abcce89 waittill("hash_4dbf3ae3");
	var_a7625465 = namespace_14b42b8a::function_7faf4c39("tunnel_vtol_target_2", "targetname");
	for(var_c957f6b6 = 0; var_c957f6b6 < 5; var_c957f6b6++)
	{
		var_a080d759 = function_bc7ce905(self.var_6ab6f4fd);
		var_a1f5a583 = self.var_722885f3 + var_a080d759 * 20;
		var_a690d72c = var_a7625465[var_c957f6b6].var_722885f3;
		self thread function_dd092bdf(var_a690d72c, "launcher_standard_dud");
		wait(0.2);
	}
	level namespace_ad23e503::function_1ab5ebec("player_in_tunnel");
	self namespace_82b91a51::function_4b741fdc();
	self.var_3e3a41eb = 1;
	self notify("hash_128f8789");
	if(!function_5b49d38c(self))
	{
		self function_dc8c8404();
	}
}

/*
	Name: function_dd092bdf
	Namespace: namespace_1eb7e8f5
	Checksum: 0x37BA8C01
	Offset: 0xAC48
	Size: 0x163
	Parameters: 3
	Flags: None
*/
function function_dd092bdf(var_a690d72c, var_2ffd9881, var_e18bd372)
{
	if(!isdefined(var_2ffd9881))
	{
		var_2ffd9881 = "launcher_standard";
	}
	if(!isdefined(var_e18bd372))
	{
		var_e18bd372 = 1;
	}
	var_8af78429 = function_c4d5ec1f(var_2ffd9881);
	var_9d9a11a7 = self function_d48f2ab3("tag_rocket_left");
	var_38c28fa2 = self function_d48f2ab3("tag_rocket_right");
	var_b40fa37e = function_87f3c622(var_8af78429, var_9d9a11a7, var_a690d72c, self);
	if(var_e18bd372)
	{
		var_b40fa37e thread function_322383f6(var_a690d72c);
	}
	wait(0.1);
	var_6e0d4ab5 = function_87f3c622(var_8af78429, var_38c28fa2, var_a690d72c, self);
	if(var_e18bd372)
	{
		var_6e0d4ab5 thread function_322383f6(var_a690d72c);
	}
}

/*
	Name: function_f907ad59
	Namespace: namespace_1eb7e8f5
	Checksum: 0xA06BB6E5
	Offset: 0xADB8
	Size: 0x75
	Parameters: 0
	Flags: None
*/
function function_f907ad59()
{
	level waittill("hash_250db3b8");
	for(var_c957f6b6 = 0; var_c957f6b6 < 4; var_c957f6b6++)
	{
		function_9cf04c2e(0.65, 0.65, level.var_1eb7e8f5.var_722885f3, 400);
		wait(0.25);
	}
}

/*
	Name: function_6034914b
	Namespace: namespace_1eb7e8f5
	Checksum: 0x77DFF30
	Offset: 0xAE38
	Size: 0xBF
	Parameters: 14
	Flags: None
*/
function function_6034914b(var_51e6a548, var_3a212fd7, var_f9a179ed, var_bf827987, var_ba36487d, var_dfcc01fd, var_88482219, var_e8bb43ee, var_a77ad8eb, var_6eb5fc54, var_ae725cb8, var_a5cf2304, var_5d7e7ac2, var_7419ba1f)
{
	if(!isdefined(self.var_7d8fa639))
	{
		self.var_7d8fa639 = 1;
		self thread function_6a19cf15(function_bc7ce905(var_51e6a548.var_6ab6f4fd));
	}
	return var_f9a179ed;
}

/*
	Name: function_6a19cf15
	Namespace: namespace_1eb7e8f5
	Checksum: 0x12AF0B96
	Offset: 0xAF00
	Size: 0xFB
	Parameters: 1
	Flags: None
*/
function function_6a19cf15(var_d230ad83)
{
	self endon("hash_128f8789");
	wait(0.1);
	if(namespace_cc27597::function_444aea32(self.var_904f3930))
	{
		namespace_cc27597::function_fcf56ab5(self.var_904f3930);
	}
	wait(0.1);
	self function_d7a0a9d8(1);
	var_a8775778 = function_72a94f05(-50, 50);
	var_cfcb49a5 = (var_a8775778, 0, function_72a94f05(40, 140));
	var_cfcb49a5 = var_cfcb49a5 + var_d230ad83 * 600;
	self function_8461d2b1(var_cfcb49a5, "J_SpineUpper");
}

/*
	Name: function_b64436c8
	Namespace: namespace_1eb7e8f5
	Checksum: 0x52056555
	Offset: 0xB008
	Size: 0xFD
	Parameters: 0
	Flags: None
*/
function function_b64436c8()
{
	self.var_dc29a320 = &function_2923c71;
	self.var_a5f37229 = [];
	self.var_a5f37229[self.var_a5f37229.size] = 0;
	self.var_a5f37229[self.var_a5f37229.size] = 0;
	self.var_a5f37229[self.var_a5f37229.size] = 0;
	self.var_a5f37229[self.var_a5f37229.size] = 0;
	self.var_a5f37229[self.var_a5f37229.size] = 0;
	self.var_7b32e45e = [];
	self.var_7b32e45e[self.var_7b32e45e.size] = 0;
	self.var_7b32e45e[self.var_7b32e45e.size] = 0;
	self.var_7b32e45e[self.var_7b32e45e.size] = 0;
	self.var_7b32e45e[self.var_7b32e45e.size] = 0;
	self.var_7b32e45e[self.var_7b32e45e.size] = 0;
}

/*
	Name: function_2309bb98
	Namespace: namespace_1eb7e8f5
	Checksum: 0xF73C23F
	Offset: 0xB110
	Size: 0x9B
	Parameters: 2
	Flags: None
*/
function function_2309bb98(var_33cce320, var_2843fc54)
{
	level.var_1eb7e8f5 function_b64436c8();
	if(var_2843fc54)
	{
		var_3c54858a = function_243bb261(var_33cce320, "targetname");
		level.var_1eb7e8f5 thread namespace_96fa87af::function_b6b0ca71(var_3c54858a);
	}
	level namespace_ad23e503::function_1ab5ebec("players_are_in_apc");
}

/*
	Name: function_29c3397f
	Namespace: namespace_1eb7e8f5
	Checksum: 0x90CAC5B9
	Offset: 0xB1B8
	Size: 0x103
	Parameters: 0
	Flags: None
*/
function function_29c3397f()
{
	while(1)
	{
		var_9e5ad24f = 1;
		foreach(var_5dc5e20a in level.var_9b1393e7)
		{
			if(var_9e5ad24f)
			{
				var_9e5ad24f = var_5dc5e20a.var_91c8e9a9;
			}
		}
		if(var_9e5ad24f)
		{
			break;
		}
		wait(0.05);
	}
	level namespace_ad23e503::function_d3de6822("failed_apc_boarding");
	level namespace_ad23e503::function_74d6b22f("players_are_in_apc");
}

/*
	Name: function_7713da2c
	Namespace: namespace_1eb7e8f5
	Checksum: 0xDED22D6
	Offset: 0xB2C8
	Size: 0x10F
	Parameters: 1
	Flags: None
*/
function function_7713da2c(var_cf42b0b2)
{
	self endon("hash_128f8789");
	var_4a84d252 = 0;
	var_637fcbf0 = 0;
	while(isdefined(self))
	{
		if(isdefined(self.var_ef4daaa5))
		{
			var_1d8d45a5 = var_4a84d252;
			var_4a84d252 = self.var_ef4daaa5 function_be4e84fa(var_cf42b0b2);
			var_f0d797d6 = var_637fcbf0;
			var_637fcbf0 = self.var_ef4daaa5 function_baef232b(var_cf42b0b2);
			if(var_1d8d45a5 != var_4a84d252 || var_f0d797d6 != var_637fcbf0)
			{
				if(isdefined(self.var_ccf0d8ef))
				{
					self function_3a9588ea(self.var_ccf0d8ef, "frac", var_4a84d252 / 100);
				}
			}
		}
		wait(0.05);
	}
}

/*
	Name: function_a3024193
	Namespace: namespace_1eb7e8f5
	Checksum: 0x284566F9
	Offset: 0xB3E0
	Size: 0x1A3
	Parameters: 1
	Flags: None
*/
function function_a3024193(var_cf0e873a)
{
	self endon("hash_128f8789");
	switch(var_cf0e873a)
	{
		case "trig_apc_gunner4":
		{
			var_cf42b0b2 = 4;
			function_beac5c93(var_cf42b0b2);
			level.var_1eb7e8f5 namespace_cc27597::function_43718187("cin_pro_15_01_opendoor_1st_mount_player04", self);
			break;
		}
		case "trig_apc_gunner1":
		{
			var_cf42b0b2 = 1;
			function_beac5c93(var_cf42b0b2);
			level.var_1eb7e8f5 namespace_cc27597::function_43718187("cin_pro_15_01_opendoor_1st_mount_player02", self);
			break;
		}
		case "trig_apc_gunner3":
		{
			var_cf42b0b2 = 3;
			function_beac5c93(var_cf42b0b2);
			level.var_1eb7e8f5 namespace_cc27597::function_43718187("cin_pro_15_01_opendoor_1st_mount_player03", self);
			break;
		}
		case "trig_apc_gunner2":
		{
			var_cf42b0b2 = 2;
			function_beac5c93(var_cf42b0b2);
			level.var_1eb7e8f5 namespace_cc27597::function_43718187("cin_pro_15_01_opendoor_1st_mount_player01", self);
			break;
		}
	}
	if(!level namespace_ad23e503::function_7922262b("failed_apc_boarding"))
	{
		self thread function_59329589(var_cf42b0b2);
	}
}

/*
	Name: function_beac5c93
	Namespace: namespace_1eb7e8f5
	Checksum: 0x41EEDE0D
	Offset: 0xB590
	Size: 0xA9
	Parameters: 1
	Flags: None
*/
function function_beac5c93(var_4bc288a0)
{
	foreach(var_e4463170 in level.var_681ad194)
	{
		if(var_e4463170.var_19c9fb9b === var_4bc288a0)
		{
			var_e4463170 function_dc8c8404();
		}
	}
}

/*
	Name: function_59329589
	Namespace: namespace_1eb7e8f5
	Checksum: 0x78BB5A87
	Offset: 0xB648
	Size: 0x123
	Parameters: 1
	Flags: None
*/
function function_59329589(var_cf42b0b2)
{
	level.var_1eb7e8f5.var_a5f37229[var_cf42b0b2] = 1;
	self.var_cf42b0b2 = var_cf42b0b2;
	self.var_1554f271 = &function_b0d8e1ce;
	level.var_1eb7e8f5 function_917f75ac(var_cf42b0b2, 0);
	level.var_1eb7e8f5 function_16337f9e(self, var_cf42b0b2);
	if(var_cf42b0b2 <= 2)
	{
		self.var_ccf0d8ef = self function_2f6b6a4c("APCTurretHUD");
		self function_3a9588ea(self.var_ccf0d8ef, "frac", 0);
		self thread function_7713da2c(var_cf42b0b2);
	}
	level.var_586b4bd0++;
	self.var_bab9655e = 0;
	self thread namespace_2cb3876f::function_4e9a52a6();
}

/*
	Name: function_fc1b1b72
	Namespace: namespace_1eb7e8f5
	Checksum: 0x7EB1AD61
	Offset: 0xB778
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_fc1b1b72()
{
	var_19c9fb9b = 0;
	for(var_c957f6b6 = 1; var_c957f6b6 < 5; var_c957f6b6++)
	{
		var_cf0db380 = level.var_1eb7e8f5 function_b4980289(var_c957f6b6);
		if(!isdefined(var_cf0db380))
		{
			var_19c9fb9b = var_c957f6b6;
		}
	}
	self function_59329589(var_19c9fb9b);
}

/*
	Name: function_1aa160fc
	Namespace: namespace_1eb7e8f5
	Checksum: 0x5DB40717
	Offset: 0xB818
	Size: 0xC9
	Parameters: 0
	Flags: None
*/
function function_1aa160fc()
{
	level namespace_ad23e503::function_9d134160("players_are_in_apc");
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a thread function_dcb847ab();
	}
	level.var_586b4bd0 = 0;
	level.var_7f13e303 = undefined;
	level notify("hash_7acfacb8");
}

/*
	Name: function_dcb847ab
	Namespace: namespace_1eb7e8f5
	Checksum: 0xB100287
	Offset: 0xB8F0
	Size: 0x8D
	Parameters: 0
	Flags: None
*/
function function_dcb847ab()
{
	level.var_1eb7e8f5 function_4fdc0e7d(self);
	self.var_bab9655e = 1;
	self.var_1554f271 = undefined;
	self.var_161a3f68 = undefined;
	if(isdefined(self.var_ccf0d8ef))
	{
		self function_2b74b70a(self.var_ccf0d8ef);
	}
	if(isdefined(self.var_cf42b0b2))
	{
		level.var_1eb7e8f5.var_a5f37229[self.var_cf42b0b2] = 0;
	}
}

/*
	Name: function_2923c71
	Namespace: namespace_1eb7e8f5
	Checksum: 0x320F7842
	Offset: 0xB988
	Size: 0x1DB
	Parameters: 15
	Flags: None
*/
function function_2923c71(var_51e6a548, var_3a212fd7, var_f9a179ed, var_bf827987, var_ba36487d, var_dfcc01fd, var_88482219, var_e8bb43ee, var_a77ad8eb, var_6eb5fc54, var_a5cf2304, var_ad8afadc, var_ae725cb8, var_f105c26b, var_7419ba1f)
{
	if(self.var_3e94206a == "allies")
	{
		var_f9a179ed = 0;
	}
	else if(isdefined(var_3a212fd7) && function_8d0347b8(var_3a212fd7))
	{
		var_f9a179ed = var_f9a179ed * 0.1;
	}
	else if(isdefined(var_dfcc01fd) && isdefined(var_dfcc01fd.var_4be20d44))
	{
		if(var_dfcc01fd.var_4be20d44 == "turret_bo3_mil_macv_gunner1" || var_dfcc01fd.var_4be20d44 == "turret_bo3_mil_macv_gunner2")
		{
			if(self.var_9d34dca7 == "veh_bo3_mil_macv_prologue_enemy")
			{
				var_f9a179ed = var_f9a179ed * 20;
			}
			else
			{
				var_f9a179ed = var_f9a179ed * 0.3;
			}
		}
		else if(var_dfcc01fd.var_4be20d44 == "turret_bo3_mil_macv_gunner3" || var_dfcc01fd.var_4be20d44 == "turret_bo3_mil_macv_gunner4")
		{
			if(self.var_9d34dca7 == "veh_bo3_mil_macv_prologue_enemy")
			{
				var_f9a179ed = var_f9a179ed * 8;
			}
			else
			{
				var_f9a179ed = var_f9a179ed * 1;
			}
		}
	}
	return var_f9a179ed;
}

/*
	Name: function_b0d8e1ce
	Namespace: namespace_1eb7e8f5
	Checksum: 0x440A19BA
	Offset: 0xBB70
	Size: 0x147
	Parameters: 13
	Flags: None
*/
function function_b0d8e1ce(var_51e6a548, var_3a212fd7, var_f9a179ed, var_bf827987, var_ba36487d, var_dfcc01fd, var_88482219, var_e8bb43ee, var_a77ad8eb, var_6eb5fc54, var_ae725cb8, var_a5cf2304, var_7419ba1f)
{
	self endon("hash_ee92aeb6");
	if(var_f9a179ed >= self.var_3a90f16b)
	{
		var_f9a179ed = self.var_3a90f16b - 10;
		if(var_f9a179ed <= 0)
		{
			var_f9a179ed = 0;
		}
	}
	if(isdefined(var_dfcc01fd) && isdefined(var_dfcc01fd.var_4be20d44))
	{
		if(var_dfcc01fd.var_4be20d44 == "turret_bo3_mil_macv_gunner1" || var_dfcc01fd.var_4be20d44 == "turret_bo3_mil_macv_gunner2" || var_dfcc01fd.var_4be20d44 == "turret_bo3_mil_macv_gunner3" || var_dfcc01fd.var_4be20d44 == "turret_bo3_mil_macv_gunner4")
		{
			var_f9a179ed = 0;
		}
	}
	return var_f9a179ed;
}

/*
	Name: function_ade89a8a
	Namespace: namespace_1eb7e8f5
	Checksum: 0x2CCDC0DC
	Offset: 0xBCC0
	Size: 0x231
	Parameters: 0
	Flags: None
*/
function function_ade89a8a()
{
	level namespace_ad23e503::function_1ab5ebec("apc_unlocked");
	level.var_6ca49220 = [];
	level.var_6ca49220[0] = function_6ada35ba("trig_apc_gunner1", "script_noteworthy");
	level.var_6ca49220[1] = function_6ada35ba("trig_apc_gunner2", "script_noteworthy");
	level.var_6ca49220[2] = function_6ada35ba("trig_apc_gunner3", "script_noteworthy");
	level.var_6ca49220[3] = function_6ada35ba("trig_apc_gunner4", "script_noteworthy");
	for(var_c957f6b6 = 0; var_c957f6b6 < level.var_9b1393e7.size; var_c957f6b6++)
	{
		level thread function_ae49644a(level.var_6ca49220[var_c957f6b6]);
	}
	namespace_dabbe128::function_356a4ee1(&function_29852c1d);
	level namespace_ad23e503::function_1ab5ebec("players_are_in_apc");
	namespace_dabbe128::function_a0ac4434(&function_29852c1d);
	foreach(var_b957e40 in level.var_6ca49220)
	{
		if(isdefined(var_b957e40.var_5356d2cc))
		{
			var_b957e40.var_5356d2cc namespace_a230c2b1::function_e54c54c3();
		}
	}
}

/*
	Name: function_29852c1d
	Namespace: namespace_1eb7e8f5
	Checksum: 0xF27E4A9D
	Offset: 0xBF00
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_29852c1d()
{
	var_71d7943b = self function_c7f3ce11();
	if(!level.var_6ca49220[var_71d7943b] function_c5637452())
	{
		level thread function_ae49644a(level.var_6ca49220[var_71d7943b]);
	}
}

/*
	Name: function_ae49644a
	Namespace: namespace_1eb7e8f5
	Checksum: 0x9C16066B
	Offset: 0xBF78
	Size: 0xBF
	Parameters: 1
	Flags: None
*/
function function_ae49644a(var_58230dee)
{
	if(var_58230dee.var_caae374e == "trig_apc_gunner3" || var_58230dee.var_caae374e == "trig_apc_gunner4")
	{
		var_41d5b347 = &"CP_MI_ETH_PROLOGUE_MOUNT_APC_GR";
	}
	else
	{
		var_41d5b347 = &"CP_MI_ETH_PROLOGUE_MOUNT_APC_MG";
	}
	var_58230dee function_175e6b8e(1);
	var_58230dee.var_5356d2cc = namespace_82b91a51::function_14518e76(var_58230dee, &"cp_prompt_entervehicle_prologue_apc", var_41d5b347, &function_c8b0c865);
}

/*
	Name: function_c8b0c865
	Namespace: namespace_1eb7e8f5
	Checksum: 0x2A267F5C
	Offset: 0xC040
	Size: 0x53
	Parameters: 1
	Flags: None
*/
function function_c8b0c865(var_6bfe1586)
{
	var_6bfe1586 thread function_a3024193(self.var_4dbf3ae3.var_caae374e);
	self namespace_a230c2b1::function_e54c54c3();
	level.var_1a71fabf++;
}

/*
	Name: function_38362d1e
	Namespace: namespace_1eb7e8f5
	Checksum: 0xC57582ED
	Offset: 0xC0A0
	Size: 0x21B
	Parameters: 0
	Flags: None
*/
function function_38362d1e()
{
	var_88aa978 = 1;
	if(level.var_31aefea8 == "skipto_robot_horde")
	{
		level namespace_ad23e503::function_1ab5ebec("garage_open");
		var_88aa978 = 0;
	}
	if(isdefined(level.var_4480630f))
	{
		level.var_1eb7e8f5.var_58a89d24 = 1;
		for(var_c957f6b6 = level.var_2395e945.size; var_c957f6b6 <= level.var_4480630f.size; var_c957f6b6++)
		{
			if(isdefined(level.var_933bbc2c[0]))
			{
				var_914cef26 = level.var_4480630f[var_c957f6b6];
				level.var_933bbc2c[0] thread namespace_96fa87af::function_230eadd7(level.var_1eb7e8f5, var_914cef26, var_88aa978);
				level.var_933bbc2c[0].var_19c9fb9b = var_c957f6b6 + 1;
				level.var_1eb7e8f5 thread namespace_37b990db::function_2aefd6ec(var_c957f6b6, 1);
				if(level.var_31aefea8 == "skipto_robot_horde")
				{
					level.var_933bbc2c[0] namespace_d84e54db::function_b4f5e3b9(1);
					level.var_933bbc2c[0] namespace_d84e54db::function_ceb883cd("vignette_mode", "fast");
					level.var_933bbc2c[0] thread function_2839eeb9();
				}
				function_81403b2f(level.var_933bbc2c, level.var_933bbc2c[0]);
			}
		}
	}
	level.var_4480630f = [];
	level.var_933bbc2c = [];
	wait(5);
	level namespace_ad23e503::function_74d6b22f("ai_in_apc");
}

/*
	Name: function_2839eeb9
	Namespace: namespace_1eb7e8f5
	Checksum: 0x7154AE2A
	Offset: 0xC2C8
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_2839eeb9()
{
	self endon("hash_128f8789");
	self namespace_957e94ce::function_1ab5ebec("in_vehicle");
	self namespace_d84e54db::function_b4f5e3b9(0);
	self namespace_d84e54db::function_ceb883cd("vignette_mode", "off");
}

/*
	Name: function_ba89f624
	Namespace: namespace_1eb7e8f5
	Checksum: 0x76ACE325
	Offset: 0xC340
	Size: 0x83
	Parameters: 2
	Flags: None
*/
function function_ba89f624(var_a1f5a583, var_a690d72c)
{
	var_8af78429 = function_c4d5ec1f("launcher_standard");
	var_19b02fe9 = function_87f3c622(var_8af78429, var_a1f5a583, var_a690d72c, self);
	var_19b02fe9 thread function_322383f6(var_a690d72c);
}

/*
	Name: function_322383f6
	Namespace: namespace_1eb7e8f5
	Checksum: 0xD035A13A
	Offset: 0xC3D0
	Size: 0xB1
	Parameters: 1
	Flags: None
*/
function function_322383f6(var_a690d72c)
{
	self endon("hash_128f8789");
	while(1)
	{
		var_2a97d9fd = function_7d15e2f8(self.var_722885f3, var_a690d72c);
		if(var_2a97d9fd < 100)
		{
			break;
		}
		wait(0.05);
	}
	function_fd4ba5e1("explosions/fx_exp_generic_lg", var_a690d72c);
	function_37cbcf1a("wpn_rocket_explode", self.var_722885f3);
	level notify("hash_250db3b8");
}

/*
	Name: function_f5dde0f6
	Namespace: namespace_1eb7e8f5
	Checksum: 0xB736A465
	Offset: 0xC490
	Size: 0x14D
	Parameters: 0
	Flags: None
*/
function function_f5dde0f6()
{
	self endon("hash_128f8789");
	level endon("hash_5d671c7b");
	level endon("hash_8b1044c1");
	var_85dc60d5 = function_84970cc4("vtol_tunnel_target_left_2", "vtol_tunnel_target_left_3");
	var_a65a9e36 = function_84970cc4("vtol_tunnel_target_right_2", "vtol_tunnel_target_right_3");
	self thread function_9cf9688c();
	wait(0.3);
	for(var_c957f6b6 = 0; var_c957f6b6 < var_85dc60d5.size; var_c957f6b6++)
	{
		var_cd13e495 = namespace_14b42b8a::function_7922262b(var_85dc60d5[var_c957f6b6]).var_722885f3;
		var_8f45fdaa = namespace_14b42b8a::function_7922262b(var_a65a9e36[var_c957f6b6]).var_722885f3;
		self function_a942e878(var_cd13e495, var_8f45fdaa);
		wait(0.3);
	}
}

/*
	Name: function_9cf9688c
	Namespace: namespace_1eb7e8f5
	Checksum: 0x477C8FCB
	Offset: 0xC5E8
	Size: 0x157
	Parameters: 0
	Flags: None
*/
function function_9cf9688c()
{
	var_cd13e495 = namespace_14b42b8a::function_7922262b("vtol_tunnel_target_left_1").var_722885f3;
	var_8f45fdaa = namespace_14b42b8a::function_7922262b("vtol_tunnel_target_right_1").var_722885f3;
	var_9d9a11a7 = self function_d48f2ab3("tag_rocket_left");
	var_38c28fa2 = self function_d48f2ab3("tag_rocket_right");
	var_8af78429 = function_c4d5ec1f("hunter_rocket_turret");
	var_8c1f89f1 = function_87f3c622(var_8af78429, var_9d9a11a7, var_cd13e495, self);
	var_8c1f89f1 thread function_b0cea2cc(var_cd13e495);
	wait(0.2);
	var_cb1d049c = function_87f3c622(var_8af78429, var_38c28fa2, var_8f45fdaa, self);
}

/*
	Name: function_b0cea2cc
	Namespace: namespace_1eb7e8f5
	Checksum: 0x834F48D3
	Offset: 0xC748
	Size: 0xF3
	Parameters: 1
	Flags: None
*/
function function_b0cea2cc(var_c55dcd82)
{
	self waittill("hash_128f8789");
	level namespace_71e9cb84::function_74d6b22f("tunnel_wall_explode", 1);
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a function_e2af603e("cp_prologue_rumble_apc_offroad");
	}
	function_eac31668(var_c55dcd82, 200, 1000, 800, undefined, "MOD_EXPLOSIVE");
}

/*
	Name: function_219a1e60
	Namespace: namespace_1eb7e8f5
	Checksum: 0xC319951B
	Offset: 0xC848
	Size: 0x85
	Parameters: 0
	Flags: None
*/
function function_219a1e60()
{
	for(var_c957f6b6 = 1; var_c957f6b6 < 5; var_c957f6b6++)
	{
		if(self.var_a5f37229[var_c957f6b6] == 0)
		{
			var_cf42b0b2 = var_c957f6b6;
			self.var_7b32e45e[var_cf42b0b2] = 1;
			self namespace_37b990db::function_bae40a28(var_cf42b0b2, 0);
		}
	}
}

/*
	Name: function_6ac512e
	Namespace: namespace_1eb7e8f5
	Checksum: 0x9740278F
	Offset: 0xC8D8
	Size: 0x21D
	Parameters: 0
	Flags: None
*/
function function_6ac512e()
{
	for(var_cf42b0b2 = 1; var_cf42b0b2 <= 4; var_cf42b0b2++)
	{
		if(var_cf42b0b2 == 1 || var_cf42b0b2 == 2)
		{
			var_41d1cac6 = function_72a94f05(0.9, 1.2);
			var_26dc9f18 = function_72a94f05(1.6, 2.4);
			var_130ee436 = function_72a94f05(1.6, 1.9);
			var_b86905a8 = function_72a94f05(2.4, 2.9);
			level.var_1eb7e8f5 namespace_37b990db::function_f4546867(var_41d1cac6, var_26dc9f18, var_130ee436, var_b86905a8, var_cf42b0b2);
		}
		if(var_cf42b0b2 == 3 || var_cf42b0b2 == 4)
		{
			var_41d1cac6 = function_72a94f05(0.9, 1.2);
			var_26dc9f18 = function_72a94f05(1.6, 2.4);
			var_130ee436 = function_72a94f05(5, 6);
			var_b86905a8 = function_72a94f05(6.5, 7.5);
			level.var_1eb7e8f5 namespace_37b990db::function_f4546867(var_41d1cac6, var_26dc9f18, var_130ee436, var_b86905a8, var_cf42b0b2);
		}
	}
}

/*
	Name: function_745449bd
	Namespace: namespace_1eb7e8f5
	Checksum: 0x25D1E1E7
	Offset: 0xCB00
	Size: 0x21D
	Parameters: 0
	Flags: None
*/
function function_745449bd()
{
	for(var_cf42b0b2 = 1; var_cf42b0b2 < 5; var_cf42b0b2++)
	{
		if(var_cf42b0b2 == 1 || var_cf42b0b2 == 2)
		{
			var_41d1cac6 = function_72a94f05(0.9, 1.2);
			var_26dc9f18 = function_72a94f05(1.3, 1.8);
			var_130ee436 = function_72a94f05(3.5, 3.8);
			var_b86905a8 = function_72a94f05(4.5, 4.9);
			level.var_1eb7e8f5 namespace_37b990db::function_f4546867(var_41d1cac6, var_26dc9f18, var_130ee436, var_b86905a8, var_cf42b0b2);
		}
		if(var_cf42b0b2 == 3 || var_cf42b0b2 == 4)
		{
			var_41d1cac6 = function_72a94f05(0.9, 1.2);
			var_26dc9f18 = function_72a94f05(1.3, 1.8);
			var_130ee436 = function_72a94f05(3.5, 3.8);
			var_b86905a8 = function_72a94f05(4.5, 4.9);
			level.var_1eb7e8f5 namespace_37b990db::function_f4546867(var_41d1cac6, var_26dc9f18, var_130ee436, var_b86905a8, var_cf42b0b2);
		}
	}
}

/*
	Name: function_52284865
	Namespace: namespace_1eb7e8f5
	Checksum: 0x592734F
	Offset: 0xCD28
	Size: 0x251
	Parameters: 6
	Flags: None
*/
function function_52284865(var_d5ca9084, var_9d097bf8, var_961f6182, var_fe65d31b, var_3cb8ff6f, var_d1bb8a11)
{
	for(var_c957f6b6 = 0; var_c957f6b6 < var_d5ca9084.size; var_c957f6b6++)
	{
		var_4c9c8550 = var_d5ca9084[var_c957f6b6];
		if(!isdefined(var_4c9c8550.var_b01758c4))
		{
			var_a080d759 = function_f679a325(var_4c9c8550.var_722885f3 - level.var_1eb7e8f5.var_722885f3);
			var_8cd5b0c5 = var_a080d759 * var_9d097bf8;
			if(isdefined(var_d1bb8a11) && isdefined(var_3cb8ff6f))
			{
				var_766fbf83 = (0, 0, 1);
				var_43eea8e5 = function_2e582ecc(var_a080d759, var_766fbf83);
				var_612f807a = function_72a94f05(var_3cb8ff6f, var_d1bb8a11);
				var_8cd5b0c5 = var_8cd5b0c5 + var_43eea8e5 * var_612f807a;
			}
			var_4c9c8550 thread function_12bef3f6(var_8cd5b0c5);
		}
	}
	for(var_c957f6b6 = 0; var_c957f6b6 < var_fe65d31b; var_c957f6b6++)
	{
		function_9cf04c2e(var_961f6182, var_961f6182, level.var_1eb7e8f5.var_722885f3, 400);
		var_5ddef2e5 = function_3f10449f();
		for(var_a3557c4d = 0; var_a3557c4d < var_5ddef2e5.size; var_a3557c4d++)
		{
			var_5ddef2e5[var_a3557c4d] function_e2af603e("damage_heavy");
		}
		wait(0.1);
	}
}

/*
	Name: function_12bef3f6
	Namespace: namespace_1eb7e8f5
	Checksum: 0x9D2710E2
	Offset: 0xCF88
	Size: 0x53
	Parameters: 1
	Flags: None
*/
function function_12bef3f6(var_8cd5b0c5)
{
	self endon("hash_128f8789");
	self function_822f0cc5(self.var_722885f3, var_8cd5b0c5);
	wait(0.1);
	self function_422037f5();
}

/*
	Name: function_f6778ee2
	Namespace: namespace_1eb7e8f5
	Checksum: 0xDE43F75C
	Offset: 0xCFE8
	Size: 0x8D
	Parameters: 1
	Flags: None
*/
function function_f6778ee2(var_e9ddc8f2)
{
	for(var_c957f6b6 = 0; var_c957f6b6 < var_e9ddc8f2.size; var_c957f6b6++)
	{
		var_f92a03e7 = function_6ada35ba(var_e9ddc8f2[var_c957f6b6], "targetname");
		level thread function_ae670a39("cleanup_apc", var_e9ddc8f2[var_c957f6b6]);
	}
}

/*
	Name: function_ae670a39
	Namespace: namespace_1eb7e8f5
	Checksum: 0x875CEA8F
	Offset: 0xD080
	Size: 0x167
	Parameters: 2
	Flags: None
*/
function function_ae670a39(var_cc890dd4, var_b22a2ac4)
{
	level endon(var_cc890dd4);
	var_f92a03e7 = function_6ada35ba(var_b22a2ac4, "targetname");
	var_f92a03e7 waittill("hash_4dbf3ae3");
	level notify("hash_6e31b2e3");
	var_4c9c8550 = function_6ada35ba(var_b22a2ac4, "target");
	if(isdefined(var_4c9c8550) && (!isdefined(var_4c9c8550.var_b01758c4) && var_4c9c8550.var_b01758c4))
	{
		var_a080d759 = function_f679a325(var_4c9c8550.var_722885f3 - level.var_1eb7e8f5.var_722885f3);
		var_8cd5b0c5 = var_a080d759 * 250;
		var_4c9c8550 function_422037f5();
		var_4c9c8550 function_822f0cc5(var_4c9c8550.var_722885f3, var_8cd5b0c5);
		var_4c9c8550.var_b01758c4 = 1;
	}
}

/*
	Name: function_3bf8c3f4
	Namespace: namespace_1eb7e8f5
	Checksum: 0xD44674AA
	Offset: 0xD1F0
	Size: 0x19B
	Parameters: 1
	Flags: None
*/
function function_3bf8c3f4(var_5c70e0a7)
{
	var_2a04238a = namespace_2cb3876f::function_125042c0();
	namespace_84970cc4::function_69554b3e(var_2a04238a, level.var_2fd26037);
	namespace_84970cc4::function_eaab05dc(var_2a04238a, &namespace_d84e54db::function_b4f5e3b9, var_5c70e0a7);
	namespace_84970cc4::function_eaab05dc(var_2a04238a, &namespace_d84e54db::function_c9e45d52, var_5c70e0a7);
	if(var_5c70e0a7)
	{
		level.var_1eb7e8f5 namespace_37b990db::function_54bdb053(1);
		level.var_1eb7e8f5 namespace_37b990db::function_54bdb053(2);
		level.var_1eb7e8f5 namespace_37b990db::function_54bdb053(3);
		level.var_1eb7e8f5 namespace_37b990db::function_54bdb053(4);
	}
	else
	{
		level.var_1eb7e8f5 namespace_37b990db::function_54bdb053(1);
		level.var_1eb7e8f5 namespace_37b990db::function_54bdb053(2);
		level.var_1eb7e8f5 namespace_37b990db::function_54bdb053(3);
		level.var_1eb7e8f5 namespace_37b990db::function_54bdb053(4);
	}
}

/*
	Name: function_faafa578
	Namespace: namespace_1eb7e8f5
	Checksum: 0x29AF5737
	Offset: 0xD398
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_faafa578()
{
	level.var_933bbc2c = [];
	if(isdefined(level.var_681ad194[1]))
	{
		function_1c2beb2b(level.var_933bbc2c, level.var_681ad194[1], 0);
	}
	if(isdefined(level.var_681ad194[2]))
	{
		function_1c2beb2b(level.var_933bbc2c, level.var_681ad194[2], 0);
	}
	if(isdefined(level.var_681ad194[3]))
	{
		function_1c2beb2b(level.var_933bbc2c, level.var_681ad194[3], 0);
	}
}

/*
	Name: function_4eae0e09
	Namespace: namespace_1eb7e8f5
	Checksum: 0x46CF87DB
	Offset: 0xD460
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_4eae0e09()
{
	var_4072b6ba = function_6ada35ba("trigger_parkinglot_light", "targetname");
	var_4072b6ba waittill("hash_4dbf3ae3");
	var_bfa0f33f = namespace_14b42b8a::function_7922262b(var_4072b6ba.var_b07228b6);
	function_a45fee8b(var_bfa0f33f.var_722885f3, 60, 60, 0.5);
}

/*
	Name: function_80e4d901
	Namespace: namespace_1eb7e8f5
	Checksum: 0x8C433B5E
	Offset: 0xD500
	Size: 0x30B
	Parameters: 0
	Flags: None
*/
function function_80e4d901()
{
	var_4072b6ba = function_6ada35ba("trigger_light_post", "targetname");
	var_4072b6ba waittill("hash_4dbf3ae3");
	var_4072b6ba function_921a1574("evt_apc_impact_pole");
	var_bfa0f33f = namespace_14b42b8a::function_7922262b(var_4072b6ba.var_b07228b6);
	function_a45fee8b(var_bfa0f33f.var_722885f3, 60, 60, 0.5);
	var_ede59fe8 = function_6ada35ba("trigger_entrance_gate", "targetname");
	var_ede59fe8 waittill("hash_4dbf3ae3");
	var_ede59fe8 function_921a1574("evt_apc_impact_entrance");
	level thread function_98b546ae("right_front");
	var_bfa0f33f = namespace_14b42b8a::function_7922262b(var_ede59fe8.var_b07228b6);
	function_a45fee8b(var_bfa0f33f.var_722885f3, 300, 300, 25);
	var_fbe4f40c = function_6ada35ba("trigger_scaffold", "targetname");
	var_fbe4f40c waittill("hash_4dbf3ae3");
	var_fbe4f40c function_921a1574("evt_apc_impact_scaffolding");
	function_a45fee8b(var_fbe4f40c.var_722885f3, 300, 300, 25);
	var_aa79ca36 = function_6ada35ba("trigger_gate_exit", "targetname");
	var_aa79ca36 waittill("hash_4dbf3ae3");
	var_aa79ca36 function_921a1574("evt_apc_impact_entrance");
	var_bfa0f33f = namespace_14b42b8a::function_7922262b(var_aa79ca36.var_b07228b6);
	function_a45fee8b(var_bfa0f33f.var_722885f3, 300, 300, 25);
	var_48cab5aa = function_6ada35ba("trigger_cones", "targetname");
	var_48cab5aa waittill("hash_4dbf3ae3");
	function_a45fee8b(var_48cab5aa.var_722885f3, 300, 300, 25);
}

/*
	Name: function_26fb0662
	Namespace: namespace_1eb7e8f5
	Checksum: 0x5BB6BFFB
	Offset: 0xD818
	Size: 0x85
	Parameters: 0
	Flags: None
*/
function function_26fb0662()
{
	var_751ebe80 = function_84970cc4(1, 2, 3, 4);
	for(var_c957f6b6 = 0; var_c957f6b6 < level.var_2395e945.size; var_c957f6b6++)
	{
		level.var_2395e945[var_c957f6b6] thread function_59329589(var_751ebe80[var_c957f6b6]);
	}
}

/*
	Name: function_5c1321b9
	Namespace: namespace_1eb7e8f5
	Checksum: 0x78CCA68A
	Offset: 0xD8A8
	Size: 0xB1
	Parameters: 0
	Flags: None
*/
function function_5c1321b9()
{
	var_1d80939f = function_99201f25("trigger_apc_bump", "targetname");
	foreach(var_4e0a32bf in var_1d80939f)
	{
		var_4e0a32bf thread function_efa6317e();
	}
}

/*
	Name: function_efa6317e
	Namespace: namespace_1eb7e8f5
	Checksum: 0xA8026054
	Offset: 0xD968
	Size: 0x111
	Parameters: 0
	Flags: None
*/
function function_efa6317e()
{
	self waittill("hash_4dbf3ae3");
	var_78962fff = 0;
	if(isdefined(self.var_8202763a))
	{
		var_78962fff = self.var_8202763a;
	}
	do
	{
		foreach(var_5dc5e20a in level.var_9b1393e7)
		{
			var_5dc5e20a function_e2af603e("cp_prologue_rumble_apc_offroad");
		}
		var_74871427 = function_72a94f05(0.25, 0.5);
		wait(var_74871427);
		var_78962fff = var_78962fff - var_74871427;
	}
	while(!var_78962fff > 0);
}

/*
	Name: function_8d1d7010
	Namespace: namespace_1eb7e8f5
	Checksum: 0x605526A0
	Offset: 0xDA88
	Size: 0xFB
	Parameters: 0
	Flags: None
*/
function function_8d1d7010()
{
	var_fe4ba9bc = function_99201f25("rail_barrel_1", "script_noteworthy");
	foreach(var_a3d46ee4 in var_fe4ba9bc)
	{
		if(var_a3d46ee4.var_e6e9b8de == "script_model")
		{
			var_8a4f1b19 = var_a3d46ee4;
			break;
		}
	}
	var_8a4f1b19 waittill("hash_6445d1f2");
	level namespace_cc27597::function_43718187("p7_fxanim_cp_prologue_apc_rail_building_explode01_bundle");
}

/*
	Name: function_67348f4b
	Namespace: namespace_1eb7e8f5
	Checksum: 0x1CF2C93A
	Offset: 0xDB90
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_67348f4b()
{
	self waittill("hash_128f8789");
	level namespace_cc27597::function_43718187("p7_fxanim_cp_prologue_apc_rail_building_explode02_bundle");
}

/*
	Name: function_809f2e11
	Namespace: namespace_1eb7e8f5
	Checksum: 0xE4FBDD9
	Offset: 0xDBC8
	Size: 0xFB
	Parameters: 0
	Flags: None
*/
function function_809f2e11()
{
	level thread function_7ed5512("trig_first_crawler", "evt_apc_first_turn");
	level thread function_7ed5512("trigger_reached_roadblock", "evt_apc_roadblock_oneshot", 0.25);
	level thread function_7ed5512("trig_cleanup_offroad", "evt_apc_vtol_crash", 0.15, 1);
	level thread function_7ed5512("apc_hits_truck_in_tunnel", "evt_apc_tunnel_turn", 0, 1);
	level thread function_7ed5512("trigger_last_roadblock", "evt_apc_final_skid", 3.5);
	level thread function_d77cc705();
}

/*
	Name: function_7ed5512
	Namespace: namespace_1eb7e8f5
	Checksum: 0x55BBBC15
	Offset: 0xDCD0
	Size: 0x10B
	Parameters: 4
	Flags: None
*/
function function_7ed5512(var_41e1bdd2, var_48b937ab, var_67520c6a, var_b131fff1)
{
	if(!isdefined(var_67520c6a))
	{
		var_67520c6a = 0;
	}
	if(!isdefined(var_b131fff1))
	{
		var_b131fff1 = 0;
	}
	if(isdefined(var_b131fff1) && var_b131fff1)
	{
		while(1)
		{
			var_5948b3df = namespace_4dbf3ae3::function_1ab5ebec(var_41e1bdd2);
			if(isdefined(level.var_1eb7e8f5) && var_5948b3df.var_aef176e7 == level.var_1eb7e8f5)
			{
				break;
			}
		}
	}
	else
	{
		var_5948b3df = namespace_4dbf3ae3::function_1ab5ebec(var_41e1bdd2);
	}
	wait(var_67520c6a);
	if(isdefined(level.var_1eb7e8f5))
	{
		level.var_1eb7e8f5 function_921a1574(var_48b937ab);
	}
}

/*
	Name: function_d77cc705
	Namespace: namespace_1eb7e8f5
	Checksum: 0x5894C5A2
	Offset: 0xDDE8
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_d77cc705()
{
	namespace_4dbf3ae3::function_1ab5ebec("trigger_roadblock_bypass");
	if(isdefined(level.var_1eb7e8f5))
	{
		level.var_1eb7e8f5 function_c2931a36("veh_railapc_dirt_lp", 1.5);
	}
	namespace_4dbf3ae3::function_1ab5ebec("ambush_vtol_takeoff");
	wait(1.5);
	if(isdefined(level.var_1eb7e8f5))
	{
		level.var_1eb7e8f5 function_c2931a36("veh_railapc_move_lp", 1.5);
	}
}

/*
	Name: function_d20ef450
	Namespace: namespace_1eb7e8f5
	Checksum: 0x4150B2AF
	Offset: 0xDEA0
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_d20ef450()
{
	self waittill("hash_128f8789");
	self function_356a1c2a("evt_apcrail_vtol1_takeoff");
	self function_921a1574("evt_apcrail_vtol1_crash");
}

/*
	Name: function_5e86daf4
	Namespace: namespace_1eb7e8f5
	Checksum: 0xF53D0748
	Offset: 0xDEF8
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_5e86daf4()
{
	wait(2);
	level.var_1eb7e8f5 function_c2931a36("veh_railapc_move_lp", 2);
}

