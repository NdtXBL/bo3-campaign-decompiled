#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_sing_vengeance_sound;
#using scripts\cp\cp_mi_sing_vengeance_util;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_save;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\stealth;
#using scripts\shared\stealth_status;
#using scripts\shared\system_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\vehicles\_quadtank;

#namespace namespace_6f44bbbf;

/*
	Name: function_f9314d0e
	Namespace: namespace_6f44bbbf
	Checksum: 0x36FA57E4
	Offset: 0x9F0
	Size: 0x1F3
	Parameters: 2
	Flags: None
*/
function function_f9314d0e(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		namespace_63b4601c::function_b87f9c13(var_b04bc952, var_74cd64bc);
		namespace_63b4601c::function_66773296("hendricks", var_b04bc952);
		namespace_dabbe128::function_356a4ee1(&namespace_63b4601c::function_b627f9ac);
		level.var_831ab6b2 = namespace_14b42b8a::function_7922262b("quadtank_alley_intro_org");
		level.var_831ab6b2 thread namespace_cc27597::function_5c143f59("cin_ven_04_30_quadalleydoor_1st");
		namespace_2f06d687::function_2b37a3c9("quadteaser_qt", "script_noteworthy", &function_5c60b4ee);
		level thread function_32620a97();
		namespace_63b4601c::function_e00864bd("dogleg_1_umbra_gate", 1, "dogleg_1_gate");
		namespace_d0ef8521::function_74d6b22f("cp_level_vengeance_rescue_kane");
		namespace_d0ef8521::function_74d6b22f("cp_level_vengeance_go_to_safehouse");
		namespace_d0ef8521::function_50ccee8d("cp_level_vengeance_go_to_safehouse");
		level thread namespace_d0ef8521::function_45d1556("trig_quadtank_alley_obj");
		namespace_d7916d65::function_a2995f22();
	}
	level thread namespace_63b4601c::function_cc6f3598();
	level thread namespace_63b4601c::function_3f34106b();
	function_3e0e217e(var_b04bc952, var_74cd64bc);
}

/*
	Name: function_3e0e217e
	Namespace: namespace_6f44bbbf
	Checksum: 0x91CF7FBF
	Offset: 0xBF0
	Size: 0x83
	Parameters: 2
	Flags: None
*/
function function_3e0e217e(var_b04bc952, var_74cd64bc)
{
	level namespace_ad23e503::function_74d6b22f("quadtank_alley_begin");
	level thread function_c231d685();
	level thread function_c58f9e9a();
	level.var_2fd26037 thread function_cad683c(var_74cd64bc);
}

/*
	Name: function_c231d685
	Namespace: namespace_6f44bbbf
	Checksum: 0x36F9336B
	Offset: 0xC80
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_c231d685()
{
	level namespace_ad23e503::function_1ab5ebec("move_quadtank_alley_hendricks_node_10");
	namespace_9f824288::function_5d2cdd99();
	wait(2);
	level.var_9c196273 = namespace_14b42b8a::function_7922262b("quadtank_alley_breadcrumb_02");
	namespace_d0ef8521::function_74d6b22f("cp_level_vengeance_goto_quadtank_alley_rooftop", level.var_9c196273);
	level namespace_ad23e503::function_1ab5ebec("quadtank_alley_rooftop");
	namespace_d0ef8521::function_50ccee8d("cp_level_vengeance_goto_quadtank_alley_rooftop");
}

/*
	Name: function_32620a97
	Namespace: namespace_6f44bbbf
	Checksum: 0x521A6C4B
	Offset: 0xD40
	Size: 0xE3
	Parameters: 0
	Flags: None
*/
function function_32620a97()
{
	var_35a1e4f8 = namespace_14b42b8a::function_7922262b("quadteaser_org", "targetname");
	namespace_4dbf3ae3::function_1ab5ebec("qt_alley_init");
	var_35a1e4f8 thread namespace_cc27597::function_c35e6aab("cin_ven_04_40_quadteaser_vign_start");
	namespace_4dbf3ae3::function_1ab5ebec("qt_alley_play");
	var_35a1e4f8 thread namespace_cc27597::function_43718187("cin_ven_04_40_quadteaser_vign_start");
	var_f92a03e7 = function_6ada35ba("qt_alley_init", "targetname");
	var_f92a03e7 function_dc8c8404();
}

