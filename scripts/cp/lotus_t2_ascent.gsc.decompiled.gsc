#using scripts\codescripts\struct;
#using scripts\cp\_ammo_cache;
#using scripts\cp\_dialog;
#using scripts\cp\_hacking;
#using scripts\cp\_hazard;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\_vehicle_platform;
#using scripts\cp\cp_mi_cairo_lotus3_sound;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_save;
#using scripts\cp\lotus_util;
#using scripts\shared\ai_shared;
#using scripts\shared\animation_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\fx_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\math_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;

#namespace namespace_1af1994;

/*
	Name: function_c4ecc384
	Namespace: namespace_1af1994
	Checksum: 0x7D266C7F
	Offset: 0x1110
	Size: 0x401
	Parameters: 2
	Flags: None
*/
function function_c4ecc384(var_b04bc952, var_74cd64bc)
{
	namespace_d7916d65::function_73adcefc();
	namespace_dabbe128::function_356a4ee1(&function_aebcf025);
	level.var_2fd26037 = namespace_82b91a51::function_740f8516("hendricks");
	namespace_1d795d47::function_3096a6fd(var_b04bc952);
	namespace_cc27597::function_c35e6aab("cin_lot_09_01_pursuit_1st_switch_end");
	namespace_d0ef8521::function_74d6b22f("cp_level_lotus_go_to_tower_two");
	var_f23f965a = function_6ada35ba("hack_panel_ms_cin", "targetname");
	var_f23f965a function_50ccee8d();
	var_2a0a99e4 = function_6ada35ba("tower_2_ascent_complete", "targetname");
	var_2a0a99e4 function_175e6b8e(0);
	namespace_431cac9::function_69533bc9();
	namespace_2f06d687::function_2b37a3c9("team_3", "script_noteworthy", &function_b6e11e5d);
	namespace_4dbf3ae3::function_42e87952("trig_tower_2_ascent_start");
	level thread function_97e1c0b6();
	level thread function_eecc2d6();
	level thread function_afa41a25();
	namespace_d7916d65::function_a2995f22();
	namespace_80983c42::function_80983c42("fx_interior_ambient_falling_debris_tower2");
	function_a0ab59f();
	level thread namespace_3bad5a01::function_d641bfe3();
	level.var_2fd26037 thread function_2eed485d();
	level thread function_562d8d63();
	level thread function_b9f5176f();
	level thread function_a82e3c9a();
	level thread function_24e69186();
	level thread function_25e58e03();
	function_1d0cebf2();
	var_306e8533 = function_99201f25("trig_charging_station", "targetname");
	namespace_84970cc4::function_966ecb29(var_306e8533, &function_96e4a36);
	level thread function_a14cccf5();
	function_a8e16f60();
	function_fda718ac();
	level waittill("hash_dd19bcbe");
	if(isdefined(level.var_c4dba52c))
	{
		[[level.var_c4dba52c]]();
	}
	var_2a0a99e4 function_175e6b8e(1);
	var_c960aa14 = function_99201f25("t2ascent_ms_panel_end_skipto", "targetname");
	var_2a0a99e4 namespace_ac959fba::function_68df65d8(1, &"cp_level_lotus_hack_console", &"CP_MI_CAIRO_LOTUS_HACK_DOOR_CONSOLE", &function_1fd00721, var_c960aa14);
	level notify("hash_3369554");
}

/*
	Name: function_aebcf025
	Namespace: namespace_1af1994
	Checksum: 0xA965EB30
	Offset: 0x1520
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_aebcf025()
{
	self.var_4948fbce = undefined;
	self thread function_59b06ed6();
}

/*
	Name: function_59b06ed6
	Namespace: namespace_1af1994
	Checksum: 0x78A8B82A
	Offset: 0x1550
	Size: 0x107
	Parameters: 0
	Flags: None
*/
function function_59b06ed6()
{
	self endon("hash_c276f97f");
	self endon("hash_128f8789");
	self endon("hash_643a7daf");
	var_9dda0dc8 = function_6ada35ba("filter_danger_trigger", "targetname");
	while(1)
	{
		if(self function_32fa5072(var_9dda0dc8))
		{
			if(!isdefined(self.var_4948fbce) || !self.var_4948fbce)
			{
				self thread namespace_419e977d::function_ccddb105("filter", 1, 999999, 1);
				self.var_4948fbce = 1;
			}
		}
		else
		{
			self thread namespace_419e977d::function_60455f28("filter");
			self.var_4948fbce = undefined;
		}
		wait(1);
	}
}

