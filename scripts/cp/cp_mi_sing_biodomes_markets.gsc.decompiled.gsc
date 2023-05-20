#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_squad_control;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_sing_biodomes;
#using scripts\cp\cp_mi_sing_biodomes_accolades;
#using scripts\cp\cp_mi_sing_biodomes_sound;
#using scripts\cp\cp_mi_sing_biodomes_util;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_save;
#using scripts\shared\ai\archetype_warlord_interface;
#using scripts\shared\ai\robot_phalanx;
#using scripts\shared\ai\systems\gib;
#using scripts\shared\ai\warlord;
#using scripts\shared\ai_shared;
#using scripts\shared\animation_shared;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\fx_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\math_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;

#namespace namespace_73fc8448;

/*
	Name: function_d290ebfa
	Namespace: namespace_73fc8448
	Checksum: 0xC12B205F
	Offset: 0x1A30
	Size: 0x25B
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	var_83b0c601 = function_99201f25("hendricks_markets1_scene_triggers", "script_noteworthy");
	level thread namespace_84970cc4::function_966ecb29(var_83b0c601, &function_ddde0fc3);
	namespace_2f06d687::function_2b37a3c9("sp_markets1_warlord", "targetname", &function_7ff66080);
	namespace_2f06d687::function_2b37a3c9("sp_markets2_warlord", "targetname", &function_ff2bafac);
	namespace_2f06d687::function_2b37a3c9("headpop_guys", "script_noteworthy", &function_2a1badc);
	namespace_2f06d687::function_2b37a3c9("markets2_rpg_tower", "script_noteworthy", &function_898e1184);
	namespace_2f06d687::function_2b37a3c9("markets2_ambush_guys", "script_noteworthy", &function_d89d2fa0);
	namespace_2f06d687::function_2b37a3c9("sp_markets2_bridge_retreat", "targetname", &function_f4ed98ea);
	namespace_2f06d687::function_2b37a3c9("markets2_robot_rushers", "script_noteworthy", &function_23089a30);
	level.var_9198e8fa = [];
	namespace_2f06d687::function_2b37a3c9("sp_markets1_start_anim", "script_noteworthy", &namespace_d84e54db::function_19e98020, undefined, 64);
	namespace_2f06d687::function_2b37a3c9("sp_markets1_weapongrab_leader", "targetname", &function_4a0994ae);
	namespace_2f06d687::function_2b37a3c9("markets1_magic_rpg", "script_noteworthy", &function_d999a915);
	function_7b244c18();
}

/*
	Name: function_7b244c18
	Namespace: namespace_73fc8448
	Checksum: 0x1DF60365
	Offset: 0x1C98
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_7b244c18()
{
	level namespace_cc27597::function_8f9f34e0("cin_bio_03_01_market_vign_hendricksmoment_throw", &function_a5040920, "play");
	level namespace_cc27597::function_8f9f34e0("cin_bio_03_01_market_vign_hendricksmoment_rush", &function_f4e90efd, "play");
	level namespace_cc27597::function_8f9f34e0("cin_bio_04_01_market2_vign_explode", &function_b27f1679, "play");
}

/*
	Name: function_afd92016
	Namespace: namespace_73fc8448
	Checksum: 0x3FE17E08
	Offset: 0x1D38
	Size: 0x24B
	Parameters: 1
	Flags: None
*/
function function_afd92016(var_19321990)
{
	level endon("hash_efa973e9");
	var_1d92694f = function_6ada35ba("dumpster_markets1_push_sideways_" + var_19321990, "targetname");
	var_1d92694f function_14c24d9d();
	var_6df191e = namespace_14b42b8a::function_7922262b("markets1_push_sideways_" + var_19321990);
	var_6df191e namespace_cc27597::function_c35e6aab(var_6df191e.var_1157a889, var_1d92694f);
	var_974cc07 = function_b4cb3503("nd_markets1_push_sideways_" + var_19321990, "targetname");
	function_d224409e(var_974cc07, 0);
	namespace_4dbf3ae3::function_1ab5ebec("trig_markets1_push_sideways_" + var_19321990);
	var_a715f176 = namespace_2f06d687::function_7387a40a("sp_markets1_push_sideways_" + var_19321990);
	var_a715f176 namespace_d84e54db::function_ceb883cd("sprint", 1);
	var_a715f176 endon("hash_128f8789");
	var_a715f176 function_d87e0a34(1024);
	var_1d92694f function_de8377bf();
	var_c77d2837 = function_84970cc4(var_a715f176, var_1d92694f);
	var_6df191e thread function_73bcc8bf(var_a715f176, var_1d92694f);
	var_6df191e namespace_cc27597::function_43718187("cin_gen_aie_push_cover_sideways_no_dynpath", var_c77d2837);
	var_6df191e notify("hash_5c016b54");
	function_d224409e(var_974cc07, 1);
	var_1d92694f function_14c24d9d();
}

/*
	Name: function_73bcc8bf
	Namespace: namespace_73fc8448
	Checksum: 0x639D9D39
	Offset: 0x1F90
	Size: 0x63
	Parameters: 2
	Flags: None
*/
function function_73bcc8bf(var_a715f176, var_1d92694f)
{
	self endon("hash_5c016b54");
	var_a715f176 waittill("hash_128f8789");
	self namespace_cc27597::function_fcf56ab5("cin_gen_aie_push_cover_sideways_no_dynpath");
	var_1d92694f function_14c24d9d();
}

/*
	Name: function_d3cdcc7a
	Namespace: namespace_73fc8448
	Checksum: 0x3FECAF8E
	Offset: 0x2000
	Size: 0x25B
	Parameters: 1
	Flags: None
*/
function function_d3cdcc7a(var_19321990)
{
	level endon("hash_efa973e9");
	var_db712e4f = function_6ada35ba("table_markets1_flip_" + var_19321990, "targetname");
	var_db712e4f function_14c24d9d();
	var_6df191e = namespace_14b42b8a::function_7922262b("markets1_flip_" + var_19321990);
	var_6df191e namespace_cc27597::function_c35e6aab("cin_gen_aie_table_flip_no_dynpath", var_db712e4f);
	var_f377c056 = function_b4cb3503("nd_markets1_flip_" + var_19321990, "targetname");
	function_d224409e(var_f377c056, 0);
	namespace_4dbf3ae3::function_1ab5ebec("trig_markets1_flip_" + var_19321990);
	var_7f7b2bb8 = namespace_2f06d687::function_7387a40a("sp_markets1_flip_" + var_19321990);
	var_7f7b2bb8 namespace_d84e54db::function_ceb883cd("sprint", 1);
	var_7f7b2bb8 endon("hash_128f8789");
	var_7f7b2bb8 function_d87e0a34(1024);
	var_c77d2837 = function_84970cc4(var_7f7b2bb8, var_db712e4f);
	var_6df191e thread function_2188c8d1(var_7f7b2bb8, var_db712e4f);
	var_6df191e thread namespace_cc27597::function_43718187("cin_gen_aie_table_flip_no_dynpath", var_c77d2837);
	var_db712e4f waittill("hash_80d60480");
	var_db712e4f function_de8377bf();
	var_7f7b2bb8 waittill("hash_3bcf8b97");
	function_d224409e(var_f377c056, 1);
	var_db712e4f thread function_1d148f52();
}

/*
	Name: function_2188c8d1
	Namespace: namespace_73fc8448
	Checksum: 0x473EEE0C
	Offset: 0x2268
	Size: 0x63
	Parameters: 2
	Flags: None
*/
function function_2188c8d1(var_7f7b2bb8, var_db712e4f)
{
	var_7f7b2bb8 endon("hash_3bcf8b97");
	var_7f7b2bb8 waittill("hash_128f8789");
	self namespace_cc27597::function_fcf56ab5("cin_gen_aie_table_flip_no_dynpath");
	var_db712e4f function_14c24d9d();
}

