#using scripts\codescripts\struct;
#using scripts\core\_multi_extracam;
#using scripts\shared\_character_customization;
#using scripts\shared\ai\archetype_damage_effects;
#using scripts\shared\ai\systems\destructible_character;
#using scripts\shared\ai\zombie;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\duplicaterender_mgr;
#using scripts\shared\exploder_shared;
#using scripts\shared\filter_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\postfx_shared;
#using scripts\shared\util_shared;

#namespace namespace_a022a0ac;

/*
	Name: function_80bc4653
	Namespace: namespace_a022a0ac
	Checksum: 0x720B1A9B
	Offset: 0x580
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_80bc4653(var_ec74b091)
{
	level thread function_35211642(var_ec74b091);
}

/*
	Name: function_c35e6aab
	Namespace: namespace_a022a0ac
	Checksum: 0xC0E6B4E0
	Offset: 0x5B0
	Size: 0x123
	Parameters: 0
	Flags: None
*/
function function_c35e6aab()
{
	level.var_ddd06483 = [];
	level.var_8da2c299 = [];
	level.var_5d855a8e = [];
	level.var_f07434cb = [];
	level.var_8ddcb857 = [];
	level.var_ac376924 = [];
	level.var_80bcc14e = [];
	level.var_21c54bf8 = [];
	level.var_806d7186 = [];
	level.var_79eae6b = [];
	level.var_35c69e7b = [];
	level.var_ddc5d4d7 = [];
	level.var_ddc5d4d7 = [];
	level.var_d9e20ec0 = [];
	level.var_6c3e6703 = function_c4d5ec1f("none");
	level.var_a0a61689 = namespace_14b42b8a::function_7922262b("paintshop_weapon_position");
	namespace_1c38f9cf::function_c20cc247("cac_locked_weapon", 10, "cac_locked_weapon", undefined, 2, "mc/sonar_frontend_locked_gun", 1);
}

/*
	Name: function_35211642
	Namespace: namespace_a022a0ac
	Checksum: 0xF40860B7
	Offset: 0x6E0
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function function_35211642(var_ec74b091)
{
	level.var_5d855a8e[var_ec74b091] = "";
	level.var_f07434cb[var_ec74b091] = undefined;
	level thread function_58ef7272(var_ec74b091);
	level thread function_8301e2ab(var_ec74b091);
}

/*
	Name: function_58ef7272
	Namespace: namespace_a022a0ac
	Checksum: 0x49B34392
	Offset: 0x750
	Size: 0xC7
	Parameters: 1
	Flags: None
*/
function function_58ef7272(var_ec74b091)
{
	level endon("hash_643a7daf");
	while(1)
	{
		level thread function_d082ed6f(var_ec74b091);
		level thread function_72398bcb(var_ec74b091);
		level thread function_c82f44cc(var_ec74b091);
		level thread function_e7763e6c(var_ec74b091);
		level namespace_82b91a51::function_5b7e3888("CustomClass_update" + var_ec74b091, "CustomClass_focus" + var_ec74b091, "CustomClass_remove" + var_ec74b091, "CustomClass_closed" + var_ec74b091);
	}
}

/*
	Name: function_8301e2ab
	Namespace: namespace_a022a0ac
	Checksum: 0xE39064D7
	Offset: 0x820
	Size: 0xB9
	Parameters: 1
	Flags: None
*/
function function_8301e2ab(var_ec74b091)
{
	level endon("hash_643a7daf");
	self.var_e66369d4 = [];
	self.var_1d564a08 = [];
	self.var_ba4964ea = [];
	while(1)
	{
		level thread function_a188ba2(var_ec74b091);
		level thread function_db76bfd5(var_ec74b091);
		level thread function_ade2f410(var_ec74b091);
		level thread function_970c5a0a(var_ec74b091);
		level waittill("cam_customization_closed" + var_ec74b091);
	}
}

