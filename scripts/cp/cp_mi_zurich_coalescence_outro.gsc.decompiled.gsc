#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_zurich_coalescence_root_cinematics;
#using scripts\cp\cp_mi_zurich_coalescence_sound;
#using scripts\cp\cp_mi_zurich_coalescence_util;
#using scripts\cp\cp_mi_zurich_coalescence_zurich_hq;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\cp\gametypes\_globallogic_player;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\audio_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\music_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;

#namespace namespace_34c3982c;

/*
	Name: function_8c381165
	Namespace: namespace_34c3982c
	Checksum: 0xF0DCF114
	Offset: 0xDE0
	Size: 0x8B
	Parameters: 2
	Flags: None
*/
function function_8c381165(var_b04bc952, var_74cd64bc)
{
	namespace_d7916d65::function_73adcefc();
	namespace_d7916d65::function_a2995f22();
	namespace_1d795d47::function_552e05fb(var_b04bc952, 0);
	if(!(isdefined(level.var_a2c60984) && level.var_a2c60984))
	{
		level function_4fa5eed();
	}
	namespace_1d795d47::function_be8adfb8(var_b04bc952);
}

/*
	Name: function_7c294f88
	Namespace: namespace_34c3982c
	Checksum: 0x3135CC99
	Offset: 0xE78
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function function_7c294f88(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
}

/*
	Name: function_4fa5eed
	Namespace: namespace_34c3982c
	Checksum: 0xF7C02A42
	Offset: 0xEA8
	Size: 0xE3
	Parameters: 0
	Flags: None
*/
function function_4fa5eed()
{
	namespace_82b91a51::function_7e61de2b(0);
	namespace_84970cc4::function_966ecb29(level.var_2395e945, &function_73b35f7b, 1);
	wait(1);
	level thread function_4163ce88();
	if(isdefined(level.var_771c9270))
	{
		level thread [[level.var_771c9270]]();
	}
	namespace_bbb4ee72::function_c7ab7e12("cp_zurich_fs_flyaway");
	level namespace_82b91a51::function_7e61de2b(0, "white");
	namespace_84970cc4::function_966ecb29(level.var_2395e945, &function_ba91aecf);
}

/*
	Name: function_4163ce88
	Namespace: namespace_34c3982c
	Checksum: 0xA32C9E52
	Offset: 0xF98
	Size: 0x103
	Parameters: 0
	Flags: None
*/
function function_4163ce88()
{
	level endon("hash_11b46b6a");
	wait(0.2);
	level namespace_71b8dba1::function_a463d127("tcor_it_s_all_wrong_0", 1, "NO_DNI");
	level namespace_71b8dba1::function_a463d127("tcor_it_was_supposed_to_m_0", 1, "NO_DNI");
	level namespace_71b8dba1::function_a463d127("tcor_there_s_so_much_nois_0", 1, "NO_DNI");
	level namespace_71b8dba1::function_a463d127("tcor_i_don_t_even_know_yo_0", 1, "NO_DNI");
	level namespace_71b8dba1::function_a463d127("tcor_who_are_you_0", 1, "NO_DNI");
}

/*
	Name: function_618d5a98
	Namespace: namespace_34c3982c
	Checksum: 0xECE0228
	Offset: 0x10A8
	Size: 0x1DB
	Parameters: 2
	Flags: None
*/
function function_618d5a98(var_b04bc952, var_74cd64bc)
{
	level namespace_ad23e503::function_1ab5ebec("all_players_spawned");
	namespace_82b91a51::function_d8eaed3d(9);
	namespace_82b91a51::function_7e61de2b(0, "white");
	namespace_cc27597::function_8f9f34e0("cin_zur_20_01_plaza_1st_fight_it_player_end", &function_c5c8c18b, "play");
	namespace_cc27597::function_8f9f34e0("cin_zur_20_01_plaza_1st_fight_it", &function_feb59ad0, "init");
	level namespace_cc27597::function_c35e6aab("cin_zur_20_01_plaza_1st_fight_it");
	level namespace_cc27597::function_c35e6aab("cin_zur_20_01_plaza_1st_fight_it_player_end");
	level namespace_cc27597::function_c35e6aab("cin_zur_20_01_plaza_1st_fight_it_player_start");
	level thread namespace_8e9083ff::function_b0f0dd1f(0);
	level thread namespace_8e9083ff::function_4d032f25(0);
	namespace_84970cc4::function_966ecb29(level.var_2395e945, &function_354b619b, 1);
	level namespace_71e9cb84::function_74d6b22f("gameplay_started", 1);
	level function_2e5f51e9();
	namespace_1d795d47::function_be8adfb8(var_b04bc952);
}

/*
	Name: function_d9ccb9e3
	Namespace: namespace_34c3982c
	Checksum: 0xE408C32E
	Offset: 0x1290
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function function_d9ccb9e3(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
}

/*
	Name: function_313f113
	Namespace: namespace_34c3982c
	Checksum: 0x92AF599C
	Offset: 0x12C0
	Size: 0x2DB
	Parameters: 2
	Flags: None
*/
function function_313f113(var_b04bc952, var_74cd64bc)
{
	level namespace_ad23e503::function_1ab5ebec("all_players_spawned");
	level namespace_ad23e503::function_c35e6aab("atrium_hack_objective_start");
	if(var_74cd64bc)
	{
		namespace_82b91a51::function_7e61de2b(0, "black");
		namespace_84970cc4::function_966ecb29(level.var_2395e945, &function_354b619b, 0);
		level thread namespace_8e9083ff::function_4d032f25(0);
		namespace_1d795d47::function_552e05fb(var_b04bc952, 0);
		wait(2);
		level thread namespace_82b91a51::function_593c2af4(2, "black");
		level thread function_81b8760e();
	}
	function_6c1294b8("r_skyRotation", 244);
	if(isdefined(level.var_1afc504a))
	{
		level thread [[level.var_1afc504a]]();
	}
	level namespace_cc27597::function_c35e6aab("p7_fxanim_cp_zurich_coalescence_tower_door_exit_bundle");
	level thread function_51e389ee();
	function_bab1ff00("hq_exit_umbra_gate", 1);
	function_bab1ff00("hq_atrium_umbra_gate", 1);
	level thread namespace_8e9083ff::function_11b424e5(1);
	namespace_84970cc4::function_966ecb29(level.var_2395e945, &function_199efe7b);
	level namespace_ad23e503::function_74d6b22f("flag_enable_zurich_ending");
	level thread function_5cd9d899();
	level thread function_b56fbb21();
	if(function_27c72c1b())
	{
		level thread function_3ec4c691();
	}
	else
	{
		level thread function_1cc6775d();
	}
	level thread function_4590fc90();
	level thread function_2381bb7();
	level thread namespace_8e9083ff::function_df1fc23b(0);
}

/*
	Name: function_f2f0f1ec
	Namespace: namespace_34c3982c
	Checksum: 0xF5C3EE31
	Offset: 0x15A8
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function function_f2f0f1ec(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
}

/*
	Name: function_51e389ee
	Namespace: namespace_34c3982c
	Checksum: 0xB46CE9D7
	Offset: 0x15D8
	Size: 0x11B
	Parameters: 0
	Flags: None
*/
function function_51e389ee()
{
	var_10729d99 = namespace_14b42b8a::function_7922262b("outro_stairs_door_breadcrumb");
	namespace_d0ef8521::function_74d6b22f("cp_waypoint_breadcrumb", var_10729d99);
	level namespace_ad23e503::function_1ab5ebec("flag_open_atrium_exit_door");
	namespace_d0ef8521::function_31cd1834("cp_waypoint_breadcrumb");
	var_96eed922 = namespace_14b42b8a::function_7922262b("outro_lobby_door_struct_trig");
	namespace_d0ef8521::function_74d6b22f("cp_waypoint_breadcrumb", var_96eed922);
	namespace_8e9083ff::function_1b3dfa61("outro_lobby_door_struct_trig", undefined, 256);
	namespace_d0ef8521::function_31cd1834("cp_waypoint_breadcrumb");
	wait(0.05);
	level namespace_ad23e503::function_74d6b22f("atrium_hack_objective_start");
}

