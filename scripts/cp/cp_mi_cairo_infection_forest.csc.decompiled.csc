#using scripts\codescripts\struct;
#using scripts\cp\cp_mi_cairo_infection_util;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\postfx_shared;
#using scripts\shared\util_shared;

#namespace namespace_668ca2a6;

/*
	Name: function_d290ebfa
	Namespace: namespace_668ca2a6
	Checksum: 0x74805711
	Offset: 0x338
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	function_2ea898a8();
	level thread function_ba1c81f9();
}

/*
	Name: function_2ea898a8
	Namespace: namespace_668ca2a6
	Checksum: 0x661DAA12
	Offset: 0x370
	Size: 0x1FB
	Parameters: 0
	Flags: None
*/
function function_2ea898a8()
{
	namespace_71e9cb84::function_50f16166("world", "forest_mortar_index", 1, 3, "int", &function_67664f3d, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "forest_surreal_exposure", 1, 1, "int", &function_bcf75575, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "pstfx_frost_up", 1, 1, "counter", &function_fa9ecbf7, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "pstfx_frost_down", 1, 1, "counter", &function_a34472c4, 0, 0);
	namespace_71e9cb84::function_50f16166("scriptmover", "wfa_steam_sound", 1, 1, "counter", &function_1a244510, 0, 0);
	namespace_71e9cb84::function_50f16166("scriptmover", "cp_infection_world_falls_break_rumble", 1, 1, "counter", &function_5d6ca4fb, 0, 0);
	namespace_71e9cb84::function_50f16166("scriptmover", "cp_infection_world_falls_away_rumble", 1, 1, "counter", &function_5d6ca4fb, 0, 0);
}

/*
	Name: function_67664f3d
	Namespace: namespace_668ca2a6
	Checksum: 0x19A45AE1
	Offset: 0x578
	Size: 0x87
	Parameters: 7
	Flags: None
*/
function function_67664f3d(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 0)
	{
		level.var_2521bbc7 = 0;
	}
	else if(var_9193c732)
	{
		level.var_2521bbc7 = 1;
		level.var_773fdd87 = var_9193c732;
		level.var_bf551cdb = 1;
	}
}

/*
	Name: function_ba1c81f9
	Namespace: namespace_668ca2a6
	Checksum: 0x24C0E4BC
	Offset: 0x608
	Size: 0x33B
	Parameters: 0
	Flags: None
*/
function function_ba1c81f9()
{
	if(!isdefined(level.var_773fdd87))
	{
		level.var_773fdd87 = 0;
		level.var_bf551cdb = 1;
	}
	var_5e76f0af = 0;
	var_67520c6a = 3;
	while(1)
	{
		while(!(isdefined(level.var_2521bbc7) && level.var_2521bbc7))
		{
			wait(1);
		}
		switch(level.var_773fdd87)
		{
			case 0:
			{
				var_1e806caa = namespace_14b42b8a::function_7faf4c39("s_background_mortar_0", "targetname");
				var_67520c6a = function_72a94f05(0.5, 1);
				break;
			}
			case 1:
			{
				var_1e806caa = namespace_14b42b8a::function_7faf4c39("s_background_mortar_1", "targetname");
				var_67520c6a = function_72a94f05(1.5, 2.5);
				break;
			}
			case 2:
			{
				var_1e806caa = namespace_14b42b8a::function_7faf4c39("s_background_mortar_2", "targetname");
				var_67520c6a = function_72a94f05(1.5, 2);
				break;
			}
			case 3:
			{
				var_1e806caa = namespace_14b42b8a::function_7faf4c39("s_background_mortar_3", "targetname");
				var_67520c6a = function_72a94f05(1.5, 2.5);
				break;
			}
			case 4:
			{
				var_1e806caa = namespace_14b42b8a::function_7faf4c39("s_background_mortar_4", "targetname");
				var_67520c6a = function_72a94f05(5, 8);
				break;
			}
			case 5:
			{
				var_1e806caa = namespace_14b42b8a::function_7faf4c39("s_background_mortar_5", "targetname");
				var_67520c6a = function_72a94f05(5, 8);
				break;
			}
			case 6:
			case default:
			{
				return;
				break;
			}
		}
		if(isdefined(level.var_bf551cdb))
		{
			var_5e76f0af = function_26299103(var_1e806caa.size);
			level.var_bf551cdb = undefined;
		}
		function_fd4ba5e1(0, "explosions/fx_exp_mortar_snow_reverse", var_1e806caa[var_5e76f0af].var_722885f3);
		var_5e76f0af++;
		if(var_5e76f0af >= var_1e806caa.size)
		{
			var_5e76f0af = 0;
		}
		wait(var_67520c6a);
	}
}