/*
	Name: function_d082ed6f
	Namespace: namespace_a022a0ac
	Checksum: 0x21DA7034
	Offset: 0x8E8
	Size: 0x3D3
	Parameters: 1
	Flags: None
*/
function function_d082ed6f(var_ec74b091)
{
	level endon("hash_643a7daf");
	level endon("CustomClass_focus" + var_ec74b091);
	level endon("CustomClass_remove" + var_ec74b091);
	level endon("CustomClass_closed" + var_ec74b091);
	level waittill("CustomClass_update" + var_ec74b091, var_dbb2aef5, var_1b5295e, var_27b7a3c7, var_1da64ae8, var_43a8c551, var_69ab3fba, var_8fadba23);
	var_6b28638c = var_dbb2aef5;
	var_dacb3c7 = var_1b5295e;
	var_10fd3860 = var_27b7a3c7;
	var_9d027940 = var_1da64ae8;
	var_cf4497db = var_43a8c551;
	var_a8fc0d4b = var_69ab3fba;
	var_40e5de05 = var_8fadba23;
	if(!isdefined(var_a8fc0d4b))
	{
		var_a8fc0d4b = 1;
	}
	if(!isdefined(var_40e5de05))
	{
		var_40e5de05 = 0;
	}
	if(isdefined(var_dacb3c7))
	{
		if(isdefined(var_cf4497db) && var_cf4497db != "none")
		{
			function_2632634e(var_ec74b091, var_cf4497db);
		}
		if(isdefined(var_9d027940) && var_9d027940 != "none")
		{
			function_f3037b75(var_ec74b091, var_9d027940);
		}
		namespace_bdde9225::function_ef318b3(var_ec74b091, "cac", 1);
		var_c7b6e8e4 = level.var_a0a61689;
		if(!isdefined(level.var_ddd06483[var_ec74b091]))
		{
			level.var_ddd06483[var_ec74b091] = function_b22c17a7(var_ec74b091, var_c7b6e8e4.var_722885f3, var_c7b6e8e4.var_6ab6f4fd);
			level.var_8da2c299[var_ec74b091] = function_b22c17a7(var_ec74b091, var_c7b6e8e4.var_722885f3, var_c7b6e8e4.var_6ab6f4fd);
			level.var_8da2c299[var_ec74b091] function_50ccee8d();
		}
		function_56144993(var_ec74b091, var_a8fc0d4b);
		function_db89bd0c(var_ec74b091, var_a8fc0d4b && var_40e5de05);
		function_a0a6ebe7(var_ec74b091, var_dacb3c7, undefined, var_a8fc0d4b, var_40e5de05);
		level notify("hash_2126f815");
		var_f7142c9e = function_822c6338(var_10fd3860);
		function_e4486341(var_ec74b091, var_10fd3860);
		level function_a9379a04(var_ec74b091, var_6b28638c, "cam_cac_weapon", "cam_cac", var_f7142c9e, var_10fd3860);
	}
	else if(isdefined(var_dbb2aef5) && var_dbb2aef5 == "purchased")
	{
		function_db89bd0c(var_ec74b091, 0);
	}
}

/*
	Name: function_56144993
	Namespace: namespace_a022a0ac
	Checksum: 0xD0F575E7
	Offset: 0xCC8
	Size: 0x83
	Parameters: 2
	Flags: None
*/
function function_56144993(var_ec74b091, var_a8fc0d4b)
{
	if(!isdefined(var_a8fc0d4b))
	{
		var_a8fc0d4b = 1;
	}
	if(!isdefined(level.var_ddd06483[var_ec74b091]))
	{
		return;
	}
	if(var_a8fc0d4b != 1)
	{
		function_94b4fd36(var_ec74b091, 1);
	}
	else
	{
		function_94b4fd36(var_ec74b091, 0);
	}
}

/*
	Name: function_db89bd0c
	Namespace: namespace_a022a0ac
	Checksum: 0x788404D1
	Offset: 0xD58
	Size: 0x7B
	Parameters: 2
	Flags: None
*/
function function_db89bd0c(var_ec74b091, var_40e5de05)
{
	if(!isdefined(var_40e5de05))
	{
		var_40e5de05 = 0;
	}
	if(!isdefined(level.var_ddd06483[var_ec74b091]))
	{
		return;
	}
	if(var_40e5de05)
	{
		function_ab23d927(var_ec74b091, 1);
	}
	else
	{
		function_ab23d927(var_ec74b091, 0);
	}
}

/*
	Name: function_133a4a3f
	Namespace: namespace_a022a0ac
	Checksum: 0xE5F0DFEF
	Offset: 0xDE0
	Size: 0x8F
	Parameters: 1
	Flags: None
*/
function function_133a4a3f(var_25d1d903)
{
	var_276701d = "gamedata/weapons/common/attachmentTable.csv";
	var_3947a807 = function_8f1ef9(var_276701d, 4, var_25d1d903);
	if(var_3947a807 > -1)
	{
		var_c5deafa2 = function_5a31ce6c(var_276701d, var_3947a807, 2);
		return var_c5deafa2 == "optic";
	}
	return 0;
}

