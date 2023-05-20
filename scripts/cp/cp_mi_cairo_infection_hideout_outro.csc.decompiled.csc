#using scripts\codescripts\struct;
#using scripts\cp\_load;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\util_shared;

#namespace namespace_6473bd03;

/*
	Name: function_d290ebfa
	Namespace: namespace_6473bd03
	Checksum: 0xEFB8DFCE
	Offset: 0x400
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	function_2ea898a8();
	level thread function_7c6c7300();
}

/*
	Name: function_2ea898a8
	Namespace: namespace_6473bd03
	Checksum: 0xBC64849B
	Offset: 0x438
	Size: 0x30B
	Parameters: 0
	Flags: None
*/
function function_2ea898a8()
{
	var_80bea535 = function_eaa48678(4);
	namespace_71e9cb84::function_50f16166("world", "infection_hideout_fx", 1, 1, "int", &function_68fe944f, 1, 1);
	namespace_71e9cb84::function_50f16166("world", "hideout_stretch", 1, 1, "int", &function_8cc09e1d, 1, 1);
	namespace_71e9cb84::function_50f16166("world", "stalingrad_rise_nuke", 1, 2, "int", &function_41c64230, 1, 1);
	namespace_71e9cb84::function_50f16166("world", "stalingrand_nuke_fog_banks", 1, 1, "int", &function_3c38e46d, 1, 1);
	namespace_71e9cb84::function_50f16166("world", "city_tree_passed", 1, 1, "int", &function_52351122, 1, 1);
	namespace_71e9cb84::function_50f16166("world", "stalingrad_tree_init", 1, 2, "int", &function_2443377d, 1, 1);
	namespace_71e9cb84::function_50f16166("world", "stalingrad_city_ceilings", 1, var_80bea535, "int", &function_fb331c3c, 1, 1);
	namespace_71e9cb84::function_50f16166("world", "infection_nuke_lights", 1, 1, "int", &function_92bc5026, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "ukko_toggling", 1, 1, "counter", &function_f414574b, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "nuke_earth_quake", 1, function_eaa48678(8), "int", &function_521c838b, 0, 0);
}

/*
	Name: function_68fe944f
	Namespace: namespace_6473bd03
	Checksum: 0x262BFDC4
	Offset: 0x750
	Size: 0x7B
	Parameters: 7
	Flags: None
*/
function function_68fe944f(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(!isdefined(var_9193c732))
	{
		return;
	}
	if(var_9193c732 != var_ade4d29d && var_9193c732 == 1)
	{
		function_6c7d1149(var_ec74b091, 8);
	}
}

/*
	Name: function_8cc09e1d
	Namespace: namespace_6473bd03
	Checksum: 0x30EDABEF
	Offset: 0x7D8
	Size: 0x43
	Parameters: 7
	Flags: None
*/
function function_8cc09e1d(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
}

/*
	Name: function_41c64230
	Namespace: namespace_6473bd03
	Checksum: 0x264BF9A9
	Offset: 0x828
	Size: 0xDB
	Parameters: 7
	Flags: None
*/
function function_41c64230(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		level thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_infection_nuke_buildings_bundle");
		level thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_infection_nuke_tree_building_bundle");
	}
	else if(var_9193c732 == 2)
	{
		level thread namespace_cc27597::function_43718187("p7_fxanim_cp_infection_nuke_wave_bundle");
		level waittill("hash_9e4e38d8");
		level thread namespace_cc27597::function_43718187("p7_fxanim_cp_infection_nuke_buildings_bundle");
	}
}

/*
	Name: function_2443377d
	Namespace: namespace_6473bd03
	Checksum: 0xEF3BC8F2
	Offset: 0x910
	Size: 0x14B
	Parameters: 7
	Flags: None
*/
function function_2443377d(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_infection_nuke_tree_01_bundle", &function_41107351, "play");
		namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_infection_nuke_tree_02_bundle", &function_41107351, "init");
		level thread namespace_cc27597::function_43718187("p7_fxanim_cp_infection_nuke_tree_01_bundle");
		level thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_infection_nuke_tree_02_bundle");
	}
	else if(var_9193c732 == 2)
	{
		namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_infection_nuke_tree_02_bundle", &function_2ecc9545, "play");
		level thread namespace_cc27597::function_43718187("p7_fxanim_cp_infection_nuke_tree_02_bundle");
	}
}

