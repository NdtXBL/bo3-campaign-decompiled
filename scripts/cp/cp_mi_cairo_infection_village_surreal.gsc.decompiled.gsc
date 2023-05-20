#using scripts\codescripts\struct;
#using scripts\cp\_collectibles;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_cairo_infection_accolades;
#using scripts\cp\cp_mi_cairo_infection_church;
#using scripts\cp\cp_mi_cairo_infection_util;
#using scripts\cp\cp_mi_cairo_infection2_sound;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_save;
#using scripts\cp\gametypes\coop;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\hud_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\system_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;

#namespace namespace_4e2074f4;

/*
	Name: function_2dc19561
	Namespace: namespace_4e2074f4
	Checksum: 0x3D8F4013
	Offset: 0x10C0
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("infection_village_surreal", &function_8c87d8eb, undefined, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_4e2074f4
	Checksum: 0xE1E98AD0
	Offset: 0x1100
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	function_83bed3e4();
	namespace_2f06d687::function_2b37a3c9("sp_tiger_tank_fold", "targetname", &function_e310ea1e);
}

/*
	Name: function_ff58a260
	Namespace: namespace_4e2074f4
	Checksum: 0xC25F317D
	Offset: 0x1150
	Size: 0x183
	Parameters: 0
	Flags: None
*/
function function_ff58a260()
{
	namespace_71e9cb84::function_50f16166("world", "infection_fold_debris_1", 1, 1, "counter");
	namespace_71e9cb84::function_50f16166("world", "infection_fold_debris_2", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "infection_fold_debris_3", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "infection_fold_debris_4", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "light_church_ext_window", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "kill_light_church_ext_window", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "light_church_int_all", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "dynent_catcher", 1, 1, "int");
}

/*
	Name: function_32e49d5b
	Namespace: namespace_4e2074f4
	Checksum: 0xB6A084AC
	Offset: 0x12E0
	Size: 0x31
	Parameters: 4
	Flags: None
*/
function function_32e49d5b(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	level notify("hash_34fcc1f7");
}

/*
	Name: function_a1dc825e
	Namespace: namespace_4e2074f4
	Checksum: 0xD2A0C31E
	Offset: 0x1320
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_a1dc825e()
{
	function_9a0f8909();
	function_e0d63cf4();
	function_a8ccd78c();
}

/*
	Name: function_d290ebfa
	Namespace: namespace_4e2074f4
	Checksum: 0x297FFCEE
	Offset: 0x1360
	Size: 0x573
	Parameters: 2
	Flags: None
*/
function function_d290ebfa(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		level namespace_82b91a51::function_d8eaed3d(11);
		function_9a0f8909();
		function_e0d63cf4();
		function_a8ccd78c();
		level thread namespace_cc27597::function_c35e6aab("cin_inf_11_02_fold_1st_airlock");
	}
	namespace_36cbf523::function_67137b13();
	namespace_d275cebc::function_93523442("p7_nc_cai_inf_06", 300, (0, 0, 0));
	level.var_1fdc6d79 = 0;
	level.var_9fc31553 = 0;
	level thread function_29e53c05();
	level thread function_bb707466();
	level thread function_81e49583();
	level thread function_51a0e924();
	level thread function_6d19283f();
	level thread function_1c2ef59f();
	level thread function_aa278664();
	level thread function_d02a00cd();
	level thread function_5e229192();
	level thread function_4d4c8709();
	level thread function_274a0ca0();
	level thread function_315b657f();
	level thread function_5f1b3809();
	level thread function_6a6562a7();
	level thread namespace_36cbf523::function_e14494e9("sm_fold_guys_1", "sm_fold_guys_tank", "t_sm_fold_guys_1_reinforce", 5, 2);
	function_d90d60f3(1);
	namespace_1bcb6ea8::function_1319db1b();
	if(isdefined(level.var_d68aea9e))
	{
		level thread [[level.var_d68aea9e]]();
	}
	if(!function_27c72c1b())
	{
		function_f9d285ed();
		level thread function_46d91cb3();
	}
	level namespace_71e9cb84::function_74d6b22f("dynent_catcher", 1);
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_a2995f22();
	}
	namespace_84970cc4::function_966ecb29(level.var_2395e945, &namespace_36cbf523::function_9f10c537);
	level thread namespace_bed101ee::function_b00d2653();
	if(!var_74cd64bc)
	{
		level.var_42189297 = namespace_82b91a51::function_740f8516("sarah");
		level.var_42189297 namespace_71e9cb84::function_74d6b22f("sarah_body_light", 0);
	}
	else
	{
		namespace_d0ef8521::function_74d6b22f("cp_level_infection_follow_sarah");
	}
	level thread namespace_82b91a51::function_593c2af4(2, "white", "foy_white");
	level namespace_cc27597::function_43718187("cin_inf_11_02_fold_1st_airlock");
	level thread namespace_36cbf523::function_3fe1f72("t_sarah_fold_objective_", 0, &function_75ddceb0);
	namespace_82b91a51::function_93831e79(var_b04bc952);
	wait(1.25);
	namespace_84970cc4::function_966ecb29(level.var_2395e945, &namespace_36cbf523::function_e905c73c);
	function_d4f82627("clear", "cin_inf_11_02_fold_1st_airlock");
	level thread namespace_82b91a51::function_a0938376();
	level thread function_2d8736c7();
	level thread function_b1600743();
	level thread function_4ecccd1c();
	level thread function_e6ee1935();
	namespace_76d95162::function_d9f49fba(1);
	namespace_36cbf523::function_1cdb9014(3);
	level thread function_20f82ee2();
	function_daf631fe();
}

