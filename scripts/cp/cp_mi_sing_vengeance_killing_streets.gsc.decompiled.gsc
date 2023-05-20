#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_sing_vengeance_accolades;
#using scripts\cp\cp_mi_sing_vengeance_dogleg_1;
#using scripts\cp\cp_mi_sing_vengeance_sound;
#using scripts\cp\cp_mi_sing_vengeance_util;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_dev;
#using scripts\cp\gametypes\_save;
#using scripts\shared\ai_shared;
#using scripts\shared\animation_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\stealth;
#using scripts\shared\stealth_aware;
#using scripts\shared\stealth_status;
#using scripts\shared\system_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\vehicle_shared;

#namespace namespace_62b73aed;

/*
	Name: function_5b3d7d44
	Namespace: namespace_62b73aed
	Checksum: 0x7D1E695D
	Offset: 0x17E8
	Size: 0x1A3
	Parameters: 2
	Flags: None
*/
function function_5b3d7d44(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		namespace_63b4601c::function_b87f9c13(var_b04bc952, var_74cd64bc);
		namespace_63b4601c::function_66773296("hendricks", var_b04bc952);
		level thread namespace_63b4601c::function_e3420328("killing_streets_ambient_anims", "dogleg_1_begin");
		namespace_d0ef8521::function_74d6b22f("cp_level_vengeance_rescue_kane");
		namespace_d0ef8521::function_74d6b22f("cp_level_vengeance_go_to_safehouse");
		level thread function_9736d8c9();
		level thread function_8704e5f();
		namespace_d7916d65::function_a2995f22();
		function_4a0fb95e("cp_vengeance_env_sign_dancer01");
		wait(0.05);
		level thread namespace_63b4601c::function_ab876b5a("cp_vengeance_env_sign_dancer01", "strip_video_start", "strip_video_end");
		wait(0.05);
		level notify("hash_96cd3d20");
	}
	namespace_63b4601c::function_4e8207e9("killing_streets");
	thread namespace_7c587e3e::function_749aad88();
	function_fedc3ede(var_b04bc952);
}

/*
	Name: function_fedc3ede
	Namespace: namespace_62b73aed
	Checksum: 0xBFA0905F
	Offset: 0x1998
	Size: 0x29B
	Parameters: 1
	Flags: None
*/
function function_fedc3ede(var_b04bc952)
{
	level namespace_ad23e503::function_74d6b22f("killing_streets_begin");
	namespace_80983c42::function_80983c42("killing_streets_butcher_fx");
	namespace_2f06d687::function_2b37a3c9("killing_streets_civilian_spawners", "script_noteworthy", &function_580091b4);
	level.var_2fd26037 thread function_acf87132();
	level.var_2fd26037 thread function_c5a187ba();
	level thread function_4b7aea65();
	level thread function_ef12791();
	level.var_b40baa9d = namespace_14b42b8a::function_7922262b("lineup_kill_doors_scripted_node", "targetname");
	level.var_ecc18bcf = namespace_14b42b8a::function_7922262b("lineup_kill_scripted_node", "targetname");
	level.var_b40baa9d thread namespace_cc27597::function_c35e6aab("cin_ven_03_20_storelineup_vign_start_doors_only");
	level.var_b40baa9d thread namespace_cc27597::function_c35e6aab("cin_ven_03_20_storelineup_vign_exit");
	level.var_5abaf57 = namespace_14b42b8a::function_7922262b("dogleg_1_intro_org");
	var_1cbcb46d = level.var_3f831f3b["scene"]["cin_ven_04_10_cafedoor_1st_sh010"];
	var_1cbcb46d.var_485299d7[0].var_3fd7f188 = 0.5;
	var_1cbcb46d.var_485299d7[1].var_4d56e41d = 0.2;
	var_1cbcb46d.var_485299d7[1].var_6b7e11cd = 0.2;
	level.var_5abaf57 namespace_cc27597::function_c35e6aab("cin_ven_04_10_cafedoor_1st_sh010");
	level thread function_71a7056();
	level thread function_999f0273();
	level thread function_9f0122b9();
	level thread function_28fa297f();
}

/*
	Name: function_acf87132
	Namespace: namespace_62b73aed
	Checksum: 0xD30B3BFF
	Offset: 0x1C40
	Size: 0x273
	Parameters: 0
	Flags: None
*/
function function_acf87132()
{
	level endon("hash_4cf7bf39");
	level endon("hash_5411235");
	level endon("hash_a3f6cd68");
	self endon("hash_128f8789");
	self.var_5fb3c5fe = 1;
	self.var_c584775c = 0;
	self.var_255b9315 = 1;
	self namespace_6f7b2095::function_54bdb053();
	self namespace_d84e54db::function_ceb883cd("cqb", 1);
	self.var_7dfaf62 = 32;
	self namespace_76d95162::function_d9f49fba(0);
	var_90ca1fdd = function_b4cb3503("killing_streets_hendricks_node_03", "targetname");
	self function_169cc712(var_90ca1fdd, 1, 16);
	if(!level namespace_ad23e503::function_7922262b("move_killing_streets_hendricks_node_05"))
	{
		level namespace_ad23e503::function_1ab5ebec("move_killing_streets_hendricks_node_05");
	}
	var_90ca1fdd = function_b4cb3503("killing_streets_hendricks_node_05", "targetname");
	self function_169cc712(var_90ca1fdd, 1, 16);
	if(!level namespace_ad23e503::function_7922262b("move_killing_streets_hendricks_node_10") || !level namespace_ad23e503::function_7922262b("killing_streets_civilian_sniped"))
	{
		level namespace_ad23e503::function_8870cfa8(function_84970cc4("move_killing_streets_hendricks_node_10", "killing_streets_civilian_sniped"));
	}
	var_90ca1fdd = function_b4cb3503("killing_streets_hendricks_node_10", "targetname");
	self function_169cc712(var_90ca1fdd, 1, 16);
	self waittill("hash_41d1aaf0");
	wait(7);
	level namespace_ad23e503::function_74d6b22f("hendricks_break_ally_stealth");
}

