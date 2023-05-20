#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_laststand;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_sing_blackstation;
#using scripts\cp\cp_mi_sing_blackstation_accolades;
#using scripts\cp\cp_mi_sing_blackstation_cross_debris;
#using scripts\cp\cp_mi_sing_blackstation_sound;
#using scripts\cp\cp_mi_sing_blackstation_utility;
#using scripts\cp\cybercom\_cybercom;
#using scripts\cp\cybercom\_cybercom_gadget_firefly;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_save;
#using scripts\shared\ai\archetype_utility;
#using scripts\shared\ai\archetype_warlord_interface;
#using scripts\shared\ai\phalanx;
#using scripts\shared\ai_shared;
#using scripts\shared\animation_shared;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\fx_shared;
#using scripts\shared\laststand_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\vehicleriders_shared;

#namespace namespace_933eb669;

/*
	Name: function_23a0cc93
	Namespace: namespace_933eb669
	Checksum: 0x1E0CD776
	Offset: 0x10D8
	Size: 0x113
	Parameters: 2
	Flags: None
*/
function function_23a0cc93(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		namespace_79e1cd97::function_bff1a867("objective_police_station");
		level function_a7bb8a82();
		namespace_d7916d65::function_a2995f22();
	}
	level thread namespace_79e1cd97::function_6778ea09("light_ne");
	level thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_blackstation_police_station_ceiling_tiles_bundle");
	namespace_84970cc4::function_966ecb29(level.var_9b1393e7, &namespace_71e9cb84::function_e9c3870b, "toggle_rain_sprite", 1);
	function_d4f82627("set", "cp_mi_sing_blackstation_objective_kane_intro");
	function_fa216142();
}

/*
	Name: function_88d892b9
	Namespace: namespace_933eb669
	Checksum: 0xB3E2FC2F
	Offset: 0x11F8
	Size: 0xA3
	Parameters: 4
	Flags: None
*/
function function_88d892b9(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	level namespace_cc27597::function_c35e6aab("p7_fxanim_cp_blackstation_apartment_collapse_bundle");
	namespace_d0ef8521::function_74d6b22f("cp_level_blackstation_goto_comm_relay");
	namespace_d0ef8521::function_50ccee8d("cp_level_blackstation_goto_comm_relay");
	namespace_d0ef8521::function_50ccee8d("cp_level_blackstation_qzone");
	function_6ddd4fa4("collapse_frogger_water");
}

/*
	Name: function_fa216142
	Namespace: namespace_933eb669
	Checksum: 0x59AA9A32
	Offset: 0x12A8
	Size: 0x2B3
	Parameters: 0
	Flags: None
*/
function function_fa216142()
{
	level.var_2fd26037 thread function_7f3763ee();
	level.var_d1cabfc = 0;
	level thread function_a331bab9();
	level thread function_2397a7b2();
	level thread function_1932762c();
	level thread function_e2038b3();
	level thread function_d87a714f();
	level thread function_edabcebb();
	level thread function_f832655c();
	level thread function_2afc85c();
	level thread function_7902424c();
	level thread function_d7f282ac();
	level thread namespace_79e1cd97::function_90db9f9c();
	level thread function_e27b9e3c();
	level thread function_656de5b5();
	level thread function_f6f7ab3d();
	level thread function_969d668a();
	level thread function_37170d4a();
	level thread namespace_23567e72::function_26aa602b();
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a thread function_5723cc6();
		var_5dc5e20a thread namespace_79e1cd97::function_d870e0("trig_police_station_lobby_in_position");
		var_5dc5e20a thread namespace_79e1cd97::function_d870e0("trig_spawn_upstairs_intro");
	}
	namespace_2f06d687::function_2b37a3c9("police_station_warlord", "script_noteworthy", &function_b45ce54a);
}