/*
	Name: function_72398bcb
	Namespace: namespace_a022a0ac
	Checksum: 0xA8A0CDE6
	Offset: 0xE78
	Size: 0x343
	Parameters: 1
	Flags: None
*/
function function_72398bcb(var_ec74b091)
{
	level endon("hash_643a7daf");
	level endon("CustomClass_update" + var_ec74b091);
	level endon("CustomClass_remove" + var_ec74b091);
	level endon("CustomClass_closed" + var_ec74b091);
	level waittill("CustomClass_focus" + var_ec74b091, var_dbb2aef5, var_1b5295e, var_27b7a3c7, var_1da64ae8, var_43a8c551, var_69ab3fba);
	level endon("CustomClass_focus" + var_ec74b091);
	var_6b28638c = var_dbb2aef5;
	var_dacb3c7 = var_1b5295e;
	var_b000b0be = var_27b7a3c7;
	var_9d027940 = var_1da64ae8;
	var_cf4497db = var_43a8c551;
	var_bea73497 = var_69ab3fba;
	var_8aa759e = 0;
	var_e6e93045 = function_c4ab8694(level.var_5d855a8e[var_ec74b091], var_dacb3c7);
	if(isdefined(var_cf4497db) && var_cf4497db != "none")
	{
		function_2632634e(var_ec74b091, var_cf4497db);
	}
	var_e419ae70 = 0.3;
	var_f7142c9e = 400;
	if(function_133a4a3f(var_b000b0be))
	{
		var_e419ae70 = 0;
		var_f7142c9e = 200;
	}
	function_8da2c299(var_ec74b091, var_e6e93045, var_8aa759e);
	function_da217883(var_ec74b091);
	function_a0a6ebe7(var_ec74b091, var_e6e93045, var_8aa759e);
	if(var_dacb3c7 == var_e6e93045)
	{
		var_dacb3c7 = undefined;
	}
	if(isdefined(var_bea73497) && var_bea73497)
	{
		if(isdefined(var_dacb3c7))
		{
			function_8da2c299(var_ec74b091, var_dacb3c7, 0);
			wait(var_e419ae70);
			function_da217883(var_ec74b091);
			function_a0a6ebe7(var_ec74b091, var_dacb3c7, 0);
		}
	}
	else
	{
		level thread function_208bfb32(var_ec74b091, var_6b28638c, "cam_cac_attachments", "cam_cac", var_e419ae70, var_f7142c9e, var_b000b0be, var_dacb3c7);
	}
	if(isdefined(var_9d027940) && var_9d027940 != "none")
	{
		function_f3037b75(var_ec74b091, var_9d027940);
	}
}

/*
	Name: function_c82f44cc
	Namespace: namespace_a022a0ac
	Checksum: 0xBEE02904
	Offset: 0x11C8
	Size: 0x1D1
	Parameters: 1
	Flags: None
*/
function function_c82f44cc(var_ec74b091)
{
	level endon("hash_643a7daf");
	level endon("CustomClass_update" + var_ec74b091);
	level endon("CustomClass_focus" + var_ec74b091);
	level endon("CustomClass_closed" + var_ec74b091);
	level waittill("CustomClass_remove" + var_ec74b091, var_dbb2aef5, var_1b5295e, var_27b7a3c7, var_1da64ae8, var_43a8c551, var_69ab3fba);
	namespace_bdde9225::function_ef318b3(var_ec74b091, "cac", 0);
	function_94b4fd36(var_ec74b091, 0);
	function_ab23d927(var_ec74b091, 0);
	var_c7b6e8e4 = level.var_a0a61689;
	var_10fd3860 = "select01";
	var_81d56f55 = "ui_cam_cac_ar_standard";
	function_c7c08dd4(var_ec74b091, var_81d56f55, 0, "cam_cac", var_10fd3860, var_c7b6e8e4.var_722885f3, var_c7b6e8e4.var_6ab6f4fd);
	function_e4486341(var_ec74b091, var_10fd3860);
	if(isdefined(level.var_ddd06483[var_ec74b091]))
	{
		level.var_ddd06483[var_ec74b091] function_9b6966df();
	}
	level.var_5d855a8e[var_ec74b091] = "";
}

/*
	Name: function_e7763e6c
	Namespace: namespace_a022a0ac
	Checksum: 0xFD2074FD
	Offset: 0x13A8
	Size: 0x139
	Parameters: 1
	Flags: None
*/
function function_e7763e6c(var_ec74b091)
{
	level endon("hash_643a7daf");
	level endon("CustomClass_update" + var_ec74b091);
	level endon("CustomClass_focus" + var_ec74b091);
	level endon("CustomClass_remove" + var_ec74b091);
	level waittill("CustomClass_closed" + var_ec74b091, var_dbb2aef5, var_1b5295e, var_27b7a3c7, var_1da64ae8, var_43a8c551, var_69ab3fba);
	if(isdefined(level.var_ddd06483[var_ec74b091]))
	{
		level.var_ddd06483[var_ec74b091] function_9b6966df();
	}
	namespace_bdde9225::function_ef318b3(var_ec74b091, "cac", 0);
	function_94b4fd36(var_ec74b091, 0);
	function_ab23d927(var_ec74b091, 0);
	level.var_5d855a8e[var_ec74b091] = "";
}

/*
	Name: function_b22c17a7
	Namespace: namespace_a022a0ac
	Checksum: 0x10703EB
	Offset: 0x14F0
	Size: 0x83
	Parameters: 3
	Flags: None
*/
function function_b22c17a7(var_ec74b091, var_722885f3, var_6ab6f4fd)
{
	var_c222d467 = function_9b7fda5e(var_ec74b091, var_722885f3, "script_model");
	var_c222d467 function_cea50a94(1, 1);
	if(isdefined(var_6ab6f4fd))
	{
		var_c222d467.var_6ab6f4fd = var_6ab6f4fd;
	}
	return var_c222d467;
}

