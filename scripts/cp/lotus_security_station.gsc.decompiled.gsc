#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_oed;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\_vehicle_platform;
#using scripts\cp\cp_mi_cairo_lotus_sound;
#using scripts\cp\cp_mi_cairo_lotus2_sound;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_save;
#using scripts\cp\lotus_accolades;
#using scripts\cp\lotus_detention_center;
#using scripts\cp\lotus_util;
#using scripts\shared\ai\phalanx;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\audio_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\math_shared;
#using scripts\shared\player_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;

#namespace namespace_8e4b89e2;

/*
	Name: function_cd269efc
	Namespace: namespace_8e4b89e2
	Checksum: 0x4EA9CDB4
	Offset: 0x1F60
	Size: 0x253
	Parameters: 2
	Flags: None
*/
function function_cd269efc(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		level.var_2fd26037 = namespace_82b91a51::function_740f8516("hendricks");
		level.var_9db406db = namespace_82b91a51::function_740f8516("khalil");
		namespace_1d795d47::function_3096a6fd(var_b04bc952);
		function_de57d320();
		level namespace_cc27597::function_6c130337("cin_lot_04_01_security_vign_weaponcivs");
		level thread namespace_cc27597::function_43718187("assassination_bodies", "targetname");
		namespace_4dbf3ae3::function_42e87952("post_hakim_armed_civs");
		level namespace_ad23e503::function_1ab5ebec("first_player_spawned");
		namespace_71e9cb84::function_74d6b22f("swap_crowd_to_riot", 1);
		namespace_d7916d65::function_a2995f22();
		level thread namespace_cc27597::function_43718187("cin_lot_04_01_security_vign_weaponguards");
		level namespace_431cac9::function_484bc3aa(1);
		level thread namespace_66fe78fb::function_36e942f6();
		level notify("hash_72d53556");
	}
	namespace_d0ef8521::function_74d6b22f("cp_level_lotus_capture_security_station");
	namespace_d0ef8521::function_74d6b22f("cp_level_lotus_to_security_station");
	level thread function_5fed4787();
	level thread function_a2032fbb();
	level.var_9db406db thread function_e8ea29f3(var_74cd64bc);
	namespace_4dbf3ae3::function_1ab5ebec("apartments_complete");
	namespace_1d795d47::function_be8adfb8("apartments");
}

/*
	Name: function_46593e07
	Namespace: namespace_8e4b89e2
	Checksum: 0xC272AF9B
	Offset: 0x21C0
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function function_46593e07(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
}

/*
	Name: function_e8ea29f3
	Namespace: namespace_8e4b89e2
	Checksum: 0x26B90495
	Offset: 0x21F0
	Size: 0x7B
	Parameters: 1
	Flags: None
*/
function function_e8ea29f3(var_74cd64bc)
{
	if(!var_74cd64bc)
	{
		self waittill("hash_aa1b20a2");
	}
	do
	{
		wait(0.25);
	}
	while(!self.var_fe2c8dda === 1);
	wait(5);
	level namespace_ad23e503::function_1ab5ebec("apartment_clear_magic_bullet");
	self namespace_71b8dba1::function_81141386("khal_drive_the_nrc_out_of_0");
}

/*
	Name: function_a2032fbb
	Namespace: namespace_8e4b89e2
	Checksum: 0x852B32A9
	Offset: 0x2278
	Size: 0x103
	Parameters: 1
	Flags: None
*/
function function_a2032fbb(var_74cd64bc)
{
	if(!isdefined(var_74cd64bc))
	{
		var_74cd64bc = 0;
	}
	level thread namespace_cc27597::function_c35e6aab("cin_lot_04_03_security_vign_stairshot");
	var_6df191e = namespace_14b42b8a::function_7922262b("security_vign_breakout", "targetname");
	var_6df191e namespace_cc27597::function_8f9f34e0("cin_lot_04_01_security_vign_beaten_breakout_loop", &function_b5d037ab, "init", var_6df191e);
	var_6df191e namespace_cc27597::function_c35e6aab("cin_lot_04_01_security_vign_beaten_breakout_loop");
	if(!var_74cd64bc)
	{
		namespace_4dbf3ae3::function_1ab5ebec("post_up_before_stairs");
		namespace_d5067552::function_bae40a28("sm_atrium_battle");
		function_c687efb();
	}
}

/*
	Name: function_963d89c4
	Namespace: namespace_8e4b89e2
	Checksum: 0x49B50CB6
	Offset: 0x2388
	Size: 0x4DB
	Parameters: 2
	Flags: None
*/
function function_963d89c4(var_b04bc952, var_74cd64bc)
{
	var_725a58df = function_6ada35ba("mobile_shop_0_model", "script_noteworthy");
	var_f4595f48 = function_6ada35ba("mobile_shop_0_clip", "script_noteworthy");
	var_576c11ba = function_6ada35ba("mobile_shop_0_player_clip", "script_noteworthy");
	var_725a58df function_37f7858a(var_f4595f48);
	var_576c11ba function_37f7858a(var_f4595f48);
	var_47d90b65 = function_6ada35ba("mobile_shop_1_vehicle", "targetname");
	var_47d90b65 function_8c8e79fe();
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		level thread function_a2032fbb(var_74cd64bc);
		level namespace_cc27597::function_c35e6aab("mobile_shop_ravens", "targetname");
		level.var_2fd26037 = namespace_82b91a51::function_740f8516("hendricks");
		level.var_9db406db = namespace_82b91a51::function_740f8516("khalil");
		level.var_2fd26037 namespace_d84e54db::function_ceb883cd("cqb", 1);
		level.var_9db406db namespace_d84e54db::function_ceb883cd("cqb", 1);
		namespace_1d795d47::function_3096a6fd(var_b04bc952);
		namespace_d0ef8521::function_74d6b22f("cp_level_lotus_capture_security_station");
		namespace_d0ef8521::function_74d6b22f("cp_level_lotus_to_security_station");
		namespace_d5067552::function_bae40a28("sm_atrium_battle");
		level thread function_c687efb();
		namespace_4dbf3ae3::function_42e87952("post_up_before_stairs");
		namespace_d7916d65::function_a2995f22();
		level notify("hash_72d53556");
		namespace_71e9cb84::function_74d6b22f("swap_crowd_to_riot", 1);
		level namespace_431cac9::function_484bc3aa(1);
		level thread namespace_66fe78fb::function_36e942f6();
	}
	else
	{
		level namespace_cc27597::function_c35e6aab("mobile_shop_ravens", "targetname");
	}
	level thread function_c370e3e();
	level thread function_c2d878c1();
	level thread function_2bb3bfaa();
	level thread function_445b4b54();
	level thread function_a10660d2();
	level thread function_dfaa08e3();
	level thread function_80d145c5();
	level thread function_e0f59e66();
	namespace_ad23e503::function_1ab5ebec("start_atrium_battle");
	level thread namespace_431cac9::function_a516f0de("raven_decal_atrium_battle", 5, 5);
	level thread function_6ee2c51b();
	level namespace_ad23e503::function_1ab5ebec("shop_1_elevator_up");
	function_769fdf5b();
	level namespace_ad23e503::function_1ab5ebec("atrium_done");
	namespace_1d795d47::function_be8adfb8("atrium_battle");
	level.var_2fd26037 namespace_d84e54db::function_ceb883cd("cqb", 0);
	level.var_9db406db namespace_d84e54db::function_ceb883cd("cqb", 0);
}

/*
	Name: function_6ee2c51b
	Namespace: namespace_8e4b89e2
	Checksum: 0x3A2B240F
	Offset: 0x2870
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_6ee2c51b()
{
	namespace_2f06d687::function_45679edd("atrium_enemy", 2);
	if(isdefined(level.var_c4dba52c))
	{
		[[level.var_c4dba52c]]();
	}
	level namespace_ad23e503::function_74d6b22f("hero_mobile_shop_board");
}

/*
	Name: function_57b2d9ef
	Namespace: namespace_8e4b89e2
	Checksum: 0x779CD8A
	Offset: 0x28D8
	Size: 0x73
	Parameters: 4
	Flags: None
*/
function function_57b2d9ef(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	if(var_74cd64bc)
	{
		function_769fdf5b();
	}
	function_6ada35ba("kill_after_mobileride", "targetname") function_175e6b8e(1);
}

/*
	Name: function_769fdf5b
	Namespace: namespace_8e4b89e2
	Checksum: 0xF0383105
	Offset: 0x2958
	Size: 0x2DB
	Parameters: 0
	Flags: None
*/
function function_769fdf5b()
{
	level namespace_cc27597::function_8f9f34e0("cin_lot_04_05_security_vign_melee_variation1", &namespace_431cac9::function_5da90c71, "init");
	level namespace_cc27597::function_8f9f34e0("cin_lot_04_05_security_vign_melee_variation1", &function_3807296);
	level namespace_cc27597::function_8f9f34e0("cin_lot_04_05_security_vign_melee_variation2", &namespace_431cac9::function_5da90c71, "init");
	level namespace_cc27597::function_8f9f34e0("cin_lot_04_05_security_vign_melee_variation2", &namespace_431cac9::function_f2596cbe);
	level namespace_cc27597::function_8f9f34e0("cin_lot_04_05_security_vign_melee_variation2", &function_ad02ed86);
	level namespace_cc27597::function_8f9f34e0("cin_lot_04_05_security_vign_melee_variation3", &namespace_431cac9::function_5da90c71, "init");
	level namespace_cc27597::function_8f9f34e0("cin_lot_04_05_security_vign_melee_variation3", &function_3807296);
	level namespace_cc27597::function_8f9f34e0("cin_lot_04_05_security_vign_melee_variation4", &namespace_431cac9::function_5da90c71, "init");
	level namespace_cc27597::function_8f9f34e0("cin_lot_04_05_security_vign_melee_variation4", &function_3807296);
	level namespace_cc27597::function_8f9f34e0("cin_lot_04_05_security_vign_melee_variation5", &namespace_431cac9::function_5da90c71, "init");
	level namespace_cc27597::function_8f9f34e0("cin_lot_04_05_security_vign_melee_variation5", &function_5bdeffa9);
	level namespace_cc27597::function_8f9f34e0("cin_lot_04_07_security_vign_headshot_loop", &function_3d3111c6, "init");
	level thread namespace_cc27597::function_c35e6aab("cin_lot_04_07_security_vign_headshot_loop");
	level thread namespace_cc27597::function_c35e6aab("cin_lot_04_05_security_vign_melee_variation1");
	level thread namespace_cc27597::function_c35e6aab("security_melee1", "targetname");
	level thread namespace_cc27597::function_c35e6aab("cin_lot_04_05_security_vign_melee_variation3");
	level thread namespace_cc27597::function_c35e6aab("cin_lot_04_05_security_vign_melee_variation4");
	level thread namespace_cc27597::function_c35e6aab("cin_lot_04_05_security_vign_melee_variation5");
}

/*
	Name: function_41534d2a
	Namespace: namespace_8e4b89e2
	Checksum: 0x8B699605
	Offset: 0x2C40
	Size: 0x2CB
	Parameters: 2
	Flags: None
*/
function function_41534d2a(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		level.var_2fd26037 = namespace_82b91a51::function_740f8516("hendricks");
		level namespace_ad23e503::function_74d6b22f("mobile_shop_vo_done");
		level namespace_cc27597::function_5c143f59("p7_fxanim_cp_lotus_monitors_atrium_fall_bundle");
		level namespace_cc27597::function_c35e6aab("security_mobile_shop_fall");
		namespace_4dbf3ae3::function_42e87952("start_security_station");
		namespace_4dbf3ae3::function_42e87952("security_spawner");
		namespace_4dbf3ae3::function_42e87952("atrium_done");
		namespace_1d795d47::function_3096a6fd(var_b04bc952);
		namespace_d0ef8521::function_74d6b22f("cp_level_lotus_capture_security_station");
		namespace_d0ef8521::function_74d6b22f("cp_level_lotus_to_security_station");
		namespace_d7916d65::function_a2995f22();
		level namespace_431cac9::function_484bc3aa(1);
		level thread namespace_66fe78fb::function_36e942f6();
	}
	namespace_d0ef8521::function_48f26766("cp_level_lotus_to_security_station");
	level thread namespace_431cac9::function_a516f0de("raven_decal_security_hall", 5, 5);
	level namespace_cc27597::function_c35e6aab("vent_hallway_ravens", "targetname");
	level thread namespace_cc27597::function_43718187("cin_lot_04_07_security_vign_headshot_loop");
	level notify("hash_ef61cb8");
	level thread function_b402dcb9();
	level thread function_7804d8d9();
	level thread function_e20f0a12();
	level thread function_8b94205a();
	level thread function_322aa3e0();
	level thread function_32477a75();
	namespace_4dbf3ae3::function_1ab5ebec("to_security_station_done");
	namespace_1d795d47::function_be8adfb8("to_security_station");
}

