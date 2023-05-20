#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_sing_vengeance_accolades;
#using scripts\cp\cp_mi_sing_vengeance_sound;
#using scripts\cp\cp_mi_sing_vengeance_util;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_save;
#using scripts\shared\ai\archetype_warlord_interface;
#using scripts\shared\ai_shared;
#using scripts\shared\ai_sniper_shared;
#using scripts\shared\animation_shared;
#using scripts\shared\array_shared;
#using scripts\shared\audio_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\stealth;
#using scripts\shared\stealth_aware;
#using scripts\shared\stealth_status;
#using scripts\shared\stealth_vo;
#using scripts\shared\system_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;

#namespace namespace_628b256b;

/*
	Name: function_80032d7e
	Namespace: namespace_628b256b
	Checksum: 0xFB15E3DC
	Offset: 0x13E0
	Size: 0x13B
	Parameters: 2
	Flags: None
*/
function function_80032d7e(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		namespace_63b4601c::function_b87f9c13(var_b04bc952, var_74cd64bc);
		namespace_dabbe128::function_356a4ee1(&namespace_63b4601c::function_b627f9ac);
		namespace_63b4601c::function_66773296("hendricks", var_b04bc952);
		level thread namespace_63b4601c::function_cc6f3598();
		level thread namespace_63b4601c::function_3f34106b();
		level thread namespace_9fd035::function_dad71f51();
		namespace_d7916d65::function_a2995f22();
		namespace_d0ef8521::function_74d6b22f("cp_level_vengeance_rescue_kane");
		namespace_d0ef8521::function_74d6b22f("cp_level_vengeance_go_to_safehouse");
		namespace_d0ef8521::function_50ccee8d("cp_level_vengeance_go_to_safehouse");
	}
	function_88933a86(var_b04bc952);
}

/*
	Name: function_88933a86
	Namespace: namespace_628b256b
	Checksum: 0x245311A1
	Offset: 0x1528
	Size: 0x801
	Parameters: 1
	Flags: None
*/
function function_88933a86(var_b04bc952)
{
	namespace_ad06727a::function_11424fa();
	level.var_67e1f60e[level.var_67e1f60e.size] = &function_591ead63;
	level namespace_ad23e503::function_74d6b22f("temple_begin");
	function_6c1294b8("scr_security_breach_lose_contact_distance", 36000);
	function_6c1294b8("scr_security_breach_lost_contact_distance", 72000);
	level thread namespace_523da15d::function_a6fadcaa();
	level thread function_899bbe30();
	level.var_2fd26037 thread function_a0ef55a8();
	namespace_2f06d687::function_2b37a3c9("temple_ambient_civilian", "script_noteworthy", &function_8e6475bd);
	level thread function_47dc557f();
	level thread function_a86ac59d();
	level thread function_7ee71c12();
	namespace_63b4601c::function_e00864bd("office_umbra_gate", 0, "office_gate");
	level.var_216db1b0 = namespace_2f06d687::function_22356ba7("temple_patroller_spawners", &function_e8f0e2bd);
	level thread function_f8f4e73e();
	level thread namespace_63b4601c::function_e3420328("temple_ambient_anims", "dogleg_2_at_end");
	level thread namespace_cc27597::function_43718187("cin_ven_05_20_pond_floaters_vign");
	namespace_2f06d687::function_2b37a3c9("drowncivilian_enemy", "targetname", &function_558af5fd, undefined, "cin_ven_05_22_drowncivilian_civdeath_vign", "cin_ven_05_22_drowncivilian_enemyreact_vign", undefined);
	level thread namespace_cc27597::function_43718187("cin_ven_05_22_drowncivilian_vign");
	namespace_2f06d687::function_2b37a3c9("rocksmash_enemy", "targetname", &function_558af5fd, undefined, "cin_ven_05_21_rocksmash_civdeath_vign", "cin_ven_05_21_rocksmash_enemyreact_vign", "rocksmash_boulder");
	var_6a07eb6c = [];
	var_6a07eb6c[0] = "rocksmash_civilian";
	namespace_cc27597::function_8f9f34e0("cin_ven_05_21_rocksmash_vign", &namespace_63b4601c::function_65a61b78, "play", var_6a07eb6c);
	level thread namespace_cc27597::function_43718187("cin_ven_05_21_rocksmash_vign");
	namespace_2f06d687::function_2b37a3c9("slicendice_enemy", "targetname", &function_558af5fd, undefined, "cin_ven_05_23_slicendice_civdeath_vign", undefined, "slicendice_machete");
	var_6a07eb6c = [];
	var_6a07eb6c[0] = "slicendice_civilian";
	namespace_cc27597::function_8f9f34e0("cin_ven_05_23_slicendice_vign", &namespace_63b4601c::function_65a61b78, "play", var_6a07eb6c);
	level thread namespace_cc27597::function_43718187("cin_ven_05_23_slicendice_vign");
	namespace_2f06d687::function_2b37a3c9("beatdown_enemy", "targetname", &function_558af5fd, undefined, "cin_ven_05_26_beatdown_civdeath_vign", undefined, undefined);
	level thread namespace_cc27597::function_43718187("cin_ven_05_26_beatdown_vign");
	namespace_2f06d687::function_2b37a3c9("execution_lineup_enemy", "targetname", &function_558af5fd, undefined, "cin_ven_05_24_execution_lineup_civdeath_vign", undefined, undefined);
	level thread namespace_cc27597::function_43718187("cin_ven_05_24_execution_lineup_vign");
	namespace_2f06d687::function_2b37a3c9("ammorestock_en3", "targetname", &function_558af5fd, undefined, undefined, "cin_ven_05_27_ammorestock_enemyreact_vign", undefined);
	level thread namespace_cc27597::function_43718187("cin_ven_05_27_ammorestock_vign");
	namespace_2f06d687::function_2b37a3c9("grassstomp_enemy", "targetname", &function_558af5fd, undefined, "cin_ven_05_28_grassstomp_civdeath_vign", undefined, undefined);
	level thread namespace_cc27597::function_43718187("cin_ven_05_28_grassstomp_vign");
	namespace_2f06d687::function_2b37a3c9("railbeatdown_enemy", "targetname", &function_558af5fd, undefined, "cin_ven_05_29_rail_beatdown_civdeath_vign", "cin_ven_05_29_rail_beatdown_enemyreact_vign", undefined);
	var_6a07eb6c = [];
	var_6a07eb6c[0] = "railbeatdown_civ";
	namespace_cc27597::function_8f9f34e0("cin_ven_05_29_rail_beatdown_vign", &namespace_63b4601c::function_65a61b78, "play", var_6a07eb6c);
	level thread namespace_cc27597::function_43718187("cin_ven_05_29_rail_beatdown_vign");
	namespace_2f06d687::function_2b37a3c9("wallbeatdown_enemy1", "targetname", &function_558af5fd, undefined, "cin_ven_05_32_wall_beatdown_civdeath_vign", "cin_ven_05_32_wall_beatdown_enemyreact_vign", undefined);
	level thread namespace_cc27597::function_43718187("cin_ven_05_32_wall_beatdown_vign");
	level thread function_ea758541("temple_rooftop_sniper_trigger", "targetname");
	var_cbf69fd2 = function_99201f25("temple_stealth_checkpoint_trigger", "targetname");
	foreach(var_4dbf3ae3 in var_cbf69fd2)
	{
		var_4dbf3ae3 thread namespace_63b4601c::function_f9c94344();
	}
	level thread function_68be9dc2();
	var_5d83ea = function_99201f25("temple_spawn_closet_door_pathing_clip", "targetname");
	foreach(var_b340b98b in var_5d83ea)
	{
		var_b340b98b function_14c24d9d();
	}
}

