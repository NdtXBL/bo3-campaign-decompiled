#using scripts\codescripts\struct;
#using scripts\cp\voice\voice_aquifer;
#using scripts\shared\flag_shared;
#using scripts\shared\music_shared;
#using scripts\shared\util_shared;

#namespace namespace_1d1d22be;

/*
	Name: function_d290ebfa
	Namespace: namespace_1d1d22be
	Checksum: 0x37DBC884
	Offset: 0xD28
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	namespace_b9b93cab::function_e230521c();
	thread function_609d3ec();
	thread function_cd85d22a();
	thread function_4fb4bdc3();
}

/*
	Name: function_4fb4bdc3
	Namespace: namespace_1d1d22be
	Checksum: 0x63D158D1
	Offset: 0xD78
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_4fb4bdc3()
{
	level.var_fc9a3509 = 0;
	level.var_b8fee04d = function_9b7fda5e("script_origin", (16832, 3276, 2268));
	level.var_df015ab6 = function_9b7fda5e("script_origin", (15869, 3965, 2281));
	level.var_554aefcd = function_9b7fda5e("script_origin", (15979, 3297, 2050));
	level.var_7b4d6a36 = function_9b7fda5e("script_origin", (16820, 3947, 2047));
}

/*
	Name: function_30ce85d2
	Namespace: namespace_1d1d22be
	Checksum: 0x99EC1590
	Offset: 0xE50
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_30ce85d2()
{
}

/*
	Name: function_609d3ec
	Namespace: namespace_1d1d22be
	Checksum: 0x99EC1590
	Offset: 0xE60
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_609d3ec()
{
}

/*
	Name: function_77b5283a
	Namespace: namespace_1d1d22be
	Checksum: 0x8F8C0B54
	Offset: 0xE70
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_77b5283a(var_5dc5e20a)
{
	var_5dc5e20a function_b8862210("veh_vtol_exit", var_5dc5e20a);
	var_5dc5e20a function_b8862210("veh_vtol_exit_foley", var_5dc5e20a);
}

/*
	Name: function_976c341d
	Namespace: namespace_1d1d22be
	Checksum: 0x56425D29
	Offset: 0xEC8
	Size: 0x5B
	Parameters: 2
	Flags: None
*/
function function_976c341d(var_5dc5e20a, var_7e8d0707)
{
	var_5dc5e20a function_b8862210("veh_vtol_open", var_5dc5e20a);
	function_37cbcf1a("veh_vtol_land", var_7e8d0707.var_722885f3);
}

/*
	Name: function_c800052a
	Namespace: namespace_1d1d22be
	Checksum: 0xD53333BE
	Offset: 0xF30
	Size: 0xB1
	Parameters: 0
	Flags: None
*/
function function_c800052a()
{
	var_d47e142e = function_3f10449f();
	foreach(var_5dc5e20a in var_d47e142e)
	{
		var_5dc5e20a function_b8862210("amb_cockpit", var_5dc5e20a);
	}
}

