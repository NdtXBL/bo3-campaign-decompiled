#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_zurich_newworld;
#using scripts\cp\cp_mi_zurich_newworld_accolades;
#using scripts\cp\cp_mi_zurich_newworld_sound;
#using scripts\cp\cp_mi_zurich_newworld_util;
#using scripts\cp\cybercom\_cybercom;
#using scripts\cp\cybercom\_cybercom_gadget;
#using scripts\cp\cybercom\_cybercom_gadget_system_overload;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_save;
#using scripts\shared\ai_shared;
#using scripts\shared\animation_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\fx_shared;
#using scripts\shared\math_shared;
#using scripts\shared\player_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\vehicle_shared;

#namespace namespace_36358f9c;

/*
	Name: function_c862f707
	Namespace: namespace_36358f9c
	Checksum: 0x1879FCE8
	Offset: 0x33D0
	Size: 0x1CB
	Parameters: 2
	Flags: None
*/
function function_c862f707(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		namespace_d7916d65::function_a2995f22();
		level thread namespace_ce0e5f06::function_30ec5bf7(1);
		break;
	}
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a namespace_ce0e5f06::function_974050f();
	}
	namespace_ce0e5f06::function_3383b379();
	namespace_76d95162::function_d9f49fba(0);
	level.var_88590003 = namespace_2f06d687::function_7387a40a("chase_bomber", &function_d29dd4ef);
	namespace_82b91a51::function_67520c6a(2, undefined, &function_62976d31);
	var_b2afdf94 = function_6ada35ba("nw_apt_breach_decals", "targetname");
	var_b2afdf94 function_50ccee8d();
	function_520a8e67();
	namespace_1d795d47::function_be8adfb8(var_b04bc952);
}

/*
	Name: function_8aa535bd
	Namespace: namespace_36358f9c
	Checksum: 0x3EB9A979
	Offset: 0x35A8
	Size: 0x93
	Parameters: 4
	Flags: None
*/
function function_8aa535bd(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	if(!level namespace_ad23e503::function_dbca4c5d("chase_done"))
	{
		level namespace_ad23e503::function_c35e6aab("chase_done");
	}
	level thread namespace_37a1dc33::function_cd261d0b();
	level thread namespace_37a1dc33::function_323baa37();
}

/*
	Name: function_520a8e67
	Namespace: namespace_36358f9c
	Checksum: 0xA4800FF1
	Offset: 0x3648
	Size: 0x2EF
	Parameters: 0
	Flags: None
*/
function function_520a8e67()
{
	level namespace_cc27597::function_c35e6aab("cin_new_05_01_apartmentbreach_1st_sh010");
	namespace_ce0e5f06::function_83a7d040();
	if(isdefined(level.var_a6976069) && level.var_a6976069)
	{
		namespace_82b91a51::function_11a89b44(undefined, undefined, 7);
	}
	else
	{
		namespace_82b91a51::function_11a89b44();
	}
	level thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_newworld_chase_door_breach_bundle");
	level thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_newworld_chase_window_break_bundle");
	level thread function_d8ddf1d9();
	level thread function_b444c7bc();
	namespace_cc27597::function_8f9f34e0("cin_new_05_01_apartmentbreach_1st_sh010", &function_985304c3);
	namespace_cc27597::function_8f9f34e0("cin_new_05_01_apartmentbreach_1st_sh010", &function_34fb5ce3, "play");
	namespace_cc27597::function_8f9f34e0("cin_new_05_01_apartmentbreach_3rd_sh020", &function_241c1e7a, "play");
	namespace_cc27597::function_8f9f34e0("cin_new_05_01_apartmentbreach_3rd_sh070", &function_397c0ec9, "play");
	namespace_cc27597::function_8f9f34e0("cin_new_05_01_apartmentbreach_3rd_sh080", &function_8cdb5361, "play");
	namespace_cc27597::function_8f9f34e0("cin_new_05_01_apartmentbreach_3rd_sh100", &function_f28939ed, "play");
	namespace_cc27597::function_8f9f34e0("cin_new_05_01_apartmentbreach_3rd_sh110", &function_617b7548, "play");
	namespace_cc27597::function_8f9f34e0("cin_new_05_01_apartmentbreach_3rd_sh130", &function_98ec301e, "play");
	namespace_cc27597::function_8f9f34e0("cin_new_05_01_apartmentbreach_1st_sh140", &function_6d1ffabf, "done");
	if(isdefined(level.var_2a8a13fb))
	{
		level thread [[level.var_2a8a13fb]]();
	}
	level namespace_cc27597::function_43718187("cin_new_05_01_apartmentbreach_1st_sh010");
	namespace_ce0e5f06::function_c07e7f7d(0);
	level waittill("hash_6d1ffabf");
}

/*
	Name: function_985304c3
	Namespace: namespace_36358f9c
	Checksum: 0xD23B29DC
	Offset: 0x3940
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function function_985304c3(var_c77d2837)
{
	level namespace_ad23e503::function_9d134160("infinite_white_transition");
	namespace_84970cc4::function_966ecb29(level.var_9b1393e7, &namespace_ce0e5f06::function_737d2864, &"CP_MI_ZURICH_NEWWORLD_LOCATION_ROOFTOPS", &"CP_MI_ZURICH_NEWWORLD_TIME_ROOFTOPS");
}

/*
	Name: function_d8ddf1d9
	Namespace: namespace_36358f9c
	Checksum: 0x2F028E5
	Offset: 0x39B0
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_d8ddf1d9()
{
	level.var_88590003 namespace_71e9cb84::function_74d6b22f("chase_suspect_fx", 0);
	level waittill("hash_fc2a0798");
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_newworld_chase_door_breach_bundle");
}

/*
	Name: function_b444c7bc
	Namespace: namespace_36358f9c
	Checksum: 0x5FFB4420
	Offset: 0x3A08
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_b444c7bc()
{
	level waittill("hash_d2bb9806");
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_newworld_chase_window_break_bundle");
}

/*
	Name: function_34fb5ce3
	Namespace: namespace_36358f9c
	Checksum: 0xE1FBBFFA
	Offset: 0x3A40
	Size: 0xA3
	Parameters: 1
	Flags: None
*/
function function_34fb5ce3(var_c77d2837)
{
	var_c4ba82be = function_c4d5ec1f("ar_fastburst");
	var_c77d2837["gunfire01"] thread function_b81a9fbb(var_c4ba82be);
	var_c77d2837["gunfire02"] thread function_b81a9fbb(var_c4ba82be);
	var_c77d2837["gunfire03"] thread function_b81a9fbb(var_c4ba82be);
}

/*
	Name: function_b81a9fbb
	Namespace: namespace_36358f9c
	Checksum: 0x65D6855F
	Offset: 0x3AF0
	Size: 0x87
	Parameters: 1
	Flags: None
*/
function function_b81a9fbb(var_26fbc878)
{
	level endon("hash_d2197033");
	while(1)
	{
		self waittill("hash_c7569801");
		var_491bc153 = self.var_722885f3 + function_bc7ce905(self.var_6ab6f4fd) * 1000;
		function_87f3c622(var_26fbc878, self.var_722885f3, var_491bc153);
	}
}

/*
	Name: function_241c1e7a
	Namespace: namespace_36358f9c
	Checksum: 0xF7F5EF2
	Offset: 0x3B80
	Size: 0x1E3
	Parameters: 1
	Flags: None
*/
function function_241c1e7a(var_c77d2837)
{
	level notify("hash_d2197033");
	var_c77d2837["apartment_igc_robot01"] namespace_d84e54db::function_b4f5e3b9(1);
	var_c77d2837["apartment_igc_robot01"] namespace_d84e54db::function_c9e45d52(1);
	var_c77d2837["apartment_igc_robot02"] namespace_d84e54db::function_b4f5e3b9(1);
	var_c77d2837["apartment_igc_robot02"] namespace_d84e54db::function_c9e45d52(1);
	var_c77d2837["apartment_igc_robot02"] function_25b39be3(1);
	var_c77d2837["apartment_igc_robot03"] namespace_d84e54db::function_b4f5e3b9(1);
	var_c77d2837["apartment_igc_robot03"] namespace_d84e54db::function_c9e45d52(1);
	var_c77d2837["apartment_igc_robot04"] namespace_d84e54db::function_b4f5e3b9(1);
	var_c77d2837["apartment_igc_robot04"] namespace_d84e54db::function_c9e45d52(1);
	var_c77d2837["apartment_igc_robot04"] function_25b39be3(1);
	var_b2afdf94 = function_6ada35ba("nw_apt_breach_decals", "targetname");
	var_b2afdf94 function_48f26766();
}

/*
	Name: function_397c0ec9
	Namespace: namespace_36358f9c
	Checksum: 0x77D6BB35
	Offset: 0x3D70
	Size: 0x14B
	Parameters: 1
	Flags: None
*/
function function_397c0ec9(var_c77d2837)
{
	var_c77d2837["chase_bomber_ai"] function_25b39be3(1);
	var_c77d2837["chase_bomber_ai"] waittill("hash_c2e27e50");
	var_71a9a72e = function_9b7fda5e("script_origin", (0, 0, 0));
	var_71a9a72e function_c2931a36("evt_time_freeze_loop", 0.5);
	function_bea2b721(1);
	namespace_ce0e5f06::function_85d8906c();
	level waittill("hash_e58361f7");
	var_71a9a72e function_eaa69754(0.5);
	var_71a9a72e function_dc8c8404();
	function_bea2b721(0);
	namespace_ce0e5f06::function_3383b379();
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_newworld_chase_air_traffic_hunters_01_bundle");
}

/*
	Name: function_8cdb5361
	Namespace: namespace_36358f9c
	Checksum: 0x10EB5E26
	Offset: 0x3EC8
	Size: 0x83
	Parameters: 1
	Flags: None
*/
function function_8cdb5361(var_c77d2837)
{
	var_1c26230b = var_c77d2837["taylor"];
	var_1c26230b function_25b39be3(1);
	var_1c26230b function_8c8e79fe();
	var_1c26230b waittill("hash_f855e936");
	var_1c26230b thread namespace_ce0e5f06::function_c949a8ed(1);
}

/*
	Name: function_f28939ed
	Namespace: namespace_36358f9c
	Checksum: 0xE8A95219
	Offset: 0x3F58
	Size: 0x83
	Parameters: 1
	Flags: None
*/
function function_f28939ed(var_c77d2837)
{
	var_2dca8767 = var_c77d2837["hall"];
	var_2dca8767 function_25b39be3(1);
	var_2dca8767 function_8c8e79fe();
	var_2dca8767 waittill("hash_f855e936");
	var_2dca8767 function_48f26766();
}

/*
	Name: function_617b7548
	Namespace: namespace_36358f9c
	Checksum: 0x5460DB6B
	Offset: 0x3FE8
	Size: 0x7B
	Parameters: 1
	Flags: None
*/
function function_617b7548(var_c77d2837)
{
	var_c77d2837["apartment_igc_book"] function_fef374cd();
	var_c77d2837["apartment_igc_book"] function_cea50a94(1);
	var_c77d2837["apartment_igc_book"] function_25b39be3(1);
}

/*
	Name: function_98ec301e
	Namespace: namespace_36358f9c
	Checksum: 0x242BC6F4
	Offset: 0x4070
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_98ec301e(var_c77d2837)
{
	var_1c26230b = var_c77d2837["taylor"];
	var_1c26230b waittill("hash_32fc12d3");
	var_1c26230b thread namespace_ce0e5f06::function_4943984c();
}

/*
	Name: function_6d1ffabf
	Namespace: namespace_36358f9c
	Checksum: 0x5E8FF492
	Offset: 0x40C8
	Size: 0x19
	Parameters: 1
	Flags: None
*/
function function_6d1ffabf(var_c77d2837)
{
	level notify("hash_6d1ffabf");
}

/*
	Name: function_35d96059
	Namespace: namespace_36358f9c
	Checksum: 0xAB235569
	Offset: 0x40F0
	Size: 0x463
	Parameters: 2
	Flags: None
*/
function function_35d96059(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		level.var_88590003 = namespace_2f06d687::function_7387a40a("chase_bomber", &function_d29dd4ef);
		function_f423f05a(var_b04bc952);
		function_62976d31();
		level thread namespace_cc27597::function_5c143f59("p7_fxanim_cp_newworld_chase_door_breach_bundle");
		level thread namespace_cc27597::function_5c143f59("p7_fxanim_cp_newworld_chase_window_break_bundle");
		level namespace_cc27597::function_c35e6aab("cin_new_06_01_chase_vign_takedown");
		namespace_76d95162::function_d9f49fba(0);
		namespace_d7916d65::function_a2995f22();
	}
	level thread function_92fdb1da();
	level.var_67e1f60e[0] = &function_3936e284;
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a namespace_9f824288::function_bee608f0("b_nw_accolade_11_failed", 0);
		var_5dc5e20a namespace_9f824288::function_bee608f0("b_nw_accolade_12_failed", 0);
		var_5dc5e20a namespace_9f824288::function_bee608f0("b_has_done_chase", 0);
	}
	namespace_82b91a51::function_67520c6a(0.6, undefined, &namespace_ce0e5f06::function_3e37f48b, 0);
	namespace_dabbe128::function_95670def(&function_25e57b80);
	function_f423f05a(var_b04bc952);
	namespace_4dbf3ae3::function_42e87952("chase_hall_start_color", undefined, undefined, 0);
	namespace_82b91a51::function_93831e79(var_b04bc952);
	level thread function_fb28b377("chase_street_traffic_location3");
	level thread function_fb28b377("chase_street_traffic_location4");
	level thread namespace_e38c3c58::function_606b7b8();
	level.var_2dca8767 namespace_d84e54db::function_b4f5e3b9(1);
	level.var_2dca8767 namespace_d84e54db::function_c9e45d52(1);
	level thread function_6a59765b();
	level thread function_59e96bfa(var_74cd64bc);
	level thread function_11eee9db(var_b04bc952);
	level thread function_ef62a489();
	level thread function_9c1b6d95();
	level thread function_28aaa11a(30);
	level namespace_ad23e503::function_1ab5ebec("apartment_jump_down");
	level thread function_cd5444f4();
	level namespace_ad23e503::function_1ab5ebec("bridge_collapse_start");
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_newworld_chase_air_traffic_hunters_03_bundle");
	namespace_1d795d47::function_be8adfb8(var_b04bc952);
}

/*
	Name: function_62976d31
	Namespace: namespace_36358f9c
	Checksum: 0x8AFDC589
	Offset: 0x4560
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_62976d31()
{
	function_2a977ed8();
	function_22fba3d2();
}

/*
	Name: function_9c1b6d95
	Namespace: namespace_36358f9c
	Checksum: 0x306EF137
	Offset: 0x4590
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_9c1b6d95()
{
	namespace_4dbf3ae3::function_1ab5ebec("start_fxanim_hunter2");
	namespace_80983c42::function_593e8a39("cin_new_05_01_sun_on");
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_newworld_chase_air_traffic_hunters_02_bundle");
}

/*
	Name: function_d29dd4ef
	Namespace: namespace_36358f9c
	Checksum: 0xB5B9BB41
	Offset: 0x45F0
	Size: 0xE3
	Parameters: 0
	Flags: None
*/
function function_d29dd4ef()
{
	self function_80765127();
	self namespace_d84e54db::function_c9e45d52(1);
	self namespace_d84e54db::function_b4f5e3b9(1);
	self namespace_d84e54db::function_3c155012();
	self namespace_d84e54db::function_ceb883cd("sprint", 1);
	self.var_44a68a57 = &function_2204603a;
	self.var_7dfaf62 = 16;
	self.var_ff1f6868 = "chase_glass_ceiling_igc";
	self.var_69dd5d62 = 0;
	self.var_342d9e3a = 1;
	self thread function_cf7f00d();
}

/*
	Name: function_2204603a
	Namespace: namespace_36358f9c
	Checksum: 0x1AB70624
	Offset: 0x46E0
	Size: 0xD3
	Parameters: 13
	Flags: None
*/
function function_2204603a(var_51e6a548, var_3a212fd7, var_f9a179ed, var_bf827987, var_ba36487d, var_dfcc01fd, var_88482219, var_e8bb43ee, var_a77ad8eb, var_a5cf2304, var_ad8afadc, var_ae725cb8, var_f105c26b)
{
	if(function_65f192a6(var_3a212fd7))
	{
		var_3a212fd7 thread function_9c291f73();
	}
	else
	{
		var_f9a179ed = 0;
		return var_f9a179ed;
	}
	var_f9a179ed = function_b6b79a0(var_f9a179ed * 0.25);
	return var_f9a179ed;
}

/*
	Name: function_cf7f00d
	Namespace: namespace_36358f9c
	Checksum: 0xE1F5FC11
	Offset: 0x47C0
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_cf7f00d()
{
	level endon("hash_c1a074c7");
	self waittill("hash_128f8789");
	level notify("hash_f584427c");
	namespace_82b91a51::function_207f8667(&"CP_MI_ZURICH_NEWWORLD_SUSPECT_KILLED", &"CP_MI_ZURICH_NEWWORLD_SUSPECT_KILLED_HINT");
}

/*
	Name: function_22fba3d2
	Namespace: namespace_36358f9c
	Checksum: 0xC1E0D729
	Offset: 0x4818
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_22fba3d2()
{
	level namespace_cc27597::function_c35e6aab("p7_fxanim_cp_newworld_bridge_collapse_bundle_init");
	namespace_82b91a51::function_76f13293();
}

/*
	Name: function_67d7546
	Namespace: namespace_36358f9c
	Checksum: 0x345AC39C
	Offset: 0x4858
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_67d7546()
{
	self namespace_82b91a51::function_958c7633();
	self function_ca711294("allies");
	self namespace_d84e54db::function_c9e45d52(1);
	self namespace_d84e54db::function_b4f5e3b9(1);
}

/*
	Name: function_112af5d1
	Namespace: namespace_36358f9c
	Checksum: 0x1A6907A3
	Offset: 0x48D0
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_112af5d1()
{
	level.var_79ddcc8b = namespace_2f06d687::function_7387a40a("chase_hunter", &function_67d7546);
	level namespace_cc27597::function_c35e6aab("p7_fxanim_cp_newworld_bridge_collapse_hunter_bundle", function_84970cc4(level.var_79ddcc8b));
}

/*
	Name: function_cd5444f4
	Namespace: namespace_36358f9c
	Checksum: 0xDD171B8E
	Offset: 0x4940
	Size: 0x1B3
	Parameters: 0
	Flags: None
*/
function function_cd5444f4()
{
	namespace_2f06d687::function_2b37a3c9("patio_robot", "script_noteworthy", &function_cdb6a55c);
	level thread function_480f8035();
	namespace_d5067552::function_bae40a28("sm_patio_robots");
	namespace_d5067552::function_347e835a("sm_patio_robots");
	var_f49fea10 = namespace_2f06d687::function_289e6fd1("bar_2nd_floor_robot");
	foreach(var_d84e54db in var_f49fea10)
	{
		level.var_2dca8767 function_76aa5b30(var_d84e54db, 1);
	}
	namespace_4dbf3ae3::function_1ab5ebec("bar_hall_uses_cybercore");
	var_64e85e6d = namespace_2f06d687::function_289e6fd1("bar_1st_floor_robot");
	var_d84e54db = namespace_84970cc4::function_47d18840(var_64e85e6d);
	function_e1109a4f(function_84970cc4(var_d84e54db));
}

/*
	Name: function_cdb6a55c
	Namespace: namespace_36358f9c
	Checksum: 0xF63C43BB
	Offset: 0x4B00
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_cdb6a55c()
{
	self.var_15dfd6c = 0.1;
	self.var_3a90f16b = function_b6b79a0(self.var_3a90f16b * 0.5);
}

/*
	Name: function_188e9064
	Namespace: namespace_36358f9c
	Checksum: 0x71B88473
	Offset: 0x4B50
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_188e9064()
{
	level namespace_ad23e503::function_1ab5ebec("apartment_jump_down");
	var_7125f45d = namespace_14b42b8a::function_7faf4c39("patio_glass_break", "targetname");
	namespace_84970cc4::function_966ecb29(var_7125f45d, &function_8efffbca);
}

/*
	Name: function_92fdb1da
	Namespace: namespace_36358f9c
	Checksum: 0x5F11746A
	Offset: 0x4BD0
	Size: 0x10B
	Parameters: 0
	Flags: None
*/
function function_92fdb1da()
{
	var_edc6e0e1 = namespace_96fa87af::function_7387a40a("chase_air_traffic_start");
	var_edc6e0e1 thread namespace_96fa87af::function_edb3a94e(function_243bb261(var_edc6e0e1.var_b07228b6, "targetname"));
	var_c49819b1 = namespace_96fa87af::function_7387a40a("chase_air_traffic_start2");
	var_c49819b1 thread namespace_96fa87af::function_edb3a94e(function_243bb261(var_c49819b1.var_b07228b6, "targetname"));
	var_9e959f48 = namespace_96fa87af::function_7387a40a("chase_air_traffic_start3");
	var_9e959f48 thread namespace_96fa87af::function_edb3a94e(function_243bb261(var_9e959f48.var_b07228b6, "targetname"));
}

/*
	Name: function_1c5d5613
	Namespace: namespace_36358f9c
	Checksum: 0x3CB35B85
	Offset: 0x4CE8
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function function_1c5d5613(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
}

/*
	Name: function_9a9ab34a
	Namespace: namespace_36358f9c
	Checksum: 0x5786501A
	Offset: 0x4D18
	Size: 0x167
	Parameters: 0
	Flags: None
*/
function function_9a9ab34a()
{
	self endon("hash_128f8789");
	self endon("hash_34427886");
	if(isdefined(30))
	{
		var_a78a7a9e = function_a8fb77bd();
		var_a78a7a9e endon("hash_4573206");
		var_a78a7a9e namespace_82b91a51::function_6729b6ba(30, "timeout");
	}
	self namespace_ad23e503::function_c35e6aab("sprint_tutorial");
	self thread function_778a3080();
	while(!self namespace_ad23e503::function_7922262b("sprint_tutorial"))
	{
		self thread namespace_82b91a51::function_32d40124(&"CP_MI_ZURICH_NEWWORLD_SPRINT_TUTORIAL", 0, undefined, 4);
		self namespace_ad23e503::function_d266a8b4(4, "sprint_tutorial");
		self thread namespace_82b91a51::function_f9e5537b(1);
		if(!self namespace_ad23e503::function_7922262b("sprint_tutorial"))
		{
			self namespace_ad23e503::function_d266a8b4(3, "sprint_tutorial");
		}
	}
}