/*
	Name: function_5723cc6
	Namespace: namespace_933eb669
	Checksum: 0xF8FE164
	Offset: 0x1568
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_5723cc6()
{
	self endon("hash_128f8789");
	level endon("hash_39e22858");
	level namespace_ad23e503::function_1ab5ebec("flag_waypoint_police_station01");
	self waittill("hash_aa1618b0");
	level namespace_ad23e503::function_74d6b22f("flag_lobby_engaged");
}

/*
	Name: function_969d668a
	Namespace: namespace_933eb669
	Checksum: 0xC3AA4C52
	Offset: 0x15D0
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_969d668a()
{
	level namespace_ad23e503::function_1ab5ebec("flag_waypoint_police_station03");
	namespace_76d95162::function_d9f49fba(0);
	level namespace_ad23e503::function_1ab5ebec("flag_kane_intro_complete");
	namespace_76d95162::function_d9f49fba(1);
}

/*
	Name: function_edabcebb
	Namespace: namespace_933eb669
	Checksum: 0x1E182C0D
	Offset: 0x1650
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_edabcebb()
{
	level namespace_ad23e503::function_1ab5ebec("flag_enter_police_station");
	level thread namespace_d0ef8521::function_45d1556("police_station_breadcrumb");
}

/*
	Name: function_2397a7b2
	Namespace: namespace_933eb669
	Checksum: 0x809B9617
	Offset: 0x16A0
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_2397a7b2()
{
	namespace_4dbf3ae3::function_1ab5ebec("trig_police__station_group03", undefined, undefined, 0);
	var_56b381f2 = function_6ada35ba("police_station_warlord", "targetname");
	function_5e09918e("cp_blackstation_rumble_breach", var_56b381f2.var_722885f3);
	function_37cbcf1a("evt_kane_explosion", (0, 0, 0));
}

/*
	Name: function_1932762c
	Namespace: namespace_933eb669
	Checksum: 0x1AA98B2F
	Offset: 0x1740
	Size: 0x173
	Parameters: 0
	Flags: None
*/
function function_1932762c()
{
	level namespace_ad23e503::function_1ab5ebec("flag_lobby_setup");
	level thread namespace_4297372::function_bed0eaad();
	level namespace_ad23e503::function_1ab5ebec("flag_police_station_hendricks_cqb");
	if(!level namespace_ad23e503::function_7922262b("flag_lobby_engaged"))
	{
		level.var_2fd26037 thread namespace_71b8dba1::function_81141386("hend_quiet_0");
	}
	level namespace_ad23e503::function_1ab5ebec("vo_hendricks_first");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_moving_to_first_floo_0");
	namespace_4dbf3ae3::function_1ab5ebec("hend_moving_to_second", undefined, undefined, 0);
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_moving_to_second_flo_0");
	namespace_4dbf3ae3::function_1ab5ebec("hend_moving_to_third", undefined, undefined, 0);
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_moving_to_third_floo_0");
	level thread namespace_4297372::function_973b77f9();
}

/*
	Name: function_e2038b3
	Namespace: namespace_933eb669
	Checksum: 0x5A91DA16
	Offset: 0x18C0
	Size: 0xF1
	Parameters: 0
	Flags: None
*/
function function_e2038b3()
{
	level endon("hash_262a14ee");
	level namespace_ad23e503::function_1ab5ebec("ps_enter_vo");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_hostiles_above_and_0");
	level namespace_ad23e503::function_1ab5ebec("ps_upstairs_intro");
	if(!namespace_ad23e503::function_7922262b("flag_police_station_defend"))
	{
		level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_top_floor_0", 1);
	}
	level namespace_ad23e503::function_1ab5ebec("flag_police_station_defend");
	while(function_b8494651("axis").size)
	{
		wait(1);
	}
}

