#using scripts\codescripts\struct;
#using scripts\cp\_load;
#using scripts\cp\_skipto;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\util_shared;

#namespace namespace_4e2074f4;

/*
	Name: function_d290ebfa
	Namespace: namespace_4e2074f4
	Checksum: 0x9B4262E3
	Offset: 0x370
	Size: 0x13
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	function_2ea898a8();
}

/*
	Name: function_2ea898a8
	Namespace: namespace_4e2074f4
	Checksum: 0xD30126EC
	Offset: 0x390
	Size: 0x243
	Parameters: 0
	Flags: None
*/
function function_2ea898a8()
{
	namespace_71e9cb84::function_50f16166("world", "infection_fold_debris_1", 1, 1, "counter", &function_5166b464, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "infection_fold_debris_2", 1, 1, "int", &function_c36e239f, 0, 1);
	namespace_71e9cb84::function_50f16166("world", "infection_fold_debris_3", 1, 1, "int", &function_9d6ba936, 0, 1);
	namespace_71e9cb84::function_50f16166("world", "infection_fold_debris_4", 1, 1, "int", &function_df5f4529, 0, 1);
	namespace_71e9cb84::function_50f16166("world", "light_church_ext_window", 1, 1, "int", &function_b21f76c4, 0, 1);
	namespace_71e9cb84::function_50f16166("world", "kill_light_church_ext_window", 1, 1, "int", &function_ba29b6bb, 0, 1);
	namespace_71e9cb84::function_50f16166("world", "light_church_int_all", 1, 1, "int", &function_92fbb98f, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "dynent_catcher", 1, 1, "int", &function_826e310e, 0, 0);
}

/*
	Name: function_5166b464
	Namespace: namespace_4e2074f4
	Checksum: 0x7821B802
	Offset: 0x5E0
	Size: 0x63
	Parameters: 7
	Flags: None
*/
function function_5166b464(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		level thread function_7508cc5a(var_ec74b091, 1);
	}
}

/*
	Name: function_c36e239f
	Namespace: namespace_4e2074f4
	Checksum: 0x478096DA
	Offset: 0x650
	Size: 0x73
	Parameters: 7
	Flags: None
*/
function function_c36e239f(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_ade4d29d != var_9193c732 && var_9193c732 != 0)
	{
		level thread function_7508cc5a(var_ec74b091, 2);
	}
}

/*
	Name: function_9d6ba936
	Namespace: namespace_4e2074f4
	Checksum: 0x280E61F0
	Offset: 0x6D0
	Size: 0x73
	Parameters: 7
	Flags: None
*/
function function_9d6ba936(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_ade4d29d != var_9193c732 && var_9193c732 != 0)
	{
		level thread function_7508cc5a(var_ec74b091, 3);
	}
}

/*
	Name: function_df5f4529
	Namespace: namespace_4e2074f4
	Checksum: 0x7321BD90
	Offset: 0x750
	Size: 0x73
	Parameters: 7
	Flags: None
*/
function function_df5f4529(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_ade4d29d != var_9193c732 && var_9193c732 != 0)
	{
		level thread function_7508cc5a(var_ec74b091, 4);
	}
}

/*
	Name: function_b21f76c4
	Namespace: namespace_4e2074f4
	Checksum: 0x20EB57CD
	Offset: 0x7D0
	Size: 0x15D
	Parameters: 7
	Flags: None
*/
function function_b21f76c4(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	var_aace7bde = namespace_1d795d47::function_8b19ec5d();
	if(isdefined(var_aace7bde) && var_aace7bde.size > 0)
	{
		switch(var_aace7bde[0])
		{
			case "black_station":
			case "forest_intro":
			case "forest_sky_bridge":
			case "forest_surreal":
			case "forest_tunnel":
			case "forest_wolves":
			case "sgen_server_room":
			case "village":
			case "village_house":
			case "village_inception":
			{
				if(var_703bf65c)
				{
					level thread function_fac6ef5e(var_ec74b091);
				}
				else if(!var_8d0de8f7)
				{
					if(var_9193c732 != var_ade4d29d && var_9193c732 == 1)
					{
						namespace_80983c42::function_80983c42("light_church_ext_window");
					}
					else
					{
						namespace_80983c42::function_67e7a937("light_church_ext_window");
					}
				}
			}
			case default:
			{
				break;
			}
		}
	}
}