/*
	Name: function_778a3080
	Namespace: namespace_36358f9c
	Checksum: 0x8048EC8D
	Offset: 0x4E88
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_778a3080()
{
	self endon("hash_128f8789");
	if(isdefined(30))
	{
		var_a78a7a9e = function_a8fb77bd();
		var_a78a7a9e endon("hash_4573206");
		var_a78a7a9e namespace_82b91a51::function_6729b6ba(30, "timeout");
	}
	while(1)
	{
		if(self function_f3b38c23())
		{
			break;
		}
		wait(0.1);
	}
	self namespace_ad23e503::function_74d6b22f("sprint_tutorial");
}

/*
	Name: function_144ffd5
	Namespace: namespace_36358f9c
	Checksum: 0x886C13EA
	Offset: 0x4F48
	Size: 0x167
	Parameters: 0
	Flags: None
*/
function function_144ffd5()
{
	self endon("hash_128f8789");
	self endon("hash_34427886");
	if(isdefined(30))
	{
		var_a78a7a9e = function_a8fb77bd();
		var_a78a7a9e endon("hash_4573206");
		var_a78a7a9e namespace_82b91a51::function_6729b6ba(30, "timeout");
	}
	self namespace_ad23e503::function_c35e6aab("slide_tutorial");
	self thread function_5bef9ce1();
	while(!self namespace_ad23e503::function_7922262b("slide_tutorial"))
	{
		self thread namespace_82b91a51::function_32d40124(&"CP_MI_ZURICH_NEWWORLD_SLIDE_TUTORIAL", 0, undefined, 4);
		self namespace_ad23e503::function_d266a8b4(4, "slide_tutorial");
		self thread namespace_82b91a51::function_f9e5537b(1);
		if(!self namespace_ad23e503::function_7922262b("slide_tutorial"))
		{
			self namespace_ad23e503::function_d266a8b4(3, "slide_tutorial");
		}
	}
}

/*
	Name: function_5bef9ce1
	Namespace: namespace_36358f9c
	Checksum: 0x6A293273
	Offset: 0x50B8
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_5bef9ce1()
{
	self endon("hash_128f8789");
	if(isdefined(30))
	{
		var_a78a7a9e = function_a8fb77bd();
		var_a78a7a9e endon("hash_4573206");
		var_a78a7a9e namespace_82b91a51::function_6729b6ba(30, "timeout");
	}
	while(1)
	{
		if(self function_5b77ca95())
		{
			break;
		}
		wait(0.1);
	}
	self namespace_ad23e503::function_74d6b22f("slide_tutorial");
}

/*
	Name: function_2a977ed8
	Namespace: namespace_36358f9c
	Checksum: 0xCD18B3E7
	Offset: 0x5178
	Size: 0x183
	Parameters: 0
	Flags: None
*/
function function_2a977ed8()
{
	function_18a473c0();
	namespace_cc27597::function_8f9f34e0("cin_new_06_01_chase_vign_railing_civs_var01", &function_1efc629f, "done");
	namespace_cc27597::function_8f9f34e0("cin_new_06_01_chase_vign_train_civs_var2", &function_1efc629f, "done");
	namespace_82b91a51::function_76f13293();
	function_b497a9d3();
	namespace_82b91a51::function_76f13293();
	function_42903a98();
	namespace_82b91a51::function_76f13293();
	function_6892b501();
	namespace_82b91a51::function_76f13293();
	function_8926ae16();
	namespace_82b91a51::function_76f13293();
	function_ad5b66cd();
	namespace_82b91a51::function_76f13293();
	function_1e8b5e92();
	namespace_82b91a51::function_76f13293();
	function_14c4a966();
	namespace_82b91a51::function_76f13293();
	function_6a341ec9();
	namespace_82b91a51::function_76f13293();
}

/*
	Name: function_18a473c0
	Namespace: namespace_36358f9c
	Checksum: 0x589A6462
	Offset: 0x5308
	Size: 0x1AB
	Parameters: 0
	Flags: None
*/
function function_18a473c0()
{
	var_e8942d17 = namespace_2f06d687::function_7387a40a("chase_bartender_civilian");
	var_e8942d17.var_a0f70d54 = level.var_88590003;
	var_a61dbbf1 = namespace_2f06d687::function_7387a40a("chase_bar_civ_1");
	var_a61dbbf1.var_a0f70d54 = level.var_88590003;
	var_cc20365a = namespace_2f06d687::function_7387a40a("chase_bar_civ_2");
	var_cc20365a.var_a0f70d54 = level.var_88590003;
	var_f222b0c3 = namespace_2f06d687::function_7387a40a("chase_bar_civ_3");
	var_f222b0c3.var_a0f70d54 = level.var_88590003;
	var_e3b635fb = function_84970cc4(var_a61dbbf1, var_cc20365a, var_f222b0c3);
	namespace_cc27597::function_8f9f34e0("cin_new_06_01_chase_vign_bar_civs", &function_e2b3f312, "done");
	level thread namespace_cc27597::function_c35e6aab("cin_new_06_01_chase_vign_cower", function_84970cc4(var_e8942d17));
	level thread namespace_cc27597::function_c35e6aab("cin_new_06_01_chase_vign_bar_civs", var_e3b635fb);
	level thread function_5f1afc64();
}

/*
	Name: function_5f1afc64
	Namespace: namespace_36358f9c
	Checksum: 0xC4223C4E
	Offset: 0x54C0
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_5f1afc64()
{
	namespace_4dbf3ae3::function_39cd87a2("bartender_look_trigger", "bartender_touch_trigger");
	level thread namespace_cc27597::function_43718187("cin_new_06_01_chase_vign_cower");
	level thread namespace_cc27597::function_43718187("cin_new_06_01_chase_vign_bar_civs");
}

/*
	Name: function_e2b3f312
	Namespace: namespace_36358f9c
	Checksum: 0x11B84360
	Offset: 0x5530
	Size: 0xE1
	Parameters: 1
	Flags: None
*/
function function_e2b3f312(var_c77d2837)
{
	wait(0.05);
	var_368248f2 = function_b4cb3503("chase_bar_upper_exit_near", "script_noteworthy");
	foreach(var_14c918e8 in var_c77d2837)
	{
		if(function_5b49d38c(var_14c918e8))
		{
			var_14c918e8 thread namespace_b78a5cd7::function_3840d81a(var_368248f2);
		}
	}
}

/*
	Name: function_b497a9d3
	Namespace: namespace_36358f9c
	Checksum: 0xD4D17C9E
	Offset: 0x5620
	Size: 0xFB
	Parameters: 0
	Flags: None
*/
function function_b497a9d3()
{
	var_a61dbbf1 = namespace_2f06d687::function_7387a40a("chase_bar_railing_civ_1");
	var_a61dbbf1.var_a0f70d54 = level.var_88590003;
	var_cc20365a = namespace_2f06d687::function_7387a40a("chase_bar_railing_civ_2");
	var_cc20365a.var_a0f70d54 = level.var_88590003;
	var_e3b635fb = function_84970cc4(var_a61dbbf1, var_cc20365a);
	var_1cbcb46d = namespace_14b42b8a::function_7922262b("bar_railing_01", "targetname");
	var_1cbcb46d thread namespace_cc27597::function_c35e6aab(var_e3b635fb);
	var_1cbcb46d thread function_d66e3365();
}

/*
	Name: function_d66e3365
	Namespace: namespace_36358f9c
	Checksum: 0xB7D4E859
	Offset: 0x5728
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_d66e3365()
{
	level waittill("hash_991e4316");
	self thread namespace_cc27597::function_43718187();
}

/*
	Name: function_42903a98
	Namespace: namespace_36358f9c
	Checksum: 0x8B23F338
	Offset: 0x5758
	Size: 0xDB
	Parameters: 0
	Flags: None
*/
function function_42903a98()
{
	var_a61dbbf1 = namespace_2f06d687::function_7387a40a("chase_bar_railing_civ_3");
	var_cc20365a = namespace_2f06d687::function_7387a40a("chase_bar_railing_civ_4");
	var_e3b635fb = function_84970cc4(var_a61dbbf1, var_cc20365a);
	var_1cbcb46d = namespace_14b42b8a::function_7922262b("bar_railing_02", "targetname");
	var_1cbcb46d thread namespace_cc27597::function_c35e6aab(var_e3b635fb);
	var_1cbcb46d thread function_d0a73a33(var_e3b635fb);
}

/*
	Name: function_d0a73a33
	Namespace: namespace_36358f9c
	Checksum: 0x5F176543
	Offset: 0x5840
	Size: 0xFD
	Parameters: 1
	Flags: None
*/
function function_d0a73a33(var_e3b635fb)
{
	level waittill("hash_287cc85e");
	self namespace_cc27597::function_43718187();
	foreach(var_d84e54db in var_e3b635fb)
	{
		wait(function_72a94f05(1, 2));
		if(function_5b49d38c(var_d84e54db))
		{
			var_d84e54db function_c3945cd5(1, var_d84e54db.var_722885f3);
			break;
		}
	}
}

/*
	Name: function_6892b501
	Namespace: namespace_36358f9c
	Checksum: 0x1FF84146
	Offset: 0x5948
	Size: 0xDB
	Parameters: 0
	Flags: None
*/
function function_6892b501()
{
	var_a61dbbf1 = namespace_2f06d687::function_7387a40a("chase_bar_railing_civ_5");
	var_cc20365a = namespace_2f06d687::function_7387a40a("chase_bar_railing_civ_6");
	var_e3b635fb = function_84970cc4(var_a61dbbf1, var_cc20365a);
	var_1cbcb46d = namespace_14b42b8a::function_7922262b("bar_railing_03", "targetname");
	var_1cbcb46d thread namespace_cc27597::function_c35e6aab(var_e3b635fb);
	var_1cbcb46d thread function_aaa4bfca(var_e3b635fb);
}

/*
	Name: function_aaa4bfca
	Namespace: namespace_36358f9c
	Checksum: 0x79D86256
	Offset: 0x5A30
	Size: 0x105
	Parameters: 1
	Flags: None
*/
function function_aaa4bfca(var_e3b635fb)
{
	level waittill("hash_287cc85e");
	wait(0.1);
	self namespace_cc27597::function_43718187();
	foreach(var_d84e54db in var_e3b635fb)
	{
		wait(function_72a94f05(0.5, 1));
		if(function_5b49d38c(var_d84e54db))
		{
			var_d84e54db function_c3945cd5(1, var_d84e54db.var_722885f3);
			break;
		}
	}
}

/*
	Name: function_1efc629f
	Namespace: namespace_36358f9c
	Checksum: 0x305070A6
	Offset: 0x5B40
	Size: 0xD1
	Parameters: 1
	Flags: None
*/
function function_1efc629f(var_c77d2837)
{
	wait(0.05);
	var_368248f2 = function_b4cb3503(self.var_b07228b6, "targetname");
	foreach(var_14c918e8 in var_c77d2837)
	{
		if(isdefined(var_14c918e8))
		{
			var_14c918e8 thread namespace_b78a5cd7::function_3840d81a(var_368248f2);
		}
	}
}

/*
	Name: function_8926ae16
	Namespace: namespace_36358f9c
	Checksum: 0xBF0BE794
	Offset: 0x5C20
	Size: 0x133
	Parameters: 0
	Flags: None
*/
function function_8926ae16()
{
	var_a61dbbf1 = namespace_2f06d687::function_7387a40a("chase_bar_group_civ_1");
	var_cc20365a = namespace_2f06d687::function_7387a40a("chase_bar_group_civ_2");
	var_f222b0c3 = namespace_2f06d687::function_7387a40a("chase_bar_group_civ_3");
	var_18252b2c = namespace_2f06d687::function_7387a40a("chase_bar_group_civ_4");
	var_e3b635fb = function_84970cc4(var_a61dbbf1, var_cc20365a, var_f222b0c3, var_18252b2c);
	var_1cbcb46d = namespace_14b42b8a::function_7922262b("chase_bar_group_civs_1", "targetname");
	var_1cbcb46d thread namespace_cc27597::function_c35e6aab(var_e3b635fb);
	var_1cbcb46d thread function_3fc15555();
}

/*
	Name: function_3fc15555
	Namespace: namespace_36358f9c
	Checksum: 0x82CCF966
	Offset: 0x5D60
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_3fc15555()
{
	level waittill("hash_991e4316");
	self thread namespace_cc27597::function_43718187();
}

/*
	Name: function_ad5b66cd
	Namespace: namespace_36358f9c
	Checksum: 0x4B8A0953
	Offset: 0x5D90
	Size: 0x203
	Parameters: 0
	Flags: None
*/
function function_ad5b66cd()
{
	namespace_cc27597::function_8f9f34e0("cin_new_06_01_chase_vign_bar_stand_civs_var1", &function_d8cfb628, "done");
	namespace_cc27597::function_8f9f34e0("cin_new_06_01_chase_vign_bar_stand_civs_var2", &function_4ad72563, "done");
	var_a61dbbf1 = namespace_2f06d687::function_7387a40a("chase_mid_bar_1");
	var_cc20365a = namespace_2f06d687::function_7387a40a("chase_mid_bar_2");
	var_2c5d8c08 = function_84970cc4(var_a61dbbf1, var_cc20365a);
	var_6396997e = namespace_14b42b8a::function_7922262b("mid_bar_scene_1", "targetname");
	var_6396997e thread namespace_cc27597::function_c35e6aab(var_2c5d8c08);
	var_f222b0c3 = namespace_2f06d687::function_7387a40a("chase_mid_bar_3");
	var_18252b2c = namespace_2f06d687::function_7387a40a("chase_mid_bar_4");
	var_9e64fb43 = function_84970cc4(var_f222b0c3, var_18252b2c);
	var_3d941f15 = namespace_14b42b8a::function_7922262b("mid_bar_scene_2", "targetname");
	var_3d941f15 thread namespace_cc27597::function_c35e6aab(var_9e64fb43);
	level thread function_ffd8ef40(var_6396997e, var_3d941f15);
}

/*
	Name: function_ffd8ef40
	Namespace: namespace_36358f9c
	Checksum: 0xBD33E7FE
	Offset: 0x5FA0
	Size: 0x53
	Parameters: 2
	Flags: None
*/
function function_ffd8ef40(var_6396997e, var_3d941f15)
{
	level waittill("hash_66de346");
	var_6396997e thread namespace_cc27597::function_43718187();
	wait(0.1);
	var_3d941f15 thread namespace_cc27597::function_43718187();
}

/*
	Name: function_1e8b5e92
	Namespace: namespace_36358f9c
	Checksum: 0xE74C91A1
	Offset: 0x6000
	Size: 0x1A3
	Parameters: 0
	Flags: None
*/
function function_1e8b5e92()
{
	var_a61dbbf1 = namespace_2f06d687::function_7387a40a("chase_mid_bar_sitting01_civ1");
	var_cc20365a = namespace_2f06d687::function_7387a40a("chase_mid_bar_sitting01_civ2");
	var_2c5d8c08 = function_84970cc4(var_a61dbbf1, var_cc20365a);
	var_6396997e = namespace_14b42b8a::function_7922262b("chase_mid_bar_sitting01", "targetname");
	var_6396997e thread namespace_cc27597::function_c35e6aab(var_2c5d8c08);
	var_f222b0c3 = namespace_2f06d687::function_7387a40a("chase_mid_bar_sitting02_civ1");
	var_18252b2c = namespace_2f06d687::function_7387a40a("chase_mid_bar_sitting02_civ2");
	var_9e64fb43 = function_84970cc4(var_f222b0c3, var_18252b2c);
	var_3d941f15 = namespace_14b42b8a::function_7922262b("chase_mid_bar_sitting02", "targetname");
	var_3d941f15 thread namespace_cc27597::function_c35e6aab(var_9e64fb43);
	level thread function_dc8a6a3(var_6396997e, var_3d941f15);
}

/*
	Name: function_dc8a6a3
	Namespace: namespace_36358f9c
	Checksum: 0x691B78B2
	Offset: 0x61B0
	Size: 0x5B
	Parameters: 2
	Flags: None
*/
function function_dc8a6a3(var_6396997e, var_3d941f15)
{
	level waittill("hash_66de346");
	wait(0.25);
	var_6396997e thread namespace_cc27597::function_43718187();
	wait(0.1);
	var_3d941f15 thread namespace_cc27597::function_43718187();
}

/*
	Name: function_d8cfb628
	Namespace: namespace_36358f9c
	Checksum: 0x6BEA4214
	Offset: 0x6218
	Size: 0xD1
	Parameters: 1
	Flags: None
*/
function function_d8cfb628(var_c77d2837)
{
	wait(0.05);
	var_368248f2 = function_b4cb3503(self.var_b07228b6, "targetname");
	foreach(var_14c918e8 in var_c77d2837)
	{
		if(isdefined(var_14c918e8))
		{
			var_14c918e8 thread namespace_b78a5cd7::function_3840d81a(var_368248f2);
		}
	}
}

/*
	Name: function_4ad72563
	Namespace: namespace_36358f9c
	Checksum: 0xA2081B46
	Offset: 0x62F8
	Size: 0x149
	Parameters: 1
	Flags: None
*/
function function_4ad72563(var_c77d2837)
{
	wait(0.05);
	var_792430f = function_b4cb3503("chase_bar_near_exit", "script_noteworthy");
	var_958ad3d4 = function_b4cb3503("mid_bar_exit_point", "script_noteworthy");
	foreach(var_14c918e8 in var_c77d2837)
	{
		if(isdefined(var_14c918e8))
		{
			if(function_5dbf7eca(var_14c918e8.var_e6e9b8de, "female"))
			{
				var_14c918e8 thread namespace_b78a5cd7::function_3840d81a(var_792430f);
				continue;
			}
			var_14c918e8 thread namespace_b78a5cd7::function_3840d81a(var_958ad3d4);
		}
	}
}

/*
	Name: function_14c4a966
	Namespace: namespace_36358f9c
	Checksum: 0xB301A190
	Offset: 0x6450
	Size: 0x1B3
	Parameters: 0
	Flags: None
*/
function function_14c4a966()
{
	var_a61dbbf1 = namespace_2f06d687::function_7387a40a("chase_bar__end_group_civ_1");
	var_cc20365a = namespace_2f06d687::function_7387a40a("chase_bar__end_group_civ_2");
	var_f222b0c3 = namespace_2f06d687::function_7387a40a("chase_bar__end_group_civ_3");
	var_18252b2c = namespace_2f06d687::function_7387a40a("chase_bar__end_group_civ_4");
	var_e3b635fb = function_84970cc4(var_a61dbbf1, var_cc20365a, var_f222b0c3, var_18252b2c);
	foreach(var_d84e54db in var_e3b635fb)
	{
		var_d84e54db thread function_6bc2fd9b();
	}
	var_1cbcb46d = namespace_14b42b8a::function_7922262b("chase_bar_end_group_civs", "targetname");
	var_1cbcb46d thread namespace_cc27597::function_c35e6aab(var_e3b635fb);
	var_1cbcb46d thread function_ce90e373();
}

/*
	Name: function_ce90e373
	Namespace: namespace_36358f9c
	Checksum: 0x17080DD0
	Offset: 0x6610
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_ce90e373()
{
	level namespace_82b91a51::function_5b7e3888("bridge_collapse_start", "bar_end_civs_alerted");
	self thread namespace_cc27597::function_43718187();
}

/*
	Name: function_6a341ec9
	Namespace: namespace_36358f9c
	Checksum: 0x1B12E190
	Offset: 0x6660
	Size: 0x55B
	Parameters: 0
	Flags: None
*/
function function_6a341ec9()
{
	namespace_cc27597::function_8f9f34e0("cin_new_06_01_chase_vign_sitting_civs_right", &function_1efc629f, "done");
	namespace_cc27597::function_8f9f34e0("cin_new_06_01_chase_vign_sitting_civs_left", &function_1efc629f, "done");
	var_a61dbbf1 = namespace_2f06d687::function_7387a40a("chase_bar_sitting01_civ1");
	var_cc20365a = namespace_2f06d687::function_7387a40a("chase_bar_sitting01_civ2");
	var_2c5d8c08 = function_84970cc4(var_a61dbbf1, var_cc20365a);
	foreach(var_d84e54db in var_2c5d8c08)
	{
		var_d84e54db thread function_6bc2fd9b();
	}
	var_6396997e = namespace_14b42b8a::function_7922262b("chase_bar_sitting01", "targetname");
	var_6396997e thread namespace_cc27597::function_c35e6aab(var_2c5d8c08);
	wait(0.1);
	var_a61dbbf1 = namespace_2f06d687::function_7387a40a("chase_bar_sitting02_civ1");
	var_cc20365a = namespace_2f06d687::function_7387a40a("chase_bar_sitting02_civ2");
	var_9e64fb43 = function_84970cc4(var_a61dbbf1, var_cc20365a);
	foreach(var_d84e54db in var_9e64fb43)
	{
		var_d84e54db thread function_6bc2fd9b();
	}
	var_3d941f15 = namespace_14b42b8a::function_7922262b("chase_bar_sitting02", "targetname");
	var_3d941f15 thread namespace_cc27597::function_c35e6aab(var_9e64fb43);
	wait(0.1);
	var_a61dbbf1 = namespace_2f06d687::function_7387a40a("chase_bar_sitting03_civ1");
	var_cc20365a = namespace_2f06d687::function_7387a40a("chase_bar_sitting03_civ2");
	var_786280da = function_84970cc4(var_a61dbbf1, var_cc20365a);
	foreach(var_d84e54db in var_786280da)
	{
		var_d84e54db thread function_6bc2fd9b();
	}
	var_1791a4ac = namespace_14b42b8a::function_7922262b("chase_bar_sitting03", "targetname");
	var_1791a4ac thread namespace_cc27597::function_c35e6aab(var_786280da);
	wait(0.1);
	var_a61dbbf1 = namespace_2f06d687::function_7387a40a("chase_bar_sitting04_civ1");
	var_cc20365a = namespace_2f06d687::function_7387a40a("chase_bar_sitting04_civ2");
	var_ea69f015 = function_84970cc4(var_a61dbbf1, var_cc20365a);
	foreach(var_d84e54db in var_ea69f015)
	{
		var_d84e54db thread function_6bc2fd9b();
	}
	var_f18f2a43 = namespace_14b42b8a::function_7922262b("chase_bar_sitting04", "targetname");
	var_f18f2a43 thread namespace_cc27597::function_c35e6aab(var_ea69f015);
	level thread function_790d18d8(var_6396997e, var_3d941f15, var_1791a4ac, var_f18f2a43);
}

/*
	Name: function_790d18d8
	Namespace: namespace_36358f9c
	Checksum: 0xA2A3D8F
	Offset: 0x6BC8
	Size: 0xC3
	Parameters: 4
	Flags: None
*/
function function_790d18d8(var_6396997e, var_3d941f15, var_1791a4ac, var_f18f2a43)
{
	level namespace_82b91a51::function_5b7e3888("bridge_collapse_start", "bar_end_civs_alerted");
	var_6396997e thread namespace_cc27597::function_43718187();
	wait(0.1);
	var_3d941f15 thread namespace_cc27597::function_43718187();
	wait(0.1);
	var_1791a4ac thread namespace_cc27597::function_43718187();
	wait(0.1);
	var_f18f2a43 thread namespace_cc27597::function_43718187();
}

/*
	Name: function_6bc2fd9b
	Namespace: namespace_36358f9c
	Checksum: 0x4C27DBAC
	Offset: 0x6C98
	Size: 0x51
	Parameters: 0
	Flags: None
*/
function function_6bc2fd9b()
{
	level endon("hash_9f036d3d");
	level endon("hash_9988f9e0");
	self namespace_82b91a51::function_5b7e3888("bulletwhizby", "damage", "death");
	level notify("hash_9988f9e0");
}