/*
	Name: function_eada2afe
	Namespace: namespace_668ca2a6
	Checksum: 0x522E8204
	Offset: 0x950
	Size: 0xF5
	Parameters: 7
	Flags: None
*/
function function_eada2afe(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		level thread function_b71abfbc(var_ec74b091, 1, 0.4);
		level thread function_b71abfbc(var_ec74b091, 5, 0.4);
		level thread function_b71abfbc(var_ec74b091, 9, 0.4);
		level thread function_b71abfbc(var_ec74b091, 12, 0.4);
	}
	else
	{
		level notify("hash_693a8925");
	}
}

/*
	Name: function_b71abfbc
	Namespace: namespace_668ca2a6
	Checksum: 0xF04BFE44
	Offset: 0xA50
	Size: 0xC1
	Parameters: 3
	Flags: None
*/
function function_b71abfbc(var_ec74b091, var_abf8ab96, var_67520c6a)
{
	level endon("hash_693a8925");
	var_ee164041 = var_abf8ab96;
	while(1)
	{
		level thread function_65dc26d0(var_ec74b091, var_ee164041);
		var_3865186 = var_67520c6a + function_72a94f05(var_67520c6a * -1 / 4, var_67520c6a / 4);
		wait(var_3865186);
		var_ee164041++;
		if(var_ee164041 > 15)
		{
			var_ee164041 = 1;
		}
	}
}

/*
	Name: function_65dc26d0
	Namespace: namespace_668ca2a6
	Checksum: 0xCEC0D27F
	Offset: 0xB20
	Size: 0x2A9
	Parameters: 2
	Flags: None
*/
function function_65dc26d0(var_ec74b091, var_2abbfbcb)
{
	var_55750b30 = [];
	var_51ea8b3e = namespace_14b42b8a::function_7faf4c39("forest_debris");
	for(var_c957f6b6 = 0; var_c957f6b6 < var_51ea8b3e.size; var_c957f6b6++)
	{
		if(isdefined(var_51ea8b3e[var_c957f6b6].var_6df9264) && var_51ea8b3e[var_c957f6b6].var_1430971 == var_2abbfbcb)
		{
			var_5aeadf3 = function_9b7fda5e(var_ec74b091, var_51ea8b3e[var_c957f6b6].var_722885f3, "script_model");
			var_5aeadf3 function_e48f905e(var_51ea8b3e[var_c957f6b6].var_6df9264);
			var_5aeadf3.var_170527fb = var_51ea8b3e[var_c957f6b6].var_170527fb;
			var_d007da9e = var_51ea8b3e[var_c957f6b6].var_2e596046;
			var_d007da9e = 120;
			var_5aeadf3.var_d007da9e = function_72a94f05(var_d007da9e, var_d007da9e + 150);
			var_5aeadf3.var_588704d4 = function_72a94f05(var_51ea8b3e[var_c957f6b6].var_d66f2978, var_51ea8b3e[var_c957f6b6].var_d66f2978 + 1.5);
			if(isdefined(var_51ea8b3e[var_c957f6b6].var_6ab6f4fd))
			{
				var_5aeadf3.var_6ab6f4fd = var_51ea8b3e[var_c957f6b6].var_6ab6f4fd;
			}
			namespace_84970cc4::function_69554b3e(var_55750b30, var_5aeadf3, 0);
		}
	}
	foreach(var_5aeadf3 in var_55750b30)
	{
		var_5aeadf3 thread function_ba900c87(var_ec74b091, var_2abbfbcb);
	}
}