/*
	Name: function_2632634e
	Namespace: namespace_a022a0ac
	Checksum: 0xE1FFD642
	Offset: 0x1580
	Size: 0x107
	Parameters: 2
	Flags: None
*/
function function_2632634e(var_ec74b091, var_cf4497db)
{
	var_5a183cc0 = function_d6df1f20(var_cf4497db, ",");
	level.var_8ddcb857[var_ec74b091] = [];
	level.var_ac376924[var_ec74b091] = [];
	for(var_c957f6b6 = 0; var_c957f6b6 + 1 < var_5a183cc0.size;  = 0)
	{
		level.var_8ddcb857[var_ec74b091][level.var_8ddcb857[var_ec74b091].size] = var_5a183cc0[var_c957f6b6];
		level.var_ac376924[var_ec74b091][level.var_ac376924[var_ec74b091].size] = function_b6b79a0(var_5a183cc0[var_c957f6b6 + 1]);
	}
}

/*
	Name: function_6c023f8a
	Namespace: namespace_a022a0ac
	Checksum: 0xDC31E644
	Offset: 0x1690
	Size: 0xC3
	Parameters: 1
	Flags: None
*/
function function_6c023f8a(var_ec74b091)
{
	var_840a9907 = function_6ada35ba(var_ec74b091, "paintshop_black", "targetname");
	if(isdefined(var_840a9907))
	{
		if(!isdefined(level.var_80bcc14e[var_ec74b091]))
		{
			level.var_80bcc14e[var_ec74b091] = var_840a9907.var_722885f3;
		}
		var_840a9907 function_50ccee8d();
		var_840a9907 function_a96a2721(level.var_80bcc14e[var_ec74b091], 0.01);
	}
}

/*
	Name: function_e18194df
	Namespace: namespace_a022a0ac
	Checksum: 0x874C035D
	Offset: 0x1760
	Size: 0x9B
	Parameters: 1
	Flags: None
*/
function function_e18194df(var_ec74b091)
{
	var_840a9907 = function_6ada35ba(var_ec74b091, "paintshop_black", "targetname");
	if(isdefined(var_840a9907))
	{
		var_840a9907 function_48f26766();
		var_840a9907 function_a96a2721(level.var_80bcc14e[var_ec74b091] + VectorScale((0, 0, 1), 227), 0.01);
	}
}

/*
	Name: function_2d50faf
	Namespace: namespace_a022a0ac
	Checksum: 0x2F6A6B82
	Offset: 0x1808
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_2d50faf(var_ec74b091)
{
	if(!isdefined(level.var_21c54bf8[var_ec74b091]))
	{
		level.var_21c54bf8[var_ec74b091] = 0;
	}
	return level.var_21c54bf8[var_ec74b091];
}

/*
	Name: function_15908133
	Namespace: namespace_a022a0ac
	Checksum: 0x267C934E
	Offset: 0x1850
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_15908133(var_ec74b091)
{
	if(!isdefined(level.var_806d7186[var_ec74b091]))
	{
		level.var_806d7186[var_ec74b091] = 0;
	}
	return level.var_806d7186[var_ec74b091];
}

/*
	Name: function_bcfb8776
	Namespace: namespace_a022a0ac
	Checksum: 0x3EDCF972
	Offset: 0x1898
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_bcfb8776(var_ec74b091)
{
	if(!isdefined(level.var_79eae6b[var_ec74b091]))
	{
		level.var_79eae6b[var_ec74b091] = 0;
	}
	return level.var_79eae6b[var_ec74b091];
}

/*
	Name: function_48305aa
	Namespace: namespace_a022a0ac
	Checksum: 0x5DA5DE55
	Offset: 0x18E0
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_48305aa(var_ec74b091)
{
	if(!isdefined(level.var_35c69e7b[var_ec74b091]))
	{
		level.var_35c69e7b[var_ec74b091] = 0;
	}
	return level.var_35c69e7b[var_ec74b091];
}

/*
	Name: function_c9f6ea78
	Namespace: namespace_a022a0ac
	Checksum: 0x64337382
	Offset: 0x1928
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_c9f6ea78(var_ec74b091)
{
	if(!isdefined(level.var_9688750b[var_ec74b091]))
	{
		level.var_9688750b[var_ec74b091] = 0;
	}
	return level.var_9688750b[var_ec74b091];
}

/*
	Name: function_f3037b75
	Namespace: namespace_a022a0ac
	Checksum: 0x3AC6AD71
	Offset: 0x1970
	Size: 0x18B
	Parameters: 2
	Flags: None
*/
function function_f3037b75(var_ec74b091, var_9d027940)
{
	var_f293a26a = function_d6df1f20(var_9d027940, ",");
	level.var_21c54bf8[var_ec74b091] = function_b6b79a0(var_f293a26a[0]);
	level.var_79eae6b[var_ec74b091] = 0;
	level.var_35c69e7b[var_ec74b091] = 0;
	level.var_806d7186[var_ec74b091] = function_b6b79a0(var_f293a26a[1]);
	level.var_9688750b[var_ec74b091] = function_b6b79a0(var_f293a26a[2]);
	if(isdefined(var_f293a26a) && isdefined(level.var_ddd06483[var_ec74b091]))
	{
		level.var_ddd06483[var_ec74b091] function_53033123(function_2d50faf(var_ec74b091), function_15908133(var_ec74b091), function_bcfb8776(var_ec74b091), function_48305aa(var_ec74b091), function_c9f6ea78(var_ec74b091));
	}
}