/*
	Name: function_d87a714f
	Namespace: namespace_933eb669
	Checksum: 0xD4E252F1
	Offset: 0x19C0
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_d87a714f()
{
	namespace_4dbf3ae3::function_1ab5ebec("trigger_riot");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_bastards_have_riot_s_0", 1);
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_hit_em_with_some_fr_0", 0.5);
}

/*
	Name: function_a7bb8a82
	Namespace: namespace_933eb669
	Checksum: 0x3666AF6B
	Offset: 0x1A38
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_a7bb8a82()
{
	namespace_2f06d687::function_22356ba7("police_station_exterior_group", &function_4fa3ec81);
	namespace_2f06d687::function_22356ba7("police_station_exterior_robot", &function_4fa3ec81);
	level function_8b31ae9b();
}

/*
	Name: function_a331bab9
	Namespace: namespace_933eb669
	Checksum: 0xC5374D33
	Offset: 0x1AB0
	Size: 0x453
	Parameters: 0
	Flags: None
*/
function function_a331bab9()
{
	level namespace_ad23e503::function_1ab5ebec("flag_lobby_setup");
	level.var_2fd26037 namespace_d84e54db::function_b4f5e3b9(1);
	level.var_2fd26037 namespace_d84e54db::function_c9e45d52(1);
	level namespace_ad23e503::function_1ab5ebec("flag_police_station_hendricks_cqb");
	if(!level namespace_ad23e503::function_7922262b("flag_lobby_engaged"))
	{
		level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_i_see_you_beat_h_0", 0.5);
		var_77d29eae = 0;
		for(var_c957f6b6 = 0; var_c957f6b6 < level.var_2395e945.size; var_c957f6b6++)
		{
			if(!var_77d29eae)
			{
				foreach(var_2eecd77a in level.var_4eef455c)
				{
					if(function_5b49d38c(var_2eecd77a) && var_2eecd77a.var_caae374e === "police_station_gunner_target_01")
					{
						var_2eecd77a thread function_bd78d653();
						var_2eecd77a namespace_71e9cb84::function_74d6b22f("kill_target_keyline", level.var_2395e945[var_c957f6b6] function_c7f3ce11() + 1);
						var_dd079248 = [];
						namespace_84970cc4::function_69554b3e(var_dd079248, var_2eecd77a);
						level.var_4eef455c = namespace_84970cc4::function_d010fbb9(level.var_4eef455c, var_dd079248);
						var_77d29eae = 1;
					}
				}
				continue;
			}
			if(isdefined(level.var_4eef455c[var_c957f6b6]) && level.var_4eef455c[var_c957f6b6].var_caae374e != "police_station_gunner_target_02")
			{
				level.var_4eef455c[var_c957f6b6] namespace_71e9cb84::function_74d6b22f("kill_target_keyline", level.var_2395e945[var_c957f6b6] function_c7f3ce11() + 1);
				function_6c668988(level.var_4eef455c, var_c957f6b6, 1);
			}
		}
		level namespace_ad23e503::function_74d6b22f("flag_lobby_ready_to_engage");
		level namespace_ad23e503::function_d266a8b4(2, "flag_lobby_engaged");
		wait(0.5);
		level.var_2fd26037 namespace_d84e54db::function_b4f5e3b9(0);
		level.var_2fd26037 namespace_d84e54db::function_c9e45d52(0);
	}
	else
	{
		level.var_2fd26037 namespace_d84e54db::function_b4f5e3b9(0);
		level.var_2fd26037 namespace_d84e54db::function_c9e45d52(0);
		level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_they_re_onto_us_se_0");
	}
	level namespace_ad23e503::function_1ab5ebec("hendricks_subway_exit");
	level.var_2fd26037 function_cbbb2fea();
	namespace_2f06d687::function_371d219c("lobby_enemies", 5);
	level namespace_ad23e503::function_74d6b22f("approach_ps_entrance");
}

/*
	Name: function_693c6a46
	Namespace: namespace_933eb669
	Checksum: 0x16EAB09E
	Offset: 0x1F10
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_693c6a46()
{
	self waittill("hash_128f8789");
	if(!isdefined(level.var_d1cabfc))
	{
		level.var_d1cabfc = 0;
	}
	level.var_d1cabfc++;
	if(level.var_d1cabfc > 2)
	{
		level namespace_ad23e503::function_74d6b22f("approach_ps_entrance");
		wait(1);
		level namespace_ad23e503::function_74d6b22f("flag_enter_police_station");
	}
}

/*
	Name: function_2c3b5e41
	Namespace: namespace_933eb669
	Checksum: 0xA0790630
	Offset: 0x1F98
	Size: 0x4F
	Parameters: 0
	Flags: None
*/
function function_2c3b5e41()
{
	self endon("hash_128f8789");
	while(1)
	{
		level waittill("hash_61df3d1c", var_284c5bbb);
		self function_76aa5b30(var_284c5bbb, 1);
	}
}

/*
	Name: function_7f3763ee
	Namespace: namespace_933eb669
	Checksum: 0xF61B642
	Offset: 0x1FF0
	Size: 0x14B
	Parameters: 0
	Flags: None
*/
function function_7f3763ee()
{
	level.var_2fd26037 namespace_d84e54db::function_ceb883cd("cqb", 1);
	level namespace_ad23e503::function_1ab5ebec("approach_ps_entrance");
	namespace_4dbf3ae3::function_42e87952("triggercolor_ps_entrance");
	level namespace_ad23e503::function_1ab5ebec("flag_enter_police_station");
	level.var_2fd26037 namespace_d84e54db::function_ceb883cd("cqb", 0);
	level namespace_ad23e503::function_1ab5ebec("police_station_enter");
	namespace_4dbf3ae3::function_42e87952("trig_hendricks_move_into_police_station", undefined, undefined, 0);
	level namespace_ad23e503::function_1ab5ebec("ps_regroup");
	namespace_4dbf3ae3::function_42e87952("triggercolor_regroup");
	namespace_4dbf3ae3::function_1ab5ebec("trigger_riot");
	namespace_d5067552::function_bae40a28("police_station_group03_sm");
}