/*
	Name: function_c5a187ba
	Namespace: namespace_62b73aed
	Checksum: 0x66BCFFF1
	Offset: 0x1EC0
	Size: 0x1CB
	Parameters: 0
	Flags: None
*/
function function_c5a187ba()
{
	level namespace_ad23e503::function_43ac000b(function_84970cc4("stealth_alert", "stealth_combat", "killing_streets_intro_patroller_spawners_cleared", "cin_ven_03_15_killingstreets_vign_done", "hendricks_break_ally_stealth"));
	self.var_df53bc6 = self.var_15dfd6c;
	self.var_15dfd6c = 0.1;
	self.var_255b9315 = 0;
	self.var_5fb3c5fe = 0;
	self namespace_d84e54db::function_ceb883cd("cqb", 0);
	self namespace_6f7b2095::function_bae40a28();
	level namespace_ad23e503::function_1ab5ebec("killing_streets_intro_patroller_spawners_cleared");
	level namespace_ad23e503::function_9d134160("stealth_discovered");
	self namespace_6f7b2095::function_54bdb053();
	self.var_255b9315 = 1;
	self.var_c584775c = 1;
	self.var_5fb3c5fe = 1;
	self namespace_76d95162::function_d9f49fba(0);
	self.var_15dfd6c = self.var_df53bc6;
	self namespace_d84e54db::function_ceb883cd("cqb", 1);
	self namespace_d84e54db::function_ceb883cd("sprint", 0);
	namespace_ad06727a::function_11424fa();
	wait(0.05);
	self thread function_9680df4e();
}

/*
	Name: function_9736d8c9
	Namespace: namespace_62b73aed
	Checksum: 0xCF63661F
	Offset: 0x2098
	Size: 0x21B
	Parameters: 0
	Flags: None
*/
function function_9736d8c9()
{
	var_315c2d41 = namespace_2f06d687::function_22356ba7("killing_streets_intro_sniper_spawner", &namespace_63b4601c::function_b62b56ba);
	level.var_abd93cb3 = var_315c2d41[0];
	level.var_abd93cb3 thread function_68661375();
	namespace_cc27597::function_8f9f34e0("cin_ven_03_15_killingstreets_vign_snipershot", &function_286754f2, "done");
	var_bba8f947 = namespace_14b42b8a::function_7922262b("lineup_kill_doors_scripted_node");
	var_bba8f947 thread namespace_cc27597::function_c35e6aab("cin_ven_03_15_killingstreets_vign_snipershot");
	level namespace_ad23e503::function_1ab5ebec("start_killing_streets_sniper_shoots_civilian");
	function_37cbcf1a("mus_alley_stinger", (0, 0, 0));
	namespace_82b91a51::function_ef3f75eb("sndLRstart");
	var_bba8f947 thread namespace_cc27597::function_43718187("cin_ven_03_15_killingstreets_vign_snipershot");
	thread namespace_7c587e3e::function_68da61d9();
	wait(0.1);
	while(1)
	{
		var_6b45b25e = function_6ada35ba("killing_streets_alley_civ_a_ai", "targetname");
		if(isdefined(var_6b45b25e))
		{
			break;
		}
		wait(0.05);
	}
	var_6b45b25e.var_5ed2f6d3 = 1;
	var_6b45b25e function_62a7329();
	var_6b45b25e endon("hash_128f8789");
	var_6b45b25e waittill("hash_429486df");
	level.var_abd93cb3 notify("hash_55f87e20");
	var_6b45b25e namespace_1fb6a2e5::function_f7b61010();
}