/*
	Name: function_fc716128
	Namespace: namespace_1d1d22be
	Checksum: 0xD3C8B28E
	Offset: 0xFF0
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_fc716128()
{
	function_37cbcf1a("evt_water_vo_lyr_01", (0, 0, 0));
}

/*
	Name: function_6e78d063
	Namespace: namespace_1d1d22be
	Checksum: 0x4DE9958E
	Offset: 0x1020
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_6e78d063()
{
	function_37cbcf1a("evt_water_vo_lyr_02", (0, 0, 0));
}

/*
	Name: function_487655fa
	Namespace: namespace_1d1d22be
	Checksum: 0xBACC479D
	Offset: 0x1050
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_487655fa()
{
	function_37cbcf1a("evt_water_vo_lyr_03", (0, 0, 0));
}

/*
	Name: function_decbd389
	Namespace: namespace_1d1d22be
	Checksum: 0x2827020C
	Offset: 0x1080
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_decbd389()
{
	function_37cbcf1a("evt_drown_blink_01", (0, 0, 0));
}

/*
	Name: function_4ce4df2
	Namespace: namespace_1d1d22be
	Checksum: 0x4B763BFC
	Offset: 0x10B0
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_4ce4df2()
{
	function_37cbcf1a("evt_drown_blink_02", (0, 0, 0));
}

/*
	Name: function_2ad0c85b
	Namespace: namespace_1d1d22be
	Checksum: 0x44CC556D
	Offset: 0x10E0
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_2ad0c85b()
{
	function_37cbcf1a("evt_drown_blink_03", (0, 0, 0));
}

/*
	Name: function_69386a6b
	Namespace: namespace_1d1d22be
	Checksum: 0xE05D0B0E
	Offset: 0x1110
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_69386a6b()
{
	function_37cbcf1a("evt_drown", (0, 0, 0));
}

/*
	Name: function_ed6114d2
	Namespace: namespace_1d1d22be
	Checksum: 0x6F9687D8
	Offset: 0x1140
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_ed6114d2()
{
	function_37cbcf1a("evt_door_kick", (12620, 836, 2979));
}

/*
	Name: function_ceaeaa5a
	Namespace: namespace_1d1d22be
	Checksum: 0xB4FD81E6
	Offset: 0x1178
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_ceaeaa5a()
{
	function_37cbcf1a("evt_door_bomb_exp", (12295, -721, 2971));
	level namespace_82b91a51::function_ef3f75eb("sndWR");
}

/*
	Name: function_c3d203d6
	Namespace: namespace_1d1d22be
	Checksum: 0xDFCDEFB3
	Offset: 0x11D0
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_c3d203d6()
{
	function_37cbcf1a("evt_lower_combat_exp_snap", (17220.8, -3074.75, 3528.5));
}

/*
	Name: function_5dcd1d9
	Namespace: namespace_1d1d22be
	Checksum: 0x5102B988
	Offset: 0x1210
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_5dcd1d9()
{
	function_37cbcf1a("evt_scripted_jet", (17220.8, -3074.75, 3528.5));
}

/*
	Name: function_4e875e0d
	Namespace: namespace_1d1d22be
	Checksum: 0x16759B83
	Offset: 0x1250
	Size: 0xDB
	Parameters: 0
	Flags: None
*/
function function_4e875e0d()
{
	function_37cbcf1a("evt_breach_gunfire", (0, 0, 0));
	wait(3.24);
	function_37cbcf1a("evt_breach_missile_zip", (15047, 13, 3121));
	wait(0.8);
	function_37cbcf1a("evt_breach_exp", (15088, 19, 2942));
	wait(1.2);
	function_37cbcf1a("evt_breach_debris_left", (15286, 391, 2913));
	function_37cbcf1a("evt_breach_debris_right", (15308, -453, 2914));
}

/*
	Name: function_16a46955
	Namespace: namespace_1d1d22be
	Checksum: 0xB0B3E6C6
	Offset: 0x1338
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_16a46955()
{
	wait(4.1);
	function_37cbcf1a("evt_breach_slowmo", (0, 0, 0));
}

/*
	Name: function_ad15f6f5
	Namespace: namespace_1d1d22be
	Checksum: 0x3F5991D8
	Offset: 0x1370
	Size: 0xAF
	Parameters: 0
	Flags: None
*/
function function_ad15f6f5()
{
	if(level.var_fc9a3509 == 1)
	{
		level.var_b8fee04d function_c2931a36("evt_generator_overload");
		level.var_554aefcd function_c2931a36("evt_generator_overload_panel");
	}
	else if(level.var_fc9a3509 == 2)
	{
		level.var_df015ab6 function_c2931a36("evt_generator_overload");
		level.var_7b4d6a36 function_c2931a36("evt_generator_overload_panel");
	}
}