/*
	Name: function_cbbb2fea
	Namespace: namespace_933eb669
	Checksum: 0xF972F052
	Offset: 0x2148
	Size: 0x16B
	Parameters: 0
	Flags: None
*/
function function_cbbb2fea()
{
	var_ea49a5c9 = function_6ada35ba("police_station_gunner_target_02", "script_noteworthy", 1);
	if(function_5b49d38c(var_ea49a5c9))
	{
		var_377a9c22 = var_ea49a5c9;
		break;
	}
	foreach(var_2eecd77a in level.var_4eef455c)
	{
		if(function_5b49d38c(var_2eecd77a))
		{
			var_377a9c22 = var_2eecd77a;
			break;
		}
	}
	self namespace_79e1cd97::function_4f96504c(var_377a9c22);
	if(function_5b49d38c(var_377a9c22))
	{
		self namespace_175490fb::function_d240e350("cybercom_fireflyswarm", var_377a9c22, 0, 1);
	}
	level.var_2fd26037 namespace_d84e54db::function_b4f5e3b9(0);
}

/*
	Name: function_bd78d653
	Namespace: namespace_933eb669
	Checksum: 0x9DE6489C
	Offset: 0x22C0
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_bd78d653()
{
	level endon("hash_d9295e03");
	self waittill("hash_128f8789");
	wait(0.5);
	level namespace_71b8dba1::function_13b3b16a("plyr_kill_confirmed_0");
}

/*
	Name: function_e27b9e3c
	Namespace: namespace_933eb669
	Checksum: 0xADC6256C
	Offset: 0x2310
	Size: 0x111
	Parameters: 0
	Flags: None
*/
function function_e27b9e3c()
{
	level namespace_ad23e503::function_1ab5ebec("ps_upstairs_intro");
	var_24bbf032 = function_b8494651("axis");
	var_24bbf032 = function_57efbe1(var_24bbf032, level.var_2fd26037.var_722885f3);
	for(var_c957f6b6 = 0; var_c957f6b6 < var_24bbf032.size; var_c957f6b6++)
	{
		if(function_5b49d38c(var_24bbf032[var_c957f6b6]))
		{
			level.var_2fd26037 thread namespace_79e1cd97::function_4f96504c(var_24bbf032[var_c957f6b6]);
			level.var_2fd26037 namespace_175490fb::function_d240e350("cybercom_fireflyswarm", var_24bbf032[var_c957f6b6], 0, 1);
			break;
		}
	}
}

/*
	Name: function_76021c7d
	Namespace: namespace_933eb669
	Checksum: 0x503754C3
	Offset: 0x2430
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_76021c7d()
{
	self endon("hash_128f8789");
	self namespace_d84e54db::function_99e190ff(function_b4cb3503("lobby_patrol_start_point", "targetname"));
	level namespace_ad23e503::function_1ab5ebec("flag_lobby_engaged");
	self function_86408aa8(function_6ada35ba("lobby_defend_volume_01", "targetname"));
}

/*
	Name: function_8b31ae9b
	Namespace: namespace_933eb669
	Checksum: 0xF4CA6A8F
	Offset: 0x24D0
	Size: 0xB5
	Parameters: 0
	Flags: None
*/
function function_8b31ae9b()
{
	namespace_2f06d687::function_2b37a3c9("turret_gunner", "targetname", &function_e355fe3e);
	for(var_c957f6b6 = 1; var_c957f6b6 < 3; var_c957f6b6++)
	{
		var_b8f9a884 = namespace_96fa87af::function_7387a40a("veh_turret_0" + var_c957f6b6);
		var_b8f9a884 namespace_96fa87af::function_3762fc40();
		var_b8f9a884 thread function_661dadea();
	}
}

/*
	Name: function_e355fe3e
	Namespace: namespace_933eb669
	Checksum: 0xC2AC7401
	Offset: 0x2590
	Size: 0xC3
	Parameters: 1
	Flags: None
*/
function function_e355fe3e(var_b8f9a884)
{
	self endon("hash_128f8789");
	self namespace_d84e54db::function_c9e45d52(1);
	self namespace_d84e54db::function_b4f5e3b9(1);
	namespace_84970cc4::function_69554b3e(level.var_4eef455c, self);
	self thread function_dbf996a();
	level namespace_ad23e503::function_1ab5ebec("flag_lobby_engaged");
	self namespace_d84e54db::function_c9e45d52(0);
	self namespace_d84e54db::function_b4f5e3b9(0);
}