/*
	Name: function_1fd00721
	Namespace: namespace_1af1994
	Checksum: 0xB4BF46EB
	Offset: 0x1660
	Size: 0x313
	Parameters: 1
	Flags: None
*/
function function_1fd00721(var_6bfe1586)
{
	self namespace_a230c2b1::function_e54c54c3();
	var_43f7b899 = function_6ada35ba("atrium_mobile_shop_door1", "script_noteworthy");
	var_69fa3302 = function_6ada35ba("atrium_mobile_shop_door2", "script_noteworthy");
	var_43f7b899 thread function_d413b369(59);
	var_69fa3302 thread function_d413b369(-59);
	if(isdefined(level.var_3e0291d0))
	{
		[[level.var_3e0291d0]]();
	}
	wait(0.5);
	var_494d8c62 = function_b8494651("team3");
	namespace_84970cc4::function_eaab05dc(var_494d8c62, &function_2992720d);
	level notify("hash_c276f97f");
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a thread namespace_419e977d::function_60455f28("filter");
		var_5dc5e20a.var_43a8d7c6 = undefined;
	}
	namespace_d0ef8521::function_31cd1834("cp_level_lotus_go_to_tower_two");
	namespace_d0ef8521::function_31cd1834("cp_level_lotus_go_to_mobile_shop");
	level namespace_cc27597::function_8f9f34e0("cin_lot_11_tower2ascent_3rd_sh050", &function_9e4c698f, "done");
	var_f23f965a = function_6ada35ba("hack_panel_ms_cin", "targetname");
	var_f23f965a function_48f26766();
	var_4b8428ba = function_6ada35ba("p_intro_glass_window", "targetname");
	var_4b8428ba function_dc8c8404();
	if(isdefined(level.var_d3562e76))
	{
		level thread [[level.var_d3562e76]]();
	}
	level thread namespace_3bad5a01::function_43ead72c();
	level namespace_cc27597::function_43718187("cin_lot_11_tower2ascent_3rd_sh010", self.var_4dbf3ae3.var_aef176e7);
}

/*
	Name: function_d413b369
	Namespace: namespace_1af1994
	Checksum: 0x34CB0D80
	Offset: 0x1980
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_d413b369(var_a4e8111c)
{
	var_bff1f526 = self.var_722885f3 + (var_a4e8111c, 0, 0);
	self function_a96a2721(var_bff1f526, 0.35);
}

/*
	Name: function_9e4c698f
	Namespace: namespace_1af1994
	Checksum: 0x78B31D2
	Offset: 0x19D8
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_9e4c698f(var_c77d2837)
{
	namespace_1d795d47::function_be8adfb8("tower_2_ascent");
}

/*
	Name: function_562d8d63
	Namespace: namespace_1af1994
	Checksum: 0x4140E1E9
	Offset: 0x1A08
	Size: 0x71
	Parameters: 0
	Flags: None
*/
function function_562d8d63()
{
	namespace_4dbf3ae3::function_1ab5ebec("trig_stairs_breadcrumb");
	namespace_d0ef8521::function_45d1556("trig_breadcrumb_t2a_stairs");
	namespace_4dbf3ae3::function_1ab5ebec("trig_t2a_breadcrumb");
	namespace_d0ef8521::function_45d1556("trig_breadcrumb_tower_2_ascent");
	level notify("hash_dd19bcbe");
}

/*
	Name: function_97e1c0b6
	Namespace: namespace_1af1994
	Checksum: 0xE56EEFC1
	Offset: 0x1A88
	Size: 0x159
	Parameters: 0
	Flags: None
*/
function function_97e1c0b6()
{
	level endon("hash_a25dbbd2");
	namespace_76d95162::function_d9f49fba(0);
	level waittill("hash_cb42bb2");
	level namespace_71b8dba1::function_13b3b16a("plyr_hendricks_you_sti_0");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_i_m_still_here_what_0");
	level waittill("hash_d4b39ff7");
	level notify("hash_794bb7a8");
	level namespace_71b8dba1::function_13b3b16a("plyr_where_is_he_kane_0");
	level namespace_71b8dba1::function_a463d127("kane_got_him_in_a_mobil_0");
	namespace_d0ef8521::function_31cd1834("cp_level_lotus_go_to_tower_two");
	namespace_d0ef8521::function_74d6b22f("cp_level_lotus_go_to_mobile_shop");
	namespace_ad23e503::function_1ab5ebec("spawn_pods_01_activate");
	level thread function_1d5b90d6();
	namespace_4dbf3ae3::function_1ab5ebec("trig_t2a_wasps", undefined, undefined, 0);
	namespace_9f824288::function_5d2cdd99();
	wait(3);
}