/*
	Name: function_2d424c3d
	Namespace: namespace_8e4b89e2
	Checksum: 0xEF4966AE
	Offset: 0x2F18
	Size: 0x69
	Parameters: 4
	Flags: None
*/
function function_2d424c3d(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	if(isdefined(level.var_9db406db))
	{
		level.var_9db406db function_dc8c8404();
	}
	level notify("hash_1206d494");
	level notify("hash_c087d549", 1);
}

/*
	Name: function_3807296
	Namespace: namespace_8e4b89e2
	Checksum: 0xD718481E
	Offset: 0x2F90
	Size: 0x1FB
	Parameters: 1
	Flags: None
*/
function function_3807296(var_c77d2837)
{
	level endon("hash_376f3a30");
	foreach(var_a3d46ee4 in var_c77d2837)
	{
		if(function_e70ab977(var_a3d46ee4))
		{
			var_a3d46ee4 namespace_d84e54db::function_b4f5e3b9(1);
			var_a3d46ee4 namespace_d84e54db::function_c9e45d52(1);
			var_a3d46ee4 namespace_82b91a51::function_4b741fdc();
			if(var_a3d46ee4.var_3e94206a == "allies")
			{
				var_a3d46ee4 thread namespace_431cac9::function_c8849158(500, 15);
				var_a3d46ee4 thread namespace_431cac9::function_5b57004a();
			}
		}
	}
	if(self.var_1157a889 == "cin_lot_04_05_security_vign_melee_variation4")
	{
		level thread function_a80b1613(var_c77d2837, self);
	}
	else
	{
		level thread function_f761fb9c(var_c77d2837, self);
	}
	var_14c918e8 = var_c77d2837["vign_melee_civ_1"];
	if(isdefined(var_14c918e8))
	{
		var_14c918e8 waittill("hash_b5b1039c");
		if(function_5b49d38c(var_14c918e8))
		{
			var_14c918e8.var_f8da79d2 = 1;
			var_14c918e8 thread namespace_431cac9::function_3e9f1592();
		}
	}
}

/*
	Name: function_f761fb9c
	Namespace: namespace_8e4b89e2
	Checksum: 0x625C541F
	Offset: 0x3198
	Size: 0x153
	Parameters: 2
	Flags: None
*/
function function_f761fb9c(var_c77d2837, var_1cbcb46d)
{
	level endon("hash_376f3a30");
	namespace_84970cc4::function_1d74ca91(var_c77d2837, "damage");
	if(function_5b49d38c(var_c77d2837["vign_melee_nrc_1"]))
	{
		var_c77d2837["vign_melee_nrc_1"] namespace_d84e54db::function_b4f5e3b9(0);
		var_c77d2837["vign_melee_nrc_1"] namespace_d84e54db::function_c9e45d52(0);
	}
	var_1cbcb46d namespace_cc27597::function_fcf56ab5();
	wait(0.05);
	var_14c918e8 = var_c77d2837["vign_melee_civ_1"];
	if(function_5b49d38c(var_14c918e8))
	{
		var_14c918e8 namespace_82b91a51::function_4b741fdc();
		var_14c918e8 function_422037f5();
		var_14c918e8 function_d7a0a9d8(1);
		var_14c918e8 function_2992720d();
	}
}

/*
	Name: function_a80b1613
	Namespace: namespace_8e4b89e2
	Checksum: 0xD4CE05E6
	Offset: 0x32F8
	Size: 0x213
	Parameters: 2
	Flags: None
*/
function function_a80b1613(var_c77d2837, var_1cbcb46d)
{
	level endon("hash_376f3a30");
	level thread function_d14babf0(var_c77d2837["vign_melee_nrc_1"]);
	level thread function_34bcf791(var_c77d2837["vign_melee_nrc_2"]);
	level thread function_339f4fbb(var_c77d2837["vign_melee_civ_1"]);
	level waittill("hash_eef00e2");
	if(level.var_9e4b7906 === 1)
	{
		var_c77d2837["vign_melee_civ_1"] waittill("hash_b5b1039c");
	}
	level.var_9e4b7906 = undefined;
	if(function_5b49d38c(var_c77d2837["vign_melee_nrc_1"]))
	{
		var_c77d2837["vign_melee_nrc_1"] namespace_d84e54db::function_b4f5e3b9(0);
		var_c77d2837["vign_melee_nrc_1"] namespace_d84e54db::function_c9e45d52(0);
	}
	if(function_5b49d38c(var_c77d2837["vign_melee_nrc_2"]))
	{
		var_c77d2837["vign_melee_nrc_1"] namespace_d84e54db::function_b4f5e3b9(0);
		var_c77d2837["vign_melee_nrc_1"] namespace_d84e54db::function_c9e45d52(0);
	}
	var_1cbcb46d namespace_cc27597::function_fcf56ab5();
	wait(0.05);
	if(function_5b49d38c(var_c77d2837["vign_melee_civ_1"]))
	{
		var_c77d2837["vign_melee_civ_1"] function_169cc712(function_b4cb3503("vign_melee_4_goal", "targetname"), 1);
	}
}

/*
	Name: function_d14babf0
	Namespace: namespace_8e4b89e2
	Checksum: 0xF85C0D40
	Offset: 0x3518
	Size: 0x49
	Parameters: 1
	Flags: None
*/
function function_d14babf0(var_2ddfb28d)
{
	level endon("hash_eef00e2");
	var_2ddfb28d namespace_82b91a51::function_5b7e3888("death", "damage");
	level notify("hash_eef00e2");
}

/*
	Name: function_34bcf791
	Namespace: namespace_8e4b89e2
	Checksum: 0x6D2F704A
	Offset: 0x3570
	Size: 0x71
	Parameters: 1
	Flags: None
*/
function function_34bcf791(var_53e22cf6)
{
	level endon("hash_eef00e2");
	var_53e22cf6 namespace_82b91a51::function_5b7e3888("death", "damage");
	if(!function_5b49d38c(var_53e22cf6))
	{
		level.var_9e4b7906 = 1;
	}
	level notify("hash_eef00e2");
}

/*
	Name: function_339f4fbb
	Namespace: namespace_8e4b89e2
	Checksum: 0xF5756D7B
	Offset: 0x35F0
	Size: 0x79
	Parameters: 1
	Flags: None
*/
function function_339f4fbb(var_9100eb74)
{
	level endon("hash_eef00e2");
	var_9100eb74 namespace_82b91a51::function_5b7e3888("death", "point_of_no_return");
	if(function_5b49d38c(var_9100eb74))
	{
		var_9100eb74 thread namespace_431cac9::function_3e9f1592();
	}
	level notify("hash_eef00e2");
}

/*
	Name: function_ad02ed86
	Namespace: namespace_8e4b89e2
	Checksum: 0x58F013D7
	Offset: 0x3678
	Size: 0x173
	Parameters: 1
	Flags: None
*/
function function_ad02ed86(var_c77d2837)
{
	level endon("hash_376f3a30");
	foreach(var_a3d46ee4 in var_c77d2837)
	{
		if(function_e70ab977(var_a3d46ee4))
		{
			var_a3d46ee4 namespace_d84e54db::function_b4f5e3b9(1);
			var_a3d46ee4 namespace_d84e54db::function_c9e45d52(1);
			var_a3d46ee4 namespace_82b91a51::function_4b741fdc();
			var_a3d46ee4 thread namespace_431cac9::function_5b57004a();
			if(var_a3d46ee4.var_3e94206a == "allies")
			{
				var_a3d46ee4 thread namespace_431cac9::function_c8849158(500, 15);
			}
		}
	}
	var_c77d2837["vign_melee_nrc_1"] waittill("hash_b5b1039c");
	var_c77d2837["vign_melee_nrc_1"] thread namespace_431cac9::function_3e9f1592();
}

/*
	Name: function_5bdeffa9
	Namespace: namespace_8e4b89e2
	Checksum: 0xCA5BE5F
	Offset: 0x37F8
	Size: 0x1E1
	Parameters: 1
	Flags: None
*/
function function_5bdeffa9(var_c77d2837)
{
	level endon("hash_376f3a30");
	foreach(var_a3d46ee4 in var_c77d2837)
	{
		var_a3d46ee4 namespace_82b91a51::function_4b741fdc();
		if(var_a3d46ee4.var_3e94206a === "axis")
		{
			var_a3d46ee4 namespace_d84e54db::function_c9e45d52(0);
			var_a3d46ee4 namespace_d84e54db::function_b4f5e3b9(0);
			continue;
		}
		var_a3d46ee4 thread namespace_431cac9::function_3e9f1592();
	}
	var_c77d2837["vign_melee_nrc_1"] waittill("hash_128f8789");
	foreach(var_a3d46ee4 in var_c77d2837)
	{
		if(function_5b49d38c(var_a3d46ee4) && function_8d0347b8(var_a3d46ee4))
		{
			var_a3d46ee4 function_422037f5();
			var_a3d46ee4 function_2992720d();
		}
	}
}

/*
	Name: function_f5f5e18e
	Namespace: namespace_8e4b89e2
	Checksum: 0xB7820F4A
	Offset: 0x39E8
	Size: 0x54B
	Parameters: 2
	Flags: None
*/
function function_f5f5e18e(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		level.var_2fd26037 = namespace_82b91a51::function_740f8516("hendricks");
		namespace_1d795d47::function_3096a6fd(var_b04bc952);
		var_3c54858a = function_b4cb3503("hs_hendricks_start", "targetname");
		level.var_2fd26037 function_169cc712(var_3c54858a, 1);
		level namespace_cc27597::function_c35e6aab("vent_hallway_ravens", "targetname");
		namespace_cc27597::function_6c130337("cin_lot_04_09_security_vign_flee");
		level thread namespace_cc27597::function_5c143f59("p7_fxanim_cp_lotus_wall_hole_nrc_raps_bundle");
		level thread namespace_cc27597::function_5c143f59("p7_fxanim_cp_lotus_monitors_atrium_fall_bundle");
		var_941c4cee = function_6ada35ba("raps_breach_no_sight", "targetname");
		var_941c4cee function_dc8c8404();
		namespace_d7916d65::function_a2995f22();
		level namespace_431cac9::function_484bc3aa(1);
		level thread function_32477a75();
		namespace_d0ef8521::function_74d6b22f("cp_level_lotus_capture_security_station");
		namespace_d0ef8521::function_74d6b22f("cp_level_lotus_to_security_station");
		level namespace_ad23e503::function_74d6b22f("hendricks_breach_line_done");
		namespace_4dbf3ae3::function_42e87952("trig_cqb_hendricks", "targetname", undefined, 0);
	}
	function_e1e0f9da();
	level notify("hash_376f3a30");
	level notify("hash_c087d549", 1);
	level namespace_71e9cb84::function_74d6b22f("hs_fxinit_vent", 1);
	namespace_80983c42::function_80983c42("light_exploder_secstation");
	level thread namespace_431cac9::function_e577c596("vent_hallway_ravens", function_6ada35ba("trig_vent_hallway_ravens", "targetname"), "vent_hallway_raven_decals", "cp_lotus_projection_ravengrafitti1");
	level thread function_db1878f3();
	level thread function_5098ba58();
	level thread function_14a5dbed();
	level thread function_3a2620ab();
	function_986134c7();
	namespace_9f824288::function_fb150717();
	function_acdfe1fe("cp_lotus1_env_hacksystemcarnage", 1);
	var_f0e94a11 = function_6ada35ba("hack_the_system", "targetname");
	var_f0e94a11 function_175e6b8e(0);
	namespace_4dbf3ae3::function_1ab5ebec("security_station_start");
	level thread namespace_82b91a51::function_d8eaed3d(3);
	var_a178d2fe = function_6ada35ba("security_door_damage", "targetname");
	var_a178d2fe function_dc8c8404();
	level namespace_cc27597::function_c35e6aab("cin_lot_05_01_hack_system_1st_security_station");
	function_a2946402();
	if(isdefined(level.var_c4dba52c))
	{
		[[level.var_c4dba52c]]();
	}
	namespace_9f824288::function_5d2cdd99();
	level namespace_ad23e503::function_74d6b22f("hack_the_system_ready");
	level namespace_ad23e503::function_1ab5ebec("hack_the_system_vo_done");
	var_f0e94a11 function_175e6b8e(1);
	namespace_d0ef8521::function_31cd1834("cp_level_lotus_defend", namespace_14b42b8a::function_7922262b("defend_objective_marker"));
	namespace_82b91a51::function_14518e76(var_f0e94a11, &"cp_level_lotus_hack_console", &"CP_MI_CAIRO_LOTUS_HACK_SYSTEM", &function_dc25fc43);
}