/*
	Name: function_661dadea
	Namespace: namespace_933eb669
	Checksum: 0xF51E1230
	Offset: 0x2660
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_661dadea()
{
	self endon("hash_128f8789");
	level namespace_ad23e503::function_1ab5ebec("flag_lobby_engaged");
	wait(2);
	var_dfb53de7 = self namespace_96fa87af::function_ad4ec07a("gunner1");
	if(isdefined(var_dfb53de7) && function_5b49d38c(var_dfb53de7))
	{
		self namespace_37b990db::function_bae40a28(1, 1);
	}
}

/*
	Name: function_4fa3ec81
	Namespace: namespace_933eb669
	Checksum: 0xB593B1B2
	Offset: 0x2708
	Size: 0x2EB
	Parameters: 0
	Flags: None
*/
function function_4fa3ec81()
{
	self endon("hash_128f8789");
	self thread function_b1a1cd4d();
	self thread function_dbf996a();
	if(self.var_170527fb == "police_station_exterior_robot_ai")
	{
		self thread function_693c6a46();
		self thread function_2c3b5e41();
	}
	self namespace_d84e54db::function_b4f5e3b9(1);
	self namespace_d84e54db::function_c9e45d52(1);
	level namespace_71e9cb84::function_74d6b22f("sndStationWalla", 1);
	namespace_84970cc4::function_69554b3e(level.var_4eef455c, self);
	if(self.var_caae374e === "lobby_patrol")
	{
		self thread function_76021c7d();
	}
	level namespace_ad23e503::function_1ab5ebec("flag_lobby_engaged");
	level namespace_71e9cb84::function_74d6b22f("sndStationWalla", 0);
	self.var_2a373326 = self.var_98207841;
	self namespace_d84e54db::function_c9e45d52(0);
	self.var_7dfaf62 = 2048;
	if(self.var_170527fb == "police_station_exterior_robot_ai")
	{
		self namespace_d84e54db::function_b4f5e3b9(0);
		self namespace_d84e54db::function_ceb883cd("move_mode", "rusher");
	}
	else
	{
		wait(function_72a94f05(0.3, 1.3));
		self namespace_d84e54db::function_b4f5e3b9(0);
	}
	namespace_2f06d687::function_371d219c("lobby_enemies", 9);
	if(self.var_caae374e === "lobby_group_01")
	{
		wait(function_26299103(2));
		self function_86408aa8(function_6ada35ba("lobby_defend_volume_01", "targetname"));
	}
	else if(self.var_caae374e === "lobby_group_02")
	{
		wait(function_26299103(2));
		self function_86408aa8(function_6ada35ba("lobby_defend_volume_02", "targetname"));
	}
}

/*
	Name: function_b1a1cd4d
	Namespace: namespace_933eb669
	Checksum: 0x89F8AF09
	Offset: 0x2A00
	Size: 0xF7
	Parameters: 0
	Flags: None
*/
function function_b1a1cd4d()
{
	self endon("hash_128f8789");
	level endon("hash_39e22858");
	self.var_98207841 = self.var_2a373326;
	self.var_2a373326 = 160000;
	while(1)
	{
		foreach(var_5dc5e20a in level.var_9b1393e7)
		{
			if(self function_75754e3a(var_5dc5e20a))
			{
				level namespace_ad23e503::function_74d6b22f("flag_lobby_engaged");
			}
		}
		wait(0.3);
	}
}

/*
	Name: function_dbf996a
	Namespace: namespace_933eb669
	Checksum: 0x7BF44817
	Offset: 0x2B00
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_dbf996a()
{
	self namespace_82b91a51::function_5b7e3888("damage", "bulletwhizby", "grenadedanger", "enemy", "projectile_impact", "cybercom_action");
	level namespace_ad23e503::function_74d6b22f("flag_lobby_engaged");
}

/*
	Name: function_2afc85c
	Namespace: namespace_933eb669
	Checksum: 0xE7BB3A9
	Offset: 0x2B78
	Size: 0x1A3
	Parameters: 0
	Flags: None
*/
function function_2afc85c()
{
	namespace_4dbf3ae3::function_1ab5ebec("trig_kane_intro");
	level namespace_71e9cb84::function_74d6b22f("flotsam", 0);
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		if(var_5dc5e20a namespace_564407fb::function_38a9aff8())
		{
			var_5dc5e20a namespace_564407fb::function_d397bc5c(var_5dc5e20a);
		}
	}
	var_60a2aad6 = function_b8494651("axis");
	foreach(var_d84e54db in var_60a2aad6)
	{
		var_d84e54db function_dc8c8404();
	}
	namespace_1d795d47::function_be8adfb8("objective_police_station");
}