/*
	Name: function_1d5b90d6
	Namespace: namespace_1af1994
	Checksum: 0xDFF26A6C
	Offset: 0x1BF0
	Size: 0x143
	Parameters: 0
	Flags: None
*/
function function_1d5b90d6()
{
	level namespace_71b8dba1::function_13b3b16a("plyr_where_we_going_kane_1");
	level namespace_71b8dba1::function_a463d127("tayr_up_0");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_john_listen_to_me_0");
	level namespace_71b8dba1::function_a463d127("tayr_it_can_t_be_stopped_0");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_you_go_down_this_pat_0");
	level namespace_71b8dba1::function_a463d127("tayr_you_don_t_want_to_do_0");
	level namespace_71b8dba1::function_13b3b16a("plyr_don_t_listen_to_him_0");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_you_re_fucking_psych_0");
	level namespace_71b8dba1::function_a463d127("tayr_we_re_all_being_used_0");
	level namespace_71b8dba1::function_a463d127("tayr_this_time_around_s_0");
}

/*
	Name: function_b6e11e5d
	Namespace: namespace_1af1994
	Checksum: 0x5036FCAB
	Offset: 0x1D40
	Size: 0x13
	Parameters: 0
	Flags: None
*/
function function_b6e11e5d()
{
	self.var_3e94206a = "team3";
}

/*
	Name: function_a0ab59f
	Namespace: namespace_1af1994
	Checksum: 0x1A149264
	Offset: 0x1D60
	Size: 0x61
	Parameters: 0
	Flags: None
*/
function function_a0ab59f()
{
	if(isdefined(level.var_ba32e253))
	{
		level thread [[level.var_ba32e253]]();
	}
	namespace_cc27597::function_43718187("cin_lot_09_01_pursuit_1st_switch_end");
	namespace_82b91a51::function_93831e79("tower_2_ascent");
	level notify("hash_cb42bb2");
}

/*
	Name: function_eecc2d6
	Namespace: namespace_1af1994
	Checksum: 0x51FF0F9C
	Offset: 0x1DD0
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_eecc2d6()
{
	level waittill("hash_e6b6da78");
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_lotus_hall_debris_01_bundle");
	namespace_4dbf3ae3::function_1ab5ebec("trig_civ_crawl");
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_lotus_hall_debris_02_bundle");
	level waittill("hash_c2e0f4f8");
	level namespace_71e9cb84::function_74d6b22f("t2a_paper_burst", 1);
}

/*
	Name: function_afa41a25
	Namespace: namespace_1af1994
	Checksum: 0xEFC92645
	Offset: 0x1E70
	Size: 0x2B3
	Parameters: 0
	Flags: None
*/
function function_afa41a25()
{
	var_f19e787 = namespace_2f06d687::function_7387a40a("civ_lotus");
	var_f19e787 namespace_d84e54db::function_c9e45d52(1);
	var_f79b3b69 = namespace_14b42b8a::function_7922262b("sb_civ_choking_1");
	var_f79b3b69 thread namespace_cc27597::function_5c143f59("cin_gen_wounded_vign_choking03", var_f19e787, undefined, 0.5);
	function_be24fb87("sb_civ_choking_t2ascent_entry", "cin_gen_wounded_vign_choking01");
	namespace_4dbf3ae3::function_1ab5ebec("trig_civ_crawl");
	function_be24fb87("sb_civ_choking_2", "cin_gen_wounded_vign_choking01");
	function_53775619("sb_soldier_choking_pair_01", "cin_gen_wounded_vign_choking_pair");
	namespace_4dbf3ae3::function_1ab5ebec("trig_t2a_breadcrumb");
	function_be24fb87("sb_civ_choking_3", "cin_gen_wounded_vign_choking02");
	function_e478d8aa("sb_soldier_random_death_1", "cin_gen_wounded_last_stand_guy01");
	function_e478d8aa("sb_soldier_random_death_2", "cin_gen_wounded_last_stand_guy03");
	namespace_4dbf3ae3::function_1ab5ebec("intro_area_exit");
	function_be24fb87("sb_civ_choking_4", "cin_gen_wounded_vign_choking01");
	function_e478d8aa("sb_soldier_random_death_3", "cin_gen_wounded_vign_choking02");
	namespace_4dbf3ae3::function_1ab5ebec("trig_sb_civ_choking_5", "script_noteworthy");
	function_be24fb87("sb_civ_choking_5", "cin_gen_wounded_vign_choking02");
	function_e478d8aa("sb_soldier_random_death_4", "cin_gen_wounded_last_stand_guy02");
	namespace_4dbf3ae3::function_1ab5ebec("trig_t2a_wasps");
	function_be24fb87("sb_civ_choking_6", "cin_gen_wounded_vign_choking03");
	function_e478d8aa("sb_soldier_random_death_5", "cin_gen_wounded_last_stand_guy01");
	function_e478d8aa("sb_soldier_random_death_6", "cin_gen_wounded_last_stand_guy02");
}