/*
	Name: function_ec6ea2d4
	Namespace: namespace_36358f9c
	Checksum: 0x886E8CF7
	Offset: 0x6CF8
	Size: 0x1F3
	Parameters: 2
	Flags: None
*/
function function_ec6ea2d4(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		namespace_80983c42::function_593e8a39("cin_new_05_01_sun_on");
		level.var_88590003 = namespace_2f06d687::function_7387a40a("chase_bomber", &function_d29dd4ef);
		function_f423f05a(var_b04bc952);
		level.var_79ddcc8b = namespace_2f06d687::function_7387a40a("chase_hunter", &function_67d7546);
		level thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_newworld_bridge_collapse_bundle_init");
		level thread namespace_cc27597::function_5c143f59("p7_fxanim_cp_newworld_bridge_collapse_hunter_bundle", function_84970cc4(level.var_79ddcc8b), 0.85);
		namespace_d7916d65::function_a2995f22();
		namespace_ce0e5f06::function_3e37f48b(0);
		level thread function_11eee9db(var_b04bc952);
		level thread function_ef62a489();
		level thread function_28aaa11a(30);
		namespace_dabbe128::function_95670def(&function_25e57b80);
	}
	level thread function_cd16f88c(0);
	level thread function_82467236();
	level waittill("hash_6a29494d");
	namespace_1d795d47::function_be8adfb8(var_b04bc952);
}

/*
	Name: function_9ca3cbaa
	Namespace: namespace_36358f9c
	Checksum: 0x54481D47
	Offset: 0x6EF8
	Size: 0x73
	Parameters: 4
	Flags: None
*/
function function_9ca3cbaa(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	var_d874dcf = function_6ada35ba("bridge_collapse_player_clip", "targetname");
	if(isdefined(var_d874dcf))
	{
		var_d874dcf function_dc8c8404();
	}
}

/*
	Name: function_2c789839
	Namespace: namespace_36358f9c
	Checksum: 0xBB789DD1
	Offset: 0x6F78
	Size: 0xB1
	Parameters: 0
	Flags: None
*/
function function_2c789839()
{
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_newworld_bridge_collapse_bundle", &function_1637aac6, "play");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_newworld_bridge_collapse_bundle", &function_28e6c236, "play");
	level waittill("hash_511ddebd");
	level namespace_cc27597::function_43718187("p7_fxanim_cp_newworld_bridge_collapse_bundle", function_84970cc4(level.var_79ddcc8b));
	level notify("hash_6a29494d");
}

/*
	Name: function_1637aac6
	Namespace: namespace_36358f9c
	Checksum: 0x3BCC60EC
	Offset: 0x7038
	Size: 0xB1
	Parameters: 1
	Flags: None
*/
function function_1637aac6(var_c77d2837)
{
	foreach(var_a3d46ee4 in var_c77d2837)
	{
		if(function_5dbf7eca(var_5e76f0af, "wasp"))
		{
			var_a3d46ee4 thread function_cba88b2();
		}
	}
}

/*
	Name: function_cba88b2
	Namespace: namespace_36358f9c
	Checksum: 0x2A0E1F1B
	Offset: 0x70F8
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_cba88b2()
{
	self endon("hash_128f8789");
	self waittill("hash_1637aac6");
	self function_8c8e79fe();
	wait(1);
	self function_dc8c8404();
}

/*
	Name: function_28e6c236
	Namespace: namespace_36358f9c
	Checksum: 0xA9A40C84
	Offset: 0x7150
	Size: 0xAB
	Parameters: 1
	Flags: None
*/
function function_28e6c236(var_c77d2837)
{
	level waittill("hash_741a928d");
	function_eac31668(var_c77d2837["newworld_bridge_collapse_hunter"].var_722885f3, 850, 300, 20, level.var_88590003, "MOD_EXPLOSIVE");
	var_d874dcf = function_6ada35ba("bridge_collapse_player_clip", "targetname");
	if(isdefined(var_d874dcf))
	{
		var_d874dcf function_dc8c8404();
	}
}

/*
	Name: function_cd16f88c
	Namespace: namespace_36358f9c
	Checksum: 0xF7A695EB
	Offset: 0x7208
	Size: 0xBB
	Parameters: 1
	Flags: None
*/
function function_cd16f88c(var_ef8c14b)
{
	level endon("hash_75fed2c4");
	if(!var_ef8c14b)
	{
		namespace_4dbf3ae3::function_1ab5ebec("sarah_bridge_dropdown", undefined, undefined, 0);
	}
	namespace_cc27597::function_43718187("cin_new_07_01_bridge_collapse_traverse");
	var_9885044c = function_b4cb3503("hall_post_bridge_goto", "targetname");
	level.var_2dca8767 function_169cc712(var_9885044c, 1);
	level thread function_4d159c1c();
}

/*
	Name: function_4d159c1c
	Namespace: namespace_36358f9c
	Checksum: 0xFC8D0319
	Offset: 0x72D0
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_4d159c1c()
{
	level namespace_ad23e503::function_1ab5ebec("hall_post_bridge_climb_scene");
	if(isdefined(level.var_6b7ee624))
	{
		level thread [[level.var_6b7ee624]]();
	}
	namespace_cc27597::function_43718187("cin_new_06_01_chase_vign_hall_traversal_bridge");
	if(!level namespace_ad23e503::function_7922262b("chase_post_bridge_climb_up"))
	{
		namespace_4dbf3ae3::function_42e87952("hall_post_traversal_bridge_colors");
	}
}

/*
	Name: function_a507aa05
	Namespace: namespace_36358f9c
	Checksum: 0x3CB5A892
	Offset: 0x7370
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_a507aa05(var_64e85e6d)
{
	level namespace_ad23e503::function_1ab5ebec("hall_use_systemoverload_post_bridge_collapse");
	function_e1109a4f(var_64e85e6d);
}

/*
	Name: function_82467236
	Namespace: namespace_36358f9c
	Checksum: 0x34076C39
	Offset: 0x73C0
	Size: 0x89
	Parameters: 0
	Flags: None
*/
function function_82467236()
{
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a thread function_10f68f8b();
	}
}

/*
	Name: function_10f68f8b
	Namespace: namespace_36358f9c
	Checksum: 0x8939DD3B
	Offset: 0x7458
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_10f68f8b()
{
	self endon("hash_128f8789");
	level endon("hash_c1a074c7");
	namespace_4dbf3ae3::function_1ab5ebec("bridge_collapse_drop_down", "targetname", self);
	self function_83fd42b5();
	wait(2);
	self function_4890e520();
}

/*
	Name: function_61decb2d
	Namespace: namespace_36358f9c
	Checksum: 0x4C9DD50C
	Offset: 0x74D8
	Size: 0x38B
	Parameters: 2
	Flags: None
*/
function function_61decb2d(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		namespace_80983c42::function_593e8a39("cin_new_05_01_sun_on");
		level.var_88590003 = namespace_2f06d687::function_7387a40a("chase_bomber", &function_d29dd4ef);
		function_f423f05a(var_b04bc952);
		namespace_84970cc4::function_eaab05dc(function_99201f25("collapse_bridge", "targetname"), &function_dc8c8404);
		namespace_d7916d65::function_a2995f22();
		namespace_ce0e5f06::function_3e37f48b(0);
		level thread function_cd16f88c(1);
		level thread function_82467236();
		level thread function_11eee9db(var_b04bc952);
		level thread function_ef62a489();
		level thread function_c2c5155b();
		level thread function_28aaa11a(30);
		namespace_dabbe128::function_95670def(&function_25e57b80);
	}
	else
	{
		namespace_ce0e5f06::function_c1c980d8("chase_bar_enemy_culling");
	}
	namespace_96fa87af::function_994832bd("chase_wasp_mg", &function_694c9886);
	namespace_96fa87af::function_994832bd("chase_wasp_rocket", &function_694c9886);
	function_660e6b31(1);
	level thread function_2ac6fe38();
	level thread function_59153fc0();
	level thread function_34427886();
	level namespace_ad23e503::function_c35e6aab("train_station_start_gate_closed");
	level namespace_ad23e503::function_c35e6aab("train_station_end_gate_closed");
	level namespace_ad23e503::function_c35e6aab("chase_train_move");
	level thread function_4cd03714("trigger_chase_trains", "train_station_train_org", "train_station_train_start", "train_station_stop_train", "chase_trainstation_train_rumble", 0, 1, 1);
	function_77e81fa3();
	function_e8d2d7d8(1);
	function_e8d2d7d8(2);
	function_e8d2d7d8(3);
	function_8c82b44d(1);
}

/*
	Name: function_18f0e437
	Namespace: namespace_36358f9c
	Checksum: 0x127EB4A
	Offset: 0x7870
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function function_18f0e437(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
}

/*
	Name: function_75fed2c4
	Namespace: namespace_36358f9c
	Checksum: 0x183A6D4F
	Offset: 0x78A0
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_75fed2c4()
{
	namespace_4dbf3ae3::function_1ab5ebec("hall_train_station_wallrun");
	level.var_2dca8767 namespace_ce0e5f06::function_d0aa2f4f();
	level thread namespace_cc27597::function_43718187("cin_new_06_02_chase_vign_wallrun");
	level notify("hash_75fed2c4");
	namespace_4dbf3ae3::function_42e87952("hall_post_train_station_wallrun_color_trigger", "targetname");
	level thread function_33cb6df1();
}

/*
	Name: function_59153fc0
	Namespace: namespace_36358f9c
	Checksum: 0x9955D27F
	Offset: 0x7948
	Size: 0x181
	Parameters: 0
	Flags: None
*/
function function_59153fc0()
{
	level waittill("hash_fb8f6850");
	level notify("hash_210f1e22");
	namespace_ce0e5f06::function_3e37f48b(1);
	level.var_ebe3b234 = 1;
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		if(var_5dc5e20a namespace_ce0e5f06::function_c633d8fe())
		{
			continue;
		}
		var_5dc5e20a namespace_d00ec32::function_c219b381();
		var_5dc5e20a namespace_d00ec32::function_a724d44("cybercom_systemoverload", 0);
		var_5dc5e20a namespace_d00ec32::function_eb512967("cybercom_systemoverload", 1);
		var_5dc5e20a thread namespace_ce0e5f06::function_6062e90("cybercom_systemoverload", 0, "stop_systemoverload_tutorial", 1, "CP_MI_ZURICH_NEWWORLD_SYSTEM_PARALYSIS_TARGET", "CP_MI_ZURICH_NEWWORLD_SYSTEM_PARALYSIS_RELEASE");
		var_5dc5e20a thread function_a69280be("cybercom_systemoverload", 0);
	}
}

/*
	Name: function_34427886
	Namespace: namespace_36358f9c
	Checksum: 0xFBE329AC
	Offset: 0x7AD8
	Size: 0xA9
	Parameters: 0
	Flags: None
*/
function function_34427886()
{
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		if(var_5dc5e20a namespace_ce0e5f06::function_c633d8fe())
		{
			continue;
		}
		var_5dc5e20a thread function_3a5a4e5e();
	}
}

/*
	Name: function_3a5a4e5e
	Namespace: namespace_36358f9c
	Checksum: 0xA573D8CD
	Offset: 0x7B90
	Size: 0x197
	Parameters: 0
	Flags: None
*/
function function_3a5a4e5e()
{
	self endon("hash_128f8789");
	level endon("hash_210f1e22");
	namespace_4dbf3ae3::function_1ab5ebec("high_mantle_tutorial", "targetname", self);
	self notify("hash_34427886");
	if(isdefined(30))
	{
		var_a78a7a9e = function_a8fb77bd();
		var_a78a7a9e endon("hash_4573206");
		var_a78a7a9e namespace_82b91a51::function_6729b6ba(30, "timeout");
	}
	self namespace_ad23e503::function_c35e6aab("high_mantle_tutorial");
	self thread function_87127ac4();
	while(!self namespace_ad23e503::function_7922262b("high_mantle_tutorial"))
	{
		self thread namespace_82b91a51::function_32d40124(&"CP_MI_ZURICH_NEWWORLD_MANTLE_TUTORIAL", 0, undefined, 4);
		self namespace_ad23e503::function_d266a8b4(4, "high_mantle_tutorial");
		self thread namespace_82b91a51::function_f9e5537b(1);
		if(!self namespace_ad23e503::function_7922262b("high_mantle_tutorial"))
		{
			self namespace_ad23e503::function_d266a8b4(3, "high_mantle_tutorial");
		}
	}
}

/*
	Name: function_87127ac4
	Namespace: namespace_36358f9c
	Checksum: 0x85D362B3
	Offset: 0x7D30
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_87127ac4()
{
	self endon("hash_128f8789");
	self waittill("hash_7fb2b949");
	self namespace_ad23e503::function_74d6b22f("high_mantle_tutorial");
}

/*
	Name: function_33cb6df1
	Namespace: namespace_36358f9c
	Checksum: 0xF092D56B
	Offset: 0x7D78
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_33cb6df1()
{
	level endon("hash_de039dbd");
	namespace_4dbf3ae3::function_1ab5ebec("hall_old_zurich_traversal");
	level thread namespace_cc27597::function_43718187("cin_new_06_01_chase_vign_hall_traversal_train");
	level thread function_83d6701();
}

/*
	Name: function_77e81fa3
	Namespace: namespace_36358f9c
	Checksum: 0x71270679
	Offset: 0x7DE0
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_77e81fa3()
{
	namespace_2f06d687::function_2b37a3c9("train_station_cafe_civs", "targetname", &function_97ed9674);
	level thread function_be23c07c();
	level thread function_75fed2c4();
	function_64c3236();
}

/*
	Name: function_64c3236
	Namespace: namespace_36358f9c
	Checksum: 0x17C9F35B
	Offset: 0x7E60
	Size: 0x1A3
	Parameters: 0
	Flags: None
*/
function function_64c3236()
{
	namespace_cc27597::function_8f9f34e0("cin_new_06_01_chase_vign_train_civs", &function_c9f8e2cd, "play");
	namespace_cc27597::function_a5195379("cin_new_06_01_chase_vign_train_civs_var2", &function_1efc629f, "done");
	namespace_cc27597::function_8f9f34e0("cin_new_06_01_chase_vign_train_civs_var2", &function_c9f8e2cd, "play");
	namespace_cc27597::function_8f9f34e0("cin_new_06_01_chase_vign_ticket_civ_group_left", &function_c9f8e2cd, "play");
	function_a22441fa();
	namespace_82b91a51::function_76f13293();
	function_2c90def0();
	namespace_82b91a51::function_76f13293();
	function_1626a1fa();
	namespace_82b91a51::function_76f13293();
	function_e246b288();
	namespace_82b91a51::function_76f13293();
	function_1a503ca4();
	namespace_82b91a51::function_76f13293();
	function_d0faa80();
	namespace_82b91a51::function_76f13293();
	function_8a7ecd4d();
	namespace_82b91a51::function_76f13293();
}

/*
	Name: function_e246b288
	Namespace: namespace_36358f9c
	Checksum: 0x2923E2FE
	Offset: 0x8010
	Size: 0x17B
	Parameters: 0
	Flags: None
*/
function function_e246b288()
{
	var_a61dbbf1 = namespace_2f06d687::function_7387a40a("chase_trainstation_civ_scene_1");
	var_a61dbbf1.var_a0f70d54 = level.var_88590003;
	var_cc20365a = namespace_2f06d687::function_7387a40a("chase_trainstation_civ_scene_2");
	var_cc20365a.var_a0f70d54 = level.var_88590003;
	var_f222b0c3 = namespace_2f06d687::function_7387a40a("chase_trainstation_civ_scene_3");
	var_f222b0c3.var_a0f70d54 = level.var_88590003;
	var_18252b2c = namespace_2f06d687::function_7387a40a("chase_trainstation_civ_scene_4");
	var_18252b2c.var_a0f70d54 = level.var_88590003;
	var_e3b635fb = function_84970cc4(var_a61dbbf1, var_cc20365a, var_f222b0c3, var_18252b2c);
	namespace_cc27597::function_8f9f34e0("cin_new_06_01_chase_vign_train_civs", &function_c9f8e2cd, "play");
	level thread namespace_cc27597::function_c35e6aab("cin_new_06_01_chase_vign_train_civs", var_e3b635fb);
	level thread function_df331f0b();
}

/*
	Name: function_df331f0b
	Namespace: namespace_36358f9c
	Checksum: 0xD76C99C
	Offset: 0x8198
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_df331f0b()
{
	level waittill("hash_5367d5ab");
	level thread namespace_cc27597::function_43718187("cin_new_06_01_chase_vign_train_civs");
}

/*
	Name: function_1626a1fa
	Namespace: namespace_36358f9c
	Checksum: 0x7E2CC354
	Offset: 0x81D0
	Size: 0x173
	Parameters: 0
	Flags: None
*/
function function_1626a1fa()
{
	var_a61dbbf1 = namespace_2f06d687::function_7387a40a("chase_trainstation_civ_ped_walkway_1");
	var_a61dbbf1.var_a0f70d54 = level.var_88590003;
	var_cc20365a = namespace_2f06d687::function_7387a40a("chase_trainstation_civ_ped_walkway_2");
	var_cc20365a.var_a0f70d54 = level.var_88590003;
	var_f222b0c3 = namespace_2f06d687::function_7387a40a("chase_trainstation_civ_ped_walkway_3");
	var_f222b0c3.var_a0f70d54 = level.var_88590003;
	var_18252b2c = namespace_2f06d687::function_7387a40a("chase_trainstation_civ_ped_walkway_4");
	var_18252b2c.var_a0f70d54 = level.var_88590003;
	var_e3b635fb = function_84970cc4(var_a61dbbf1, var_cc20365a, var_f222b0c3, var_18252b2c);
	var_1cbcb46d = namespace_14b42b8a::function_7922262b("train_civs_pedestrian_bridge", "targetname");
	var_1cbcb46d thread namespace_cc27597::function_c35e6aab(var_e3b635fb);
	var_1cbcb46d thread function_67c85dcf();
}

/*
	Name: function_67c85dcf
	Namespace: namespace_36358f9c
	Checksum: 0xA9FF8C57
	Offset: 0x8350
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_67c85dcf()
{
	level waittill("hash_a6d0e6f3");
	self thread namespace_cc27597::function_43718187();
}

/*
	Name: function_1a503ca4
	Namespace: namespace_36358f9c
	Checksum: 0x15345178
	Offset: 0x8380
	Size: 0x173
	Parameters: 0
	Flags: None
*/
function function_1a503ca4()
{
	var_a61dbbf1 = namespace_2f06d687::function_7387a40a("chase_trainstation_civ_near_1");
	var_a61dbbf1.var_a0f70d54 = level.var_88590003;
	var_cc20365a = namespace_2f06d687::function_7387a40a("chase_trainstation_civ_near_2");
	var_cc20365a.var_a0f70d54 = level.var_88590003;
	var_f222b0c3 = namespace_2f06d687::function_7387a40a("chase_trainstation_civ_near_3");
	var_f222b0c3.var_a0f70d54 = level.var_88590003;
	var_18252b2c = namespace_2f06d687::function_7387a40a("chase_trainstation_civ_near_4");
	var_18252b2c.var_a0f70d54 = level.var_88590003;
	var_e3b635fb = function_84970cc4(var_a61dbbf1, var_cc20365a, var_f222b0c3, var_18252b2c);
	var_1cbcb46d = namespace_14b42b8a::function_7922262b("train_civs_near_group", "targetname");
	var_1cbcb46d thread namespace_cc27597::function_c35e6aab(var_e3b635fb);
	var_1cbcb46d thread function_79da4b91();
}

/*
	Name: function_79da4b91
	Namespace: namespace_36358f9c
	Checksum: 0x4AEFE2F6
	Offset: 0x8500
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_79da4b91()
{
	level waittill("hash_64ab138");
	self thread namespace_cc27597::function_43718187();
}

/*
	Name: function_d0faa80
	Namespace: namespace_36358f9c
	Checksum: 0x5450824D
	Offset: 0x8530
	Size: 0x173
	Parameters: 0
	Flags: None
*/
function function_d0faa80()
{
	var_a61dbbf1 = namespace_2f06d687::function_7387a40a("chase_trainstation_civ_wallrun_end_1");
	var_a61dbbf1.var_a0f70d54 = level.var_88590003;
	var_cc20365a = namespace_2f06d687::function_7387a40a("chase_trainstation_civ_wallrun_end_2");
	var_cc20365a.var_a0f70d54 = level.var_88590003;
	var_f222b0c3 = namespace_2f06d687::function_7387a40a("chase_trainstation_civ_wallrun_end_3");
	var_f222b0c3.var_a0f70d54 = level.var_88590003;
	var_18252b2c = namespace_2f06d687::function_7387a40a("chase_trainstation_civ_wallrun_end_4");
	var_18252b2c.var_a0f70d54 = level.var_88590003;
	var_e3b635fb = function_84970cc4(var_a61dbbf1, var_cc20365a, var_f222b0c3, var_18252b2c);
	var_1cbcb46d = namespace_14b42b8a::function_7922262b("train_civs_wallrun_end", "targetname");
	var_1cbcb46d thread namespace_cc27597::function_c35e6aab(var_e3b635fb);
	var_1cbcb46d thread function_cde8399();
}

/*
	Name: function_cde8399
	Namespace: namespace_36358f9c
	Checksum: 0x56F980C6
	Offset: 0x86B0
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_cde8399()
{
	level waittill("hash_796ee858");
	self thread namespace_cc27597::function_43718187();
}

/*
	Name: function_c9f8e2cd
	Namespace: namespace_36358f9c
	Checksum: 0x634D9356
	Offset: 0x86E0
	Size: 0xC9
	Parameters: 1
	Flags: None
*/
function function_c9f8e2cd(var_c77d2837)
{
	var_368248f2 = function_b4cb3503(self.var_b07228b6, "targetname");
	foreach(var_14c918e8 in var_c77d2837)
	{
		if(isdefined(var_14c918e8))
		{
			var_14c918e8 thread namespace_b78a5cd7::function_3840d81a(var_368248f2);
		}
	}
}

/*
	Name: function_a22441fa
	Namespace: namespace_36358f9c
	Checksum: 0x27D12C5C
	Offset: 0x87B8
	Size: 0x339
	Parameters: 0
	Flags: None
*/
function function_a22441fa()
{
	namespace_cc27597::function_8f9f34e0("cin_new_06_01_chase_vign_ticket_civ_female", &function_bff4697e, "done");
	namespace_cc27597::function_8f9f34e0("cin_new_06_01_chase_vign_ticket_civ_male", &function_bff4697e, "done");
	var_5bcb8a4d = namespace_14b42b8a::function_7faf4c39("ticket_civ_male", "targetname");
	foreach(var_1cbcb46d in var_5bcb8a4d)
	{
		var_d84e54db = namespace_2f06d687::function_7387a40a("ticket_civ_male");
		var_d84e54db.var_a0f70d54 = level.var_88590003;
		var_1cbcb46d namespace_cc27597::function_c35e6aab(function_84970cc4(var_d84e54db));
		if(var_1cbcb46d.var_caae374e === "ticket_civs_01")
		{
			var_1cbcb46d thread function_76abdc5e(var_d84e54db);
			continue;
		}
		if(var_1cbcb46d.var_caae374e === "ticket_civs_02")
		{
			var_1cbcb46d thread function_50a961f5(var_d84e54db);
		}
	}
	namespace_82b91a51::function_76f13293();
	var_5bcb8a4d = namespace_14b42b8a::function_7faf4c39("ticket_civ_female", "targetname");
	foreach(var_1cbcb46d in var_5bcb8a4d)
	{
		var_d84e54db = namespace_2f06d687::function_7387a40a("ticket_civ_female");
		var_d84e54db.var_a0f70d54 = level.var_88590003;
		var_1cbcb46d namespace_cc27597::function_c35e6aab(function_84970cc4(var_d84e54db));
		if(var_1cbcb46d.var_caae374e === "ticket_civs_01")
		{
			var_1cbcb46d thread function_76abdc5e(var_d84e54db);
			continue;
		}
		if(var_1cbcb46d.var_caae374e === "ticket_civs_02")
		{
			var_1cbcb46d thread function_50a961f5(var_d84e54db);
		}
	}
}