/*
	Name: function_822c6338
	Namespace: namespace_a022a0ac
	Checksum: 0xC619CEDE
	Offset: 0x1B08
	Size: 0xA7
	Parameters: 1
	Flags: None
*/
function function_822c6338(var_10fd3860)
{
	var_f7142c9e = 0;
	if(isdefined(var_10fd3860))
	{
		var_bf609991 = var_10fd3860 == "left" || var_10fd3860 == "right" || var_10fd3860 == "top" || var_10fd3860 == "paintshop_preview_left" || var_10fd3860 == "paintshop_preview_right" || var_10fd3860 == "paintshop_preview_top";
		if(var_bf609991)
		{
			var_f7142c9e = 500;
		}
	}
	return var_f7142c9e;
}

/*
	Name: function_e4486341
	Namespace: namespace_a022a0ac
	Checksum: 0x46B16B5
	Offset: 0x1BB8
	Size: 0x19B
	Parameters: 2
	Flags: None
*/
function function_e4486341(var_ec74b091, var_10fd3860)
{
	if(isdefined(var_10fd3860))
	{
		var_bf609991 = var_10fd3860 == "left" || var_10fd3860 == "right" || var_10fd3860 == "top" || var_10fd3860 == "paintshop_preview_left" || var_10fd3860 == "paintshop_preview_right" || var_10fd3860 == "paintshop_preview_top";
		function_345e285b(var_ec74b091, "weapon_kick");
		if(var_bf609991)
		{
			function_e18194df(var_ec74b091);
			function_e0b56725(var_ec74b091, "lights_paintshop");
			function_e0b56725(var_ec74b091, "weapon_kick");
			function_345e285b(var_ec74b091, "lights_paintshop_zoom");
		}
		else
		{
			function_6c023f8a(var_ec74b091);
			function_e0b56725(var_ec74b091, "lights_paintshop_zoom");
			function_345e285b(var_ec74b091, "lights_paintshop");
			function_345e285b(var_ec74b091, "weapon_kick");
		}
	}
}

/*
	Name: function_a9379a04
	Namespace: namespace_a022a0ac
	Checksum: 0x8471AD4A
	Offset: 0x1D60
	Size: 0x28B
	Parameters: 6
	Flags: None
*/
function function_a9379a04(var_ec74b091, var_95f36c35, var_10fd3860, var_a049e3e8, var_f7142c9e, var_4298e0ca)
{
	var_473db734 = function_c0f9f92a(level.var_f07434cb[var_ec74b091], var_10fd3860);
	if(!isdefined(var_473db734))
	{
		if(function_39c15145(var_95f36c35, "specialty"))
		{
			var_473db734 = "ui_cam_cac_perk";
		}
		else if(function_39c15145(var_95f36c35, "bonuscard"))
		{
			var_473db734 = "ui_cam_cac_wildcard";
		}
		else if(function_39c15145(var_95f36c35, "cybercore") || function_39c15145(var_95f36c35, "cybercom"))
		{
			var_473db734 = "ui_cam_cac_perk";
		}
		else if(function_39c15145(var_95f36c35, "bubblegum"))
		{
			var_473db734 = "ui_cam_cac_bgb";
		}
		else
		{
			var_473db734 = function_c0f9f92a(function_c4d5ec1f("ar_standard"), var_10fd3860);
		}
	}
	self.var_e66369d4[var_95f36c35] = var_473db734;
	self.var_1d564a08[var_95f36c35] = var_a049e3e8;
	self.var_ba4964ea[var_95f36c35] = var_4298e0ca;
	var_c7b6e8e4 = level.var_a0a61689;
	var_6df9264 = level.var_ddd06483[var_ec74b091];
	function_c7c08dd4(var_ec74b091, var_473db734, var_f7142c9e, var_a049e3e8, var_4298e0ca, var_c7b6e8e4.var_722885f3, var_c7b6e8e4.var_6ab6f4fd, var_6df9264, var_c7b6e8e4.var_722885f3, var_c7b6e8e4.var_6ab6f4fd);
	if(var_4298e0ca == "top" || var_4298e0ca == "right" || var_4298e0ca == "left")
	{
		function_ae96b2f3(var_ec74b091, 0);
	}
}