/*
	Name: function_be24fb87
	Namespace: namespace_1af1994
	Checksum: 0xFF6F67ED
	Offset: 0x2130
	Size: 0x93
	Parameters: 2
	Flags: None
*/
function function_be24fb87(var_d83ebd04, var_a60475e6)
{
	var_f19e787 = namespace_2f06d687::function_7387a40a("civ_lotus");
	var_f19e787 namespace_d84e54db::function_c9e45d52(1);
	var_f79b3b69 = namespace_14b42b8a::function_7922262b(var_d83ebd04);
	var_f79b3b69 thread namespace_cc27597::function_43718187(var_a60475e6, var_f19e787);
}

/*
	Name: function_e478d8aa
	Namespace: namespace_1af1994
	Checksum: 0xEF417349
	Offset: 0x21D0
	Size: 0xFB
	Parameters: 2
	Flags: None
*/
function function_e478d8aa(var_d83ebd04, var_a60475e6)
{
	var_e40e6312 = function_26299103(2);
	if(var_e40e6312 == 0)
	{
		var_2f06d687 = "soldier_assault_lotus";
	}
	else
	{
		var_2f06d687 = "soldier_supp_lotus";
	}
	var_a8047ee4 = namespace_2f06d687::function_7387a40a(var_2f06d687);
	var_a8047ee4 namespace_d84e54db::function_c9e45d52(1);
	var_a8047ee4 namespace_d84e54db::function_b4f5e3b9(1);
	var_f79b3b69 = namespace_14b42b8a::function_7922262b(var_d83ebd04);
	var_f79b3b69 thread namespace_cc27597::function_5c143f59(var_a60475e6, var_a8047ee4);
}

/*
	Name: function_53775619
	Namespace: namespace_1af1994
	Checksum: 0xF30F1497
	Offset: 0x22D8
	Size: 0x133
	Parameters: 2
	Flags: None
*/
function function_53775619(var_d83ebd04, var_a60475e6)
{
	var_a98d2f05 = namespace_2f06d687::function_7387a40a("soldier_assault_lotus");
	var_cf8fa96e = namespace_2f06d687::function_7387a40a("soldier_supp_lotus");
	var_a98d2f05 namespace_d84e54db::function_c9e45d52(1);
	var_cf8fa96e namespace_d84e54db::function_c9e45d52(1);
	var_a98d2f05 namespace_d84e54db::function_b4f5e3b9(1);
	var_cf8fa96e namespace_d84e54db::function_b4f5e3b9(1);
	var_f096c1f7 = [];
	var_f096c1f7[var_f096c1f7.size] = var_a98d2f05;
	var_f096c1f7[var_f096c1f7.size] = var_cf8fa96e;
	var_f79b3b69 = namespace_14b42b8a::function_7922262b(var_d83ebd04);
	var_f79b3b69 thread namespace_cc27597::function_5c143f59(var_a60475e6, var_f096c1f7);
}

/*
	Name: function_2eed485d
	Namespace: namespace_1af1994
	Checksum: 0x2141291A
	Offset: 0x2418
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_2eed485d()
{
	namespace_4dbf3ae3::function_1ab5ebec("trig_hendricks_cqb");
	self namespace_d84e54db::function_ceb883cd("cqb", 1);
	level namespace_ad23e503::function_1ab5ebec("rflag_t2_wall_break");
	self namespace_d84e54db::function_ceb883cd("cqb", 0);
	namespace_d5067552::function_72e3dd35("sm_wall_break");
	namespace_4dbf3ae3::function_42e87952("trig_stairs_breadcrumb", "targetname", undefined, 0);
}

/*
	Name: function_b9f5176f
	Namespace: namespace_1af1994
	Checksum: 0x96F930E6
	Offset: 0x24E0
	Size: 0x89
	Parameters: 0
	Flags: None
*/
function function_b9f5176f()
{
	namespace_ad23e503::function_1ab5ebec("rflag_t2_wall_break");
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_lotus_wall_hole_break_through_bundle");
	namespace_d5067552::function_bae40a28("sm_wall_break");
	while(!namespace_d5067552::function_b02fc450("sm_wall_break"))
	{
		wait(0.05);
	}
	level notify("hash_d4b39ff7");
}