/*
	Name: function_dc25fc43
	Namespace: namespace_8e4b89e2
	Checksum: 0xAAC9674B
	Offset: 0x3F40
	Size: 0x2CB
	Parameters: 1
	Flags: None
*/
function function_dc25fc43(var_6bfe1586)
{
	level thread namespace_66fe78fb::function_8836c025();
	namespace_d0ef8521::function_31cd1834("cp_level_lotus_hack_console");
	if(isdefined(level.var_bdb879ca))
	{
		level thread [[level.var_bdb879ca]]();
	}
	level thread namespace_cc27597::function_8f9f34e0("cin_lot_05_01_hack_system_1st_security_station", &function_203a65ec, "skip_started");
	level thread namespace_cc27597::function_43718187("cin_lot_05_01_hack_system_1st_security_station", var_6bfe1586);
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a namespace_175490fb::function_f8669cbf(1);
	}
	self namespace_a230c2b1::function_e54c54c3();
	level thread function_b8a4442e();
	wait(3.33);
	level thread function_9f2e38f0();
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a thread function_c7402e23();
	}
	namespace_80983c42::function_80983c42("lgt_raven");
	level thread namespace_431cac9::function_78805698();
	level thread function_8309c8fd();
	level waittill("hash_481ec310");
	if(!namespace_cc27597::function_b1f75ee9())
	{
		level namespace_71e9cb84::function_74d6b22f("sndIGCsnapshot", 4);
		level namespace_ce7c3ed5::function_7e61de2b(1.5, "white");
	}
	namespace_1d795d47::function_be8adfb8("hack_the_system");
}

/*
	Name: function_203a65ec
	Namespace: namespace_8e4b89e2
	Checksum: 0xB2F3ACBB
	Offset: 0x4218
	Size: 0xB3
	Parameters: 1
	Flags: None
*/
function function_203a65ec(var_c77d2837)
{
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a function_5e6740a8(1);
	}
	namespace_82b91a51::function_7e61de2b(0, "black");
}

/*
	Name: function_9f2e38f0
	Namespace: namespace_8e4b89e2
	Checksum: 0xAA7F2746
	Offset: 0x42D8
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_9f2e38f0()
{
	level waittill("hash_302eb0c9");
	function_4a0fb95e("cp_lotus1_env_hacksystemcarnage");
	level waittill("hash_f78646c5");
	function_acdfe1fe("cp_lotus1_pip_meditateloop");
}

/*
	Name: function_b8a4442e
	Namespace: namespace_8e4b89e2
	Checksum: 0xCDD262D3
	Offset: 0x4338
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_b8a4442e()
{
	level.var_2fd26037 waittill("hash_a5038e77");
	level.var_2fd26037 namespace_71e9cb84::function_74d6b22f("hendricks_frost_breath", 0);
	wait(1);
	level.var_2fd26037 namespace_71e9cb84::function_74d6b22f("hendricks_frost_breath", 1);
}

/*
	Name: function_8309c8fd
	Namespace: namespace_8e4b89e2
	Checksum: 0xCE8E09FF
	Offset: 0x43A8
	Size: 0xB9
	Parameters: 0
	Flags: None
*/
function function_8309c8fd()
{
	wait(0.15);
	var_222d6912 = function_99201f25("otus_snow_pile_security", "targetname");
	foreach(var_51fb1917 in var_222d6912)
	{
		var_51fb1917 function_48f26766();
	}
}

/*
	Name: function_c7402e23
	Namespace: namespace_8e4b89e2
	Checksum: 0x42B526DB
	Offset: 0x4470
	Size: 0x9F
	Parameters: 0
	Flags: None
*/
function function_c7402e23()
{
	self notify("hash_7507ad85");
	self endon("hash_7507ad85");
	self endon("hash_128f8789");
	self.var_5b9f1ca7 = 1;
	self.var_6e127f9d = 0;
	do
	{
		function_2e9c26ef(level.var_c1aa5253["fx_snow_lotus"], (0, 0, 0), (1, 0, 0), (0, 0, 1));
		wait(0.05);
	}
	while(!!self namespace_ad23e503::function_7922262b("end_snow_fx"));
}

/*
	Name: function_a2946402
	Namespace: namespace_8e4b89e2
	Checksum: 0x8995B21D
	Offset: 0x4518
	Size: 0x133
	Parameters: 0
	Flags: None
*/
function function_a2946402()
{
	namespace_2f06d687::function_45679edd("security_guard", 2);
	var_78e73676 = namespace_2f06d687::function_289e6fd1("security_guard");
	foreach(var_d84e54db in var_78e73676)
	{
		var_377a9c22 = namespace_82b91a51::function_fa8a28f1(var_d84e54db.var_722885f3, "allies");
		var_d84e54db function_169cc712(var_377a9c22.var_722885f3, 0, 256);
	}
	namespace_2f06d687::function_45679edd("security_guard", 0);
	wait(1.5);
}

/*
	Name: function_db1878f3
	Namespace: namespace_8e4b89e2
	Checksum: 0x9B499703
	Offset: 0x4658
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_db1878f3()
{
	level namespace_ad23e503::function_c35e6aab("hack_the_system_ready");
	level namespace_ad23e503::function_c35e6aab("hack_the_system_vo_done");
}

/*
	Name: function_14a5dbed
	Namespace: namespace_8e4b89e2
	Checksum: 0x70C463B1
	Offset: 0x46A8
	Size: 0x29
	Parameters: 0
	Flags: None
*/
function function_14a5dbed()
{
	namespace_d0ef8521::function_45d1556("trig_breadcrum_hack_the_system");
	level notify("hash_70a98384");
}

/*
	Name: function_5098ba58
	Namespace: namespace_8e4b89e2
	Checksum: 0x4EE50FF
	Offset: 0x46E0
	Size: 0x2D3
	Parameters: 0
	Flags: None
*/
function function_5098ba58()
{
	namespace_76d95162::function_d9f49fba(0);
	level thread namespace_66fe78fb::function_f2d3d939();
	level namespace_ad23e503::function_1ab5ebec("hendricks_breach_line_done");
	level namespace_71b8dba1::function_a463d127("kane_that_air_duct_leads_0");
	level waittill("hash_4487ad99");
	wait(1);
	level namespace_71b8dba1::function_13b3b16a("plyr_take_it_easy_hendri_0");
	level namespace_71b8dba1::function_13b3b16a("plyr_this_isn_t_you_it_s_0");
	level namespace_ad23e503::function_1ab5ebec("hs_breadcrumb_complete");
	wait(1);
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a thread function_beaa4aae();
	}
	if(!level namespace_ad23e503::function_7922262b("close_to_vent"))
	{
		level namespace_71b8dba1::function_a463d127("kane_there_that_vent_d_0");
		wait(1);
	}
	if(!level namespace_ad23e503::function_7922262b("hendricks_duct_three"))
	{
		level namespace_71b8dba1::function_13b3b16a("plyr_at_least_we_got_the_0");
	}
	level namespace_ad23e503::function_1ab5ebec("inside_security_station");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_spread_out_and_grab_0");
	namespace_76d95162::function_d9f49fba(1);
	level namespace_ad23e503::function_1ab5ebec("hack_the_system_ready");
	namespace_76d95162::function_d9f49fba(0);
	level thread namespace_66fe78fb::function_973b77f9();
	level thread namespace_71b8dba1::function_a463d127("kane_interface_with_that_1");
	level namespace_ad23e503::function_74d6b22f("hack_the_system_vo_done");
}

/*
	Name: function_beaa4aae
	Namespace: namespace_8e4b89e2
	Checksum: 0x7990B77C
	Offset: 0x49C0
	Size: 0xDB
	Parameters: 1
	Flags: None
*/
function function_beaa4aae(var_f1658cab)
{
	self endon("hash_128f8789");
	self endon("hash_c1bf0633");
	if(!isdefined(var_f1658cab))
	{
		var_f1658cab = function_6ada35ba("trig_vent_area", "targetname");
	}
	var_f1658cab namespace_4dbf3ae3::function_1ab5ebec(undefined, undefined, self);
	self namespace_82b91a51::function_16c71b8(1);
	while(self function_32fa5072(var_f1658cab))
	{
		wait(0.25);
	}
	self namespace_82b91a51::function_16c71b8(0);
	self thread function_beaa4aae(var_f1658cab);
}

/*
	Name: function_32477a75
	Namespace: namespace_8e4b89e2
	Checksum: 0x6001804F
	Offset: 0x4AA8
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_32477a75()
{
	level namespace_cc27597::function_c35e6aab("cin_lot_04_09_security_vign_airduct01");
	namespace_4dbf3ae3::function_1ab5ebec("trig_cqb_hendricks", "targetname", undefined, 0);
	level.var_2fd26037 namespace_d84e54db::function_ceb883cd("cqb", 1);
	level.var_2fd26037 namespace_d84e54db::function_ceb883cd("sprint", 0);
	level.var_2fd26037 namespace_82b91a51::function_c9aa1ff("goal", 3);
	level thread function_7d81252f();
}

/*
	Name: function_986134c7
	Namespace: namespace_8e4b89e2
	Checksum: 0xFA0DD580
	Offset: 0x4B88
	Size: 0xFB
	Parameters: 0
	Flags: None
*/
function function_986134c7()
{
	namespace_82b91a51::function_564f2d81("play_fxanim_vent", "play_fxanim_vent_group");
	if(level.var_2395e945.size == 1)
	{
		namespace_ad23e503::function_1ab5ebec("play_fxanim_vent");
	}
	if(isdefined(level.var_b2dc81a6))
	{
		level thread [[level.var_b2dc81a6]]();
	}
	var_38c5f0d6 = function_bdb77f87("trig_fxanim_vent");
	function_37cbcf1a("evt_vent_screen_shake", (0, 0, 0));
	wait(1);
	namespace_84970cc4::function_eaab05dc(var_38c5f0d6, &function_e2af603e, "cp_level_lotus_fxanim_vent");
	level namespace_71e9cb84::function_74d6b22f("hs_fxanim_vent", 1);
}

/*
	Name: function_bdb77f87
	Namespace: namespace_8e4b89e2
	Checksum: 0xAD78977E
	Offset: 0x4C90
	Size: 0x133
	Parameters: 1
	Flags: None
*/
function function_bdb77f87(var_db803bcf)
{
	var_8bfaaefe = function_6ada35ba(var_db803bcf, "targetname");
	var_38c5f0d6 = [];
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		if(var_5dc5e20a function_32fa5072(var_8bfaaefe))
		{
			if(!isdefined(var_38c5f0d6))
			{
				var_38c5f0d6 = [];
			}
			else if(!function_6e2770d8(var_38c5f0d6))
			{
				var_38c5f0d6 = function_84970cc4(var_38c5f0d6);
			}
			var_38c5f0d6[var_38c5f0d6.size] = var_5dc5e20a;
		}
	}
	return var_38c5f0d6;
}