/*
	Name: function_76abdc5e
	Namespace: namespace_36358f9c
	Checksum: 0x76C49547
	Offset: 0x8B00
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_76abdc5e(var_d84e54db)
{
	level waittill("hash_1fae4afe");
	wait(function_72a94f05(0.1, 0.5));
	if(function_5b49d38c(var_d84e54db))
	{
		self thread namespace_cc27597::function_43718187();
	}
}

/*
	Name: function_50a961f5
	Namespace: namespace_36358f9c
	Checksum: 0xECFE0CDD
	Offset: 0x8B78
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_50a961f5(var_d84e54db)
{
	level waittill("hash_c589911");
	wait(function_72a94f05(0.1, 0.5));
	if(function_5b49d38c(var_d84e54db))
	{
		self thread namespace_cc27597::function_43718187();
	}
}

/*
	Name: function_bff4697e
	Namespace: namespace_36358f9c
	Checksum: 0x7CF73FA8
	Offset: 0x8BF0
	Size: 0xF1
	Parameters: 1
	Flags: None
*/
function function_bff4697e(var_c77d2837)
{
	wait(0.05);
	foreach(var_14c918e8 in var_c77d2837)
	{
		if(function_5b49d38c(var_14c918e8))
		{
			if(isdefined(self.var_b07228b6))
			{
				var_368248f2 = function_b4cb3503(self.var_b07228b6, "targetname");
				var_14c918e8 thread namespace_b78a5cd7::function_3840d81a(var_368248f2);
			}
		}
	}
}

/*
	Name: function_8a7ecd4d
	Namespace: namespace_36358f9c
	Checksum: 0xEA82B306
	Offset: 0x8CF0
	Size: 0x133
	Parameters: 0
	Flags: None
*/
function function_8a7ecd4d()
{
	var_a61dbbf1 = namespace_2f06d687::function_7387a40a("chase_trainstation_civ_ticket_line_1");
	var_cc20365a = namespace_2f06d687::function_7387a40a("chase_trainstation_civ_ticket_line_2");
	var_f222b0c3 = namespace_2f06d687::function_7387a40a("chase_trainstation_civ_ticket_line_3");
	var_18252b2c = namespace_2f06d687::function_7387a40a("chase_trainstation_civ_ticket_line_4");
	var_e3b635fb = function_84970cc4(var_a61dbbf1, var_cc20365a, var_f222b0c3, var_18252b2c);
	var_1cbcb46d = namespace_14b42b8a::function_7922262b("chase_trainstation_ticket_line", "targetname");
	var_1cbcb46d thread namespace_cc27597::function_c35e6aab(var_e3b635fb);
	var_1cbcb46d thread function_437b4c76();
}

/*
	Name: function_437b4c76
	Namespace: namespace_36358f9c
	Checksum: 0x410EE19B
	Offset: 0x8E30
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_437b4c76()
{
	level waittill("hash_d4e3672a");
	self thread namespace_cc27597::function_43718187();
}

/*
	Name: function_97ed9674
	Namespace: namespace_36358f9c
	Checksum: 0x8D6632D9
	Offset: 0x8E60
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_97ed9674()
{
	self endon("hash_128f8789");
	self namespace_d84e54db::function_ceb883cd("panic", 1);
	var_9de10fe3 = function_b4cb3503(self.var_b07228b6, "targetname");
	while(isdefined(var_9de10fe3))
	{
		self waittill("hash_41d1aaf0");
		if(isdefined(var_9de10fe3.var_b07228b6))
		{
			var_9de10fe3 = function_b4cb3503(var_9de10fe3.var_b07228b6, "targetname");
		}
		else
		{
			var_9de10fe3 = undefined;
		}
	}
	namespace_ce0e5f06::function_523cdc93(0);
}

/*
	Name: function_2c90def0
	Namespace: namespace_36358f9c
	Checksum: 0x11A8669A
	Offset: 0x8F40
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_2c90def0()
{
	function_205aeba5();
	namespace_82b91a51::function_76f13293();
	function_465d660e();
}

/*
	Name: function_205aeba5
	Namespace: namespace_36358f9c
	Checksum: 0xA571AD6D
	Offset: 0x8F80
	Size: 0x28B
	Parameters: 0
	Flags: None
*/
function function_205aeba5()
{
	var_a61dbbf1 = namespace_2f06d687::function_7387a40a("chase_civilian_elevator1_1");
	var_a61dbbf1.var_a0f70d54 = level.var_88590003;
	var_cc20365a = namespace_2f06d687::function_7387a40a("chase_civilian_elevator1_2");
	var_cc20365a.var_a0f70d54 = level.var_88590003;
	var_f222b0c3 = namespace_2f06d687::function_7387a40a("chase_civilian_elevator1_3");
	var_f222b0c3.var_a0f70d54 = level.var_88590003;
	var_18252b2c = namespace_2f06d687::function_7387a40a("chase_civilian_elevator1_4");
	var_18252b2c.var_a0f70d54 = level.var_88590003;
	var_7545bc63 = function_84970cc4(var_a61dbbf1, var_cc20365a, var_f222b0c3, var_18252b2c);
	var_86b1c6c3 = function_6ada35ba("station_elevator_01", "targetname");
	var_86b1c6c3.var_722885f3 = var_86b1c6c3.var_722885f3 + VectorScale((0, 0, 1), 274);
	var_86b1c6c3 function_b0b70abb(1);
	var_8c7e827f = function_6ada35ba("station_elevator_door_top_left", "targetname");
	var_5548791a = function_6ada35ba("station_elevator_door_top_right", "targetname");
	var_8c7e827f function_fde61077(38, 0.25);
	var_5548791a function_fde61077(-38, 0.25);
	var_1cbcb46d = namespace_14b42b8a::function_7922262b("chase_train_elevator1", "targetname");
	var_1cbcb46d thread namespace_cc27597::function_c35e6aab(var_7545bc63);
	level thread function_e235be84(var_7545bc63, var_1cbcb46d);
}

/*
	Name: function_e235be84
	Namespace: namespace_36358f9c
	Checksum: 0x9D458FC4
	Offset: 0x9218
	Size: 0x113
	Parameters: 2
	Flags: None
*/
function function_e235be84(var_7545bc63, var_1cbcb46d)
{
	namespace_4dbf3ae3::function_1ab5ebec("chase_elevator_trigger");
	var_368248f2 = function_b4cb3503("train_station_securtiy_checkpoint", "script_noteworthy");
	foreach(var_d84e54db in var_7545bc63)
	{
		if(function_5b49d38c(var_d84e54db))
		{
			var_d84e54db thread function_37c7fee2(var_368248f2);
		}
	}
	var_1cbcb46d namespace_cc27597::function_43718187(var_7545bc63);
}

/*
	Name: function_465d660e
	Namespace: namespace_36358f9c
	Checksum: 0x395D3589
	Offset: 0x9338
	Size: 0x1EB
	Parameters: 0
	Flags: None
*/
function function_465d660e()
{
	var_a61dbbf1 = namespace_2f06d687::function_7387a40a("chase_civilian_elevator2_1");
	var_a61dbbf1.var_a0f70d54 = level.var_88590003;
	var_cc20365a = namespace_2f06d687::function_7387a40a("chase_civilian_elevator2_2");
	var_cc20365a.var_a0f70d54 = level.var_88590003;
	var_f222b0c3 = namespace_2f06d687::function_7387a40a("chase_civilian_elevator2_3");
	var_f222b0c3.var_a0f70d54 = level.var_88590003;
	var_18252b2c = namespace_2f06d687::function_7387a40a("chase_civilian_elevator2_4");
	var_18252b2c.var_a0f70d54 = level.var_88590003;
	var_7545bc63 = function_84970cc4(var_a61dbbf1, var_cc20365a, var_f222b0c3, var_18252b2c);
	var_86b1c6c3 = function_6ada35ba("station_elevator_02", "targetname");
	var_86b1c6c3.var_722885f3 = var_86b1c6c3.var_722885f3 + VectorScale((0, 0, 1), 224);
	var_86b1c6c3 function_b0b70abb(1);
	var_1cbcb46d = namespace_14b42b8a::function_7922262b("chase_train_elevator2", "targetname");
	var_1cbcb46d thread namespace_cc27597::function_c35e6aab(var_7545bc63);
	level thread function_543d2dbf(var_86b1c6c3, var_7545bc63, var_1cbcb46d);
}

/*
	Name: function_543d2dbf
	Namespace: namespace_36358f9c
	Checksum: 0x8784A550
	Offset: 0x9530
	Size: 0x1F3
	Parameters: 3
	Flags: None
*/
function function_543d2dbf(var_86b1c6c3, var_7545bc63, var_1cbcb46d)
{
	level waittill("hash_b112b97b");
	var_86b1c6c3 function_8bdea13c(70, 2);
	var_86b1c6c3 waittill("hash_a21db68a");
	var_8c7e827f = function_6ada35ba("chase_elevator_2_door_upper_left", "targetname");
	var_5548791a = function_6ada35ba("chase_elevator_2_door_upper_right", "targetname");
	var_8c7e827f function_d7e3960e(38, 0.25);
	var_5548791a function_d7e3960e(-38, 0.25);
	var_5548791a waittill("hash_a21db68a");
	var_368248f2 = function_b4cb3503("train_station_right_side_exit", "script_noteworthy");
	foreach(var_d84e54db in var_7545bc63)
	{
		if(function_5b49d38c(var_d84e54db))
		{
			var_d84e54db thread function_37c7fee2(var_368248f2);
		}
	}
	var_1cbcb46d namespace_cc27597::function_43718187(var_7545bc63);
}

/*
	Name: function_37c7fee2
	Namespace: namespace_36358f9c
	Checksum: 0x145919F7
	Offset: 0x9730
	Size: 0xC3
	Parameters: 1
	Flags: None
*/
function function_37c7fee2(var_368248f2)
{
	self endon("hash_128f8789");
	self waittill("hash_7003d0a");
	if(function_5b49d38c(self))
	{
		if(self.var_170527fb == "chase_civilian_elevator2_3_ai" || self.var_170527fb == "chase_civilian_elevator1_3_ai")
		{
			self function_169cc712(self.var_722885f3);
			self namespace_d84e54db::function_ceb883cd("panic", 1);
		}
		else
		{
			self thread namespace_b78a5cd7::function_3840d81a(var_368248f2);
		}
	}
}

/*
	Name: function_a7ce33a6
	Namespace: namespace_36358f9c
	Checksum: 0xDA746078
	Offset: 0x9800
	Size: 0x3AB
	Parameters: 2
	Flags: None
*/
function function_a7ce33a6(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		level.var_ebe3b234 = 1;
		level.var_88590003 = namespace_2f06d687::function_7387a40a("chase_bomber", &function_d29dd4ef);
		function_f423f05a(var_b04bc952);
		var_d874dcf = function_6ada35ba("train_ped_blocker_clip", "targetname");
		var_d874dcf function_dc8c8404();
		namespace_80983c42::function_593e8a39("cin_new_05_01_sun_on");
		level namespace_ad23e503::function_c35e6aab("chase_train_move");
		namespace_2f06d687::function_2b37a3c9("train_station_cafe_civs", "targetname", &function_97ed9674);
		namespace_84970cc4::function_eaab05dc(function_99201f25("collapse_bridge", "targetname"), &function_dc8c8404);
		namespace_96fa87af::function_994832bd("chase_wasp_mg", &function_694c9886);
		namespace_96fa87af::function_994832bd("chase_wasp_rocket", &function_694c9886);
		function_93cf0e75(1);
		function_e8d2d7d8(2);
		function_e8d2d7d8(3);
		level thread function_8c82b44d(2);
		namespace_cc27597::function_5c143f59("p7_fxanim_cp_newworld_chase_wasp_billboard_bundle");
		namespace_4dbf3ae3::function_42e87952("hall_colors_train_station_end");
		namespace_d7916d65::function_a2995f22();
		level thread function_660e6b31(1);
		level thread function_33cb6df1();
		level thread function_cd5f4644(var_74cd64bc);
		level thread function_11eee9db(var_b04bc952);
		level thread function_ef62a489();
		level thread function_28aaa11a(30);
		namespace_dabbe128::function_95670def(&function_25e57b80);
		level thread function_b453eaab();
		level.var_67e1f60e[0] = &function_3936e284;
	}
	level thread function_699bfff1(1);
	level thread function_3960c46e();
	level thread function_fb28b377("chase_street_traffic_location1");
	level thread function_fb28b377("chase_street_traffic_location2");
}

/*
	Name: function_83d6701
	Namespace: namespace_36358f9c
	Checksum: 0xA94BD19A
	Offset: 0x9BB8
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_83d6701()
{
	level endon("hash_de039dbd");
	namespace_4dbf3ae3::function_1ab5ebec("hall_pre_slide_color_trigger");
	level thread namespace_cc27597::function_43718187("cin_new_06_01_chase_vign_hall_traversal_rooftops");
}

/*
	Name: function_4d063e30
	Namespace: namespace_36358f9c
	Checksum: 0x7E07E7AC
	Offset: 0x9C08
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function function_4d063e30(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
}

/*
	Name: function_af48bb3e
	Namespace: namespace_36358f9c
	Checksum: 0x155A569A
	Offset: 0x9C38
	Size: 0x2F3
	Parameters: 2
	Flags: None
*/
function function_af48bb3e(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		level.var_ebe3b234 = 1;
		namespace_80983c42::function_593e8a39("cin_new_05_01_sun_on");
		level.var_88590003 = namespace_2f06d687::function_7387a40a("chase_bomber", &function_d29dd4ef);
		function_f423f05a(var_b04bc952);
		level namespace_ad23e503::function_c35e6aab("chase_train_move");
		level thread function_699bfff1(1);
		level thread function_660e6b31(1);
		namespace_84970cc4::function_eaab05dc(function_99201f25("collapse_bridge", "targetname"), &function_dc8c8404);
		namespace_84970cc4::function_eaab05dc(function_99201f25("chase_train_b", "targetname"), &function_dc8c8404);
		function_93cf0e75(1);
		function_93cf0e75(2);
		function_93cf0e75(3);
		namespace_d7916d65::function_a2995f22();
		level thread function_b453eaab();
		level thread function_3960c46e();
		level thread function_11eee9db(var_b04bc952);
		level thread function_ef62a489();
		level thread function_28aaa11a(30);
		namespace_dabbe128::function_95670def(&function_25e57b80);
		namespace_4dbf3ae3::function_42e87952("hall_pre_slide_color_trigger");
	}
	else
	{
		namespace_ce0e5f06::function_c1c980d8("chase_old_zurich_enemy_culling");
	}
	namespace_2f06d687::function_2b37a3c9("chase_construction_site_robots", "script_noteworthy", &function_9d580310);
	level thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_newworld_chase_glass_roof_bundle");
	function_2dccd8();
}

/*
	Name: function_9d580310
	Namespace: namespace_36358f9c
	Checksum: 0x64B55CA
	Offset: 0x9F38
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_9d580310()
{
	self endon("hash_128f8789");
	self.var_3a90f16b = function_b6b79a0(self.var_3a90f16b * 0.5);
	self.var_15dfd6c = 0.25;
}

/*
	Name: function_2dccd8
	Namespace: namespace_36358f9c
	Checksum: 0xF2CFC415
	Offset: 0x9F90
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_2dccd8()
{
	level thread function_6a5889b8();
	level thread function_40a5f97b();
	function_d1512fd8();
	function_f2f82114();
}

/*
	Name: function_2f1ed218
	Namespace: namespace_36358f9c
	Checksum: 0xE858DA75
	Offset: 0x9FF0
	Size: 0x4B
	Parameters: 4
	Flags: None
*/
function function_2f1ed218(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	level notify("hash_97eba3fd");
	namespace_d0ef8521::function_31cd1834("cp_level_newworld_rooftop_chase");
}

/*
	Name: function_3960c46e
	Namespace: namespace_36358f9c
	Checksum: 0xB462AD5B
	Offset: 0xA048
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_3960c46e()
{
	namespace_cc27597::function_8f9f34e0("cin_new_06_01_chase_vign_construction_civs", &function_aec9f1d7, "init");
	namespace_cc27597::function_c35e6aab("cin_new_06_01_chase_vign_construction_civs");
	level waittill("hash_b1604833");
	namespace_cc27597::function_43718187("cin_new_06_01_chase_vign_construction_civs");
}

/*
	Name: function_aec9f1d7
	Namespace: namespace_36358f9c
	Checksum: 0x4027DA05
	Offset: 0xA0C8
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_aec9f1d7(var_c77d2837)
{
	var_c77d2837["chase_construction_scene_civ_1"] thread function_6d6e8e77(var_c77d2837["construction_civs_clipboard"]);
	var_c77d2837["chase_construction_scene_civ_3"] thread function_6d6e8e77(var_c77d2837["construction_civs_mug"]);
}

/*
	Name: function_6d6e8e77
	Namespace: namespace_36358f9c
	Checksum: 0x56EBB98B
	Offset: 0xA140
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_6d6e8e77(var_fff2323a)
{
	self waittill("hash_128f8789");
	var_fff2323a function_dc8c8404();
}

/*
	Name: function_d1512fd8
	Namespace: namespace_36358f9c
	Checksum: 0x319EE17F
	Offset: 0xA178
	Size: 0x21B
	Parameters: 0
	Flags: None
*/
function function_d1512fd8()
{
	level endon("hash_ad84c994");
	level thread function_68490836();
	level namespace_ad23e503::function_1ab5ebec("teleport_hall_at_slide");
	var_13a78b8b = function_b4cb3503("teleport_hall_at_slide_node", "targetname");
	level.var_2dca8767 namespace_ce0e5f06::function_d0aa2f4f();
	level notify("hash_de039dbd");
	level.var_2dca8767 function_470f7e4c();
	level namespace_cc27597::function_fcf56ab5("cin_new_06_01_chase_vign_hall_traversal_train");
	level namespace_cc27597::function_fcf56ab5("cin_new_06_01_chase_vign_hall_traversal_rooftops");
	level.var_2dca8767 function_9869ab67(var_13a78b8b.var_722885f3, var_13a78b8b.var_6ab6f4fd, 0, 1);
	level.var_2dca8767 function_169cc712(var_13a78b8b, 1);
	namespace_82b91a51::function_76f13293();
	level.var_2dca8767 namespace_ce0e5f06::function_c949a8ed();
	level.var_2dca8767.var_7dfaf62 = 32;
	var_fab95496 = function_b4cb3503("hall_post_slide", "targetname");
	level.var_2dca8767 function_169cc712(var_fab95496, 1);
	level.var_2dca8767 namespace_82b91a51::function_564f2d81("goal", "near_goal");
	namespace_4dbf3ae3::function_42e87952("hall_construction_site_color_trigger");
}

/*
	Name: function_68490836
	Namespace: namespace_36358f9c
	Checksum: 0xACCE809
	Offset: 0xA3A0
	Size: 0x249
	Parameters: 0
	Flags: None
*/
function function_68490836()
{
	namespace_4dbf3ae3::function_1ab5ebec("spawn_construction_site_enemies");
	namespace_82b91a51::function_76f13293();
	var_e3b635fb = namespace_2f06d687::function_289e6fd1("construction_site_upper_level");
	foreach(var_d84e54db in var_e3b635fb)
	{
		level.var_2dca8767 function_76aa5b30(var_d84e54db, 1);
	}
	var_e3b635fb = namespace_2f06d687::function_289e6fd1("construction_site_initial_left");
	foreach(var_d84e54db in var_e3b635fb)
	{
		var_d84e54db thread function_7b0aac1e();
	}
	namespace_4dbf3ae3::function_1ab5ebec("spawn_construction_site_enemies_2");
	namespace_82b91a51::function_76f13293();
	var_e3b635fb = namespace_2f06d687::function_289e6fd1("construction_site_upper_level");
	foreach(var_d84e54db in var_e3b635fb)
	{
		level.var_2dca8767 function_76aa5b30(var_d84e54db, 1);
	}
}

/*
	Name: function_7b0aac1e
	Namespace: namespace_36358f9c
	Checksum: 0x246E0BB7
	Offset: 0xA5F8
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_7b0aac1e()
{
	self endon("hash_128f8789");
	namespace_4dbf3ae3::function_1ab5ebec("construction_site_left_wallrun");
	function_e1109a4f(function_84970cc4(self));
}

/*
	Name: function_f2f82114
	Namespace: namespace_36358f9c
	Checksum: 0xC3605629
	Offset: 0xA650
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_f2f82114()
{
	namespace_4dbf3ae3::function_1ab5ebec("hall_construction_site_beckon");
	level thread namespace_cc27597::function_43718187("cin_new_08_01_rooftops_vign_beckon");
}

/*
	Name: function_6a5889b8
	Namespace: namespace_36358f9c
	Checksum: 0x9C915584
	Offset: 0xA698
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_6a5889b8()
{
	var_7125f45d = namespace_14b42b8a::function_7faf4c39("construction_glass_break", "targetname");
	namespace_84970cc4::function_966ecb29(var_7125f45d, &function_8efffbca);
}

/*
	Name: function_40a5f97b
	Namespace: namespace_36358f9c
	Checksum: 0x5B8BE3CD
	Offset: 0xA6F8
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_40a5f97b()
{
	level thread function_4cd03714("start_construction_site_train", "construction_train_org", "construction_train_start", "stop_construction_site_train", "chase_construction_train_rumble", 1);
}

/*
	Name: function_9262d885
	Namespace: namespace_36358f9c
	Checksum: 0xA6952C6B
	Offset: 0xA748
	Size: 0x253
	Parameters: 2
	Flags: None
*/
function function_9262d885(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		namespace_80983c42::function_593e8a39("cin_new_05_01_sun_on");
		level.var_ebe3b234 = 1;
		level.var_88590003 = namespace_2f06d687::function_7387a40a("chase_bomber", &function_d29dd4ef);
		function_f423f05a(var_b04bc952);
		level thread function_ef62a489();
		level thread function_699bfff1(1);
		level thread function_660e6b31(1);
		level thread namespace_cc27597::function_43718187("cin_new_08_01_rooftops_vign_beckon");
		namespace_cc27597::function_c35e6aab("p7_fxanim_cp_newworld_chase_glass_roof_bundle");
		namespace_d7916d65::function_a2995f22();
		level thread function_28aaa11a(30);
		namespace_dabbe128::function_95670def(&function_25e57b80);
		level thread function_ea7bace5(1);
	}
	else
	{
		namespace_ce0e5f06::function_c1c980d8("chase_construction_site_enemy_culling");
	}
	level.var_67e1f60e[0] = undefined;
	level thread namespace_ce0e5f06::function_30ec5bf7();
	level notify("hash_29e8e5f2");
	level notify("hash_ad84c994");
	namespace_76d95162::function_d9f49fba(0);
	level thread function_fa7f41e5();
	level waittill("hash_46308f6f");
	level notify("hash_bdb23e9d");
	namespace_1d795d47::function_be8adfb8(var_b04bc952);
	level namespace_71e9cb84::function_74d6b22f("set_fog_bank", 0);
}