/*
	Name: function_633271eb
	Namespace: namespace_4e2074f4
	Checksum: 0xF9A0672D
	Offset: 0x18E0
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_633271eb()
{
	level thread namespace_36cbf523::function_f6d49772("t_salm_i_am_increasingly_co_1", "salm_i_am_increasingly_co_1", "end_salm_fold_dialog");
	level thread namespace_36cbf523::function_f6d49772("t_salm_in_the_wake_of_recen_1", "salm_in_the_wake_of_recen_1", "end_salm_fold_dialog");
}

/*
	Name: function_f9d285ed
	Namespace: namespace_4e2074f4
	Checksum: 0x77DDEF18
	Offset: 0x1950
	Size: 0x67
	Parameters: 0
	Flags: None
*/
function function_f9d285ed()
{
	function_9b385ca5();
	level.var_c3d19bc2 = var_ce2d510;
	var_cb7ecfda = namespace_96fa87af::function_7387a40a("sp_fold_turret_01");
	function_66f910ed(level.var_c3d19bc2, var_cb7ecfda, "sp_fold_turret_01_gunner");
}

/*
	Name: function_46d91cb3
	Namespace: namespace_4e2074f4
	Checksum: 0x7E35157D
	Offset: 0x19C0
	Size: 0x2F
	Parameters: 0
	Flags: None
*/
function function_46d91cb3()
{
	namespace_4dbf3ae3::function_1ab5ebec("t_fold_turret_01_enable");
	function_2919200c();
}