/*
	Name: function_1d148f52
	Namespace: namespace_73fc8448
	Checksum: 0xBE7A14AF
	Offset: 0x22D8
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_1d148f52()
{
	self waittill("hash_d3a494b6");
	self function_14c24d9d();
}

/*
	Name: function_174b2742
	Namespace: namespace_73fc8448
	Checksum: 0xA154B5EA
	Offset: 0x2308
	Size: 0x52F
	Parameters: 0
	Flags: None
*/
function function_174b2742()
{
	level endon("hash_9bb53038");
	namespace_4dbf3ae3::function_1ab5ebec("trig_markets1_warlord");
	namespace_d5067552::function_347e835a("sm_markets1_warlord");
	while(1)
	{
		var_11657e7b = namespace_d5067552::function_423eae50("sm_markets1_warlord");
		foreach(var_c7a78bed in var_11657e7b)
		{
			var_c7a78bed.var_8e7be685 = [];
			foreach(var_5dc5e20a in level.var_9b1393e7)
			{
				var_36b8634f = function_cb3d1c9b(var_c7a78bed.var_722885f3, var_5dc5e20a.var_722885f3);
				if(!isdefined(var_c7a78bed.var_8e7be685))
				{
					var_c7a78bed.var_8e7be685 = [];
				}
				else if(!function_6e2770d8(var_c7a78bed.var_8e7be685))
				{
					var_c7a78bed.var_8e7be685 = function_84970cc4(var_c7a78bed.var_8e7be685);
				}
				var_c7a78bed.var_8e7be685[var_c7a78bed.var_8e7be685.size] = var_36b8634f;
			}
			var_c7a78bed.var_377a9c22 = undefined;
		}
		for(var_c957f6b6 = 0; var_c957f6b6 < level.var_9b1393e7.size; var_c957f6b6++)
		{
			var_43b73530 = undefined;
			var_1d2985c7 = undefined;
			var_ab1697de = undefined;
			foreach(var_c7a78bed in var_11657e7b)
			{
				if(isdefined(var_c7a78bed.var_8e7be685))
				{
					for(var_c957f6b6 = 0; var_c957f6b6 < var_c7a78bed.var_8e7be685.size; var_c957f6b6++)
					{
						if(!isdefined(var_1d2985c7) || (isdefined(var_c7a78bed.var_8e7be685[var_c957f6b6]) && var_c7a78bed.var_8e7be685[var_c957f6b6] < var_1d2985c7))
						{
							var_1d2985c7 = var_c7a78bed.var_8e7be685[var_c957f6b6];
							var_ab1697de = var_c957f6b6;
							var_43b73530 = var_c7a78bed;
						}
					}
				}
			}
			var_43b73530.var_377a9c22 = level.var_9b1393e7[var_ab1697de];
			var_43b73530.var_8e7be685 = undefined;
			foreach(var_c7a78bed in var_11657e7b)
			{
				if(isdefined(var_c7a78bed.var_8e7be685))
				{
					var_c7a78bed.var_8e7be685[var_ab1697de] = undefined;
				}
			}
		}
		if(var_11657e7b.size > level.var_9b1393e7.size)
		{
			foreach(var_c7a78bed in var_11657e7b)
			{
				if(!isdefined(var_c7a78bed.var_377a9c22))
				{
					var_c7a78bed.var_377a9c22 = function_57efbe1(level.var_9b1393e7, var_c7a78bed.var_722885f3, 1)[0];
				}
			}
		}
		wait(0.05);
	}
}

/*
	Name: function_7ff66080
	Namespace: namespace_73fc8448
	Checksum: 0x5B195511
	Offset: 0x2840
	Size: 0x18F
	Parameters: 0
	Flags: None
*/
function function_7ff66080()
{
	self endon("hash_128f8789");
	self thread function_5a24feff();
	self.var_377a9c22 = undefined;
	self.var_8fa11c4a = undefined;
	self namespace_27a45d31::function_f61c0df8("nd_market1_warlord", 2, 3);
	var_e812ecff = function_6ada35ba("vol_markets1_warlord_last", "targetname");
	var_f5d2f02a = function_99201f25("vol_markets1_warlord", "script_noteworthy");
	while(1)
	{
		if(isdefined(self.var_377a9c22))
		{
			if(self.var_377a9c22 function_32fa5072(var_e812ecff))
			{
				var_bf84b114 = var_e812ecff;
			}
			else
			{
				var_bf84b114 = function_57efbe1(var_f5d2f02a, self.var_377a9c22.var_722885f3, 1)[0];
			}
			if(!isdefined(self.var_8fa11c4a) || self.var_8fa11c4a !== var_bf84b114)
			{
				self.var_8fa11c4a = var_bf84b114;
				self function_169cc712(self.var_8fa11c4a, 1);
			}
		}
		wait(0.05);
	}
}

/*
	Name: function_5a24feff
	Namespace: namespace_73fc8448
	Checksum: 0x72B2F8E
	Offset: 0x29D8
	Size: 0x149
	Parameters: 0
	Flags: None
*/
function function_5a24feff()
{
	self endon("hash_128f8789");
	level endon("hash_8057891");
	var_9f460d03 = 0;
	while(!var_9f460d03)
	{
		foreach(var_5dc5e20a in level.var_9b1393e7)
		{
			if(var_5dc5e20a function_eafc9c17(self))
			{
				var_9f460d03 = 1;
				break;
			}
		}
		wait(0.25);
	}
	level namespace_82b91a51::function_6729b6ba(5, "warlord_vo_done");
	level namespace_ad23e503::function_1ab5ebec("markets1_intro_dialogue_done");
	level thread namespace_71b8dba1::function_a463d127("kane_warlord_get_to_cove_0");
	level notify("hash_8057891");
}

/*
	Name: function_768ccc86
	Namespace: namespace_73fc8448
	Checksum: 0x345BABB2
	Offset: 0x2B30
	Size: 0x4CB
	Parameters: 2
	Flags: None
*/
function function_768ccc86(var_b04bc952, var_74cd64bc)
{
	namespace_d0ef8521::function_74d6b22f("cp_level_biodomes_cloud_mountain");
	namespace_27a45d31::function_ddb0eeea("objective_markets_start_init");
	if(var_74cd64bc)
	{
		namespace_27a45d31::function_bff1a867(var_b04bc952);
		level thread namespace_55d2f1be::function_69468f09(1);
		level thread namespace_27a45d31::function_753a859(var_b04bc952);
		level waittill("hash_dde01e26");
		function_d4f82627("clear", "cin_bio_02_04_gunplay_vign_stab");
		level thread namespace_f1b4cbbc::function_fa2e45b8();
	}
	if(isdefined(level.var_f22c67b))
	{
		level thread [[level.var_f22c67b]]();
	}
	level thread namespace_27a45d31::function_cc20e187("markets1", 1);
	level.var_996e05eb = "friendly_spawns_markets_start";
	namespace_4dbf3ae3::function_42e87952("trig_hendricks_color_marketst1");
	level namespace_ad23e503::function_74d6b22f("markets1_enemies_alert");
	namespace_d0ef8521::function_74d6b22f("cp_waypoint_breadcrumb", namespace_14b42b8a::function_7922262b("breadcrumb_markets1"));
	namespace_d0ef8521::function_50ccee8d("cp_waypoint_breadcrumb");
	namespace_9f824288::function_5d2cdd99();
	level thread namespace_f1b4cbbc::function_fa2e45b8();
	level thread function_174b2742();
	level thread function_afd92016("left");
	level thread function_d3cdcc7a("left");
	level thread function_afd92016("right");
	level thread function_d3cdcc7a("right");
	namespace_4dbf3ae3::function_1ab5ebec("trig_markets1_combat2");
	level thread namespace_27a45d31::function_a1669688("markets1_retreaters_left", "info_volume_markets1_left", 2, 4);
	level thread namespace_27a45d31::function_a1669688("markets1_retreaters_right", "info_volume_markets1_right", 2, 4);
	namespace_4dbf3ae3::function_1ab5ebec("trig_markets1_pushback");
	namespace_d5067552::function_2992720d("sm_markets1_combat0");
	namespace_d5067552::function_2992720d("sm_markets1_combat1");
	namespace_d5067552::function_2992720d("sm_markets1_combat2");
	namespace_d5067552::function_2992720d("sm_markets1_combat3");
	level thread namespace_27a45d31::function_a1669688("markets1_snipers", "info_volume_markets1_rear", 1, 4);
	level thread namespace_27a45d31::function_a1669688("markets1_retreaters", "info_volume_markets1_rear", 1, 4);
	level thread namespace_27a45d31::function_a1669688("markets1_retreaters_left", "info_volume_markets1_rear", 2, 4);
	level thread namespace_27a45d31::function_a1669688("markets1_retreaters_right", "info_volume_markets1_rear", 1, 3);
	level thread namespace_27a45d31::function_a1669688("markets1_retreaters_last", "info_volume_markets1_rear", 3, 6);
	level namespace_cc27597::function_c35e6aab("p7_fxanim_cp_biodomes_cafe_window_break_right_bundle");
	level namespace_cc27597::function_c35e6aab("p7_fxanim_cp_biodomes_cafe_window_break_left_bundle");
	namespace_4dbf3ae3::function_1ab5ebec("trig_markets_rpg");
	level notify("hash_efa973e9");
	level namespace_1d795d47::function_be8adfb8("objective_markets_start");
}