/*
	Name: function_a8e16f60
	Namespace: namespace_1af1994
	Checksum: 0x1F2DD1F1
	Offset: 0x2578
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_a8e16f60()
{
	namespace_ad23e503::function_1ab5ebec("rflag_t2_ceiling_break");
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_lotus_t2_ceiling_collapse_bundle");
	namespace_d5067552::function_bae40a28("sm_ceiling_hole_01");
}

/*
	Name: function_fda718ac
	Namespace: namespace_1af1994
	Checksum: 0x4D477A43
	Offset: 0x25D8
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_fda718ac()
{
	namespace_4dbf3ae3::function_1ab5ebec("trig_robot_climb_and_leap");
	var_f6817271 = namespace_2f06d687::function_7387a40a("robot_climb_and_leap");
	var_6df191e = namespace_14b42b8a::function_7922262b("align_robot_climb_and_leap");
	var_6df191e namespace_cc27597::function_43718187("cin_lot_12_01_minigun_vign_invadetop_robot01", var_f6817271);
}

/*
	Name: function_25e58e03
	Namespace: namespace_1af1994
	Checksum: 0x943D774B
	Offset: 0x2670
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_25e58e03()
{
	namespace_4dbf3ae3::function_1ab5ebec("trig_ascent_init");
	level namespace_cc27597::function_c35e6aab("cin_lot_11_tower2ascent_3rd_sh010");
}

/*
	Name: function_c276f97f
	Namespace: namespace_1af1994
	Checksum: 0x605892DD
	Offset: 0x26B8
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function function_c276f97f(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
}

/*
	Name: function_24e69186
	Namespace: namespace_1af1994
	Checksum: 0x1F73D9FF
	Offset: 0x26E8
	Size: 0x159
	Parameters: 0
	Flags: None
*/
function function_24e69186()
{
	namespace_4dbf3ae3::function_1ab5ebec("trig_crush_robots");
	namespace_2f06d687::function_22356ba7("poor_crushed_bastards");
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_lotus_mobile_shop_tower2_balcony_bundle");
	namespace_4dbf3ae3::function_1ab5ebec("trig_crush_robots_mobile_shop");
	namespace_9f824288::function_fb150717();
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_lotus_mobile_shop_tower2_bundle");
	level waittill("hash_ff32a68a");
	var_5b5accb8 = function_99201f25("poor_crushed_bastards_ai", "targetname");
	foreach(var_40e0db58 in var_5b5accb8)
	{
		var_40e0db58 function_2992720d();
	}
}

/*
	Name: function_a14cccf5
	Namespace: namespace_1af1994
	Checksum: 0x4426B4B7
	Offset: 0x2850
	Size: 0x26B
	Parameters: 0
	Flags: None
*/
function function_a14cccf5()
{
	level.var_62737b71 = [];
	function_9b385ca5();
	var_6516249 = var_fa0d90fd;
	function_c35e6aab(var_6516249, "atrium01_mobile_shop");
	var_5c834145 = function_9bc3d62a();
	var_5c834145 function_8d63f8d0(0);
	var_a37d2f3f = function_99201f25("atrium01_mobile_shop", "groupname");
	foreach(var_d1651c in var_a37d2f3f)
	{
		var_ffa21397 = function_9b7fda5e("script_origin", var_d1651c.var_722885f3 + VectorScale((0, 0, 1), 20));
		var_ffa21397.var_6ab6f4fd = var_d1651c.var_6ab6f4fd;
		var_ffa21397.var_170527fb = var_d1651c.var_170527fb + "_telly";
		var_ffa21397 function_8c1f7070();
		level.var_62737b71[var_d1651c.var_170527fb + "_ai" + var_4bc288a0] = var_ffa21397;
		var_ffa21397 function_37f7858a(var_5c834145);
	}
	namespace_4dbf3ae3::function_1ab5ebec("atrium01_mobile_shop_move");
	namespace_d5067552::function_bae40a28("sm_atrium01_mobile_shop_enemies");
	namespace_4dbf3ae3::function_42e87952("atrium01_mobile_shop_trigger");
	level waittill("hash_ac9b613c");
	level thread function_79518669();
}