/*
	Name: function_a8ccd78c
	Namespace: namespace_4e2074f4
	Checksum: 0xF2438E5A
	Offset: 0x19F8
	Size: 0x333
	Parameters: 0
	Flags: None
*/
function function_a8ccd78c()
{
	level.var_8d647ad = function_99201f25("m_bank_explode", "targetname");
	namespace_36cbf523::function_9d8bcc37(level.var_8d647ad);
	level.var_8eb32cc3 = function_99201f25("m_fountain_explode", "targetname");
	namespace_36cbf523::function_9d8bcc37(level.var_8eb32cc3);
	level.var_78620d04 = function_99201f25("m_reverse_sniper_building", "targetname");
	namespace_36cbf523::function_9d8bcc37(level.var_78620d04);
	level.var_f3637081 = function_99201f25("m_reverse_boarding_house", "targetname");
	namespace_36cbf523::function_9d8bcc37(level.var_f3637081);
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_infection_bank_explode_bundle", &function_6f5e3bfb, "done");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_infection_fountain_explode_bundle", &function_d9766bf5, "done");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_infection_reverse_sniper_building_01_bundle", &function_ba41bc6a, "done");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_infection_reverse_boarding_house_bundle", &function_6096a6cf, "done");
	namespace_36cbf523::function_1926d38d("p7_fxanim_cp_infection_fountain_explode_bundle", "s_infection_fountain_explode_bundle", "t_infection_fountain_explode_bundle_inner", "t_infection_fountain_explode_bundle_outter");
	namespace_36cbf523::function_1926d38d("p7_fxanim_cp_infection_reverse_wall_02_bundle", "s_infection_reverse_wall_02_bundle", "t_infection_reverse_wall_02_bundle_inner", "t_infection_reverse_wall_02_bundle_outter");
	namespace_36cbf523::function_1926d38d("p7_fxanim_cp_infection_reverse_sniper_building_01_bundle", "s_infection_reverse_sniper_building_01_bundle", "t_infection_reverse_sniper_building_01_bundle_inner", "t_infection_reverse_sniper_building_01_bundle_outter");
	namespace_36cbf523::function_1926d38d("p7_fxanim_cp_infection_reverse_boarding_house_bundle", "s_infection_reverse_boarding_house_bundle", "t_infection_reverse_boarding_house_bundle_inner", "t_infection_reverse_boarding_house_bundle_outter");
	namespace_36cbf523::function_1926d38d("p7_fxanim_cp_infection_tombstone_reverse_01_bundle", "s_infection_tombstone_reverse_01_bundle", "t_infection_tombstone_reverse_01_bundle_inner", "t_infection_tombstone_reverse_01_bundle_outter");
	namespace_36cbf523::function_1926d38d("p7_fxanim_cp_infection_tombstone_reverse_02_bundle", "s_infection_tombstone_reverse_02_bundle", "t_infection_tombstone_reverse_02_bundle_inner", "t_infection_tombstone_reverse_02_bundle_outter");
	namespace_36cbf523::function_1926d38d("p7_fxanim_cp_infection_tombstone_reverse_03_bundle", "s_infection_tombstone_reverse_03_bundle", "t_infection_tombstone_reverse_03_bundle_inner", "t_infection_tombstone_reverse_03_bundle_outter");
	level namespace_cc27597::function_c35e6aab("p7_fxanim_cp_infection_tank_wall_break_bundle");
}

/*
	Name: function_6f5e3bfb
	Namespace: namespace_4e2074f4
	Checksum: 0x47C6E017
	Offset: 0x1D38
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_6f5e3bfb(var_c77d2837)
{
	namespace_36cbf523::function_bdea6c61(level.var_8d647ad);
}

/*
	Name: function_d9766bf5
	Namespace: namespace_4e2074f4
	Checksum: 0x78FBC44A
	Offset: 0x1D68
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_d9766bf5(var_c77d2837)
{
	namespace_36cbf523::function_bdea6c61(level.var_8eb32cc3);
}

/*
	Name: function_ba41bc6a
	Namespace: namespace_4e2074f4
	Checksum: 0xEF15EB0F
	Offset: 0x1D98
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_ba41bc6a(var_c77d2837)
{
	namespace_36cbf523::function_bdea6c61(level.var_78620d04);
}

/*
	Name: function_6096a6cf
	Namespace: namespace_4e2074f4
	Checksum: 0x6E8FDCBB
	Offset: 0x1DC8
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_6096a6cf(var_c77d2837)
{
	namespace_36cbf523::function_bdea6c61(level.var_f3637081);
}

/*
	Name: function_83bed3e4
	Namespace: namespace_4e2074f4
	Checksum: 0xC0D65A1F
	Offset: 0x1DF8
	Size: 0x1B3
	Parameters: 0
	Flags: None
*/
function function_83bed3e4()
{
	namespace_cc27597::function_8f9f34e0("cin_inf_10_02_bastogne_vign_reversefall2floor_suppressor", &function_27a6bc61, "play");
	namespace_cc27597::function_8f9f34e0("cin_inf_10_02_bastogne_vign_reversemortar2floor_sniper", &namespace_36cbf523::function_2a5e3b2a, "play");
	namespace_cc27597::function_8f9f34e0("cin_inf_10_02_foy_aie_reverseshot_1_suppressor", &namespace_36cbf523::function_2a5e3b2a, "play");
	namespace_cc27597::function_8f9f34e0("cin_inf_10_02_foy_aie_reverseshot_5_sniper", &namespace_36cbf523::function_2a5e3b2a, "play");
	namespace_cc27597::function_8f9f34e0("cin_inf_11_03_fold_vign_reverse_sniper", &namespace_36cbf523::function_2a5e3b2a, "play");
	namespace_cc27597::function_8f9f34e0("cin_inf_11_02_fold_1st_airlock", &namespace_36cbf523::function_23e59afd, "play");
	namespace_cc27597::function_8f9f34e0("cin_inf_11_02_fold_1st_airlock", &namespace_36cbf523::function_e2eba6da, "done");
	namespace_cc27597::function_8f9f34e0("cin_inf_11_02_fold_1st_airlock", &function_3824b768, "play");
	namespace_cc27597::function_8f9f34e0("cin_inf_11_02_fold_1st_airlock", &function_a8d640c7, "done");
}