/*
	Name: function_4a0994ae
	Namespace: namespace_73fc8448
	Checksum: 0x8B891904
	Offset: 0x3008
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_4a0994ae()
{
	self waittill("hash_128f8789");
	if(level namespace_cc27597::function_367f8966("cin_bio_03_01_market_aie_weapons"))
	{
		level namespace_cc27597::function_fcf56ab5("cin_bio_03_01_market_aie_weapons");
	}
}

/*
	Name: function_8387168c
	Namespace: namespace_73fc8448
	Checksum: 0x62314A17
	Offset: 0x3060
	Size: 0x1AB
	Parameters: 0
	Flags: None
*/
function function_8387168c()
{
	level thread namespace_cc27597::function_8f9f34e0("cin_gen_aie_table_react", &function_c7cb9a93, "done");
	level waittill("hash_ec11d3eb");
	namespace_2f06d687::function_22356ba7("sp_markets1_friendly_robot_start");
	namespace_d5067552::function_bae40a28("sm_markets1_combat0");
	namespace_d5067552::function_bae40a28("sm_markets1_combat1");
	level.var_1675f12a = namespace_2f06d687::function_7387a40a("turret_markets1");
	level.var_1675f12a thread function_70da4f9b();
	level thread function_5d4c2323();
	level thread function_b1e84c2();
	namespace_4dbf3ae3::function_42e87952("trig_markets1_combat1");
	level thread namespace_cc27597::function_43718187("cin_bio_03_01_market_vign_engage");
	level thread namespace_cc27597::function_43718187("cin_bio_03_01_market_aie_weapons");
	level thread namespace_cc27597::function_43718187("cin_gen_aie_table_react");
	wait(2);
	level namespace_ad23e503::function_74d6b22f("markets1_enemies_alert");
	level namespace_71e9cb84::function_74d6b22f("sndIGCsnapshot", 0);
}

/*
	Name: function_d87e0a34
	Namespace: namespace_73fc8448
	Checksum: 0xE535934A
	Offset: 0x3218
	Size: 0x147
	Parameters: 1
	Flags: None
*/
function function_d87e0a34(var_78850f88)
{
	var_6e4dffe8 = var_78850f88 * var_78850f88;
	var_9f460d03 = 0;
	while(!var_9f460d03)
	{
		foreach(var_5dc5e20a in level.var_9b1393e7)
		{
			var_6389ab3d = function_316422d1(var_5dc5e20a.var_722885f3, self.var_722885f3);
			if(var_5dc5e20a namespace_82b91a51::function_4ccc8ec5(self, 0.6, 1) && var_6389ab3d < 1000000 || var_6389ab3d < var_6e4dffe8)
			{
				var_9f460d03 = 1;
				break;
			}
		}
		wait(0.25);
	}
}

/*
	Name: function_5d4c2323
	Namespace: namespace_73fc8448
	Checksum: 0xD4661320
	Offset: 0x3368
	Size: 0x1EB
	Parameters: 0
	Flags: None
*/
function function_5d4c2323()
{
	while(!isdefined(level.var_2fd26037))
	{
		wait(0.05);
	}
	namespace_76d95162::function_d9f49fba(0);
	level namespace_71b8dba1::function_13b3b16a("plyr_plan_b_0");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_plan_b_into_comms_0");
	level namespace_71b8dba1::function_13b3b16a("plyr_i_thought_you_and_da_0");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_yeah_so_did_i_0");
	level namespace_71b8dba1::function_a463d127("kane_robot_squad_activati_0", 1);
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_you_finished_triangu_0", 3);
	level namespace_71b8dba1::function_a463d127("kane_got_em_data_drives_0");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_are_you_fucking_kidd_0");
	level namespace_71b8dba1::function_13b3b16a("plyr_how_much_do_you_wann_0");
	level namespace_71b8dba1::function_a463d127("kane_overwatch_shows_cdp_0");
	namespace_d0ef8521::function_48f26766("cp_waypoint_breadcrumb");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_you_kidding_me_wha_0");
	namespace_76d95162::function_d9f49fba(1);
	level namespace_ad23e503::function_74d6b22f("markets1_intro_dialogue_done");
}

/*
	Name: function_b1e84c2
	Namespace: namespace_73fc8448
	Checksum: 0xDE795D1A
	Offset: 0x3560
	Size: 0x1AB
	Parameters: 0
	Flags: None
*/
function function_b1e84c2()
{
	namespace_4dbf3ae3::function_1ab5ebec("trig_markets1_combat3");
	var_bd9defd6 = namespace_2f06d687::function_41e09b9("markets1_snipers");
	if(var_bd9defd6 > 0)
	{
		var_2d3d7b7 = [];
		var_2d3d7b7[0] = "hend_i_got_eyes_on_a_snip_0";
		var_2d3d7b7[1] = "hend_hostile_sniper_ahead_0";
		var_2d3d7b7[2] = "hend_eyes_up_sniper_in_p_0";
		level.var_2fd26037 namespace_71b8dba1::function_81141386(namespace_27a45d31::function_7ff50323(var_2d3d7b7), 3);
	}
	var_207c708e = namespace_2f06d687::function_41e09b9("markets1_riotshields");
	if(var_207c708e > 0)
	{
		var_2d3d7b7 = [];
		var_2d3d7b7[0] = "hend_riot_gear_incoming_0";
		var_2d3d7b7[1] = "hend_eyes_on_riot_gear_0";
		var_2d3d7b7[2] = "hend_riot_shields_comin_0";
		level.var_2fd26037 namespace_71b8dba1::function_81141386(namespace_27a45d31::function_7ff50323(var_2d3d7b7), 3);
	}
	level namespace_ad23e503::function_1ab5ebec("markets1_enemies_retreating");
	level.var_2fd26037 thread namespace_71b8dba1::function_81141386("hend_they_re_falling_back_0", 5);
}

/*
	Name: function_ddde0fc3
	Namespace: namespace_73fc8448
	Checksum: 0xA93B5417
	Offset: 0x3718
	Size: 0xA7
	Parameters: 0
	Flags: None
*/
function function_ddde0fc3()
{
	self endon("hash_128f8789");
	while(self function_c5637452())
	{
		self namespace_4dbf3ae3::function_1ab5ebec();
		if(self.var_aef176e7 == level.var_2395e945[0])
		{
			if(function_2477ac2(self.var_b07228b6))
			{
				level.var_2fd26037 thread function_563bb5b3(self.var_b07228b6);
			}
			self function_175e6b8e(0);
		}
	}
}

/*
	Name: function_563bb5b3
	Namespace: namespace_73fc8448
	Checksum: 0xFFA1BB21
	Offset: 0x37C8
	Size: 0xBB
	Parameters: 1
	Flags: None
*/
function function_563bb5b3(var_87b2bbe5)
{
	switch(var_87b2bbe5)
	{
		case "nd_hendricks_wok1":
		{
			level.var_2fd26037 thread function_1485f7dc();
			break;
		}
		case "nd_hendricks_shelves":
		{
			level.var_2fd26037 thread function_a67aaa62();
			break;
		}
		case default:
		{
			break;
		}
	}
	var_dfcbd82b = function_b4cb3503(var_87b2bbe5, "targetname");
	if(isdefined(var_dfcbd82b))
	{
		self function_169cc712(var_dfcbd82b);
	}
}

/*
	Name: function_a67aaa62
	Namespace: namespace_73fc8448
	Checksum: 0x5ED74C27
	Offset: 0x3890
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_a67aaa62()
{
	level namespace_cc27597::function_c35e6aab("cin_bio_03_01_market_vign_hendricksmoment_rush");
	self waittill("hash_41d1aaf0");
	function_2e1ac4d4();
}

/*
	Name: function_2e1ac4d4
	Namespace: namespace_73fc8448
	Checksum: 0xA81AEF17
	Offset: 0x38E0
	Size: 0x113
	Parameters: 0
	Flags: None
*/
function function_2e1ac4d4()
{
	var_d36f9bf = "trig_hendricks_moment_colors_right";
	var_68833421 = namespace_2f06d687::function_7387a40a("sp_markets1_shelfguy");
	if(function_5b49d38c(var_68833421))
	{
		var_68833421 namespace_d84e54db::function_c9e45d52(1);
		level namespace_cc27597::function_8f9f34e0("cin_bio_03_01_market_vign_hendricksmoment_rush_enemy", &function_3a8d91fc, "play");
		level thread function_a3bac88("cin_bio_03_01_market_vign_hendricksmoment_rush", var_68833421, var_d36f9bf);
		level namespace_cc27597::function_43718187("cin_bio_03_01_market_vign_hendricksmoment_rush_enemy", var_68833421);
	}
	else
	{
		level thread function_a3bac88("cin_bio_03_01_market_vign_hendricksmoment_rush", undefined, var_d36f9bf);
	}
}