/*
	Name: function_9c0a1fb0
	Namespace: namespace_1af1994
	Checksum: 0x3250454D
	Offset: 0x2AC8
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_9c0a1fb0()
{
	function_47d28a09(self);
}

/*
	Name: function_79518669
	Namespace: namespace_1af1994
	Checksum: 0x666EECA
	Offset: 0x2AF0
	Size: 0x333
	Parameters: 0
	Flags: None
*/
function function_79518669()
{
	var_43f7b899 = function_6ada35ba("atrium_mobile_shop_door1", "script_noteworthy");
	var_69fa3302 = function_6ada35ba("atrium_mobile_shop_door2", "script_noteworthy");
	var_43f7b899 function_52fddbd0();
	var_69fa3302 function_52fddbd0();
	var_43f7b899 thread function_d413b369(59);
	var_69fa3302 thread function_d413b369(-59);
	namespace_84970cc4::function_966ecb29(function_fe0cfd2e("atrium01_mobile_shop_traversal", "targetname"), &function_9c0a1fb0);
	var_9b973797 = function_99201f25("atrium01_mobile_shop_interior", "script_aigroup", 1);
	var_e328554a = function_6ada35ba("v_mobile_shop_enemies_goal", "targetname");
	foreach(var_6050ab17 in var_9b973797)
	{
		var_6050ab17 namespace_d84e54db::function_ceb883cd("move_mode", "rambo");
		var_6050ab17.var_7dfaf62 = 16;
	}
	namespace_84970cc4::function_1ab5ebec(var_9b973797, "goal");
	foreach(var_6050ab17 in var_9b973797)
	{
		if(isdefined(var_6050ab17) && function_5b49d38c(var_6050ab17))
		{
			var_6050ab17 namespace_d84e54db::function_ceb883cd("move_mode", "rambo");
			var_6050ab17.var_7dfaf62 = 1024;
			var_6050ab17 function_169cc712(var_e328554a);
		}
	}
	var_43f7b899 thread function_d413b369(-59);
	var_69fa3302 thread function_d413b369(59);
}

/*
	Name: function_350b14b4
	Namespace: namespace_1af1994
	Checksum: 0x5EC1FBDB
	Offset: 0x2E30
	Size: 0xDD
	Parameters: 0
	Flags: None
*/
function function_350b14b4()
{
	switch(self.var_caae374e)
	{
		case "mobile_shop_shooter_spawners":
		{
			self function_169cc712(function_b4cb3503(self.var_b07228b6, "targetname"));
			break;
		}
		case "mobile_shop_melee_spawners":
		{
			self namespace_d84e54db::function_ceb883cd("rogue_control", "forced_level_2");
			break;
		}
		case "mobile_shop_suicide_spawners":
		{
			self namespace_d84e54db::function_ceb883cd("rogue_control", "forced_level_3");
			break;
		}
		case default:
		{
			/#
				namespace_33b293fd::function_a7ee953("Dev Block strings are not supported");
			#/
			break;
		}
	}
}

/*
	Name: function_a652d076
	Namespace: namespace_1af1994
	Checksum: 0x91DA482E
	Offset: 0x2F18
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_a652d076()
{
	self endon("hash_4dbf3ae3");
	self function_175e6b8e(0);
	while(!function_5b49d38c(level.var_2fd26037) || !level.var_2fd26037 function_32fa5072(self) && level.var_2fd26037.var_722885f3[2] > 16300)
	{
		wait(0.2);
	}
	self function_175e6b8e(1);
}

/*
	Name: function_a82e3c9a
	Namespace: namespace_1af1994
	Checksum: 0x9EBE92A1
	Offset: 0x2FC8
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_a82e3c9a()
{
	level waittill("hash_794bb7a8");
	level thread namespace_ce7c3ed5::function_8f7bd062("cp_lotus3_pip_towerjump", "pip");
}

/*
	Name: function_df51a037
	Namespace: namespace_1af1994
	Checksum: 0x99EC1590
	Offset: 0x3008
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_df51a037()
{
}

/*
	Name: function_283f872d
	Namespace: namespace_1af1994
	Checksum: 0x13D603F
	Offset: 0x3018
	Size: 0x1EB
	Parameters: 0
	Flags: None
*/
function function_283f872d()
{
	function_9b385ca5();
	var_ca404144 = var_fa0d90fd;
	function_c35e6aab(var_ca404144, "ms_prometheus");
	var_92d245e2 = namespace_82b91a51::function_740f8516("taylor");
	var_92d245e2 namespace_d84e54db::function_b4f5e3b9(1);
	var_92d245e2 namespace_d84e54db::function_c9e45d52(1);
	var_23abba9c = function_9bc3d62a();
	var_6df191e = namespace_14b42b8a::function_7922262b("align_rise");
	var_fa8b47e0 = namespace_82b91a51::function_b9fd52a4("tag_origin", var_6df191e.var_722885f3, var_6df191e.var_6ab6f4fd);
	var_fa8b47e0.var_170527fb = "tag_align_rise";
	var_fa8b47e0 function_37f7858a(var_23abba9c);
	wait(10);
	var_fa8b47e0 thread namespace_cc27597::function_43718187("cin_lot_11_02_tower2_pip_jump_camera");
	var_fa8b47e0 namespace_cc27597::function_43718187("cin_lot_11_02_tower2_pip_jump", var_92d245e2);
	namespace_4dbf3ae3::function_42e87952("trig_ms_prometheus", "script_noteworthy");
	var_fa8b47e0 thread namespace_cc27597::function_43718187("cin_lot_11_03_tower2_vign_rise", var_92d245e2);
	level waittill("hash_c31669a4");
	var_92d245e2 function_dc8c8404();
}