/*
	Name: function_286754f2
	Namespace: namespace_62b73aed
	Checksum: 0x75EDBB98
	Offset: 0x22C0
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_286754f2(var_c77d2837)
{
	level namespace_ad23e503::function_74d6b22f("killing_streets_civilian_sniped");
}

/*
	Name: function_9680df4e
	Namespace: namespace_62b73aed
	Checksum: 0xD3C3DCF2
	Offset: 0x22F8
	Size: 0x75B
	Parameters: 0
	Flags: None
*/
function function_9680df4e()
{
	level endon("hash_f4ce1009");
	self endon("hash_128f8789");
	self thread function_a66391e6();
	level namespace_ad23e503::function_74d6b22f("move_hendricks_to_meat_market");
	var_6e87e729 = namespace_14b42b8a::function_7922262b("hendricks_open_alley_door_01_gather_org");
	namespace_d0ef8521::function_74d6b22f("cp_waypoint_breadcrumb", var_6e87e729);
	var_a392d7f9 = function_b4cb3503("hendricks_pre_butcher_node", "targetname");
	self function_169cc712(var_a392d7f9, 1);
	self waittill("hash_41d1aaf0");
	self namespace_d84e54db::function_ceb883cd("cqb", 0);
	self namespace_d84e54db::function_ceb883cd("forceTacticalWalk", 1);
	var_a392d7f9 = function_b4cb3503("hendricks_pre_butcher_node_2", "targetname");
	self function_169cc712(var_a392d7f9, 1);
	self waittill("hash_41d1aaf0");
	level.var_ecc18bcf namespace_cc27597::function_c35e6aab("cin_ven_03_20_storelineup_vign_start_hendricks_only");
	level namespace_ad23e503::function_74d6b22f("enable_hendricks_open_alley_door_01");
	self waittill("hash_5f79991d");
	level thread function_96d0d9ff();
	level namespace_ad23e503::function_1ab5ebec("start_hendricks_open_alley_door_01");
	if(isdefined(level.var_a923dc3b))
	{
		level thread [[level.var_a923dc3b]]();
	}
	namespace_9f824288::function_5d2cdd99();
	namespace_d0ef8521::function_31cd1834("cp_waypoint_breadcrumb", var_6e87e729);
	namespace_d0ef8521::function_50ccee8d("cp_level_vengeance_go_to_safehouse");
	self namespace_d84e54db::function_ceb883cd("forceTacticalWalk", 0);
	self namespace_d84e54db::function_ceb883cd("cqb", 1);
	level thread function_e84a45c2();
	namespace_2f06d687::function_2b37a3c9("killing_streets_lineup_patroller_spawners", "script_noteworthy", &function_ae4ad020);
	namespace_2f06d687::function_2b37a3c9("killing_streets_lineup_civilian_spawners", "script_noteworthy", &function_b9d0c862);
	var_6177e956 = function_6ada35ba("storelineup_door1_clip", "targetname");
	var_6177e956 thread function_6177e956();
	level thread function_18420eba();
	level thread function_ae1a0f7a();
	level waittill("hash_ef7d820");
	if(!level namespace_ad23e503::function_7922262b("move_killing_streets_hendricks_node_30"))
	{
		level namespace_ad23e503::function_1ab5ebec("move_killing_streets_hendricks_node_30");
	}
	level namespace_ad23e503::function_74d6b22f("hendricks_says_stay_down");
	level.var_ecc18bcf namespace_cc27597::function_43718187("cin_ven_03_20_storelineup_vign_move1");
	if(!level namespace_ad23e503::function_7922262b("move_killing_streets_hendricks_node_35"))
	{
		level namespace_ad23e503::function_1ab5ebec("move_killing_streets_hendricks_node_35");
	}
	level.var_ecc18bcf namespace_cc27597::function_43718187("cin_ven_03_20_storelineup_vign_move2");
	if(!level namespace_ad23e503::function_7922262b("move_killing_streets_hendricks_node_40") && !level namespace_ad23e503::function_7922262b("cin_ven_03_20_storelineup_vign_fire_done"))
	{
		level namespace_ad23e503::function_8870cfa8(function_84970cc4("move_killing_streets_hendricks_node_40", "cin_ven_03_20_storelineup_vign_fire_done"));
	}
	level.var_ecc18bcf namespace_cc27597::function_43718187("cin_ven_03_20_storelineup_vign_move3");
	level namespace_ad23e503::function_74d6b22f("enable_hendricks_open_alley_door_02");
	if(!level namespace_ad23e503::function_7922262b("start_hendricks_open_alley_door_02"))
	{
		level namespace_ad23e503::function_1ab5ebec("start_hendricks_open_alley_door_02");
	}
	namespace_9f824288::function_5d2cdd99();
	var_600ff27c = function_6ada35ba("storelineup_door3_clip", "targetname");
	if(isdefined(var_600ff27c))
	{
		var_600ff27c thread function_600ff27c();
	}
	level.var_b40baa9d thread namespace_cc27597::function_43718187("cin_ven_03_20_storelineup_vign_exit");
	wait(0.5);
	self function_e11ce512();
	var_90ca1fdd = function_b4cb3503("killing_streets_hendricks_node_55", "targetname");
	self function_169cc712(var_90ca1fdd, 1, 16);
	level waittill("hash_2b5b2f5d");
	level namespace_ad23e503::function_74d6b22f("hendricks_cleared_meat_market_door");
	level namespace_ad23e503::function_1ab5ebec("move_killing_streets_hendricks_node_57");
	var_90ca1fdd = function_b4cb3503("killing_streets_hendricks_node_57", "targetname");
	self function_169cc712(var_90ca1fdd, 1, 16);
	level namespace_ad23e503::function_1ab5ebec("clear_killing_streets_breadcrumb_07");
	level.var_2fd26037 thread function_2adde689();
	var_90ca1fdd = function_b4cb3503("killing_streets_hendricks_node_60", "targetname");
	self function_169cc712(var_90ca1fdd, 1, 16);
}

/*
	Name: function_a66391e6
	Namespace: namespace_62b73aed
	Checksum: 0x723D61EF
	Offset: 0x2A60
	Size: 0x393
	Parameters: 0
	Flags: None
*/
function function_a66391e6()
{
	level namespace_ad23e503::function_1ab5ebec("killing_streets_lineup_patrollers_alerted");
	wait(0.05);
	self function_470f7e4c();
	self.var_255b9315 = 0;
	self.var_c584775c = 0;
	self.var_5fb3c5fe = 0;
	self namespace_76d95162::function_d9f49fba(1);
	self namespace_d84e54db::function_ceb883cd("forceTacticalWalk", 0);
	self namespace_6f7b2095::function_bae40a28();
	level namespace_ad23e503::function_8870cfa8(function_84970cc4("killing_streets_lineup_patroller_spawners_cleared", "killing_streets_robots_cleared"));
	level namespace_ad23e503::function_9d134160("stealth_discovered");
	self.var_255b9315 = 1;
	self.var_5fb3c5fe = 1;
	self namespace_76d95162::function_d9f49fba(0);
	self namespace_d84e54db::function_ceb883cd("cqb", 1);
	self namespace_6f7b2095::function_54bdb053();
	var_600ff27c = function_6ada35ba("storelineup_door3_clip", "targetname");
	if(isdefined(var_600ff27c))
	{
		var_600ff27c thread function_600ff27c();
	}
	if(!level namespace_ad23e503::function_7922262b("hendricks_cleared_meat_market_door"))
	{
		level.var_b40baa9d thread namespace_cc27597::function_43718187("cin_ven_03_20_storelineup_vign_exit_reach");
		self waittill("hash_5f79991d");
		wait(0.5);
	}
	self function_e11ce512();
	var_90ca1fdd = function_b4cb3503("killing_streets_hendricks_node_55", "targetname");
	self function_169cc712(var_90ca1fdd, 1, 16);
	if(!level namespace_ad23e503::function_7922262b("hendricks_cleared_meat_market_door"))
	{
		level waittill("hash_2b5b2f5d");
	}
	level namespace_ad23e503::function_1ab5ebec("move_killing_streets_hendricks_node_57");
	var_90ca1fdd = function_b4cb3503("killing_streets_hendricks_node_57", "targetname");
	self function_169cc712(var_90ca1fdd, 1, 16);
	level namespace_ad23e503::function_1ab5ebec("clear_killing_streets_breadcrumb_07");
	level.var_2fd26037 thread function_2adde689();
	var_90ca1fdd = function_b4cb3503("killing_streets_hendricks_node_60", "targetname");
	self function_169cc712(var_90ca1fdd, 1, 16);
}