/*
	Name: function_3a8d91fc
	Namespace: namespace_73fc8448
	Checksum: 0xCE099330
	Offset: 0x3A00
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_3a8d91fc(var_c77d2837)
{
	level namespace_cc27597::function_43718187("cin_bio_03_01_market_vign_hendricksmoment_rush");
}

/*
	Name: function_1485f7dc
	Namespace: namespace_73fc8448
	Checksum: 0xBADED923
	Offset: 0x3A38
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_1485f7dc()
{
	self namespace_d84e54db::function_b4f5e3b9(1);
	self namespace_d84e54db::function_c9e45d52(1);
	level namespace_cc27597::function_8f9f34e0("cin_bio_03_01_market_vign_hendricksmoment_throw", &function_b347511d, "init");
	level namespace_cc27597::function_c35e6aab("cin_bio_03_01_market_vign_hendricksmoment_throw");
}

/*
	Name: function_b347511d
	Namespace: namespace_73fc8448
	Checksum: 0x8F3AE7C0
	Offset: 0x3AC8
	Size: 0xFB
	Parameters: 1
	Flags: None
*/
function function_b347511d(var_c77d2837)
{
	var_d36f9bf = "trig_hendricks_color_markets1_left1";
	var_eb8ef003 = namespace_2f06d687::function_7387a40a("sp_hendricks_enemy_throw_1");
	if(function_5b49d38c(var_eb8ef003))
	{
		level namespace_cc27597::function_8f9f34e0("cin_bio_03_01_market_vign_hendricksmoment_throw_enemy", &function_af620536, "play");
		level thread function_a3bac88("cin_bio_03_01_market_vign_hendricksmoment_throw", var_eb8ef003, var_d36f9bf);
		level namespace_cc27597::function_43718187("cin_bio_03_01_market_vign_hendricksmoment_throw_enemy", var_eb8ef003);
	}
	else
	{
		level thread function_a3bac88("cin_bio_03_01_market_vign_hendricksmoment_throw", undefined, var_d36f9bf);
	}
}

/*
	Name: function_af620536
	Namespace: namespace_73fc8448
	Checksum: 0x57DDBB29
	Offset: 0x3BD0
	Size: 0x5B
	Parameters: 1
	Flags: None
*/
function function_af620536(var_c77d2837)
{
	level namespace_cc27597::function_43718187("cin_bio_03_01_market_vign_hendricksmoment_throw");
	level.var_2fd26037 namespace_d84e54db::function_b4f5e3b9(0);
	level.var_2fd26037 namespace_d84e54db::function_c9e45d52(0);
}

/*
	Name: function_a3bac88
	Namespace: namespace_73fc8448
	Checksum: 0x66BBB217
	Offset: 0x3C38
	Size: 0xB3
	Parameters: 3
	Flags: None
*/
function function_a3bac88(var_294306eb, var_2eecd77a, var_d36f9bf)
{
	if(function_5b49d38c(var_2eecd77a))
	{
		var_2eecd77a waittill("hash_128f8789");
	}
	level namespace_cc27597::function_fcf56ab5(var_294306eb);
	wait(0.15);
	level.var_2fd26037 namespace_d84e54db::function_b4f5e3b9(0);
	level.var_2fd26037 namespace_d84e54db::function_c9e45d52(0);
	namespace_4dbf3ae3::function_42e87952(var_d36f9bf, "targetname", undefined, 0);
}

/*
	Name: function_a5040920
	Namespace: namespace_73fc8448
	Checksum: 0x8F33EE38
	Offset: 0x3CF8
	Size: 0x17
	Parameters: 1
	Flags: None
*/
function function_a5040920(var_c77d2837)
{
	level waittill("hash_d1c9c0a9");
}

/*
	Name: function_f4e90efd
	Namespace: namespace_73fc8448
	Checksum: 0x44082075
	Offset: 0x3D18
	Size: 0x7B
	Parameters: 1
	Flags: None
*/
function function_f4e90efd(var_c77d2837)
{
	level waittill("hash_a04c5e57");
	var_8fbeee65 = function_6ada35ba("plaster_walls_01", "targetname");
	var_8fbeee65 function_422037f5();
	level namespace_cc27597::function_43718187("p7_fxanim_cp_newworld_plaster_walls_01_bundle");
}

/*
	Name: function_1589a392
	Namespace: namespace_73fc8448
	Checksum: 0x2D4DB6F7
	Offset: 0x3DA0
	Size: 0x5B
	Parameters: 1
	Flags: None
*/
function function_1589a392(var_294306eb)
{
	self.var_7dfaf62 = 8;
	self namespace_d84e54db::function_c9e45d52(1);
	self waittill("hash_128f8789");
	level namespace_cc27597::function_fcf56ab5(var_294306eb);
}

/*
	Name: function_c7cb9a93
	Namespace: namespace_73fc8448
	Checksum: 0xA54EA933
	Offset: 0x3E08
	Size: 0x93
	Parameters: 1
	Flags: None
*/
function function_c7cb9a93(var_c77d2837)
{
	var_524f5f14 = function_6ada35ba("sp_markets_table_react_chair", "targetname");
	var_27fbdccf = function_6ada35ba("sp_markets_table_react_table", "targetname");
	var_524f5f14 function_14c24d9d();
	var_27fbdccf function_14c24d9d();
}

/*
	Name: function_1bc4d710
	Namespace: namespace_73fc8448
	Checksum: 0xC4C9F5F1
	Offset: 0x3EA8
	Size: 0x3B
	Parameters: 4
	Flags: None
*/
function function_1bc4d710(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	namespace_27a45d31::function_ddb0eeea("objective_markets_start_done");
}

/*
	Name: function_df0ba879
	Namespace: namespace_73fc8448
	Checksum: 0xAC04BD40
	Offset: 0x3EF0
	Size: 0x35B
	Parameters: 2
	Flags: None
*/
function function_df0ba879(var_b04bc952, var_74cd64bc)
{
	namespace_27a45d31::function_ddb0eeea("objective_markets_rpg_init");
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		namespace_27a45d31::function_bff1a867(var_b04bc952);
		namespace_55d2f1be::function_cef897cf(var_b04bc952);
		level namespace_cc27597::function_c35e6aab("p7_fxanim_cp_biodomes_cafe_window_break_right_bundle");
		level namespace_cc27597::function_c35e6aab("p7_fxanim_cp_biodomes_cafe_window_break_left_bundle");
		level.var_1675f12a = namespace_2f06d687::function_7387a40a("turret_markets1");
		level.var_1675f12a thread function_70da4f9b();
		level thread namespace_71e9cb84::function_74d6b22f("party_house_shutter", 1);
		level thread namespace_71e9cb84::function_74d6b22f("party_house_destruction", 1);
		level thread namespace_27a45d31::function_753a859(var_b04bc952);
		namespace_d0ef8521::function_74d6b22f("cp_level_biodomes_cloud_mountain");
		namespace_d0ef8521::function_74d6b22f("cp_waypoint_breadcrumb", namespace_14b42b8a::function_7922262b("breadcrumb_markets1"));
		level thread namespace_27a45d31::function_cc20e187("markets1");
		namespace_d7916d65::function_a2995f22();
		namespace_4dbf3ae3::function_42e87952("t_pre_turret1");
		level thread namespace_f1b4cbbc::function_fa2e45b8();
	}
	level.var_996e05eb = "friendly_spawns_markets_rpg";
	function_6ddd4fa4("fxanim_nursery");
	function_6ddd4fa4("fxanim_markets2");
	namespace_2f06d687::function_2b37a3c9("markets1_rpgguy", "script_noteworthy", &function_c008e227);
	namespace_4dbf3ae3::function_1ab5ebec("trig_markets_rpg");
	namespace_2f06d687::function_7387a40a("sp_markets_rpg_dome_break", &function_d999a915);
	namespace_d5067552::function_bae40a28("sm_markets_rpg_nest");
	level thread function_1711aacb();
	level thread function_e7229eec();
	wait(0.5);
	if(function_5b49d38c(level.var_1675f12a))
	{
		level.var_1675f12a thread function_ac861f96();
	}
	namespace_4dbf3ae3::function_1ab5ebec("t_zoo_tunnel");
	level notify("hash_4893df48");
	level namespace_1d795d47::function_be8adfb8("objective_markets_rpg");
}