/*
	Name: function_2ecc9545
	Namespace: namespace_6473bd03
	Checksum: 0x3007A984
	Offset: 0xA68
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_2ecc9545(var_c77d2837)
{
	var_c77d2837["nuke_tree_02_trunk"] waittill("hash_d9e3c960");
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_infection_nuke_tree_building_bundle");
}

/*
	Name: function_7c6c7300
	Namespace: namespace_6473bd03
	Checksum: 0x1D4C0D71
	Offset: 0xAB8
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_7c6c7300()
{
	wait(0.05);
	level thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_infection_house_ceiling_01_bundle");
	level thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_infection_house_ceiling_03_bundle");
	level thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_infection_house_ceiling_04_bundle");
}

/*
	Name: function_fb331c3c
	Namespace: namespace_6473bd03
	Checksum: 0x531D03DE
	Offset: 0xB30
	Size: 0xC3
	Parameters: 7
	Flags: None
*/
function function_fb331c3c(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		level thread namespace_cc27597::function_43718187("p7_fxanim_cp_infection_house_ceiling_01_bundle");
	}
	else if(var_9193c732 == 3)
	{
		level thread namespace_cc27597::function_43718187("p7_fxanim_cp_infection_house_ceiling_03_bundle");
	}
	else if(var_9193c732 == 4)
	{
		level thread namespace_cc27597::function_43718187("p7_fxanim_cp_infection_house_ceiling_04_bundle");
	}
}

/*
	Name: function_52351122
	Namespace: namespace_6473bd03
	Checksum: 0xDCFFB934
	Offset: 0xC00
	Size: 0x57
	Parameters: 7
	Flags: None
*/
function function_52351122(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		level.var_8ebdde9d = 1;
	}
}

/*
	Name: function_41107351
	Namespace: namespace_6473bd03
	Checksum: 0x91D79C67
	Offset: 0xC60
	Size: 0x91
	Parameters: 1
	Flags: None
*/
function function_41107351(var_c77d2837)
{
	foreach(var_6b05f5fd in var_c77d2837)
	{
		var_6b05f5fd thread function_9cf7347d();
	}
}

/*
	Name: function_9cf7347d
	Namespace: namespace_6473bd03
	Checksum: 0xCB6B68A3
	Offset: 0xD00
	Size: 0x3EF
	Parameters: 0
	Flags: None
*/
function function_9cf7347d()
{
	self endon("hash_128f8789");
	self endon("hash_d5da096");
	var_8d0c7ad9 = 0;
	var_42c8409b = 0.1;
	while(var_8d0c7ad9 < 1)
	{
		foreach(var_5dc5e20a in function_d4b4bd92())
		{
			var_ae6a34c0 = var_5dc5e20a function_8448e0ee();
			if(isdefined(var_ae6a34c0))
			{
				var_8d0c7ad9 = var_8d0c7ad9 + var_42c8409b;
				self function_e7f6dc4e(var_ae6a34c0, 0, "scriptVector0", var_8d0c7ad9, 1, 0, 0);
			}
		}
		wait(var_42c8409b);
	}
	var_94af3e50 = 1;
	var_2271cae = 0.2;
	var_edbce13f = var_2271cae;
	while(1)
	{
		var_fd53cf6a = function_72a94f05(2, 8);
		var_d11a001d = var_94af3e50 - var_2271cae / var_fd53cf6a / var_42c8409b;
		while(var_edbce13f < var_94af3e50)
		{
			foreach(var_5dc5e20a in function_d4b4bd92())
			{
				var_ae6a34c0 = var_5dc5e20a function_8448e0ee();
				if(isdefined(var_ae6a34c0))
				{
					self function_e7f6dc4e(var_ae6a34c0, 0, "scriptVector0", 1, var_edbce13f, 0, 0);
					var_edbce13f = var_edbce13f + var_d11a001d;
				}
			}
			wait(var_42c8409b);
		}
		var_fd53cf6a = function_72a94f05(2, 8);
		var_d11a001d = var_94af3e50 - var_2271cae / var_fd53cf6a / var_42c8409b;
		while(var_2271cae < var_edbce13f)
		{
			foreach(var_5dc5e20a in function_d4b4bd92())
			{
				var_ae6a34c0 = var_5dc5e20a function_8448e0ee();
				if(isdefined(var_ae6a34c0))
				{
					self function_e7f6dc4e(var_ae6a34c0, 0, "scriptVector0", 1, var_edbce13f, 0, 0);
					var_edbce13f = var_edbce13f - var_d11a001d;
				}
			}
			wait(var_42c8409b);
		}
	}
}