/*
	Name: function_5cd9d899
	Namespace: namespace_34c3982c
	Checksum: 0xA1A1BA08
	Offset: 0x1700
	Size: 0x1A3
	Parameters: 0
	Flags: None
*/
function function_5cd9d899()
{
	level endon("hash_72be7304");
	level thread function_c0ced31c();
	level namespace_ad23e503::function_1ab5ebec("flag_taylor_outro_vo_01");
	level namespace_71b8dba1::function_a463d127("tayr_listen_only_to_the_s_0", 1, "NO_DNI");
	level namespace_71b8dba1::function_a463d127("tayr_let_your_mind_relax_0", 1, "NO_DNI");
	level namespace_ad23e503::function_1ab5ebec("flag_taylor_outro_vo_02");
	level namespace_71b8dba1::function_a463d127("tayr_let_your_thoughts_dr_0", 1, "NO_DNI");
	level namespace_71b8dba1::function_a463d127("tayr_let_the_bad_memories_0", 1, "NO_DNI");
	level namespace_ad23e503::function_1ab5ebec("flag_taylor_outro_vo_03");
	level namespace_71b8dba1::function_a463d127("tayr_let_peace_be_upon_yo_0", 1, "NO_DNI");
	level namespace_71b8dba1::function_a463d127("tayr_you_are_in_control_0", 1, "NO_DNI");
}

/*
	Name: function_c0ced31c
	Namespace: namespace_34c3982c
	Checksum: 0xA5D5588D
	Offset: 0x18B0
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_c0ced31c()
{
	level endon("hash_72be7304");
	namespace_8e9083ff::function_1b3dfa61("hq_outro_vo_03_struct_trig", undefined, 256);
	level namespace_ad23e503::function_74d6b22f("flag_taylor_outro_vo_03");
}

/*
	Name: function_354b619b
	Namespace: namespace_34c3982c
	Checksum: 0x9EAD3384
	Offset: 0x1908
	Size: 0xC3
	Parameters: 1
	Flags: None
*/
function function_354b619b(var_495fe8ae)
{
	self endon("hash_643a7daf");
	var_a651b292 = function_c4d5ec1f("pistol_standard");
	self function_fe91f994();
	self function_860a040a(var_a651b292);
	self function_9785d11(var_a651b292);
	if(var_495fe8ae)
	{
		level waittill("hash_d0254e87");
	}
	self function_67795b5f(var_a651b292, 5);
	self function_cdf98bcd(var_a651b292, 0);
}

/*
	Name: function_2e5f51e9
	Namespace: namespace_34c3982c
	Checksum: 0x739AA0DC
	Offset: 0x19D8
	Size: 0x2AB
	Parameters: 0
	Flags: None
*/
function function_2e5f51e9()
{
	namespace_cc27597::function_8f9f34e0("cin_zur_20_01_plaza_1st_fight_it", &namespace_8e9083ff::function_f3e247d6, "play");
	namespace_cc27597::function_8f9f34e0("cin_zur_20_01_plaza_1st_fight_it_player_start", &function_8cd36a50, "play");
	level thread function_6b79134a();
	level thread function_e2a2e56e();
	level thread function_cbc763a7();
	level thread function_f0e5d1d();
	level thread namespace_82b91a51::function_593c2af4(2, "white");
	if(!function_27c72c1b())
	{
		namespace_84970cc4::function_966ecb29(level.var_2395e945, &namespace_71e9cb84::function_688ed188, "postfx_futz");
	}
	level thread namespace_cc27597::function_43718187("cin_zur_20_01_plaza_1st_fight_it");
	if(isdefined(level.var_b2ea822f))
	{
		level thread [[level.var_b2ea822f]]();
	}
	if(isdefined(level.var_6c87ba77))
	{
		level thread [[level.var_6c87ba77]]();
	}
	level thread namespace_67110270::function_b01ef29c();
	level namespace_cc27597::function_43718187("cin_zur_20_01_plaza_1st_fight_it_player_start");
	var_a3612ddd = 0;
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_a3612ddd++;
		var_5dc5e20a thread function_4f4dfd03(var_a3612ddd);
	}
	level waittill("hash_ce40edcd");
	level namespace_cc27597::function_43718187("cin_zur_20_01_plaza_1st_fight_it_player_end");
	level namespace_82b91a51::function_93831e79("server_interior");
	namespace_82b91a51::function_a0938376();
}

/*
	Name: function_6b79134a
	Namespace: namespace_34c3982c
	Checksum: 0xE56ED5E2
	Offset: 0x1C90
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_6b79134a()
{
	level waittill("hash_e160de52");
	namespace_80983c42::function_80983c42("serverrm_corvuscorelight");
	level waittill("hash_3d45f38a");
	namespace_80983c42::function_67e7a937("serverrm_corvuscorelight");
}

/*
	Name: function_feb59ad0
	Namespace: namespace_34c3982c
	Checksum: 0x704E90A2
	Offset: 0x1CF0
	Size: 0xDB
	Parameters: 1
	Flags: None
*/
function function_feb59ad0(var_c77d2837)
{
	var_57923fa7 = function_6ada35ba("corvusGut", "targetname");
	var_f4a14f07 = var_c77d2837["corvus"];
	var_6cac4ba4 = var_f4a14f07 function_cd1d99bd("j_spine4");
	var_6cac4ba4 = var_6cac4ba4 + VectorScale((1, 0, 0), 90);
	var_b71ed4a2 = VectorScale((0, -1, 0), 10);
	if(isdefined(var_f4a14f07))
	{
		var_57923fa7 function_37f7858a(var_f4a14f07, "j_spine4", var_b71ed4a2, var_6cac4ba4);
	}
}

/*
	Name: function_8cd36a50
	Namespace: namespace_34c3982c
	Checksum: 0x89A40350
	Offset: 0x1DD8
	Size: 0x73
	Parameters: 1
	Flags: None
*/
function function_8cd36a50(var_c77d2837)
{
	var_6bfe1586 = var_c77d2837["player 1"];
	wait(1);
	if(isdefined(var_6bfe1586))
	{
		var_6bfe1586 namespace_175490fb::function_f8669cbf(1);
		var_6bfe1586 function_e2af603e("damage_heavy");
	}
}

/*
	Name: function_c5c8c18b
	Namespace: namespace_34c3982c
	Checksum: 0x7D8AFFC6
	Offset: 0x1E58
	Size: 0x7B
	Parameters: 1
	Flags: None
*/
function function_c5c8c18b(var_c77d2837)
{
	var_6bfe1586 = var_c77d2837["player 1"];
	level waittill("hash_e3f86dc");
	if(isdefined(var_6bfe1586))
	{
		var_6bfe1586 namespace_175490fb::function_f8669cbf(1);
		var_6bfe1586 function_e2af603e("cp_infection_hideout_stretch");
	}
}

/*
	Name: function_a3652dec
	Namespace: namespace_34c3982c
	Checksum: 0xD0266281
	Offset: 0x1EE0
	Size: 0x11
	Parameters: 0
	Flags: None
*/
function function_a3652dec()
{
	level notify("hash_e69e5818");
}