/*
	Name: function_ac861f96
	Namespace: namespace_73fc8448
	Checksum: 0x1F13756E
	Offset: 0x4258
	Size: 0x13B
	Parameters: 0
	Flags: None
*/
function function_ac861f96()
{
	self endon("hash_128f8789");
	var_44dee395 = function_6ada35ba("turret_shutter_target", "targetname");
	self.var_c584775c = 0;
	self.var_255b9315 = 0;
	var_6f458912 = function_6ada35ba("market_turret_clip", "targetname");
	var_6f458912 function_dc8c8404();
	self thread namespace_37b990db::function_d104c596(var_44dee395, 3, (0, 0, 0), 0);
	self waittill("hash_4ab576df");
	self namespace_175490fb::function_a1f70a02("cybercom_hijack");
	var_44dee395 function_8bdea13c(64, 3);
	level namespace_ad23e503::function_74d6b22f("turret1");
	level namespace_cc27597::function_43718187("p7_fxanim_cp_biodomes_cafe_window_break_right_bundle");
}

/*
	Name: function_c008e227
	Namespace: namespace_73fc8448
	Checksum: 0x6ADEEB2C
	Offset: 0x43A0
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_c008e227()
{
	self waittill("hash_41d1aaf0");
	var_fedce7e9 = function_6ada35ba("market_rpg_clip", "targetname");
	var_fedce7e9 function_dc8c8404();
	level namespace_cc27597::function_43718187("p7_fxanim_cp_biodomes_cafe_window_break_left_bundle");
}

/*
	Name: function_1711aacb
	Namespace: namespace_73fc8448
	Checksum: 0x808EAA0D
	Offset: 0x4420
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_1711aacb()
{
	level endon("hash_c791a545");
	level endon("hash_4893df48");
	level namespace_ad23e503::function_1ab5ebec("turret1");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_take_out_that_turret_1", 1);
	level thread namespace_36171bd3::function_9c52a47e("floor_collapse");
	wait(6);
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_we_gotta_take_out_th_1");
	wait(8);
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_we_ain_t_movin_with_0");
	wait(10);
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_bring_down_that_turr_0");
}

/*
	Name: function_e7229eec
	Namespace: namespace_73fc8448
	Checksum: 0x2A4D7B25
	Offset: 0x4520
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_e7229eec()
{
	level endon("hash_4893df48");
	namespace_d5067552::function_72e3dd35("sm_markets_rpg_nest");
	level namespace_ad23e503::function_1ab5ebec("turret1_dead");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_area_clear_0");
}

/*
	Name: function_20e9cee4
	Namespace: namespace_73fc8448
	Checksum: 0x6633CFA0
	Offset: 0x4590
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function function_20e9cee4()
{
	level namespace_cc27597::function_5c143f59("p7_fxanim_cp_biodomes_cafe_window_break_left_bundle");
	level namespace_cc27597::function_5c143f59("p7_fxanim_cp_biodomes_cafe_window_break_right_bundle");
	var_a8a0e766 = function_6ada35ba("market_turret_clip", "targetname");
	var_a8a0e766 function_dc8c8404();
	var_d8861eed = function_6ada35ba("market_rpg_clip", "targetname");
	var_d8861eed function_dc8c8404();
}

/*
	Name: function_254ce088
	Namespace: namespace_73fc8448
	Checksum: 0xD8069FDB
	Offset: 0x4660
	Size: 0x183
	Parameters: 1
	Flags: None
*/
function function_254ce088(var_748c4478)
{
	var_197ca77b = function_6ada35ba(var_748c4478, "targetname");
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_197ca77b), var_748c4478 + "Dev Block strings are not supported");
	#/
	var_d4cf8d4e = namespace_14b42b8a::function_7922262b(var_197ca77b.var_b07228b6, "targetname");
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_d4cf8d4e), var_748c4478 + "Dev Block strings are not supported");
	#/
	if(isdefined(var_197ca77b) && isdefined(var_d4cf8d4e))
	{
		var_d246e703 = var_197ca77b.var_6ab6f4fd - VectorScale((0, 1, 0), 90);
		var_197ca77b namespace_5753664b::function_43718187("dirt_impact", var_197ca77b.var_722885f3, var_d246e703, 4);
		var_197ca77b function_a96a2721(var_d4cf8d4e.var_722885f3, 0.5);
		var_197ca77b function_c0b6566f(var_d4cf8d4e.var_6ab6f4fd, 0.5);
	}
}

/*
	Name: function_d999a915
	Namespace: namespace_73fc8448
	Checksum: 0xA834DD56
	Offset: 0x47F0
	Size: 0x163
	Parameters: 0
	Flags: None
*/
function function_d999a915()
{
	self waittill("hash_128f8789");
	var_9faa0c88 = function_c4d5ec1f("smaw");
	var_1987d48e = self function_d48f2ab3("tag_aim");
	var_6893fc99 = namespace_14b42b8a::function_7922262b("markets1_magic_rpg_dest", "targetname");
	var_3c91fda1 = function_87f3c622(var_9faa0c88, var_1987d48e + VectorScale((1, 1, 1), 5), var_6893fc99.var_722885f3);
	var_3c91fda1 waittill("hash_128f8789");
	function_5e09918e("cp_biodomes_rpg_dome_rumble", var_6893fc99.var_722885f3);
	level namespace_71e9cb84::function_74d6b22f("dome_glass_break", 1);
	var_1842712c = function_6ada35ba("rpg_dome_glass_clip", "targetname");
	var_1842712c function_dc8c8404();
}

/*
	Name: function_c80a0733
	Namespace: namespace_73fc8448
	Checksum: 0x68977B36
	Offset: 0x4960
	Size: 0x6B
	Parameters: 4
	Flags: None
*/
function function_c80a0733(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	namespace_27a45d31::function_ddb0eeea("objective_markets_rpg_done");
	namespace_d0ef8521::function_31cd1834("cp_waypoint_breadcrumb", namespace_14b42b8a::function_7922262b("breadcrumb_markets1"));
}

/*
	Name: function_bf0a0e50
	Namespace: namespace_73fc8448
	Checksum: 0xB22B0830
	Offset: 0x49D8
	Size: 0x43B
	Parameters: 2
	Flags: None
*/
function function_bf0a0e50(var_b04bc952, var_74cd64bc)
{
	namespace_27a45d31::function_ddb0eeea("objective_markets2_start_init");
	level thread function_11549ce5();
	level thread function_f5120a68();
	level thread function_4ef9f5db();
	level thread function_1c8db87();
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		namespace_84970cc4::function_7e64f710(function_99201f25("triggers_markets1", "script_noteworthy"));
		namespace_27a45d31::function_bff1a867(var_b04bc952);
		namespace_55d2f1be::function_cef897cf(var_b04bc952);
		level thread namespace_71e9cb84::function_74d6b22f("party_house_shutter", 1);
		level thread namespace_71e9cb84::function_74d6b22f("party_house_destruction", 1);
		level.var_1675f12a = namespace_2f06d687::function_7387a40a("turret_markets1");
		level.var_1675f12a function_2992720d();
		thread function_20e9cee4();
		level thread namespace_27a45d31::function_753a859(var_b04bc952);
		level thread namespace_27a45d31::function_cc20e187("markets1");
		namespace_d0ef8521::function_74d6b22f("cp_level_biodomes_cloud_mountain");
		namespace_d7916d65::function_a2995f22();
		level thread namespace_f1b4cbbc::function_fa2e45b8();
	}
	if(isdefined(level.var_8b9b1711))
	{
		level thread [[level.var_8b9b1711]]();
	}
	level thread namespace_27a45d31::function_cc20e187("markets2", 1);
	level thread namespace_27a45d31::function_cc20e187("warehouse", 1);
	level.var_996e05eb = "friendly_spawns_markets2_tunnel";
	level namespace_cc27597::function_c35e6aab("p7_fxanim_cp_biodomes_market_bridge_bundle");
	function_a7548a8f();
	namespace_27a45d31::function_a22e7052(0, "markets2_bridge_traversals", "script_noteworthy");
	function_9e3608e3("fxanim_party_house");
	function_6ddd4fa4("fxanim_warehouse");
	namespace_4dbf3ae3::function_1ab5ebec("trig_warehouse_entrance");
	namespace_27a45d31::function_1c1462ee("sm_markets1_combat0");
	namespace_27a45d31::function_1c1462ee("sm_markets1_combat1");
	namespace_27a45d31::function_1c1462ee("sm_markets1_combat2");
	namespace_27a45d31::function_1c1462ee("sm_markets1_combat3");
	namespace_27a45d31::function_1c1462ee("sm_markets_rpg_nest");
	if(function_5b49d38c(level.var_1675f12a))
	{
		level.var_1675f12a namespace_82b91a51::function_4b741fdc();
		level.var_1675f12a function_2992720d();
	}
	if(function_5b49d38c(level.var_f07376c1))
	{
		level.var_f07376c1 namespace_82b91a51::function_4b741fdc();
		level.var_f07376c1 function_2992720d();
	}
	level namespace_1d795d47::function_be8adfb8("objective_markets2_start");
}