/*
	Name: function_5c60b4ee
	Namespace: namespace_6f44bbbf
	Checksum: 0x18742F7
	Offset: 0xE30
	Size: 0x1B3
	Parameters: 0
	Flags: None
*/
function function_5c60b4ee()
{
	self endon("hash_128f8789");
	self namespace_d84e54db::function_b4f5e3b9(1);
	self namespace_d84e54db::function_c9e45d52(1);
	self namespace_72ee5da4::function_81b6f1ac(1);
	self namespace_82b91a51::function_958c7633();
	self.var_4e5b312b = 0;
	self namespace_3fc75f50::function_4c6ee4cc(0);
	namespace_72ee5da4::function_f09929f();
	namespace_72ee5da4::function_e781ae0e();
	self namespace_96fa87af::function_c434a955(0);
	self namespace_96fa87af::function_500f51c7(0);
	var_6ab6f4fd = self function_cd1d99bd("tag_flash");
	var_56d36469 = self.var_722885f3 + function_bc7ce905((0, var_6ab6f4fd[1], 0)) * 1000;
	var_56d36469 = var_56d36469 + VectorScale((0, 0, -1), 500);
	self function_63f13a8e(var_56d36469);
	if(!isdefined(self.var_6044d9ae))
	{
		self function_80765127();
	}
	self thread function_5b72d473();
}

/*
	Name: function_5b72d473
	Namespace: namespace_6f44bbbf
	Checksum: 0x8A1D8786
	Offset: 0xFF0
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_5b72d473()
{
	self endon("hash_128f8789");
	self thread function_958f5757();
	self thread function_cf5fc4c7();
}

/*
	Name: function_958f5757
	Namespace: namespace_6f44bbbf
	Checksum: 0xB2F15D44
	Offset: 0x1038
	Size: 0x7F
	Parameters: 0
	Flags: None
*/
function function_958f5757()
{
	self endon("hash_128f8789");
	while(1)
	{
		self waittillmatch("hash_7f1f9f3c");
		level namespace_82b91a51::function_ef3f75eb("qt_fire_missile");
		thread namespace_7c587e3e::function_b3768e28();
		thread namespace_7c587e3e::function_2afbdce();
		self function_90ad4ed1(0);
	}
}

/*
	Name: function_cf5fc4c7
	Namespace: namespace_6f44bbbf
	Checksum: 0xA2A44DF6
	Offset: 0x10C0
	Size: 0x121
	Parameters: 0
	Flags: None
*/
function function_cf5fc4c7()
{
	self endon("hash_128f8789");
	while(1)
	{
		self waittillmatch("hash_870f582c");
		level namespace_82b91a51::function_ef3f75eb("qt_fire_mg");
		self function_c2931a36("wpn_qt_mg_loop");
		thread namespace_7c587e3e::function_2afbdce();
		self thread namespace_37b990db::function_afb82faf(-1, 1);
		self thread namespace_37b990db::function_afb82faf(-1, 2);
		self waittillmatch("hash_c6db257a");
		function_37cbcf1a("wpn_qt_mg_tail", self.var_722885f3);
		self function_eaa69754(0.2);
		self notify("hash_c7d626");
		self notify("hash_dac55bbd");
	}
}

/*
	Name: function_cad683c
	Namespace: namespace_6f44bbbf
	Checksum: 0x60FB0EED
	Offset: 0x11F0
	Size: 0x18B
	Parameters: 1
	Flags: None
*/
function function_cad683c(var_74cd64bc)
{
	self endon("hash_128f8789");
	self namespace_d84e54db::function_b4f5e3b9(1);
	self namespace_d84e54db::function_c9e45d52(1);
	self namespace_6f7b2095::function_54bdb053();
	self namespace_d84e54db::function_ceb883cd("cqb", 1);
	self.var_7dfaf62 = 32;
	self namespace_76d95162::function_d9f49fba(0);
	level thread function_5a90d7e8(var_74cd64bc);
	var_90ca1fdd = function_b4cb3503("quadtank_alley_hendricks_node_05", "targetname");
	self thread namespace_d84e54db::function_19e98020(var_90ca1fdd, var_90ca1fdd.var_f8456b37);
	level namespace_ad23e503::function_1ab5ebec("move_quadtank_alley_hendricks_node_10");
	self namespace_d84e54db::function_ceb883cd("cqb", 0);
	var_90ca1fdd = function_b4cb3503("quadtank_alley_hendricks_node_10", "targetname");
	self thread namespace_d84e54db::function_19e98020(var_90ca1fdd, var_90ca1fdd.var_f8456b37);
}