/*
	Name: function_68be9dc2
	Namespace: namespace_628b256b
	Checksum: 0x77A65954
	Offset: 0x1D38
	Size: 0x25F
	Parameters: 0
	Flags: None
*/
function function_68be9dc2()
{
	wait(0.25);
	var_dd48cfe3 = [];
	var_dd48cfe3[var_dd48cfe3.size] = "drowncivilian_civilian";
	var_dd48cfe3[var_dd48cfe3.size] = "rocksmash_civilian";
	var_dd48cfe3[var_dd48cfe3.size] = "slicendice_civilian";
	var_dd48cfe3[var_dd48cfe3.size] = "beatdown_civilian";
	var_dd48cfe3[var_dd48cfe3.size] = "execution_lineup_civ1";
	var_dd48cfe3[var_dd48cfe3.size] = "execution_lineup_civ2";
	var_dd48cfe3[var_dd48cfe3.size] = "execution_lineup_civ3";
	var_dd48cfe3[var_dd48cfe3.size] = "execution_lineup_civ4";
	var_dd48cfe3[var_dd48cfe3.size] = "execution_lineup_civ5";
	var_dd48cfe3[var_dd48cfe3.size] = "execution_lineup_civ6";
	var_dd48cfe3[var_dd48cfe3.size] = "temple_butcher_civilian";
	var_dd48cfe3[var_dd48cfe3.size] = "gateroughup_civilian";
	var_dd48cfe3[var_dd48cfe3.size] = "grassstomp_civ";
	var_dd48cfe3[var_dd48cfe3.size] = "railbeatdown_civ";
	var_dd48cfe3[var_dd48cfe3.size] = "wallbeatdown_civilian";
	foreach(var_aca1a7c8 in var_dd48cfe3)
	{
		var_ad10cf41 = function_99201f25(var_aca1a7c8, "targetname");
		foreach(var_e227e629 in var_ad10cf41)
		{
			var_e227e629 thread namespace_63b4601c::function_f832e2fa();
		}
	}
}

/*
	Name: function_558af5fd
	Namespace: namespace_628b256b
	Checksum: 0xA50A4B90
	Offset: 0x1FA0
	Size: 0x1DB
	Parameters: 4
	Flags: None
*/
function function_558af5fd(var_7131db57, var_1f486a3b, var_90fb7f8f, var_972fd3c0)
{
	self endon("hash_128f8789");
	if(isdefined(var_7131db57))
	{
		self namespace_234a4910::function_4970c8b8(var_7131db57);
	}
	self thread function_c2627018(var_1f486a3b, var_972fd3c0);
	self namespace_82b91a51::function_5b7e3888("alert", "damage");
	if(isdefined(self.var_3d2183f2))
	{
		var_c5deafa2 = function_c20c2e8(self.var_3d2183f2, "script_aigroup");
		foreach(var_6b45b25e in var_c5deafa2)
		{
			if(function_5b49d38c(var_6b45b25e) && var_6b45b25e != self)
			{
				var_6b45b25e notify("hash_78a7a5b9", "combat");
			}
		}
	}
	else if(isdefined(var_972fd3c0))
	{
		level thread function_54c1902c(var_972fd3c0);
	}
	if(isdefined(var_90fb7f8f))
	{
		self function_470f7e4c();
		level thread namespace_cc27597::function_43718187(var_90fb7f8f);
	}
}

/*
	Name: function_c2627018
	Namespace: namespace_628b256b
	Checksum: 0x4B290FD7
	Offset: 0x2188
	Size: 0x83
	Parameters: 2
	Flags: None
*/
function function_c2627018(var_1f486a3b, var_972fd3c0)
{
	self namespace_82b91a51::function_5b7e3888("death", "alert", "damage");
	if(isdefined(var_972fd3c0))
	{
		level thread function_54c1902c(var_972fd3c0);
	}
	if(isdefined(var_1f486a3b))
	{
		level thread namespace_cc27597::function_43718187(var_1f486a3b);
	}
}

/*
	Name: function_e0d6af75
	Namespace: namespace_628b256b
	Checksum: 0x594BFDEA
	Offset: 0x2218
	Size: 0x113
	Parameters: 0
	Flags: None
*/
function function_e0d6af75()
{
	self endon("hash_128f8789");
	self namespace_d84e54db::function_c9e45d52(1);
	self thread function_64cea510();
	self namespace_82b91a51::function_5b7e3888("alert", "fake_alert");
	self namespace_1fb6a2e5::function_f7b61010();
	self function_470f7e4c();
	var_e227e629 = function_6ada35ba("gunpoint_civilian_ai", "targetname");
	if(isdefined(var_e227e629) && function_5b49d38c(var_e227e629))
	{
		var_e227e629 notify("hash_4433b565");
	}
	wait(0.1);
	self namespace_d84e54db::function_c9e45d52(0);
}

/*
	Name: function_64cea510
	Namespace: namespace_628b256b
	Checksum: 0xC8542168
	Offset: 0x2338
	Size: 0x147
	Parameters: 0
	Flags: None
*/
function function_64cea510()
{
	self waittill("hash_128f8789");
	var_e227e629 = function_6ada35ba("gunpoint_civilian_ai", "targetname");
	if(isdefined(var_e227e629) && function_5b49d38c(var_e227e629))
	{
		var_e227e629 notify("hash_4433b565");
	}
	if(isdefined(self))
	{
		var_8b1c9508 = self function_d48f2ab3("tag_flash");
		if(isdefined(var_8b1c9508))
		{
			var_91627c91 = var_8b1c9508 + function_bc7ce905(self function_cd1d99bd("tag_flash")) * 120;
			if(isdefined(var_8b1c9508) && isdefined(var_91627c91))
			{
				var_22efecfd = function_87f3c622(function_c4d5ec1f("shotgun_pump"), var_8b1c9508, var_91627c91);
			}
		}
	}
}