/*
	Name: function_2adde689
	Namespace: namespace_62b73aed
	Checksum: 0x337F0D0B
	Offset: 0x2E00
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_2adde689()
{
	self endon("hash_128f8789");
	self namespace_d84e54db::function_ceb883cd("vignette_mode", "fast");
	self namespace_d84e54db::function_ceb883cd("coverIdleOnly", 1);
	level waittill("hash_f1a04aa0");
	self namespace_d84e54db::function_ceb883cd("vignette_mode", "off");
	self namespace_d84e54db::function_ceb883cd("coverIdleOnly", 0);
}

/*
	Name: function_96d0d9ff
	Namespace: namespace_62b73aed
	Checksum: 0x407150FD
	Offset: 0x2EB0
	Size: 0x89
	Parameters: 0
	Flags: None
*/
function function_96d0d9ff()
{
	foreach(var_6bfe1586 in level.var_9b1393e7)
	{
		var_6bfe1586 thread function_a39cd1bb();
	}
}

/*
	Name: function_a39cd1bb
	Namespace: namespace_62b73aed
	Checksum: 0x78E6D71E
	Offset: 0x2F48
	Size: 0x10F
	Parameters: 0
	Flags: None
*/
function function_a39cd1bb()
{
	level endon("hash_f4ce1009");
	level endon("hash_f1a04aa0");
	self endon("hash_643a7daf");
	var_68586610 = function_99201f25("killing_streets_outside", "targetname");
	while(1)
	{
		foreach(var_9c169a5c in var_68586610)
		{
			if(self function_32fa5072(var_9c169a5c))
			{
				self.var_255b9315 = 1;
				continue;
			}
			self.var_255b9315 = 0;
		}
		wait(0.05);
	}
}

/*
	Name: function_18420eba
	Namespace: namespace_62b73aed
	Checksum: 0x9BCC7645
	Offset: 0x3060
	Size: 0x391
	Parameters: 0
	Flags: None
*/
function function_18420eba()
{
	level endon("hash_f4ce1009");
	level thread function_fd81381e("execution_blood_spray_lt", "lineup_civ_1_killed", "lineup_kill_decal_lt_window_broken");
	level thread function_fd81381e("execution_blood_spray_rt", "lineup_civ_2_killed", "lineup_kill_decal_rt_window_broken");
	level thread function_d864c642();
	level.var_ecc18bcf thread namespace_cc27597::function_c35e6aab("cin_ven_03_20_storelineup_vign_fire");
	level.var_b40baa9d thread namespace_cc27597::function_43718187("cin_ven_03_20_storelineup_vign_start_doors_only");
	level.var_ecc18bcf namespace_cc27597::function_43718187("cin_ven_03_20_storelineup_vign_start_hendricks_only");
	level notify("hash_ef7d820");
	level namespace_ad23e503::function_1ab5ebec("start_lineup_kill_execution");
	level.var_ecc18bcf namespace_cc27597::function_43718187("cin_ven_03_20_storelineup_vign_fire");
	level namespace_ad23e503::function_74d6b22f("cin_ven_03_20_storelineup_vign_fire_done");
	var_90ca1fdd = function_b4cb3503("killing_streets_lineup_patroller_spawners_exit_node", "targetname");
	var_35ef0ec1 = function_99201f25("killing_streets_robots", "script_noteworthy", 1);
	foreach(var_6b45b25e in var_35ef0ec1)
	{
		if(isdefined(var_6b45b25e) && function_5b49d38c(var_6b45b25e))
		{
			if(isdefined(var_6b45b25e.var_eb328a48))
			{
				var_6b45b25e thread namespace_82b91a51::function_1028c88d(var_6b45b25e.var_eb328a48, undefined, &namespace_63b4601c::function_3d5f97bd, var_90ca1fdd, undefined, 1, 1024);
				continue;
			}
			var_6b45b25e thread namespace_63b4601c::function_3d5f97bd(var_90ca1fdd, undefined, 1, 1024);
		}
	}
	wait(15);
	var_35ef0ec1 = function_99201f25("killing_streets_lineup_patroller_spawners", "script_noteworthy", 1);
	foreach(var_6b45b25e in var_35ef0ec1)
	{
		if(isdefined(var_6b45b25e) && function_5b49d38c(var_6b45b25e))
		{
			var_6b45b25e thread namespace_63b4601c::function_3d5f97bd(var_90ca1fdd, undefined, 1, 1024);
		}
	}
}