/*
	Name: function_11549ce5
	Namespace: namespace_73fc8448
	Checksum: 0x16F59913
	Offset: 0x4E20
	Size: 0x1E3
	Parameters: 0
	Flags: None
*/
function function_11549ce5()
{
	namespace_d0ef8521::function_74d6b22f("cp_waypoint_breadcrumb", namespace_14b42b8a::function_7922262b("breadcrumb_markets2_pit"));
	namespace_4dbf3ae3::function_1ab5ebec("trig_markets2_combat2b");
	namespace_d0ef8521::function_31cd1834("cp_waypoint_breadcrumb", namespace_14b42b8a::function_7922262b("breadcrumb_markets2_pit"));
	namespace_d0ef8521::function_74d6b22f("cp_waypoint_breadcrumb", namespace_14b42b8a::function_7922262b("breadcrumb_markets2_arch"));
	namespace_4dbf3ae3::function_1ab5ebec("trig_markets2_turret_intro");
	namespace_d0ef8521::function_31cd1834("cp_waypoint_breadcrumb", namespace_14b42b8a::function_7922262b("breadcrumb_markets2_arch"));
	namespace_d0ef8521::function_74d6b22f("cp_waypoint_breadcrumb", namespace_14b42b8a::function_7922262b("breadcrumb_markets2_bridge"));
	namespace_4dbf3ae3::function_1ab5ebec("trig_markets2_combat3");
	namespace_d0ef8521::function_31cd1834("cp_waypoint_breadcrumb", namespace_14b42b8a::function_7922262b("breadcrumb_markets2_bridge"));
	namespace_d0ef8521::function_74d6b22f("cp_waypoint_breadcrumb", namespace_14b42b8a::function_7922262b("breadcrumb_markets2_end"));
	namespace_4dbf3ae3::function_1ab5ebec("trig_warehouse_entrance");
	namespace_d0ef8521::function_31cd1834("cp_waypoint_breadcrumb", namespace_14b42b8a::function_7922262b("breadcrumb_markets2_end"));
}

/*
	Name: function_a7548a8f
	Namespace: namespace_73fc8448
	Checksum: 0xCA2C98D1
	Offset: 0x5010
	Size: 0x1EB
	Parameters: 0
	Flags: None
*/
function function_a7548a8f()
{
	level thread function_eb44b3e8();
	namespace_4dbf3ae3::function_1ab5ebec("trig_markets2_hendricks_pit");
	namespace_4dbf3ae3::function_42e87952("trig_hendricks_color_markets2_pit");
	namespace_d5067552::function_bae40a28("sm_markets2_combat0");
	level.var_f07376c1 = namespace_2f06d687::function_7387a40a("turret_markets2");
	level.var_f07376c1 thread function_9e873c98();
	level.var_f07376c1 thread function_45ec4c38();
	level namespace_ad23e503::function_74d6b22f("turret2");
	namespace_4dbf3ae3::function_1ab5ebec("trig_markets2_combat2");
	level.var_2fd26037 notify("hash_fa1b759e");
	level.var_2fd26037 notify("hash_ce815b72");
	level notify("hash_79fccdae");
	level.var_2fd26037 thread function_802808a0();
	namespace_4dbf3ae3::function_1ab5ebec("trig_markets2_turret_intro");
	level.var_996e05eb = "friendly_spawns_markets2_waterfall";
	namespace_d5067552::function_bae40a28("sm_markets2_combat2c");
	namespace_d5067552::function_bae40a28("sm_markets2_warlord");
	level thread function_306c7d29();
	level.var_2fd26037 notify("hash_e0a6f6d8");
	level thread namespace_27a45d31::function_a1669688("markets2_retreaters", "info_volume_markets2_rear", 0, 0.1);
}

/*
	Name: function_d89d2fa0
	Namespace: namespace_73fc8448
	Checksum: 0x86E9A655
	Offset: 0x5208
	Size: 0xEB
	Parameters: 0
	Flags: None
*/
function function_d89d2fa0()
{
	self endon("hash_128f8789");
	self namespace_d84e54db::function_b4f5e3b9(1);
	self namespace_d84e54db::function_c9e45d52(1);
	self namespace_d84e54db::function_ceb883cd("coverIdleOnly", 1);
	level namespace_82b91a51::function_c9aa1ff("player_in_pit", 5);
	wait(function_72a94f05(0, 0.5));
	self namespace_d84e54db::function_ceb883cd("coverIdleOnly", 0);
	self namespace_d84e54db::function_b4f5e3b9(0);
	self namespace_d84e54db::function_c9e45d52(0);
}

/*
	Name: function_802808a0
	Namespace: namespace_73fc8448
	Checksum: 0x76AC64
	Offset: 0x5300
	Size: 0x223
	Parameters: 0
	Flags: None
*/
function function_802808a0()
{
	self notify("hash_ce815b72");
	level namespace_ad23e503::function_1ab5ebec("hendricks_markets2_arch_throw");
	var_e2b94783 = namespace_2f06d687::function_7387a40a("sp_arch_thrown_off", &function_8fcead5c, "markets2_hendricks_throw_arch", 1);
	level namespace_cc27597::function_43718187("markets2_hendricks_throw_arch", "targetname", function_84970cc4(self, var_e2b94783));
	var_dfcbd82b = function_b4cb3503("cover_hendricks_arch", "targetname");
	self function_169cc712(var_dfcbd82b);
	level namespace_ad23e503::function_1ab5ebec("hendricks_markets2_wallrun");
	var_87b6fa5f = namespace_2f06d687::function_7387a40a("sp_hendricks_wallrun_fodder", &function_8fcead5c, "cin_bio_04_03_market2_vign_wallrun", 0);
	level namespace_cc27597::function_43718187("cin_bio_04_03_market2_vign_wallrun", function_84970cc4(self, var_87b6fa5f));
	var_dfcbd82b = function_b4cb3503("nd_hendricks_window_after_wallrun", "targetname");
	self thread namespace_d84e54db::function_19e98020(var_dfcbd82b, 12, 1, "goal", 1);
	self waittill("hash_41d1aaf0");
	self function_e11ce512();
	self namespace_d84e54db::function_b4f5e3b9(0);
	self namespace_d84e54db::function_c9e45d52(0);
}

/*
	Name: function_8fcead5c
	Namespace: namespace_73fc8448
	Checksum: 0xF5A08A95
	Offset: 0x5530
	Size: 0x9B
	Parameters: 2
	Flags: None
*/
function function_8fcead5c(var_294306eb, var_5d5638aa)
{
	self.var_7dfaf62 = 8;
	self.var_a1ed1ed1 = 8;
	self namespace_d84e54db::function_c9e45d52(1);
	self waittill("hash_128f8789");
	if(var_5d5638aa)
	{
		level namespace_cc27597::function_fcf56ab5(var_294306eb, "targetname");
	}
	else
	{
		level namespace_cc27597::function_fcf56ab5(var_294306eb);
	}
}

