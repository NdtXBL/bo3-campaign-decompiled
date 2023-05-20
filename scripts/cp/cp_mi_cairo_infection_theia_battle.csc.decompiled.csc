#using scripts\codescripts\struct;
#using scripts\cp\_load;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\util_shared;

#namespace namespace_c024ffd;

/*
	Name: function_d290ebfa
	Namespace: namespace_c024ffd
	Checksum: 0x693F3515
	Offset: 0x4E0
	Size: 0x113
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	level thread function_6b2436b8();
	level.var_b4ad2ec5 = [];
	level.var_b4ad2ec5["p7_fxanim_cp_infection_sarah_building_03_bundle"] = &function_9bd322a9;
	level.var_b4ad2ec5["p7_fxanim_cp_infection_sarah_building_04_bundle"] = &function_362b8d1c;
	level.var_b4ad2ec5["p7_fxanim_cp_infection_sarah_building_05_bundle"] = &function_538e886b;
	level.var_b4ad2ec5["p7_fxanim_cp_infection_sarah_building_06_bundle"] = &function_8cb957be;
	level.var_b4ad2ec5["p7_fxanim_cp_infection_sarah_building_07_bundle"] = &function_c22685d5;
	level.var_b4ad2ec5["p7_fxanim_cp_infection_sarah_building_08_bundle"] = &function_1733f8a8;
	function_2ea898a8();
	level thread function_7b244c18();
}

/*
	Name: function_7b244c18
	Namespace: namespace_c024ffd
	Checksum: 0xE999A021
	Offset: 0x600
	Size: 0xA5
	Parameters: 0
	Flags: None
*/
function function_7b244c18()
{
	wait(0.05);
	for(var_c957f6b6 = 3; var_c957f6b6 <= 8; var_c957f6b6++)
	{
		var_cbb15570 = "p7_fxanim_cp_infection_sarah_building_0" + var_c957f6b6 + "_bundle";
		var_666ebfcb = namespace_14b42b8a::function_7922262b(var_cbb15570, "scriptbundlename");
		if(isdefined(var_666ebfcb))
		{
			level namespace_cc27597::function_c35e6aab(var_cbb15570);
		}
	}
}

/*
	Name: function_6b2436b8
	Namespace: namespace_c024ffd
	Checksum: 0xA5FFD154
	Offset: 0x6B0
	Size: 0x8F
	Parameters: 0
	Flags: None
*/
function function_6b2436b8()
{
	namespace_82b91a51::function_10f13008();
	for(var_c957f6b6 = 3; var_c957f6b6 <= 8; var_c957f6b6++)
	{
		for(var_ec74b091 = 0; var_ec74b091 < level.var_ec485aa4.size; var_ec74b091++)
		{
			function_6712dcb2(var_ec74b091, "m_sarah_building_0" + var_c957f6b6, 0);
		}
	}
}

/*
	Name: function_2ea898a8
	Namespace: namespace_c024ffd
	Checksum: 0xDE71B7E2
	Offset: 0x748
	Size: 0x143
	Parameters: 0
	Flags: None
*/
function function_2ea898a8()
{
	var_80bea535 = function_eaa48678(8);
	namespace_71e9cb84::function_50f16166("world", "building_destruction_callback", 1, var_80bea535, "int", &function_a77a502, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "building_end_callback", 1, 1, "int", &function_cc506aa7, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "vtol_fog_bank", 1, 1, "int", &function_68142842, 0, 0);
	namespace_71e9cb84::function_50f16166("scriptmover", "sarah_tac_mode_disable", 1, 1, "int", &function_a722d56a, 0, 0);
}

/*
	Name: function_a722d56a
	Namespace: namespace_c024ffd
	Checksum: 0x62814F02
	Offset: 0x898
	Size: 0x7B
	Parameters: 7
	Flags: None
*/
function function_a722d56a(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		self function_cae0c618(9);
	}
	else
	{
		self function_752fada3(9);
	}
}

/*
	Name: function_a77a502
	Namespace: namespace_c024ffd
	Checksum: 0x331EF2B7
	Offset: 0x920
	Size: 0xDB
	Parameters: 7
	Flags: None
*/
function function_a77a502(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		var_cbb15570 = "p7_fxanim_cp_infection_sarah_building_0" + var_9193c732 + "_bundle";
		var_666ebfcb = namespace_14b42b8a::function_7922262b(var_cbb15570, "scriptbundlename");
		if(isdefined(var_666ebfcb))
		{
			level namespace_cc27597::function_43718187(var_cbb15570);
			function_6712dcb2(var_ec74b091, "m_sarah_building_0" + var_9193c732, 1);
		}
	}
}