/*
	Name: function_fd81381e
	Namespace: namespace_62b73aed
	Checksum: 0x59360835
	Offset: 0x3400
	Size: 0xF3
	Parameters: 3
	Flags: None
*/
function function_fd81381e(var_210e7715, var_a9d6b8b7, var_734ef62a)
{
	var_f644fb29 = function_6ada35ba(var_210e7715, "targetname");
	var_f644fb29 namespace_71e9cb84::function_74d6b22f("normal_hide", 1);
	var_f644fb29 function_422037f5();
	level waittill(var_a9d6b8b7);
	if(!level namespace_ad23e503::function_7922262b(var_734ef62a))
	{
		var_f644fb29 namespace_71e9cb84::function_74d6b22f("mature_hide", 1);
	}
	level namespace_ad23e503::function_1ab5ebec(var_734ef62a);
	var_f644fb29 function_dc8c8404();
}

/*
	Name: function_d864c642
	Namespace: namespace_62b73aed
	Checksum: 0x345B31DD
	Offset: 0x3500
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_d864c642()
{
	level namespace_ad23e503::function_43ac000b(function_84970cc4("killing_streets_lineup_patrollers_alerted", "lineup_kill_window_broken"));
	var_f4835685 = function_6ada35ba("storelineup_window_clip", "targetname");
	if(isdefined(var_f4835685))
	{
		var_f4835685 function_dc8c8404();
	}
}

/*
	Name: function_ae1a0f7a
	Namespace: namespace_62b73aed
	Checksum: 0x17E2C61D
	Offset: 0x3590
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_ae1a0f7a()
{
	level namespace_ad23e503::function_1ab5ebec("killing_streets_lineup_patrollers_alerted");
	level.var_ecc18bcf namespace_cc27597::function_fcf56ab5();
}

/*
	Name: function_6177e956
	Namespace: namespace_62b73aed
	Checksum: 0xCBC0F675
	Offset: 0x35D8
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_6177e956()
{
	wait(2);
	self function_422037f5();
	self function_de8377bf();
	wait(1);
	self function_dc8c8404();
}

/*
	Name: function_600ff27c
	Namespace: namespace_62b73aed
	Checksum: 0xED1683FD
	Offset: 0x3640
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_600ff27c()
{
	wait(0.75);
	self function_422037f5();
	self function_de8377bf();
}

/*
	Name: function_8704e5f
	Namespace: namespace_62b73aed
	Checksum: 0xF76C7F99
	Offset: 0x3688
	Size: 0x173
	Parameters: 0
	Flags: None
*/
function function_8704e5f()
{
	namespace_2f06d687::function_2b37a3c9("killing_streets_intro_patroller_spawners", "script_noteworthy", &function_a45594e6);
	var_6a07eb6c = [];
	var_6a07eb6c[0] = "killing_streets_alley_civ_b";
	var_6a07eb6c[1] = "killing_streets_alley_rope";
	namespace_cc27597::function_8f9f34e0("cin_ven_03_15_killingstreets_vign", &namespace_63b4601c::function_65a61b78, "play", var_6a07eb6c);
	namespace_cc27597::function_8f9f34e0("cin_ven_03_15_killingstreets_vign_loop", &namespace_63b4601c::function_65a61b78, "play", var_6a07eb6c);
	var_a9e0b15b = namespace_14b42b8a::function_7922262b("lineup_kill_doors_scripted_node");
	var_a9e0b15b namespace_cc27597::function_c35e6aab("cin_ven_03_15_killingstreets_vign");
	if(!level namespace_ad23e503::function_7922262b("move_killing_streets_hendricks_node_15"))
	{
		level namespace_ad23e503::function_1ab5ebec("move_killing_streets_hendricks_node_15");
	}
	var_a9e0b15b namespace_cc27597::function_43718187("cin_ven_03_15_killingstreets_vign");
}

/*
	Name: function_a45594e6
	Namespace: namespace_62b73aed
	Checksum: 0x8C5556B4
	Offset: 0x3808
	Size: 0x1F9
	Parameters: 0
	Flags: None
*/
function function_a45594e6()
{
	self endon("hash_128f8789");
	self namespace_d84e54db::function_c9e45d52(1);
	self namespace_d84e54db::function_b4f5e3b9(1);
	function_6c1294b8("ai_awarenessEnabled", 0);
	self thread function_53a6540a();
	if(!level namespace_ad23e503::function_7922262b("move_killing_streets_hendricks_node_15"))
	{
		level namespace_ad23e503::function_1ab5ebec("move_killing_streets_hendricks_node_15");
	}
	self namespace_d84e54db::function_b4f5e3b9(0);
	function_6c1294b8("ai_awarenessEnabled", 1);
	while(1)
	{
		var_97bb242a = self namespace_82b91a51::function_45ce26d("killing_streets_intro_alerted", "scene_done", "done_shooting_civilian");
		if(var_97bb242a == "done_shooting_civilian")
		{
			self namespace_d84e54db::function_c9e45d52(0);
		}
		else
		{
			level namespace_ad23e503::function_74d6b22f("cin_ven_03_15_killingstreets_vign_done");
			var_c3b293c9 = function_6ada35ba("killing_streets_enemy_gv", "targetname");
			if(isdefined(var_c3b293c9))
			{
				if(isdefined(self.var_30dac0b5) && self.var_30dac0b5)
				{
					self waittill("hash_45b11ba2");
					self.var_30dac0b5 = undefined;
				}
				wait(0.05);
				self function_169cc712(var_c3b293c9);
			}
			return;
		}
	}
}

