#using scripts\codescripts\struct;
#using scripts\shared\audio_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\postfx_shared;
#using scripts\shared\scene_shared;

#namespace namespace_34269b51;

/*
	Name: function_d290ebfa
	Namespace: namespace_34269b51
	Checksum: 0x95D07426
	Offset: 0x3B0
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
	Namespace: namespace_34269b51
	Checksum: 0xAF5000FC
	Offset: 0x3D0
	Size: 0x43B
	Parameters: 0
	Flags: None
*/
function function_2ea898a8()
{
	namespace_71e9cb84::function_50f16166("toplayer", "sim_out_of_bound", 1, 1, "counter", &function_1d3b6fae, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "sim_lgt_tree_glow_01", 1, 1, "int", &function_883e8035, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "sim_lgt_tree_glow_02", 1, 1, "int", &function_ae40fa9e, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "sim_lgt_tree_glow_03", 1, 1, "int", &function_d4437507, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "sim_lgt_tree_glow_04", 1, 1, "int", &function_ca321c28, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "sim_lgt_tree_glow_05", 1, 1, "int", &function_f0349691, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "lgt_tree_glow_05_fade_out", 1, 1, "int", &function_c27ea863, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "sim_lgt_tree_glow_all_off", 1, 1, "int", &function_c0197ff, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "pstfx_frost_up", 1, 1, "counter", &function_fa9ecbf7, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "pstfx_frost_down", 1, 1, "counter", &function_a34472c4, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "pstfx_frost_up_baby", 1, 1, "counter", &function_8e717c36, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "pstfx_exit_all", 1, 1, "counter", &function_9d61ff9d, 0, 0);
	namespace_71e9cb84::function_50f16166("scriptmover", "infection_baby_shader", 1, 1, "int", &function_e43dc74b, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "toggle_sim_fog_banks", 1, 1, "int", &function_972dc8a2, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "break_baby", 1, 1, "int", &function_8422b90b, 0, 0);
}

/*
	Name: function_1d3b6fae
	Namespace: namespace_34269b51
	Checksum: 0x1F7ABEC8
	Offset: 0x818
	Size: 0x83
	Parameters: 7
	Flags: None
*/
function function_1d3b6fae(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	var_5dc5e20a = function_79c174a3(var_ec74b091);
	var_5dc5e20a namespace_bdde9225::function_3d1a8db5();
	var_5dc5e20a.var_8afc17fb = 0;
}

/*
	Name: function_883e8035
	Namespace: namespace_34269b51
	Checksum: 0xA7CF8500
	Offset: 0x8A8
	Size: 0x63
	Parameters: 7
	Flags: None
*/
function function_883e8035(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		namespace_80983c42::function_80983c42("lgt_tree_glow_01");
	}
}

/*
	Name: function_ae40fa9e
	Namespace: namespace_34269b51
	Checksum: 0xECC7DB1A
	Offset: 0x918
	Size: 0x63
	Parameters: 7
	Flags: None
*/
function function_ae40fa9e(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		namespace_80983c42::function_80983c42("lgt_tree_glow_02");
	}
}

/*
	Name: function_d4437507
	Namespace: namespace_34269b51
	Checksum: 0x9ABEE95A
	Offset: 0x988
	Size: 0x63
	Parameters: 7
	Flags: None
*/
function function_d4437507(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		namespace_80983c42::function_80983c42("lgt_tree_glow_03");
	}
}

/*
	Name: function_ca321c28
	Namespace: namespace_34269b51
	Checksum: 0x66DF0C3B
	Offset: 0x9F8
	Size: 0x63
	Parameters: 7
	Flags: None
*/
function function_ca321c28(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		namespace_80983c42::function_80983c42("lgt_tree_glow_04");
	}
}

/*
	Name: function_f0349691
	Namespace: namespace_34269b51
	Checksum: 0xA1B3E543
	Offset: 0xA68
	Size: 0x7B
	Parameters: 7
	Flags: None
*/
function function_f0349691(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		namespace_80983c42::function_80983c42("lgt_tree_glow_05");
		namespace_80983c42::function_80983c42("lgt_tree_glow_05_fade_out");
	}
}

/*
	Name: function_c27ea863
	Namespace: namespace_34269b51
	Checksum: 0xFE1AC881
	Offset: 0xAF0
	Size: 0x63
	Parameters: 7
	Flags: None
*/
function function_c27ea863(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		namespace_80983c42::function_67e7a937("lgt_tree_glow_05_fade_out");
	}
}

/*
	Name: function_c0197ff
	Namespace: namespace_34269b51
	Checksum: 0x3D882CA0
	Offset: 0xB60
	Size: 0xAD
	Parameters: 7
	Flags: None
*/
function function_c0197ff(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		for(var_c957f6b6 = 1; var_c957f6b6 <= 5; var_c957f6b6++)
		{
			var_a58a7b24 = "lgt_tree_glow_0" + var_c957f6b6;
			namespace_80983c42::function_67e7a937(var_a58a7b24);
		}
	}
}