/*
	Name: function_3a2620ab
	Namespace: namespace_8e4b89e2
	Checksum: 0x6C52483E
	Offset: 0x4DD0
	Size: 0x1B3
	Parameters: 0
	Flags: None
*/
function function_3a2620ab()
{
	var_222d6912 = function_99201f25("otus_snow_pile_security", "targetname");
	foreach(var_1dd40297 in var_222d6912)
	{
		var_1dd40297 function_50ccee8d();
	}
	namespace_cc27597::function_8f9f34e0("cin_lot_04_09_security_1st_kickgrate", &function_14223de2, "init");
	level thread namespace_cc27597::function_c35e6aab("cin_lot_04_09_security_1st_kickgrate");
	level waittill("hash_70a98384");
	namespace_d0ef8521::function_31cd1834("cp_level_lotus_to_security_station");
	var_93a27bfd = function_6ada35ba("security_station_grate", "targetname");
	var_2661661a = namespace_82b91a51::function_14518e76(var_93a27bfd, &"cp_level_lotus_interact_breach", &"CP_MI_CAIRO_LOTUS_BREACH", &function_bad59a8e);
	level thread function_2a69536(var_2661661a);
}

/*
	Name: function_14223de2
	Namespace: namespace_8e4b89e2
	Checksum: 0xC3C8F1AD
	Offset: 0x4F90
	Size: 0xA9
	Parameters: 1
	Flags: None
*/
function function_14223de2(var_c77d2837)
{
	foreach(var_a3d46ee4 in var_c77d2837)
	{
		if(function_e70ab977(var_a3d46ee4))
		{
			var_a3d46ee4 function_cea50a94(0);
		}
	}
}

/*
	Name: function_2a69536
	Namespace: namespace_8e4b89e2
	Checksum: 0x1EA2FACB
	Offset: 0x5048
	Size: 0x7B
	Parameters: 1
	Flags: None
*/
function function_2a69536(var_2661661a)
{
	level endon("hash_54f5cf77");
	var_2eb20475 = namespace_4dbf3ae3::function_1ab5ebec("vent_damage_trigger");
	if(function_65f192a6(var_2eb20475.var_aef176e7))
	{
		var_2661661a thread function_bad59a8e(var_2eb20475.var_aef176e7);
	}
}

/*
	Name: function_bad59a8e
	Namespace: namespace_8e4b89e2
	Checksum: 0x820FDB7
	Offset: 0x50D0
	Size: 0x273
	Parameters: 1
	Flags: None
*/
function function_bad59a8e(var_6bfe1586)
{
	level notify("hash_54f5cf77");
	namespace_cc27597::function_8f9f34e0("cin_lot_04_09_security_1st_kickgrate", &function_4af11e24, "players_done");
	level thread namespace_cc27597::function_43718187("cin_lot_04_09_security_1st_kickgrate", var_6bfe1586);
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a function_83fd42b5();
	}
	level notify("hash_fe7439eb");
	level thread namespace_66fe78fb::function_86781870();
	namespace_d5067552::function_bae40a28("sm_security_station");
	namespace_d0ef8521::function_31cd1834("cp_level_lotus_interact_breach");
	namespace_d0ef8521::function_74d6b22f("cp_level_lotus_defend", namespace_14b42b8a::function_7922262b("defend_objective_marker"));
	self namespace_a230c2b1::function_e54c54c3();
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a namespace_82b91a51::function_16c71b8(0);
	}
	level thread function_afe7a8b3();
	level namespace_cc27597::function_43718187("cin_lot_04_09_security_vign_airduct03");
	level namespace_71e9cb84::function_74d6b22f("crowd_anims_off", 1);
	self namespace_a230c2b1::function_c5a39495(1);
}

/*
	Name: function_afe7a8b3
	Namespace: namespace_8e4b89e2
	Checksum: 0x99F82F6A
	Offset: 0x5350
	Size: 0xB9
	Parameters: 0
	Flags: None
*/
function function_afe7a8b3()
{
	wait(1);
	foreach(var_d84e54db in function_b8494651("axis"))
	{
		if(var_d84e54db.var_3d2183f2 !== "security_guard")
		{
			var_d84e54db function_dc8c8404();
		}
	}
}

/*
	Name: function_4af11e24
	Namespace: namespace_8e4b89e2
	Checksum: 0xFF0E9B9C
	Offset: 0x5418
	Size: 0xB1
	Parameters: 1
	Flags: None
*/
function function_4af11e24(var_c77d2837)
{
	level namespace_82b91a51::function_93831e79("after_kick_grate");
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a function_4890e520();
	}
}

/*
	Name: function_2f8e8d25
	Namespace: namespace_8e4b89e2
	Checksum: 0x9E4C25DD
	Offset: 0x54D8
	Size: 0x6B
	Parameters: 4
	Flags: None
*/
function function_2f8e8d25(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	namespace_d0ef8521::function_31cd1834("cp_level_lotus_interact_breach");
	namespace_d0ef8521::function_31cd1834("cp_level_lotus_hack_console");
	namespace_d0ef8521::function_31cd1834("cp_level_lotus_capture_security_station");
}

/*
	Name: function_5d64afc3
	Namespace: namespace_8e4b89e2
	Checksum: 0x45E2A133
	Offset: 0x5550
	Size: 0x3C3
	Parameters: 2
	Flags: None
*/
function function_5d64afc3(var_b04bc952, var_74cd64bc)
{
	namespace_d7916d65::function_73adcefc();
	level namespace_cc27597::function_c35e6aab("vtol_hallway_ravens", "targetname");
	var_222d6912 = function_99201f25("otus_snow_pile_security", "targetname");
	foreach(var_1dd40297 in var_222d6912)
	{
		var_1dd40297 function_dc8c8404();
	}
	function_e1e0f9da();
	if(var_74cd64bc)
	{
		level.var_2fd26037 = namespace_82b91a51::function_740f8516("hendricks");
		namespace_1d795d47::function_3096a6fd("prometheus_otr");
		namespace_cc27597::function_6c130337("cin_lot_04_09_security_1st_kickgrate");
		level namespace_431cac9::function_484bc3aa(1);
	}
	namespace_d0ef8521::function_31cd1834("cp_level_lotus_hakim_assassinate");
	namespace_d0ef8521::function_31cd1834("cp_level_lotus_capture_security_station");
	namespace_d0ef8521::function_74d6b22f("cp_menu_objective_awaiting_update");
	level thread namespace_a92ad484::function_8836c025();
	var_a178d2fe = function_6ada35ba("security_door_damage", "targetname");
	var_a178d2fe function_50ccee8d();
	var_a178d2fe function_422037f5();
	level namespace_cc27597::function_c35e6aab("cin_lot_05_01_hack_system_1st_breach_hendricks");
	level namespace_cc27597::function_c35e6aab("cin_lot_05_01_hack_system_1st_breach_player");
	namespace_d7916d65::function_a2995f22();
	level namespace_cc27597::function_43718187("cin_lot_05_01_hack_system_1st_breach_player");
	level namespace_82b91a51::function_93831e79("prometheus_otr");
	level thread function_966f4e31();
	var_a178d2fe function_921a1574("evt_prebreach");
	wait(1);
	level thread namespace_cc27597::function_43718187("cin_lot_05_01_hack_system_1st_breach_hendricks");
	level waittill("hash_9589cacc");
	level thread namespace_a92ad484::function_fd00a4f2();
	var_a178d2fe function_356a1c2a("evt_prebreach");
	level thread function_8667d536(var_a178d2fe);
	level namespace_ad23e503::function_1ab5ebec("security_station_breach_ai_cleared");
	namespace_1d795d47::function_be8adfb8("prometheus_otr");
	namespace_d0ef8521::function_50ccee8d("cp_menu_objective_awaiting_update");
}

/*
	Name: function_966f4e31
	Namespace: namespace_8e4b89e2
	Checksum: 0x4520D04
	Offset: 0x5920
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_966f4e31()
{
	namespace_76d95162::function_d9f49fba(0);
	level waittill("hash_ec01b627");
	level namespace_71b8dba1::function_13b3b16a("plyr_kane_i_hope_you_r_0");
	level namespace_71b8dba1::function_a463d127("kane_thirty_seconds_hold_0");
	namespace_76d95162::function_d9f49fba(1);
}

/*
	Name: function_a1a139dc
	Namespace: namespace_8e4b89e2
	Checksum: 0xCAF067FD
	Offset: 0x59A8
	Size: 0x9B
	Parameters: 4
	Flags: None
*/
function function_a1a139dc(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	namespace_d0ef8521::function_31cd1834("cp_level_lotus_hakim_assassinate");
	namespace_d0ef8521::function_31cd1834("cp_level_lotus_capture_security_station");
	namespace_d0ef8521::function_74d6b22f("cp_level_lotus_capture_taylor");
	namespace_d0ef8521::function_74d6b22f("cp_level_lotus_go_to_taylor_prison_cell");
	if(var_74cd64bc)
	{
		function_e1e0f9da();
	}
}

/*
	Name: function_c35e6aab
	Namespace: namespace_8e4b89e2
	Checksum: 0xE512CE58
	Offset: 0x5A50
	Size: 0x1C3
	Parameters: 0
	Flags: None
*/
function function_c35e6aab()
{
	namespace_2f06d687::function_2b37a3c9("newly_armed_civ", "targetname", &function_4377af2);
	namespace_2f06d687::function_2b37a3c9("mobile0_interior_soldiers", "script_noteworthy", &function_df344ae6);
	namespace_2f06d687::function_2b37a3c9("atrium_runners", "targetname", &function_5554d5f8);
	namespace_2f06d687::function_2b37a3c9("fleeing_civ", "script_noteworthy", &function_da4d024c);
	namespace_2f06d687::function_2b37a3c9("security_station_first_wave", "targetname", &function_c871015b);
	namespace_2f06d687::function_2b37a3c9("headshot_robots", "script_noteworthy", &function_2a70544b);
	level namespace_ad23e503::function_c35e6aab("shop_1_elevator_up");
	level namespace_ad23e503::function_c35e6aab("entermobile_done");
	level namespace_ad23e503::function_c35e6aab("enemy_mobile_shop_done");
	level namespace_ad23e503::function_c35e6aab("hero_mobile_ride_over");
	level namespace_ad23e503::function_c35e6aab("khalil_boarded_mobile_shop");
}

/*
	Name: function_e0f59e66
	Namespace: namespace_8e4b89e2
	Checksum: 0xCDF424ED
	Offset: 0x5C20
	Size: 0x271
	Parameters: 0
	Flags: None
*/
function function_e0f59e66()
{
	var_8a0d5994 = namespace_431cac9::function_b26ca094("mobile_security_1_group", 1, 1, 1, "veh_t7_turret_auto_sentry");
	level namespace_ad23e503::function_1ab5ebec("shop_1_elevator_up");
	namespace_4dbf3ae3::function_42e87952("mobile_security_1_trigger", "script_noteworthy");
	foreach(var_37b990db in var_8a0d5994.var_75cccf1)
	{
		var_37b990db thread function_6a4a23df();
	}
	level notify("hash_7bf693f");
	level thread namespace_66fe78fb::function_f3bdd599();
	level waittill("hash_1a64b222");
	var_34f79b2f = namespace_14b42b8a::function_7922262b("security_molotov_origin");
	foreach(var_37b990db in var_8a0d5994.var_75cccf1)
	{
		var_8cd5b0c5 = function_f679a325(var_37b990db.var_722885f3 - var_34f79b2f.var_722885f3) * 3000;
		level.var_2395e945[0] function_ecf27a98(function_c4d5ec1f("molotov_grenade"), var_34f79b2f.var_722885f3 + VectorScale((0, 0, 1), 25), var_8cd5b0c5);
		wait(0.5);
	}
}