/*
	Name: function_f832655c
	Namespace: namespace_933eb669
	Checksum: 0x4B4B9AF5
	Offset: 0x2D28
	Size: 0x13D
	Parameters: 0
	Flags: None
*/
function function_f832655c()
{
	var_99450f8a = function_99201f25("script_worklight", "targetname");
	for(var_c957f6b6 = 0; var_c957f6b6 < var_99450f8a.size; var_c957f6b6++)
	{
		var_99450f8a[var_c957f6b6] namespace_5753664b::function_43718187("worklight", var_99450f8a[var_c957f6b6].var_722885f3, var_99450f8a[var_c957f6b6].var_6ab6f4fd, "fx_stop", 1, "tag_origin");
		var_99450f8a[var_c957f6b6] namespace_5753664b::function_43718187("worklight_rays", var_99450f8a[var_c957f6b6].var_722885f3, var_99450f8a[var_c957f6b6].var_6ab6f4fd, "fx_stop", 1, "tag_origin");
		var_99450f8a[var_c957f6b6] thread function_d8a1308b();
	}
}

/*
	Name: function_d8a1308b
	Namespace: namespace_933eb669
	Checksum: 0x7C857B46
	Offset: 0x2E70
	Size: 0x89
	Parameters: 0
	Flags: None
*/
function function_d8a1308b()
{
	var_2eb20475 = function_6ada35ba(self.var_b07228b6, "targetname");
	if(isdefined(var_2eb20475))
	{
		var_2eb20475 namespace_4dbf3ae3::function_1ab5ebec();
	}
	level thread namespace_cc27597::function_43718187(var_2eb20475.var_b07228b6, "targetname");
	self notify("hash_aae6938e");
}

/*
	Name: function_d7f282ac
	Namespace: namespace_933eb669
	Checksum: 0x85BA1F3E
	Offset: 0x2F08
	Size: 0xDB
	Parameters: 0
	Flags: None
*/
function function_d7f282ac()
{
	namespace_2f06d687::function_2b37a3c9("police_groundfloor01", "targetname", &function_5eb730ee);
	namespace_2f06d687::function_2b37a3c9("police_upstairs01", "targetname", &function_5eb730ee);
	namespace_2f06d687::function_2b37a3c9("police_station_group03", "targetname", &function_5eb730ee);
	namespace_4dbf3ae3::function_1ab5ebec("trigger_police_interior");
	namespace_d5067552::function_bae40a28("police_groundfloor01_sm");
	namespace_d5067552::function_bae40a28("police_station_group01_sm");
}

/*
	Name: function_5eb730ee
	Namespace: namespace_933eb669
	Checksum: 0xF5CC1493
	Offset: 0x2FF0
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_5eb730ee()
{
	self endon("hash_128f8789");
	self.var_7dfaf62 = 32;
	self waittill("hash_41d1aaf0");
	self.var_7dfaf62 = 700;
}

/*
	Name: function_7902424c
	Namespace: namespace_933eb669
	Checksum: 0x774B3D66
	Offset: 0x3030
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_7902424c()
{
	level namespace_ad23e503::function_1ab5ebec("ps_enter_vo");
	namespace_d5067552::function_bae40a28("police_upstairs01_sm", 1);
	level namespace_4dbf3ae3::function_1ab5ebec("trig_spawn_upstairs_intro", undefined, undefined, 0);
	if(!namespace_ad23e503::function_7922262b("flag_police_station_defend"))
	{
		namespace_2f06d687::function_22356ba7("police_upstairs02");
	}
}

/*
	Name: function_b45ce54a
	Namespace: namespace_933eb669
	Checksum: 0x7E8BDCE9
	Offset: 0x30D0
	Size: 0x11B
	Parameters: 0
	Flags: None
*/
function function_b45ce54a()
{
	var_eaf20b66 = function_fe0cfd2e("warlord_node", "script_noteworthy");
	foreach(var_90ca1fdd in var_eaf20b66)
	{
		self namespace_69ee7109::function_da308a83(var_90ca1fdd.var_722885f3, 5000, 10000);
	}
	var_5721137f = function_b4cb3503("warlord_police_station_node", "targetname");
	if(isdefined(var_5721137f))
	{
		self function_169cc712(var_5721137f);
	}
}

/*
	Name: function_656de5b5
	Namespace: namespace_933eb669
	Checksum: 0xA72C4BD1
	Offset: 0x31F8
	Size: 0x14B
	Parameters: 0
	Flags: None
*/
function function_656de5b5()
{
	namespace_ad23e503::function_1ab5ebec("flag_enter_cell_block");
	var_f92a03e7 = namespace_4dbf3ae3::function_1ab5ebec("trig_cellblock_ambush");
	if(var_f92a03e7.var_aef176e7 == level.var_2fd26037)
	{
		var_90e20a06 = function_6ada35ba("cellblock_ambush_spawn_01", "targetname");
		var_cbc84fe3 = var_90e20a06 namespace_2f06d687::function_9b7fda5e(1);
		var_cbc84fe3 function_f8eb4eb0();
	}
	else
	{
		var_90e20a06 = function_6ada35ba("cellblock_ambush_spawn_02", "targetname");
		var_cbc84fe3 = var_90e20a06 namespace_2f06d687::function_9b7fda5e(1);
	}
	if(!level namespace_ad23e503::function_7922262b("exit_cellblock"))
	{
		namespace_4dbf3ae3::function_42e87952("triger_hendricks_b7_cell_block_move", "targetname");
	}
}