/*
	Name: function_bddcb39c
	Namespace: namespace_628b256b
	Checksum: 0xAB435EE5
	Offset: 0x2488
	Size: 0x17B
	Parameters: 0
	Flags: None
*/
function function_bddcb39c()
{
	self endon("hash_128f8789");
	self.var_3e94206a = "allies";
	self.var_8aa848ca = 1;
	self namespace_d84e54db::function_c9e45d52(1);
	self namespace_d84e54db::function_b4f5e3b9(1);
	self namespace_d84e54db::function_ceb883cd("panic", 0);
	self.var_3a90f16b = 1;
	self namespace_82b91a51::function_5b7e3888("damage", "alert", "fake_death");
	var_6b45b25e = function_6ada35ba("gunpoint_enemy_ai", "targetname");
	if(isdefined(var_6b45b25e) && function_5b49d38c(var_6b45b25e))
	{
		var_6b45b25e notify("hash_da6a4775");
	}
	if(isdefined(self.var_958c7633))
	{
		namespace_82b91a51::function_4b741fdc(self);
	}
	self.var_2dd707 = 1;
	self.var_bab9655e = 1;
	self function_2992720d();
	self function_d7a0a9d8();
}

/*
	Name: function_54c1902c
	Namespace: namespace_628b256b
	Checksum: 0x9E622472
	Offset: 0x2610
	Size: 0x8B
	Parameters: 1
	Flags: None
*/
function function_54c1902c(var_8b6fbf68)
{
	if(isdefined(var_8b6fbf68))
	{
		var_8b6fbf68 = function_6ada35ba(var_8b6fbf68, "targetname");
		if(isdefined(var_8b6fbf68))
		{
			var_8b6fbf68 function_470f7e4c();
			var_8b6fbf68 function_822f0cc5(var_8b6fbf68.var_722885f3, VectorScale((0, 0, 1), 0.1));
		}
	}
}

/*
	Name: function_8e6475bd
	Namespace: namespace_628b256b
	Checksum: 0x5B05475D
	Offset: 0x26A8
	Size: 0x87
	Parameters: 0
	Flags: None
*/
function function_8e6475bd()
{
	self endon("hash_128f8789");
	self.var_3e94206a = "allies";
	self.var_8aa848ca = 1;
	self namespace_d84e54db::function_c9e45d52(1);
	self namespace_d84e54db::function_b4f5e3b9(1);
	self namespace_d84e54db::function_ceb883cd("panic", 0);
	self.var_3a90f16b = 1;
}

/*
	Name: function_e8f0e2bd
	Namespace: namespace_628b256b
	Checksum: 0xE6499894
	Offset: 0x2738
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_e8f0e2bd()
{
	self thread namespace_63b4601c::function_b62b56ba();
	self function_c2931a36("amb_patrol_walla");
	self thread namespace_7244fa9b::function_7df1081d();
}

/*
	Name: function_47dc557f
	Namespace: namespace_628b256b
	Checksum: 0x8BF68457
	Offset: 0x2798
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_47dc557f()
{
	level.var_47dc557f = namespace_2f06d687::function_22356ba7("temple_wasps", &function_a044ee0);
}

/*
	Name: function_a044ee0
	Namespace: namespace_628b256b
	Checksum: 0x5F66F194
	Offset: 0x27D8
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_a044ee0()
{
	var_850a4b14 = function_6ada35ba("temple_wasp_gv", "targetname");
	if(isdefined(var_850a4b14))
	{
		self function_e11ce512();
		self function_fb5720f7();
		self function_169cc712(var_850a4b14);
	}
}

/*
	Name: function_a0ef55a8
	Namespace: namespace_628b256b
	Checksum: 0x56CEED60
	Offset: 0x2860
	Size: 0x163
	Parameters: 0
	Flags: None
*/
function function_a0ef55a8()
{
	level endon("hash_8a3b89d3");
	self endon("hash_128f8789");
	self thread function_f6b53854();
	self namespace_d84e54db::function_b4f5e3b9(1);
	self namespace_d84e54db::function_c9e45d52(1);
	self namespace_6f7b2095::function_54bdb053();
	self namespace_d84e54db::function_ceb883cd("cqb", 1);
	self.var_5fb3c5fe = 1;
	self namespace_76d95162::function_d9f49fba(0);
	level namespace_cc27597::function_43718187("cin_ven_05_10_templearrival_vign");
	self.var_e844240d = 1;
	self.var_8477d3e2 = 1;
	var_90ca1fdd = function_b4cb3503("temple_hendricks_node_05", "targetname");
	self function_169cc712(var_90ca1fdd, 1);
	level notify("hash_899bbe30");
	wait(1);
	self.var_e844240d = 0;
	self.var_8477d3e2 = 0;
}

/*
	Name: function_f6b53854
	Namespace: namespace_628b256b
	Checksum: 0xE855E725
	Offset: 0x29D0
	Size: 0x2D3
	Parameters: 0
	Flags: None
*/
function function_f6b53854()
{
	level namespace_ad23e503::function_1ab5ebec("stealth_discovered");
	level namespace_ad23e503::function_74d6b22f("temple_stealth_broken");
	self.var_e844240d = 0;
	self.var_8477d3e2 = 0;
	self namespace_d84e54db::function_b4f5e3b9(0);
	self namespace_d84e54db::function_c9e45d52(0);
	self.var_25d14901 = 0;
	self function_e11ce512();
	self namespace_d84e54db::function_ceb883cd("cqb", 0);
	self.var_5fb3c5fe = 0;
	self.var_df53bc6 = self.var_15dfd6c;
	self.var_15dfd6c = 0.1;
	namespace_d0ef8521::function_74d6b22f("cp_level_vengeance_support", self);
	self thread namespace_63b4601c::function_5a886ae0();
	level namespace_ad23e503::function_d3de6822("stealth_discovered");
	self notify("hash_90a20e6d");
	self namespace_d84e54db::function_b4f5e3b9(1);
	self namespace_d84e54db::function_c9e45d52(1);
	self.var_5fb3c5fe = 1;
	self namespace_76d95162::function_d9f49fba(0);
	self.var_15dfd6c = self.var_df53bc6;
	self function_e11ce512();
	self function_fb5720f7();
	self namespace_6f7b2095::function_54bdb053();
	var_d7b9ba9b = function_b4cb3503("temple_end_hendricks_node", "targetname");
	self.var_6130afef = 1;
	self.var_25d14901 = 1;
	self.var_7dfaf62 = 32;
	self function_156339b6(var_d7b9ba9b, 1);
	level namespace_ad23e503::function_9d134160("stealth_combat");
	self waittill("hash_41d1aaf0");
	self.var_6130afef = 0;
	self.var_25d14901 = 0;
	level namespace_ad23e503::function_74d6b22f("temple_hendricks_done");
}