/*
	Name: function_1d0cebf2
	Namespace: namespace_1af1994
	Checksum: 0x108282D3
	Offset: 0x3210
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_1d0cebf2()
{
	level.var_54a1e80 = 0;
	level.var_63a2bc2d = 1;
	namespace_cc27597::function_8f9f34e0("cin_lotus_charging_station_awaken_robot_static", &function_524683e3, "init");
}

/*
	Name: function_96e4a36
	Namespace: namespace_1af1994
	Checksum: 0x719223AF
	Offset: 0x3268
	Size: 0x125
	Parameters: 0
	Flags: None
*/
function function_96e4a36()
{
	self waittill("hash_4dbf3ae3");
	var_336f0a7e = namespace_14b42b8a::function_7faf4c39(self.var_b07228b6);
	var_336f0a7e = namespace_84970cc4::function_8332f7f6(var_336f0a7e);
	var_5a3059c5 = function_d7b7baa9(var_336f0a7e);
	var_336f0a7e = namespace_84970cc4::function_d010fbb9(var_336f0a7e, var_5a3059c5);
	var_8046f3a7 = function_c0ff2395();
	var_ce32be36 = 1;
	for(var_c957f6b6 = 0; var_c957f6b6 < var_336f0a7e.size; var_c957f6b6++)
	{
		if(var_c957f6b6 >= var_8046f3a7)
		{
			var_ce32be36 = 0;
		}
		var_336f0a7e[var_c957f6b6] thread function_de86d341(var_ce32be36);
	}
}

/*
	Name: function_c0ff2395
	Namespace: namespace_1af1994
	Checksum: 0x65480B22
	Offset: 0x3398
	Size: 0xA9
	Parameters: 0
	Flags: None
*/
function function_c0ff2395()
{
	switch(level.var_2395e945.size)
	{
		case 1:
		{
			var_d3fe3965 = 4;
			break;
		}
		case 2:
		{
			var_d3fe3965 = 6;
			break;
		}
		case 3:
		{
			var_d3fe3965 = 7;
			break;
		}
		case 4:
		{
			var_d3fe3965 = 8;
			break;
		}
		case default:
		{
			break;
		}
	}
	return var_d3fe3965;
}

/*
	Name: function_d7b7baa9
	Namespace: namespace_1af1994
	Checksum: 0xDB1A8D42
	Offset: 0x3450
	Size: 0x14B
	Parameters: 1
	Flags: None
*/
function function_d7b7baa9(var_336f0a7e)
{
	var_99ca2a39 = 0;
	var_11b21d5 = [];
	foreach(var_a1d93799 in var_336f0a7e)
	{
		if(var_a1d93799.var_b2ff4d87 === "ignore")
		{
			if(!isdefined(var_11b21d5))
			{
				var_11b21d5 = [];
			}
			else if(!function_6e2770d8(var_11b21d5))
			{
				var_11b21d5 = function_84970cc4(var_11b21d5);
			}
			var_11b21d5[var_11b21d5.size] = var_a1d93799;
			var_a1d93799 function_b8c02ba3(var_99ca2a39);
			if(var_99ca2a39)
			{
				var_99ca2a39 = 0;
				continue;
			}
			var_99ca2a39 = 1;
		}
	}
	return var_11b21d5;
}