/*
	Name: function_1024da0a
	Namespace: namespace_1d1d22be
	Checksum: 0x6B5A5320
	Offset: 0x1428
	Size: 0x10F
	Parameters: 0
	Flags: None
*/
function function_1024da0a()
{
	if(level.var_fc9a3509 == 1)
	{
		level.var_b8fee04d function_eaa69754();
		level.var_b8fee04d function_921a1574("evt_generator_release");
		level.var_554aefcd function_eaa69754();
		level.var_554aefcd function_921a1574("evt_generator_release_panel");
	}
	else if(level.var_fc9a3509 == 2)
	{
		level.var_df015ab6 function_eaa69754();
		level.var_df015ab6 function_921a1574("evt_generator_release");
		level.var_7b4d6a36 function_eaa69754();
		level.var_7b4d6a36 function_921a1574("evt_generator_release_panel");
	}
}

/*
	Name: function_e76f158
	Namespace: namespace_1d1d22be
	Checksum: 0x79524140
	Offset: 0x1540
	Size: 0x13F
	Parameters: 0
	Flags: None
*/
function function_e76f158()
{
	if(level.var_fc9a3509 == 1)
	{
		level.var_b8fee04d function_eaa69754();
		level.var_b8fee04d function_921a1574("evt_boss_exp_01");
		thread function_30d6c739();
		level.var_554aefcd function_eaa69754();
		level.var_554aefcd function_921a1574("evt_generator_release_panel");
		wait(0.1);
		level.var_fc9a3509 = 2;
	}
	else if(level.var_fc9a3509 == 2)
	{
		level.var_df015ab6 function_eaa69754();
		level.var_df015ab6 function_921a1574("evt_boss_exp_02");
		thread function_56d941a2();
		level.var_7b4d6a36 function_eaa69754();
		level.var_7b4d6a36 function_921a1574("evt_generator_release_panel");
	}
}

/*
	Name: function_30d6c739
	Namespace: namespace_1d1d22be
	Checksum: 0xC9BC37DE
	Offset: 0x1688
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_30d6c739()
{
	wait(1.5);
	function_37cbcf1a("evt_boss_exp_elec", (16678, 2893, 2276));
}

/*
	Name: function_56d941a2
	Namespace: namespace_1d1d22be
	Checksum: 0x5F51DFC8
	Offset: 0x16C8
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_56d941a2()
{
	wait(1.5);
	function_37cbcf1a("evt_boss_exp_elec", (16126, 4352, 2279));
}

/*
	Name: function_f8835fe9
	Namespace: namespace_1d1d22be
	Checksum: 0x6BF0CFC9
	Offset: 0x1708
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_f8835fe9()
{
	function_37cbcf1a("evt_escape_exp_sml", (0, 0, 0));
}

/*
	Name: function_5d0cee98
	Namespace: namespace_1d1d22be
	Checksum: 0xF90EEEF8
	Offset: 0x1738
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_5d0cee98()
{
	function_37cbcf1a("evt_escape_exp_lrg", (0, 0, 0));
}

/*
	Name: function_b01c9f8
	Namespace: namespace_1d1d22be
	Checksum: 0x2A5EEA65
	Offset: 0x1768
	Size: 0x32B
	Parameters: 0
	Flags: None
*/
function function_b01c9f8()
{
	function_37cbcf1a("evt_runout_first_exp", (0, 0, 0));
	wait(0.5);
	var_1d84d980 = function_9b7fda5e("script_origin", (16357, 1454, 2140));
	var_1d84d980 function_c2931a36("evt_runout_alarm_01");
	var_8f8c48bb = function_9b7fda5e("script_origin", (16548, 1041, 2561));
	var_8f8c48bb function_c2931a36("evt_runout_alarm_02");
	var_472c43c8 = function_9b7fda5e("script_origin", (15669, 1167, 2320));
	var_472c43c8 function_c2931a36("evt_runout_water_spray_01");
	var_b933b303 = function_9b7fda5e("script_origin", (16505, 918, 2519));
	var_b933b303 function_c2931a36("evt_runout_water_spray_01");
	var_8218f48c = function_9b7fda5e("script_origin", (15775, 1150, 2285));
	var_8218f48c function_c2931a36("evt_runout_water_splatter");
	var_f42063c7 = function_9b7fda5e("script_origin", (16500, 913, 2409));
	var_f42063c7 function_c2931a36("evt_runout_water_splatter");
	var_78abe30 = function_9b7fda5e("script_origin", (15643, 1158, 2442));
	var_78abe30 function_c2931a36("evt_runout_large_water");
	var_b77e0da = function_9b7fda5e("script_origin", (15883, 937, 2459));
	var_b77e0da function_c2931a36("evt_runout_wall_fire");
	var_6754449b = function_9b7fda5e("script_origin", (15755, 1298, 2164));
	var_6754449b function_c2931a36("evt_runout_large_fire");
	level waittill("hash_92f048cf");
	function_37cbcf1a("evt_runout_corridor_exp", (15862, 1444, 2090));
}