/*
	Name: function_e2a2e56e
	Namespace: namespace_34c3982c
	Checksum: 0x1B743F28
	Offset: 0x1F00
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_e2a2e56e()
{
	level namespace_cc27597::function_c35e6aab("p7_fxanim_cp_zurich_server_room_debris_bundle");
	level waittill("hash_2a9df746");
	level namespace_cc27597::function_43718187("p7_fxanim_cp_zurich_server_room_debris_bundle");
}

/*
	Name: function_f0e5d1d
	Namespace: namespace_34c3982c
	Checksum: 0xB05657DB
	Offset: 0x1F58
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_f0e5d1d()
{
	function_9e3608e3("server_interior_dead_bodies");
	level waittill("hash_5a3488fa");
	function_6ddd4fa4("server_interior_dead_bodies");
}

/*
	Name: function_cbc763a7
	Namespace: namespace_34c3982c
	Checksum: 0xF2C66AF3
	Offset: 0x1FA8
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function function_cbc763a7()
{
	var_ddc9cb80 = function_6ada35ba("server_interior_igc_wiping_screen", "targetname");
	var_cb8cc4ef = function_6ada35ba("server_interior_igc_wiped_screen", "targetname");
	var_cb8cc4ef function_50ccee8d();
	level waittill("hash_fefb8213");
	var_cb8cc4ef function_48f26766();
	var_ddc9cb80 function_50ccee8d();
	level thread function_81b8760e();
}

/*
	Name: function_4f4dfd03
	Namespace: namespace_34c3982c
	Checksum: 0xC31BC267
	Offset: 0x2078
	Size: 0x1B9
	Parameters: 1
	Flags: None
*/
function function_4f4dfd03(var_a3612ddd)
{
	self function_8c1f7070();
	level notify("hash_2a9df746");
	level notify("hash_d0254e87");
	self function_faf8f736(1);
	wait(0.15);
	var_f5d579af = namespace_14b42b8a::function_7922262b("outro_server_scene_struct_0" + var_a3612ddd);
	var_ad470f8c = namespace_82b91a51::function_b9fd52a4("tag_origin", var_f5d579af.var_722885f3, var_f5d579af.var_6ab6f4fd);
	self function_ed594d21(var_ad470f8c, "tag_origin", 1, 20, 20, 15, 60);
	self namespace_82b91a51::function_958c7633();
	self function_faf8f736(0);
	self thread function_e611368a();
	level waittill("hash_e0529ad4");
	self namespace_82b91a51::function_4b741fdc();
	self function_52fddbd0();
	var_ad470f8c function_dc8c8404();
	self function_bb863f19();
	level notify("hash_ce40edcd");
}

/*
	Name: function_b56fbb21
	Namespace: namespace_34c3982c
	Checksum: 0xB7EA1415
	Offset: 0x2240
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_b56fbb21()
{
	level namespace_ad23e503::function_1ab5ebec("flag_open_atrium_exit_door");
	var_38f39d05 = function_99201f25("hq_lobby_exit_clip", "targetname");
	namespace_84970cc4::function_eaab05dc(var_38f39d05, &function_8bdea13c, 100, 1.5);
	namespace_84970cc4::function_eaab05dc(var_38f39d05, &function_921a1574, "evt_outro_atrium_door");
	level thread function_36745581();
}

/*
	Name: function_36745581
	Namespace: namespace_34c3982c
	Checksum: 0x1CACA02A
	Offset: 0x2308
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_36745581()
{
	var_2c578566 = function_9b7fda5e("script_origin", (-7389, 36096, 138));
	if(function_27c72c1b())
	{
		var_2c578566 function_c2931a36("evt_bonuszm_zombies_dist", 1);
	}
	else
	{
		var_2c578566 function_c2931a36("evt_outro_vtol_dist", 1);
	}
	level waittill("hash_8271ee50");
	var_2c578566 function_eaa69754(7);
}

/*
	Name: function_81b8760e
	Namespace: namespace_34c3982c
	Checksum: 0xA487A530
	Offset: 0x23D0
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_81b8760e()
{
	namespace_84970cc4::function_eaab05dc(level.var_2395e945, &function_1b947e2a, "weapon_hud_visible", 0);
	if(function_27c72c1b())
	{
		return;
	}
	level namespace_82b91a51::function_ef3f75eb("sndPA");
	namespace_84970cc4::function_966ecb29(level.var_2395e945, &function_51e85b80);
	level thread function_546b8cde(1);
}

/*
	Name: function_e611368a
	Namespace: namespace_34c3982c
	Checksum: 0xC9E5D8F5
	Offset: 0x2480
	Size: 0x8F
	Parameters: 0
	Flags: None
*/
function function_e611368a()
{
	if(function_27c72c1b())
	{
		return;
	}
	self endon("hash_643a7daf");
	level endon("hash_e0529ad4");
	while(1)
	{
		self function_e2af603e("damage_light");
		function_9cf04c2e(0.3, 0.5, self.var_722885f3, 128);
		wait(0.25);
	}
}

/*
	Name: function_51e85b80
	Namespace: namespace_34c3982c
	Checksum: 0x1478D488
	Offset: 0x2518
	Size: 0x423
	Parameters: 0
	Flags: None
*/
function function_51e85b80()
{
	self endon("hash_643a7daf");
	if(function_27c72c1b())
	{
		return;
	}
	self thread function_d06b32b2();
	self.var_322cc58c = self function_2f6b6a4c("DniWipe");
	self function_3a9588ea(self.var_322cc58c, "frac", 0);
	self function_3a9588ea(self.var_322cc58c, "Die", 0);
	self function_3a9588ea(self.var_322cc58c, "percentage", 0);
	self function_3a9588ea(self.var_322cc58c, "percentageVisible", 0);
	wait(1);
	self function_3a9588ea(self.var_322cc58c, "duration", 10000);
	self function_3a9588ea(self.var_322cc58c, "frac", 0);
	self function_3a9588ea(self.var_322cc58c, "percentageVisible", 1);
	wait(1);
	self function_3a9588ea(self.var_322cc58c, "frac", 0.2);
	self thread function_865309a9(20);
	wait(10);
	level namespace_ad23e503::function_1ab5ebec("flag_fill_purging_bar_40");
	self function_3a9588ea(self.var_322cc58c, "frac", 0.4);
	self thread function_865309a9(40);
	wait(10);
	level namespace_ad23e503::function_1ab5ebec("flag_fill_purging_bar_60");
	self function_3a9588ea(self.var_322cc58c, "frac", 0.6);
	self thread function_865309a9(60);
	wait(10);
	level namespace_ad23e503::function_1ab5ebec("flag_fill_purging_bar_80");
	self function_3a9588ea(self.var_322cc58c, "frac", 0.8);
	self thread function_865309a9(80);
	wait(10);
	level waittill("hash_2e3e5b0a");
	self function_3a9588ea(self.var_322cc58c, "frac", 1);
	self thread function_865309a9(100);
	wait(10);
	self function_3a9588ea(self.var_322cc58c, "frac", 1);
	self function_3a9588ea(self.var_322cc58c, "percentageVisible", 0);
	wait(0.1);
	self function_3a9588ea(self.var_322cc58c, "Die", 1);
	wait(3);
	self function_2b74b70a(self.var_322cc58c);
}

/*
	Name: function_865309a9
	Namespace: namespace_34c3982c
	Checksum: 0xA78E2AB4
	Offset: 0x2948
	Size: 0x75
	Parameters: 1
	Flags: None
*/
function function_865309a9(var_ea6d6bd2)
{
	for(var_c957f6b6 = var_ea6d6bd2 - 20; var_c957f6b6 < var_ea6d6bd2 + 1; var_c957f6b6++)
	{
		self function_3a9588ea(self.var_322cc58c, "percentage", var_c957f6b6 / 100);
		wait(0.5);
	}
}