/*
	Name: function_b8c02ba3
	Namespace: namespace_1af1994
	Checksum: 0x5059BAAE
	Offset: 0x35A8
	Size: 0x14B
	Parameters: 1
	Flags: None
*/
function function_b8c02ba3(var_e572d9b)
{
	if(!isdefined(var_e572d9b))
	{
		var_e572d9b = 0;
	}
	if(!var_e572d9b)
	{
		self namespace_cc27597::function_c35e6aab("cin_lotus_charging_station_awaken_robot_static");
	}
	var_77b2d567 = namespace_14b42b8a::function_7922262b(self.var_b07228b6);
	var_c638600 = namespace_82b91a51::function_b9fd52a4("p7_fxanim_cp_sgen_charging_station_doors_break_mod", var_77b2d567.var_722885f3, var_77b2d567.var_6ab6f4fd);
	var_38ae1670 = 0;
	if(var_e572d9b)
	{
		if(function_26299103(2))
		{
			var_38ae1670 = 1;
		}
	}
	if(var_38ae1670)
	{
		var_77b2d567 namespace_cc27597::function_5c143f59("p7_fxanim_cp_sgen_charging_station_break_01_bundle", var_c638600);
	}
	else
	{
		var_77b2d567 namespace_cc27597::function_c35e6aab("p7_fxanim_cp_sgen_charging_station_break_01_bundle", var_c638600);
	}
	var_77b2d567.var_c638600 = var_c638600;
	return var_77b2d567;
}

/*
	Name: function_de86d341
	Namespace: namespace_1af1994
	Checksum: 0x3F2EDA7C
	Offset: 0x3700
	Size: 0x211
	Parameters: 1
	Flags: None
*/
function function_de86d341(var_ce32be36)
{
	var_77b2d567 = self function_b8c02ba3();
	if(var_ce32be36)
	{
		if(isdefined(self.var_b2ff4d87))
		{
			namespace_4dbf3ae3::function_1ab5ebec(self.var_b2ff4d87);
		}
		else
		{
			wait(function_72a94f05(0.05, 4.65));
		}
	}
	else if(level.var_63a2bc2d && level.var_2395e945.size > 1)
	{
		level.var_63a2bc2d = 0;
		var_64852f68 = function_9b7fda5e("trigger_radius", self.var_722885f3, 0, 128, 128);
		var_64852f68 waittill("hash_4dbf3ae3");
	}
	else
	{
		level.var_63a2bc2d = 1;
		return;
	}
	var_a60475e6 = "cin_lotus_charging_station_awaken_robot_right";
	if(self.var_db7bb468 == "left")
	{
		var_a60475e6 = "cin_lotus_charging_station_awaken_robot_left";
	}
	level.var_54a1e80++;
	var_28c25ffb = "cs_robot_rusher";
	if(level.var_54a1e80 > 3)
	{
		level.var_54a1e80 = 0;
		var_28c25ffb = "cs_robot_shooter";
	}
	var_f6c5842 = namespace_2f06d687::function_7387a40a(var_28c25ffb);
	self thread namespace_cc27597::function_43718187(var_a60475e6, var_f6c5842);
	var_f6c5842 waittill("hash_81b40ff2");
	var_77b2d567 thread namespace_cc27597::function_43718187("p7_fxanim_cp_sgen_charging_station_break_01_bundle", var_77b2d567.var_c638600);
	self notify("hash_2ffb0bc3");
}

/*
	Name: function_524683e3
	Namespace: namespace_1af1994
	Checksum: 0xD075C945
	Offset: 0x3920
	Size: 0xA9
	Parameters: 1
	Flags: None
*/
function function_524683e3(var_a1749b84)
{
	self waittill("hash_2ffb0bc3");
	foreach(var_9544d7c1 in var_a1749b84)
	{
		if(isdefined(var_9544d7c1))
		{
			var_9544d7c1 function_dc8c8404();
		}
	}
}

/*
	Name: function_7c30c579
	Namespace: namespace_1af1994
	Checksum: 0x68C208F6
	Offset: 0x39D8
	Size: 0x14B
	Parameters: 0
	Flags: None
*/
function function_7c30c579()
{
	self endon("hash_128f8789");
	level endon("hash_c276f97f");
	var_dc7bd541 = function_6ada35ba("hendricks_nag_position", "targetname");
	while(1)
	{
		var_db297aa3 = 1000000;
		var_56dd1913 = function_846256f4("axis");
		if(isdefined(var_56dd1913) && var_56dd1913.size > 0)
		{
			var_2e0763ad = function_e7bdc1a1(self.var_722885f3, var_56dd1913);
			var_db297aa3 = function_cb3d1c9b(self.var_722885f3, var_2e0763ad.var_722885f3);
		}
		if(self function_32fa5072(var_dc7bd541) && var_db297aa3 >= 562500)
		{
			self namespace_cc27597::function_43718187("cin_gen_ambient_idle_nag", self);
		}
		else
		{
			wait(0.25);
		}
	}
}