/*
	Name: function_850c7ab7
	Namespace: namespace_1d1d22be
	Checksum: 0xD5249E51
	Offset: 0x1AA0
	Size: 0x1E3
	Parameters: 0
	Flags: None
*/
function function_850c7ab7()
{
	wait(0.5);
	function_37cbcf1a("evt_exfil_elec_exp", (15827, 139, 3144));
	wait(0.5);
	function_37cbcf1a("evt_exfil_exp_01", (15930, 978, 2815));
	wait(14.2);
	function_37cbcf1a("evt_exfil_exp_02", (15725, 56, 2889));
	wait(0.6);
	function_37cbcf1a("evt_exfil_exp_03", (15425, 287, 2846));
	wait(0.9);
	function_37cbcf1a("evt_exfil_exp_04", (15039, 820, 3270));
	wait(0.7);
	function_37cbcf1a("evt_exfil_exp_05", (14347, 2257, 2468));
	wait(1.3);
	function_37cbcf1a("evt_exfil_exp_06", (15038, 4150, 2915));
	wait(0.4);
	function_37cbcf1a("evt_exfil_exp_07", (15180, 2305, 3093));
	wait(2.2);
	function_37cbcf1a("evt_exfil_exp_08", (14142, 6656, 3856));
	wait(0.4);
	function_37cbcf1a("evt_exfil_exp_09", (15063, 6200, 3213));
}