/*
	Name: function_c58f9e9a
	Namespace: namespace_6f44bbbf
	Checksum: 0xE065026A
	Offset: 0x1388
	Size: 0x8F
	Parameters: 0
	Flags: None
*/
function function_c58f9e9a()
{
	var_f92a03e7 = function_6ada35ba("kill_qt_alley_light", "targetname");
	while(isdefined(var_f92a03e7))
	{
		var_f92a03e7 waittill("hash_4dbf3ae3", var_aca0d97d);
		if(function_65f192a6(var_aca0d97d))
		{
			var_aca0d97d namespace_71e9cb84::function_e9c3870b("kill_qt_alley_light", 1);
		}
	}
}

/*
	Name: function_323d0a39
	Namespace: namespace_6f44bbbf
	Checksum: 0xEC9D3D07
	Offset: 0x1420
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_323d0a39()
{
	level.var_2fd26037 waittill("hash_11488c47");
	level namespace_71b8dba1::function_13b3b16a("plyr_you_okay_hendricks_1");
}

/*
	Name: function_5a90d7e8
	Namespace: namespace_6f44bbbf
	Checksum: 0x52936AF5
	Offset: 0x1460
	Size: 0x8B
	Parameters: 1
	Flags: None
*/
function function_5a90d7e8(var_74cd64bc)
{
	if(!isdefined(var_74cd64bc) || var_74cd64bc == 0)
	{
		level waittill("hash_ba467a50");
	}
	level namespace_ad23e503::function_1ab5ebec("move_quadtank_alley_hendricks_node_10");
	level.var_2fd26037 namespace_63b4601c::function_5fbec645("hend_something_big_headed_0");
	level.var_2fd26037 namespace_63b4601c::function_5fbec645("hend_quick_get_to_the_roo_0");
}

/*
	Name: function_1dc027c8
	Namespace: namespace_6f44bbbf
	Checksum: 0x6293F53
	Offset: 0x14F8
	Size: 0x3C3
	Parameters: 4
	Flags: None
*/
function function_1dc027c8(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	level namespace_ad23e503::function_74d6b22f("quadtank_alley_end");
	level namespace_82b91a51::function_ef3f75eb("qt_alley_done");
	level thread function_bc3427d9();
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_03_20_storelineup_vign_start_doors_only");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_03_20_storelineup_vign_exit");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_03_20_storelineup_vign_exit_reach");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_04_30_quadalleydoor_1st");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_04_40_quadteaser_vign_start");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_04_20_cafeexecution_vign_intro");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_04_20_cafeexecution_vign_kill");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_04_20_cafeexecution_vign_esc");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_04_20_cafeburning_vign_esc_civ_01");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_04_20_cafeburning_vign_esc_civ_02");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_04_20_cafeburning_vign_esc_civ_03");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_04_20_cafeburning_vign_loop");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_04_20_cafeburning_vign_main");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_04_20_cafemolotovflush_vign_intro");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_04_20_cafemolotovflush_vign_civa");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_04_20_cafemolotovflush_vign_civb");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_04_20_cafemolotovflush_vign_civc");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_04_20_cafemolotovflush_vign_civd");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_04_20_cafemolotovflush_vign_cive");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_04_20_cafemolotovflush_vign_civf");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_04_20_cafemolotovflush_vign_civg");
}

/*
	Name: function_bc3427d9
	Namespace: namespace_6f44bbbf
	Checksum: 0x77F50388
	Offset: 0x18C8
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_bc3427d9()
{
	namespace_84970cc4::function_eaab05dc(function_bd90138e(), &function_dc8c8404);
}