/*
	Name: function_92fbb98f
	Namespace: namespace_4e2074f4
	Checksum: 0x858F0502
	Offset: 0x938
	Size: 0x83
	Parameters: 7
	Flags: None
*/
function function_92fbb98f(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		namespace_80983c42::function_80983c42("light_church_int_all");
	}
	else
	{
		namespace_80983c42::function_67e7a937("light_church_int_all");
	}
}

/*
	Name: function_7508cc5a
	Namespace: namespace_4e2074f4
	Checksum: 0x321D615E
	Offset: 0x9C8
	Size: 0x2B9
	Parameters: 2
	Flags: None
*/
function function_7508cc5a(var_ec74b091, var_2abbfbcb)
{
	var_55750b30 = [];
	var_c7b6e8e4 = namespace_14b42b8a::function_7faf4c39("fold_debris");
	for(var_c957f6b6 = 0; var_c957f6b6 < var_c7b6e8e4.size; var_c957f6b6++)
	{
		if(isdefined(var_c7b6e8e4[var_c957f6b6].var_6df9264) && var_c7b6e8e4[var_c957f6b6].var_1430971 == var_2abbfbcb)
		{
			var_5aeadf3 = function_9b7fda5e(var_ec74b091, var_c7b6e8e4[var_c957f6b6].var_722885f3, "script_model");
			var_5aeadf3 function_e48f905e(var_c7b6e8e4[var_c957f6b6].var_6df9264);
			var_5aeadf3.var_170527fb = var_c7b6e8e4[var_c957f6b6].var_170527fb;
			var_5aeadf3.var_d007da9e = function_72a94f05(var_c7b6e8e4[var_c957f6b6].var_2e596046, var_c7b6e8e4[var_c957f6b6].var_2e596046 + 50);
			var_5aeadf3.var_588704d4 = function_72a94f05(var_c7b6e8e4[var_c957f6b6].var_d66f2978, var_c7b6e8e4[var_c957f6b6].var_d66f2978 + 0.5);
			if(isdefined(var_c7b6e8e4[var_c957f6b6].var_6ab6f4fd))
			{
				var_5aeadf3.var_6ab6f4fd = var_c7b6e8e4[var_c957f6b6].var_6ab6f4fd;
			}
			namespace_84970cc4::function_69554b3e(var_55750b30, var_5aeadf3, 0);
		}
	}
	foreach(var_5aeadf3 in var_55750b30)
	{
		var_5aeadf3 thread function_ba900c87(var_ec74b091, var_2abbfbcb);
		var_5aeadf3 thread function_567a9a23();
	}
}

/*
	Name: function_ba900c87
	Namespace: namespace_4e2074f4
	Checksum: 0x8473AA2E
	Offset: 0xC90
	Size: 0x283
	Parameters: 2
	Flags: None
*/
function function_ba900c87(var_ec74b091, var_2abbfbcb)
{
	var_6a197e6a = namespace_14b42b8a::function_7922262b("fold_debris_path_" + var_2abbfbcb);
	var_a4e8111c = self.var_722885f3 - var_6a197e6a.var_722885f3;
	var_97b57bc3 = namespace_82b91a51::function_b9fd52a4(var_ec74b091, "tag_origin", self.var_722885f3, self.var_6ab6f4fd);
	self function_37f7858a(var_97b57bc3);
	var_52e2b50d = namespace_82b91a51::function_b9fd52a4(var_ec74b091, "tag_origin", self.var_722885f3, self.var_6ab6f4fd);
	var_97b57bc3 function_37f7858a(var_52e2b50d);
	self thread function_7684532d(var_97b57bc3);
	while(isdefined(var_6a197e6a.var_b07228b6))
	{
		var_74adb9b4 = namespace_14b42b8a::function_7922262b(var_6a197e6a.var_b07228b6);
		var_74adb9b4.var_722885f3 = var_74adb9b4.var_722885f3 + var_a4e8111c;
		var_ccd4343c = function_7d15e2f8(self.var_722885f3, var_74adb9b4.var_722885f3);
		var_78962fff = var_ccd4343c / self.var_d007da9e;
		var_52e2b50d function_a96a2721(var_74adb9b4.var_722885f3, var_78962fff, 0, 0);
		var_52e2b50d waittill("hash_a21db68a");
		var_6a197e6a = var_74adb9b4;
	}
	self notify("hash_d2ba04dd");
	self function_52fddbd0();
	self function_dc8c8404();
	var_52e2b50d function_dc8c8404();
	var_97b57bc3 function_dc8c8404();
}