/*
	Name: function_68661375
	Namespace: namespace_62b73aed
	Checksum: 0x5EEAA6B6
	Offset: 0x3A10
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_68661375()
{
	self endon("hash_128f8789");
	self namespace_d84e54db::function_c9e45d52(1);
	self namespace_d84e54db::function_b4f5e3b9(1);
	self waittill("hash_55f87e20");
	self namespace_d84e54db::function_c9e45d52(0);
	self namespace_d84e54db::function_b4f5e3b9(0);
}

/*
	Name: function_53a6540a
	Namespace: namespace_62b73aed
	Checksum: 0x25E7C3B8
	Offset: 0x3A90
	Size: 0xB5
	Parameters: 0
	Flags: None
*/
function function_53a6540a()
{
	self endon("hash_128f8789");
	self waittill("hash_78a7a5b9");
	self notify("hash_30dac0b5");
	level.var_abd93cb3 notify("hash_55f87e20");
	level.var_abd93cb3 namespace_ad06727a::function_fcf56ab5();
	if(isdefined(self.var_a33b36db))
	{
		self namespace_ad06727a::function_fcf56ab5();
		self.var_30dac0b5 = 1;
		self namespace_cc27597::function_43718187(self.var_a33b36db);
		self waittill("hash_accb9cfa");
		self notify("hash_45b11ba2");
	}
}

/*
	Name: function_580091b4
	Namespace: namespace_62b73aed
	Checksum: 0x4692D38
	Offset: 0x3B50
	Size: 0x123
	Parameters: 0
	Flags: None
*/
function function_580091b4()
{
	self endon("hash_128f8789");
	self.var_3e94206a = "allies";
	self namespace_d84e54db::function_c9e45d52(1);
	self namespace_d84e54db::function_b4f5e3b9(1);
	self.var_3a90f16b = 1;
	if(self.var_170527fb == "killing_streets_alley_civ_a_ai")
	{
		self.var_8aa848ca = 1;
		self namespace_d84e54db::function_ceb883cd("panic", 0);
	}
	if(isdefined(self.var_b07228b6))
	{
		var_90ca1fdd = function_b4cb3503(self.var_b07228b6, "targetname");
		self thread namespace_d84e54db::function_19e98020(var_90ca1fdd, var_90ca1fdd.var_f8456b37);
	}
	level waittill("hash_f4c7c788");
	if(isdefined(self))
	{
		self function_dc8c8404();
	}
}

/*
	Name: function_b9d0c862
	Namespace: namespace_62b73aed
	Checksum: 0xF1539999
	Offset: 0x3C80
	Size: 0xEB
	Parameters: 0
	Flags: None
*/
function function_b9d0c862()
{
	self endon("hash_128f8789");
	self.var_3e94206a = "allies";
	self.var_8aa848ca = 1;
	self namespace_d84e54db::function_c9e45d52(1);
	self namespace_d84e54db::function_ceb883cd("panic", 0);
	self thread function_cfede1cf();
	level namespace_ad23e503::function_1ab5ebec("killing_streets_lineup_patrollers_alerted");
	self function_470f7e4c();
	self namespace_d84e54db::function_c9e45d52(0);
	self namespace_d84e54db::function_ceb883cd("panic", 1);
}

/*
	Name: function_cfede1cf
	Namespace: namespace_62b73aed
	Checksum: 0xC47756B
	Offset: 0x3D78
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_cfede1cf()
{
	self endon("hash_128f8789");
	self waittill("hash_bc04f3c2");
	self.var_2dd707 = 1;
	self.var_eddbd1e2 = 1;
	self.var_bab9655e = 1;
	self function_2992720d();
}

/*
	Name: function_ae4ad020
	Namespace: namespace_62b73aed
	Checksum: 0xA8A96CF8
	Offset: 0x3DD8
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_ae4ad020()
{
	self endon("hash_128f8789");
	self namespace_d84e54db::function_c9e45d52(1);
	self namespace_82b91a51::function_5b7e3888("damage", "alert");
	self namespace_d84e54db::function_c9e45d52(0);
	level namespace_ad23e503::function_74d6b22f("killing_streets_lineup_patrollers_alerted");
	namespace_82b91a51::function_ef3f75eb("sndLRstop");
	level thread namespace_9fd035::function_6c2fa1d0();
	self function_470f7e4c();
}

/*
	Name: function_e84a45c2
	Namespace: namespace_62b73aed
	Checksum: 0x8BEE243C
	Offset: 0x3EB0
	Size: 0x37
	Parameters: 0
	Flags: None
*/
function function_e84a45c2()
{
	var_e84a45c2 = namespace_2f06d687::function_22356ba7("killing_streets_robots", undefined, undefined, undefined, undefined, undefined, undefined, 1);
}