/*
	Name: function_d06b32b2
	Namespace: namespace_34c3982c
	Checksum: 0x5D877B92
	Offset: 0x29C8
	Size: 0x103
	Parameters: 0
	Flags: None
*/
function function_d06b32b2()
{
	namespace_4dbf3ae3::function_1ab5ebec("trig_hud_update_01", "targetname", self);
	level namespace_ad23e503::function_74d6b22f("flag_taylor_outro_vo_01");
	level namespace_ad23e503::function_74d6b22f("flag_fill_purging_bar_40");
	namespace_4dbf3ae3::function_1ab5ebec("trig_hud_update_02", "targetname", self);
	level namespace_ad23e503::function_74d6b22f("flag_taylor_outro_vo_02");
	level namespace_ad23e503::function_74d6b22f("flag_fill_purging_bar_60");
	namespace_4dbf3ae3::function_1ab5ebec("trig_hud_update_03", "targetname", self);
	level namespace_ad23e503::function_74d6b22f("flag_fill_purging_bar_80");
}

/*
	Name: function_546b8cde
	Namespace: namespace_34c3982c
	Checksum: 0x8316291
	Offset: 0x2AD8
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function function_546b8cde(var_a8fcf257)
{
	if(function_27c72c1b())
	{
		return;
	}
	if(isdefined(var_a8fcf257) && var_a8fcf257)
	{
		level thread namespace_8e9083ff::function_5f63b2f1(1);
	}
	else
	{
		level thread namespace_8e9083ff::function_5f63b2f1(0);
	}
}

/*
	Name: function_1cc6775d
	Namespace: namespace_34c3982c
	Checksum: 0x9CE0372A
	Offset: 0x2B48
	Size: 0x29B
	Parameters: 0
	Flags: None
*/
function function_1cc6775d()
{
	namespace_cc27597::function_8f9f34e0("cin_zur_20_01_plaza_1st_commander", &function_95ed5d29, "play");
	namespace_cc27597::function_8f9f34e0("cin_zur_20_01_plaza_1st_commander", &function_a947c3b3, "done");
	level namespace_ad23e503::function_1ab5ebec("atrium_hack_objective_start");
	level thread function_80c5347c();
	level thread function_f568befc();
	namespace_2f06d687::function_ef554cf7("allies", &namespace_82b91a51::function_65ba133d);
	var_5cca3f31 = function_6ada35ba("trig_enable_zuirch_ending", "targetname");
	var_65669d7b = var_5cca3f31 namespace_8e9083ff::function_d1996775();
	level thread namespace_8e9083ff::function_df1fc23b(1);
	level notify("hash_21ddc441");
	level namespace_8e9083ff::function_b0f0dd1f(1, "reverse_snow");
	level namespace_ad23e503::function_74d6b22f("flag_start_zurich_outro");
	level notify("hash_8271ee50");
	namespace_ccb8d056::function_c1cdedfb("none");
	level namespace_82b91a51::function_ef3f75eb("sndPA");
	level thread namespace_4fe3eef1::function_9908d262("mus_coalescence_theme_intro");
	level thread namespace_4fe3eef1::function_9908d262("mus_through_the_trees_intro");
	level thread namespace_4fe3eef1::function_9908d262("mus_i_live_orchestral_intro");
	level thread namespace_4fe3eef1::function_9908d262("mus_unstoppable_intro");
	level namespace_71e9cb84::function_74d6b22f("gameplay_started", 0);
	level thread namespace_cc27597::function_43718187("cin_zur_20_01_plaza_1st_commander", var_65669d7b);
}

/*
	Name: function_95ed5d29
	Namespace: namespace_34c3982c
	Checksum: 0x11B5D634
	Offset: 0x2DF0
	Size: 0xD3
	Parameters: 1
	Flags: None
*/
function function_95ed5d29(var_c77d2837)
{
	level endon("hash_d71a6b5a");
	level notify("hash_2e3e5b0a");
	level thread function_546b8cde(0);
	level thread namespace_8e9083ff::function_d0e3bb4(1);
	var_ccbdc630 = function_6ada35ba("coalescence_gate", "targetname");
	level namespace_cc27597::function_43718187("p7_fxanim_cp_zurich_coalescence_tower_door_exit_bundle");
	var_ccbdc630 function_422037f5();
	function_bab1ff00("hq_atrium_umbra_gate", 1);
}

/*
	Name: function_a947c3b3
	Namespace: namespace_34c3982c
	Checksum: 0x9D11DA39
	Offset: 0x2ED0
	Size: 0x13B
	Parameters: 1
	Flags: None
*/
function function_a947c3b3(var_c77d2837)
{
	namespace_cc27597::function_f69c7a83();
	level namespace_82b91a51::function_77f8007d();
	namespace_82b91a51::function_7e61de2b(0);
	level namespace_71e9cb84::function_74d6b22f("sndIGCsnapshot", 5);
	namespace_ccb8d056::function_c1cdedfb("i_live_credits");
	function_37cbcf1a("evt_bonuszm_ending_toblack", (0, 0, 0));
	level thread namespace_8e9083ff::function_d0e3bb4(0);
	if(isdefined(self.var_322cc58c))
	{
		self function_2b74b70a(self.var_322cc58c);
	}
	wait(2);
	namespace_d0ef8521::function_31cd1834("cp_level_zurich_end_obj");
	namespace_4dbf3ae3::function_42e87952("trig_zurich_end", "targetname");
	namespace_1d795d47::function_be8adfb8("zurich_outro");
}

/*
	Name: function_2381bb7
	Namespace: namespace_34c3982c
	Checksum: 0x5F1D7B49
	Offset: 0x3018
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_2381bb7()
{
	level namespace_71e9cb84::function_74d6b22f("set_post_color_grade_bank", 1);
	namespace_84970cc4::function_966ecb29(level.var_2395e945, &namespace_8e9083ff::function_3e4d643b, 1);
	namespace_80983c42::function_80983c42("plaza_lights");
}

/*
	Name: function_4590fc90
	Namespace: namespace_34c3982c
	Checksum: 0x793E4F94
	Offset: 0x3090
	Size: 0x173
	Parameters: 0
	Flags: None
*/
function function_4590fc90()
{
	if(function_27c72c1b())
	{
		return;
	}
	level namespace_8e9083ff::function_33ec653f("zurich_outro_dead_robot_node_spawn_manager", undefined, 0.25, &function_710df260);
	level namespace_8e9083ff::function_33ec653f("zurich_outro_solider_idle_struct_spawn_manager", undefined, 0.25, &function_29d8cf02);
	namespace_2f06d687::function_7387a40a("plaza_battle_boss", &function_536749f9);
	level waittill("hash_21ddc441");
	level thread namespace_cc27597::function_43718187("outro_ambient_execution", "targetname");
	for(var_c957f6b6 = 1; var_c957f6b6 < 5; var_c957f6b6++)
	{
		level thread namespace_8e9083ff::function_33ec653f("zurich_outro_solider_patrol_struct_spawn_manager_0" + var_c957f6b6, undefined, 0.15, &function_83b161ee, "zurich_outro_solider_patrol_struct_spawner_0" + var_c957f6b6);
	}
	level thread namespace_8e9083ff::function_33ec653f("zurich_outro_solider_patrol", undefined, undefined, &function_9f8eef7b);
}