/*
	Name: function_6a4a23df
	Namespace: namespace_8e4b89e2
	Checksum: 0x7336F1F1
	Offset: 0x5EA0
	Size: 0x13F
	Parameters: 0
	Flags: None
*/
function function_6a4a23df()
{
	level endon("hash_1a64b222");
	var_e32e572f = namespace_14b42b8a::function_7faf4c39("security_platform_target");
	while(1)
	{
		var_bab21612 = namespace_84970cc4::function_47d18840(var_e32e572f);
		var_3eac426f = function_72a94f05(0.2, 0.7) * 20;
		for(var_c957f6b6 = 0; var_c957f6b6 < var_3eac426f; var_c957f6b6++)
		{
			function_87f3c622(function_c4d5ec1f("ar_standard"), self function_d48f2ab3("tag_barrel") + VectorScale((0, -1, 0), 40), var_bab21612.var_722885f3);
			wait(0.05);
		}
		wait(function_72a94f05(0.75, 2));
	}
}

/*
	Name: function_5fed4787
	Namespace: namespace_8e4b89e2
	Checksum: 0x733995E9
	Offset: 0x5FE8
	Size: 0x153
	Parameters: 0
	Flags: None
*/
function function_5fed4787()
{
	level thread function_56ab9afe();
	level thread function_8c0c7a73();
	level thread function_7cc50c55();
	level thread function_f5ac9464();
	level thread function_7973e192();
	level thread function_82850b73();
	level.var_2fd26037 namespace_d84e54db::function_ceb883cd("cqb", 1);
	level.var_9db406db namespace_d84e54db::function_ceb883cd("cqb", 1);
	namespace_2f06d687::function_72214789("apartment_front");
	namespace_2f06d687::function_72214789("ai_group_apt_phalanx");
	namespace_2f06d687::function_72214789("apartment_rear");
	namespace_4dbf3ae3::function_42e87952("post_up_before_stairs", "targetname", undefined, 0);
}

/*
	Name: function_de57d320
	Namespace: namespace_8e4b89e2
	Checksum: 0xD216FDB1
	Offset: 0x6148
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_de57d320()
{
	level namespace_cc27597::function_8f9f34e0("cin_lot_04_01_security_vign_holddown", &function_4f022f94, "init");
	level namespace_cc27597::function_c35e6aab("civ_hold_guard_1", "targetname");
	level namespace_cc27597::function_c35e6aab("civ_hold_guard_2", "targetname");
	level namespace_cc27597::function_c35e6aab("cin_lot_04_01_security_vign_weaponguards");
}

/*
	Name: function_8c0c7a73
	Namespace: namespace_8e4b89e2
	Checksum: 0x192C40DA
	Offset: 0x61F8
	Size: 0x123
	Parameters: 0
	Flags: None
*/
function function_8c0c7a73()
{
	level thread namespace_cc27597::function_43718187("cin_lot_04_01_security_aie_enter");
	namespace_cc27597::function_8f9f34e0("cin_lot_04_02_security_vign_drag", &function_7097716c, "init");
	level namespace_cc27597::function_c35e6aab("cin_lot_04_02_security_vign_drag");
	level thread namespace_cc27597::function_43718187("civ_hold_guard_1", "targetname");
	wait(1);
	level thread namespace_cc27597::function_43718187("civ_hold_guard_2", "targetname");
	namespace_ad23e503::function_1ab5ebec("start_apartment_battle");
	level thread namespace_431cac9::function_a516f0de("raven_decal_apartments", 5, 5);
	level namespace_cc27597::function_43718187("cin_lot_04_02_security_vign_drag");
}

/*
	Name: function_7097716c
	Namespace: namespace_8e4b89e2
	Checksum: 0x8EEBAEE6
	Offset: 0x6328
	Size: 0x8B
	Parameters: 1
	Flags: None
*/
function function_7097716c(var_c77d2837)
{
	var_c77d2837["drag_civilian"] namespace_d84e54db::function_c9e45d52(1);
	level waittill("hash_870fc78d");
	if(function_5b49d38c(var_c77d2837["drag_civilian"]))
	{
		var_c77d2837["drag_civilian"] namespace_d84e54db::function_c9e45d52(0);
	}
}

/*
	Name: function_7cc50c55
	Namespace: namespace_8e4b89e2
	Checksum: 0x3776572F
	Offset: 0x63C0
	Size: 0x113
	Parameters: 0
	Flags: None
*/
function function_7cc50c55()
{
	level namespace_cc27597::function_8f9f34e0("cin_lot_04_02_security_vign_run_a_civ01", &function_a0813430, "init");
	level namespace_cc27597::function_8f9f34e0("cin_lot_04_02_security_vign_run_b_civ01", &function_a0813430, "init");
	level namespace_cc27597::function_c35e6aab("cin_lot_04_02_security_vign_run_a_civ01");
	level namespace_cc27597::function_c35e6aab("cin_lot_04_02_security_vign_run_b_civ01");
	namespace_4dbf3ae3::function_1ab5ebec("trigger_first_apartment_civs");
	level thread namespace_cc27597::function_43718187("cin_lot_04_02_security_vign_run_a_civ01");
	namespace_4dbf3ae3::function_1ab5ebec("trigger_second_apartment_civs");
	level thread namespace_cc27597::function_43718187("cin_lot_04_02_security_vign_run_b_civ01");
}

/*
	Name: function_a0813430
	Namespace: namespace_8e4b89e2
	Checksum: 0xDA2C7036
	Offset: 0x64E0
	Size: 0xC9
	Parameters: 1
	Flags: None
*/
function function_a0813430(var_c77d2837)
{
	foreach(var_a3d46ee4 in var_c77d2837)
	{
		if(function_e70ab977(var_a3d46ee4))
		{
			var_a3d46ee4 namespace_d84e54db::function_c9e45d52(1);
			var_a3d46ee4 namespace_d84e54db::function_b4f5e3b9(1);
		}
	}
}

/*
	Name: function_4f022f94
	Namespace: namespace_8e4b89e2
	Checksum: 0x36535365
	Offset: 0x65B8
	Size: 0x24B
	Parameters: 1
	Flags: None
*/
function function_4f022f94(var_c77d2837)
{
	level endon("hash_59fd7ee0");
	foreach(var_a3d46ee4 in var_c77d2837)
	{
		if(function_e70ab977(var_a3d46ee4))
		{
			var_a3d46ee4 namespace_d84e54db::function_b4f5e3b9(1);
			var_a3d46ee4 namespace_d84e54db::function_c9e45d52(1);
			var_a3d46ee4 thread namespace_431cac9::function_5b57004a();
		}
	}
	namespace_84970cc4::function_1d74ca91(var_c77d2837, "death");
	if(function_5b49d38c(var_c77d2837["enemy"]))
	{
		var_c77d2837["enemy"] function_422037f5();
		var_c77d2837["enemy"] function_d7a0a9d8(1);
		var_c77d2837["enemy"] function_2992720d();
	}
	else if(function_5b49d38c(var_c77d2837["newly_armed_civ"]))
	{
		var_c77d2837["newly_armed_civ"] namespace_d84e54db::function_b4f5e3b9(0);
		var_c77d2837["newly_armed_civ"] namespace_d84e54db::function_c9e45d52(0);
		var_c77d2837["newly_armed_civ"] function_470f7e4c();
		var_c77d2837["newly_armed_civ"] namespace_d84e54db::function_ceb883cd("cqb", 1);
	}
}

/*
	Name: function_56ab9afe
	Namespace: namespace_8e4b89e2
	Checksum: 0x954C127C
	Offset: 0x6810
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_56ab9afe()
{
	namespace_d0ef8521::function_45d1556("apartments_breadcrumb");
}

/*
	Name: function_f5ac9464
	Namespace: namespace_8e4b89e2
	Checksum: 0xEEAB8D68
	Offset: 0x6838
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_f5ac9464()
{
	if(function_27c72c1b())
	{
		return;
	}
	namespace_2f06d687::function_c6ffd13e("apartment_front", &namespace_82b91a51::function_958c7633);
	namespace_ad23e503::function_1ab5ebec("apartment_clear_magic_bullet");
	namespace_2f06d687::function_1009afed("apartment_front", &namespace_82b91a51::function_958c7633);
	namespace_84970cc4::function_eaab05dc(namespace_2f06d687::function_289e6fd1("apartment_front"), &namespace_82b91a51::function_4b741fdc);
}

/*
	Name: function_7973e192
	Namespace: namespace_8e4b89e2
	Checksum: 0x3D06EADD
	Offset: 0x6900
	Size: 0x1AB
	Parameters: 0
	Flags: None
*/
function function_7973e192()
{
	namespace_4dbf3ae3::function_1ab5ebec("trigger_apartment_riotshields");
	var_489b2980 = namespace_14b42b8a::function_7922262b("s_apt_2_phalanx_start").var_722885f3;
	var_491bc153 = namespace_14b42b8a::function_7922262b("s_apt_2_phalanx_end").var_722885f3;
	var_f835ddae = function_6ada35ba("sp_apartments_phalanx", "targetname");
	function_9b385ca5();
	var_2f359655 = var_2f359655;
	function_e6cab0ff(var_2f359655, "phanalx_wedge", var_489b2980, var_491bc153, 1, 1, var_f835ddae);
	var_489b2980 = namespace_14b42b8a::function_7922262b("s_apt_1_phalanx_start").var_722885f3;
	var_491bc153 = namespace_14b42b8a::function_7922262b("s_apt_1_phalanx_end").var_722885f3;
	function_9b385ca5();
	var_2f359655 = var_2f359655;
	function_e6cab0ff(var_2f359655, "phanalx_wedge", var_489b2980, var_491bc153, 1, 1, var_f835ddae);
	var_f835ddae function_dc8c8404();
}

/*
	Name: function_4377af2
	Namespace: namespace_8e4b89e2
	Checksum: 0x5C2D4EF7
	Offset: 0x6AB8
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_4377af2()
{
	self endon("hash_128f8789");
	wait(1);
	if(self namespace_957e94ce::function_7922262b("scriptedanim"))
	{
		self namespace_957e94ce::function_d3de6822("scriptedanim");
	}
	wait(function_72a94f05(20, 30));
	self function_2992720d();
}

/*
	Name: function_82850b73
	Namespace: namespace_8e4b89e2
	Checksum: 0x23F51BC7
	Offset: 0x6B48
	Size: 0xA5
	Parameters: 0
	Flags: None
*/
function function_82850b73()
{
	level namespace_cc27597::function_8f9f34e0("cin_lot_04_02_security_vign_wave", &function_26d2d4be, "init");
	level namespace_cc27597::function_c35e6aab("cin_lot_04_02_security_vign_wave");
	namespace_ad23e503::function_1ab5ebec("apartment_clear_magic_bullet");
	level thread namespace_cc27597::function_5c143f59("cin_lot_04_02_security_vign_wave", undefined, undefined, 0.3);
	wait(1);
	level notify("hash_9fdb7d54");
}

/*
	Name: function_26d2d4be
	Namespace: namespace_8e4b89e2
	Checksum: 0xB701B522
	Offset: 0x6BF8
	Size: 0x15B
	Parameters: 1
	Flags: None
*/
function function_26d2d4be(var_c77d2837)
{
	var_c77d2837["wave_civilian"] namespace_d84e54db::function_b4f5e3b9(1);
	var_c77d2837["wave_civilian"] namespace_d84e54db::function_c9e45d52(1);
	var_c77d2837["wave_civilian"] namespace_82b91a51::function_958c7633();
	level waittill("hash_9fdb7d54");
	if(function_5b49d38c(var_c77d2837["wave_civilian"]))
	{
		var_c77d2837["wave_civilian"] namespace_d84e54db::function_b4f5e3b9(0);
		var_c77d2837["wave_civilian"] namespace_d84e54db::function_c9e45d52(0);
		var_c77d2837["wave_civilian"] namespace_82b91a51::function_4b741fdc();
		var_c77d2837["wave_civilian"] function_169cc712(function_b4cb3503("post_wave_cover", "targetname"), 1);
	}
}