/*
	Name: function_3824b768
	Namespace: namespace_4e2074f4
	Checksum: 0xD1AE3A97
	Offset: 0x1FB8
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_3824b768(var_c77d2837)
{
	level namespace_71e9cb84::function_331efedc("infection_fold_debris_1", 1);
}

/*
	Name: function_a8d640c7
	Namespace: namespace_4e2074f4
	Checksum: 0x686ED105
	Offset: 0x1FF0
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_a8d640c7(var_c77d2837)
{
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_infection_bank_explode_bundle");
}

/*
	Name: function_27a6bc61
	Namespace: namespace_4e2074f4
	Checksum: 0x8BBD3B1E
	Offset: 0x2028
	Size: 0xE9
	Parameters: 1
	Flags: None
*/
function function_27a6bc61(var_c77d2837)
{
	var_67825717 = function_6ada35ba("t_sp_fold_guys_2_ai", "targetname");
	foreach(var_a3d46ee4 in var_c77d2837)
	{
		if(function_8d0347b8(var_a3d46ee4))
		{
			var_a3d46ee4 namespace_36cbf523::function_dc649ed7(0);
			var_a3d46ee4 thread namespace_36cbf523::function_e62729fb(var_67825717);
		}
	}
}

/*
	Name: function_4ecccd1c
	Namespace: namespace_4e2074f4
	Checksum: 0xECAFCDE8
	Offset: 0x2120
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_4ecccd1c()
{
	namespace_d5067552::function_bae40a28("sm_fold_guys_0");
	wait(5.5);
	namespace_d5067552::function_bae40a28("sm_fold_guys_1");
}

/*
	Name: function_d90d60f3
	Namespace: namespace_4e2074f4
	Checksum: 0x77D46EE5
	Offset: 0x2168
	Size: 0x7F
	Parameters: 1
	Flags: None
*/
function function_d90d60f3(var_864a3d55)
{
	if(var_864a3d55)
	{
		function_6c1294b8("phys_gravity_dir", (0, 1, -0.35));
		level.var_74bd7d24 = 1;
	}
	else
	{
		function_6c1294b8("phys_gravity_dir", (0, 0, 1));
		level.var_74bd7d24 = 0;
	}
}

/*
	Name: function_e0d63cf4
	Namespace: namespace_4e2074f4
	Checksum: 0x284BCC84
	Offset: 0x21F0
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_e0d63cf4()
{
	namespace_2f06d687::function_ef554cf7("axis", &namespace_36cbf523::function_2f6bf570);
	namespace_36cbf523::function_aa0ddbc3(1, 5);
	namespace_36cbf523::function_c8d7e76("fold_reverse_anims");
}

/*
	Name: function_e310ea1e
	Namespace: namespace_4e2074f4
	Checksum: 0x1D11A104
	Offset: 0x2258
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_e310ea1e()
{
	function_9b385ca5();
	level.var_335e3b92 = var_2e121905;
	function_147315f(level.var_335e3b92, self, "sp_tank_gunner");
	function_d4274a7(level.var_335e3b92);
	self namespace_82b91a51::function_e218424d();
	self namespace_175490fb::function_59965309("cybercom_surge");
	namespace_f25bd8c8::function_7356f9fd();
}

/*
	Name: function_daf631fe
	Namespace: namespace_4e2074f4
	Checksum: 0xB82C32DD
	Offset: 0x2300
	Size: 0x153
	Parameters: 0
	Flags: None
*/
function function_daf631fe()
{
	level waittill("hash_75ddceb0");
	namespace_4dbf3ae3::function_1ab5ebec("t_church_interior");
	var_32e741be = namespace_14b42b8a::function_7922262b("s_foy_gather_point_church", "targetname");
	namespace_d0ef8521::function_31cd1834("cp_level_infection_gather_church", var_32e741be);
	level thread namespace_bed101ee::function_973b77f9();
	if(isdefined(level.var_335e3b92))
	{
		function_307b1179();
	}
	function_d90d60f3(0);
	namespace_36cbf523::function_3ea445de();
	namespace_36cbf523::function_aa0ddbc3(1, 0);
	namespace_2f06d687::function_d5e942a4("axis", &namespace_36cbf523::function_2f6bf570);
	level namespace_71e9cb84::function_74d6b22f("dynent_catcher", 0);
	level thread namespace_1d795d47::function_be8adfb8("village_inception");
}