/*
	Name: function_7684532d
	Namespace: namespace_4e2074f4
	Checksum: 0x6906C764
	Offset: 0xF20
	Size: 0x9D
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
}

/*
	Name: function_567a9a23
	Namespace: namespace_4e2074f4
	Checksum: 0xE85B60C8
	Offset: 0xFC8
	Size: 0xDB
	Parameters: 0
	Flags: None
*/
function function_567a9a23()
{
	self endon("hash_d2ba04dd");
	self endon("hash_128f8789");
	var_2395e945 = level.var_ec485aa4;
	while(isdefined(self) && isdefined(self.var_722885f3))
	{
		if(isdefined(var_2395e945[0]) && isdefined(var_2395e945[0].var_722885f3))
		{
			var_ddd68b9a = function_cb3d1c9b(self.var_722885f3, var_2395e945[0].var_722885f3);
			if(var_ddd68b9a <= 90000)
			{
				self function_921a1574(0, "amb_junk_flyby");
				return;
			}
		}
		wait(0.2);
	}
}

/*
	Name: function_826e310e
	Namespace: namespace_4e2074f4
	Checksum: 0x99477934
	Offset: 0x10B0
	Size: 0x75
	Parameters: 7
	Flags: None
*/
function function_826e310e(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		level thread function_806a2a14(var_ec74b091);
	}
	else
	{
		level notify("hash_ace32285");
	}
}

/*
	Name: function_806a2a14
	Namespace: namespace_4e2074f4
	Checksum: 0x9539481F
	Offset: 0x1130
	Size: 0x1DB
	Parameters: 1
	Flags: None
*/
function function_806a2a14(var_ec74b091)
{
	level endon("hash_ace32285");
	var_c1a65417 = function_6ada35ba(var_ec74b091, "t_dynent_catcher", "targetname");
	var_7c3acc51 = function_9b7fda5e(var_ec74b091, (0, 0, 0), "script_origin");
	var_7c3acc51 function_e48f905e("tag_origin");
	var_12a4322c = [];
	while(1)
	{
		var_873f8029 = function_893e786e("fold_dynent");
		foreach(var_fb9bf56 in var_873f8029)
		{
			var_7c3acc51.var_722885f3 = var_fb9bf56.var_722885f3;
			if(var_7c3acc51 function_32fa5072(var_c1a65417))
			{
				if(!function_7f41c8e7(var_12a4322c, var_fb9bf56))
				{
					namespace_84970cc4::function_69554b3e(var_12a4322c, var_fb9bf56);
					function_bda346a(var_fb9bf56, 0);
					wait(0.1);
				}
			}
		}
		wait(1);
	}
}

/*
	Name: function_fac6ef5e
	Namespace: namespace_4e2074f4
	Checksum: 0xAF3D4206
	Offset: 0x1318
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function function_fac6ef5e(var_ec74b091)
{
	var_f92a03e7 = function_6ada35ba(var_ec74b091, "t_light_church_ext_window_off", "targetname");
	var_f92a03e7 waittill("hash_4dbf3ae3");
	namespace_80983c42::function_67e7a937("light_church_ext_window");
}

/*
	Name: function_ba29b6bb
	Namespace: namespace_4e2074f4
	Checksum: 0xB3888D9B
	Offset: 0x1388
	Size: 0x5B
	Parameters: 7
	Flags: None
*/
function function_ba29b6bb(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		namespace_80983c42::function_67e7a937("light_church_ext_window");
	}
}