/*
	Name: function_e416ac3a
	Namespace: namespace_62b73aed
	Checksum: 0x9E240D64
	Offset: 0x3EF0
	Size: 0x693
	Parameters: 4
	Flags: None
*/
function function_e416ac3a(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	level namespace_ad23e503::function_74d6b22f("killing_streets_end");
	level function_9e5f73db();
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a namespace_71e9cb84::function_e9c3870b("play_client_igc", 2);
	}
	namespace_63b4601c::function_e00864bd("dogleg_1_umbra_gate", 1, "dogleg_1_gate");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_02_20_synckill_vign");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_02_30_masterbedroom_vign");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_hanging_body_loop_vign_civ03");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_hanging_body_loop_vign_civ06");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_hanging_body_loop_vign_civ08");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_03_10_takedown_intro_1st");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_03_10_takedown_intro_1st_props");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_03_10_takedown_1st");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_03_10_takedown_1st_props");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_03_10_takedown_intro_1st_test");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_01_02_rooftop_1st_overlook");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_03_10_takedown_1st_hendricks");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_03_11_gate_convo_vign");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_03_15_killingstreets_vign_snipershot");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_03_15_killingstreets_vign");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_03_15_killingstreets_vign_loop");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_03_15_killingstreets_vign_react_enemy_a");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_03_15_killingstreets_vign_react_enemy_b");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_03_15_killingstreets_vign_react_enemy_c");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_03_15_killingstreets_vign_react_enemy_d");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_03_20_storelineup_vign_start_hendricks_only");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_03_20_storelineup_vign_move1");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_03_20_storelineup_vign_move2");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_03_20_storelineup_vign_move3");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_03_20_storelineup_vign_fire");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_03_20_storelineup_vign_loop");
	level namespace_14b42b8a::function_368120a1("scene", "cin_gen_f_floor_onfront_armdown_legstraight_deathpose_civ_sing");
	level namespace_14b42b8a::function_368120a1("scene", "cin_gen_m_floor_armup_legaskew_onfront_faceright_deathpose_civ_sing");
	level namespace_14b42b8a::function_368120a1("scene", "cin_gen_f_floor_onfront_armup_legstraight_deathpose_civ_sing");
	level namespace_14b42b8a::function_368120a1("scene", "cin_gen_f_floor_onleftside_armcurled_legcurled_deathpose_civ_sing");
	level namespace_14b42b8a::function_368120a1("scene", "cin_gen_m_wall_headonly_leanleft_deathpose_civ_sing");
	level namespace_14b42b8a::function_368120a1("scene", "cin_gen_m_floor_armstomach_onback_deathpose_civ_sing");
	level namespace_14b42b8a::function_368120a1("scene", "cin_gen_f_floor_onback_armup_legcurled_deathpose_civ_sing");
	level namespace_14b42b8a::function_368120a1("scene", "cin_gen_m_floor_armstretched_onrightside_deathpose_civ_sing");
	level namespace_14b42b8a::function_368120a1("scene", "cin_gen_m_armover_onrightside_deathpose_civ_sing");
	namespace_63b4601c::function_4e8207e9("killing_streets", 0);
}

/*
	Name: function_9e5f73db
	Namespace: namespace_62b73aed
	Checksum: 0x34D26997
	Offset: 0x4590
	Size: 0xC1
	Parameters: 0
	Flags: None
*/
function function_9e5f73db()
{
	namespace_84970cc4::function_966ecb29(function_99201f25("killing_streets_lineup_patroller_spawners", "script_noteworthy"), &namespace_82b91a51::function_20ffc8ff);
	namespace_84970cc4::function_966ecb29(function_99201f25("killing_streets_robots", "targetname"), &namespace_82b91a51::function_20ffc8ff);
	namespace_80983c42::function_593e8a39("killing_streets_butcher_fx");
	level notify("hash_85ae1ef3");
	wait(0.05);
	level notify("hash_92bd0e81");
}

/*
	Name: function_ef12791
	Namespace: namespace_62b73aed
	Checksum: 0xC7544B2B
	Offset: 0x4660
	Size: 0x2E3
	Parameters: 0
	Flags: None
*/
function function_ef12791()
{
	level waittill("hash_2b5b2f5d");
	var_655205bf = namespace_14b42b8a::function_7922262b("dogleg_1_intro_goto_obj_org", "targetname");
	namespace_d0ef8521::function_48f26766("cp_level_vengeance_go_to_safehouse");
	namespace_d0ef8521::function_74d6b22f("cp_waypoint_breadcrumb", var_655205bf);
	var_131d0575 = function_6ada35ba("dogleg_1_intro_trigger", "script_noteworthy");
	var_131d0575 function_175e6b8e(0);
	level thread namespace_82b91a51::function_d8eaed3d(3);
	var_813fc428 = level namespace_82b91a51::function_45ce26d("dogleg_1_intro_goto_trigger_touched", "stealth_discovered");
	if(var_813fc428 == "stealth_discovered")
	{
		namespace_d0ef8521::function_50ccee8d("cp_waypoint_breadcrumb");
		if(level namespace_ad23e503::function_7922262b("stealth_discovered"))
		{
			level namespace_ad23e503::function_d3de6822("stealth_discovered");
		}
		namespace_d0ef8521::function_48f26766("cp_waypoint_breadcrumb");
		level namespace_ad23e503::function_1ab5ebec("dogleg_1_intro_goto_trigger_touched");
	}
	namespace_d0ef8521::function_31cd1834("cp_waypoint_breadcrumb", var_655205bf);
	namespace_d0ef8521::function_50ccee8d("cp_level_vengeance_go_to_safehouse");
	var_131d0575 function_175e6b8e(1);
	var_ca0e9b65 = namespace_82b91a51::function_14518e76(var_131d0575, &"cp_prompt_enter_ven_door", &"CP_MI_SING_VENGEANCE_HINT_OPEN", &function_88762207);
	namespace_d0ef8521::function_74d6b22f("cp_level_vengeance_open_dogleg_1_menu");
	level thread namespace_63b4601c::function_8a63fd6b(var_131d0575, undefined, "cp_level_vengeance_open_dogleg_1_menu", "start_dogleg_1_intro", undefined, var_ca0e9b65);
	level waittill("hash_f1a04aa0");
	var_ca0e9b65 namespace_a230c2b1::function_e54c54c3();
	namespace_d0ef8521::function_50ccee8d("cp_level_vengeance_open_dogleg_1_menu");
	wait(0.1);
	namespace_1d795d47::function_be8adfb8("killing_streets");
}

/*
	Name: function_88762207
	Namespace: namespace_62b73aed
	Checksum: 0x1F36A5DB
	Offset: 0x4950
	Size: 0x27
	Parameters: 1
	Flags: None
*/
function function_88762207(var_6bfe1586)
{
	level notify("hash_f1a04aa0");
	level.var_4c62d05f = var_6bfe1586;
}