/*
	Name: function_16cd546
	Namespace: namespace_4e2074f4
	Checksum: 0x69241E1C
	Offset: 0x2460
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_16cd546()
{
	wait(1);
	level namespace_71b8dba1::function_a463d127("hall_the_german_tiger_tan_0", 1, "NO_DNI");
}

/*
	Name: function_9a0f8909
	Namespace: namespace_4e2074f4
	Checksum: 0x5E431D48
	Offset: 0x24A0
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_9a0f8909()
{
	namespace_2f06d687::function_7387a40a("sp_tiger_tank_fold");
}

/*
	Name: function_b366d9e9
	Namespace: namespace_4e2074f4
	Checksum: 0xBAA8F20D
	Offset: 0x24C8
	Size: 0x223
	Parameters: 0
	Flags: None
*/
function function_b366d9e9()
{
	if(!level.var_1fdc6d79)
	{
		namespace_84970cc4::function_966ecb29(level.var_9b1393e7, &namespace_c03736ba::function_e9f7384d);
		level.var_1fdc6d79 = 1;
		var_dc01a2cf = function_6ada35ba("t_sarah_fold_objective_1", "targetname");
		if(isdefined(var_dc01a2cf))
		{
			namespace_4dbf3ae3::function_42e87952("t_sarah_fold_objective_1");
		}
		level thread function_16cd546();
		var_3c54858a = function_243bb261("nd_tank_path", "targetname");
		level thread namespace_cc27597::function_43718187("p7_fxanim_cp_infection_tank_wall_break_bundle");
		function_d4274a7(level.var_335e3b92);
		level.var_335e3b92.var_69d9acb thread namespace_96fa87af::function_edb3a94e(var_3c54858a);
		level.var_335e3b92.var_69d9acb thread function_dacec601();
		foreach(var_5dc5e20a in level.var_2395e945)
		{
			function_9cf04c2e(0.22, 3.5, var_5dc5e20a.var_722885f3, 150);
		}
		wait(3.5);
		function_ce839946();
		level thread function_aa3464ca();
	}
}

/*
	Name: function_dacec601
	Namespace: namespace_4e2074f4
	Checksum: 0xFA2C6EC0
	Offset: 0x26F8
	Size: 0x75
	Parameters: 0
	Flags: None
*/
function function_dacec601()
{
	self endon("hash_128f8789");
	while(1)
	{
		if(function_69c2f683(self function_edbe4101()) < 10)
		{
			self function_e2af603e("tank_rumble");
		}
		wait(1);
	}
}

/*
	Name: function_aa3464ca
	Namespace: namespace_4e2074f4
	Checksum: 0xBC7A50BC
	Offset: 0x2778
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_aa3464ca()
{
	while(function_5b49d38c(level.var_335e3b92.var_69d9acb))
	{
		wait(0.1);
	}
	wait(3);
	function_d4f810d();
}

/*
	Name: function_1c2ef59f
	Namespace: namespace_4e2074f4
	Checksum: 0x5D214CF4
	Offset: 0x27D0
	Size: 0x37
	Parameters: 0
	Flags: None
*/
function function_1c2ef59f()
{
	level endon("hash_6ee94cb6");
	namespace_4dbf3ae3::function_1ab5ebec("t_tank_retreat_1");
	function_f7f47181();
}

/*
	Name: function_aa278664
	Namespace: namespace_4e2074f4
	Checksum: 0x2DFD5394
	Offset: 0x2810
	Size: 0x2F
	Parameters: 0
	Flags: None
*/
function function_aa278664()
{
	namespace_4dbf3ae3::function_1ab5ebec("t_tank_retreat_2");
	function_f7f47181();
}

/*
	Name: function_d02a00cd
	Namespace: namespace_4e2074f4
	Checksum: 0x93C65253
	Offset: 0x2848
	Size: 0x37
	Parameters: 0
	Flags: None
*/
function function_d02a00cd()
{
	level endon("hash_6ee94cb6");
	namespace_4dbf3ae3::function_1ab5ebec("t_tank_retreat_3");
	function_f7f47181();
}