/*
	Name: function_4002969a
	Namespace: namespace_628b256b
	Checksum: 0xA6D4BAC4
	Offset: 0x2CB0
	Size: 0x19B
	Parameters: 0
	Flags: None
*/
function function_4002969a()
{
	level namespace_ad23e503::function_1ab5ebec("all_players_at_temple_exit");
	if(!level namespace_ad23e503::function_7922262b("hendricks_near_dogleg_2"))
	{
		var_f901131c = function_fe0cfd2e("hendricks_temple_end_teleport_node", "targetname");
		var_90ca1fdd = function_e7bdc1a1(level.var_2fd26037.var_722885f3, var_f901131c);
		var_e52b590a = 0.75;
		if(namespace_63b4601c::function_8c6350db(level.var_2fd26037.var_722885f3 + VectorScale((0, 0, 1), 48), var_e52b590a, 1))
		{
			level.var_2fd26037 function_9869ab67(var_90ca1fdd.var_722885f3, var_90ca1fdd.var_6ab6f4fd);
			wait(0.1);
			var_d7b9ba9b = function_b4cb3503("temple_end_hendricks_node", "targetname");
			self.var_6130afef = 1;
			self.var_25d14901 = 1;
			self.var_7dfaf62 = 32;
			self function_156339b6(var_d7b9ba9b, 1);
		}
	}
}

/*
	Name: function_578145a3
	Namespace: namespace_628b256b
	Checksum: 0xCBE0D6DA
	Offset: 0x2E58
	Size: 0xBBB
	Parameters: 0
	Flags: None
*/
function function_578145a3()
{
	var_1044cded = 0;
	var_c957f6b6 = 3;
	for(var_c957f6b6 = 3; var_c957f6b6 >= 2; var_c957f6b6--)
	{
		var_26b3981a = function_6ada35ba("temple_axis_gv_0" + var_c957f6b6, "targetname");
		var_42cc32ad = function_f1c7b73f(var_26b3981a);
		if(isdefined(var_42cc32ad) && var_42cc32ad)
		{
			var_1044cded = 1;
			break;
		}
	}
	var_17994622 = function_b8494651("axis");
	if(isdefined(var_1044cded) && var_1044cded)
	{
		var_7a5bdffc = function_6ada35ba("temple_ally_gv_0" + var_c957f6b6, "targetname");
		var_a2d2b3b = function_6ada35ba("temple_axis_gv_0" + var_c957f6b6, "targetname");
		var_fcf2483c = function_6ada35ba("temple_axis_cleanup_volume_0" + var_c957f6b6, "targetname");
		level thread function_620fbb8a(var_17994622, var_fcf2483c);
	}
	else
	{
		var_7a5bdffc = function_6ada35ba("temple_ally_gv_01", "targetname");
		var_a2d2b3b = function_6ada35ba("temple_axis_gv_01", "targetname");
	}
	foreach(var_6b45b25e in var_17994622)
	{
		if(function_5b49d38c(var_6b45b25e))
		{
			var_6b45b25e function_e11ce512();
			var_6b45b25e function_fb5720f7();
			var_6b45b25e function_169cc712(var_a2d2b3b);
		}
	}
	if(isdefined(var_1044cded) && var_1044cded)
	{
		var_f901131c = function_fe0cfd2e("hendircks_forced_advance_0" + var_c957f6b6, "targetname");
		var_90ca1fdd = namespace_84970cc4::function_47d18840(var_f901131c);
		level.var_2fd26037 function_9869ab67(var_90ca1fdd.var_722885f3, var_90ca1fdd.var_6ab6f4fd);
		wait(0.1);
	}
	level.var_2fd26037 function_e11ce512();
	level.var_2fd26037 function_fb5720f7();
	level.var_2fd26037 function_169cc712(var_7a5bdffc);
	var_7a5bdffc = function_6ada35ba("temple_ally_gv_02", "targetname");
	var_a2d2b3b = function_6ada35ba("temple_axis_gv_02", "targetname");
	while(1)
	{
		if(isdefined(var_1044cded) && var_1044cded && var_c957f6b6 >= 2)
		{
			break;
		}
		var_457b0e7 = function_b8494651("axis");
		if(isdefined(var_457b0e7) && var_457b0e7.size <= var_17994622.size * 0.8)
		{
			foreach(var_6b45b25e in var_457b0e7)
			{
				if(function_5b49d38c(var_6b45b25e))
				{
					var_6b45b25e function_e11ce512();
					var_6b45b25e function_fb5720f7();
					var_6b45b25e function_169cc712(var_a2d2b3b);
				}
			}
			level.var_2fd26037 function_e11ce512();
			level.var_2fd26037 function_fb5720f7();
			level.var_2fd26037 function_169cc712(var_7a5bdffc);
			break;
		}
		wait(0.1);
	}
	var_7a5bdffc = function_6ada35ba("temple_ally_gv_03", "targetname");
	var_a2d2b3b = function_6ada35ba("temple_axis_gv_03", "targetname");
	while(1)
	{
		if(isdefined(var_1044cded) && var_1044cded && var_c957f6b6 >= 3)
		{
			break;
		}
		var_457b0e7 = function_b8494651("axis");
		if(isdefined(var_457b0e7) && var_457b0e7.size <= var_17994622.size * 0.6)
		{
			foreach(var_6b45b25e in var_457b0e7)
			{
				if(function_5b49d38c(var_6b45b25e))
				{
					var_6b45b25e function_e11ce512();
					var_6b45b25e function_fb5720f7();
					var_6b45b25e function_169cc712(var_a2d2b3b);
				}
			}
			level.var_2fd26037 function_e11ce512();
			level.var_2fd26037 function_fb5720f7();
			level.var_2fd26037 function_169cc712(var_7a5bdffc);
			break;
		}
		wait(0.1);
	}
	var_7a5bdffc = function_6ada35ba("temple_ally_gv_04", "targetname");
	var_a2d2b3b = function_6ada35ba("temple_axis_gv_04", "targetname");
	while(1)
	{
		var_457b0e7 = function_b8494651("axis");
		if(isdefined(var_457b0e7) && var_457b0e7.size <= var_17994622.size * 0.4)
		{
			foreach(var_6b45b25e in var_457b0e7)
			{
				if(function_5b49d38c(var_6b45b25e))
				{
					var_6b45b25e function_e11ce512();
					var_6b45b25e function_fb5720f7();
					var_6b45b25e function_169cc712(var_a2d2b3b);
				}
			}
			level.var_2fd26037 function_e11ce512();
			level.var_2fd26037 function_fb5720f7();
			level.var_2fd26037 function_169cc712(var_7a5bdffc);
			break;
		}
		wait(0.1);
	}
	while(1)
	{
		var_457b0e7 = function_b8494651("axis");
		if(isdefined(var_457b0e7) && var_457b0e7.size <= var_17994622.size * 0.2)
		{
			foreach(var_6b45b25e in var_457b0e7)
			{
				if(isdefined(var_6b45b25e) && function_5b49d38c(var_6b45b25e))
				{
					if(function_85e4c3b3(var_6b45b25e))
					{
						var_c1cd872a = namespace_14b42b8a::function_7faf4c39("temple_wasp_retreat_nodes", "targetname");
						var_90ca1fdd = namespace_84970cc4::function_47d18840(var_c1cd872a);
						var_6b45b25e thread namespace_63b4601c::function_3d5f97bd(var_90ca1fdd);
					}
					var_90ca1fdd = function_f1ec6341("temple_retreat_nodes", "targetname", var_6b45b25e.var_722885f3, 4096);
					if(isdefined(var_90ca1fdd[0]))
					{
						if(var_6b45b25e namespace_d84e54db::function_18775385("sprint"))
						{
							var_6b45b25e namespace_d84e54db::function_ceb883cd("sprint", 1);
						}
						var_6b45b25e thread namespace_63b4601c::function_3d5f97bd(var_90ca1fdd[0]);
						continue;
					}
					var_e3b635fb = function_84970cc4(var_6b45b25e);
					level thread namespace_63b4601c::function_ff5f379(var_e3b635fb, 1024);
				}
			}
			level namespace_ad23e503::function_74d6b22f("combat_enemies_retreating");
			level namespace_ad23e503::function_74d6b22f("disable_temple_robot_triggers");
			break;
		}
		wait(0.1);
	}
}