/*
	Name: function_536749f9
	Namespace: namespace_34c3982c
	Checksum: 0xC3DD1E84
	Offset: 0x3210
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_536749f9()
{
	var_dbb2d033 = function_b4cb3503("zurich_outro_quadtank_death", "targetname");
	self.var_722885f3 = var_dbb2d033.var_722885f3;
	self.var_6ab6f4fd = var_dbb2d033.var_6ab6f4fd;
	self function_c3945cd5(self.var_3a90f16b, self.var_722885f3);
}

/*
	Name: function_710df260
	Namespace: namespace_34c3982c
	Checksum: 0x3A359F93
	Offset: 0x32A0
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_710df260()
{
	self function_c3945cd5(self.var_3a90f16b, self.var_722885f3);
}

/*
	Name: function_29d8cf02
	Namespace: namespace_34c3982c
	Checksum: 0x6ACDCC28
	Offset: 0x32D8
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_29d8cf02()
{
	namespace_82b91a51::function_76f13293();
	self namespace_cc27597::function_43718187("sb_t7_c_nrc_assault_idle", self);
}

/*
	Name: function_83b161ee
	Namespace: namespace_34c3982c
	Checksum: 0xF768FC38
	Offset: 0x3318
	Size: 0xB3
	Parameters: 1
	Flags: None
*/
function function_83b161ee(var_9de10fe3)
{
	self namespace_d84e54db::function_b4f5e3b9(1);
	wait(function_72a94f05(0.15, 0.5));
	self function_e11ce512();
	self namespace_d84e54db::function_99e190ff(function_b4cb3503(var_9de10fe3, "targetname"));
	self waittill("hash_41d1aaf0");
	self namespace_cc27597::function_43718187("sb_t7_c_nrc_assault_idle", self);
}

/*
	Name: function_9f8eef7b
	Namespace: namespace_34c3982c
	Checksum: 0x4D6F5B86
	Offset: 0x33D8
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_9f8eef7b()
{
	self namespace_d84e54db::function_ceb883cd("patrol", 1);
}

/*
	Name: function_80c5347c
	Namespace: namespace_34c3982c
	Checksum: 0xB12AEB21
	Offset: 0x3408
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_80c5347c()
{
	var_f201bfb1 = namespace_14b42b8a::function_7faf4c39("outro_ambients", "targetname");
	if(!var_f201bfb1.size)
	{
		return;
	}
	level thread namespace_cc27597::function_43718187("outro_ambients", "targetname");
}

/*
	Name: function_f568befc
	Namespace: namespace_34c3982c
	Checksum: 0x19EB8DBD
	Offset: 0x3478
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_f568befc()
{
	level namespace_cc27597::function_c35e6aab("p7_fxanim_cp_zurich_vtol_landing_end_bundle");
	var_c5ac3179 = namespace_14b42b8a::function_7faf4c39("s_outro_air_vtol", "targetname");
	namespace_84970cc4::function_966ecb29(var_c5ac3179, &function_e26a2c57);
	level namespace_ad23e503::function_1ab5ebec("flag_start_zurich_outro");
	level namespace_cc27597::function_43718187("p7_fxanim_cp_zurich_vtol_landing_end_bundle");
}

/*
	Name: function_e26a2c57
	Namespace: namespace_34c3982c
	Checksum: 0x15645FA9
	Offset: 0x3538
	Size: 0xFB
	Parameters: 0
	Flags: None
*/
function function_e26a2c57()
{
	level.var_c1aa5253["vtol_exhaust"] = "vehicle/fx_vtol_mil_egypt_thruster_side";
	var_2ec6deda = namespace_82b91a51::function_b9fd52a4("veh_t7_mil_vtol_egypt", self.var_722885f3, self.var_6ab6f4fd);
	var_2ec6deda.var_60c8714b = [];
	var_2ec6deda.var_fdcf75a9 = self;
	var_2ec6deda.var_a6b1619d = 900;
	function_da6acfd2(level.var_c1aa5253["vtol_exhaust"], var_2ec6deda, "tag_fx_engine_left");
	function_da6acfd2(level.var_c1aa5253["vtol_exhaust"], var_2ec6deda, "tag_fx_engine_right");
	var_2ec6deda thread function_ffeb5fe9();
}

/*
	Name: function_ffeb5fe9
	Namespace: namespace_34c3982c
	Checksum: 0x2243EDA3
	Offset: 0x3640
	Size: 0x15B
	Parameters: 0
	Flags: None
*/
function function_ffeb5fe9()
{
	var_10729d99 = self.var_fdcf75a9;
	var_74adb9b4 = namespace_14b42b8a::function_7922262b(var_10729d99.var_b07228b6, "targetname");
	level namespace_ad23e503::function_1ab5ebec("flag_start_zurich_outro");
	var_6389ab3d = function_7d15e2f8(var_10729d99.var_722885f3, var_74adb9b4.var_722885f3);
	var_78962fff = var_6389ab3d / self.var_a6b1619d;
	self function_a96a2721(var_74adb9b4.var_722885f3, var_78962fff);
	self function_c0b6566f(var_74adb9b4.var_6ab6f4fd, var_78962fff);
	self waittill("hash_a21db68a");
	if(self.var_6df9264 === "veh_t7_mil_vtol_egypt")
	{
		self thread function_61438a39();
		level waittill("hash_d71a6b5a");
	}
	self function_dc8c8404();
}

/*
	Name: function_61438a39
	Namespace: namespace_34c3982c
	Checksum: 0xAA75216B
	Offset: 0x37A8
	Size: 0x145
	Parameters: 0
	Flags: None
*/
function function_61438a39()
{
	level endon("hash_d71a6b5a");
	var_8d7eab33 = self.var_6ab6f4fd;
	var_e04460fb = self.var_722885f3;
	while(1)
	{
		var_200a7636 = function_72a94f05(-10, 10);
		var_cebf203c = function_72a94f05(-8, 8);
		var_78962fff = function_72a94f05(0.2, 0.5);
		self function_8bdea13c(var_200a7636, var_78962fff);
		self function_5613042d(var_cebf203c, var_78962fff);
		wait(var_78962fff);
		self function_a96a2721(var_e04460fb, var_78962fff);
		self function_c0b6566f(var_8d7eab33, var_78962fff);
		wait(var_78962fff);
	}
}

/*
	Name: function_73b35f7b
	Namespace: namespace_34c3982c
	Checksum: 0x3DBA23F1
	Offset: 0x38F8
	Size: 0xEB
	Parameters: 1
	Flags: None
*/
function function_73b35f7b(var_5319224a)
{
	self namespace_82b91a51::function_56cee95(1);
	self function_1271a73e();
	self function_83fd42b5();
	self namespace_82b91a51::function_c72856fc(0);
	self function_1b947e2a("weapon_hud_visible", 0);
	if(isdefined(var_5319224a) && var_5319224a)
	{
		self.var_b35375be = namespace_82b91a51::function_b9fd52a4("tag_origin", self.var_722885f3, self.var_6ab6f4fd);
		self function_87b6cda1(self.var_b35375be);
	}
}