/*
	Name: function_5e229192
	Namespace: namespace_4e2074f4
	Checksum: 0x94F3A748
	Offset: 0x2888
	Size: 0x2F
	Parameters: 0
	Flags: None
*/
function function_5e229192()
{
	namespace_4dbf3ae3::function_1ab5ebec("t_tank_retreat_4");
	function_f7f47181();
}

/*
	Name: function_b1600743
	Namespace: namespace_4e2074f4
	Checksum: 0x656FA4A7
	Offset: 0x28C0
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_b1600743()
{
	self endon("hash_2d8736c7");
	namespace_84970cc4::function_57dd1fd4(level.var_2395e945, &namespace_36cbf523::function_c6e0527c, "s_tank_lookat", 2, "lookat_tank");
	level waittill("hash_82bfd316");
	level notify("hash_b1600743");
	function_b366d9e9();
}

/*
	Name: function_51a0e924
	Namespace: namespace_4e2074f4
	Checksum: 0xA788D9C2
	Offset: 0x2948
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_51a0e924()
{
	namespace_84970cc4::function_57dd1fd4(level.var_2395e945, &namespace_36cbf523::function_c6e0527c, "s_church_lookat", 2, "lookat_church", 2600);
	level waittill("hash_9446cb23");
	function_8dc356ff();
}

/*
	Name: function_6d19283f
	Namespace: namespace_4e2074f4
	Checksum: 0x69B80E9B
	Offset: 0x29B8
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_6d19283f()
{
	namespace_4dbf3ae3::function_1ab5ebec("t_church_lookat");
	function_8dc356ff();
}

/*
	Name: function_8dc356ff
	Namespace: namespace_4e2074f4
	Checksum: 0x1FAC649E
	Offset: 0x29F0
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_8dc356ff()
{
	if(!level.var_9fc31553)
	{
		level.var_9fc31553 = 1;
		namespace_2f06d687::function_7387a40a("sp_chruch_mg_01");
		namespace_2f06d687::function_7387a40a("sp_chruch_mg_02");
	}
}

/*
	Name: function_2d8736c7
	Namespace: namespace_4e2074f4
	Checksum: 0x525BA500
	Offset: 0x2A48
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_2d8736c7()
{
	self endon("hash_b1600743");
	namespace_4dbf3ae3::function_1ab5ebec("t_tank");
	level notify("hash_2d8736c7");
	function_b366d9e9();
}

/*
	Name: function_6a6562a7
	Namespace: namespace_4e2074f4
	Checksum: 0x210CDC9
	Offset: 0x2A98
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_6a6562a7()
{
	namespace_4dbf3ae3::function_1ab5ebec("t_cemetery_retreat");
	level thread namespace_36cbf523::function_642da963("sp_fold_guys_tank_ai", "t_sp_fold_guys_3_ai");
	level thread namespace_36cbf523::function_642da963("sp_fold_guys_2_ai", "t_sp_fold_guys_3_ai");
	level thread namespace_36cbf523::function_810ccf7("t_foy_guys_0_and_1_retreat_goal_2", "t_sp_fold_guys_3_ai");
	level thread namespace_36cbf523::function_810ccf7("t_sp_fold_guys_2_ai", "t_sp_fold_guys_3_ai");
}

/*
	Name: function_4d4c8709
	Namespace: namespace_4e2074f4
	Checksum: 0xCE2FC655
	Offset: 0x2B60
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_4d4c8709()
{
	namespace_4dbf3ae3::function_1ab5ebec("t_infection_fold_debris_2");
	level namespace_71e9cb84::function_74d6b22f("infection_fold_debris_2", 1);
}

/*
	Name: function_274a0ca0
	Namespace: namespace_4e2074f4
	Checksum: 0x18DDEE10
	Offset: 0x2BA8
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_274a0ca0()
{
	namespace_4dbf3ae3::function_1ab5ebec("t_infection_fold_debris_3");
	level namespace_71e9cb84::function_74d6b22f("infection_fold_debris_3", 1);
}

/*
	Name: function_315b657f
	Namespace: namespace_4e2074f4
	Checksum: 0xE7199D32
	Offset: 0x2BF0
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_315b657f()
{
	namespace_4dbf3ae3::function_1ab5ebec("t_infection_fold_debris_4");
	level namespace_71e9cb84::function_74d6b22f("infection_fold_debris_4", 1);
}

/*
	Name: function_29e53c05
	Namespace: namespace_4e2074f4
	Checksum: 0x60D44AE6
	Offset: 0x2C38
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_29e53c05()
{
	namespace_4dbf3ae3::function_1ab5ebec("t_bank_retreat");
	level thread namespace_36cbf523::function_810ccf7("t_bank", "t_foy_guys_0_and_1_retreat_goal");
}

/*
	Name: function_5f1b3809
	Namespace: namespace_4e2074f4
	Checksum: 0x3CC7AF7C
	Offset: 0x2C88
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_5f1b3809()
{
	namespace_4dbf3ae3::function_1ab5ebec("t_foy_guys_0_and_1_retreat");
	level thread namespace_36cbf523::function_642da963("sp_fold_guys_0_ai", "t_foy_guys_0_and_1_retreat_goal");
	level thread namespace_36cbf523::function_642da963("sp_fold_guys_1_ai", "t_foy_guys_0_and_1_retreat_goal");
	wait(5.5);
	level thread namespace_36cbf523::function_642da963("sp_fold_guys_1_ai", "t_foy_guys_0_and_1_retreat_goal");
}

/*
	Name: function_bb707466
	Namespace: namespace_4e2074f4
	Checksum: 0x75EA0D4B
	Offset: 0x2D30
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_bb707466()
{
	namespace_4dbf3ae3::function_1ab5ebec("t_foy_guys_0_and_1_retreat_2");
	level thread namespace_36cbf523::function_810ccf7("t_foy_guys_0_and_1_retreat_goal", "t_foy_guys_0_and_1_retreat_goal_2");
}

/*
	Name: function_81e49583
	Namespace: namespace_4e2074f4
	Checksum: 0x5B9DFAA3
	Offset: 0x2D80
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_81e49583()
{
	namespace_4dbf3ae3::function_1ab5ebec("t_sm_fold_guys_4");
	function_d4f810d();
}

/*
	Name: function_d4f810d
	Namespace: namespace_4e2074f4
	Checksum: 0xC6D36BF5
	Offset: 0x2DB8
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_d4f810d()
{
	if(!namespace_d5067552::function_56a7483f("sm_fold_guys_4"))
	{
		namespace_d5067552::function_bae40a28("sm_fold_guys_4");
	}
}

/*
	Name: function_34fbad21
	Namespace: namespace_4e2074f4
	Checksum: 0x3F0FA7B6
	Offset: 0x2DF8
	Size: 0x91
	Parameters: 1
	Flags: None
*/
function function_34fbad21(var_c77d2837)
{
	foreach(var_a3d46ee4 in var_c77d2837)
	{
		var_a3d46ee4 namespace_d84e54db::function_c9e45d52(1);
	}
}