/*
	Name: function_da217883
	Namespace: namespace_a022a0ac
	Checksum: 0x52802B2A
	Offset: 0x1FF8
	Size: 0x31
	Parameters: 1
	Flags: None
*/
function function_da217883(var_ec74b091)
{
	if(level.var_ddc5d4d7[var_ec74b091])
	{
		return;
	}
	level waittill("preload_weapon_complete_" + var_ec74b091);
}

/*
	Name: function_3ce289d2
	Namespace: namespace_a022a0ac
	Checksum: 0x77C385EB
	Offset: 0x2038
	Size: 0x8B
	Parameters: 1
	Flags: None
*/
function function_3ce289d2(var_ec74b091)
{
	level endon("preload_weapon_changing_" + var_ec74b091);
	level endon("preload_weapon_complete_" + var_ec74b091);
	while(1)
	{
		if(level.var_8da2c299[var_ec74b091] function_e1bf9b4e())
		{
			level.var_ddc5d4d7[var_ec74b091] = 1;
			level notify("preload_weapon_complete_" + var_ec74b091);
			return;
		}
		wait(0.1);
	}
}

/*
	Name: function_8da2c299
	Namespace: namespace_a022a0ac
	Checksum: 0x31D5848F
	Offset: 0x20D0
	Size: 0x2FB
	Parameters: 3
	Flags: None
*/
function function_8da2c299(var_ec74b091, var_18c93bce, var_9b4a3f3c)
{
	if(!isdefined(var_9b4a3f3c))
	{
		var_9b4a3f3c = 1;
	}
	level notify("preload_weapon_changing_" + var_ec74b091);
	level.var_ddc5d4d7[var_ec74b091] = 0;
	var_f07434cb = function_8db69f37(var_18c93bce);
	if(var_f07434cb == level.var_6c3e6703)
	{
		level.var_ddc5d4d7[var_ec74b091] = 1;
		level notify("preload_weapon_complete_" + var_ec74b091);
		return;
	}
	if(isdefined(var_f07434cb.var_506a52a0))
	{
		/#
			function_895b00("Dev Block strings are not supported" + var_f07434cb.var_4be20d44 + "Dev Block strings are not supported" + var_f07434cb.var_506a52a0);
		#/
		level.var_8da2c299[var_ec74b091] function_97877619(var_f07434cb, var_f07434cb.var_506a52a0);
	}
	else
	{
		function_895b00("Dev Block strings are not supported" + var_f07434cb.var_4be20d44);
		level.var_8da2c299[var_ec74b091] function_97877619(var_f07434cb);
	}
	/#
	#/
	if(isdefined(level.var_8da2c299[var_ec74b091]))
	{
		if(isdefined(level.var_8ddcb857[var_ec74b091]) && isdefined(level.var_ac376924[var_ec74b091]))
		{
			for(var_c957f6b6 = 0; var_c957f6b6 < level.var_8ddcb857[var_ec74b091].size; var_c957f6b6++)
			{
				level.var_8da2c299[var_ec74b091] function_1127662c(var_18c93bce, level.var_8ddcb857[var_ec74b091][var_c957f6b6], level.var_ac376924[var_ec74b091][var_c957f6b6]);
			}
		}
		else if(var_9b4a3f3c)
		{
			level.var_8da2c299[var_ec74b091] function_53033123(function_2d50faf(var_ec74b091), function_15908133(var_ec74b091), function_bcfb8776(var_ec74b091), function_48305aa(var_ec74b091), function_c9f6ea78(var_ec74b091));
		}
	}
	level thread function_3ce289d2(var_ec74b091);
}