/*
	Name: function_f1c7b73f
	Namespace: namespace_628b256b
	Checksum: 0x4CEA7C11
	Offset: 0x3A20
	Size: 0xAB
	Parameters: 1
	Flags: None
*/
function function_f1c7b73f(var_4dbf3ae3)
{
	foreach(var_5dc5e20a in function_3f10449f())
	{
		if(!var_5dc5e20a function_32fa5072(var_4dbf3ae3))
		{
			return 0;
		}
	}
	return 1;
}

/*
	Name: function_620fbb8a
	Namespace: namespace_628b256b
	Checksum: 0xEAA41B3D
	Offset: 0x3AD8
	Size: 0x14B
	Parameters: 2
	Flags: None
*/
function function_620fbb8a(var_7cd99f10, var_67825717)
{
	var_e3b635fb = [];
	foreach(var_d84e54db in var_7cd99f10)
	{
		if(isdefined(var_d84e54db) && function_5b49d38c(var_d84e54db) && var_d84e54db function_32fa5072(var_67825717))
		{
			if(!isdefined(var_e3b635fb))
			{
				var_e3b635fb = [];
			}
			else if(!function_6e2770d8(var_e3b635fb))
			{
				var_e3b635fb = function_84970cc4(var_e3b635fb);
			}
			var_e3b635fb[var_e3b635fb.size] = var_d84e54db;
		}
	}
	level thread namespace_63b4601c::function_ff5f379(var_e3b635fb, 512);
}

/*
	Name: function_899bbe30
	Namespace: namespace_628b256b
	Checksum: 0x89177B15
	Offset: 0x3C30
	Size: 0x17B
	Parameters: 0
	Flags: None
*/
function function_899bbe30()
{
	level endon("hash_8a3b89d3");
	level.var_2fd26037 endon("hash_128f8789");
	level waittill("hash_899bbe30");
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a thread namespace_63b4601c::function_51caee84("temple_end");
	}
	level namespace_ad23e503::function_74d6b22f("show_temple_gather");
	namespace_ad06727a::function_26f24c93(1);
	namespace_ad23e503::function_1ab5ebec("tmeple_stealth_motivator_01");
	namespace_63b4601c::function_ee75acde("hend_stick_to_the_shadows_0");
	namespace_ad23e503::function_1ab5ebec("tmeple_stealth_motivator_02");
	namespace_63b4601c::function_ee75acde("hend_lots_of_movement_dow_1");
	namespace_ad23e503::function_1ab5ebec("tmeple_stealth_motivator_03");
	namespace_63b4601c::function_ee75acde("hend_keep_moving_they_ha_0");
}

/*
	Name: function_a86ac59d
	Namespace: namespace_628b256b
	Checksum: 0x46002196
	Offset: 0x3DB8
	Size: 0x1FB
	Parameters: 0
	Flags: None
*/
function function_a86ac59d()
{
	level endon("hash_29964e40");
	level namespace_ad23e503::function_1ab5ebec("stealth_discovered");
	namespace_84970cc4::function_966ecb29(function_b8494651("axis"), &function_329c89f);
	level thread namespace_63b4601c::function_e6399870("temple_molotov_trigger", "script_noteworthy", 2);
	level namespace_ad23e503::function_74d6b22f("enable_temple_robot_triggers");
	var_b264f09 = function_99201f25("temple_robot_trigger", "targetname");
	namespace_84970cc4::function_966ecb29(var_b264f09, &function_dd797045);
	namespace_ad06727a::function_26f24c93(0);
	level thread namespace_63b4601c::function_80840124(&function_e4612dd6);
	level thread function_578145a3();
	while(1)
	{
		var_35ef0ec1 = function_b8494651("axis");
		if(isdefined(var_35ef0ec1) && var_35ef0ec1.size <= 0 || !isdefined(var_35ef0ec1))
		{
			break;
		}
		else
		{
			wait(0.1);
		}
	}
	namespace_d0ef8521::function_31cd1834("cp_level_vengeance_support", level.var_2fd26037);
	level namespace_ad23e503::function_9d134160("stealth_discovered");
}