/*
	Name: function_4eb79d4f
	Namespace: namespace_73fc8448
	Checksum: 0xF537FD18
	Offset: 0x55D8
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_4eb79d4f(var_a92ac318)
{
	level endon("hash_54ba776e");
	self waittill("hash_128f8789");
	wait(0.5);
	level namespace_cc27597::function_fcf56ab5(var_a92ac318, "targetname");
}

/*
	Name: function_eb44b3e8
	Namespace: namespace_73fc8448
	Checksum: 0x16E930C2
	Offset: 0x5630
	Size: 0x13B
	Parameters: 0
	Flags: None
*/
function function_eb44b3e8()
{
	if(function_27c72c1b())
	{
		return;
	}
	level namespace_71b8dba1::function_a463d127("kane_heads_up_got_54i_r_0");
	var_d65ac7cc = namespace_4dbf3ae3::function_1ab5ebec("trig_markets2_turret_intro");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_moving_up_gimme_som_0");
	if(var_d65ac7cc.var_b2ff4d87 == "path_arch")
	{
		level namespace_71b8dba1::function_13b3b16a("plyr_covering_go_0");
	}
	namespace_4dbf3ae3::function_1ab5ebec("trig_rpg_tower_vo");
	if(!level namespace_ad23e503::function_7922262b("markets2_tower_destroyed"))
	{
		level thread namespace_71b8dba1::function_13b3b16a("plyr_got_an_rpg_in_that_t_0");
	}
	level endon("hash_7ca50f0");
	wait(8);
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_we_gotta_take_out_th_1");
}

/*
	Name: function_b27f1679
	Namespace: namespace_73fc8448
	Checksum: 0x1A9CBA5B
	Offset: 0x5778
	Size: 0x7D
	Parameters: 1
	Flags: None
*/
function function_b27f1679(var_c77d2837)
{
	level notify("hash_ad26056f");
	for(var_c957f6b6 = 1; var_c957f6b6 <= 3; var_c957f6b6++)
	{
		var_c77d2837["sp_civilian_headpop" + var_c957f6b6].var_70a4ef5f = var_c77d2837["bomb_collar_" + var_c957f6b6];
	}
}

/*
	Name: function_2a1badc
	Namespace: namespace_73fc8448
	Checksum: 0xD3DDCF9F
	Offset: 0x5800
	Size: 0x1BB
	Parameters: 0
	Flags: None
*/
function function_2a1badc()
{
	self endon("hash_128f8789");
	self namespace_82b91a51::function_958c7633();
	self namespace_d84e54db::function_fd6c4374();
	level waittill("hash_ad26056f");
	self waittill("hash_49055167");
	self.var_70a4ef5f function_50ccee8d();
	function_5e09918e("cp_biodomes_headpop_rumble", self.var_722885f3);
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_7d15e2f8 = function_316422d1(var_5dc5e20a.var_722885f3, self.var_722885f3);
		if(var_7d15e2f8 < 160000 && self function_75754e3a(var_5dc5e20a))
		{
			var_5dc5e20a function_c3945cd5(var_5dc5e20a.var_3a90f16b * 0.1, self.var_722885f3);
		}
	}
	self namespace_82b91a51::function_4b741fdc();
	namespace_97d6aab7::function_65d0a3eb(self);
}

/*
	Name: function_1c8db87
	Namespace: namespace_73fc8448
	Checksum: 0xF250C391
	Offset: 0x59C8
	Size: 0x213
	Parameters: 0
	Flags: None
*/
function function_1c8db87()
{
	var_6f261beb = 6;
	var_80110940 = 4;
	var_72e94765 = [];
	for(var_314e0d12 = 1; var_314e0d12 <= var_6f261beb; var_314e0d12++)
	{
		var_83491dca = namespace_2f06d687::function_7387a40a("bound_civ_male");
		var_83491dca.var_b691b9cf = "prisoner_male_0" + var_314e0d12;
		var_83491dca.var_44a68a57 = &function_c1c247f6;
		if(!isdefined(var_72e94765))
		{
			var_72e94765 = [];
		}
		else if(!function_6e2770d8(var_72e94765))
		{
			var_72e94765 = function_84970cc4(var_72e94765);
		}
		var_72e94765[var_72e94765.size] = var_83491dca;
	}
	for(var_3b5f65f1 = 1; var_3b5f65f1 <= var_80110940; var_3b5f65f1++)
	{
		var_83491dca = namespace_2f06d687::function_7387a40a("bound_civ_female");
		var_83491dca.var_b691b9cf = "prisoner_female_0" + var_3b5f65f1;
		var_83491dca.var_44a68a57 = &function_c1c247f6;
		if(!isdefined(var_72e94765))
		{
			var_72e94765 = [];
		}
		else if(!function_6e2770d8(var_72e94765))
		{
			var_72e94765 = function_84970cc4(var_72e94765);
		}
		var_72e94765[var_72e94765.size] = var_83491dca;
	}
	level namespace_cc27597::function_43718187("cin_bio_04_01_market2_vign_caged", var_72e94765);
}

/*
	Name: function_4ef9f5db
	Namespace: namespace_73fc8448
	Checksum: 0xA63F8F86
	Offset: 0x5BE8
	Size: 0x1F9
	Parameters: 0
	Flags: None
*/
function function_4ef9f5db()
{
	var_64bc5989 = namespace_14b42b8a::function_7faf4c39("prisoner_aligns", "script_noteworthy");
	var_d71a37a5 = function_9b7fda5e("script_origin", (9944, 12957, -163));
	var_d71a37a5 function_c2931a36("amb_slaves_a");
	var_fd1cb20e = function_9b7fda5e("script_origin", (9895, 13170, -163));
	var_fd1cb20e function_c2931a36("amb_slaves_b");
	foreach(var_6df191e in var_64bc5989)
	{
		var_83491dca = namespace_2f06d687::function_7387a40a(var_6df191e.var_db7bb468);
		if(var_6df191e.var_b2ff4d87 == "male")
		{
			var_2422bd4b = "cin_bio_04_01_market2_vign_bound_civ01";
		}
		else
		{
			var_2422bd4b = "cin_bio_04_01_market2_vign_bound_civ02";
		}
		var_6df191e thread namespace_cc27597::function_43718187(var_2422bd4b, var_83491dca);
		wait(1);
		var_83491dca function_2992720d();
		wait(function_72a94f05(0, 2));
	}
}

/*
	Name: function_dbb91fcf
	Namespace: namespace_73fc8448
	Checksum: 0x3FBC8DBB
	Offset: 0x5DF0
	Size: 0xB1
	Parameters: 0
	Flags: None
*/
function function_dbb91fcf()
{
	var_64bc5989 = namespace_14b42b8a::function_7faf4c39("prisoner_aligns", "script_noteworthy");
	foreach(var_6df191e in var_64bc5989)
	{
		var_6df191e namespace_cc27597::function_fcf56ab5();
	}
}

/*
	Name: function_c1c247f6
	Namespace: namespace_73fc8448
	Checksum: 0xA5C85736
	Offset: 0x5EB0
	Size: 0x101
	Parameters: 15
	Flags: None
*/
function function_c1c247f6(var_fb19c839, var_677b3e78, var_74d0774f, var_6aee7fe9, var_394451d8, var_dfcc01fd, var_10e30246, var_a080d759, var_ffd2636b, var_46043680, var_a5cf2304, var_3bc96147, var_269779a, var_829b9480, var_eca96ec1)
{
	var_f6896234 = function_7f41c8e7(function_84970cc4("MOD_GRENADE", "MOD_GRENADE_SPLASH", "MOD_PROJECTILE", "MOD_PROJECTILE_SPLASH", "MOD_EXPLOSIVE"), var_394451d8);
	if(var_f6896234 && var_677b3e78 function_fe8201a3())
	{
		var_74d0774f = 0;
	}
	return var_74d0774f;
}

/*
	Name: function_45ec4c38
	Namespace: namespace_73fc8448
	Checksum: 0x1EB03D9
	Offset: 0x5FC0
	Size: 0x11B
	Parameters: 0
	Flags: None
*/
function function_45ec4c38()
{
	self endon("hash_128f8789");
	namespace_4dbf3ae3::function_1ab5ebec("trig_markets2_turret_intro");
	var_b6bd02bb = namespace_14b42b8a::function_7922262b("s_markets2_turret_target", "targetname");
	var_975c918d = namespace_82b91a51::function_b9fd52a4("tag_origin", var_b6bd02bb.var_722885f3, var_b6bd02bb.var_6ab6f4fd);
	level.var_f07376c1 namespace_37b990db::function_16045f9d(var_975c918d, (0, 0, 0), 0);
	var_975c918d function_d7e3960e(40, 3);
	var_975c918d function_fde61077(-200, 3);
	var_975c918d waittill("hash_a21db68a");
	level.var_f07376c1 namespace_37b990db::function_6b242f10(0);
}