/*
	Name: function_500cd65f
	Namespace: namespace_36358f9c
	Checksum: 0x76B89129
	Offset: 0xA9A8
	Size: 0x30B
	Parameters: 4
	Flags: None
*/
function function_500cd65f(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a namespace_9f824288::function_bee608f0("b_has_done_chase", 1);
	}
	level namespace_ad23e503::function_74d6b22f("chase_done");
	level notify("hash_3d00ae0c");
	namespace_dabbe128::function_1f1cf008(&function_25e57b80);
	function_b83ef318();
	var_f2c7e89 = function_6ada35ba("chase_door_breach", "targetname");
	if(isdefined(var_f2c7e89))
	{
		var_f2c7e89 function_dc8c8404();
	}
	var_378eee5b = function_6ada35ba("newworld_chase_window_break_", "targetname");
	if(isdefined(var_378eee5b))
	{
		var_378eee5b function_dc8c8404();
	}
	namespace_cc27597::function_fcf56ab5("p7_fxanim_gp_wasp_tower_flaps_bundle", 1);
	namespace_cc27597::function_fcf56ab5("p7_fxanim_gp_wasp_tower_arms_01_bundle", 1);
	namespace_cc27597::function_fcf56ab5("p7_fxanim_gp_wasp_tower_arms_02_bundle", 1);
	namespace_cc27597::function_fcf56ab5("p7_fxanim_gp_wasp_tower_arms_03_bundle", 1);
	namespace_cc27597::function_fcf56ab5("p7_fxanim_gp_wasp_tower_arms_04_bundle", 1);
	namespace_cc27597::function_fcf56ab5("p7_fxanim_cp_newworld_chase_wasp_billboard_bundle", 1);
	var_d874dcf = function_6ada35ba("chase_wasp_billboard_clip", "targetname");
	var_d874dcf function_dc8c8404();
	var_b2afdf94 = function_6ada35ba("nw_apt_breach_decals", "targetname");
	var_b2afdf94 function_dc8c8404();
	namespace_d0ef8521::function_74d6b22f("cp_level_newworld_underground_locate_terrorist");
	function_776190fe();
}

/*
	Name: function_776190fe
	Namespace: namespace_36358f9c
	Checksum: 0x485C29BD
	Offset: 0xACC0
	Size: 0x5DB
	Parameters: 0
	Flags: None
*/
function function_776190fe()
{
	namespace_ce0e5f06::function_bbd12ed2("p7_fxanim_cp_newworld_chase_door_breach_bundle");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_05_01_apartmentbreach_1st_sh010");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_05_01_apartmentbreach_3rd_sh020");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_05_01_apartmentbreach_3rd_sh030");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_05_01_apartmentbreach_3rd_sh040");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_05_01_apartmentbreach_3rd_sh050");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_05_01_apartmentbreach_3rd_sh060");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_05_01_apartmentbreach_3rd_sh070");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_05_01_apartmentbreach_3rd_sh080");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_05_01_apartmentbreach_3rd_sh090");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_05_01_apartmentbreach_3rd_sh100");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_05_01_apartmentbreach_3rd_sh110");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_05_01_apartmentbreach_3rd_sh120");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_05_01_apartmentbreach_3rd_sh130");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_05_01_apartmentbreach_1st_sh140");
	namespace_ce0e5f06::function_bbd12ed2("p7_fxanim_cp_newworld_chase_window_break_bundle");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_06_01_chase_vign_cower");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_06_01_chase_vign_bar_civs");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_06_01_chase_vign_railing_civs_var01");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_06_01_chase_vign_train_civs_var2");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_06_01_chase_vign_bar_stand_civs_var1");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_06_01_chase_vign_bar_stand_civs_var2");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_06_01_chase_vign_sitting_civs_right");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_06_01_chase_vign_sitting_civs_left");
	namespace_ce0e5f06::function_bbd12ed2("p7_fxanim_cp_newworld_bridge_collapse_bundle");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_07_01_bridge_collapse_traverse");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_06_01_chase_vign_hall_traversal_bridge");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_06_02_chase_vign_wallrun");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_06_01_chase_vign_hall_traversal_train");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_06_01_chase_vign_train_civs");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_06_01_chase_vign_ticket_civ_female");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_06_01_chase_vign_ticket_civ_male");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_06_01_chase_vign_ticket_civ_group_left");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_06_01_chase_vign_elevator_civs");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_06_01_chase_vign_hall_traversal_rooftops");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_08_01_rooftops_vign_beckon");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_06_01_chase_vign_flee");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_06_01_chase_vign_encounter020");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_06_01_chase_vign_device");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_08_01_rooftops_vign_encounter050");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_08_01_rooftops_vign_encounter070");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_08_01_rooftops_vign_encounter070_end");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_08_01_rooftops_vign_encounter080");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_08_01_rooftops_vign_encounter090");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_08_01_rooftops_vign_encounter100");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_08_01_rooftops_vign_encounter110");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_08_01_rooftops_vign_encounter120");
	namespace_ce0e5f06::function_bbd12ed2("cin_gen_melee_robot_hits_civ");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_06_01_chase_vign_takedown");
	namespace_ce0e5f06::function_bbd12ed2("p7_fxanim_gp_wasp_tower_flaps_bundle");
	namespace_ce0e5f06::function_bbd12ed2("p7_fxanim_gp_wasp_tower_arms_01_bundle");
	namespace_ce0e5f06::function_bbd12ed2("p7_fxanim_gp_wasp_tower_arms_02_bundle");
	namespace_ce0e5f06::function_bbd12ed2("p7_fxanim_gp_wasp_tower_arms_03_bundle");
	namespace_ce0e5f06::function_bbd12ed2("p7_fxanim_gp_wasp_tower_arms_04_bundle");
	namespace_ce0e5f06::function_bbd12ed2("p7_fxanim_cp_newworld_chase_wasp_billboard_bundle");
	wait(3);
	namespace_ce0e5f06::function_bbd12ed2("cin_new_09_01_glassceiling_1st_tackle_part01");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_09_01_glassceiling_1st_tackle_part01a");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_09_01_glassceiling_1st_tackle_part02");
	namespace_ce0e5f06::function_bbd12ed2("p7_fxanim_cp_newworld_chase_glass_roof_bundle");
	namespace_ce0e5f06::function_bbd12ed2("p7_fxanim_cp_newworld_chase_air_traffic_hunters_01_bundle");
	namespace_ce0e5f06::function_bbd12ed2("p7_fxanim_cp_newworld_chase_air_traffic_hunters_02_bundle");
	namespace_ce0e5f06::function_bbd12ed2("p7_fxanim_cp_newworld_chase_air_traffic_hunters_03_bundle");
}

/*
	Name: function_fa7f41e5
	Namespace: namespace_36358f9c
	Checksum: 0x37E0B821
	Offset: 0xB2A8
	Size: 0x39B
	Parameters: 0
	Flags: None
*/
function function_fa7f41e5()
{
	namespace_cc27597::function_8f9f34e0("cin_new_09_01_glassceiling_1st_tackle_part01", &function_8f838402, "play");
	namespace_cc27597::function_8f9f34e0("cin_new_09_01_glassceiling_1st_tackle_part01", &function_92556ff1, "play");
	namespace_cc27597::function_8f9f34e0("cin_new_09_01_glassceiling_1st_tackle_part01", &function_7ad5702a, "play");
	namespace_cc27597::function_8f9f34e0("cin_new_09_01_glassceiling_1st_tackle_part01a", &function_3b3a0120, "play");
	namespace_cc27597::function_8f9f34e0("cin_new_09_01_glassceiling_1st_tackle_part01a", &namespace_ce0e5f06::function_43dfaf16, "skip_started");
	namespace_cc27597::function_8f9f34e0("cin_new_09_01_glassceiling_1st_tackle_part02", &function_4c248a91, "play");
	namespace_cc27597::function_8f9f34e0("cin_new_09_01_glassceiling_1st_tackle_part02", &function_d081fcc5, "play");
	namespace_cc27597::function_8f9f34e0("cin_new_09_01_glassceiling_1st_tackle_part02", &function_47edd0a5);
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_newworld_chase_glass_roof_bundle", &function_920e3893, "play");
	level thread function_bc6c3aa5();
	var_5b5cfed1 = function_6ada35ba("start_glass_ceiling_igc", "targetname");
	level.var_f2a5cb1e = var_5b5cfed1;
	while(1)
	{
		var_5b5cfed1 waittill("hash_4dbf3ae3", var_a3d46ee4);
		if(function_65f192a6(var_a3d46ee4))
		{
			level thread function_3174cbb();
			level notify("hash_a70b0538");
			break;
		}
	}
	level thread function_bc6c3aa5();
	if(isdefined(var_a3d46ee4))
	{
		var_a3d46ee4 namespace_5dc5e20a::function_18cd2f76();
	}
	wait(0.625);
	if(namespace_cc27597::function_367f8966("cin_new_08_01_rooftops_vign_encounter120"))
	{
		namespace_cc27597::function_fcf56ab5("cin_new_08_01_rooftops_vign_encounter120");
	}
	if(isdefined(var_a3d46ee4))
	{
		var_a3d46ee4 namespace_5dc5e20a::function_75f710f6();
	}
	level notify("hash_c1a074c7");
	level thread function_382f4206();
	if(isdefined(level.var_c6980f01))
	{
		level thread [[level.var_c6980f01]]();
	}
	level thread namespace_e38c3c58::function_f4a6634b();
	level.var_88590003 namespace_71e9cb84::function_74d6b22f("chase_suspect_fx", 0);
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_newworld_chase_glass_roof_bundle");
	level namespace_cc27597::function_43718187("cin_new_09_01_glassceiling_1st_tackle_part01", var_a3d46ee4);
}

/*
	Name: function_47edd0a5
	Namespace: namespace_36358f9c
	Checksum: 0x4D937604
	Offset: 0xB650
	Size: 0x5B
	Parameters: 1
	Flags: None
*/
function function_47edd0a5(var_c77d2837)
{
	var_c77d2837["player 1"] waittill("hash_f39fff1a");
	level namespace_ad23e503::function_74d6b22f("infinite_white_transition");
	namespace_ce0e5f06::function_2eded728(0);
}

/*
	Name: function_bc6c3aa5
	Namespace: namespace_36358f9c
	Checksum: 0xA39FC68E
	Offset: 0xB6B8
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_bc6c3aa5()
{
	if(namespace_cc27597::function_367f8966("cin_new_08_01_rooftops_vign_encounter120"))
	{
		level waittill("hash_7f4315eb");
	}
	level.var_88590003 function_48f26766();
	level namespace_cc27597::function_c35e6aab("cin_new_09_01_glassceiling_1st_tackle_part01");
}

/*
	Name: function_8f838402
	Namespace: namespace_36358f9c
	Checksum: 0x275E7EB8
	Offset: 0xB728
	Size: 0x8B
	Parameters: 1
	Flags: None
*/
function function_8f838402(var_c77d2837)
{
	var_c77d2837["chase_bomber_ai"] function_48f26766();
	var_c77d2837["hall"] function_8c8e79fe();
	var_c77d2837["hall"] waittill("hash_f855e936");
	var_c77d2837["hall"] thread namespace_ce0e5f06::function_c949a8ed(1);
}

/*
	Name: function_92556ff1
	Namespace: namespace_36358f9c
	Checksum: 0xC732D223
	Offset: 0xB7C0
	Size: 0xBB
	Parameters: 1
	Flags: None
*/
function function_92556ff1(var_c77d2837)
{
	var_c77d2837["hall"] function_25b39be3(1);
	var_c77d2837["chase_bomber_ai"] function_25b39be3(1);
	var_c77d2837["player 1"] waittill("hash_c2e27e50");
	function_bea2b721(1);
	var_c77d2837["player 1"] waittill("hash_2fc79de1");
	function_bea2b721(0);
}

/*
	Name: function_7ad5702a
	Namespace: namespace_36358f9c
	Checksum: 0x3DB443A6
	Offset: 0xB888
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_7ad5702a(var_c77d2837)
{
	level waittill("hash_6b9e8dcb");
	level namespace_71e9cb84::function_74d6b22f("set_fog_bank", 2);
}

/*
	Name: function_3b3a0120
	Namespace: namespace_36358f9c
	Checksum: 0xC16315F0
	Offset: 0xB8D0
	Size: 0x73
	Parameters: 1
	Flags: None
*/
function function_3b3a0120(var_c77d2837)
{
	var_c77d2837["player 1"] waittill("hash_347ba65d");
	if(!namespace_cc27597::function_b1f75ee9())
	{
		namespace_ce0e5f06::function_2eded728(1);
		level thread namespace_ce0e5f06::function_eaf9c027("cp_newworld_fs_dni", "fullscreen_additive");
	}
}

/*
	Name: function_4c248a91
	Namespace: namespace_36358f9c
	Checksum: 0xA9E79CA4
	Offset: 0xB950
	Size: 0xA3
	Parameters: 1
	Flags: None
*/
function function_4c248a91(var_c77d2837)
{
	var_c77d2837["taylor"] function_8c8e79fe();
	var_c77d2837["taylor"] waittill("hash_8b7880e2");
	var_c77d2837["taylor"] thread namespace_ce0e5f06::function_c949a8ed(1);
	var_c77d2837["taylor"] waittill("hash_76000c11");
	var_c77d2837["taylor"] thread namespace_ce0e5f06::function_4943984c();
}

/*
	Name: function_d081fcc5
	Namespace: namespace_36358f9c
	Checksum: 0x4D0775B1
	Offset: 0xBA00
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_d081fcc5(var_c77d2837)
{
	var_c77d2837["hall"] waittill("hash_76000c11");
	var_c77d2837["hall"] thread namespace_ce0e5f06::function_4943984c(1);
}

/*
	Name: function_920e3893
	Namespace: namespace_36358f9c
	Checksum: 0xA47403B1
	Offset: 0xBA58
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function function_920e3893(var_c77d2837)
{
	var_c77d2837["newworld_chase_glass_roof"] function_25b39be3(1);
}

/*
	Name: function_b83ef318
	Namespace: namespace_36358f9c
	Checksum: 0x5D85DD41
	Offset: 0xBA98
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_b83ef318()
{
	namespace_84970cc4::function_eaab05dc(function_c20c2e8(), &function_dc8c8404);
	level thread function_699bfff1(0);
	level thread function_660e6b31(0);
}

/*
	Name: function_9c291f73
	Namespace: namespace_36358f9c
	Checksum: 0xC96A5D88
	Offset: 0xBB08
	Size: 0x12B
	Parameters: 0
	Flags: None
*/
function function_9c291f73()
{
	self endon("hash_128f8789");
	if(isdefined(self.var_fc7f3f21) && self.var_fc7f3f21)
	{
		return;
	}
	if(!isdefined(self.var_bf827f00))
	{
		self.var_bf827f00 = 0;
	}
	switch(self.var_bf827f00)
	{
		case 0:
		{
			level.var_2dca8767 namespace_71b8dba1::function_81141386("hall_don_t_take_him_out_0", undefined, 0, self);
			break;
		}
		case 1:
		{
			level.var_2dca8767 namespace_71b8dba1::function_81141386("hall_didn_t_you_hear_me_0", undefined, 0, self);
			break;
		}
		case 2:
		{
			level.var_2dca8767 namespace_71b8dba1::function_81141386("hall_this_part_isn_t_abou_0", undefined, 0, self);
			break;
		}
		case 3:
		{
			level.var_2dca8767 namespace_71b8dba1::function_81141386("hall_i_m_getting_tired_of_0", undefined, 0, self);
			break;
		}
	}
	self thread function_df9bd811();
}

/*
	Name: function_df9bd811
	Namespace: namespace_36358f9c
	Checksum: 0x7BDA0E75
	Offset: 0xBC40
	Size: 0x27
	Parameters: 0
	Flags: None
*/
function function_df9bd811()
{
	self.var_bf827f00++;
	self.var_fc7f3f21 = 1;
	wait(15);
	self.var_fc7f3f21 = 0;
}

/*
	Name: function_6a59765b
	Namespace: namespace_36358f9c
	Checksum: 0xA9B9F55E
	Offset: 0xBC70
	Size: 0xC1
	Parameters: 0
	Flags: None
*/
function function_6a59765b()
{
	level thread function_e54bdd35();
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		if(var_5dc5e20a namespace_ce0e5f06::function_c633d8fe())
		{
			continue;
		}
		var_5dc5e20a thread function_9a9ab34a();
	}
}

/*
	Name: function_e54bdd35
	Namespace: namespace_36358f9c
	Checksum: 0x2FE51276
	Offset: 0xBD40
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_e54bdd35()
{
	level endon("hash_a70b0538");
	wait(30);
	level.var_2dca8767 namespace_71b8dba1::function_81141386("hall_jump_down_we_can_t_0");
}

/*
	Name: function_3775434b
	Namespace: namespace_36358f9c
	Checksum: 0xADA10AB1
	Offset: 0xBD88
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_3775434b()
{
	level endon("hash_bdb23e9d");
	namespace_4dbf3ae3::function_1ab5ebec("bar_2nd_floor_enemy_VO");
	var_3e671a1 = namespace_2f06d687::function_41e09b9("bar_2nd_floor_robot");
	if(var_3e671a1 > 0)
	{
		level.var_2dca8767 namespace_71b8dba1::function_81141386("hall_heads_up_hostiles_s_0");
	}
}

/*
	Name: function_6a13c1d0
	Namespace: namespace_36358f9c
	Checksum: 0xD965A22E
	Offset: 0xBE08
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_6a13c1d0()
{
	level.var_2dca8767 namespace_71b8dba1::function_81141386("hall_sending_his_location_0", 0.5);
}

/*
	Name: function_f4fcddfb
	Namespace: namespace_36358f9c
	Checksum: 0x5018C309
	Offset: 0xBE40
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_f4fcddfb()
{
	namespace_4dbf3ae3::function_1ab5ebec("chase_mid_bar_VO");
	level.var_2dca8767 namespace_71b8dba1::function_81141386("hall_i_still_have_line_of_0");
}

/*
	Name: function_a00b4c50
	Namespace: namespace_36358f9c
	Checksum: 0x6125AB10
	Offset: 0xBE88
	Size: 0xAB
	Parameters: 1
	Flags: None
*/
function function_a00b4c50(var_74cd64bc)
{
	if(!isdefined(var_74cd64bc))
	{
		var_74cd64bc = 0;
	}
	level namespace_ad23e503::function_c35e6aab("bridge_collapse_vo_complete");
	level namespace_ad23e503::function_c35e6aab("bridge_collapse_vo_started");
	if(!var_74cd64bc)
	{
		level.var_79ddcc8b namespace_71b8dba1::function_81141386("zsfh_surrender_this_is_0", undefined, 1);
	}
	level waittill("hash_6a29494d");
	level thread function_c2c5155b();
}

/*
	Name: function_c2c5155b
	Namespace: namespace_36358f9c
	Checksum: 0xCCAE8E12
	Offset: 0xBF40
	Size: 0x183
	Parameters: 0
	Flags: None
*/
function function_c2c5155b()
{
	if(!level namespace_ad23e503::function_dbca4c5d("bridge_collapse_vo_complete"))
	{
		level namespace_ad23e503::function_c35e6aab("bridge_collapse_vo_complete");
	}
	if(!level namespace_ad23e503::function_dbca4c5d("bridge_collapse_vo_started"))
	{
		level namespace_ad23e503::function_c35e6aab("bridge_collapse_vo_started");
	}
	level namespace_ad23e503::function_74d6b22f("bridge_collapse_vo_started");
	level.var_2dca8767 namespace_71b8dba1::function_81141386("hall_our_boy_s_hacking_th_0", 0.5);
	function_37cbcf1a("amb_train_horn_distant", (-10536, -23636, 10075));
	level namespace_71b8dba1::function_13b3b16a("plyr_he_s_running_scared_0", 0.5);
	level.var_2dca8767 namespace_71b8dba1::function_81141386("hall_you_re_a_smart_one_n_0", 0.25);
	level namespace_ad23e503::function_74d6b22f("bridge_collapse_vo_complete");
	level namespace_ad23e503::function_9d134160("bridge_collapse_vo_started");
}

/*
	Name: function_105db04
	Namespace: namespace_36358f9c
	Checksum: 0x944E40E0
	Offset: 0xC0D0
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_105db04()
{
	level namespace_ad23e503::function_1ab5ebec("bridge_collapse_vo_complete");
	level namespace_ad23e503::function_1ab5ebec("players_climb_up_post_bridge_collapse");
	level.var_2dca8767 namespace_71b8dba1::function_81141386("hall_son_of_a_bitch_is_st_0", 0.5);
}

/*
	Name: function_be23c07c
	Namespace: namespace_36358f9c
	Checksum: 0xE01E39E8
	Offset: 0xC148
	Size: 0xE9
	Parameters: 0
	Flags: None
*/
function function_be23c07c()
{
	namespace_4dbf3ae3::function_1ab5ebec("chase_trains");
	level.var_2dca8767 namespace_71b8dba1::function_81141386("hall_use_that_billboard_t_0");
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		if(var_5dc5e20a namespace_ce0e5f06::function_c633d8fe())
		{
			continue;
		}
		var_5dc5e20a thread namespace_82b91a51::function_32d40124(&"CP_MI_ZURICH_NEWWORLD_WALLRUN_TUTORIAL", 0, undefined, 4);
	}
}

/*
	Name: function_a69280be
	Namespace: namespace_36358f9c
	Checksum: 0x2DE0066F
	Offset: 0xC240
	Size: 0xDB
	Parameters: 2
	Flags: None
*/
function function_a69280be(var_81a32895, var_2380d5c)
{
	self endon("hash_128f8789");
	level.var_2dca8767 namespace_71b8dba1::function_81141386("hall_alright_activating_0", undefined, 0, self);
	var_dfcc01fd = namespace_ce0e5f06::function_71840183(var_81a32895, var_2380d5c);
	var_12b288c7 = var_dfcc01fd.var_4be20d44 + "_fired";
	var_a2cc98e = var_81a32895 + "_use_ability_tutorial";
	self thread function_47c78606(var_a2cc98e);
	self thread function_57ffa633(var_12b288c7);
}

/*
	Name: function_47c78606
	Namespace: namespace_36358f9c
	Checksum: 0x6559DA12
	Offset: 0xC328
	Size: 0x1FD
	Parameters: 1
	Flags: None
*/
function function_47c78606(var_a2cc98e)
{
	level endon("hash_29e8e5f2");
	self endon(var_a2cc98e);
	self endon("hash_128f8789");
	if(!self namespace_ad23e503::function_dbca4c5d(var_a2cc98e))
	{
		return;
	}
	if(self namespace_ad23e503::function_7922262b(var_a2cc98e))
	{
		return;
	}
	wait(10);
	var_e3b635fb = function_b8494651("axis");
	foreach(var_d84e54db in var_e3b635fb)
	{
		if(function_5b49d38c(var_d84e54db) && var_d84e54db.var_e6e9b8de === "script_vehicle")
		{
			break;
		}
	}
	var_d16e6be2 = function_dc99997a(0, 3);
	switch(var_d16e6be2)
	{
		case 0:
		{
			level.var_2dca8767 namespace_71b8dba1::function_81141386("hall_remember_your_cyber_1", undefined, 0, self);
			break;
		}
		case 1:
		{
			level.var_2dca8767 namespace_71b8dba1::function_81141386("hall_use_system_paralysis_0", undefined, 0, self);
			break;
		}
		case 2:
		{
			level.var_2dca8767 namespace_71b8dba1::function_81141386("hall_why_you_doing_this_o_0", undefined, 0, self);
			break;
		}
	}
}

