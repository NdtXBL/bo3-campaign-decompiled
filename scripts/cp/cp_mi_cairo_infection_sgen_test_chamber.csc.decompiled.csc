#using scripts\codescripts\struct;
#using scripts\shared\clientfield_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\util_shared;

#namespace namespace_c7c6fa6;

/*
	Name: function_d290ebfa
	Namespace: namespace_c7c6fa6
	Checksum: 0xF07B5103
	Offset: 0x2B8
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
	Namespace: namespace_c7c6fa6
	Checksum: 0xB9BD98E3
	Offset: 0x2D8
	Size: 0x16B
	Parameters: 0
	Flags: None
*/
function function_2ea898a8()
{
	namespace_71e9cb84::function_50f16166("world", "sgen_test_chamber_pod_graphics", 1, 1, "int", &function_8d81452c, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "sgen_test_chamber_time_lapse", 1, 1, "int", &function_20d4178a, 0, 0);
	namespace_71e9cb84::function_50f16166("scriptmover", "sgen_test_guys_decay", 1, 1, "int", &function_e1732ad0, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "fxanim_hive_cluster_break", 1, 1, "int", &function_c7de1e6e, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "fxanim_time_lapse_objects", 1, 1, "int", &function_c1f973b7, 0, 0);
}

/*
	Name: function_c7de1e6e
	Namespace: namespace_c7c6fa6
	Checksum: 0x2BE197B4
	Offset: 0x450
	Size: 0xBB
	Parameters: 7
	Flags: None
*/
function function_c7de1e6e(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		level thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_infection_sgen_hive_drop_bundle");
	}
	else
	{
		namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_infection_sgen_hive_drop_bundle", &function_1902c83c, "play");
		level thread namespace_cc27597::function_43718187("p7_fxanim_cp_infection_sgen_hive_drop_bundle");
	}
}

/*
	Name: function_1902c83c
	Namespace: namespace_c7c6fa6
	Checksum: 0xB6AFE4B3
	Offset: 0x518
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function function_1902c83c(var_38fa6e84)
{
	wait(8);
	var_38fa6e84["sgen_hive_drop"] function_dc8c8404();
}

/*
	Name: function_8d81452c
	Namespace: namespace_c7c6fa6
	Checksum: 0xBC2ACDC3
	Offset: 0x558
	Size: 0x201
	Parameters: 7
	Flags: None
*/
function function_8d81452c(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	var_d83aa1ec = function_99201f25(var_ec74b091, "dni_testing_pod", "targetname");
	if(var_ade4d29d != var_9193c732)
	{
		if(var_9193c732 == 1)
		{
			foreach(var_79536eed in var_d83aa1ec)
			{
				var_79536eed function_8ff2374e("p7_sgen_dni_testing_pod_graphics_01_screen", "tag_origin");
				var_79536eed function_8ff2374e("p7_sgen_dni_testing_pod_graphics_01_door", "tag_door_anim");
			}
			break;
		}
		foreach(var_79536eed in var_d83aa1ec)
		{
			var_79536eed function_cb3bf380("p7_sgen_dni_testing_pod_graphics_01_screen", "tag_origin");
			var_79536eed function_cb3bf380("p7_sgen_dni_testing_pod_graphics_01_door", "tag_door_anim");
		}
	}
}

/*
	Name: function_20d4178a
	Namespace: namespace_c7c6fa6
	Checksum: 0xAFD7DEEF
	Offset: 0x768
	Size: 0xF1
	Parameters: 7
	Flags: None
*/
function function_20d4178a(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	var_d83aa1ec = function_99201f25(var_ec74b091, "dni_testing_pod", "targetname");
	foreach(var_79536eed in var_d83aa1ec)
	{
		var_79536eed thread function_e3273538();
	}
}

/*
	Name: function_e3273538
	Namespace: namespace_c7c6fa6
	Checksum: 0x4F78C9B4
	Offset: 0x868
	Size: 0xB5
	Parameters: 0
	Flags: None
*/
function function_e3273538()
{
	var_575cb898 = 0.06666667;
	var_137967eb = 1 / 180;
	var_8d0c7ad9 = 0;
	for(var_c957f6b6 = 0; var_c957f6b6 <= 12;  = 0)
	{
		self function_e7f6dc4e(0, 0, "scriptVector0", var_8d0c7ad9, 0, 0, 0);
		var_8d0c7ad9 = var_8d0c7ad9 + var_137967eb;
		wait(var_575cb898);
	}
}

/*
	Name: function_e1732ad0
	Namespace: namespace_c7c6fa6
	Checksum: 0x4CF5C5F7
	Offset: 0x928
	Size: 0x53
	Parameters: 7
	Flags: None
*/
function function_e1732ad0(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	self thread function_bc50283c(var_ec74b091);
}

/*
	Name: function_bc50283c
	Namespace: namespace_c7c6fa6
	Checksum: 0x9967399A
	Offset: 0x988
	Size: 0xD9
	Parameters: 1
	Flags: None
*/
function function_bc50283c(var_ec74b091)
{
	self endon("hash_643a7daf");
	self endon("hash_128f8789");
	self notify("hash_bc50283c");
	self endon("hash_bc50283c");
	var_9ef7f234 = 1 / 6.5;
	for(var_c957f6b6 = 0; var_c957f6b6 <= 6.5;  = 0)
	{
		if(!isdefined(self))
		{
			return;
		}
		self function_e7f6dc4e(var_ec74b091, 0, "scriptVector0", var_c957f6b6 * var_9ef7f234, 0, 0, 0);
		wait(0.01);
	}
}

/*
	Name: function_c1f973b7
	Namespace: namespace_c7c6fa6
	Checksum: 0x3BEDD30B
	Offset: 0xA70
	Size: 0x63
	Parameters: 7
	Flags: None
*/
function function_c1f973b7(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		level thread namespace_cc27597::function_43718187("p7_fxanim_cp_infection_sgen_time_lapse_objects_bundle");
	}
}