/*
	Name: function_898e1184
	Namespace: namespace_73fc8448
	Checksum: 0x98641D4B
	Offset: 0x60E8
	Size: 0x1AB
	Parameters: 0
	Flags: None
*/
function function_898e1184()
{
	level thread function_226ac1e4();
	self waittill("hash_128f8789");
	var_9faa0c88 = function_c4d5ec1f("smaw");
	if(function_27c72c1b())
	{
		var_b31a6ddf = "tag_eye";
	}
	else
	{
		var_b31a6ddf = "tag_aim";
	}
	var_1987d48e = self function_d48f2ab3("tag_aim");
	var_b71ed4a2 = self.var_722885f3;
	var_2f7fd5db = self.var_7bf3c52a;
	if(var_2f7fd5db == function_c4d5ec1f("gadget_mrpukey"))
	{
		wait(2);
	}
	else
	{
		wait(0.5);
	}
	function_87f3c622(var_9faa0c88, var_1987d48e, var_b71ed4a2);
	function_5e09918e("cp_biodomes_rpg_tower_rumble", var_b71ed4a2);
	level notify("hash_f311a0e2");
	level namespace_ad23e503::function_74d6b22f("markets2_tower_destroyed");
	level namespace_cc27597::function_43718187("p7_fxanim_cp_biodomes_guard_tower_warehouse_bundle");
	namespace_769dc23f::function_b5cf7b68();
}

/*
	Name: function_226ac1e4
	Namespace: namespace_73fc8448
	Checksum: 0xF03FAE81
	Offset: 0x62A0
	Size: 0xD7
	Parameters: 0
	Flags: None
*/
function function_226ac1e4()
{
	namespace_4dbf3ae3::function_1ab5ebec("trig_markets2_rpg_tower_warning");
	var_9faa0c88 = function_c4d5ec1f("smaw");
	var_11fd5f3f = namespace_14b42b8a::function_7922262b("markets2_rpg_tower_warning_launch", "targetname");
	var_6beedec9 = namespace_14b42b8a::function_7922262b("markets2_rpg_tower_warning_target", "targetname");
	var_3c91fda1 = function_87f3c622(var_9faa0c88, var_11fd5f3f.var_722885f3, var_6beedec9.var_722885f3);
}

/*
	Name: function_f4ed98ea
	Namespace: namespace_73fc8448
	Checksum: 0xE260348C
	Offset: 0x6380
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function function_f4ed98ea()
{
	self endon("hash_128f8789");
	level endon("hash_f7452abe");
	self thread function_e143a359();
	self namespace_d84e54db::function_b4f5e3b9(1);
	var_9de10fe3 = function_b4cb3503(self.var_b07228b6, "targetname");
	if(isdefined(var_9de10fe3))
	{
		self namespace_d84e54db::function_19e98020(var_9de10fe3, 12, 0, "goal", 0, 1);
		self waittill("hash_41d1aaf0");
	}
	self namespace_d84e54db::function_b4f5e3b9(0);
}

/*
	Name: function_e143a359
	Namespace: namespace_73fc8448
	Checksum: 0x1FCF8403
	Offset: 0x6450
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_e143a359()
{
	self endon("hash_41d1aaf0");
	self endon("hash_128f8789");
	level waittill("hash_f7452abe");
	self namespace_d84e54db::function_b4f5e3b9(0);
	self function_e11ce512();
}

/*
	Name: function_23089a30
	Namespace: namespace_73fc8448
	Checksum: 0x24CF0FC1
	Offset: 0x64B0
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_23089a30()
{
	self endon("hash_128f8789");
	self namespace_d84e54db::function_ceb883cd("move_mode", "rusher");
}

/*
	Name: function_f5120a68
	Namespace: namespace_73fc8448
	Checksum: 0x3415CD27
	Offset: 0x64F0
	Size: 0x31B
	Parameters: 0
	Flags: None
*/
function function_f5120a68()
{
	level endon("hash_3fe031c0");
	namespace_4dbf3ae3::function_1ab5ebec("trig_markets2_turret_intro");
	var_b31ff87c = namespace_2f06d687::function_7387a40a("sp_bridge_controller");
	if(function_5b49d38c(var_b31ff87c))
	{
		level thread namespace_cc27597::function_43718187("cin_bio_04_01_market2_vign_bridge_destroy", var_b31ff87c);
		level thread namespace_82b91a51::function_6729b6ba(15, "retract_bridge");
		level namespace_82b91a51::function_f20332a2(level, "retract_bridge", var_b31ff87c, "death");
		if(level namespace_cc27597::function_367f8966("cin_bio_04_01_market2_vign_bridge_destroy"))
		{
			level namespace_cc27597::function_fcf56ab5("cin_bio_04_01_market2_vign_bridge_destroy");
		}
	}
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_biodomes_market_bridge_bundle");
	var_97268a8e = namespace_14b42b8a::function_7922262b("breadcrumb_markets2_bridge", "targetname");
	if(isdefined(var_97268a8e))
	{
		function_5e09918e("cp_biodomes_markets2_bridge_rumble", var_97268a8e.var_722885f3);
		foreach(var_5dc5e20a in level.var_9b1393e7)
		{
			var_7d15e2f8 = function_316422d1(var_5dc5e20a.var_722885f3, var_97268a8e.var_722885f3);
			if(var_7d15e2f8 < 160000)
			{
				var_5dc5e20a function_c3945cd5(var_5dc5e20a.var_3a90f16b * 0.1, var_97268a8e.var_722885f3);
			}
		}
	}
	var_29c45e93 = function_6ada35ba("markets2_bridge_collision", "targetname");
	if(isdefined(var_29c45e93))
	{
		var_29c45e93 function_422037f5();
		var_29c45e93 function_14c24d9d();
	}
	level notify("hash_f7452abe");
	namespace_27a45d31::function_a22e7052(1, "markets2_bridge_traversals", "script_noteworthy");
}

/*
	Name: function_306c7d29
	Namespace: namespace_73fc8448
	Checksum: 0xFB16F445
	Offset: 0x6818
	Size: 0xFB
	Parameters: 0
	Flags: None
*/
function function_306c7d29()
{
	namespace_4dbf3ae3::function_1ab5ebec("trig_markets2_robot_colors_end");
	level.var_996e05eb = "friendly_spawns_markets2_warlord";
	var_489b2980 = namespace_14b42b8a::function_7922262b("phalanx_markets2_start").var_722885f3;
	var_491bc153 = namespace_14b42b8a::function_7922262b("phalanx_markets2_end").var_722885f3;
	var_1b6ee6b2 = 4;
	if(level.var_2395e945.size >= 2)
	{
		var_1b6ee6b2 = 6;
	}
	function_9b385ca5();
	var_2f359655 = var_3bc9e3b7;
	function_e6cab0ff(var_2f359655, "phanalx_wedge", var_489b2980, var_491bc153, 2);
}

/*
	Name: function_ff2bafac
	Namespace: namespace_73fc8448
	Checksum: 0xF658412
	Offset: 0x6920
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_ff2bafac()
{
	self endon("hash_128f8789");
	self function_c7708f99("warlords");
	function_49e95dc0("heroes", "warlords", -9999);
	self namespace_27a45d31::function_f61c0df8("node_warlord_markets2_preferred", 1, 2);
}

/*
	Name: function_4fd7cfe6
	Namespace: namespace_73fc8448
	Checksum: 0x3EC3E05C
	Offset: 0x69A8
	Size: 0x49
	Parameters: 4
	Flags: None
*/
function function_4fd7cfe6(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	namespace_27a45d31::function_ddb0eeea("objective_markets2_start_done");
	level notify("hash_3fe031c0");
}

/*
	Name: function_70da4f9b
	Namespace: namespace_73fc8448
	Checksum: 0x29EC344D
	Offset: 0x6A00
	Size: 0x10B
	Parameters: 0
	Flags: None
*/
function function_70da4f9b()
{
	self.var_2ddc2ef9 = 0;
	self.var_38c1e4c8 = 0;
	level.var_1675f12a.var_c584775c = 1;
	level.var_1675f12a.var_255b9315 = 1;
	self namespace_175490fb::function_59965309("cybercom_hijack");
	self.var_caae374e = "floor_collapse";
	level.var_1675f12a namespace_37b990db::function_6bfda7b(1, 0);
	self waittill("hash_128f8789");
	level namespace_ad23e503::function_74d6b22f("turret1_dead");
	var_dfcbd82b = function_b4cb3503("cover_hendricks_headpopper", "targetname");
	level.var_2fd26037 function_169cc712(var_dfcbd82b, 1);
}

/*
	Name: function_9e873c98
	Namespace: namespace_73fc8448
	Checksum: 0x5776A114
	Offset: 0x6B18
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_9e873c98()
{
	self waittill("hash_128f8789");
	level namespace_ad23e503::function_74d6b22f("turret2_dead");
	namespace_9f824288::function_5d2cdd99();
}