/*
	Name: function_f414574b
	Namespace: namespace_6473bd03
	Checksum: 0x236F87CE
	Offset: 0x10F8
	Size: 0x1A3
	Parameters: 7
	Flags: None
*/
function function_f414574b(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	self endon("hash_128f8789");
	self endon("hash_643a7daf");
	level endon("hash_25601ed0");
	var_fb330b21 = function_dc99997a(1, 5);
	function_3a876950(var_ec74b091, function_dc99997a(2, 4), 1);
	wait(function_72a94f05(0.05, 0.25));
	var_fb330b21--;
	while(var_fb330b21)
	{
		function_3a876950(var_ec74b091, 1, 1);
		wait(function_72a94f05(0.05, 0.1));
		function_3a876950(var_ec74b091, function_dc99997a(2, 4), 1);
		wait(function_72a94f05(0.05, 0.25));
		var_fb330b21--;
	}
	function_3a876950(var_ec74b091, 1, 1);
}

/*
	Name: function_3c38e46d
	Namespace: namespace_6473bd03
	Checksum: 0x5C56F753
	Offset: 0x12A8
	Size: 0xBB
	Parameters: 7
	Flags: None
*/
function function_3c38e46d(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_ade4d29d != var_9193c732)
	{
		if(var_9193c732 == 1)
		{
			function_c1dc0657(var_ec74b091, 2);
			level waittill("hash_53817054");
			function_c1dc0657(var_ec74b091, 4);
		}
		else
		{
			function_c1dc0657(var_ec74b091, 0);
		}
	}
}

/*
	Name: function_92bc5026
	Namespace: namespace_6473bd03
	Checksum: 0xF280D503
	Offset: 0x1370
	Size: 0x73
	Parameters: 7
	Flags: None
*/
function function_92bc5026(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_ade4d29d != var_9193c732)
	{
		if(var_9193c732 == 1)
		{
			namespace_80983c42::function_80983c42("infection_nuke_lights");
		}
	}
}

/*
	Name: function_521c838b
	Namespace: namespace_6473bd03
	Checksum: 0x3FB15E66
	Offset: 0x13F0
	Size: 0x63
	Parameters: 7
	Flags: None
*/
function function_521c838b(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 > 0)
	{
		self thread function_ee75e7c1(var_ec74b091, var_9193c732);
	}
}

/*
	Name: function_ee75e7c1
	Namespace: namespace_6473bd03
	Checksum: 0x5CA7669B
	Offset: 0x1460
	Size: 0x151
	Parameters: 2
	Flags: None
*/
function function_ee75e7c1(var_ec74b091, var_78962fff)
{
	self endon("hash_128f8789");
	var_94db6e7c = function_d9502965(var_ec74b091);
	var_31bd831a = 0;
	var_499c19ba = 0.1;
	self function_e2af603e(var_ec74b091, "tank_damage_heavy_mp");
	self function_9cf04c2e(0.3, 0.5, self.var_722885f3, 100);
	while(var_31bd831a < var_78962fff)
	{
		self function_e2af603e(var_ec74b091, "damage_heavy");
		self function_9cf04c2e(var_499c19ba, 1, self.var_722885f3, 100);
		wait(0.25);
		var_499c19ba = var_499c19ba + 0.015;
		var_31bd831a = function_d9502965(var_ec74b091) - var_94db6e7c / 1000;
	}
}