/*
	Name: function_cc506aa7
	Namespace: namespace_c024ffd
	Checksum: 0xF385B375
	Offset: 0xA08
	Size: 0x10D
	Parameters: 7
	Flags: None
*/
function function_cc506aa7(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(!var_8d0de8f7)
	{
		if(var_9193c732)
		{
			for(var_c957f6b6 = 3; var_c957f6b6 <= 8; var_c957f6b6++)
			{
				var_cbb15570 = "p7_fxanim_cp_infection_sarah_building_0" + var_c957f6b6 + "_bundle";
				var_666ebfcb = namespace_14b42b8a::function_7922262b(var_cbb15570, "scriptbundlename");
				if(isdefined(var_666ebfcb))
				{
					level namespace_cc27597::function_8f9f34e0(var_cbb15570, level.var_b4ad2ec5[var_cbb15570], "play");
					level thread namespace_cc27597::function_43718187(var_cbb15570);
				}
			}
		}
	}
}

/*
	Name: function_6712dcb2
	Namespace: namespace_c024ffd
	Checksum: 0x5642F8F5
	Offset: 0xB20
	Size: 0x169
	Parameters: 3
	Flags: None
*/
function function_6712dcb2(var_ec74b091, var_a0b86a77, var_ed6b2f03)
{
	if(!isdefined(var_ed6b2f03))
	{
		var_ed6b2f03 = 1;
	}
	var_5cee1345 = function_99201f25(var_ec74b091, var_a0b86a77, "targetname");
	if(var_ed6b2f03)
	{
		foreach(var_6df9264 in var_5cee1345)
		{
			var_6df9264 function_48f26766();
		}
		break;
	}
	foreach(var_6df9264 in var_5cee1345)
	{
		var_6df9264 function_50ccee8d();
	}
}

/*
	Name: function_68142842
	Namespace: namespace_c024ffd
	Checksum: 0x4816B96B
	Offset: 0xC98
	Size: 0x93
	Parameters: 7
	Flags: None
*/
function function_68142842(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_ade4d29d != var_9193c732)
	{
		if(var_9193c732 == 1)
		{
			function_c1dc0657(var_ec74b091, 2);
		}
		else
		{
			function_c1dc0657(var_ec74b091, 1);
		}
	}
}

/*
	Name: function_9bd322a9
	Namespace: namespace_c024ffd
	Checksum: 0xCF6F875C
	Offset: 0xD38
	Size: 0x5B
	Parameters: 1
	Flags: None
*/
function function_9bd322a9(var_c77d2837)
{
	var_c77d2837["sarah_building_03"] function_3d6438ae("set_anim", "p7_fxanim_cp_infection_sarah_building_03_sanim", "set_shot", "default", "pause", "goto_end");
}

/*
	Name: function_362b8d1c
	Namespace: namespace_c024ffd
	Checksum: 0xA3ABE36F
	Offset: 0xDA0
	Size: 0x5B
	Parameters: 1
	Flags: None
*/
function function_362b8d1c(var_c77d2837)
{
	var_c77d2837["sarah_building_04"] function_3d6438ae("set_anim", "p7_fxanim_cp_infection_sarah_building_04_sanim", "set_shot", "default", "pause", "goto_end");
}

/*
	Name: function_538e886b
	Namespace: namespace_c024ffd
	Checksum: 0x4DBADFF5
	Offset: 0xE08
	Size: 0x5B
	Parameters: 1
	Flags: None
*/
function function_538e886b(var_c77d2837)
{
	var_c77d2837["sarah_building_05"] function_3d6438ae("set_anim", "p7_fxanim_cp_infection_sarah_building_05_sanim", "set_shot", "default", "pause", "goto_end");
}

/*
	Name: function_8cb957be
	Namespace: namespace_c024ffd
	Checksum: 0x4D8ADD33
	Offset: 0xE70
	Size: 0x5B
	Parameters: 1
	Flags: None
*/
function function_8cb957be(var_c77d2837)
{
	var_c77d2837["sarah_building_06"] function_3d6438ae("set_anim", "p7_fxanim_cp_infection_sarah_building_06_sanim", "set_shot", "default", "pause", "goto_end");
}

/*
	Name: function_c22685d5
	Namespace: namespace_c024ffd
	Checksum: 0x804D9A74
	Offset: 0xED8
	Size: 0x5B
	Parameters: 1
	Flags: None
*/
function function_c22685d5(var_c77d2837)
{
	var_c77d2837["sarah_building_07"] function_3d6438ae("set_anim", "p7_fxanim_cp_infection_sarah_building_07_sanim", "set_shot", "default", "pause", "goto_end");
}

/*
	Name: function_1733f8a8
	Namespace: namespace_c024ffd
	Checksum: 0xFB07830B
	Offset: 0xF40
	Size: 0x5B
	Parameters: 1
	Flags: None
*/
function function_1733f8a8(var_c77d2837)
{
	var_c77d2837["sarah_building_08"] function_3d6438ae("set_anim", "p7_fxanim_cp_infection_sarah_building_08_sanim", "set_shot", "default", "pause", "goto_end");
}