/*
	Name: function_57ffa633
	Namespace: namespace_36358f9c
	Checksum: 0xF9792CE0
	Offset: 0xC530
	Size: 0x12B
	Parameters: 1
	Flags: None
*/
function function_57ffa633(var_12b288c7)
{
	self endon("hash_128f8789");
	level endon("hash_29e8e5f2");
	self waittill(var_12b288c7);
	wait(0.5);
	var_d16e6be2 = function_dc99997a(0, 3);
	switch(var_d16e6be2)
	{
		case 0:
		{
			level.var_2dca8767 namespace_71b8dba1::function_81141386("hall_piece_of_cake_0", undefined, 0, self);
			break;
		}
		case 1:
		{
			level.var_2dca8767 namespace_71b8dba1::function_81141386("hall_you_re_getting_the_h_0", undefined, 0, self);
			break;
		}
		case 2:
		{
			level.var_2dca8767 namespace_71b8dba1::function_81141386("hall_nice_going_newblood_0", undefined, 0, self);
			break;
		}
	}
	level.var_2dca8767 namespace_71b8dba1::function_81141386("hall_your_cyber_abilities_0", 0.5, 0, self);
}

/*
	Name: function_cd5f4644
	Namespace: namespace_36358f9c
	Checksum: 0x79140F82
	Offset: 0xC668
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function function_cd5f4644(var_74cd64bc)
{
	if(!isdefined(var_74cd64bc))
	{
		var_74cd64bc = 0;
	}
	if(!var_74cd64bc)
	{
		level waittill("hash_f29a6266");
	}
	else
	{
		wait(0.5);
	}
	level.var_2dca8767 namespace_71b8dba1::function_81141386("hall_he_s_heading_into_ol_0");
}

/*
	Name: function_209e2a03
	Namespace: namespace_36358f9c
	Checksum: 0x4CF8E2CE
	Offset: 0xC6D8
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_209e2a03()
{
	namespace_4dbf3ae3::function_1ab5ebec("player_enters_old_rooftops_vo");
	level.var_2dca8767 namespace_71b8dba1::function_81141386("hall_he_s_getting_distanc_0", 0.25);
}

/*
	Name: function_cc7848ea
	Namespace: namespace_36358f9c
	Checksum: 0xFD5FF1D6
	Offset: 0xC728
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_cc7848ea()
{
	wait(3);
	var_b3b33e02 = function_99201f25("chase_wasp_tower_2", "targetname");
	if(var_b3b33e02.size > 0)
	{
		level.var_2dca8767 namespace_71b8dba1::function_81141386("hall_taking_fire_from_the_0");
	}
}

/*
	Name: function_da0e703d
	Namespace: namespace_36358f9c
	Checksum: 0xEA2C01CE
	Offset: 0xC798
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_da0e703d()
{
	wait(3);
	var_b3b33e02 = function_99201f25("chase_wasp_tower_3", "targetname");
	if(var_b3b33e02.size > 0)
	{
		level.var_2dca8767 namespace_71b8dba1::function_81141386("hall_take_them_down_0");
	}
}

/*
	Name: function_b453eaab
	Namespace: namespace_36358f9c
	Checksum: 0xC9B7BB82
	Offset: 0xC808
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_b453eaab()
{
	namespace_4dbf3ae3::function_1ab5ebec("chase_slide_vo");
	level.var_2dca8767 namespace_71b8dba1::function_81141386("hall_don_t_let_up_slide_0");
}

/*
	Name: function_8aea2545
	Namespace: namespace_36358f9c
	Checksum: 0x5C277666
	Offset: 0xC850
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_8aea2545()
{
	level waittill("hash_ce19dcf7");
	level.var_2dca8767 namespace_71b8dba1::function_81141386("hall_don_t_lose_him_now_0");
	level thread function_ea7bace5();
}

/*
	Name: function_ea7bace5
	Namespace: namespace_36358f9c
	Checksum: 0x398B7A57
	Offset: 0xC8A8
	Size: 0x5B
	Parameters: 1
	Flags: None
*/
function function_ea7bace5(var_6e2f783e)
{
	if(!isdefined(var_6e2f783e))
	{
		var_6e2f783e = 0;
	}
	if(!var_6e2f783e)
	{
		namespace_4dbf3ae3::function_1ab5ebec("chase_construction_end_vo");
	}
	level.var_2dca8767 namespace_71b8dba1::function_81141386("hall_grab_him_newblood_0");
}

/*
	Name: function_3174cbb
	Namespace: namespace_36358f9c
	Checksum: 0x29B83DF0
	Offset: 0xC910
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_3174cbb()
{
	level.var_2dca8767 namespace_71b8dba1::function_81141386("hall_now_s_your_chance_t_0");
}

/*
	Name: function_befa9b05
	Namespace: namespace_36358f9c
	Checksum: 0x8B09FA40
	Offset: 0xC940
	Size: 0x103
	Parameters: 0
	Flags: None
*/
function function_befa9b05()
{
	self endon("hash_128f8789");
	if(isdefined(self.var_9d7cd87) && self.var_9d7cd87)
	{
		return;
	}
	if(!isdefined(self.var_4891f22b))
	{
		self.var_4891f22b = function_84970cc4("hall_mind_your_footing_t_0", "hall_watch_the_ledges_yo_0", "hall_you_re_better_than_t_0");
	}
	wait(0.5);
	var_46639773 = namespace_84970cc4::function_c8d6f6a6(self.var_4891f22b, function_dc99997a(0, self.var_4891f22b.size), 0);
	if(self.var_4891f22b.size == 0)
	{
		self.var_4891f22b = undefined;
	}
	level.var_2dca8767 namespace_71b8dba1::function_81141386(var_46639773, undefined, 0, self);
	self thread function_187d1fab();
}

/*
	Name: function_187d1fab
	Namespace: namespace_36358f9c
	Checksum: 0xD86513E0
	Offset: 0xCA50
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_187d1fab()
{
	self endon("hash_128f8789");
	self.var_9d7cd87 = 1;
	wait(30);
	self.var_9d7cd87 = 0;
}

/*
	Name: function_f752dce5
	Namespace: namespace_36358f9c
	Checksum: 0x3EBD2F4E
	Offset: 0xCA88
	Size: 0x245
	Parameters: 2
	Flags: None
*/
function function_f752dce5(var_506b336f, var_aa686173)
{
	level endon(var_aa686173);
	wait(var_506b336f / 2);
	if(level namespace_ad23e503::function_dbca4c5d("bridge_collapse_vo_started"))
	{
		level namespace_ad23e503::function_d3de6822("bridge_collapse_vo_started");
	}
	if(level.var_c0e97bd == "chase_glass_ceiling_igc")
	{
		level.var_2dca8767 namespace_71b8dba1::function_81141386("hall_you_ain_t_gonna_get_0");
		break;
	}
	var_4bc288a0 = function_dc99997a(0, 5);
	switch(var_4bc288a0)
	{
		case 0:
		{
			level.var_2dca8767 namespace_71b8dba1::function_81141386("hall_move_it_we_can_t_lo_0");
			break;
		}
		case 1:
		{
			level.var_2dca8767 namespace_71b8dba1::function_81141386("hall_pick_up_the_pace_le_0");
			break;
		}
		case 2:
		{
			level.var_2dca8767 namespace_71b8dba1::function_81141386("hall_we_lose_him_it_s_yo_0");
			break;
		}
		case 3:
		{
			level.var_2dca8767 namespace_71b8dba1::function_81141386("hall_you_re_losing_him_0");
			break;
		}
		case 4:
		{
			var_7f882062 = namespace_14b42b8a::function_7922262b("chase_taylor_vo", "targetname");
			var_fc1953ce = function_9b7fda5e("script_origin", var_7f882062.var_722885f3);
			var_fc1953ce namespace_71b8dba1::function_81141386("tayr_keep_up_you_got_no_0", undefined, 1);
			var_fc1953ce function_dc8c8404();
		}
		case default:
		{
			break;
		}
	}
}

/*
	Name: function_9e93135c
	Namespace: namespace_36358f9c
	Checksum: 0xEF136D5C
	Offset: 0xCCD8
	Size: 0xD1
	Parameters: 0
	Flags: None
*/
function function_9e93135c()
{
	var_4bc288a0 = function_dc99997a(0, 3);
	switch(var_4bc288a0)
	{
		case 0:
		{
			level.var_2dca8767 namespace_71b8dba1::function_81141386("hall_suspect_s_escaped_l_0");
			break;
		}
		case 1:
		{
			level.var_2dca8767 namespace_71b8dba1::function_81141386("hall_you_re_gonna_have_to_0");
			break;
		}
		case 2:
		{
			level.var_2dca8767 namespace_71b8dba1::function_81141386("hall_you_wanna_run_with_u_0");
			break;
		}
		case default:
		{
			break;
		}
	}
}

/*
	Name: function_8e9219f
	Namespace: namespace_36358f9c
	Checksum: 0x64DAE2CE
	Offset: 0xCDB8
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_8e9219f()
{
	if(isdefined(self.var_46b969f4) && self.var_46b969f4)
	{
		return;
	}
	level.var_2dca8767 namespace_71b8dba1::function_81141386("hall_check_your_fire_civ_0", undefined, 0, self);
	self thread function_999e5485();
}

/*
	Name: function_999e5485
	Namespace: namespace_36358f9c
	Checksum: 0x38DDA5A6
	Offset: 0xCE20
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_999e5485()
{
	self endon("hash_128f8789");
	self.var_46b969f4 = 1;
	wait(30);
	self.var_46b969f4 = 0;
}

/*
	Name: function_11eee9db
	Namespace: namespace_36358f9c
	Checksum: 0xF3DDE20E
	Offset: 0xCE58
	Size: 0x122B
	Parameters: 1
	Flags: None
*/
function function_11eee9db(var_b04bc952)
{
	level namespace_ad23e503::function_c35e6aab("chase_suspect_train_stationstation_1st_half_done");
	level.var_ceb0eec3 = function_b4cb3503("chase_bomber_teleport", "targetname");
	namespace_cc27597::function_8f9f34e0("cin_new_06_01_chase_vign_flee", &function_5a6a9794, "play");
	namespace_cc27597::function_8f9f34e0("cin_new_08_01_rooftops_vign_encounter050", &function_5a6a9794, "play");
	namespace_cc27597::function_8f9f34e0("cin_new_08_01_rooftops_vign_encounter050", &function_c2f8c75f, "done");
	namespace_cc27597::function_8f9f34e0("cin_new_08_01_rooftops_vign_encounter070", &function_5a6a9794, "play");
	namespace_cc27597::function_8f9f34e0("cin_new_08_01_rooftops_vign_encounter070", &function_90332e7d, "play");
	namespace_cc27597::function_8f9f34e0("cin_new_08_01_rooftops_vign_encounter070", &function_e7e11a61, "done");
	namespace_cc27597::function_8f9f34e0("cin_new_08_01_rooftops_vign_encounter070_end", &function_c2f8c75f, "done");
	namespace_cc27597::function_8f9f34e0("cin_new_08_01_rooftops_vign_encounter080", &function_5a6a9794, "play");
	namespace_cc27597::function_8f9f34e0("cin_new_08_01_rooftops_vign_encounter080", &function_c2f8c75f, "done");
	namespace_cc27597::function_8f9f34e0("cin_new_08_01_rooftops_vign_encounter080", &function_3e091d9e, "done");
	namespace_cc27597::function_8f9f34e0("cin_new_08_01_rooftops_vign_encounter090", &function_5a6a9794, "play");
	namespace_cc27597::function_8f9f34e0("cin_new_08_01_rooftops_vign_encounter090", &function_c2f8c75f, "done");
	namespace_cc27597::function_8f9f34e0("cin_new_08_01_rooftops_vign_encounter100", &function_dae77e96, "init");
	namespace_cc27597::function_8f9f34e0("cin_new_08_01_rooftops_vign_encounter100", &function_5a6a9794, "play");
	namespace_cc27597::function_8f9f34e0("cin_new_08_01_rooftops_vign_encounter100", &function_6a406930, "play");
	namespace_cc27597::function_8f9f34e0("cin_new_08_01_rooftops_vign_encounter100", &function_c2f8c75f, "done");
	namespace_cc27597::function_8f9f34e0("cin_new_08_01_rooftops_vign_encounter110", &function_5a6a9794, "play");
	namespace_cc27597::function_8f9f34e0("cin_new_08_01_rooftops_vign_encounter110", &function_c2f8c75f, "done");
	namespace_cc27597::function_8f9f34e0("cin_new_08_01_rooftops_vign_encounter120", &function_5a6a9794, "play");
	namespace_cc27597::function_8f9f34e0("cin_new_08_01_rooftops_vign_encounter120", &function_c2f8c75f, "done");
	namespace_cc27597::function_8f9f34e0("cin_new_08_01_rooftops_vign_encounter120", &function_7f4315eb, "done");
	var_2db6f578 = [];
	var_e20fd93b = function_b4cb3503("chase_post_apartment", "targetname");
	var_209448e1 = function_b4cb3503("chase_pre_bridge_wait", "targetname");
	var_5aa4ca38 = function_b4cb3503("chase_post_explosion", "targetname");
	var_d4ebb668 = function_b4cb3503("chase_post_bridge", "targetname");
	var_14b1e2ed = function_b4cb3503("chase_pre_train_traversals01", "targetname");
	var_72dbb39e = function_b4cb3503("chase_old_rooftop_start_cheat04", "targetname");
	var_d8079fca = function_b4cb3503("chase_post_slide", "targetname");
	level.var_88590003.var_7dfaf62 = 8;
	if(var_b04bc952 === "chase_chase_start")
	{
		level.var_88590003 function_9869ab67(var_e20fd93b.var_722885f3, var_e20fd93b.var_6ab6f4fd);
		level namespace_ad23e503::function_1ab5ebec("apartment_jump_down");
		level.var_f2a5cb1e = function_99201f25("chase_pre_bridge", "targetname");
		level thread function_28aaa11a(60);
		level thread function_112af5d1();
		level namespace_cc27597::function_43718187("cin_new_06_01_chase_vign_flee");
		level thread function_3775434b();
		level thread function_f4fcddfb();
		level waittill("hash_13934b0");
		level namespace_cc27597::function_c35e6aab("cin_new_06_01_chase_vign_device");
		level namespace_ad23e503::function_1ab5ebec("bridge_collapse_start");
	}
	else
	{
		level.var_88590003 function_8c8e79fe();
		level.var_88590003 function_9869ab67(var_209448e1.var_722885f3, var_209448e1.var_6ab6f4fd);
	}
	if(var_b04bc952 === "chase_chase_start" || var_b04bc952 === "chase_bridge_collapse")
	{
		wait(0.05);
		function_5a6a9794();
		level thread function_28aaa11a(30);
		level.var_f2a5cb1e = function_99201f25("bomber_post_bridge_traversals", "targetname");
		level.var_88590003 namespace_82b91a51::function_958c7633();
		level thread function_a00b4c50();
		level thread function_2c789839();
		level namespace_cc27597::function_43718187("cin_new_06_01_chase_vign_device");
		level.var_88590003 namespace_82b91a51::function_4b741fdc();
		level.var_88590003 function_169cc712(var_5aa4ca38);
	}
	else
	{
		level.var_88590003 function_8c8e79fe();
		level.var_88590003 function_9869ab67(var_5aa4ca38.var_722885f3, var_5aa4ca38.var_6ab6f4fd);
	}
	if(var_b04bc952 === "chase_chase_start" || var_b04bc952 === "chase_bridge_collapse" || var_b04bc952 === "chase_rooftops")
	{
		wait(0.05);
		function_5a6a9794();
		level.var_f2a5cb1e = function_99201f25("chase_post_bridge", "targetname");
		level namespace_ad23e503::function_1ab5ebec("bomber_post_bridge_traversals");
		level thread function_28aaa11a(30);
		level thread function_105db04();
		level thread function_1c67a977();
		var_2db6f578 = [];
		namespace_84970cc4::function_69554b3e(var_2db6f578, var_d4ebb668);
		namespace_84970cc4::function_69554b3e(var_2db6f578, var_14b1e2ed);
		function_f6ce84d6(var_2db6f578, "chase_post_bridge");
		namespace_ad23e503::function_1ab5ebec("chase_post_bridge_mantle_up");
		level.var_f2a5cb1e = function_99201f25("chase_train_station_glass_ceiling", "targetname");
		level thread function_28aaa11a(30);
		level.var_88590003 namespace_71e9cb84::function_74d6b22f("chase_suspect_fx", 0);
		namespace_82b91a51::function_76f13293();
		level thread namespace_cc27597::function_43718187("cin_new_08_01_rooftops_vign_encounter050");
		namespace_ad23e503::function_1ab5ebec("chase_train_station_glass_ceiling");
		level thread function_28aaa11a(60);
		level thread function_b6418460();
		namespace_cc27597::function_fcf56ab5("cin_new_08_01_rooftops_vign_encounter050");
		level.var_88590003 function_48f26766();
		level thread namespace_cc27597::function_43718187("cin_new_08_01_rooftops_vign_encounter070");
		level notify("hash_64ab138");
		level.var_f2a5cb1e = function_99201f25("chase_train_station_midpoint", "targetname");
		level namespace_ad23e503::function_1ab5ebec("chase_train_station_midpoint");
		level namespace_ad23e503::function_1ab5ebec("chase_suspect_train_stationstation_1st_half_done");
		level thread namespace_cc27597::function_43718187("cin_new_08_01_rooftops_vign_encounter070_end");
		level thread function_cd5f4644();
		namespace_4dbf3ae3::function_42e87952("spawn_train_station_cafe_civs");
	}
	else
	{
		level.var_88590003 function_8c8e79fe();
		level.var_88590003 function_9869ab67(var_72dbb39e.var_722885f3, var_72dbb39e.var_6ab6f4fd);
	}
	if(var_b04bc952 === "chase_chase_start" || var_b04bc952 === "chase_bridge_collapse" || var_b04bc952 === "chase_rooftops" || var_b04bc952 === "chase_old_zurich")
	{
		level.var_f2a5cb1e = function_99201f25("start_bomber_old_zurich", "targetname");
		level namespace_ad23e503::function_1ab5ebec("start_suspect_vign_encounter080");
		level thread function_28aaa11a(60);
		level thread namespace_cc27597::function_fcf56ab5("cin_new_08_01_rooftops_vign_encounter070");
		level.var_88590003 namespace_71e9cb84::function_74d6b22f("chase_suspect_fx", 0);
		namespace_82b91a51::function_76f13293();
		level.var_88590003 function_9869ab67(var_72dbb39e.var_722885f3, var_72dbb39e.var_6ab6f4fd, 0, 1);
		wait(0.05);
		level.var_88590003 function_48f26766();
		level.var_88590003 namespace_71e9cb84::function_74d6b22f("chase_suspect_fx", 1);
		level thread function_c3fb206c();
		level thread namespace_cc27597::function_43718187("cin_new_08_01_rooftops_vign_encounter080");
		level.var_f2a5cb1e = function_99201f25("suspect_scenes_old_rooftops_2", "targetname");
		level namespace_ad23e503::function_1ab5ebec("start_suspect_vign_encounter090");
		level thread function_28aaa11a(60);
		level thread namespace_cc27597::function_fcf56ab5("cin_new_08_01_rooftops_vign_encounter080");
		level.var_88590003 function_48f26766();
		level thread function_ca093905();
		level thread namespace_cc27597::function_43718187("cin_new_08_01_rooftops_vign_encounter090");
	}
	else
	{
		level.var_88590003 function_8c8e79fe();
		level.var_88590003 function_9869ab67(var_d8079fca.var_722885f3, var_d8079fca.var_6ab6f4fd);
	}
	if(var_b04bc952 === "chase_chase_start" || var_b04bc952 === "chase_bridge_collapse" || var_b04bc952 === "chase_rooftops" || var_b04bc952 === "chase_old_zurich" || var_b04bc952 === "chase_construction_site")
	{
		wait(0.05);
		function_5a6a9794();
		level thread namespace_cc27597::function_c35e6aab("cin_new_08_01_rooftops_vign_encounter100");
		level.var_f2a5cb1e = function_99201f25("suspect_scenes_construction_1", "targetname");
		level namespace_ad23e503::function_1ab5ebec("start_suspect_vign_encounter100");
		level thread function_28aaa11a(30);
		level thread namespace_cc27597::function_fcf56ab5("cin_new_08_01_rooftops_vign_encounter090");
		function_c2f8c75f();
		level.var_88590003 function_9869ab67(var_d8079fca.var_722885f3, var_d8079fca.var_6ab6f4fd);
		level thread namespace_cc27597::function_5c143f59("cin_new_08_01_rooftops_vign_encounter100", undefined, undefined, 0.2);
		level thread function_8aea2545();
		level.var_f2a5cb1e = function_99201f25("suspect_scenes_construction_2", "targetname");
		level namespace_ad23e503::function_1ab5ebec("start_suspect_vign_encounter110");
		level thread function_28aaa11a(30);
		level thread namespace_cc27597::function_fcf56ab5("cin_new_08_01_rooftops_vign_encounter100");
		function_c2f8c75f();
		level thread namespace_cc27597::function_43718187("cin_new_08_01_rooftops_vign_encounter110");
		level.var_f2a5cb1e = function_99201f25("suspect_scenes_construction_3", "targetname");
		level namespace_ad23e503::function_1ab5ebec("start_suspect_vign_encounter120");
		level thread function_28aaa11a(30);
		level thread namespace_cc27597::function_fcf56ab5("cin_new_08_01_rooftops_vign_encounter110");
		function_c2f8c75f();
		level thread namespace_cc27597::function_43718187("cin_new_08_01_rooftops_vign_encounter120");
		var_5b5cfed1 = function_6ada35ba("start_glass_ceiling_igc", "targetname");
		level.var_f2a5cb1e = var_5b5cfed1;
	}
}

/*
	Name: function_5a6a9794
	Namespace: namespace_36358f9c
	Checksum: 0xB741AE
	Offset: 0xE090
	Size: 0x83
	Parameters: 1
	Flags: None
*/
function function_5a6a9794(var_c77d2837)
{
	if(isdefined(var_c77d2837))
	{
		var_88590003 = var_c77d2837["chase_bomber_ai"];
	}
	else
	{
		var_88590003 = level.var_88590003;
	}
	var_88590003 function_48f26766();
	wait(0.1);
	var_88590003 namespace_71e9cb84::function_74d6b22f("chase_suspect_fx", 1);
}

/*
	Name: function_c2f8c75f
	Namespace: namespace_36358f9c
	Checksum: 0x11BF2712
	Offset: 0xE120
	Size: 0xB3
	Parameters: 1
	Flags: None
*/
function function_c2f8c75f(var_c77d2837)
{
	if(isdefined(var_c77d2837))
	{
		var_88590003 = var_c77d2837["chase_bomber_ai"];
	}
	else
	{
		var_88590003 = level.var_88590003;
	}
	var_88590003 function_8c8e79fe();
	var_88590003 namespace_71e9cb84::function_74d6b22f("chase_suspect_fx", 0);
	namespace_82b91a51::function_76f13293();
	var_88590003 function_9869ab67(level.var_ceb0eec3.var_722885f3);
}

/*
	Name: function_dae77e96
	Namespace: namespace_36358f9c
	Checksum: 0x8A26C712
	Offset: 0xE1E0
	Size: 0xC9
	Parameters: 1
	Flags: None
*/
function function_dae77e96(var_c77d2837)
{
	foreach(var_a3d46ee4 in var_c77d2837)
	{
		if(isdefined(var_a3d46ee4.var_e6e9b8de) && function_5dbf7eca(var_a3d46ee4.var_e6e9b8de, "civilian"))
		{
			var_a3d46ee4 function_80765127();
		}
	}
}