/*
	Name: function_445b4b54
	Namespace: namespace_8e4b89e2
	Checksum: 0xAFC27DBB
	Offset: 0x6D60
	Size: 0xE3
	Parameters: 0
	Flags: None
*/
function function_445b4b54()
{
	namespace_d0ef8521::function_45d1556("atrium_battle_breadcrumb");
	level namespace_ad23e503::function_1ab5ebec("mobile_shop_1_top");
	namespace_d0ef8521::function_74d6b22f("cp_level_lotus_defend_mobile_shop", namespace_14b42b8a::function_7922262b("hero_shop_gather", "script_noteworthy"));
	namespace_d0ef8521::function_50ccee8d("cp_level_lotus_to_security_station");
	level namespace_ad23e503::function_1ab5ebec("shop_1_elevator_up");
	namespace_d0ef8521::function_31cd1834("cp_level_lotus_defend_mobile_shop", namespace_14b42b8a::function_7922262b("hero_shop_gather", "script_noteworthy"));
}

/*
	Name: function_dfaa08e3
	Namespace: namespace_8e4b89e2
	Checksum: 0xE2B9F942
	Offset: 0x6E50
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_dfaa08e3()
{
	level namespace_ad23e503::function_1ab5ebec("player_at_atrium_main");
	namespace_431cac9::function_fe64b86b("rainman", namespace_14b42b8a::function_7922262b("atrium_battle_corpse_drop"), 0);
	wait(5);
	namespace_431cac9::function_fe64b86b("rainman", namespace_14b42b8a::function_7922262b("atrium_battle_corpse_drop2"), 0);
}

/*
	Name: function_c370e3e
	Namespace: namespace_8e4b89e2
	Checksum: 0x9140A4F7
	Offset: 0x6EF0
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_c370e3e()
{
	var_6df191e = namespace_14b42b8a::function_7922262b("security_vign_breakout", "targetname");
	var_6df191e thread namespace_cc27597::function_43718187("cin_lot_04_01_security_vign_beaten_breakout_loop");
}

/*
	Name: function_b5d037ab
	Namespace: namespace_8e4b89e2
	Checksum: 0x77CBC7D4
	Offset: 0x6F48
	Size: 0x383
	Parameters: 2
	Flags: None
*/
function function_b5d037ab(var_c77d2837, var_6df191e)
{
	var_6df191e endon("hash_accb9cfa");
	foreach(var_a3d46ee4 in var_c77d2837)
	{
		var_a3d46ee4 namespace_d84e54db::function_c9e45d52(1);
		var_a3d46ee4 namespace_d84e54db::function_b4f5e3b9(1);
		var_a3d46ee4 namespace_82b91a51::function_958c7633();
	}
	level namespace_ad23e503::function_1ab5ebec("start_atrium_battle");
	foreach(var_a3d46ee4 in var_c77d2837)
	{
		var_a3d46ee4 namespace_82b91a51::function_4b741fdc();
		var_a3d46ee4 thread namespace_431cac9::function_5b57004a();
	}
	var_c77d2837["beaten_breakout_civ_01"] thread function_794875cb(var_6df191e, "cin_lot_04_01_security_vign_beaten_breakout_civ01_death", var_c77d2837);
	var_c77d2837["beaten_breakout_civ_02"] thread function_794875cb(var_6df191e, "cin_lot_04_01_security_vign_beaten_breakout_civ02_death", var_c77d2837);
	var_c77d2837["beaten_breakout_nrc"] thread function_794875cb(var_6df191e, "cin_lot_04_01_security_vign_beaten_breakout_nrc_death", var_c77d2837);
	var_6df191e endon("hash_5ba67727");
	level namespace_ad23e503::function_1ab5ebec("player_at_atrium_main");
	wait(function_72a94f05(5, 10));
	if(function_5b49d38c(var_c77d2837["beaten_breakout_civ_01"]) && function_5b49d38c(var_c77d2837["beaten_breakout_civ_02"]) && function_5b49d38c(var_c77d2837["beaten_breakout_nrc"]))
	{
		var_845111f3 = namespace_14b42b8a::function_7922262b("security_vign_magic_bullet", "targetname");
		var_7e64c6f8 = namespace_84970cc4::function_47d18840(var_c77d2837);
		function_87f3c622(function_c4d5ec1f("ar_standard"), var_845111f3.var_722885f3, var_7e64c6f8 function_d48f2ab3("j_head"));
		var_7e64c6f8 function_c3945cd5(1, var_845111f3.var_722885f3);
	}
}

/*
	Name: function_794875cb
	Namespace: namespace_8e4b89e2
	Checksum: 0xEB8D62DE
	Offset: 0x72D8
	Size: 0x1BB
	Parameters: 3
	Flags: None
*/
function function_794875cb(var_6df191e, var_294306eb, var_c77d2837)
{
	self endon("hash_c5781b2");
	self waittill("hash_f9348fda");
	var_6df191e notify("hash_5ba67727");
	foreach(var_a3d46ee4 in var_c77d2837)
	{
		if(var_a3d46ee4 != self)
		{
			var_a3d46ee4 notify("hash_c5781b2");
		}
		if(var_a3d46ee4.var_3e94206a != "axis")
		{
			var_a3d46ee4 namespace_d84e54db::function_c9e45d52(0);
			var_a3d46ee4 namespace_d84e54db::function_b4f5e3b9(0);
			var_a3d46ee4 thread namespace_431cac9::function_c8849158(1000);
			continue;
		}
		var_a3d46ee4 thread namespace_82b91a51::function_67520c6a(1, undefined, &namespace_431cac9::function_3e9f1592);
	}
	if(self.var_3e94206a != "axis")
	{
		self thread namespace_82b91a51::function_67520c6a(1, undefined, &namespace_431cac9::function_3e9f1592);
	}
	var_6df191e thread namespace_cc27597::function_43718187(var_294306eb);
}

/*
	Name: function_965ed288
	Namespace: namespace_8e4b89e2
	Checksum: 0x54160998
	Offset: 0x74A0
	Size: 0x31
	Parameters: 0
	Flags: None
*/
function function_965ed288()
{
	self endon("hash_41d1aaf0");
	function_cdecd316();
	self notify("hash_41d1aaf0");
}

/*
	Name: function_f92e06f2
	Namespace: namespace_8e4b89e2
	Checksum: 0xC1EADE96
	Offset: 0x74E0
	Size: 0x89
	Parameters: 0
	Flags: None
*/
function function_f92e06f2()
{
	self endon("hash_128f8789");
	self endon("hash_41d1aaf0");
	function_cdecd316();
	var_c5f9f37f = function_b4cb3503("hendricks_roof_goal", "targetname");
	self function_9869ab67(var_c5f9f37f.var_722885f3);
	self notify("hash_75b3f7dc");
}

/*
	Name: function_cdecd316
	Namespace: namespace_8e4b89e2
	Checksum: 0xF4D9ACDD
	Offset: 0x7578
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_cdecd316()
{
	var_b71ed4a2 = self.var_722885f3;
	var_78962fff = GetTime();
	while(GetTime() - var_78962fff < 5000)
	{
		wait(0.05);
		if(self.var_722885f3 != var_b71ed4a2)
		{
			var_b71ed4a2 = self.var_722885f3;
			var_78962fff = GetTime();
		}
	}
}

/*
	Name: function_80d145c5
	Namespace: namespace_8e4b89e2
	Checksum: 0x740FAFA5
	Offset: 0x75F0
	Size: 0x761
	Parameters: 0
	Flags: None
*/
function function_80d145c5()
{
	level namespace_cc27597::function_c35e6aab("cin_lot_04_06_security_vign_entermobile");
	var_47d90b65 = function_6ada35ba("mobile_shop_1_vehicle", "targetname");
	var_47d90b65 function_8d63f8d0(0);
	var_c8256c12 = function_b4cb3503("entermobile1_start", "targetname");
	function_47d28a09(var_c8256c12);
	level namespace_ad23e503::function_1ab5ebec("enemy_mobile_shop_done");
	level namespace_ad23e503::function_1ab5ebec("hero_mobile_shop_board");
	level namespace_cc27597::function_8f9f34e0("cin_lot_04_06_security_vign_entermobile", &function_4f07d8eb, "done");
	level namespace_cc27597::function_8f9f34e0("cin_lot_04_06_security_vign_entermobile", &function_eca1e72e, "play");
	level thread namespace_cc27597::function_43718187("cin_lot_04_06_security_vign_entermobile");
	level.var_9db406db thread function_965ed288();
	level namespace_ad23e503::function_1ab5ebec("khalil_boarded_mobile_shop");
	namespace_9f824288::function_5d2cdd99();
	level.var_2fd26037 namespace_6f7b2095::function_54bdb053();
	level.var_2fd26037 namespace_d84e54db::function_ceb883cd("disablesprint", 0);
	level.var_2fd26037 namespace_d84e54db::function_ceb883cd("sprint", 1);
	level.var_2fd26037 function_169cc712(function_b4cb3503("hendricks_roof_goal", "targetname"), 1);
	level.var_2fd26037 thread function_f92e06f2();
	level.var_2fd26037 namespace_82b91a51::function_5b7e3888("goal", "failsafe_teleport");
	level.var_2fd26037.var_ca3202d["bc"] = 0;
	level.var_2fd26037 namespace_d84e54db::function_b4f5e3b9(1);
	level namespace_ad23e503::function_1ab5ebec("entermobile_done");
	if(isdefined(level.var_731f5de7))
	{
		level thread [[level.var_731f5de7]]();
	}
	var_f92a03e7 = function_6ada35ba("mobile_shop_1_start_trigger", "script_noteworthy");
	var_f92a03e7 namespace_431cac9::function_36a6e271(0, level.var_6a876531);
	wait(0.5);
	var_c8256c12 = function_b4cb3503("entermobile1_start", "targetname");
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a thread function_40c7669();
	}
	function_9ab58e36(var_c8256c12);
	level.var_2fd26037 function_37f7858a(var_47d90b65);
	level namespace_ad23e503::function_74d6b22f("shop_1_elevator_up");
	level thread function_282a605e();
	namespace_d5067552::function_bae40a28("sm_hero_shop_enemies");
	function_9ab58e36(var_c8256c12);
	function_9b385ca5();
	level.var_c4e28386 = var_fa0d90fd;
	function_c35e6aab(level.var_c4e28386, "mobile_shop_1");
	var_47d90b65 thread function_e99d2077();
	namespace_4dbf3ae3::function_1ab5ebec("atrium_done", undefined, undefined, 0);
	level namespace_ad23e503::function_74d6b22f("hero_mobile_ride_over");
	if(isdefined(level.var_22e2a260))
	{
		level thread [[level.var_22e2a260]]();
	}
	var_f89fb348 = function_b4cb3503("start_mobile_1_roof_across_128", "targetname");
	function_47d28a09(var_f89fb348);
	wait(1.5);
	level.var_2fd26037 namespace_d84e54db::function_b4f5e3b9(0);
	level.var_2fd26037.var_ca3202d["bc"] = 1;
	level.var_2fd26037 namespace_d84e54db::function_ceb883cd("sprint", 0);
	level.var_2fd26037 function_52fddbd0();
	level.var_2fd26037 function_169cc712(function_b4cb3503("end_mobile_1_roof_across_128", "targetname"), 1);
	level.var_2fd26037 waittill("hash_41d1aaf0");
	level.var_2fd26037 namespace_6f7b2095::function_bae40a28();
	namespace_4dbf3ae3::function_42e87952("start_security_station");
	var_56dd1913 = namespace_2f06d687::function_289e6fd1("hero_shop_ambient");
	foreach(var_6050ab17 in var_56dd1913)
	{
		var_6050ab17 function_2992720d();
		wait(function_72a94f05(0.2, 0.5));
	}
}

/*
	Name: function_eca1e72e
	Namespace: namespace_8e4b89e2
	Checksum: 0x929C6201
	Offset: 0x7D60
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_eca1e72e(var_c77d2837)
{
	level namespace_ad23e503::function_74d6b22f("khalil_boarded_mobile_shop");
}

/*
	Name: function_40c7669
	Namespace: namespace_8e4b89e2
	Checksum: 0xDC198405
	Offset: 0x7D98
	Size: 0xB5
	Parameters: 0
	Flags: None
*/
function function_40c7669()
{
	level endon("hash_59fd7ee0");
	self endon("hash_128f8789");
	while(1)
	{
		var_9794db6e = function_b4cb3503("hendricks_roof_goal", "targetname").var_722885f3;
		if(var_9794db6e[2] - self.var_722885f3[2] > 500)
		{
			self function_83fd42b5();
			namespace_82b91a51::function_207f8667(&"CP_MI_CAIRO_LOTUS_MOBILE_SHOP");
		}
		wait(1);
	}
}