/*
	Name: function_fbfb4dae
	Namespace: namespace_1d1d22be
	Checksum: 0xF771A109
	Offset: 0x1C90
	Size: 0x767
	Parameters: 0
	Flags: None
*/
function function_fbfb4dae()
{
	level.var_7dc8a9bd[0][0] = "vox_aqui_130_10_001_esol";
	level.var_7dc8a9bd[0][1] = "vox_aqui_130_10_002_esol";
	level.var_7dc8a9bd[1][0] = "vox_aqui_130_20_001_esol";
	level.var_7dc8a9bd[1][1] = "vox_aqui_130_20_002_esol";
	level.var_7dc8a9bd[2][0] = "vox_aqui_130_30_001_esol";
	level.var_7dc8a9bd[2][1] = "vox_aqui_130_30_002_esol";
	level.var_7dc8a9bd[2][2] = "vox_aqui_130_30_003_esol";
	level.var_7dc8a9bd[2][3] = "vox_aqui_130_30_004_esol";
	level.var_7dc8a9bd[3][0] = "vox_aqui_130_40_001_esol";
	level.var_7dc8a9bd[3][1] = "vox_aqui_130_40_002_esol";
	level.var_7dc8a9bd[3][2] = "vox_aqui_130_40_003_esol";
	level.var_7dc8a9bd[4][0] = "vox_aqui_130_50_001_esol";
	level.var_7dc8a9bd[4][1] = "vox_aqui_130_50_002_esol";
	level.var_7dc8a9bd[4][2] = "vox_aqui_130_50_003_esol";
	level.var_7dc8a9bd[4][3] = "vox_aqui_130_50_004_esol";
	level.var_7dc8a9bd[4][4] = "vox_aqui_130_50_005_esol";
	level.var_7dc8a9bd[4][5] = "vox_aqui_130_50_006_esol";
	level.var_7dc8a9bd[5][0] = "vox_aqui_130_60_001_esol";
	level.var_7dc8a9bd[5][1] = "vox_aqui_130_60_002_esol";
	level.var_7dc8a9bd[5][2] = "vox_aqui_130_60_003_esol";
	level.var_7dc8a9bd[5][3] = "vox_aqui_130_60_004_esol";
	level.var_7dc8a9bd[5][4] = "vox_aqui_130_60_005_esol";
	level.var_7dc8a9bd[5][5] = "vox_aqui_130_60_006_esol";
	level.var_7dc8a9bd[6][0] = "vox_aqui_130_70_001_esol";
	level.var_7dc8a9bd[6][1] = "vox_aqui_130_70_002_esol";
	level.var_7dc8a9bd[6][2] = "vox_aqui_130_70_003_esol";
	level.var_7dc8a9bd[7][0] = "vox_aqui_130_80_001_esol";
	level.var_7dc8a9bd[7][1] = "vox_aqui_130_80_002_esol";
	level.var_7dc8a9bd[7][2] = "vox_aqui_130_80_003_esol";
	level.var_7dc8a9bd[7][3] = "vox_aqui_130_80_004_esol";
	level.var_7dc8a9bd[7][4] = "vox_aqui_130_80_005_esol";
	level.var_7dc8a9bd[8][0] = "vox_aqui_130_90_001_esol";
	level.var_7dc8a9bd[8][1] = "vox_aqui_130_90_002_esol";
	level.var_7dc8a9bd[8][2] = "vox_aqui_130_90_003_esol";
	level.var_7dc8a9bd[8][3] = "vox_aqui_130_90_004_esol";
	level.var_7dc8a9bd[8][4] = "vox_aqui_130_90_005_esol";
	level.var_7dc8a9bd[9][0] = "vox_aqui_130_100_001_esol";
	level.var_7dc8a9bd[9][1] = "vox_aqui_130_100_002_esol";
	level.var_7dc8a9bd[9][2] = "vox_aqui_130_100_003_esol";
	level.var_7dc8a9bd[9][4] = "vox_aqui_130_100_004_esol";
	level.var_7dc8a9bd[9][5] = "vox_aqui_130_100_005_esol";
	level.var_7dc8a9bd[9][6] = "vox_aqui_130_100_006_esol";
	level.var_7dc8a9bd[9][7] = "vox_aqui_130_100_007_esol";
	level.var_7dc8a9bd[10][0] = "vox_aqui_130_110_001_esol";
	level.var_7dc8a9bd[10][1] = "vox_aqui_130_110_002_esol";
	level.var_7dc8a9bd[10][2] = "vox_aqui_130_110_003_esol";
	level.var_7dc8a9bd[10][3] = "vox_aqui_130_110_004_esol";
	level.var_7dc8a9bd[11][0] = "vox_aqui_130_120_001_esol";
	level.var_7dc8a9bd[11][1] = "vox_aqui_130_120_002_esol";
	level.var_7dc8a9bd[11][2] = "vox_aqui_130_120_003_esol";
	level.var_7dc8a9bd[11][3] = "vox_aqui_130_120_004_esol";
	level.var_7dc8a9bd[12][0] = "vox_aqui_130_120_005_esol";
	level.var_7dc8a9bd[12][1] = "vox_aqui_130_120_006_esol";
	level.var_7dc8a9bd[12][2] = "vox_aqui_130_120_007_esol";
	level.var_7dc8a9bd[12][3] = "vox_aqui_130_120_008_esol";
	level.var_7dc8a9bd[13][0] = "vox_aqui_130_130_001_esol";
	level.var_7dc8a9bd[13][1] = "vox_aqui_130_130_002_esol";
	level.var_7dc8a9bd[13][2] = "vox_aqui_130_130_003_esol";
	level.var_7dc8a9bd[13][3] = "vox_aqui_130_130_004_esol";
	level.var_7dc8a9bd[13][4] = "vox_aqui_130_130_005_esol";
	level.var_7dc8a9bd[14][0] = "vox_aqui_130_140_001_esol";
	level.var_7dc8a9bd[14][1] = "vox_aqui_130_140_002_esol";
	level.var_7dc8a9bd[14][2] = "vox_aqui_130_140_003_esol";
	level.var_7dc8a9bd[14][3] = "vox_aqui_130_140_004_esol";
	level.var_7dc8a9bd[14][4] = "vox_aqui_130_140_005_esol";
	level.var_7dc8a9bd[15][0] = "vox_aqui_130_150_001_esol";
	level.var_7dc8a9bd[15][1] = "vox_aqui_130_150_002_esol";
	level.var_7dc8a9bd[15][2] = "vox_aqui_130_150_003_esol";
	level.var_7dc8a9bd[15][3] = "vox_aqui_130_150_004_esol";
	level.var_7dc8a9bd[15][4] = "vox_aqui_130_150_005_esol";
}