/*
	Name: function_ba900c87
	Namespace: namespace_668ca2a6
	Checksum: 0xFCD8AE6D
	Offset: 0xDD8
	Size: 0x253
	Parameters: 2
	Flags: None
*/
function function_ba900c87(var_ec74b091, var_2abbfbcb)
{
	var_6a197e6a = namespace_14b42b8a::function_7922262b("forest_debris_path_" + var_2abbfbcb);
	var_97b57bc3 = namespace_82b91a51::function_b9fd52a4(var_ec74b091, "tag_origin", self.var_722885f3, self.var_6ab6f4fd);
	self function_37f7858a(var_97b57bc3);
	var_52e2b50d = namespace_82b91a51::function_b9fd52a4(var_ec74b091, "tag_origin", var_6a197e6a.var_722885f3, self.var_6ab6f4fd);
	var_97b57bc3 function_37f7858a(var_52e2b50d);
	self thread function_7684532d(var_97b57bc3);
	while(isdefined(var_6a197e6a.var_b07228b6))
	{
		var_74adb9b4 = namespace_14b42b8a::function_7922262b(var_6a197e6a.var_b07228b6);
		var_ccd4343c = function_7d15e2f8(var_6a197e6a.var_722885f3, var_74adb9b4.var_722885f3);
		var_78962fff = var_ccd4343c / self.var_d007da9e;
		var_52e2b50d function_a96a2721(var_74adb9b4.var_722885f3, var_78962fff, 0, 0);
		var_52e2b50d waittill("hash_a21db68a");
		var_6a197e6a = var_74adb9b4;
	}
	self notify("hash_d2ba04dd");
	self function_52fddbd0();
	var_a2d47c3d = self.var_722885f3;
	var_6ab6f4fd = self.var_6ab6f4fd;
	self function_dc8c8404();
	var_52e2b50d function_dc8c8404();
}

/*
	Name: function_7684532d
	Namespace: namespace_668ca2a6
	Checksum: 0x80591390
	Offset: 0x1038
	Size: 0xB3
	Parameters: 1
	Flags: None
*/
function function_7684532d(var_97b57bc3)
{
	self endon("hash_d2ba04dd");
	var_a92f960d = 1000;
	var_c4c2c426 = 360 * var_a92f960d;
	var_78962fff = var_c4c2c426 / 360 * self.var_588704d4;
	while(1)
	{
		var_97b57bc3 function_5613042d(var_c4c2c426, var_78962fff, 0, 0);
		var_97b57bc3 waittill("hash_6654e4f4");
	}
	var_97b57bc3 function_dc8c8404();
}

/*
	Name: function_fa9ecbf7
	Namespace: namespace_668ca2a6
	Checksum: 0x642718EE
	Offset: 0x10F8
	Size: 0xCB
	Parameters: 7
	Flags: None
*/
function function_fa9ecbf7(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	var_5dc5e20a = function_79c174a3(var_ec74b091);
	if(!isdefined(var_5dc5e20a.var_8afc17fb))
	{
		var_5dc5e20a.var_8afc17fb = 0;
	}
	if(var_5dc5e20a.var_8afc17fb == 0)
	{
		var_5dc5e20a.var_8afc17fb = 1;
		var_5dc5e20a namespace_bdde9225::function_bca12b73("pstfx_frost_loop");
	}
}

/*
	Name: function_a34472c4
	Namespace: namespace_668ca2a6
	Checksum: 0x9AC35F67
	Offset: 0x11D0
	Size: 0x9B
	Parameters: 7
	Flags: None
*/
function function_a34472c4(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	var_5dc5e20a = function_79c174a3(var_ec74b091);
	if(var_5dc5e20a.var_8afc17fb === 1)
	{
		var_5dc5e20a.var_8afc17fb = 0;
		var_5dc5e20a thread namespace_bdde9225::function_51f910fd();
	}
}

/*
	Name: function_1a244510
	Namespace: namespace_668ca2a6
	Checksum: 0x5D214491
	Offset: 0x1278
	Size: 0x6B
	Parameters: 7
	Flags: None
*/
function function_1a244510(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		function_921a1574(var_ec74b091, "evt_small_flyaway_steam", self.var_722885f3);
	}
}

/*
	Name: function_5d6ca4fb
	Namespace: namespace_668ca2a6
	Checksum: 0x7DC41CB5
	Offset: 0x12F0
	Size: 0x63
	Parameters: 7
	Flags: None
*/
function function_5d6ca4fb(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		function_5e09918e(var_ec74b091, var_7f86519e, self.var_722885f3);
	}
}

/*
	Name: function_bcf75575
	Namespace: namespace_668ca2a6
	Checksum: 0xE1364B7A
	Offset: 0x1360
	Size: 0x6B
	Parameters: 7
	Flags: None
*/
function function_bcf75575(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 && var_9193c732 != var_ade4d29d)
	{
		level thread function_3d919555(var_ec74b091);
	}
}

/*
	Name: function_3d919555
	Namespace: namespace_668ca2a6
	Checksum: 0x729A1673
	Offset: 0x13D8
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_3d919555(var_ec74b091)
{
	function_2f183a94(var_ec74b091, 2);
	wait(1);
	function_2f183a94(var_ec74b091, 1);
}