/*
	Name: function_329c89f
	Namespace: namespace_628b256b
	Checksum: 0x838FBE86
	Offset: 0x3FC0
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_329c89f()
{
	self function_39419ae5();
}

/*
	Name: function_dd797045
	Namespace: namespace_628b256b
	Checksum: 0x48D27CAE
	Offset: 0x3FE8
	Size: 0x5E3
	Parameters: 0
	Flags: None
*/
function function_dd797045()
{
	level endon("hash_29964e40");
	level endon("hash_fecd096c");
	self endon("hash_128f8789");
	while(1)
	{
		self waittill("hash_4dbf3ae3");
		var_35ef0ec1 = function_b8494651("axis");
		var_35ef0ec1 = namespace_84970cc4::function_b87262e(var_35ef0ec1);
		if(var_35ef0ec1.size > 37)
		{
			wait(2);
			continue;
		}
		var_45db3dab = function_6ada35ba(self.var_b07228b6 + "_volume", "targetname");
		if(isdefined(var_45db3dab))
		{
			var_422e7ca6 = function_99201f25(self.var_b07228b6, "targetname");
			foreach(var_cd69a81f in var_422e7ca6)
			{
				var_cd69a81f.var_c584775c = 1;
				var_cd69a81f.var_255b9315 = 1;
			}
			var_40e28af4 = function_99201f25("temple_spawn_closet_door", "targetname");
			foreach(var_79c2aae5 in var_40e28af4)
			{
				var_6c37ffe1 = self.var_b07228b6 + "_closet";
				if(isdefined(var_79c2aae5.var_caae374e) && var_79c2aae5.var_caae374e == var_6c37ffe1)
				{
					var_8b006810 = var_79c2aae5;
					break;
				}
			}
			var_d17d5da5 = function_99201f25("temple_spawn_closet_door_clip", "targetname");
			foreach(var_b340b98b in var_d17d5da5)
			{
				var_35f2b287 = self.var_b07228b6 + "_closet";
				if(isdefined(var_b340b98b.var_caae374e) && var_b340b98b.var_caae374e == var_35f2b287)
				{
					var_17c44fc9 = var_b340b98b;
					break;
				}
			}
			var_6e15ff70 = function_99201f25("temple_spawn_closet_door_pathing_clip", "targetname");
			foreach(var_b340b98b in var_6e15ff70)
			{
				var_35f2b287 = self.var_b07228b6 + "_closet";
				if(isdefined(var_b340b98b.var_caae374e) && var_b340b98b.var_caae374e == var_35f2b287)
				{
					var_3cdd15e3 = var_b340b98b;
					break;
				}
			}
			if(isdefined(var_8b006810) && isdefined(var_17c44fc9))
			{
				var_17c44fc9 function_37f7858a(var_8b006810);
			}
			if(isdefined(var_8b006810))
			{
				var_8b006810 function_c0b6566f(var_8b006810.var_6ab6f4fd + VectorScale((0, 1, 0), 90), 1);
			}
			wait(0.5);
			if(isdefined(var_3cdd15e3))
			{
				var_3cdd15e3 function_422037f5();
				wait(0.05);
				var_3cdd15e3 function_de8377bf();
			}
			foreach(var_cd69a81f in var_422e7ca6)
			{
				if(function_5b49d38c(var_cd69a81f))
				{
					var_cd69a81f.var_c584775c = 0;
					var_cd69a81f.var_255b9315 = 0;
				}
			}
			self function_175e6b8e(0);
			break;
		}
	}
}

/*
	Name: function_e4612dd6
	Namespace: namespace_628b256b
	Checksum: 0xD6C6271C
	Offset: 0x45D8
	Size: 0xEB
	Parameters: 0
	Flags: None
*/
function function_e4612dd6()
{
	level endon("hash_29964e40");
	level.var_2fd26037 namespace_76d95162::function_d9f49fba(0);
	var_eb6e35ef = [];
	var_eb6e35ef[0] = "hend_shifting_positions_0";
	var_eb6e35ef[1] = "hend_i_m_dropping_down_to_0";
	var_4e418837 = namespace_84970cc4::function_47d18840(var_eb6e35ef);
	namespace_63b4601c::function_ee75acde(var_4e418837);
	namespace_63b4601c::function_ee75acde("hend_if_we_can_clear_the_0", 4);
	level thread namespace_9fd035::function_14592f48();
	level.var_2fd26037 namespace_76d95162::function_d9f49fba(1);
}

/*
	Name: function_1a289333
	Namespace: namespace_628b256b
	Checksum: 0x99EC1590
	Offset: 0x46D0
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_1a289333()
{
}

/*
	Name: function_299dec58
	Namespace: namespace_628b256b
	Checksum: 0x911F34C1
	Offset: 0x46E0
	Size: 0x83
	Parameters: 4
	Flags: None
*/
function function_299dec58(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	level namespace_ad23e503::function_74d6b22f("temple_end");
	level thread function_c5b8e111();
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_hanging_body_loop_vign_civ07_ropeshort");
}

/*
	Name: function_c5b8e111
	Namespace: namespace_628b256b
	Checksum: 0x8F9585A2
	Offset: 0x4770
	Size: 0x151
	Parameters: 0
	Flags: None
*/
function function_c5b8e111()
{
	if(isdefined(level.var_216db1b0))
	{
		foreach(var_6050ab17 in level.var_216db1b0)
		{
			if(isdefined(var_6050ab17))
			{
				var_6050ab17 namespace_8312dbf::function_180adb28();
				var_6050ab17 function_dc8c8404();
			}
		}
	}
	else if(isdefined(level.var_47dc557f))
	{
		foreach(var_6050ab17 in level.var_47dc557f)
		{
			if(isdefined(var_6050ab17))
			{
				var_6050ab17 function_dc8c8404();
			}
		}
	}
}

/*
	Name: function_7ee71c12
	Namespace: namespace_628b256b
	Checksum: 0xD0A187DC
	Offset: 0x48D0
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_7ee71c12()
{
	var_3f199d98 = function_99201f25("breakable_garden_window", "targetname");
	namespace_84970cc4::function_966ecb29(var_3f199d98, &function_f1d8ca4c);
}

/*
	Name: function_f1d8ca4c
	Namespace: namespace_628b256b
	Checksum: 0x87033EBD
	Offset: 0x4930
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_f1d8ca4c()
{
	self function_8d63f8d0(1);
	self.var_3a90f16b = 10;
	while(1)
	{
		self waittill("hash_f9348fda", var_f9348fda, var_a0ad4f34);
		if(isdefined(var_a0ad4f34) && function_65f192a6(var_a0ad4f34) && isdefined(var_f9348fda))
		{
			self.var_3a90f16b = self.var_3a90f16b - var_f9348fda;
			if(self.var_3a90f16b <= 0)
			{
				self function_dc8c8404();
				break;
			}
		}
	}
}

/*
	Name: function_f8f4e73e
	Namespace: namespace_628b256b
	Checksum: 0xA384A0FE
	Offset: 0x49F8
	Size: 0x30B
	Parameters: 0
	Flags: None
*/
function function_f8f4e73e()
{
	var_cd0466c3 = namespace_14b42b8a::function_7922262b("dogleg_2_intro_obj_struct");
	if(isdefined(var_cd0466c3))
	{
		namespace_d0ef8521::function_74d6b22f("cp_level_vengeance_goto_dogleg_2", var_cd0466c3);
	}
	namespace_d0ef8521::function_50ccee8d("cp_level_vengeance_goto_dogleg_2");
	level namespace_ad23e503::function_43ac000b(function_84970cc4("show_temple_gather", "stealth_discovered"));
	namespace_d0ef8521::function_48f26766("cp_level_vengeance_goto_dogleg_2");
	var_f8f4e73e = function_6ada35ba("dogleg_2_intro_trigger", "script_noteworthy");
	if(isdefined(var_f8f4e73e))
	{
		level thread namespace_63b4601c::function_8a63fd6b(var_f8f4e73e, "cp_level_vengeance_goto_dogleg_2", undefined, "all_players_at_temple_exit", "cp_level_vengeance_clear_area");
	}
	level namespace_ad23e503::function_1ab5ebec("all_players_at_temple_exit");
	namespace_d0ef8521::function_50ccee8d("cp_level_vengeance_goto_dogleg_2");
	if(level namespace_ad23e503::function_7922262b("temple_stealth_broken"))
	{
		level namespace_ad23e503::function_1ab5ebec("temple_hendricks_done");
	}
	level.var_2fd26037 thread namespace_63b4601c::function_5fbec645("hend_open_it_up_i_ll_cov_0");
	level thread function_cf782b84();
	var_70f21d83 = namespace_14b42b8a::function_7922262b("tag_align_dogleg_2", "targetname");
	var_70f21d83 thread namespace_cc27597::function_43718187("cin_ven_05_65_deadcivilians_vign");
	var_277f35c0 = function_b4cb3503("hendricks_dogleg_2_stairs", "targetname");
	level waittill("hash_ad75a4f1");
	level thread function_29e96a35();
	if(level namespace_ad23e503::function_7922262b("temple_stealth_broken"))
	{
		level waittill("hash_9fb1ff75");
		level.var_2fd26037 function_169cc712(var_277f35c0, 1);
	}
	else
	{
		wait(1.5);
		level thread function_37d4d605();
		var_70f21d83 namespace_cc27597::function_c35e6aab("cin_ven_05_70_dogleg2_takedown_vign");
	}
	level namespace_ad23e503::function_74d6b22f("dogleg_2_begin");
}