/*
	Name: function_ba91aecf
	Namespace: namespace_34c3982c
	Checksum: 0xF5667C9B
	Offset: 0x39F0
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_ba91aecf()
{
	self namespace_82b91a51::function_56cee95(0);
	self function_901e0817();
	self function_4890e520();
	self namespace_82b91a51::function_c72856fc(1);
	self function_1b947e2a("weapon_hud_visible", 1);
	if(isdefined(self.var_b35375be))
	{
		self function_52fddbd0();
		self.var_b35375be function_dc8c8404();
	}
}

/*
	Name: function_199efe7b
	Namespace: namespace_34c3982c
	Checksum: 0x1C9FB087
	Offset: 0x3AB8
	Size: 0x2FB
	Parameters: 0
	Flags: None
*/
function function_199efe7b()
{
	if(function_27c72c1b())
	{
		return;
	}
	self endon("hash_643a7daf");
	self endon("hash_128f8789");
	self.var_ea4a62a = namespace_82b91a51::function_b9fd52a4("tag_origin");
	self function_ff57a1a9(self.var_ea4a62a);
	self function_5a7dd25d(0.85);
	var_d0f99889 = [];
	if(!isdefined(var_d0f99889))
	{
		var_d0f99889 = [];
	}
	else if(!function_6e2770d8(var_d0f99889))
	{
		var_d0f99889 = function_84970cc4(var_d0f99889);
	}
	var_d0f99889[var_d0f99889.size] = &function_40b3cd00;
	if(!isdefined(var_d0f99889))
	{
		var_d0f99889 = [];
	}
	else if(!function_6e2770d8(var_d0f99889))
	{
		var_d0f99889 = function_84970cc4(var_d0f99889);
	}
	var_d0f99889[var_d0f99889.size] = &function_40ca28b;
	if(!isdefined(var_d0f99889))
	{
		var_d0f99889 = [];
	}
	else if(!function_6e2770d8(var_d0f99889))
	{
		var_d0f99889 = function_84970cc4(var_d0f99889);
	}
	var_d0f99889[var_d0f99889.size] = &function_980b2358;
	if(!isdefined(var_d0f99889))
	{
		var_d0f99889 = [];
	}
	else if(!function_6e2770d8(var_d0f99889))
	{
		var_d0f99889 = function_84970cc4(var_d0f99889);
	}
	var_d0f99889[var_d0f99889.size] = &function_40b3cd00;
	function_980b2358();
	self thread function_66b612d();
	wait(0.05);
	while(1)
	{
		if(self.var_fc0b6c3a > 1)
		{
			var_e3e6bb68 = var_d0f99889[function_26299103(var_d0f99889.size)];
			[[var_e3e6bb68]]();
			function_a32df3aa();
			self function_ff57a1a9(self.var_ea4a62a);
			self function_5eefd8cc();
		}
		else
		{
			wait(0.05);
		}
	}
}

/*
	Name: function_5eefd8cc
	Namespace: namespace_34c3982c
	Checksum: 0x646D4621
	Offset: 0x3DC0
	Size: 0x26B
	Parameters: 0
	Flags: None
*/
function function_5eefd8cc()
{
	self endon("hash_643a7daf");
	self endon("hash_128f8789");
	self endon("hash_152cea71");
	self function_763a0b18(0.5, 0.5);
	var_f7fdecc8 = (level.var_a8cde67a, level.var_ced060e3, level.var_5cc8f1a8);
	var_6cac4ba4 = self function_f5430b67(var_f7fdecc8);
	self thread function_e1e81c23(level.var_b353f4c4, level.var_cd2a14bf);
	self.var_ea4a62a function_c0b6566f(var_6cac4ba4, level.var_f2f6bb73, level.var_98baefb2, level.var_cca7fbf6);
	wait(level.var_71452859);
	self function_763a0b18(0, 0.5);
	var_5b669c4e = (level.var_3786492b, level.var_1183cec2, level.var_eb815459);
	var_6cac4ba4 = self function_f5430b67(var_5b669c4e);
	self thread function_e1e81c23(level.var_9ab04381, level.var_1fe3ba00);
	self.var_ea4a62a function_c0b6566f(var_6cac4ba4, level.var_f82f9c0e, level.var_d0d9c3d3, level.var_f929cce9);
	wait(level.var_3830f2ec);
	self thread function_e1e81c23(level.var_29ea0d2, level.var_2bd8595);
	var_9fb101a3 = (level.var_6cd24960, level.var_92d4c3c9, level.var_b8d73e32);
	var_6cac4ba4 = self function_f5430b67(var_9fb101a3);
	self.var_ea4a62a function_c0b6566f(var_6cac4ba4, level.var_1756af11, level.var_9de91a84, level.var_b5195d4);
	wait(level.var_ca92fecf);
}

/*
	Name: function_66b612d
	Namespace: namespace_34c3982c
	Checksum: 0x6D6EDF56
	Offset: 0x4038
	Size: 0x123
	Parameters: 0
	Flags: None
*/
function function_66b612d()
{
	self endon("hash_643a7daf");
	self endon("hash_128f8789");
	var_7ba6849c = 0;
	while(1)
	{
		var_740386b3 = self function_1439c75a();
		self.var_fc0b6c3a = function_69c2f683(var_740386b3[0]) + function_69c2f683(var_740386b3[1]);
		if(self.var_fc0b6c3a < 1 && var_7ba6849c > 1)
		{
			self notify("hash_152cea71");
			self.var_ea4a62a function_c0b6566f((0, 0, 0), 1);
			wait(0.5);
		}
		if(self.var_fc0b6c3a > 1 && self.var_fc0b6c3a < 40)
		{
			function_c0938265();
		}
		wait(0.05);
		var_7ba6849c = self.var_fc0b6c3a;
	}
}

/*
	Name: function_a32df3aa
	Namespace: namespace_34c3982c
	Checksum: 0x15FEE990
	Offset: 0x4168
	Size: 0x1B3
	Parameters: 0
	Flags: None
*/
function function_a32df3aa()
{
	level.var_a8cde67a = level.var_8f8774d5;
	level.var_ced060e3 = level.var_6984fa6c;
	level.var_5cc8f1a8 = level.var_db8c69a7;
	level.var_f2f6bb73 = level.var_8d8840b7;
	level.var_98baefb2 = level.var_40f1057e;
	level.var_cca7fbf6 = level.var_cd24949a;
	level.var_71452859 = level.var_66ae20ea;
	level.var_b353f4c4 = level.var_c396df85;
	level.var_cd2a14bf = level.var_ae4f1734;
	level.var_3786492b = level.var_3781f860;
	level.var_1183cec2 = level.var_5d8472c9;
	level.var_eb815459 = level.var_8386ed32;
	level.var_f82f9c0e = level.var_6210de6e;
	level.var_d0d9c3d3 = level.var_dd3790f3;
	level.var_f929cce9 = level.var_2abf0589;
	level.var_3830f2ec = level.var_eac13797;
	level.var_9ab04381 = level.var_3f9e1bba;
	level.var_1fe3ba00 = level.var_80d43aed;
	level.var_6cd24960 = level.var_4d68f84b;
	level.var_92d4c3c9 = level.var_27667de2;
	level.var_b8d73e32 = level.var_1640379;
	level.var_1756af11 = level.var_49b7a58d;
	level.var_9de91a84 = level.var_373e9d48;
	level.var_b5195d4 = level.var_a109eca0;
	level.var_ca92fecf = level.var_f8205536;
	level.var_29ea0d2 = level.var_235b23b;
	level.var_2bd8595 = level.var_6dcb06fa;
}

/*
	Name: function_ab98bf97
	Namespace: namespace_34c3982c
	Checksum: 0x84339780
	Offset: 0x4328
	Size: 0x1B3
	Parameters: 0
	Flags: None
*/
function function_ab98bf97()
{
	level.var_a8cde67a = level.var_8f8774d5;
	level.var_ced060e3 = level.var_6984fa6c;
	level.var_5cc8f1a8 = level.var_db8c69a7;
	level.var_f2f6bb73 = level.var_8d8840b7;
	level.var_98baefb2 = level.var_40f1057e;
	level.var_cca7fbf6 = level.var_cd24949a;
	level.var_71452859 = level.var_66ae20ea;
	level.var_b353f4c4 = level.var_c396df85;
	level.var_cd2a14bf = level.var_ae4f1734;
	level.var_3786492b = level.var_3781f860;
	level.var_1183cec2 = level.var_5d8472c9;
	level.var_eb815459 = level.var_8386ed32;
	level.var_f82f9c0e = level.var_6210de6e;
	level.var_d0d9c3d3 = level.var_dd3790f3;
	level.var_f929cce9 = level.var_2abf0589;
	level.var_3830f2ec = level.var_eac13797;
	level.var_9ab04381 = level.var_3f9e1bba;
	level.var_1fe3ba00 = level.var_80d43aed;
	level.var_6cd24960 = level.var_4d68f84b;
	level.var_92d4c3c9 = level.var_27667de2;
	level.var_b8d73e32 = level.var_1640379;
	level.var_1756af11 = level.var_49b7a58d;
	level.var_9de91a84 = level.var_373e9d48;
	level.var_b5195d4 = level.var_a109eca0;
	level.var_ca92fecf = level.var_f8205536;
	level.var_29ea0d2 = level.var_235b23b;
	level.var_2bd8595 = level.var_6dcb06fa;
}