/*
	Name: function_90332e7d
	Namespace: namespace_36358f9c
	Checksum: 0x9A49C23C
	Offset: 0xE2B8
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_90332e7d(var_c77d2837)
{
	level waittill("hash_6a2e620a");
	level.var_88590003 namespace_71e9cb84::function_74d6b22f("chase_suspect_fx", 0);
	level waittill("hash_53dda89b");
	level.var_88590003 namespace_71e9cb84::function_74d6b22f("chase_suspect_fx", 1);
}

/*
	Name: function_e7e11a61
	Namespace: namespace_36358f9c
	Checksum: 0x8DF224FE
	Offset: 0xE330
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_e7e11a61(var_c77d2837)
{
	level namespace_ad23e503::function_74d6b22f("chase_suspect_train_stationstation_1st_half_done");
}

/*
	Name: function_3e091d9e
	Namespace: namespace_36358f9c
	Checksum: 0xEFD9B79E
	Offset: 0xE368
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_3e091d9e(var_c77d2837)
{
	level thread namespace_cc27597::function_c35e6aab("cin_new_08_01_rooftops_vign_encounter090");
}

/*
	Name: function_7f4315eb
	Namespace: namespace_36358f9c
	Checksum: 0x783BBD0C
	Offset: 0xE3A0
	Size: 0x19
	Parameters: 1
	Flags: None
*/
function function_7f4315eb(var_c77d2837)
{
	level notify("hash_7f4315eb");
}

/*
	Name: function_f6ce84d6
	Namespace: namespace_36358f9c
	Checksum: 0x48471FEE
	Offset: 0xE3C8
	Size: 0xD3
	Parameters: 2
	Flags: None
*/
function function_f6ce84d6(var_6b5e76f, var_aa686173)
{
	level.var_88590003 endon("hash_128f8789");
	if(isdefined(var_aa686173))
	{
		level endon(var_aa686173);
	}
	foreach(var_77739c8f in var_6b5e76f)
	{
		level.var_88590003 function_169cc712(var_77739c8f);
		level.var_88590003 waittill("hash_41d1aaf0");
	}
}

/*
	Name: function_1c67a977
	Namespace: namespace_36358f9c
	Checksum: 0x5FB84F07
	Offset: 0xE4A8
	Size: 0x103
	Parameters: 0
	Flags: None
*/
function function_1c67a977()
{
	var_64e85e6d = namespace_2f06d687::function_22356ba7("chase_post_bridge_robots");
	foreach(var_d84e54db in var_64e85e6d)
	{
		var_d84e54db thread function_117951b9();
	}
	level thread function_a507aa05(var_64e85e6d);
	namespace_84970cc4::function_1ab5ebec(var_64e85e6d, "post_bridge_colllapse_robots_in_place");
	level namespace_ad23e503::function_74d6b22f("hall_use_systemoverload_post_bridge_collapse");
}

/*
	Name: function_117951b9
	Namespace: namespace_36358f9c
	Checksum: 0x8B12CF82
	Offset: 0xE5B8
	Size: 0xB1
	Parameters: 0
	Flags: None
*/
function function_117951b9()
{
	self endon("hash_128f8789");
	self.var_3a90f16b = function_b6b79a0(self.var_3a90f16b * 0.5);
	self.var_15dfd6c = 0.25;
	self namespace_d84e54db::function_b4f5e3b9(1);
	self namespace_d84e54db::function_ceb883cd("sprint", 1);
	self waittill("hash_41d1aaf0");
	self namespace_d84e54db::function_b4f5e3b9(0);
	self notify("hash_1dba7b6f");
}

/*
	Name: function_480f8035
	Namespace: namespace_36358f9c
	Checksum: 0xC5D1DD95
	Offset: 0xE678
	Size: 0x17B
	Parameters: 0
	Flags: None
*/
function function_480f8035()
{
	namespace_cc27597::function_8f9f34e0("cin_gen_melee_robot_hits_civ", &function_d212a60d, "play");
	namespace_cc27597::function_8f9f34e0("cin_gen_melee_robot_hits_civ", &function_65fe4a2f, "done");
	var_f6c5842 = namespace_2f06d687::function_7387a40a("robot_hits_civ_scene_robot");
	var_14c918e8 = namespace_2f06d687::function_7387a40a("robot_hits_civ_scene_civ");
	var_14c918e8 function_80765127();
	var_14c918e8 namespace_d84e54db::function_c9e45d52(1);
	var_14c918e8 namespace_d84e54db::function_b4f5e3b9(1);
	var_e3b635fb = function_84970cc4(var_f6c5842, var_14c918e8);
	namespace_cc27597::function_c35e6aab("cin_gen_melee_robot_hits_civ", var_e3b635fb);
	level namespace_ad23e503::function_1ab5ebec("apartment_jump_down");
	wait(0.5);
	namespace_cc27597::function_43718187("cin_gen_melee_robot_hits_civ", var_e3b635fb);
}

/*
	Name: function_d212a60d
	Namespace: namespace_36358f9c
	Checksum: 0xC7CA8EA6
	Offset: 0xE800
	Size: 0xA3
	Parameters: 1
	Flags: None
*/
function function_d212a60d(var_c77d2837)
{
	level waittill("hash_b1604833");
	var_14c918e8 = function_6ada35ba("robot_hits_civ_scene_civ_ai", "targetname");
	if(isdefined(var_14c918e8))
	{
		var_14c918e8 namespace_71e9cb84::function_74d6b22f("derez_ai_deaths", 1);
	}
	namespace_82b91a51::function_76f13293();
	if(isdefined(var_14c918e8))
	{
		var_14c918e8 function_8c8e79fe();
	}
}

/*
	Name: function_65fe4a2f
	Namespace: namespace_36358f9c
	Checksum: 0xCA36AAAC
	Offset: 0xE8B0
	Size: 0x11B
	Parameters: 1
	Flags: None
*/
function function_65fe4a2f(var_c77d2837)
{
	var_f6c5842 = undefined;
	foreach(var_a3d46ee4 in var_c77d2837)
	{
		if(var_a3d46ee4.var_3e94206a === "axis")
		{
			var_f6c5842 = var_a3d46ee4;
			break;
		}
	}
	if(isdefined(var_f6c5842) && function_5b49d38c(var_f6c5842))
	{
		var_c9ae457a = function_6ada35ba("chase_bar_balcony_goalvolume", "targetname");
		var_f6c5842 function_169cc712(var_c9ae457a, 1);
	}
}

/*
	Name: function_59e96bfa
	Namespace: namespace_36358f9c
	Checksum: 0x54BE0A8A
	Offset: 0xE9D8
	Size: 0x1A3
	Parameters: 1
	Flags: None
*/
function function_59e96bfa(var_74cd64bc)
{
	if(!var_74cd64bc)
	{
		level namespace_cc27597::function_c35e6aab("cin_new_06_01_chase_vign_takedown");
	}
	level namespace_ad23e503::function_1ab5ebec("apartment_jump_down");
	namespace_76d95162::function_d9f49fba(1);
	level namespace_ad23e503::function_c35e6aab("hall_takedown_robot");
	level namespace_ad23e503::function_c35e6aab("hall_takedown_robot_roll_complete");
	namespace_cc27597::function_8f9f34e0("cin_new_06_01_chase_vign_takedown", &function_7c8216c3, "play");
	namespace_cc27597::function_8f9f34e0("cin_new_06_01_chase_vign_takedown", &function_20fcf1cf, "play");
	namespace_cc27597::function_8f9f34e0("cin_new_06_01_chase_vign_takedown", &function_aef2268d, "done");
	level thread function_6a13c1d0();
	level namespace_cc27597::function_43718187("cin_new_06_01_chase_vign_takedown");
	level.var_2dca8767 namespace_d84e54db::function_b4f5e3b9(0);
	level.var_2dca8767 namespace_d84e54db::function_c9e45d52(0);
}

/*
	Name: function_7c8216c3
	Namespace: namespace_36358f9c
	Checksum: 0x559777E3
	Offset: 0xEB88
	Size: 0x8B
	Parameters: 1
	Flags: None
*/
function function_7c8216c3(var_c77d2837)
{
	var_c77d2837["hall_takedown_robot"] endon("hash_128f8789");
	var_c77d2837["hall_takedown_robot"] thread function_1ac8d6c6();
	level waittill("hash_c6292c7f");
	level namespace_ad23e503::function_74d6b22f("hall_takedown_robot");
	namespace_82b91a51::function_958c7633(var_c77d2837["hall_takedown_robot"]);
}

/*
	Name: function_1ac8d6c6
	Namespace: namespace_36358f9c
	Checksum: 0x4FC29BBA
	Offset: 0xEC20
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_1ac8d6c6()
{
	self waittill("hash_128f8789");
	level namespace_ad23e503::function_1ab5ebec("hall_takedown_robot_roll_complete");
	if(!level namespace_ad23e503::function_7922262b("hall_takedown_robot"))
	{
		level namespace_cc27597::function_fcf56ab5("cin_new_06_01_chase_vign_takedown");
	}
}

/*
	Name: function_20fcf1cf
	Namespace: namespace_36358f9c
	Checksum: 0xDF167C35
	Offset: 0xEC98
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function function_20fcf1cf(var_c77d2837)
{
	level waittill("hash_47e55a4e");
	level namespace_ad23e503::function_74d6b22f("hall_takedown_robot_roll_complete");
}

/*
	Name: function_aef2268d
	Namespace: namespace_36358f9c
	Checksum: 0x5EDC07F9
	Offset: 0xECD8
	Size: 0x12B
	Parameters: 1
	Flags: None
*/
function function_aef2268d(var_c77d2837)
{
	if(function_5b49d38c(var_c77d2837["hall_takedown_robot"]))
	{
		namespace_82b91a51::function_4b741fdc(var_c77d2837["hall_takedown_robot"]);
		var_c77d2837["hall_takedown_robot"] notify("hash_70947625");
		var_c77d2837["hall_takedown_robot"] notify("hash_70947625");
		var_c77d2837["hall_takedown_robot"] namespace_71e9cb84::function_74d6b22f("derez_ai_deaths", 1);
		namespace_82b91a51::function_76f13293();
		if(isdefined(var_c77d2837["hall_takedown_robot"]))
		{
			var_c77d2837["hall_takedown_robot"] function_921a1574("evt_ai_derez");
		}
		wait(0.1);
		if(isdefined(var_c77d2837["hall_takedown_robot"]))
		{
			var_c77d2837["hall_takedown_robot"] function_dc8c8404();
		}
	}
}

/*
	Name: function_b6418460
	Namespace: namespace_36358f9c
	Checksum: 0xDD917A65
	Offset: 0xEE10
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_b6418460()
{
	level waittill("hash_c589911");
	level thread function_9d545239(1);
	level thread function_8c82b44d(2);
	level thread function_de250dc9();
}

/*
	Name: function_c3fb206c
	Namespace: namespace_36358f9c
	Checksum: 0x99F4D8AC
	Offset: 0xEE78
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_c3fb206c()
{
	level waittill("hash_325b137a");
	level thread function_9d545239(2);
	level thread function_8c82b44d(3);
}

/*
	Name: function_ca093905
	Namespace: namespace_36358f9c
	Checksum: 0xF7C2A2B7
	Offset: 0xEEC8
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_ca093905()
{
	level waittill("hash_585d8de3");
	level thread function_9d545239(3);
	level thread function_da0e703d();
}

/*
	Name: function_6a406930
	Namespace: namespace_36358f9c
	Checksum: 0x99F0EBB2
	Offset: 0xEF18
	Size: 0x10B
	Parameters: 1
	Flags: None
*/
function function_6a406930(var_c77d2837)
{
	level waittill("hash_b1604833");
	foreach(var_a3d46ee4 in var_c77d2837)
	{
		if(var_a3d46ee4 === level.var_88590003)
		{
			continue;
			continue;
		}
		var_14c918e8 = var_a3d46ee4;
	}
	if(isdefined(var_14c918e8))
	{
		var_14c918e8 namespace_71e9cb84::function_74d6b22f("derez_ai_deaths", 1);
	}
	namespace_82b91a51::function_76f13293();
	if(isdefined(var_14c918e8))
	{
		var_14c918e8 function_8c8e79fe();
	}
}

/*
	Name: function_e1109a4f
	Namespace: namespace_36358f9c
	Checksum: 0x8D0E575B
	Offset: 0xF030
	Size: 0xE5
	Parameters: 1
	Flags: None
*/
function function_e1109a4f(var_9e31a3a2)
{
	level.var_2dca8767 endon("hash_128f8789");
	level.var_2dca8767 namespace_175490fb::function_d240e350("cybercom_systemoverload", var_9e31a3a2, 0);
	foreach(var_f6c5842 in var_9e31a3a2)
	{
		wait(0.25);
		if(function_5b49d38c(var_f6c5842))
		{
			var_f6c5842.var_3a90f16b = 1;
		}
	}
}

/*
	Name: function_ef62a489
	Namespace: namespace_36358f9c
	Checksum: 0x694D45D9
	Offset: 0xF120
	Size: 0xB9
	Parameters: 0
	Flags: None
*/
function function_ef62a489()
{
	level endon("hash_c1a074c7");
	var_7b45393e = function_99201f25("rooftops_bad_area", "targetname");
	foreach(var_f92a03e7 in var_7b45393e)
	{
		var_f92a03e7 thread function_9c12e74d();
	}
}

/*
	Name: function_9c12e74d
	Namespace: namespace_36358f9c
	Checksum: 0x9E16360
	Offset: 0xF1E8
	Size: 0xCF
	Parameters: 0
	Flags: None
*/
function function_9c12e74d()
{
	level endon("hash_c1a074c7");
	var_f65c3861 = namespace_14b42b8a::function_7faf4c39(self.var_b07228b6, "targetname");
	while(1)
	{
		self waittill("hash_4dbf3ae3", var_65669d7b);
		if(function_65f192a6(var_65669d7b) && (!isdefined(var_65669d7b.var_fc8b8ec) && var_65669d7b.var_fc8b8ec))
		{
			var_65669d7b function_b8862210("evt_plr_derez", var_65669d7b);
			var_65669d7b thread function_c24ce0f9(var_f65c3861);
		}
	}
}

/*
	Name: function_c24ce0f9
	Namespace: namespace_36358f9c
	Checksum: 0x3D4E5B0C
	Offset: 0xF2C0
	Size: 0x20B
	Parameters: 1
	Flags: None
*/
function function_c24ce0f9(var_f65c3861)
{
	self endon("hash_128f8789");
	while(1)
	{
		var_3c31865b = namespace_84970cc4::function_47d18840(var_f65c3861);
		if(!function_ba336b7(var_3c31865b.var_722885f3))
		{
			self.var_fc8b8ec = 1;
			self.var_255b9315 = 1;
			self function_83fd42b5();
			self function_8c8e79fe();
			self namespace_82b91a51::function_56cee95(1);
			self function_a30814d(var_3c31865b.var_722885f3);
			self function_eda2be50(var_3c31865b.var_6ab6f4fd);
			self namespace_71e9cb84::function_688ed188("postfx_igc");
			namespace_82b91a51::function_76f13293();
			self function_48f26766();
			self namespace_71e9cb84::function_74d6b22f("player_spawn_fx", 1);
			self namespace_82b91a51::function_67520c6a(2, "death", &namespace_71e9cb84::function_74d6b22f, "player_spawn_fx", 0);
			self thread function_befa9b05();
			wait(2);
			self function_4890e520();
			self namespace_82b91a51::function_56cee95(0);
			self.var_fc8b8ec = 0;
			self.var_255b9315 = 0;
			break;
		}
	}
}

/*
	Name: function_694c9886
	Namespace: namespace_36358f9c
	Checksum: 0x7A2CD492
	Offset: 0xF4D8
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_694c9886()
{
	self endon("hash_128f8789");
	self namespace_82b91a51::function_958c7633();
	self namespace_72ee5da4::function_f676f983();
	self.var_ff1f6868 = "chase_glass_ceiling_igc";
	self namespace_d84e54db::function_c9e45d52(1);
	self namespace_82b91a51::function_e218424d(1);
}

/*
	Name: function_e8d2d7d8
	Namespace: namespace_36358f9c
	Checksum: 0xA0F26E65
	Offset: 0xF560
	Size: 0x1FB
	Parameters: 1
	Flags: None
*/
function function_e8d2d7d8(var_62e1e54b)
{
	namespace_cc27597::function_8f9f34e0("p7_fxanim_gp_wasp_tower_arms_01_bundle", &function_9895ffca, "play");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_gp_wasp_tower_arms_02_bundle", &function_9895ffca, "play");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_gp_wasp_tower_arms_03_bundle", &function_9895ffca, "play");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_gp_wasp_tower_arms_04_bundle", &function_9895ffca, "play");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_gp_wasp_tower_arms_01_bundle", &function_ce2ec89f, "done");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_gp_wasp_tower_arms_02_bundle", &function_ce2ec89f, "done");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_gp_wasp_tower_arms_03_bundle", &function_ce2ec89f, "done");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_gp_wasp_tower_arms_04_bundle", &function_ce2ec89f, "done");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_gp_wasp_tower_arms_04_bundle", &function_f489203, "done");
	var_8b599504 = namespace_14b42b8a::function_7922262b("chase_wasp_tower_" + var_62e1e54b);
	var_8b599504 namespace_cc27597::function_c35e6aab();
}

/*
	Name: function_8c82b44d
	Namespace: namespace_36358f9c
	Checksum: 0x249D69C0
	Offset: 0xF768
	Size: 0x2FD
	Parameters: 1
	Flags: None
*/
function function_8c82b44d(var_62e1e54b)
{
	level namespace_ad23e503::function_1ab5ebec("all_players_spawned");
	switch(level.var_9b1393e7.size)
	{
		case 1:
		{
			var_bd061860 = 3;
			break;
		}
		case 2:
		case 3:
		{
			var_bd061860 = 6;
			break;
		}
		case 4:
		{
			var_bd061860 = 8;
			break;
		}
		case default:
		{
			var_bd061860 = undefined;
		}
	}
	var_7f20007c = namespace_14b42b8a::function_7faf4c39("chase_wasp_tower_" + var_62e1e54b + "_arms");
	for(var_c957f6b6 = 1; var_c957f6b6 < 5; var_c957f6b6++)
	{
		foreach(var_1cbcb46d in var_7f20007c)
		{
			if(var_1cbcb46d.var_8202763a === var_c957f6b6)
			{
				break;
			}
		}
		var_528b1313 = [];
		while(var_528b1313.size < 2)
		{
			if(var_62e1e54b == 1 && var_c957f6b6 == 1 && var_528b1313.size == 0)
			{
				var_aaefedf3 = namespace_2f06d687::function_7387a40a("chase_wasp_rocket");
				var_aaefedf3.var_170527fb = "billboard_fxanim_rocket_wasp";
				var_aaefedf3.var_69dd5d62 = 0;
				var_aaefedf3.var_342d9e3a = 1;
				var_528b1313[var_528b1313.size] = var_aaefedf3;
				var_bd061860--;
				continue;
			}
			if(var_bd061860 > 0)
			{
				var_aaefedf3 = namespace_2f06d687::function_7387a40a("chase_wasp_mg");
				var_aaefedf3.var_170527fb = "chase_wasp_tower_" + var_62e1e54b;
				var_528b1313[var_528b1313.size] = var_aaefedf3;
				var_bd061860--;
			}
			else
			{
				var_528b1313[var_528b1313.size] = namespace_82b91a51::function_b9fd52a4("tag_origin", var_1cbcb46d.var_722885f3);
			}
		}
		var_1cbcb46d namespace_cc27597::function_c35e6aab(var_528b1313);
	}
}

/*
	Name: function_9d545239
	Namespace: namespace_36358f9c
	Checksum: 0x156E4EFE
	Offset: 0xFA70
	Size: 0x111
	Parameters: 1
	Flags: None
*/
function function_9d545239(var_62e1e54b)
{
	var_8b599504 = namespace_14b42b8a::function_7922262b("chase_wasp_tower_" + var_62e1e54b);
	var_4c585e4 = namespace_14b42b8a::function_7faf4c39("chase_wasp_tower_" + var_62e1e54b + "_arms");
	namespace_84970cc4::function_69554b3e(var_4c585e4, var_8b599504);
	foreach(var_1cbcb46d in var_4c585e4)
	{
		var_1cbcb46d thread namespace_cc27597::function_43718187();
	}
}

/*
	Name: function_93cf0e75
	Namespace: namespace_36358f9c
	Checksum: 0x2AD38BB5
	Offset: 0xFB90
	Size: 0x1FD
	Parameters: 1
	Flags: None
*/
function function_93cf0e75(var_62e1e54b)
{
	var_8b599504 = namespace_14b42b8a::function_7922262b("chase_wasp_tower_" + var_62e1e54b);
	var_4c585e4 = namespace_14b42b8a::function_7faf4c39("chase_wasp_tower_" + var_62e1e54b + "_arms");
	namespace_84970cc4::function_69554b3e(var_4c585e4, var_8b599504);
	foreach(var_1cbcb46d in var_4c585e4)
	{
		var_1cbcb46d namespace_cc27597::function_5c143f59();
	}
	for(var_c957f6b6 = 1; var_c957f6b6 < 5; var_c957f6b6++)
	{
		var_608b08b0 = function_6ada35ba("wasp_tower_arms_0" + var_c957f6b6 + "_wasp_0" + var_c957f6b6 + "_a", "targetname");
		var_608b08b0 function_dc8c8404();
		var_d29277eb = function_6ada35ba("wasp_tower_arms_0" + var_c957f6b6 + "_wasp_0" + var_c957f6b6 + "_b", "targetname");
		var_d29277eb function_dc8c8404();
	}
}

/*
	Name: function_9895ffca
	Namespace: namespace_36358f9c
	Checksum: 0xDE1E2A43
	Offset: 0xFD98
	Size: 0x23D
	Parameters: 1
	Flags: None
*/
function function_9895ffca(var_c77d2837)
{
	foreach(var_a3d46ee4 in var_c77d2837)
	{
		if(var_a3d46ee4.var_e6e9b8de === "script_vehicle")
		{
			var_a3d46ee4 namespace_72ee5da4::function_3110a54f();
			var_a3d46ee4 namespace_d84e54db::function_c9e45d52(0);
			var_a3d46ee4 thread function_26d72169();
		}
	}
	switch(self.var_1157a889)
	{
		case "p7_fxanim_gp_wasp_tower_arms_01_bundle":
		{
			var_8b453fd2 = "wasp_tower_arms_01_deploy";
			break;
		}
		case "p7_fxanim_gp_wasp_tower_arms_02_bundle":
		{
			var_8b453fd2 = "wasp_tower_arms_02_deploy";
			break;
		}
		case "p7_fxanim_gp_wasp_tower_arms_03_bundle":
		{
			var_8b453fd2 = "wasp_tower_arms_03_deploy";
			break;
		}
		case "p7_fxanim_gp_wasp_tower_arms_04_bundle":
		{
			var_8b453fd2 = "wasp_tower_arms_04_deploy";
			break;
		}
		case default:
		{
			var_8b453fd2 = undefined;
			break;
		}
	}
	level waittill(var_8b453fd2);
	foreach(var_a3d46ee4 in var_c77d2837)
	{
		if(var_a3d46ee4.var_e6e9b8de === "script_vehicle" && var_a3d46ee4.var_170527fb !== "billboard_fxanim_rocket_wasp")
		{
			var_a3d46ee4 namespace_82b91a51::function_4b741fdc();
			var_a3d46ee4.var_69dd5d62 = 1;
		}
	}
}

