#using scripts\codescripts\struct;
#using scripts\shared\clientfield_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\util_shared;

#namespace namespace_bbb4ee72;

/*
	Name: function_d290ebfa
	Namespace: namespace_bbb4ee72
	Checksum: 0x55ED8839
	Offset: 0x160
	Size: 0x2D
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	function_2ea898a8();
	level.var_c1aa5253["exploding_tree"] = "explosions/fx_exp_lightning_fold_infection";
}

/*
	Name: function_2ea898a8
	Namespace: namespace_bbb4ee72
	Checksum: 0xA12A70CF
	Offset: 0x198
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_2ea898a8()
{
	namespace_71e9cb84::function_50f16166("scriptmover", "exploding_tree", 1, 1, "counter", &function_85138237, 0, 0);
}

/*
	Name: function_85138237
	Namespace: namespace_bbb4ee72
	Checksum: 0x18D4DAA
	Offset: 0x1F0
	Size: 0x6B
	Parameters: 7
	Flags: None
*/
function function_85138237(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	function_fd4ba5e1(var_ec74b091, level.var_c1aa5253["exploding_tree"], self.var_722885f3);
}