/*
	Name: function_c0938265
	Namespace: namespace_34c3982c
	Checksum: 0xA56751F9
	Offset: 0x44E8
	Size: 0x28B
	Parameters: 0
	Flags: None
*/
function function_c0938265()
{
	level.var_a8cde67a = 0.8 * level.var_8f8774d5;
	level.var_ced060e3 = 0.8 * level.var_6984fa6c;
	level.var_5cc8f1a8 = 0.8 * level.var_db8c69a7;
	level.var_f2f6bb73 = 0.8 * level.var_8d8840b7;
	level.var_98baefb2 = 0.8 * level.var_40f1057e;
	level.var_cca7fbf6 = 0.8 * level.var_cd24949a;
	level.var_71452859 = 0.8 * level.var_66ae20ea;
	level.var_b353f4c4 = 0.8 * level.var_c396df85;
	level.var_cd2a14bf = 0.8 * level.var_ae4f1734;
	level.var_3786492b = 0.8 * level.var_3781f860;
	level.var_1183cec2 = 0.8 * level.var_5d8472c9;
	level.var_eb815459 = 0.8 * level.var_8386ed32;
	level.var_f82f9c0e = 0.8 * level.var_6210de6e;
	level.var_d0d9c3d3 = 0.8 * level.var_dd3790f3;
	level.var_f929cce9 = 0.8 * level.var_2abf0589;
	level.var_3830f2ec = 0.8 * level.var_eac13797;
	level.var_9ab04381 = 0.8 * level.var_3f9e1bba;
	level.var_1fe3ba00 = 0.8 * level.var_80d43aed;
	level.var_6cd24960 = 0.8 * level.var_4d68f84b;
	level.var_92d4c3c9 = 0.8 * level.var_27667de2;
	level.var_b8d73e32 = 0.8 * level.var_1640379;
	level.var_1756af11 = 0.8 * level.var_49b7a58d;
	level.var_9de91a84 = 0.8 * level.var_373e9d48;
	level.var_b5195d4 = 0.8 * level.var_a109eca0;
	level.var_ca92fecf = 0.8 * level.var_f8205536;
	level.var_29ea0d2 = 0.8 * level.var_235b23b;
	level.var_2bd8595 = 0.8 * level.var_6dcb06fa;
}

/*
	Name: function_980b2358
	Namespace: namespace_34c3982c
	Checksum: 0xDB641C9D
	Offset: 0x4780
	Size: 0x183
	Parameters: 0
	Flags: None
*/
function function_980b2358()
{
	level.var_8f8774d5 = 0;
	level.var_6984fa6c = 0;
	level.var_db8c69a7 = 1;
	level.var_8d8840b7 = 0.6;
	level.var_40f1057e = 0.55;
	level.var_cd24949a = 0.05;
	level.var_66ae20ea = 0.6;
	level.var_c396df85 = 120;
	level.var_ae4f1734 = 0.2;
	level.var_3781f860 = 0;
	level.var_5d8472c9 = 0;
	level.var_8386ed32 = 4;
	level.var_6210de6e = 0.4;
	level.var_dd3790f3 = 0.35;
	level.var_2abf0589 = 0.05;
	level.var_eac13797 = 0.4;
	level.var_3f9e1bba = 130;
	level.var_80d43aed = 0.2;
	level.var_4d68f84b = 0;
	level.var_27667de2 = 0;
	level.var_1640379 = 0;
	level.var_49b7a58d = 0.5;
	level.var_373e9d48 = 0.45;
	level.var_a109eca0 = 0.05;
	level.var_f8205536 = 0.5;
	level.var_235b23b = 40;
	level.var_6dcb06fa = 0.5;
}

/*
	Name: function_40b3cd00
	Namespace: namespace_34c3982c
	Checksum: 0x91ECB5B6
	Offset: 0x4910
	Size: 0x183
	Parameters: 0
	Flags: None
*/
function function_40b3cd00()
{
	level.var_8f8774d5 = 0;
	level.var_6984fa6c = 5;
	level.var_db8c69a7 = -1;
	level.var_8d8840b7 = 0.6;
	level.var_40f1057e = 0.55;
	level.var_cd24949a = 0.05;
	level.var_66ae20ea = 0.6;
	level.var_c396df85 = 120;
	level.var_ae4f1734 = 0.2;
	level.var_3781f860 = 0;
	level.var_5d8472c9 = 1;
	level.var_8386ed32 = 3;
	level.var_6210de6e = 0.4;
	level.var_dd3790f3 = 0.35;
	level.var_2abf0589 = 0.05;
	level.var_eac13797 = 0.4;
	level.var_3f9e1bba = 130;
	level.var_80d43aed = 0.2;
	level.var_4d68f84b = 0;
	level.var_27667de2 = 0;
	level.var_1640379 = 0;
	level.var_49b7a58d = 0.5;
	level.var_373e9d48 = 0.45;
	level.var_a109eca0 = 0.05;
	level.var_f8205536 = 0.5;
	level.var_235b23b = 40;
	level.var_6dcb06fa = 0.5;
}

/*
	Name: function_40ca28b
	Namespace: namespace_34c3982c
	Checksum: 0x21D2A417
	Offset: 0x4AA0
	Size: 0x187
	Parameters: 0
	Flags: None
*/
function function_40ca28b()
{
	level.var_8f8774d5 = -2;
	level.var_6984fa6c = -5;
	level.var_db8c69a7 = 3.5;
	level.var_8d8840b7 = 0.35;
	level.var_40f1057e = 0.3;
	level.var_cd24949a = 0.05;
	level.var_66ae20ea = 0.5;
	level.var_c396df85 = 105;
	level.var_ae4f1734 = 0.35;
	level.var_3781f860 = 1;
	level.var_5d8472c9 = -1;
	level.var_8386ed32 = 2;
	level.var_6210de6e = 0.5;
	level.var_dd3790f3 = 0.35;
	level.var_2abf0589 = 0.05;
	level.var_eac13797 = 0.4;
	level.var_3f9e1bba = 130;
	level.var_80d43aed = 0.2;
	level.var_4d68f84b = 0;
	level.var_27667de2 = 0;
	level.var_1640379 = 0;
	level.var_49b7a58d = 0.5;
	level.var_373e9d48 = 0.25;
	level.var_a109eca0 = 0.05;
	level.var_f8205536 = 0.5;
	level.var_235b23b = 90;
	level.var_6dcb06fa = 0.2;
}

/*
	Name: function_f5430b67
	Namespace: namespace_34c3982c
	Checksum: 0x6DD167A3
	Offset: 0x4C30
	Size: 0x137
	Parameters: 1
	Flags: None
*/
function function_f5430b67(var_cb29ad00)
{
	self endon("hash_643a7daf");
	self endon("hash_128f8789");
	var_ba8b2edd = var_cb29ad00[0];
	var_b7b9fb33 = var_cb29ad00[2];
	var_7d94cf0c = function_298b8148(self.var_6ab6f4fd);
	var_637af9e8 = function_bc7ce905(self.var_6ab6f4fd);
	var_22f51d2d = (var_7d94cf0c[0], 0, var_7d94cf0c[1] * -1);
	var_67abfb41 = (var_637af9e8[0], 0, var_637af9e8[1] * -1);
	var_6cac4ba4 = var_22f51d2d * var_ba8b2edd;
	var_6cac4ba4 = var_6cac4ba4 + var_67abfb41 * var_b7b9fb33;
	return var_6cac4ba4 + (0, var_cb29ad00[1], 0);
}