/*
	Name: function_cd85d22a
	Namespace: namespace_1d1d22be
	Checksum: 0x9380F2BF
	Offset: 0x2400
	Size: 0x1F7
	Parameters: 0
	Flags: None
*/
function function_cd85d22a()
{
	wait(5);
	if(isdefined(level.var_cca43db2))
	{
		return;
	}
	level.var_cca43db2 = function_9b7fda5e("script_origin", (0, 0, 0));
	level.var_7dc8a9bd = [];
	function_fbfb4dae();
	var_c957f6b6 = 0;
	var_e78c0153 = 0;
	var_9999bbd7 = 0;
	while(1)
	{
		level namespace_ad23e503::function_1ab5ebec("background_chatter_active");
		var_9999bbd7 = function_26299103(level.var_7dc8a9bd.size);
		var_7581b49e = level.var_7dc8a9bd[var_9999bbd7];
		foreach(var_48b937ab in var_7581b49e)
		{
			var_e78c0153 = function_799102f2(var_48b937ab);
			level.var_cca43db2 function_921a1574(var_48b937ab);
			if(var_e78c0153 > 0)
			{
				wait(var_e78c0153 / 1000);
			}
			wait(function_72a94f05(0.3, 1));
		}
		wait(function_72a94f05(1.5, 3.5));
	}
}