/*
	Name: function_26d72169
	Namespace: namespace_36358f9c
	Checksum: 0xAC834997
	Offset: 0xFFE0
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_26d72169()
{
	self endon("hash_128f8789");
	self waittill("hash_cc44fba5");
	self namespace_71e9cb84::function_74d6b22f("wasp_hack_fx", 1);
}

/*
	Name: function_ce2ec89f
	Namespace: namespace_36358f9c
	Checksum: 0x950F07F4
	Offset: 0x10028
	Size: 0x1E1
	Parameters: 1
	Flags: None
*/
function function_ce2ec89f(var_c77d2837)
{
	level notify("hash_fb8f6850");
	switch(self.var_170527fb)
	{
		case "chase_wasp_tower_1_arms":
		{
			var_c9ae457a = function_6ada35ba("wasp_tower_1_goalvolume", "targetname");
			break;
		}
		case "chase_wasp_tower_2_arms":
		{
			var_c9ae457a = function_6ada35ba("wasp_tower_2_goalvolume", "targetname");
			break;
		}
		case "chase_wasp_tower_3_arms":
		{
			var_c9ae457a = function_6ada35ba("wasp_tower_3_goalvolume", "targetname");
			break;
		}
		case default:
		{
			var_8b453fd2 = undefined;
			break;
		}
	}
	foreach(var_a3d46ee4 in var_c77d2837)
	{
		if(var_a3d46ee4.var_6df9264 === "tag_origin")
		{
			var_a3d46ee4 function_dc8c8404();
			continue;
		}
		if(var_a3d46ee4.var_e6e9b8de === "script_vehicle")
		{
			var_a3d46ee4 function_169cc712(var_c9ae457a, 1);
			var_a3d46ee4 namespace_71e9cb84::function_74d6b22f("wasp_hack_fx", 0);
		}
	}
}

/*
	Name: function_f489203
	Namespace: namespace_36358f9c
	Checksum: 0x1B2640C0
	Offset: 0x10218
	Size: 0x2D
	Parameters: 1
	Flags: None
*/
function function_f489203(var_c77d2837)
{
	if(self.var_170527fb == "chase_wasp_tower_1_arms")
	{
		level notify("hash_ab14955f");
	}
}

/*
	Name: function_2ac6fe38
	Namespace: namespace_36358f9c
	Checksum: 0x6C124B22
	Offset: 0x10250
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_2ac6fe38()
{
	namespace_cc27597::function_c35e6aab("p7_fxanim_cp_newworld_chase_wasp_billboard_bundle");
	var_d874dcf = function_6ada35ba("chase_wasp_billboard_clip", "targetname");
	var_d874dcf function_422037f5();
}

/*
	Name: function_de250dc9
	Namespace: namespace_36358f9c
	Checksum: 0x6AAF61EE
	Offset: 0x102B8
	Size: 0x1AB
	Parameters: 0
	Flags: None
*/
function function_de250dc9()
{
	level waittill("hash_ab14955f");
	var_aaefedf3 = function_6ada35ba("billboard_fxanim_rocket_wasp", "targetname");
	var_aaefedf3 namespace_82b91a51::function_958c7633();
	var_aaefedf3.var_69dd5d62 = 0;
	var_aaefedf3.var_342d9e3a = 1;
	var_26aaa5cc = namespace_14b42b8a::function_7922262b("chase_billboard_fxanim_org", "targetname");
	var_377a9c22 = function_9b7fda5e("script_model", var_26aaa5cc.var_722885f3);
	var_377a9c22.var_3a90f16b = 100;
	var_aaefedf3 thread namespace_d84e54db::function_d104c596("shoot_until_target_dead", var_377a9c22);
	var_aaefedf3 thread function_f85e3014(var_377a9c22);
	var_2eb20475 = function_6ada35ba("fxanim_billboard_damage_trigger", "targetname");
	var_2eb20475 thread function_797186a5(var_aaefedf3);
	level waittill("hash_828a35af");
	level thread function_f4151d2d();
	level namespace_cc27597::function_43718187("p7_fxanim_cp_newworld_chase_wasp_billboard_bundle");
}

/*
	Name: function_f85e3014
	Namespace: namespace_36358f9c
	Checksum: 0xC6497114
	Offset: 0x10470
	Size: 0x73
	Parameters: 1
	Flags: None
*/
function function_f85e3014(var_377a9c22)
{
	self endon("hash_128f8789");
	level waittill("hash_828a35af");
	wait(0.1);
	self namespace_82b91a51::function_4b741fdc();
	self.var_69dd5d62 = 1;
	self.var_342d9e3a = 0;
	var_377a9c22 function_dc8c8404();
}

/*
	Name: function_797186a5
	Namespace: namespace_36358f9c
	Checksum: 0x9F886358
	Offset: 0x104F0
	Size: 0xC1
	Parameters: 1
	Flags: None
*/
function function_797186a5(var_aaefedf3)
{
	level endon("hash_828a35af");
	while(1)
	{
		self waittill("hash_f9348fda", var_f9a179ed, var_96133235, var_d3ca3e9c, var_88482219, var_fe311e35, var_f10f645, var_cd9517d2, var_f105c26b, var_dfcc01fd, var_bf827987);
		if(var_96133235 == var_aaefedf3)
		{
			level notify("hash_828a35af");
		}
	}
}

/*
	Name: function_f4151d2d
	Namespace: namespace_36358f9c
	Checksum: 0xF8D1A8CA
	Offset: 0x105C0
	Size: 0x1DD
	Parameters: 0
	Flags: None
*/
function function_f4151d2d()
{
	level waittill("hash_ae133e20");
	var_d874dcf = function_6ada35ba("chase_wasp_billboard_clip", "targetname");
	var_d874dcf function_4083a98e();
	var_a80eedb1 = function_6ada35ba("chase_billboard_fxanim_damage_trigger", "targetname");
	var_e3b635fb = function_c20c2e8();
	var_b857e377 = function_525ae497(var_e3b635fb, level.var_2395e945, 1, 0);
	foreach(var_d08db518 in var_b857e377)
	{
		if(var_d08db518 namespace_82b91a51::function_d3426abc())
		{
			continue;
		}
		if(var_d08db518 function_32fa5072(var_a80eedb1))
		{
			if(function_65f192a6(var_d08db518))
			{
				var_d08db518 function_c3945cd5(var_d08db518.var_3a90f16b, var_d08db518.var_722885f3);
				break;
				continue;
			}
			var_d08db518 function_2992720d();
			break;
		}
	}
}

/*
	Name: function_8efffbca
	Namespace: namespace_36358f9c
	Checksum: 0x322B25FD
	Offset: 0x107A8
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_8efffbca()
{
	function_be97adee(self.var_722885f3, 50, 2000, 1500);
}

/*
	Name: function_4cd03714
	Namespace: namespace_36358f9c
	Checksum: 0x887A1EB6
	Offset: 0x107E0
	Size: 0x79D
	Parameters: 8
	Flags: None
*/
function function_4cd03714(var_ffa6bda7, var_37713607, var_4b204b1c, var_60c1e5f7, var_10057083, var_eba6249a, var_83701bb1, var_76f5cbe9)
{
	if(!isdefined(var_eba6249a))
	{
		var_eba6249a = 0;
	}
	if(!isdefined(var_83701bb1))
	{
		var_83701bb1 = 0;
	}
	if(!isdefined(var_76f5cbe9))
	{
		var_76f5cbe9 = 0;
	}
	level endon("hash_bdb23e9d");
	level namespace_ad23e503::function_c35e6aab(var_ffa6bda7);
	var_58230dee = function_6ada35ba(var_ffa6bda7, "targetname");
	if(isdefined(var_58230dee))
	{
		namespace_4dbf3ae3::function_1ab5ebec(var_ffa6bda7);
	}
	else
	{
		level waittill(var_ffa6bda7);
		level thread function_dfd78ed7();
	}
	level namespace_ad23e503::function_74d6b22f("chase_train_move");
	level thread function_c9af9d76(var_10057083);
	var_7af45315 = [];
	var_95af8b3e = [];
	var_37048efd = namespace_14b42b8a::function_7922262b(var_37713607, "targetname");
	var_5ae02fb7 = function_9b7fda5e("script_model", var_37048efd.var_722885f3);
	var_5ae02fb7.var_6ab6f4fd = var_37048efd.var_6ab6f4fd;
	var_5ae02fb7 function_e48f905e(var_37048efd.var_6df9264);
	var_5ae02fb7.var_ff1f6868 = "chase_glass_ceiling_igc";
	var_5ae02fb7.var_caae374e = "chase_train";
	var_5ae02fb7 function_c2931a36("amb_train_front_engine");
	if(var_76f5cbe9)
	{
		var_5ae02fb7 thread function_db738b68();
	}
	var_7af45315[0] = var_5ae02fb7;
	var_934a157 = namespace_14b42b8a::function_7922262b(var_4b204b1c, "targetname");
	var_e5a4a905 = function_6ada35ba(var_37048efd.var_b07228b6, "targetname");
	if(var_37713607 == "train_station_train_org")
	{
		level thread function_69747207();
	}
	if(var_83701bb1 == 1)
	{
		level thread function_a8f0457b(var_60c1e5f7);
	}
	while(var_7af45315.size > 0)
	{
		if(!level namespace_ad23e503::function_7922262b(var_60c1e5f7))
		{
			var_3ebf068e = function_9b7fda5e("script_model", var_934a157.var_722885f3);
			var_3ebf068e function_e48f905e(var_934a157.var_6df9264);
			var_3ebf068e.var_ff1f6868 = "chase_glass_ceiling_igc";
			var_3ebf068e.var_caae374e = "chase_train";
			var_3ebf068e function_c2931a36("amb_train_car");
			var_7af45315[var_7af45315.size] = var_3ebf068e;
			if(var_76f5cbe9)
			{
				var_3ebf068e thread function_db738b68();
			}
		}
		else if(!level namespace_ad23e503::function_7922262b(var_ffa6bda7))
		{
			level namespace_ad23e503::function_74d6b22f(var_ffa6bda7);
			var_96eed922 = namespace_14b42b8a::function_7922262b("train_station_train_end", "targetname");
			var_3ebf068e = function_9b7fda5e("script_model", var_934a157.var_722885f3);
			var_3ebf068e.var_722885f3 = (var_934a157.var_722885f3[0], var_934a157.var_722885f3[1], var_96eed922.var_722885f3[2]);
			var_3ebf068e.var_6ab6f4fd = var_96eed922.var_6ab6f4fd;
			var_3ebf068e function_e48f905e(var_96eed922.var_6df9264);
			var_3ebf068e.var_ff1f6868 = "chase_glass_ceiling_igc";
			var_3ebf068e.var_caae374e = "chase_train";
			var_3ebf068e function_c2931a36("amb_train_engine");
			var_7af45315[var_7af45315.size] = var_3ebf068e;
			function_37cbcf1a("amb_train_fades_away", (-12413, -25844, 9837));
			if(var_76f5cbe9)
			{
				var_3ebf068e thread function_db738b68();
			}
		}
		if(var_eba6249a)
		{
			namespace_84970cc4::function_eaab05dc(var_7af45315, &function_d7e3960e, 640, 0.274);
		}
		else
		{
			namespace_84970cc4::function_eaab05dc(var_7af45315, &function_d7e3960e, -640, 0.274);
		}
		wait(0.274);
		if(var_37713607 == "train_station_train_org")
		{
			level function_4332c4dc(var_7af45315);
		}
		var_8edb1dfd = [];
		foreach(var_fcd89369 in var_7af45315)
		{
			if(var_fcd89369 function_32fa5072(var_e5a4a905))
			{
				var_8edb1dfd[var_8edb1dfd.size] = var_fcd89369;
			}
		}
		foreach(var_fcd89369 in var_8edb1dfd)
		{
			function_81403b2f(var_7af45315, var_fcd89369);
			var_fcd89369 function_dc8c8404();
		}
	}
}

/*
	Name: function_a8f0457b
	Namespace: namespace_36358f9c
	Checksum: 0x460CB0F1
	Offset: 0x10F88
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_a8f0457b(var_60c1e5f7)
{
	wait(20);
	level namespace_ad23e503::function_74d6b22f(var_60c1e5f7);
}

/*
	Name: function_db738b68
	Namespace: namespace_36358f9c
	Checksum: 0x7600CA90
	Offset: 0x10FC0
	Size: 0x77
	Parameters: 0
	Flags: None
*/
function function_db738b68()
{
	self endon("hash_128f8789");
	while(1)
	{
		self waittill("hash_34914552", var_a3d46ee4);
		if(function_65f192a6(var_a3d46ee4))
		{
			var_a3d46ee4 function_c3945cd5(var_a3d46ee4.var_3a90f16b, var_a3d46ee4.var_722885f3);
		}
	}
}

/*
	Name: function_69747207
	Namespace: namespace_36358f9c
	Checksum: 0xD27C1678
	Offset: 0x11040
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_69747207()
{
	var_668efd10 = function_6ada35ba("train_station_gate_old_side", "targetname");
	var_668efd10 function_8bdea13c(-340, 0.5);
	var_d8966c4b = function_6ada35ba("train_station_gate_modern_side", "targetname");
	var_d8966c4b function_8bdea13c(-340, 0.5);
}

/*
	Name: function_4332c4dc
	Namespace: namespace_36358f9c
	Checksum: 0xC63A5C4A
	Offset: 0x110F0
	Size: 0x2DB
	Parameters: 1
	Flags: None
*/
function function_4332c4dc(var_7af45315)
{
	if(!level namespace_ad23e503::function_7922262b("train_station_start_gate_closed"))
	{
		var_668efd10 = function_6ada35ba("train_station_gate_old_side", "targetname");
		var_8b856a66 = function_6ada35ba("train_station_spawn_closet", "targetname");
		var_6d7bb3d1 = 1;
		foreach(var_fcd89369 in var_7af45315)
		{
			if(var_fcd89369 function_32fa5072(var_8b856a66))
			{
				var_6d7bb3d1 = 0;
				break;
			}
		}
		if(var_6d7bb3d1 == 1)
		{
			level namespace_ad23e503::function_74d6b22f("train_station_start_gate_closed");
			var_668efd10 function_8bdea13c(340, 0.5);
		}
	}
	if(!level namespace_ad23e503::function_7922262b("train_station_end_gate_closed"))
	{
		var_d8966c4b = function_6ada35ba("train_station_gate_modern_side", "targetname");
		var_e5a4a905 = function_6ada35ba("train_station_end_closet", "targetname");
		var_fe4ad5ca = 1;
		foreach(var_fcd89369 in var_7af45315)
		{
			if(var_fcd89369 function_32fa5072(var_e5a4a905))
			{
				var_fe4ad5ca = 0;
				break;
			}
		}
		if(var_fe4ad5ca == 1)
		{
			level namespace_ad23e503::function_9d134160("chase_train_move");
			var_d8966c4b thread function_1b3cb751();
		}
	}
}

/*
	Name: function_1b3cb751
	Namespace: namespace_36358f9c
	Checksum: 0xDCFB7AF8
	Offset: 0x113D8
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_1b3cb751()
{
	if(isdefined(self.var_337d1b65) && self.var_337d1b65)
	{
		return;
	}
	self.var_337d1b65 = 1;
	self function_8bdea13c(340, 0.5);
	self waittill("hash_a21db68a");
	level namespace_ad23e503::function_74d6b22f("train_station_end_gate_closed");
}

/*
	Name: function_dfd78ed7
	Namespace: namespace_36358f9c
	Checksum: 0x1BFF29EB
	Offset: 0x11458
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_dfd78ed7()
{
	level namespace_71e9cb84::function_74d6b22f("chase_pedestrian_blockers", 1);
	level thread function_b02cee6();
}

/*
	Name: function_b02cee6
	Namespace: namespace_36358f9c
	Checksum: 0x27C601FB
	Offset: 0x114A0
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_b02cee6()
{
	level namespace_ad23e503::function_1ab5ebec("train_station_end_gate_closed");
	level namespace_71e9cb84::function_74d6b22f("chase_pedestrian_blockers", 0);
	var_d874dcf = function_6ada35ba("train_ped_blocker_clip", "targetname");
	var_d874dcf function_dc8c8404();
}

/*
	Name: function_c9af9d76
	Namespace: namespace_36358f9c
	Checksum: 0x64540A2
	Offset: 0x11530
	Size: 0x10B
	Parameters: 1
	Flags: None
*/
function function_c9af9d76(var_10057083)
{
	level endon("hash_c1a074c7");
	var_4e47ece5 = function_6ada35ba(var_10057083, "targetname");
	while(level namespace_ad23e503::function_7922262b("chase_train_move"))
	{
		var_4e47ece5 waittill("hash_4dbf3ae3", var_a3d46ee4);
		if(function_65f192a6(var_a3d46ee4) && (!isdefined(var_a3d46ee4.var_c9af9d76) && var_a3d46ee4.var_c9af9d76))
		{
			var_a3d46ee4 namespace_71e9cb84::function_e9c3870b("chase_train_rumble", 1);
			var_a3d46ee4 thread function_cdd68ba3(var_4e47ece5);
		}
	}
	level thread function_382f4206();
}

/*
	Name: function_cdd68ba3
	Namespace: namespace_36358f9c
	Checksum: 0xA8CD8D1
	Offset: 0x11648
	Size: 0x8F
	Parameters: 1
	Flags: None
*/
function function_cdd68ba3(var_4e47ece5)
{
	self endon("hash_128f8789");
	level endon("hash_c1a074c7");
	self.var_c9af9d76 = 1;
	while(1)
	{
		if(!self function_32fa5072(var_4e47ece5))
		{
			self namespace_71e9cb84::function_e9c3870b("chase_train_rumble", 0);
			break;
		}
		wait(0.05);
	}
	self.var_c9af9d76 = 0;
}

/*
	Name: function_382f4206
	Namespace: namespace_36358f9c
	Checksum: 0x333C4838
	Offset: 0x116E0
	Size: 0xB9
	Parameters: 0
	Flags: None
*/
function function_382f4206()
{
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		if(isdefined(var_5dc5e20a.var_c9af9d76) && var_5dc5e20a.var_c9af9d76)
		{
			var_5dc5e20a namespace_71e9cb84::function_e9c3870b("chase_train_rumble", 0);
		}
	}
}

/*
	Name: function_699bfff1
	Namespace: namespace_36358f9c
	Checksum: 0x4292CFE4
	Offset: 0x117A8
	Size: 0x53
	Parameters: 1
	Flags: None
*/
function function_699bfff1(var_646436ae)
{
	if(var_646436ae)
	{
		level namespace_71e9cb84::function_74d6b22f("crane_fxanim", 1);
	}
	else
	{
		level namespace_71e9cb84::function_74d6b22f("crane_fxanim", 0);
	}
}

/*
	Name: function_660e6b31
	Namespace: namespace_36358f9c
	Checksum: 0x339CD7A6
	Offset: 0x11808
	Size: 0x53
	Parameters: 1
	Flags: None
*/
function function_660e6b31(var_646436ae)
{
	if(var_646436ae)
	{
		level namespace_71e9cb84::function_74d6b22f("spinning_vent_fxanim", 1);
	}
	else
	{
		level namespace_71e9cb84::function_74d6b22f("spinning_vent_fxanim", 0);
	}
}

/*
	Name: function_fb28b377
	Namespace: namespace_36358f9c
	Checksum: 0x6A150A0D
	Offset: 0x11868
	Size: 0x127
	Parameters: 1
	Flags: None
*/
function function_fb28b377(var_a466e982)
{
	level endon("hash_c1a074c7");
	var_dc7c1178 = function_6643d7e6(var_a466e982, "script_noteworthy");
	var_3c54858a = function_243bb261(var_a466e982, "targetname");
	wait(function_72a94f05(2, 10));
	while(1)
	{
		var_2c566fb1 = namespace_84970cc4::function_47d18840(var_dc7c1178);
		var_a0b86a77 = var_2c566fb1.var_170527fb;
		var_df0311d1 = namespace_96fa87af::function_7387a40a(var_a0b86a77);
		var_df0311d1 thread function_f579b429(var_3c54858a);
		wait(function_72a94f05(10, 20));
	}
}

/*
	Name: function_f579b429
	Namespace: namespace_36358f9c
	Checksum: 0x565609CD
	Offset: 0x11998
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_f579b429(var_3c54858a)
{
	self namespace_96fa87af::function_edb3a94e(var_3c54858a);
	self function_dc8c8404();
}

/*
	Name: function_28aaa11a
	Namespace: namespace_36358f9c
	Checksum: 0x5AFD93C1
	Offset: 0x119E0
	Size: 0xD3
	Parameters: 1
	Flags: None
*/
function function_28aaa11a(var_78962fff)
{
	level notify("hash_a70b0538");
	level endon("hash_a70b0538");
	level thread function_ec83170f();
	level thread function_f752dce5(var_78962fff, "chase_avoid_fail_condition");
	wait(var_78962fff);
	/#
		if(level.var_2395e945.size == 1 && function_29e06050(level.var_2395e945[0]))
		{
			return;
		}
	#/
	level thread function_9e93135c();
	namespace_82b91a51::function_207f8667(&"CP_MI_ZURICH_NEWWORLD_SUSPECT_GOT_AWAY", &"CP_MI_ZURICH_NEWWORLD_SUSPECT_FAIL_HINT");
}

/*
	Name: function_ec83170f
	Namespace: namespace_36358f9c
	Checksum: 0xEE99877D
	Offset: 0x11AC0
	Size: 0x29
	Parameters: 0
	Flags: None
*/
function function_ec83170f()
{
	level endon("hash_a70b0538");
	level.var_c37e4ef3 = 1;
	wait(10);
	level.var_c37e4ef3 = undefined;
}

/*
	Name: function_25e57b80
	Namespace: namespace_36358f9c
	Checksum: 0xAD1D29A5
	Offset: 0x11AF8
	Size: 0x101
	Parameters: 1
	Flags: None
*/
function function_25e57b80(var_a8563e07)
{
	if(!isdefined(level.var_f2a5cb1e))
	{
		return;
	}
	var_273033a9 = 1;
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		if(function_7d15e2f8(var_5dc5e20a.var_722885f3, level.var_f2a5cb1e[0].var_722885f3) < 2500)
		{
			var_273033a9 = 0;
			break;
		}
	}
	if(var_273033a9 == 1)
	{
		level notify("hash_a70b0538");
	}
}

/*
	Name: function_f423f05a
	Namespace: namespace_36358f9c
	Checksum: 0x539204D2
	Offset: 0x11C08
	Size: 0xA3
	Parameters: 1
	Flags: None
*/
function function_f423f05a(var_b04bc952)
{
	level.var_2dca8767 = namespace_82b91a51::function_740f8516("hall");
	level.var_2dca8767 namespace_d84e54db::function_ceb883cd("sprint", 1);
	level.var_2dca8767 namespace_d84e54db::function_ceb883cd("useGrenades", 0);
	level.var_2dca8767 thread namespace_ce0e5f06::function_921d7387();
	namespace_1d795d47::function_3096a6fd(var_b04bc952);
}

/*
	Name: function_3936e284
	Namespace: namespace_36358f9c
	Checksum: 0x1D55BB95
	Offset: 0x11CB8
	Size: 0x17
	Parameters: 0
	Flags: None
*/
function function_3936e284()
{
	if(isdefined(level.var_c37e4ef3))
	{
		return 1;
	}
	return 0;
}