/*
	Name: function_282a605e
	Namespace: namespace_8e4b89e2
	Checksum: 0x6A436E5A
	Offset: 0x7E58
	Size: 0x81
	Parameters: 0
	Flags: None
*/
function function_282a605e()
{
	level notify("hash_c087d549", 1);
	level waittill("hash_2d770a81");
	wait(0.5);
	namespace_431cac9::function_e577c596("mobile_shop_ravens", undefined, "mobile_shop_raven_decals", "cp_lotus_projection_ravengrafitti4");
	level namespace_cc27597::function_fcf56ab5("p7_fxanim_cp_lotus_atrium_ravens_bundle");
	level notify("hash_c4a944f0");
}

/*
	Name: function_c687efb
	Namespace: namespace_8e4b89e2
	Checksum: 0xE4CD622C
	Offset: 0x7EE8
	Size: 0x25B
	Parameters: 0
	Flags: None
*/
function function_c687efb()
{
	level thread function_d4538b37();
	var_1475fbe1 = function_99201f25("atrium_battle_main", "script_noteworthy");
	namespace_2f06d687::function_22356ba7(var_1475fbe1);
	var_1475fbe1 = function_99201f25("mobile0_interior_soldiers", "script_noteworthy");
	namespace_2f06d687::function_22356ba7(var_1475fbe1);
	namespace_ad23e503::function_1ab5ebec("start_atrium_battle");
	namespace_4dbf3ae3::function_42e87952("start_enemy_mobile_shop", "script_noteworthy");
	level namespace_ad23e503::function_1ab5ebec("security_shop_unload");
	var_85129eab = function_b4cb3503("start_mobile_0_interior_across_128", "targetname");
	function_47d28a09(var_85129eab);
	wait(10);
	function_9ab58e36(var_85129eab);
	level notify("hash_834140d7");
	level namespace_ad23e503::function_d266a8b4(8, "security_shop_stopped");
	var_a7be1923 = function_b4cb3503("start_mobile_0_top_across_128", "targetname");
	function_47d28a09(var_a7be1923);
	var_7d15b22d = function_b4cb3503("start_mobile_0_across_128", "targetname");
	function_47d28a09(var_7d15b22d);
	var_ba891ade = function_b4cb3503("start_mobile_0_up_160", "targetname");
	function_47d28a09(var_ba891ade);
	level namespace_ad23e503::function_74d6b22f("enemy_mobile_shop_done");
}

/*
	Name: function_d4538b37
	Namespace: namespace_8e4b89e2
	Checksum: 0x66B1226C
	Offset: 0x8150
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_d4538b37()
{
	level waittill("hash_8a1b1b48");
	level namespace_ad23e503::function_74d6b22f("security_shop_unload");
	level waittill("hash_efce9878");
	level namespace_ad23e503::function_74d6b22f("security_shop_stopped");
}

/*
	Name: function_2bb3bfaa
	Namespace: namespace_8e4b89e2
	Checksum: 0xE4360F08
	Offset: 0x81B0
	Size: 0x1F3
	Parameters: 0
	Flags: None
*/
function function_2bb3bfaa()
{
	level namespace_cc27597::function_c35e6aab("p7_fxanim_cp_lotus_monitors_atrium_fall_02_bundle");
	level namespace_cc27597::function_c35e6aab("atrium_mobile_shop_fall_1");
	level namespace_cc27597::function_c35e6aab("atrium_mobile_shop_fall_2");
	level namespace_cc27597::function_c35e6aab("security_mobile_shop_fall");
	level namespace_ad23e503::function_1ab5ebec("player_at_atrium_main");
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_lotus_monitors_atrium_fall_02_bundle");
	namespace_4dbf3ae3::function_1ab5ebec("ambient_rocket_1");
	function_cc59fc62("s_fx_monitor_rocket_foreshadow");
	namespace_82b91a51::function_67520c6a(3, undefined, &namespace_cc27597::function_43718187, "atrium_mobile_shop_fall_1");
	namespace_4dbf3ae3::function_1ab5ebec("ambient_rocket_2");
	function_cc59fc62("s_fx_monitor_rocket_foreshadow_2");
	namespace_4dbf3ae3::function_1ab5ebec("trigger_fx_monitors");
	function_cc59fc62("s_fx_monitor_rocket");
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_lotus_monitors_atrium_fall_bundle");
	level namespace_ad23e503::function_1ab5ebec("shop_1_elevator_up");
	namespace_82b91a51::function_67520c6a(5, undefined, &namespace_cc27597::function_43718187, "atrium_mobile_shop_fall_2");
}

/*
	Name: function_cc59fc62
	Namespace: namespace_8e4b89e2
	Checksum: 0x75DF1E8D
	Offset: 0x83B0
	Size: 0xD5
	Parameters: 1
	Flags: None
*/
function function_cc59fc62(var_a0b86a77)
{
	var_a448a262 = namespace_14b42b8a::function_7922262b(var_a0b86a77, "targetname");
	var_38433989 = namespace_14b42b8a::function_7922262b(var_a448a262.var_b07228b6, "targetname");
	var_5e92b8ab = function_c4d5ec1f("smaw");
	var_3c91fda1 = function_87f3c622(var_5e92b8ab, var_a448a262.var_722885f3, var_38433989.var_722885f3);
	var_3c91fda1 waittill("hash_128f8789");
}

/*
	Name: function_df344ae6
	Namespace: namespace_8e4b89e2
	Checksum: 0xEA9B786C
	Offset: 0x8490
	Size: 0x103
	Parameters: 0
	Flags: None
*/
function function_df344ae6()
{
	self endon("hash_128f8789");
	self namespace_d84e54db::function_c9e45d52(1);
	self namespace_d84e54db::function_b4f5e3b9(1);
	level waittill("hash_8a1b1b48");
	var_9de10fe3 = function_b4cb3503(self.var_db7bb468, "targetname");
	if(isdefined(var_9de10fe3.var_f8456b37))
	{
		self function_169cc712(var_9de10fe3, 1);
	}
	else
	{
		self function_169cc712(var_9de10fe3);
	}
	self waittill("hash_41d1aaf0");
	self namespace_d84e54db::function_c9e45d52(0);
	self namespace_d84e54db::function_b4f5e3b9(0);
}

/*
	Name: function_4f07d8eb
	Namespace: namespace_8e4b89e2
	Checksum: 0x8EAC3870
	Offset: 0x85A0
	Size: 0xBB
	Parameters: 1
	Flags: None
*/
function function_4f07d8eb(var_c77d2837)
{
	level namespace_ad23e503::function_74d6b22f("entermobile_done");
	level waittill("hash_9a441d9e");
	level namespace_cc27597::function_fcf56ab5("cin_lot_04_06_security_vign_entermobile");
	level.var_9db406db namespace_d84e54db::function_b4f5e3b9(1);
	level.var_9db406db namespace_d84e54db::function_c9e45d52(1);
	level waittill("hash_e0d4b687");
	level.var_9db406db function_dc8c8404();
}

/*
	Name: function_c2d878c1
	Namespace: namespace_8e4b89e2
	Checksum: 0x346668A6
	Offset: 0x8668
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_c2d878c1()
{
	level namespace_ad23e503::function_1ab5ebec("start_stair_shoot");
	level thread namespace_cc27597::function_43718187("cin_lot_04_03_security_vign_stairshot");
}

/*
	Name: function_a10660d2
	Namespace: namespace_8e4b89e2
	Checksum: 0x12BC01D2
	Offset: 0x86B8
	Size: 0x24B
	Parameters: 0
	Flags: None
*/
function function_a10660d2()
{
	level namespace_ad23e503::function_1ab5ebec("start_stair_shoot");
	level.var_9db406db thread namespace_71b8dba1::function_81141386("khal_watch_your_fire_th_0");
	level waittill("hash_8a1b1b48");
	namespace_76d95162::function_d9f49fba(0);
	level namespace_71b8dba1::function_a463d127("kane_there_commandeer_th_0");
	level namespace_71b8dba1::function_13b3b16a("plyr_copy_that_moving_0", 0.5);
	level.var_9db406db namespace_71b8dba1::function_81141386("khal_here_they_come_cut_0", 0.7);
	namespace_76d95162::function_d9f49fba(1);
	namespace_4dbf3ae3::function_1ab5ebec("mobile_shop_1_wait", undefined, undefined, 0);
	level.var_9db406db namespace_71b8dba1::function_81141386("khal_hold_on_the_roof_i_0");
	level namespace_ad23e503::function_1ab5ebec("shop_1_elevator_up");
	level.var_9db406db namespace_71b8dba1::function_81141386("khal_i_ll_take_us_up_giv_0");
	level.var_9db406db namespace_71b8dba1::function_81141386("khal_nrc_reinforcements_a_0", 2);
	level namespace_71b8dba1::function_13b3b16a("plyr_you_got_a_suggestion_2", 0.25);
	level waittill("hash_c4a944f0");
	level.var_9db406db namespace_71b8dba1::function_81141386("khal_go_ahead_i_need_to_0", 0.5);
	level notify("hash_e0d4b687");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_go_for_it_boy_scout_0", 0.25);
	level namespace_ad23e503::function_74d6b22f("mobile_shop_vo_done");
}

/*
	Name: function_5554d5f8
	Namespace: namespace_8e4b89e2
	Checksum: 0x98A583E7
	Offset: 0x8910
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_5554d5f8()
{
	self endon("hash_128f8789");
	wait(function_72a94f05(1, 5));
	self namespace_d84e54db::function_c9e45d52(0);
	self waittill("hash_41d1aaf0");
	self function_2992720d();
}

/*
	Name: function_3153496d
	Namespace: namespace_8e4b89e2
	Checksum: 0xCFAAEA08
	Offset: 0x8980
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_3153496d()
{
	self function_c7708f99("lvl_one_ambient");
	self thread function_2f52df3();
}

/*
	Name: function_2f52df3
	Namespace: namespace_8e4b89e2
	Checksum: 0xE703C939
	Offset: 0x89C8
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_2f52df3()
{
	self endon("hash_128f8789");
	self waittill("hash_41d1aaf0");
	self function_2992720d();
}

/*
	Name: function_e99d2077
	Namespace: namespace_8e4b89e2
	Checksum: 0xA872EDA2
	Offset: 0x8A08
	Size: 0x17F
	Parameters: 0
	Flags: None
*/
function function_e99d2077()
{
	wait(1.4);
	while(!level namespace_ad23e503::function_7922262b("hero_mobile_ride_over"))
	{
		foreach(var_5dc5e20a in level.var_9b1393e7)
		{
			var_5dc5e20a namespace_71e9cb84::function_e9c3870b("mobile_shop_rumble_loop", 1);
		}
		self namespace_82b91a51::function_564f2d81("reached_node", "reached_end_node");
		foreach(var_5dc5e20a in level.var_9b1393e7)
		{
			var_5dc5e20a namespace_71e9cb84::function_e9c3870b("mobile_shop_rumble_loop", 0);
		}
		wait(1.4);
	}
}

/*
	Name: function_8b94205a
	Namespace: namespace_8e4b89e2
	Checksum: 0x8EA68623
	Offset: 0x8B90
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_8b94205a()
{
	namespace_d0ef8521::function_45d1556("to_security_station_breadcrumb");
}

/*
	Name: function_2a70544b
	Namespace: namespace_8e4b89e2
	Checksum: 0x9E5C9AB
	Offset: 0x8BB8
	Size: 0x41
	Parameters: 0
	Flags: None
*/
function function_2a70544b()
{
	level endon("hash_e4c92343");
	self waittill("hash_128f8789");
	namespace_d5067552::function_bae40a28("sm_after_mobile_shop1");
	level notify("hash_e4c92343");
}

