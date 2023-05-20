#using scripts\codescripts\struct;
#using scripts\cp\cp_mi_zurich_coalescence_util;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\util_shared;

#namespace namespace_6a04e6cd;

/*
	Name: function_d290ebfa
	Namespace: namespace_6a04e6cd
	Checksum: 0xD7D1F50D
	Offset: 0x330
	Size: 0x55
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	function_2ea898a8();
	level.var_77350bac = [];
	level.var_c1aa5253["snow_burst_fx"] = "snow/fx_snow_root_wall_zurich";
	level.var_c1aa5253["snow_pipe_fx"] = "snow/fx_snow_ground_pipe_zurich";
}

/*
	Name: function_2ea898a8
	Namespace: namespace_6a04e6cd
	Checksum: 0x163EEC32
	Offset: 0x390
	Size: 0x1B3
	Parameters: 0
	Flags: None
*/
function function_2ea898a8()
{
	namespace_71e9cb84::function_50f16166("scriptmover", "zurich_snow_rise", 1, 1, "counter", &function_920535b4, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "reflection_extracam", 1, 1, "int", &function_bf3a782e, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "zurich_vinewall_init", 1, 1, "int", &function_e76c15a0, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "root_vine_cleanup", 1, 1, "counter", &function_ad59adbe, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "mirror_break", 1, 1, "int", &function_2a49d204, 0, 0);
	namespace_71e9cb84::function_50f16166("scriptmover", "mirror_warp", 1, 1, "int", &function_5e9c8d21, 0, 0);
}

/*
	Name: function_920535b4
	Namespace: namespace_6a04e6cd
	Checksum: 0x279AE6F3
	Offset: 0x550
	Size: 0xBB
	Parameters: 7
	Flags: None
*/
function function_920535b4(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	function_fd4ba5e1(var_ec74b091, level.var_c1aa5253["snow_pipe_fx"], self.var_722885f3, function_bc7ce905(self.var_6ab6f4fd), function_aba60185(self.var_6ab6f4fd));
	self function_921a1574(0, "evt_snow_burst");
}

/*
	Name: function_e76c15a0
	Namespace: namespace_6a04e6cd
	Checksum: 0xB206E457
	Offset: 0x618
	Size: 0x14B
	Parameters: 7
	Flags: None
*/
function function_e76c15a0(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		if(isdefined(level.var_77350bac[var_ec74b091]) && level.var_77350bac[var_ec74b091])
		{
			return;
		}
		level.var_77350bac[var_ec74b091] = 1;
		namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_zurich_root_wall_01_bundle", &namespace_8e9083ff::function_4dd02a03, "done", "root_zurich_vine_cleanup");
		namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_zurich_root_wall_02_bundle", &namespace_8e9083ff::function_4dd02a03, "done", "root_zurich_vine_cleanup");
		var_d6e8ed16 = function_99201f25(var_ec74b091, "zurich_mazewall_trig", "targetname");
		namespace_84970cc4::function_966ecb29(var_d6e8ed16, &function_abbe84dc, var_ec74b091);
	}
}

/*
	Name: function_abbe84dc
	Namespace: namespace_6a04e6cd
	Checksum: 0x788E6E3A
	Offset: 0x770
	Size: 0x12D
	Parameters: 1
	Flags: None
*/
function function_abbe84dc(var_ec74b091)
{
	var_da104453 = namespace_14b42b8a::function_7faf4c39(self.var_b07228b6, "targetname");
	self waittill("hash_4dbf3ae3");
	for(var_c957f6b6 = 0; var_c957f6b6 < var_da104453.size; var_c957f6b6++)
	{
		if(var_da104453[var_c957f6b6].var_e6e9b8de === "scriptbundle_scene")
		{
			function_fd4ba5e1(var_ec74b091, level.var_c1aa5253["snow_burst_fx"], var_da104453[var_c957f6b6].var_722885f3, function_bc7ce905(var_da104453[var_c957f6b6].var_6ab6f4fd), function_aba60185(var_da104453[var_c957f6b6].var_6ab6f4fd));
			var_da104453[var_c957f6b6] namespace_cc27597::function_43718187();
		}
	}
}

/*
	Name: function_ad59adbe
	Namespace: namespace_6a04e6cd
	Checksum: 0xF7F9181A
	Offset: 0x8A8
	Size: 0x57
	Parameters: 7
	Flags: None
*/
function function_ad59adbe(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	level notify("hash_86c401a9");
	level.var_77350bac[var_ec74b091] = undefined;
}

/*
	Name: function_bf3a782e
	Namespace: namespace_6a04e6cd
	Checksum: 0xA42DE8F0
	Offset: 0x908
	Size: 0x133
	Parameters: 7
	Flags: None
*/
function function_bf3a782e(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		level.var_29613ea0 = function_6ada35ba(var_ec74b091, "zurich_root_mirror", "targetname");
		/#
			namespace_33b293fd::function_a7ee953(isdefined(level.var_29613ea0), "Dev Block strings are not supported");
		#/
		level.var_29613ea0 function_69b16290(0);
		function_6c1294b8("r_extracam_custom_aspectratio", 0.769);
	}
	else
	{
		function_6c1294b8("r_extracam_custom_aspectratio", -1);
		if(isdefined(level.var_29613ea0))
		{
			level.var_29613ea0 function_9de0788f();
			level.var_29613ea0 function_dc8c8404();
		}
	}
}

/*
	Name: function_2a49d204
	Namespace: namespace_6a04e6cd
	Checksum: 0x87FFBE56
	Offset: 0xA48
	Size: 0x9B
	Parameters: 7
	Flags: None
*/
function function_2a49d204(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		var_29613ea0 = function_6ada35ba(var_ec74b091, "zurich_root_mirror", "targetname");
		if(isdefined(var_29613ea0))
		{
			var_29613ea0 function_50ccee8d();
		}
	}
}

/*
	Name: function_5e9c8d21
	Namespace: namespace_6a04e6cd
	Checksum: 0x3E3D246A
	Offset: 0xAF0
	Size: 0x18F
	Parameters: 7
	Flags: None
*/
function function_5e9c8d21(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		var_94db6e7c = GetTime();
		var_9aad594c = 0;
		while(var_9aad594c < 1)
		{
			var_78962fff = GetTime();
			var_348e23ad = var_78962fff - var_94db6e7c / 1000;
			var_9aad594c = 1 * var_348e23ad / 4;
			self function_e7f6dc4e(var_ec74b091, 0, "scriptVector4", var_9aad594c, 0, 0);
			wait(0.01);
		}
		break;
	}
	var_94db6e7c = GetTime();
	var_9aad594c = 1;
	while(isdefined(self) && var_9aad594c > 0)
	{
		var_78962fff = GetTime();
		var_348e23ad = var_78962fff - var_94db6e7c / 1000;
		var_9aad594c = 1 - var_348e23ad / 4;
		self function_e7f6dc4e(var_ec74b091, 0, "scriptVector4", var_9aad594c, 0, 0);
		wait(0.01);
	}
}

