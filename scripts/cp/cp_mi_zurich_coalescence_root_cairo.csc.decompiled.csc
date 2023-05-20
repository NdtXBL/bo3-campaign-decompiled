#using scripts\codescripts\struct;
#using scripts\cp\cp_mi_zurich_coalescence_util;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\util_shared;

#namespace namespace_73dbe018;

/*
	Name: function_d290ebfa
	Namespace: namespace_73dbe018
	Checksum: 0x5F710E15
	Offset: 0x358
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	function_2ea898a8();
	function_ba0b35c();
}

/*
	Name: function_2ea898a8
	Namespace: namespace_73dbe018
	Checksum: 0xA2479F64
	Offset: 0x388
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_2ea898a8()
{
	namespace_71e9cb84::function_50f16166("scriptmover", "vtol_spawn_fx", 1, 1, "counter", &function_c969e4b5, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "cairo_client_ents", 1, 1, "int", &function_889c4970, 0, 0);
}

/*
	Name: function_ba0b35c
	Namespace: namespace_73dbe018
	Checksum: 0xEBC64784
	Offset: 0x428
	Size: 0x1D
	Parameters: 0
	Flags: None
*/
function function_ba0b35c()
{
	level.var_c1aa5253["vtol_spawn_fx"] = "explosions/fx_exp_lightning_fold_infection";
}

/*
	Name: function_889c4970
	Namespace: namespace_73dbe018
	Checksum: 0x4B761066
	Offset: 0x450
	Size: 0x34D
	Parameters: 7
	Flags: None
*/
function function_889c4970(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		if(isdefined(level.var_fdb616fc) && level.var_fdb616fc)
		{
			return;
		}
		level.var_fdb616fc = 1;
		namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_zurich_cairo_b_collapse_01_bundle", &namespace_8e9083ff::function_4dd02a03, "init", "cairo_root_client_cleanup");
		level thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_zurich_cairo_b_collapse_01_bundle");
		namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_zurich_cairo_b_collapse_02_bundle", &namespace_8e9083ff::function_4dd02a03, "init", "cairo_root_client_cleanup");
		level thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_zurich_cairo_b_collapse_02_bundle");
		namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_zurich_cairo_b_collapse_03_bundle", &namespace_8e9083ff::function_4dd02a03, "init", "cairo_root_client_cleanup");
		level thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_zurich_cairo_b_collapse_03_bundle");
		namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_zurich_cairo_lightpole_bundle", &namespace_8e9083ff::function_4dd02a03, "init", "cairo_root_client_cleanup");
		level thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_zurich_cairo_lightpole_bundle");
		namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_zurich_sinkhole_01_bundle", &namespace_8e9083ff::function_4dd02a03, "init", "cairo_root_client_cleanup");
		level thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_zurich_sinkhole_01_bundle");
		namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_zurich_sinkhole_02_bundle", &namespace_8e9083ff::function_4dd02a03, "init", "cairo_root_client_cleanup");
		level thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_zurich_sinkhole_02_bundle");
		var_84828c57 = function_99201f25(var_ec74b091, "cairo_client_building", "targetname");
		namespace_84970cc4::function_966ecb29(var_84828c57, &function_ea552f44, var_ec74b091);
		var_c9a3a65d = function_99201f25(var_ec74b091, "cairo_client_explode", "targetname");
		namespace_84970cc4::function_966ecb29(var_c9a3a65d, &function_9f362d5c, var_ec74b091);
	}
	else
	{
		level notify("hash_8ca632f9");
		level.var_fdb616fc = undefined;
	}
}

/*
	Name: function_ea552f44
	Namespace: namespace_73dbe018
	Checksum: 0xE3F4806D
	Offset: 0x7A8
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_ea552f44(var_ec74b091)
{
	self waittill("hash_4dbf3ae3");
	/#
		namespace_33b293fd::function_a7ee953(isdefined(self.var_db7bb468), "Dev Block strings are not supported");
	#/
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_zurich_cairo_" + self.var_db7bb468);
}

/*
	Name: function_9f362d5c
	Namespace: namespace_73dbe018
	Checksum: 0xED1BFBC2
	Offset: 0x820
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_9f362d5c(var_ec74b091)
{
	self waittill("hash_4dbf3ae3");
	/#
		namespace_33b293fd::function_a7ee953(isdefined(self.var_db7bb468), "Dev Block strings are not supported");
	#/
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_zurich_" + self.var_db7bb468);
}

/*
	Name: function_c969e4b5
	Namespace: namespace_73dbe018
	Checksum: 0xE6F7BF17
	Offset: 0x898
	Size: 0x6B
	Parameters: 7
	Flags: None
*/
function function_c969e4b5(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	function_da6acfd2(var_ec74b091, level.var_c1aa5253["vtol_spawn_fx"], self, "tag_origin");
}