/*
	Name: function_fa9ecbf7
	Namespace: namespace_34269b51
	Checksum: 0xCB80B589
	Offset: 0xC18
	Size: 0xFB
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
	if(var_5dc5e20a.var_8afc17fb == 0 && var_9193c732 == 1)
	{
		function_921a1574(0, "evt_freeze_start", (0, 0, 0));
		var_5dc5e20a.var_8afc17fb = 1;
		var_5dc5e20a namespace_bdde9225::function_bca12b73("pstfx_frost_loop");
	}
}

/*
	Name: function_a34472c4
	Namespace: namespace_34269b51
	Checksum: 0xC3999D9E
	Offset: 0xD20
	Size: 0xF3
	Parameters: 7
	Flags: None
*/
function function_a34472c4(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	var_5dc5e20a = function_79c174a3(var_ec74b091);
	if(!isdefined(var_5dc5e20a.var_8afc17fb))
	{
		var_5dc5e20a.var_8afc17fb = 0;
	}
	if(var_5dc5e20a.var_8afc17fb == 1 && var_9193c732 == 1)
	{
		function_921a1574(0, "evt_freeze_end", (0, 0, 0));
		var_5dc5e20a.var_8afc17fb = 0;
		var_5dc5e20a thread namespace_bdde9225::function_51f910fd();
	}
}

/*
	Name: function_8e717c36
	Namespace: namespace_34269b51
	Checksum: 0xDF7CBA4D
	Offset: 0xE20
	Size: 0xD3
	Parameters: 7
	Flags: None
*/
function function_8e717c36(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	var_5dc5e20a = function_79c174a3(var_ec74b091);
	var_5dc5e20a.var_8afc17fb = -1;
	var_5dc5e20a namespace_bdde9225::function_bca12b73("pstfx_baby_frost_up");
	var_5dc5e20a namespace_bdde9225::function_bca12b73("pstfx_baby_frost_loop");
	function_921a1574(0, "evt_freeze_start", (0, 0, 0));
}

/*
	Name: function_9d61ff9d
	Namespace: namespace_34269b51
	Checksum: 0x546D9B38
	Offset: 0xF00
	Size: 0x73
	Parameters: 7
	Flags: None
*/
function function_9d61ff9d(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	var_5dc5e20a = function_79c174a3(var_ec74b091);
	var_5dc5e20a thread namespace_bdde9225::function_51f910fd();
}

/*
	Name: function_972dc8a2
	Namespace: namespace_34269b51
	Checksum: 0xEFF5380D
	Offset: 0xF80
	Size: 0x8B
	Parameters: 7
	Flags: None
*/
function function_972dc8a2(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	var_4780a11e = 0;
	if(var_9193c732 == 1)
	{
		var_4780a11e = 2;
	}
	else
	{
		var_4780a11e = 0;
	}
	function_c1dc0657(var_ec74b091, var_4780a11e);
}

/*
	Name: function_8422b90b
	Namespace: namespace_34269b51
	Checksum: 0xBCD6914C
	Offset: 0x1018
	Size: 0xA3
	Parameters: 7
	Flags: None
*/
function function_8422b90b(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(!var_8d0de8f7 && !var_703bf65c)
	{
		if(var_9193c732 != var_ade4d29d && var_9193c732 == 1)
		{
			level thread namespace_cc27597::function_43718187("p7_fxanim_cp_infection_baby_bundle");
			namespace_80983c42::function_80983c42("inf_boa_crying");
		}
	}
}

/*
	Name: function_e43dc74b
	Namespace: namespace_34269b51
	Checksum: 0xB3D40D34
	Offset: 0x10C8
	Size: 0x1EF
	Parameters: 7
	Flags: None
*/
function function_e43dc74b(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	var_f721d9a5 = GetTime();
	var_f79f9206 = 15;
	var_ea6e99fe = 2;
	var_88baa01e = 3;
	var_841cb92b = 1;
	while(var_841cb92b)
	{
		var_60db70fa = GetTime();
		var_e65455e6 = var_60db70fa - var_f721d9a5 / 1000;
		if(var_e65455e6 >= var_f79f9206)
		{
			var_e65455e6 = var_f79f9206;
			var_841cb92b = 0;
		}
		var_1d8a2dd1 = var_e65455e6 / 15;
		if(var_e65455e6 < var_ea6e99fe)
		{
			var_9f45473e = 0;
		}
		else
		{
			var_9f45473e = 1 - 15 - var_e65455e6 / var_f79f9206 - var_ea6e99fe;
		}
		if(var_e65455e6 < var_88baa01e)
		{
			var_be6c1800 = 0;
		}
		else
		{
			var_be6c1800 = 1 - 15 - var_e65455e6 / var_f79f9206 - var_88baa01e;
		}
		self function_e7f6dc4e(var_ec74b091, 0, "scriptVector1", var_1d8a2dd1, var_9f45473e, 0, 0);
		self function_e7f6dc4e(var_ec74b091, 0, "scriptVector0", var_be6c1800, 0, 0);
		wait(0.01);
	}
}