/*
	Name: function_4b7aea65
	Namespace: namespace_62b73aed
	Checksum: 0x2AB140DE
	Offset: 0x4980
	Size: 0x17B
	Parameters: 0
	Flags: None
*/
function function_4b7aea65()
{
	wait(0.05);
	level.var_29304913 = namespace_14b42b8a::function_7922262b("killing_streets_breadcrumb_01");
	namespace_d0ef8521::function_74d6b22f("cp_waypoint_breadcrumb", level.var_29304913);
	level namespace_ad23e503::function_1ab5ebec("move_killing_streets_hendricks_node_05");
	namespace_d0ef8521::function_31cd1834("cp_waypoint_breadcrumb", level.var_29304913);
	level namespace_ad23e503::function_1ab5ebec("start_hendricks_open_alley_door_01");
	level thread function_ff499dd5();
	level namespace_ad23e503::function_1ab5ebec("hendricks_cleared_meat_market_door");
	if(!namespace_ad23e503::function_7922262b("clear_killing_streets_breadcrumb_06"))
	{
		level.var_29304913 = namespace_14b42b8a::function_7922262b("killing_streets_breadcrumb_06");
		namespace_d0ef8521::function_74d6b22f("cp_waypoint_breadcrumb", level.var_29304913);
		level namespace_ad23e503::function_1ab5ebec("clear_killing_streets_breadcrumb_06");
		namespace_d0ef8521::function_31cd1834("cp_waypoint_breadcrumb", level.var_29304913);
	}
}

/*
	Name: function_ff499dd5
	Namespace: namespace_62b73aed
	Checksum: 0x7300E20B
	Offset: 0x4B08
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_ff499dd5()
{
	level endon("hash_b29d42d8");
	wait(20);
	if(!namespace_ad23e503::function_7922262b("clear_killing_streets_breadcrumb_04"))
	{
		level.var_29304913 = namespace_14b42b8a::function_7922262b("killing_streets_breadcrumb_04");
		namespace_d0ef8521::function_74d6b22f("cp_waypoint_breadcrumb", level.var_29304913);
		level namespace_ad23e503::function_1ab5ebec("clear_killing_streets_breadcrumb_04");
		namespace_d0ef8521::function_31cd1834("cp_waypoint_breadcrumb", level.var_29304913);
	}
}

/*
	Name: function_71a7056
	Namespace: namespace_62b73aed
	Checksum: 0xF0BB287B
	Offset: 0x4BC0
	Size: 0x1AB
	Parameters: 0
	Flags: None
*/
function function_71a7056()
{
	level namespace_ad23e503::function_1ab5ebec("start_killing_streets_sniper_shoots_civilian");
	wait(1.5);
	level.var_2fd26037 namespace_63b4601c::function_5fbec645("hend_shit_weapons_ready_0");
	if(!level namespace_ad23e503::function_7922262b("move_killing_streets_hendricks_node_15"))
	{
		level namespace_ad23e503::function_1ab5ebec("move_killing_streets_hendricks_node_15");
		level.var_2fd26037 namespace_63b4601c::function_5fbec645("hend_contact_1");
	}
	level namespace_ad23e503::function_43ac000b(function_84970cc4("stealth_alert", "stealth_combat", "killing_streets_intro_patroller_spawners_cleared", "cin_ven_03_15_killingstreets_vign_done", "hendricks_break_ally_stealth"));
	level.var_2fd26037 namespace_63b4601c::function_5fbec645("hend_weapons_free_0");
	wait(0.5);
	level.var_2fd26037 namespace_76d95162::function_d9f49fba(1);
	level namespace_ad23e503::function_1ab5ebec("move_hendricks_to_meat_market");
	wait(1.75);
	level.var_2fd26037 namespace_63b4601c::function_5fbec645("hend_what_the_fuck_is_wro_0");
	wait(0.5);
	level.var_2fd26037 namespace_63b4601c::function_5fbec645("hend_no_mission_is_worth_0");
}

/*
	Name: function_999f0273
	Namespace: namespace_62b73aed
	Checksum: 0xCE0761E
	Offset: 0x4D78
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_999f0273()
{
	level namespace_ad23e503::function_1ab5ebec("hendricks_says_stay_down");
	level.var_2fd26037 namespace_63b4601c::function_5fbec645("hend_stay_down_1");
}

/*
	Name: function_9f0122b9
	Namespace: namespace_62b73aed
	Checksum: 0x6818BC25
	Offset: 0x4DC8
	Size: 0x91
	Parameters: 0
	Flags: None
*/
function function_9f0122b9()
{
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a namespace_71e9cb84::function_e9c3870b("play_client_igc", 1);
	}
}

/*
	Name: function_28fa297f
	Namespace: namespace_62b73aed
	Checksum: 0x13706C24
	Offset: 0x4E68
	Size: 0x133
	Parameters: 0
	Flags: None
*/
function function_28fa297f()
{
	var_8c8bdeb5 = function_6ada35ba("lineup_kill_exit_door", "targetname");
	if(isdefined(var_8c8bdeb5))
	{
		var_8c8bdeb5 function_50ccee8d();
		var_8c8bdeb5 function_422037f5();
	}
	var_1e51cc5a = function_6ada35ba("lineup_kill_exit_door_clip", "targetname");
	if(isdefined(var_1e51cc5a))
	{
		var_1e51cc5a function_422037f5();
		wait(0.1);
		var_1e51cc5a function_de8377bf();
		level namespace_ad23e503::function_1ab5ebec("killing_streets_end");
		var_1e51cc5a function_4083a98e();
		wait(0.1);
		var_1e51cc5a function_14c24d9d();
	}
}

