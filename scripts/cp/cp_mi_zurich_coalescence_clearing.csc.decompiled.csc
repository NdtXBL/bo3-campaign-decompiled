#using scripts\codescripts\struct;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\math_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\util_shared;

#namespace namespace_29799936;

/*
	Name: function_d290ebfa
	Namespace: namespace_29799936
	Checksum: 0xB9D1F322
	Offset: 0x2B8
	Size: 0x1F
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	function_2ea898a8();
	level.var_493ff3b4 = [];
}

/*
	Name: function_2ea898a8
	Namespace: namespace_29799936
	Checksum: 0xB362399E
	Offset: 0x2E0
	Size: 0x103
	Parameters: 0
	Flags: None
*/
function function_2ea898a8()
{
	var_c0e9f8c3 = function_eaa48678(5);
	namespace_71e9cb84::function_50f16166("world", "zurich_waterfall_bodies", 1, 1, "int", &function_3ccbd173, 1, 1);
	namespace_71e9cb84::function_50f16166("world", "clearing_vinewall_init", 1, var_c0e9f8c3, "int", &function_e607bb59, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "clearing_vinewall_open", 1, var_c0e9f8c3, "int", &function_df47f2bb, 0, 0);
}

/*
	Name: function_e607bb59
	Namespace: namespace_29799936
	Checksum: 0x9ADEAFF0
	Offset: 0x3F0
	Size: 0x1F9
	Parameters: 7
	Flags: None
*/
function function_e607bb59(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 >= 1)
	{
		var_a77e33f7 = [];
		switch(var_9193c732)
		{
			case 1:
			{
				var_a77e33f7 = function_84970cc4("p7_fxanim_cp_zurich_root_door_round_bundle");
				break;
			}
			case 2:
			{
				var_a77e33f7 = function_84970cc4("p7_fxanim_cp_zurich_root_door_left_bundle");
				break;
			}
			case 3:
			{
				var_a77e33f7 = function_84970cc4("p7_fxanim_cp_zurich_root_door_center_bundle");
				break;
			}
			case 4:
			{
				var_a77e33f7 = function_84970cc4("p7_fxanim_cp_zurich_root_door_right_bundle");
				break;
			}
			case 5:
			{
				var_a77e33f7 = function_84970cc4("p7_fxanim_cp_zurich_root_door_round_bundle", "p7_fxanim_cp_zurich_root_door_left_bundle", "p7_fxanim_cp_zurich_root_door_center_bundle", "p7_fxanim_cp_zurich_root_door_right_bundle");
				break;
			}
		}
		foreach(var_648c7d5d in var_a77e33f7)
		{
			namespace_cc27597::function_8f9f34e0(var_648c7d5d, &function_109ac1f6, "init");
			level thread namespace_cc27597::function_c35e6aab(var_648c7d5d);
		}
	}
}

/*
	Name: function_df47f2bb
	Namespace: namespace_29799936
	Checksum: 0xDAE23CC2
	Offset: 0x5F8
	Size: 0x105
	Parameters: 7
	Flags: None
*/
function function_df47f2bb(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 >= 1)
	{
		switch(var_9193c732)
		{
			case 1:
			{
				var_294306eb = "p7_fxanim_cp_zurich_root_door_round_bundle";
				break;
			}
			case 2:
			{
				var_294306eb = "p7_fxanim_cp_zurich_root_door_left_bundle";
				break;
			}
			case 3:
			{
				var_294306eb = "p7_fxanim_cp_zurich_root_door_center_bundle";
				break;
			}
			case 4:
			{
				var_294306eb = "p7_fxanim_cp_zurich_root_door_right_bundle";
				break;
			}
			case 5:
			{
				level notify("hash_32d9dc55");
				return;
			}
		}
		level thread namespace_cc27597::function_43718187(var_294306eb);
	}
	else
	{
		level notify("hash_32d9dc55");
	}
}

/*
	Name: function_109ac1f6
	Namespace: namespace_29799936
	Checksum: 0xF15A9A87
	Offset: 0x708
	Size: 0xE9
	Parameters: 1
	Flags: None
*/
function function_109ac1f6(var_c77d2837)
{
	level waittill("hash_32d9dc55");
	if(isdefined(var_c77d2837) && function_6e2770d8(var_c77d2837))
	{
		var_c77d2837 = namespace_84970cc4::function_5c13fae0(var_c77d2837);
		if(var_c77d2837.size)
		{
			foreach(var_4c9c8550 in var_c77d2837)
			{
				var_4c9c8550 function_dc8c8404();
			}
		}
	}
}

/*
	Name: function_3ccbd173
	Namespace: namespace_29799936
	Checksum: 0x2FFDC6EE
	Offset: 0x800
	Size: 0xB9
	Parameters: 7
	Flags: None
*/
function function_3ccbd173(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		if(isdefined(level.var_493ff3b4[var_ec74b091]) && level.var_493ff3b4[var_ec74b091])
		{
			return;
		}
		level.var_493ff3b4[var_ec74b091] = 1;
		level thread function_8f4d8a35();
	}
	else
	{
		level.var_493ff3b4[var_ec74b091] = undefined;
		level notify("hash_387877f0");
	}
}

/*
	Name: function_8f4d8a35
	Namespace: namespace_29799936
	Checksum: 0x7F44D5AF
	Offset: 0x8C8
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_8f4d8a35()
{
	level thread namespace_cc27597::function_43718187("cin_zur_16_02_clearing_vign_bodies01");
	level thread namespace_cc27597::function_43718187("cin_zur_16_02_clearing_vign_bodies02");
	level thread namespace_cc27597::function_43718187("cin_zur_16_02_clearing_vign_bodies03");
	level waittill("hash_387877f0");
	level thread namespace_cc27597::function_fcf56ab5("cin_zur_16_02_clearing_vign_bodies01", 1);
	level thread namespace_cc27597::function_fcf56ab5("cin_zur_16_02_clearing_vign_bodies02", 1);
	level thread namespace_cc27597::function_fcf56ab5("cin_zur_16_02_clearing_vign_bodies03", 1);
}