/*
	Name: function_de37a122
	Namespace: namespace_1d1d22be
	Checksum: 0x401EE5DF
	Offset: 0x2600
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function function_de37a122(var_ce32be36)
{
	if(!isdefined(var_ce32be36))
	{
		var_ce32be36 = 1;
	}
	if(var_ce32be36)
	{
		level namespace_ad23e503::function_74d6b22f("background_chatter_active");
	}
	else
	{
		level namespace_ad23e503::function_9d134160("background_chatter_active");
	}
}

#namespace namespace_71a63eac;

/*
	Name: function_973b77f9
	Namespace: namespace_71a63eac
	Checksum: 0x6242B7E3
	Offset: 0x2670
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_973b77f9()
{
	namespace_ccb8d056::function_c1cdedfb("none");
}

/*
	Name: function_5712e4e2
	Namespace: namespace_71a63eac
	Checksum: 0xA01B03BA
	Offset: 0x2698
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_5712e4e2()
{
	namespace_ccb8d056::function_c1cdedfb("intro_igc");
}

/*
	Name: function_bdb99f05
	Namespace: namespace_71a63eac
	Checksum: 0xD4B9231
	Offset: 0x26C0
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_bdb99f05()
{
	namespace_ccb8d056::function_c1cdedfb("destroy_asp");
}

/*
	Name: function_48972636
	Namespace: namespace_71a63eac
	Checksum: 0xCC7B5971
	Offset: 0x26E8
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_48972636()
{
	namespace_ccb8d056::function_c1cdedfb("dogfight");
}

/*
	Name: function_e703f818
	Namespace: namespace_71a63eac
	Checksum: 0xE55F2BA4
	Offset: 0x2710
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_e703f818()
{
	namespace_ccb8d056::function_c1cdedfb("comm_tower");
}

/*
	Name: function_ca2c6d9f
	Namespace: namespace_71a63eac
	Checksum: 0xBC60DA9E
	Offset: 0x2738
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_ca2c6d9f()
{
	namespace_ccb8d056::function_c1cdedfb("water_room_objective");
}

/*
	Name: function_bb8ce831
	Namespace: namespace_71a63eac
	Checksum: 0xB6159BEA
	Offset: 0x2760
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_bb8ce831()
{
	wait(7);
	namespace_ccb8d056::function_c1cdedfb("tension_loop_1");
}

/*
	Name: function_8210b658
	Namespace: namespace_71a63eac
	Checksum: 0xF3321B6D
	Offset: 0x2790
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_8210b658()
{
	namespace_ccb8d056::function_c1cdedfb("igc_1_swim");
}

/*
	Name: function_e18f629a
	Namespace: namespace_71a63eac
	Checksum: 0x616CC581
	Offset: 0x27B8
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_e18f629a()
{
	namespace_ccb8d056::function_c1cdedfb("tension_loop_2");
}

/*
	Name: function_a2d40521
	Namespace: namespace_71a63eac
	Checksum: 0xA832B5BB
	Offset: 0x27E0
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_a2d40521()
{
	namespace_ccb8d056::function_c1cdedfb("battle_bots");
}

/*
	Name: function_b1ee6c2d
	Namespace: namespace_71a63eac
	Checksum: 0x7FB6BFDF
	Offset: 0x2808
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_b1ee6c2d()
{
	namespace_ccb8d056::function_c1cdedfb("dogfight_2");
}

/*
	Name: function_6860e122
	Namespace: namespace_71a63eac
	Checksum: 0x2C639473
	Offset: 0x2830
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_6860e122()
{
	namespace_ccb8d056::function_c1cdedfb("interference");
}

/*
	Name: function_55376eeb
	Namespace: namespace_71a63eac
	Checksum: 0xC464EF76
	Offset: 0x2858
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_55376eeb()
{
	namespace_ccb8d056::function_c1cdedfb("igc_2_reinforced_door");
}

/*
	Name: function_36cd6ee8
	Namespace: namespace_71a63eac
	Checksum: 0x27D86413
	Offset: 0x2880
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_36cd6ee8()
{
	namespace_ccb8d056::function_c1cdedfb("ground_battle");
}

/*
	Name: function_5ac17e2c
	Namespace: namespace_71a63eac
	Checksum: 0xFDE99485
	Offset: 0x28A8
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_5ac17e2c()
{
	namespace_ccb8d056::function_c1cdedfb("just_breach_it");
}

/*
	Name: function_4de42644
	Namespace: namespace_71a63eac
	Checksum: 0x73CFB806
	Offset: 0x28D0
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_4de42644()
{
	namespace_ccb8d056::function_c1cdedfb("igc_3_chase");
}

/*
	Name: function_f819830b
	Namespace: namespace_71a63eac
	Checksum: 0x584B2EFD
	Offset: 0x28F8
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_f819830b()
{
	namespace_ccb8d056::function_c1cdedfb("chase_maretti");
}

/*
	Name: function_1a168f0c
	Namespace: namespace_71a63eac
	Checksum: 0xA3EB6BE
	Offset: 0x2920
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_1a168f0c()
{
	namespace_ccb8d056::function_c1cdedfb("hendricks_fight");
}

/*
	Name: function_99caac9d
	Namespace: namespace_71a63eac
	Checksum: 0xA8DC39F3
	Offset: 0x2948
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_99caac9d()
{
	namespace_ccb8d056::function_c1cdedfb("overload_battle");
}

/*
	Name: function_e0e00797
	Namespace: namespace_71a63eac
	Checksum: 0xDB0E9DD4
	Offset: 0x2970
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_e0e00797()
{
	namespace_ccb8d056::function_c1cdedfb("igc_4_maretti");
}

/*
	Name: function_a1e074db
	Namespace: namespace_71a63eac
	Checksum: 0x4200A0B4
	Offset: 0x2998
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_a1e074db()
{
	namespace_ccb8d056::function_c1cdedfb("escape");
}

/*
	Name: function_ae6b41cd
	Namespace: namespace_71a63eac
	Checksum: 0x9C38EC14
	Offset: 0x29C0
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_ae6b41cd()
{
	namespace_ccb8d056::function_c1cdedfb("igc_5_outro");
}