/*
	Name: function_29e96a35
	Namespace: namespace_628b256b
	Checksum: 0xCDD34A40
	Offset: 0x4D10
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_29e96a35()
{
	level.var_2fd26037 notify("hash_6f33cd57");
	level.var_2fd26037.var_5d9fbd2d = 0;
	if(level namespace_ad23e503::function_7922262b("temple_stealth_broken"))
	{
		level waittill("hash_9fb1ff75");
		level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_you_sure_you_don_t_w_0");
	}
	else
	{
		level waittill("hash_132639c7");
		level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_you_sure_you_don_t_w_0", 1);
	}
	level namespace_71b8dba1::function_13b3b16a("plyr_not_a_chance_hendri_0");
}

/*
	Name: function_38bcd0
	Namespace: namespace_628b256b
	Checksum: 0x34C60F6D
	Offset: 0x4DF0
	Size: 0x173
	Parameters: 0
	Flags: None
*/
function function_38bcd0()
{
	var_f92a03e7 = function_6ada35ba("dogleg_2_door_entry_trigger", "targetname");
	var_f92a03e7 function_175e6b8e(0);
	var_71678477 = function_6ada35ba("dogleg_2_entry_door_lf", "targetname");
	var_1d746940 = function_6ada35ba(var_71678477.var_b07228b6, "targetname");
	var_1d746940 function_14c24d9d();
	var_b8e4988b = function_6ada35ba("dogleg_2_entry_door_rt", "targetname");
	var_4a669fbc = function_6ada35ba(var_b8e4988b.var_b07228b6, "targetname");
	var_4a669fbc function_14c24d9d();
	var_35a1e4f8 = namespace_14b42b8a::function_7922262b("tag_align_dogleg_2_door", "targetname");
	var_35a1e4f8 thread namespace_cc27597::function_c35e6aab("cin_ven_05_60_officedoor_1st");
}

/*
	Name: function_cf782b84
	Namespace: namespace_628b256b
	Checksum: 0xDA8C4721
	Offset: 0x4F70
	Size: 0x39B
	Parameters: 0
	Flags: None
*/
function function_cf782b84()
{
	var_f92a03e7 = function_6ada35ba("dogleg_2_door_entry_trigger", "targetname");
	var_f92a03e7 function_175e6b8e(1);
	var_ca0e9b65 = namespace_82b91a51::function_14518e76(var_f92a03e7, &"cp_prompt_enter_ven_doors", &"CP_MI_SING_VENGEANCE_HINT_OPEN", &function_863781f2);
	namespace_d0ef8521::function_74d6b22f("cp_level_vengeance_open_dogleg_2_menu");
	level notify("hash_479fadce");
	var_71678477 = function_6ada35ba("dogleg_2_entry_door_lf", "targetname");
	var_1d746940 = function_6ada35ba(var_71678477.var_b07228b6, "targetname");
	var_71678477.var_b691b9cf = "dogleg_2_entry_door_lf";
	var_71678477.var_38a1d6db = var_71678477.var_6ab6f4fd;
	var_71678477.var_b1482eb5 = var_71678477.var_722885f3;
	var_b8e4988b = function_6ada35ba("dogleg_2_entry_door_rt", "targetname");
	var_4a669fbc = function_6ada35ba(var_b8e4988b.var_b07228b6, "targetname");
	var_b8e4988b.var_b691b9cf = "dogleg_2_entry_door_rt";
	var_b8e4988b.var_38a1d6db = var_b8e4988b.var_6ab6f4fd;
	var_b8e4988b.var_b1482eb5 = var_b8e4988b.var_722885f3;
	var_1d746940 function_37f7858a(var_71678477);
	var_4a669fbc function_37f7858a(var_b8e4988b);
	level thread namespace_63b4601c::function_8a63fd6b(var_f92a03e7, undefined, "cp_level_vengeance_open_dogleg_2_menu", "dogleg_2_entry_door_opening", "cp_level_vengeance_clear_area", var_ca0e9b65);
	level waittill("hash_ad75a4f1");
	var_ca0e9b65 namespace_a230c2b1::function_e54c54c3();
	namespace_d0ef8521::function_50ccee8d("cp_level_vengeance_open_dogleg_2_menu");
	level waittill("hash_c4bb0520");
	if(!level namespace_ad23e503::function_7922262b("temple_stealth_broken"))
	{
		var_71678477 function_470f7e4c();
		var_71678477.var_6ab6f4fd = var_71678477.var_38a1d6db;
		var_71678477.var_722885f3 = var_71678477.var_b1482eb5;
		var_b8e4988b function_470f7e4c();
		var_b8e4988b.var_6ab6f4fd = var_b8e4988b.var_38a1d6db;
		var_b8e4988b.var_722885f3 = var_b8e4988b.var_b1482eb5;
	}
	else
	{
		var_1d746940 function_de8377bf();
		var_4a669fbc function_de8377bf();
	}
}

/*
	Name: function_863781f2
	Namespace: namespace_628b256b
	Checksum: 0x48D0F0A2
	Offset: 0x5318
	Size: 0x19D
	Parameters: 1
	Flags: None
*/
function function_863781f2(var_6bfe1586)
{
	level.var_67e1f60e = undefined;
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		if(isdefined(var_5dc5e20a.var_b9e5210f))
		{
			var_5dc5e20a.var_b9e5210f = undefined;
		}
	}
	namespace_1d795d47::function_be8adfb8("temple");
	var_35a1e4f8 = namespace_14b42b8a::function_7922262b("tag_align_dogleg_2_door", "targetname");
	if(level namespace_ad23e503::function_7922262b("temple_stealth_broken"))
	{
		var_35a1e4f8 thread namespace_cc27597::function_43718187("cin_ven_05_60_officedoor_1st", var_6bfe1586);
	}
	else
	{
		namespace_63b4601c::function_ac2b4535("cin_ven_05_60_officedoor_1st_shared", "dogleg_2_entrance_teleport");
		var_35a1e4f8 thread namespace_cc27597::function_43718187("cin_ven_05_60_officedoor_1st_shared", var_6bfe1586);
	}
	level notify("hash_ad75a4f1");
	var_35a1e4f8 waittill("hash_accb9cfa");
	level notify("hash_9fb1ff75");
}