/*
	Name: function_f8eb4eb0
	Namespace: namespace_933eb669
	Checksum: 0xF271127
	Offset: 0x3350
	Size: 0xDB
	Parameters: 0
	Flags: None
*/
function function_f8eb4eb0()
{
	self endon("hash_128f8789");
	level.var_2fd26037 namespace_d84e54db::function_b4f5e3b9(1);
	self namespace_d84e54db::function_b4f5e3b9(1);
	self function_169cc712(self.var_722885f3, 1);
	level.var_2fd26037 namespace_6f7b2095::function_54bdb053();
	self.var_b691b9cf = "patroller";
	level namespace_cc27597::function_8f9f34e0("cin_bla_09_02_policestation_vign_ambush", &function_878db82b, "done");
	level.var_2fd26037 namespace_cc27597::function_43718187("cin_bla_09_02_policestation_vign_ambush");
}

/*
	Name: function_878db82b
	Namespace: namespace_933eb669
	Checksum: 0x2E56952A
	Offset: 0x3438
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_878db82b(var_c77d2837)
{
	level.var_2fd26037 namespace_d84e54db::function_b4f5e3b9(0);
	level.var_2fd26037 namespace_6f7b2095::function_bae40a28();
}

/*
	Name: function_f6f7ab3d
	Namespace: namespace_933eb669
	Checksum: 0x19E7EE4D
	Offset: 0x3480
	Size: 0x233
	Parameters: 0
	Flags: None
*/
function function_f6f7ab3d()
{
	namespace_4dbf3ae3::function_1ab5ebec("trigger_phalanx");
	switch(level.var_2395e945.size)
	{
		case 2:
		{
			var_e64a5de5 = 3;
			break;
		}
		case 3:
		{
			var_e64a5de5 = 4;
			break;
		}
		case 4:
		{
			var_e64a5de5 = 5;
			break;
		}
		case default:
		{
			var_e64a5de5 = 2;
			break;
		}
	}
	var_489b2980 = namespace_14b42b8a::function_7922262b("cell_phalanx_start").var_722885f3;
	var_491bc153 = namespace_14b42b8a::function_7922262b("cell_phalanx_end").var_722885f3;
	var_f835ddae = function_6ada35ba("police_station_phalanx", "targetname");
	function_9b385ca5();
	var_2f359655 = var_2f359655;
	function_e6cab0ff(var_2f359655, "phanalx_wedge", var_489b2980, var_491bc153, 2, var_e64a5de5, var_f835ddae);
	var_ace28dfc = function_525ae497(var_2f359655.var_aeaf0679["phalanx_tier1"], var_2f359655.var_aeaf0679["phalanx_tier2"], 0, 0);
	level thread namespace_23567e72::function_92e8d6d8(var_ace28dfc);
	var_e3b635fb = function_b8494651("axis");
	namespace_84970cc4::function_1ab5ebec(var_e3b635fb, "death");
	namespace_4dbf3ae3::function_42e87952("police_riotshield_color", undefined, undefined, 0);
}

/*
	Name: function_37170d4a
	Namespace: namespace_933eb669
	Checksum: 0x9FF28203
	Offset: 0x36C0
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_37170d4a()
{
	namespace_4dbf3ae3::function_1ab5ebec("trigger_cell_guard");
	namespace_2f06d687::function_22356ba7("cell_guard", &function_1fb3b8c9);
}

/*
	Name: function_1fb3b8c9
	Namespace: namespace_933eb669
	Checksum: 0x104CEC99
	Offset: 0x3710
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_1fb3b8c9()
{
	self endon("hash_128f8789");
	self.var_7dfaf62 = 32;
	level namespace_ad23e503::function_1ab5ebec("exit_cellblock");
	wait(function_72a94f05(1, 2.5));
	self.var_7dfaf62 = 2048;
	if(level.var_9b1393e7.size)
	{
		self function_169cc712(level.var_9b1393e7[function_26299103(level.var_9b1393e7.size)]);
	}
}

/*
	Name: function_1629236a
	Namespace: namespace_933eb669
	Checksum: 0xF7B6C6A8
	Offset: 0x37C8
	Size: 0x113
	Parameters: 2
	Flags: None
*/
function function_1629236a(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		level thread namespace_79e1cd97::function_90db9f9c();
		namespace_79e1cd97::function_bff1a867("objective_kane_intro");
		level namespace_cc27597::function_c35e6aab("cin_bla_10_01_kaneintro_3rd_sh010");
		namespace_d7916d65::function_a2995f22();
	}
	level thread namespace_79e1cd97::function_6778ea09("none");
	level thread function_6127b673();
	level namespace_ad23e503::function_1ab5ebec("flag_kane_intro_complete");
	level thread namespace_4297372::function_6c35b4f3();
	namespace_1d795d47::function_be8adfb8("objective_kane_intro");
}

