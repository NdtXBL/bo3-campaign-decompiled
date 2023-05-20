#using scripts\codescripts\struct;
#using scripts\cp\_load;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\util_shared;

#namespace namespace_47ecfa2f;

/*
	Name: function_d290ebfa
	Namespace: namespace_47ecfa2f
	Checksum: 0x3CCB0279
	Offset: 0x238
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
	Namespace: namespace_47ecfa2f
	Checksum: 0xB9A54CB0
	Offset: 0x258
	Size: 0x16B
	Parameters: 0
	Flags: None
*/
function function_2ea898a8()
{
	namespace_71e9cb84::function_50f16166("world", "black_station_ceiling_fxanim", 1, 2, "int", &function_871b43f3, 1, 0);
	namespace_71e9cb84::function_50f16166("world", "igc_blackscreen_fade_in", 1, 1, "counter", &function_9eb32c49, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "igc_blackscreen_fade_in_immediate", 1, 1, "counter", &function_d2f9a5e3, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "igc_blackscreen_fade_out_immediate", 1, 1, "counter", &function_22cced56, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "japanese_graphic_content_hide", 1, 1, "int", &function_f1acb728, 1, 1);
}

/*
	Name: function_871b43f3
	Namespace: namespace_47ecfa2f
	Checksum: 0x1BC609AC
	Offset: 0x3D0
	Size: 0xA3
	Parameters: 7
	Flags: None
*/
function function_871b43f3(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_ade4d29d == var_9193c732)
	{
		return;
	}
	if(var_9193c732 == 1)
	{
		level thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_infection_ceiling_open_bundle");
	}
	else if(var_9193c732 == 2)
	{
		level thread namespace_cc27597::function_43718187("p7_fxanim_cp_infection_ceiling_open_bundle");
	}
}

/*
	Name: function_f1acb728
	Namespace: namespace_47ecfa2f
	Checksum: 0xC1F70C3E
	Offset: 0x480
	Size: 0xBB
	Parameters: 7
	Flags: None
*/
function function_f1acb728(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_703bf65c)
	{
		return;
	}
	if(namespace_82b91a51::function_179773ff())
	{
		if(var_9193c732 == 1)
		{
			self namespace_ce7c3ed5::function_7e61de2b(0, "black");
		}
		else if(var_9193c732 == 0)
		{
			self namespace_ce7c3ed5::function_593c2af4(0, "black");
		}
	}
}

/*
	Name: function_9eb32c49
	Namespace: namespace_47ecfa2f
	Checksum: 0xC2D2725B
	Offset: 0x548
	Size: 0x83
	Parameters: 7
	Flags: None
*/
function function_9eb32c49(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	var_5dc5e20a = function_79c174a3(var_ec74b091);
	var_5dc5e20a namespace_ce7c3ed5::function_593c2af4(0.2, "black");
}

/*
	Name: function_d2f9a5e3
	Namespace: namespace_47ecfa2f
	Checksum: 0x7D95A1CF
	Offset: 0x5D8
	Size: 0x83
	Parameters: 7
	Flags: None
*/
function function_d2f9a5e3(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	var_5dc5e20a = function_79c174a3(var_ec74b091);
	var_5dc5e20a namespace_ce7c3ed5::function_593c2af4(0, "black");
}

/*
	Name: function_22cced56
	Namespace: namespace_47ecfa2f
	Checksum: 0xDD9FD13E
	Offset: 0x668
	Size: 0x83
	Parameters: 7
	Flags: None
*/
function function_22cced56(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	var_5dc5e20a = function_79c174a3(var_ec74b091);
	var_5dc5e20a namespace_ce7c3ed5::function_7e61de2b(0, "black");
}