/*
	Name: function_e1e81c23
	Namespace: namespace_34c3982c
	Checksum: 0xEA8FCBB1
	Offset: 0x4D70
	Size: 0x1A3
	Parameters: 2
	Flags: None
*/
function function_e1e81c23(var_a6b1619d, var_78962fff)
{
	self endon("hash_643a7daf");
	self endon("hash_128f8789");
	var_6d63a9b5 = function_4bd0142f("g_speed");
	var_f44c8c7e = var_a6b1619d;
	if(isdefined(self.var_355c87a5))
	{
		var_f44c8c7e = var_a6b1619d * self.var_355c87a5;
	}
	if(!isdefined(self.var_c217e840))
	{
		self.var_c217e840 = var_6d63a9b5;
	}
	var_e8ea412b = var_f44c8c7e - var_6d63a9b5;
	var_3d5dc0df = 0.05;
	var_18763f91 = var_78962fff / var_3d5dc0df;
	var_60abd92a = var_e8ea412b / var_18763f91;
	while(function_69c2f683(var_f44c8c7e - var_6d63a9b5) > function_69c2f683(var_60abd92a * 1.1))
	{
		var_6d63a9b5 = var_6d63a9b5 + var_60abd92a;
		function_6c1294b8("g_speed", function_b6b79a0(var_6d63a9b5));
		wait(var_3d5dc0df);
	}
	function_6c1294b8("g_speed", var_f44c8c7e);
}

/*
	Name: function_3ec4c691
	Namespace: namespace_34c3982c
	Checksum: 0x677DE91A
	Offset: 0x4F20
	Size: 0x4AB
	Parameters: 0
	Flags: None
*/
function function_3ec4c691()
{
	var_5cca3f31 = function_6ada35ba("trig_enable_zuirch_ending", "targetname");
	var_5cca3f31.var_722885f3 = var_5cca3f31.var_722885f3 + VectorScale((0, 0, 1), 1000);
	var_5cca3f31 function_175e6b8e(0);
	level.var_64b9a8b0 = 1;
	level namespace_cc27597::function_c35e6aab("cin_zmcp_20_01_plaza_1st_outro");
	namespace_cc27597::function_8f9f34e0("cin_zmcp_20_01_plaza_1st_outro", &function_95ed5d29, "play");
	namespace_cc27597::function_8f9f34e0("cin_zmcp_20_01_plaza_1st_outro", &function_72f4ee18, "play");
	namespace_cc27597::function_8f9f34e0("cin_zmcp_20_01_plaza_1st_player", &function_93ffcbdf, "play");
	namespace_cc27597::function_8f9f34e0("cin_zmcp_20_01_plaza_1st_player", &function_7e39583d, "done");
	level namespace_ad23e503::function_1ab5ebec("atrium_hack_objective_start");
	level namespace_ad23e503::function_1ab5ebec("BZM_ZURICHDialogue23");
	var_5cca3f31 = function_6ada35ba("trig_enable_zuirch_ending", "targetname");
	var_5cca3f31.var_722885f3 = var_5cca3f31.var_722885f3 + VectorScale((0, 0, -1), 1000);
	wait(0.2);
	var_5cca3f31 namespace_8e9083ff::function_d1996775();
	level notify("hash_21ddc441");
	level namespace_71e9cb84::function_74d6b22f("set_post_color_grade_bank", 1);
	namespace_84970cc4::function_966ecb29(level.var_2395e945, &namespace_8e9083ff::function_3e4d643b, 1);
	namespace_80983c42::function_80983c42("plaza_lights");
	level namespace_8e9083ff::function_b0f0dd1f(1, "reverse_snow");
	level namespace_ad23e503::function_74d6b22f("flag_start_zurich_outro");
	if(isdefined(level.var_28ed7259))
	{
		level thread [[level.var_28ed7259]]();
	}
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_4044e31f = var_5dc5e20a function_da26566c();
		foreach(var_dfcc01fd in var_4044e31f)
		{
			if(var_dfcc01fd.var_84690dfd)
			{
				var_5dc5e20a function_1f3745c0(var_dfcc01fd);
			}
		}
	}
	namespace_ccb8d056::function_c1cdedfb("none");
	function_37cbcf1a("evt_bonuszm_ending_zombies", (0, 0, 0));
	level namespace_71e9cb84::function_74d6b22f("gameplay_started", 0);
	level thread namespace_cc27597::function_43718187("cin_zmcp_20_01_plaza_1st_player");
	level thread namespace_cc27597::function_43718187("cin_zmcp_20_01_plaza_1st_outro");
}

/*
	Name: function_7e39583d
	Namespace: namespace_34c3982c
	Checksum: 0x4F39D3F8
	Offset: 0x53D8
	Size: 0x2A1
	Parameters: 1
	Flags: None
*/
function function_7e39583d(var_2395e945)
{
	self endon("hash_128f8789");
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		foreach(var_e6ef2725 in level.var_2395e945)
		{
			var_5dc5e20a function_64218ffc(var_e6ef2725, 1);
		}
		var_5dc5e20a function_faf8f736(0);
		var_5dc5e20a function_1b947e2a("hud_visible", 0);
		var_5dc5e20a function_1b947e2a("weapon_hud_visible", 0);
		var_4044e31f = var_5dc5e20a function_da26566c();
		foreach(var_dfcc01fd in var_4044e31f)
		{
			var_5dc5e20a function_1f3745c0(var_dfcc01fd);
		}
		var_ff9507e1 = function_c4d5ec1f("shotgun_pump");
		var_5dc5e20a function_860a040a(var_ff9507e1);
		var_5dc5e20a function_67795b5f(var_ff9507e1, var_ff9507e1.var_c0b2188);
		var_5dc5e20a function_cb53a41e(var_ff9507e1);
	}
}

/*
	Name: function_93ffcbdf
	Namespace: namespace_34c3982c
	Checksum: 0xCAC08B1D
	Offset: 0x5688
	Size: 0x30B
	Parameters: 1
	Flags: None
*/
function function_93ffcbdf(var_c77d2837)
{
	if(isdefined(level.var_c40a6ffc))
	{
		[[level.var_c40a6ffc]]();
	}
	function_37cbcf1a("evt_bonuszm_ending_toblack", (0, 0, 0));
	level namespace_71e9cb84::function_74d6b22f("sndIGCsnapshot", 5);
	level namespace_82b91a51::function_77f8007d();
	namespace_82b91a51::function_7e61de2b(0);
	namespace_ccb8d056::function_c1cdedfb("i_live_credits");
	wait(1);
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		foreach(var_e6ef2725 in level.var_2395e945)
		{
			var_5dc5e20a function_64218ffc(var_e6ef2725, 0);
		}
		var_4044e31f = var_5dc5e20a function_da26566c();
		foreach(var_dfcc01fd in var_4044e31f)
		{
			var_5dc5e20a function_1f3745c0(var_dfcc01fd);
			var_5dc5e20a function_faf8f736(1);
			var_5dc5e20a namespace_82b91a51::function_16c71b8(1);
		}
	}
	if(isdefined(self.var_322cc58c))
	{
		self function_2b74b70a(self.var_322cc58c);
	}
	namespace_d0ef8521::function_31cd1834("cp_level_zurich_end_obj");
	namespace_4dbf3ae3::function_42e87952("trig_zurich_end", "targetname");
	namespace_1d795d47::function_be8adfb8("zurich_outro");
}

/*
	Name: function_72f4ee18
	Namespace: namespace_34c3982c
	Checksum: 0x6487CC74
	Offset: 0x59A0
	Size: 0x91
	Parameters: 1
	Flags: None
*/
function function_72f4ee18(var_c77d2837)
{
	foreach(var_a3d46ee4 in var_c77d2837)
	{
		var_a3d46ee4 function_cea50a94(1);
	}
}