/*
	Name: function_a0a6ebe7
	Namespace: namespace_a022a0ac
	Checksum: 0x6839CD58
	Offset: 0x23D8
	Size: 0x473
	Parameters: 5
	Flags: None
*/
function function_a0a6ebe7(var_ec74b091, var_18c93bce, var_9b4a3f3c, var_a8fc0d4b, var_40e5de05)
{
	if(!isdefined(var_9b4a3f3c))
	{
		var_9b4a3f3c = 1;
	}
	if(!isdefined(var_a8fc0d4b))
	{
		var_a8fc0d4b = 1;
	}
	if(!isdefined(var_40e5de05))
	{
		var_40e5de05 = 0;
	}
	level.var_5d855a8e[var_ec74b091] = var_18c93bce;
	level.var_f07434cb[var_ec74b091] = function_8db69f37(level.var_5d855a8e[var_ec74b091]);
	if(level.var_f07434cb[var_ec74b091] == level.var_6c3e6703)
	{
		level.var_ddd06483[var_ec74b091] function_dc8c8404();
		var_c7b6e8e4 = level.var_a0a61689;
		level.var_ddd06483[var_ec74b091] = function_b22c17a7(var_ec74b091, var_c7b6e8e4.var_722885f3, var_c7b6e8e4.var_6ab6f4fd);
		function_56144993(var_ec74b091, var_a8fc0d4b);
		function_db89bd0c(var_ec74b091, var_a8fc0d4b && var_40e5de05);
		level.var_ddd06483[var_ec74b091] function_e48f905e(level.var_5d855a8e[var_ec74b091]);
		level.var_ddd06483[var_ec74b091] function_b97730be(1);
		return;
	}
	if(isdefined(level.var_f07434cb[var_ec74b091].var_506a52a0))
	{
		/#
			function_895b00("Dev Block strings are not supported" + level.var_f07434cb[var_ec74b091].var_4be20d44 + "Dev Block strings are not supported" + level.var_f07434cb[var_ec74b091].var_506a52a0);
		#/
		level.var_ddd06483[var_ec74b091] function_97877619(level.var_f07434cb[var_ec74b091], level.var_f07434cb[var_ec74b091].var_506a52a0);
	}
	else
	{
		function_895b00("Dev Block strings are not supported" + level.var_f07434cb[var_ec74b091].var_4be20d44);
		level.var_ddd06483[var_ec74b091] function_97877619(level.var_f07434cb[var_ec74b091]);
	}
	/#
	#/
	if(isdefined(level.var_ddd06483[var_ec74b091]))
	{
		if(isdefined(level.var_8ddcb857[var_ec74b091]) && isdefined(level.var_ac376924[var_ec74b091]))
		{
			for(var_c957f6b6 = 0; var_c957f6b6 < level.var_8ddcb857[var_ec74b091].size; var_c957f6b6++)
			{
				level.var_ddd06483[var_ec74b091] function_1127662c(var_18c93bce, level.var_8ddcb857[var_ec74b091][var_c957f6b6], level.var_ac376924[var_ec74b091][var_c957f6b6]);
			}
		}
		else if(var_9b4a3f3c)
		{
			level.var_ddd06483[var_ec74b091] function_53033123(function_2d50faf(var_ec74b091), function_15908133(var_ec74b091), function_bcfb8776(var_ec74b091), function_48305aa(var_ec74b091), function_c9f6ea78(var_ec74b091));
		}
	}
	level.var_ddd06483[var_ec74b091] function_b97730be(1);
}

/*
	Name: function_208bfb32
	Namespace: namespace_a022a0ac
	Checksum: 0x8F7111F6
	Offset: 0x2858
	Size: 0x133
	Parameters: 9
	Flags: None
*/
function function_208bfb32(var_ec74b091, var_95f36c35, var_10fd3860, var_a049e3e8, var_e419ae70, var_f7142c9e, var_4298e0ca, var_18c93bce, var_9b4a3f3c)
{
	if(!isdefined(var_9b4a3f3c))
	{
		var_9b4a3f3c = 0;
	}
	self endon("hash_d5da096");
	self notify("hash_2126f815");
	self endon("hash_2126f815");
	level endon("hash_2fba0227");
	if(isdefined(var_18c93bce))
	{
		function_8da2c299(var_ec74b091, var_18c93bce, var_9b4a3f3c);
	}
	wait(var_e419ae70);
	function_a9379a04(var_ec74b091, var_95f36c35, var_10fd3860, var_a049e3e8, var_f7142c9e, var_4298e0ca);
	if(isdefined(var_18c93bce))
	{
		wait(var_f7142c9e / 1000);
		function_da217883(var_ec74b091);
		function_a0a6ebe7(var_ec74b091, var_18c93bce, var_9b4a3f3c);
	}
}

/*
	Name: function_c4ab8694
	Namespace: namespace_a022a0ac
	Checksum: 0x67EE54FE
	Offset: 0x2998
	Size: 0x11B
	Parameters: 2
	Flags: None
*/
function function_c4ab8694(var_fb6c759c, var_c00374fd)
{
	if(!isdefined(var_fb6c759c))
	{
		return var_c00374fd;
	}
	var_76a49db6 = function_d6df1f20(var_fb6c759c, "+");
	var_e1181707 = function_d6df1f20(var_c00374fd, "+");
	if(var_76a49db6[0] != var_e1181707[0])
	{
		return var_c00374fd;
	}
	var_18c93bce = var_e1181707[0];
	for(var_c957f6b6 = 1; var_c957f6b6 < var_e1181707.size; var_c957f6b6++)
	{
		if(function_7f41c8e7(var_76a49db6, var_e1181707[var_c957f6b6]))
		{
			var_18c93bce = var_18c93bce + "+" + var_e1181707[var_c957f6b6];
		}
	}
	return var_18c93bce;
}