/*
	Name: function_75ddceb0
	Namespace: namespace_4e2074f4
	Checksum: 0x61B32336
	Offset: 0x2E98
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_75ddceb0()
{
	self endon("hash_128f8789");
	level notify("hash_75ddceb0");
	self namespace_82b91a51::function_c49ce021("sarah");
	self namespace_82b91a51::function_20ffc8ff();
}

/*
	Name: function_e6ee1935
	Namespace: namespace_4e2074f4
	Checksum: 0xBFCEF9B8
	Offset: 0x2EF0
	Size: 0xFB
	Parameters: 0
	Flags: None
*/
function function_e6ee1935()
{
	level waittill("hash_75ddceb0");
	namespace_82b91a51::function_76f13293();
	level namespace_71e9cb84::function_74d6b22f("light_church_ext_window", 1);
	level.var_42189297 = namespace_82b91a51::function_740f8516("sarah");
	level.var_42189297 namespace_71e9cb84::function_74d6b22f("sarah_body_light", 1);
	level.var_42189297 thread namespace_cc27597::function_43718187("cin_inf_11_04_fold_vign_walk_end", level.var_42189297);
	var_32e741be = namespace_14b42b8a::function_7922262b("s_foy_gather_point_church", "targetname");
	namespace_d0ef8521::function_74d6b22f("cp_level_infection_gather_church", var_32e741be);
}

/*
	Name: function_20f82ee2
	Namespace: namespace_4e2074f4
	Checksum: 0x2B24531C
	Offset: 0x2FF8
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_20f82ee2()
{
	namespace_4dbf3ae3::function_1ab5ebec("t_cemetery_retreat");
	namespace_9f824288::function_5d2cdd99();
}