/*
	Name: function_5d496554
	Namespace: namespace_933eb669
	Checksum: 0x8E916CF1
	Offset: 0x38E8
	Size: 0x19B
	Parameters: 4
	Flags: None
*/
function function_5d496554(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	namespace_d0ef8521::function_74d6b22f("cp_level_blackstation_goto_relay");
	var_95c6d300 = function_99201f25("floating_trash", "targetname");
	namespace_84970cc4::function_966ecb29(var_95c6d300, &namespace_82b91a51::function_20ffc8ff);
	var_11d618f2 = function_525ae497(function_99201f25("subway_corpse_2", "targetname"), function_99201f25("subway_corpse_3", "targetname"), 1, 0);
	var_11d618f2 = function_525ae497(var_11d618f2, function_99201f25("subway_corpse_floating", "targetname"), 1, 0);
	namespace_84970cc4::function_966ecb29(var_11d618f2, &namespace_82b91a51::function_20ffc8ff);
	namespace_84970cc4::function_966ecb29(function_99201f25("trigger_current", "targetname"), &namespace_79e1cd97::function_76b75dc7, "blackstation_exterior_engaged");
}

/*
	Name: function_6127b673
	Namespace: namespace_933eb669
	Checksum: 0x942861E5
	Offset: 0x3A90
	Size: 0x153
	Parameters: 0
	Flags: None
*/
function function_6127b673()
{
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a thread namespace_79e1cd97::function_ed7faf05();
	}
	namespace_d0ef8521::function_74d6b22f("cp_level_blackstation_comm_relay");
	if(isdefined(level.var_a2d3ec51))
	{
		level thread [[level.var_a2d3ec51]]();
	}
	level thread namespace_4297372::function_5b1a53ea();
	level namespace_cc27597::function_8f9f34e0("cin_bla_10_01_kaneintro_3rd_sh190", &function_80a596c6, "play");
	level namespace_cc27597::function_8f9f34e0("cin_bla_10_01_kaneintro_3rd_sh190", &function_7a574065, "done");
	level namespace_cc27597::function_43718187("cin_bla_10_01_kaneintro_3rd_sh010");
}

/*
	Name: function_80a596c6
	Namespace: namespace_933eb669
	Checksum: 0xCDFD5A0
	Offset: 0x3BF0
	Size: 0x103
	Parameters: 1
	Flags: None
*/
function function_80a596c6(var_c77d2837)
{
	level.var_2fd26037 namespace_d84e54db::function_ceb883cd("vignette_mode", "slow");
	level.var_2fd26037 function_169cc712(function_b4cb3503("hendricks_node_kane_intro_end", "targetname"), 1);
	if(!namespace_cc27597::function_b1f75ee9())
	{
		wait(1);
		level.var_2fd26037 namespace_d84e54db::function_fd6c4374();
		level thread namespace_cc27597::function_43718187("cin_bla_10_01_kaneintro_end_idle");
		wait(1);
		level.var_2fd26037 namespace_d84e54db::function_efed45a3();
	}
	else
	{
		level thread namespace_cc27597::function_43718187("cin_bla_10_01_kaneintro_end_idle");
	}
}

/*
	Name: function_7a574065
	Namespace: namespace_933eb669
	Checksum: 0x4EE78742
	Offset: 0x3D00
	Size: 0xC3
	Parameters: 1
	Flags: None
*/
function function_7a574065(var_c77d2837)
{
	level namespace_ad23e503::function_74d6b22f("flag_kane_intro_complete");
	level namespace_ad23e503::function_74d6b22f("flag_intro_dialog_ended");
	wait(0.3);
	level.var_2fd26037 function_e11ce512();
	namespace_4dbf3ae3::function_42e87952("trig_hendricks_comm_b0", "targetname");
	level.var_2fd26037 namespace_d84e54db::function_ceb883cd("vignette_mode", "off");
	namespace_82b91a51::function_a0938376();
}