/*
	Name: function_7804d8d9
	Namespace: namespace_8e4b89e2
	Checksum: 0xB8058191
	Offset: 0x8C08
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_7804d8d9()
{
	namespace_4dbf3ae3::function_1ab5ebec("trigger_raps_wall");
	namespace_d5067552::function_bae40a28("sm_wall_breech");
	namespace_d5067552::function_bae40a28("sm_wall_breech_raps");
	wait(1);
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_lotus_wall_hole_nrc_raps_bundle");
	var_941c4cee = function_6ada35ba("raps_breach_no_sight", "targetname");
	var_941c4cee function_dc8c8404();
}

/*
	Name: function_e20f0a12
	Namespace: namespace_8e4b89e2
	Checksum: 0x68AB2A62
	Offset: 0x8CC0
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_e20f0a12()
{
	namespace_4dbf3ae3::function_1ab5ebec("security_mobile_shop_fall");
	level thread namespace_cc27597::function_43718187("security_mobile_shop_fall");
}

/*
	Name: function_b402dcb9
	Namespace: namespace_8e4b89e2
	Checksum: 0x35F1913
	Offset: 0x8D08
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_b402dcb9()
{
	level namespace_cc27597::function_c35e6aab("cin_lot_04_09_security_vign_flee");
	level namespace_ad23e503::function_1ab5ebec("security_station_first_raps");
	level namespace_cc27597::function_8f9f34e0("cin_lot_04_09_security_vign_flee", &function_e4ea8ea0);
	level namespace_cc27597::function_43718187("cin_lot_04_09_security_vign_flee");
}

/*
	Name: function_e4ea8ea0
	Namespace: namespace_8e4b89e2
	Checksum: 0xEECD2CB0
	Offset: 0x8DA0
	Size: 0xD9
	Parameters: 1
	Flags: None
*/
function function_e4ea8ea0(var_c77d2837)
{
	var_ab891f49 = function_6ada35ba("gv_security_station_slaughter", "targetname");
	foreach(var_a3d46ee4 in var_c77d2837)
	{
		if(function_e70ab977(var_a3d46ee4))
		{
			var_a3d46ee4 function_169cc712(var_ab891f49, 1);
		}
	}
}

/*
	Name: function_3d3111c6
	Namespace: namespace_8e4b89e2
	Checksum: 0x64F53CCA
	Offset: 0x8E88
	Size: 0x2BB
	Parameters: 1
	Flags: None
*/
function function_3d3111c6(var_c77d2837)
{
	level namespace_ad23e503::function_c35e6aab("robot_vs_civ_finish");
	var_14c918e8 = var_c77d2837["vign_headshot_civ"];
	var_f6c5842 = var_c77d2837["vign_headshot_robot"];
	var_14c918e8 namespace_d84e54db::function_c9e45d52(1);
	var_14c918e8 thread function_75e170d1();
	var_f6c5842 namespace_d84e54db::function_c9e45d52(1);
	var_f6c5842 thread function_75e170d1();
	level waittill("hash_ef61cb8");
	level namespace_ad23e503::function_1ff63c0f(4, function_84970cc4("robot_vs_civ_finish"));
	if(function_5b49d38c(var_14c918e8))
	{
		if(function_5b49d38c(var_f6c5842))
		{
			var_14c918e8 thread function_4be7964c(var_f6c5842);
			var_14c918e8 namespace_82b91a51::function_958c7633();
			level thread namespace_cc27597::function_43718187("cin_lot_04_07_security_vign_headshot");
			var_f6c5842 namespace_d84e54db::function_c9e45d52(0);
			level waittill("hash_8a548864");
			if(function_5b49d38c(var_14c918e8))
			{
				var_14c918e8 namespace_82b91a51::function_4b741fdc();
				var_14c918e8 function_d7a0a9d8(1);
				var_14c918e8 function_2992720d();
			}
		}
		else
		{
			level namespace_cc27597::function_fcf56ab5("cin_lot_04_07_security_vign_headshot_loop");
			wait(0.25);
			var_14c918e8 function_169cc712(function_b4cb3503("vign_headshot_goal", "targetname"), 1);
		}
	}
	else if(function_5b49d38c(var_f6c5842))
	{
		var_f6c5842 namespace_d84e54db::function_c9e45d52(0);
		self namespace_cc27597::function_fcf56ab5();
	}
}

/*
	Name: function_75e170d1
	Namespace: namespace_8e4b89e2
	Checksum: 0xADD57BBF
	Offset: 0x9150
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_75e170d1()
{
	self endon("hash_5b2aa9ce");
	self waittill("hash_128f8789");
	level namespace_ad23e503::function_74d6b22f("robot_vs_civ_finish");
}

/*
	Name: function_4be7964c
	Namespace: namespace_8e4b89e2
	Checksum: 0x800E1756
	Offset: 0x9198
	Size: 0x53
	Parameters: 1
	Flags: None
*/
function function_4be7964c(var_f6c5842)
{
	self waittill("hash_128f8789");
	if(level namespace_cc27597::function_444aea32("cin_lot_04_07_security_vign_headshot"))
	{
		var_f6c5842 function_470f7e4c(0.5);
	}
}

/*
	Name: function_322aa3e0
	Namespace: namespace_8e4b89e2
	Checksum: 0xF06B8EE
	Offset: 0x91F8
	Size: 0x183
	Parameters: 0
	Flags: None
*/
function function_322aa3e0()
{
	level namespace_ad23e503::function_1ab5ebec("mobile_shop_vo_done");
	namespace_76d95162::function_d9f49fba(0);
	wait(2);
	level thread namespace_66fe78fb::function_d116b1d8();
	level namespace_71b8dba1::function_a463d127("kane_i_got_a_dozen_of_civ_0", 2);
	namespace_76d95162::function_d9f49fba(1);
	level namespace_ad23e503::function_1ab5ebec("security_station_nrc_reinforce");
	namespace_76d95162::function_d9f49fba(0);
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_more_nrc_moving_in_0", 2);
	level namespace_71b8dba1::function_a463d127("kane_they_re_locking_down_0", 1);
	level namespace_ad23e503::function_1ab5ebec("security_station_player_in_wall");
	level thread namespace_66fe78fb::function_973b77f9();
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_moving_through_breac_0");
	level namespace_ad23e503::function_74d6b22f("hendricks_breach_line_done");
}

/*
	Name: function_da4d024c
	Namespace: namespace_8e4b89e2
	Checksum: 0x96E85A61
	Offset: 0x9388
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_da4d024c()
{
	self namespace_d84e54db::function_b4f5e3b9(1);
}

/*
	Name: function_7d81252f
	Namespace: namespace_8e4b89e2
	Checksum: 0xBA61FC4D
	Offset: 0x93B0
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_7d81252f()
{
	level endon("hash_4394ca68");
	level thread function_e633ccb6();
	if(isdefined(level.var_235c126d))
	{
		level thread [[level.var_235c126d]]();
	}
	level namespace_cc27597::function_43718187("cin_lot_04_09_security_vign_airduct01");
	namespace_ad23e503::function_1ab5ebec("rflag_hendircks_vent_anim_2");
	level namespace_cc27597::function_43718187("cin_lot_04_09_security_vign_airduct02");
	level namespace_cc27597::function_c35e6aab("cin_lot_04_09_security_vign_airduct03");
}

/*
	Name: function_e633ccb6
	Namespace: namespace_8e4b89e2
	Checksum: 0x5BA87E66
	Offset: 0x9470
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_e633ccb6()
{
	var_a39fe0e2 = function_6ada35ba("vent_down_clip", "targetname");
	var_a39fe0e2 function_422037f5();
	level waittill("hash_dc460b51");
	var_935a64f = function_6ada35ba("vent_clip", "targetname");
	var_935a64f function_dc8c8404();
	var_a39fe0e2 function_4083a98e();
}

/*
	Name: function_c871015b
	Namespace: namespace_8e4b89e2
	Checksum: 0x1C32A04B
	Offset: 0x9528
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_c871015b()
{
	self endon("hash_128f8789");
	self namespace_d84e54db::function_b4f5e3b9(1);
	wait(5);
	self namespace_d84e54db::function_b4f5e3b9(0);
}

/*
	Name: function_8667d536
	Namespace: namespace_8e4b89e2
	Checksum: 0xB88DF02C
	Offset: 0x9578
	Size: 0x5C3
	Parameters: 1
	Flags: None
*/
function function_8667d536(var_a178d2fe)
{
	var_4f05370f = function_6ada35ba("breach_leader", "script_noteworthy");
	var_c28cf7b4 = namespace_14b42b8a::function_7faf4c39("breach_origin");
	foreach(var_14b42b8a in var_c28cf7b4)
	{
		var_4f05370f function_ecf27a98(function_c4d5ec1f("willy_pete_nd"), var_14b42b8a.var_722885f3, (0, 0, 1), 0.05);
	}
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_lotus_security_station_door_bundle");
	level notify("hash_ec01b627");
	var_a178d2fe function_48f26766();
	var_a178d2fe function_4083a98e();
	var_2820f5e9 = function_99201f25("security_door_intact", "targetname");
	namespace_84970cc4::function_eaab05dc(var_2820f5e9, &function_dc8c8404);
	var_f63341eb = namespace_14b42b8a::function_7922262b("breach_grenade_origin");
	var_e32e572f = namespace_14b42b8a::function_7faf4c39("breach_target");
	foreach(var_14b42b8a in var_e32e572f)
	{
		var_8cd5b0c5 = function_f679a325(var_14b42b8a.var_722885f3 - var_f63341eb.var_722885f3) * 500;
		var_4f05370f function_ecf27a98(function_c4d5ec1f("flash_grenade"), var_f63341eb.var_722885f3, var_8cd5b0c5, 0.5);
	}
	foreach(var_14b42b8a in var_e32e572f)
	{
		var_8cd5b0c5 = function_f679a325(var_14b42b8a.var_722885f3 - var_f63341eb.var_722885f3) * 500;
		var_4f05370f function_ecf27a98(function_c4d5ec1f("willy_pete_nd"), var_f63341eb.var_722885f3, var_8cd5b0c5, 0.5);
	}
	var_c42a71ee = namespace_14b42b8a::function_7922262b("reverse_breach_epicenter", "targetname");
	foreach(var_6bfe1586 in level.var_2395e945)
	{
		var_6bfe1586 function_e2af603e("damage_heavy");
		function_9cf04c2e(0.2, 0.05, var_6bfe1586.var_722885f3, 120);
		var_6bfe1586 function_f1aa5a21("default", 0.6);
	}
	level thread namespace_20a6d5c1::function_80318e87(1);
	namespace_431cac9::function_e58f5689();
	level thread namespace_cc27597::function_43718187("to_detention_center1_initial_bodies", "targetname");
	namespace_d5067552::function_bae40a28("sm_security_station_breach");
	namespace_d5067552::function_bae40a28("sm_security_station_breach_raps");
	level thread function_603b0189();
	namespace_d5067552::function_72e3dd35("sm_security_station_breach_raps");
	namespace_d5067552::function_72e3dd35("sm_security_station_breach");
	level namespace_ad23e503::function_74d6b22f("security_station_breach_ai_cleared");
}

/*
	Name: function_603b0189
	Namespace: namespace_8e4b89e2
	Checksum: 0xDF26B6B6
	Offset: 0x9B48
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_603b0189()
{
	level endon("hash_78d60236");
	namespace_4dbf3ae3::function_1ab5ebec("vtol_fly_by");
	level namespace_ad23e503::function_74d6b22f("security_station_breach_ai_cleared");
}

/*
	Name: function_e1e0f9da
	Namespace: namespace_8e4b89e2
	Checksum: 0x9006D0E6
	Offset: 0x9B98
	Size: 0xB9
	Parameters: 0
	Flags: None
*/
function function_e1e0f9da()
{
	var_db8e4d94 = function_99201f25("locker_door_right", "script_noteworthy");
	foreach(var_f2c7e89 in var_db8e4d94)
	{
		var_f2c7e89 function_21d0da55(120, 1);
	}
}