/*
	Name: function_37d4d605
	Namespace: namespace_628b256b
	Checksum: 0x4010AE1E
	Offset: 0x54C0
	Size: 0xF1
	Parameters: 0
	Flags: None
*/
function function_37d4d605()
{
	level waittill("hash_132639c7");
	var_c13b7e2a = namespace_14b42b8a::function_7faf4c39("dogleg_2_glass_break", "targetname");
	namespace_80983c42::function_80983c42("dogleg_2_railing_break");
	foreach(var_d64f5bac in var_c13b7e2a)
	{
		function_be97adee(var_d64f5bac.var_722885f3, 38, 200, 175);
	}
}

/*
	Name: function_ca660ef7
	Namespace: namespace_628b256b
	Checksum: 0xA0BDF0BA
	Offset: 0x55C0
	Size: 0x101
	Parameters: 0
	Flags: None
*/
function function_ca660ef7()
{
	self endon("hash_128f8789");
	level namespace_ad23e503::function_1ab5ebec("stealth_discovered");
	self.var_a1ed1ed1 = 512;
	var_eaf20b66 = function_fe0cfd2e(self.var_caae374e, "targetname");
	foreach(var_90ca1fdd in var_eaf20b66)
	{
		self namespace_69ee7109::function_da308a83(var_90ca1fdd.var_722885f3, 4000, 8000);
	}
}

/*
	Name: function_ea758541
	Namespace: namespace_628b256b
	Checksum: 0x2215ACF5
	Offset: 0x56D0
	Size: 0x5B
	Parameters: 2
	Flags: None
*/
function function_ea758541(var_4be20d44, var_f54b9c82)
{
	var_fc0a0636 = function_99201f25(var_4be20d44, var_f54b9c82);
	namespace_84970cc4::function_966ecb29(var_fc0a0636, &function_8f9d056c);
}

/*
	Name: function_3bb1295b
	Namespace: namespace_628b256b
	Checksum: 0x4F35C107
	Offset: 0x5738
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_3bb1295b()
{
	var_35ef0ec1 = function_b8494651("axis");
	var_35ef0ec1 = function_57efbe1(var_35ef0ec1, self.var_722885f3);
	foreach(var_6b45b25e in var_35ef0ec1)
	{
		if(isdefined(var_6b45b25e) && function_5b49d38c(var_6b45b25e) && isdefined(var_6b45b25e.var_9eb700da))
		{
			return var_6b45b25e;
		}
	}
}

/*
	Name: function_8f9d056c
	Namespace: namespace_628b256b
	Checksum: 0xABF12506
	Offset: 0x5838
	Size: 0x6F
	Parameters: 0
	Flags: None
*/
function function_8f9d056c()
{
	self endon("hash_128f8789");
	level endon("hash_8a3b89d3");
	while(1)
	{
		self waittill("hash_4dbf3ae3", var_5dc5e20a);
		if(function_65f192a6(var_5dc5e20a))
		{
			self function_a1a65fdc(var_5dc5e20a);
		}
	}
}

/*
	Name: function_a1a65fdc
	Namespace: namespace_628b256b
	Checksum: 0xCD132F91
	Offset: 0x58B0
	Size: 0x2B7
	Parameters: 1
	Flags: None
*/
function function_a1a65fdc(var_5dc5e20a)
{
	var_5dc5e20a endon("hash_3f7b661c");
	if(isdefined(var_5dc5e20a.var_15f789fb) && var_5dc5e20a.var_15f789fb == self)
	{
		return;
	}
	var_c2918075 = GetTime();
	if(isdefined(var_5dc5e20a.var_496772e9))
	{
		var_c2918075 = GetTime() - var_5dc5e20a.var_496772e9;
	}
	var_d3e8dab = -1;
	if(isdefined(var_5dc5e20a.var_18091778))
	{
		var_d3e8dab = function_cb3d1c9b(var_5dc5e20a.var_722885f3, var_5dc5e20a.var_18091778);
	}
	var_5dc5e20a.var_15f789fb = self;
	var_5dc5e20a.var_496772e9 = GetTime();
	var_5dc5e20a thread function_b321fac9(self);
	if(var_c2918075 < 5000 && var_d3e8dab > 0 && var_d3e8dab > 10000)
	{
		if(!(isdefined(var_5dc5e20a.var_b9e5210f) && var_5dc5e20a.var_b9e5210f))
		{
			var_2dd18bed = [];
			var_2dd18bed[0] = "hend_get_off_the_rooftops_0";
			var_2dd18bed[1] = "hend_stay_off_the_rooftop_0";
			var_2dd18bed[2] = "hend_they_re_going_to_spo_0";
			var_5dc5e20a thread namespace_63b4601c::function_ee75acde(namespace_84970cc4::function_47d18840(var_2dd18bed), 0, undefined, var_5dc5e20a);
		}
		var_5dc5e20a.var_b9e5210f = 1;
		wait(4);
		if(isdefined(var_5dc5e20a.var_15f789fb) && !var_5dc5e20a function_32fa5072(var_5dc5e20a.var_15f789fb))
		{
			var_5dc5e20a.var_b9e5210f = 0;
			return;
		}
		var_6b45b25e = var_5dc5e20a function_3bb1295b();
		if(isdefined(var_6b45b25e) && isdefined(var_6b45b25e.var_9eb700da))
		{
			var_6b45b25e.var_9eb700da namespace_7244fa9b::function_b77b41d1(var_6b45b25e function_501eb072(), var_5dc5e20a, var_6b45b25e);
		}
	}
}

/*
	Name: function_b321fac9
	Namespace: namespace_628b256b
	Checksum: 0x68223329
	Offset: 0x5B70
	Size: 0x83
	Parameters: 1
	Flags: None
*/
function function_b321fac9(var_4dbf3ae3)
{
	self notify("hash_b321fac9");
	self endon("hash_b321fac9");
	self endon("hash_128f8789");
	self endon("hash_643a7daf");
	while(1)
	{
		if(self function_32fa5072(var_4dbf3ae3))
		{
			self.var_18091778 = self.var_722885f3;
		}
		else
		{
			return;
		}
		wait(0.05);
	}
}

/*
	Name: function_591ead63
	Namespace: namespace_628b256b
	Checksum: 0x9968D547
	Offset: 0x5C00
	Size: 0x9F
	Parameters: 0
	Flags: None
*/
function function_591ead63()
{
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		if(isdefined(var_5dc5e20a.var_b9e5210f) && var_5dc5e20a.var_b9e5210f)
		{
			return 0;
		}
	}
	return 1;
}