/*
	Name: function_a188ba2
	Namespace: namespace_a022a0ac
	Checksum: 0xB020740C
	Offset: 0x2AC0
	Size: 0xF7
	Parameters: 1
	Flags: None
*/
function function_a188ba2(var_ec74b091)
{
	level endon("hash_643a7daf");
	level endon("cam_customization_closed" + var_ec74b091);
	while(1)
	{
		level waittill("cam_customization_focus" + var_ec74b091, var_dbb2aef5, var_1b5295e);
		var_6b28638c = var_dbb2aef5;
		var_4298e0ca = var_1b5295e;
		if(isdefined(level.var_ddd06483[var_ec74b091]))
		{
			var_9b4a3f3c = 1;
			level thread function_208bfb32(var_ec74b091, var_6b28638c, "cam_cac_weapon", "cam_cac", 0.3, 400, var_4298e0ca, level.var_5d855a8e[var_ec74b091], var_9b4a3f3c);
		}
	}
}

/*
	Name: function_db76bfd5
	Namespace: namespace_a022a0ac
	Checksum: 0xD32C4744
	Offset: 0x2BC0
	Size: 0x1DF
	Parameters: 1
	Flags: None
*/
function function_db76bfd5(var_ec74b091)
{
	level endon("hash_643a7daf");
	level endon("cam_customization_closed" + var_ec74b091);
	while(1)
	{
		level waittill("cam_customization_wo" + var_ec74b091, var_d01f310b, var_f19f1a0d, var_a7708f26);
		if(isdefined(level.var_ddd06483[var_ec74b091]))
		{
			if(isdefined(var_a7708f26) && var_a7708f26)
			{
				var_f19f1a0d = 0;
			}
			switch(var_d01f310b)
			{
				case "camo":
				{
					level.var_21c54bf8[var_ec74b091] = function_b6b79a0(var_f19f1a0d);
					break;
				}
				case "reticle":
				{
					level.var_806d7186[var_ec74b091] = function_b6b79a0(var_f19f1a0d);
					break;
				}
				case "paintjob":
				{
					level.var_9688750b[var_ec74b091] = function_b6b79a0(var_f19f1a0d);
					break;
				}
				case default:
				{
					break;
				}
			}
			level.var_ddd06483[var_ec74b091] function_53033123(function_2d50faf(var_ec74b091), function_15908133(var_ec74b091), function_bcfb8776(var_ec74b091), function_48305aa(var_ec74b091), function_c9f6ea78(var_ec74b091));
		}
	}
}

/*
	Name: function_ade2f410
	Namespace: namespace_a022a0ac
	Checksum: 0x722245A2
	Offset: 0x2DA8
	Size: 0x137
	Parameters: 1
	Flags: None
*/
function function_ade2f410(var_ec74b091)
{
	level endon("hash_643a7daf");
	level endon("cam_customization_closed" + var_ec74b091);
	while(1)
	{
		level waittill("cam_customization_acv" + var_ec74b091, var_d1a9fc4f, var_73feac4c);
		for(var_c957f6b6 = 0; var_c957f6b6 < level.var_8ddcb857[var_ec74b091].size; var_c957f6b6++)
		{
			if(level.var_8ddcb857[var_ec74b091][var_c957f6b6] == var_d1a9fc4f)
			{
				level.var_ac376924[var_ec74b091][var_c957f6b6] = function_b6b79a0(var_73feac4c);
				break;
			}
		}
		if(isdefined(level.var_ddd06483[var_ec74b091]))
		{
			level.var_ddd06483[var_ec74b091] function_1127662c(level.var_5d855a8e[var_ec74b091], var_d1a9fc4f, function_b6b79a0(var_73feac4c));
		}
	}
}

/*
	Name: function_970c5a0a
	Namespace: namespace_a022a0ac
	Checksum: 0x29D37208
	Offset: 0x2EE8
	Size: 0x1BD
	Parameters: 1
	Flags: None
*/
function function_970c5a0a(var_ec74b091)
{
	level endon("hash_643a7daf");
	level waittill("cam_customization_closed" + var_ec74b091, var_dbb2aef5, var_1b5295e, var_27b7a3c7, var_1da64ae8);
	if(isdefined(level.var_d9e20ec0[var_ec74b091]) && isdefined(level.var_d9e20ec0[var_ec74b091][level.var_26fcd0f0]))
	{
		level.var_d9e20ec0[var_ec74b091][level.var_26fcd0f0] function_53033123(function_2d50faf(var_ec74b091), function_15908133(var_ec74b091), function_bcfb8776(var_ec74b091), function_48305aa(var_ec74b091), function_c9f6ea78(var_ec74b091));
		for(var_c957f6b6 = 0; var_c957f6b6 < level.var_8ddcb857[var_ec74b091].size; var_c957f6b6++)
		{
			level.var_d9e20ec0[var_ec74b091][level.var_26fcd0f0] function_1127662c(level.var_5d855a8e[var_ec74b091], level.var_8ddcb857[var_ec74b091][var_c957f6b6], level.var_ac376924[var_ec74b091][var_c957f6b6]);
		}
	}
}

