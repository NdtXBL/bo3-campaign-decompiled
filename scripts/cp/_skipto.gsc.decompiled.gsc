#using scripts\codescripts\struct;
#using scripts\cp\_accolades;
#using scripts\cp\_achievements;
#using scripts\cp\_bb;
#using scripts\cp\_challenges;
#using scripts\cp\_decorations;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_util;
#using scripts\cp\gametypes\_globallogic_player;
#using scripts\cp\gametypes\_save;
#using scripts\cp\gametypes\_spawning;
#using scripts\cp\gametypes\_spawnlogic;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\laststand_shared;
#using scripts\shared\load_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\music_shared;
#using scripts\shared\player_shared;
#using scripts\shared\rank_shared;
#using scripts\shared\system_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;

#namespace namespace_1d795d47;

/*
	Name: function_2dc19561
	Namespace: namespace_1d795d47
	Checksum: 0xB3E302F9
	Offset: 0x1008
	Size: 0x3B
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("skipto", &function_8c87d8eb, &function_5b6b9132, undefined);
}

/*
	Name: function_97bb1111
	Namespace: namespace_1d795d47
	Checksum: 0xEB808336
	Offset: 0x1050
	Size: 0x17
	Parameters: 1
	Flags: None
*/
function function_97bb1111(var_b78f06c4)
{
	return var_b78f06c4 + "_nightmares";
}

/*
	Name: function_23eda99c
	Namespace: namespace_1d795d47
	Checksum: 0x5333694A
	Offset: 0x1070
	Size: 0x177
	Parameters: 0
	Flags: None
*/
function function_23eda99c()
{
	var_cfc9cbb7 = [];
	namespace_84970cc4::function_69554b3e(var_cfc9cbb7, "cp_mi_cairo_aquifer");
	namespace_84970cc4::function_69554b3e(var_cfc9cbb7, "cp_mi_cairo_infection");
	namespace_84970cc4::function_69554b3e(var_cfc9cbb7, "cp_mi_cairo_lotus");
	namespace_84970cc4::function_69554b3e(var_cfc9cbb7, "cp_mi_cairo_ramses");
	namespace_84970cc4::function_69554b3e(var_cfc9cbb7, "cp_mi_eth_prologue");
	namespace_84970cc4::function_69554b3e(var_cfc9cbb7, "cp_mi_sing_biodomes");
	namespace_84970cc4::function_69554b3e(var_cfc9cbb7, "cp_mi_sing_blackstation");
	namespace_84970cc4::function_69554b3e(var_cfc9cbb7, "cp_mi_sing_sgen");
	namespace_84970cc4::function_69554b3e(var_cfc9cbb7, "cp_mi_sing_vengeance");
	namespace_84970cc4::function_69554b3e(var_cfc9cbb7, "cp_mi_zurich_coalescence");
	namespace_84970cc4::function_69554b3e(var_cfc9cbb7, "cp_mi_zurich_newworld");
	return var_cfc9cbb7;
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_1d795d47
	Checksum: 0x6CD7D766
	Offset: 0x11F0
	Size: 0x27B
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	level namespace_ad23e503::function_c35e6aab("start_skiptos");
	level namespace_ad23e503::function_c35e6aab("running_skipto");
	level namespace_ad23e503::function_c35e6aab("level_has_skiptos");
	level namespace_ad23e503::function_c35e6aab("level_has_skipto_branches");
	level namespace_ad23e503::function_c35e6aab("skip_safehouse_after_map");
	level namespace_ad23e503::function_c35e6aab("final_level");
	level namespace_ad23e503::function_c35e6aab("_exit");
	namespace_71e9cb84::function_50f16166("toplayer", "catch_up_transition", 1, 1, "counter");
	namespace_71e9cb84::function_50f16166("world", "set_last_map_dvar", 1, 1, "counter");
	function_fcea19f2("_default");
	function_fcea19f2("_exit", &function_eb66277b);
	function_fcea19f2("no_game", &function_7caf435a);
	function_7c1e8577("gamedata/tables/cp/cp_mapmissions.csv", level.var_cd724008);
	level.var_df118466 = &function_df118466;
	namespace_dabbe128::function_faeb731e(&function_faeb731e);
	namespace_dabbe128::function_356a4ee1(&function_72a45412);
	namespace_dabbe128::function_eb99da89(&function_fb4f96b5);
	/#
		level thread function_7b06f432();
		namespace_dabbe128::function_356a4ee1(&function_c40086b6);
	#/
}

/*
	Name: function_5b6b9132
	Namespace: namespace_1d795d47
	Checksum: 0x1296E8CA
	Offset: 0x1478
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_5b6b9132()
{
	level thread function_143fd222();
	level thread function_bfb3493();
	level thread function_52904bc9();
}

/*
	Name: function_69554b3e
	Namespace: namespace_1d795d47
	Checksum: 0x91513088
	Offset: 0x14D0
	Size: 0x34B
	Parameters: 7
	Flags: None
*/
function function_69554b3e(var_1d795d47, var_86365a77, var_cbb15570, var_41763f9c, var_46c5ea43, var_c3efda96, var_2bc8bbd9)
{
	if(!isdefined(var_2bc8bbd9))
	{
		var_2bc8bbd9 = 0;
	}
	if(!isdefined(level.var_574eb415))
	{
		level.var_574eb415 = var_1d795d47;
	}
	if(function_a363b4b1(var_1d795d47))
	{
		/#
			function_95d3daf8("Dev Block strings are not supported");
		#/
		return;
	}
	if(isdefined(var_46c5ea43) || isdefined(var_c3efda96))
	{
		/#
			function_95d3daf8("Dev Block strings are not supported");
		#/
		return;
	}
	if(level namespace_ad23e503::function_7922262b("level_has_skipto_branches"))
	{
		/#
			function_95d3daf8("Dev Block strings are not supported");
		#/
	}
	if(!isdefined(var_46c5ea43))
	{
		if(isdefined(level.var_8b767436))
		{
			if(isdefined(level.var_e07f6589[level.var_8b767436]))
			{
				if(!isdefined(level.var_e07f6589[level.var_8b767436].var_c3efda96) || level.var_e07f6589[level.var_8b767436].var_c3efda96.size < 1)
				{
					if(!isdefined(level.var_e07f6589[level.var_8b767436].var_c3efda96))
					{
						level.var_e07f6589[level.var_8b767436].var_c3efda96 = [];
					}
					else if(!function_6e2770d8(level.var_e07f6589[level.var_8b767436].var_c3efda96))
					{
						level.var_e07f6589[level.var_8b767436].var_c3efda96 = function_84970cc4(level.var_e07f6589[level.var_8b767436].var_c3efda96);
					}
					level.var_e07f6589[level.var_8b767436].var_c3efda96[level.var_e07f6589[level.var_8b767436].var_c3efda96.size] = var_1d795d47;
				}
			}
		}
		if(isdefined(level.var_8b767436))
		{
			var_46c5ea43 = level.var_8b767436;
		}
		level.var_8b767436 = var_1d795d47;
	}
	if(!isdefined(var_86365a77))
	{
		/#
			namespace_33b293fd::function_a7ee953(isdefined(var_86365a77), "Dev Block strings are not supported");
		#/
	}
	var_14b42b8a = function_fcea19f2(var_1d795d47, var_86365a77, var_cbb15570, var_41763f9c, var_46c5ea43, var_c3efda96, var_2bc8bbd9);
	var_14b42b8a.var_1028d0be = 1;
	level namespace_ad23e503::function_74d6b22f("level_has_skiptos");
}

/*
	Name: function_d68e678e
	Namespace: namespace_1d795d47
	Checksum: 0xF4AE8E96
	Offset: 0x1828
	Size: 0x6F
	Parameters: 6
	Flags: None
*/
function function_d68e678e(var_1d795d47, var_86365a77, var_cbb15570, var_41763f9c, var_46c5ea43, var_c3efda96)
{
	var_14b42b8a = function_69554b3e(var_1d795d47, var_86365a77, var_cbb15570, var_41763f9c, var_46c5ea43, undefined, 1);
}

/*
	Name: function_731571ad
	Namespace: namespace_1d795d47
	Checksum: 0xF40F861C
	Offset: 0x18A0
	Size: 0x317
	Parameters: 6
	Flags: None
*/
function function_731571ad(var_1d795d47, var_86365a77, var_cbb15570, var_41763f9c, var_46c5ea43, var_c3efda96)
{
	if(!isdefined(level.var_574eb415))
	{
		level.var_574eb415 = var_1d795d47;
	}
	if(function_a363b4b1(var_1d795d47))
	{
		/#
			function_95d3daf8("Dev Block strings are not supported");
		#/
		return;
	}
	if(!isdefined(var_46c5ea43) && !isdefined(var_c3efda96))
	{
		/#
			function_95d3daf8("Dev Block strings are not supported");
		#/
		return;
	}
	if(!isdefined(var_46c5ea43))
	{
		if(isdefined(level.var_8b767436))
		{
			if(isdefined(level.var_e07f6589[level.var_8b767436]))
			{
				if(!isdefined(level.var_e07f6589[level.var_8b767436].var_c3efda96) || level.var_e07f6589[level.var_8b767436].var_c3efda96.size < 1)
				{
					if(!isdefined(level.var_e07f6589[level.var_8b767436].var_c3efda96))
					{
						level.var_e07f6589[level.var_8b767436].var_c3efda96 = [];
					}
					else if(!function_6e2770d8(level.var_e07f6589[level.var_8b767436].var_c3efda96))
					{
						level.var_e07f6589[level.var_8b767436].var_c3efda96 = function_84970cc4(level.var_e07f6589[level.var_8b767436].var_c3efda96);
					}
					level.var_e07f6589[level.var_8b767436].var_c3efda96[level.var_e07f6589[level.var_8b767436].var_c3efda96.size] = var_1d795d47;
				}
			}
		}
		if(isdefined(level.var_8b767436))
		{
			var_46c5ea43 = level.var_8b767436;
		}
		level.var_8b767436 = var_1d795d47;
	}
	if(!isdefined(var_86365a77))
	{
		/#
			namespace_33b293fd::function_a7ee953(isdefined(var_86365a77), "Dev Block strings are not supported");
		#/
	}
	var_14b42b8a = function_fcea19f2(var_1d795d47, var_86365a77, var_cbb15570, var_41763f9c, var_46c5ea43, var_c3efda96);
	var_14b42b8a.var_1028d0be = 1;
	level namespace_ad23e503::function_74d6b22f("level_has_skiptos");
	level namespace_ad23e503::function_74d6b22f("level_has_skipto_branches");
	return var_14b42b8a;
}

/*
	Name: function_75d02344
	Namespace: namespace_1d795d47
	Checksum: 0x8ED1F06D
	Offset: 0x1BC0
	Size: 0x83
	Parameters: 6
	Flags: None
*/
function function_75d02344(var_1d795d47, var_86365a77, var_cbb15570, var_41763f9c, var_46c5ea43, var_c3efda96)
{
	var_14b42b8a = function_731571ad(var_1d795d47, var_86365a77, var_cbb15570, var_41763f9c, var_46c5ea43, var_c3efda96);
	if(isdefined(var_14b42b8a))
	{
		var_14b42b8a.var_8ae5c6a1 = 1;
	}
}

/*
	Name: function_654c9dda
	Namespace: namespace_1d795d47
	Checksum: 0x5A135921
	Offset: 0x1C50
	Size: 0xD3
	Parameters: 6
	Flags: None
*/
function function_654c9dda(var_1d795d47, var_86365a77, var_cbb15570, var_41763f9c, var_46c5ea43, var_c3efda96)
{
	if(!isdefined(level.var_574eb415))
	{
		level.var_574eb415 = var_1d795d47;
	}
	if(function_a363b4b1(var_1d795d47))
	{
		var_14b42b8a = function_fcea19f2(var_1d795d47, var_86365a77, var_cbb15570, var_41763f9c, var_46c5ea43, var_c3efda96);
		var_14b42b8a.var_3c612393 = 1;
		return;
	}
	/#
		function_95d3daf8("Dev Block strings are not supported");
	#/
}

/*
	Name: function_8ada4a91
	Namespace: namespace_1d795d47
	Checksum: 0x70D4A16A
	Offset: 0x1D30
	Size: 0xF9
	Parameters: 1
	Flags: None
*/
function function_8ada4a91(var_1d795d47)
{
	if(!isdefined(level.var_e07f6589[var_1d795d47]))
	{
		/#
			namespace_33b293fd::function_94739542("Dev Block strings are not supported" + var_1d795d47 + "Dev Block strings are not supported");
		#/
		return;
	}
	level.var_e07f6589[var_1d795d47].var_f001de64 = 0;
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		namespace_d8129fdd::function_bea1c67c(var_1d795d47, var_5dc5e20a, "leave_objective_incomplete");
	}
}

/*
	Name: function_955393e
	Namespace: namespace_1d795d47
	Checksum: 0xAA2BA3B0
	Offset: 0x1E38
	Size: 0x71
	Parameters: 5
	Flags: None
*/
function function_955393e(var_1d795d47, var_2573320f, var_241ac5b2, var_e841eb15, var_e201e11)
{
	if(!isdefined(level.var_81fdc5c1))
	{
		level.var_81fdc5c1 = [];
	}
	level.var_81fdc5c1[var_1d795d47] = function_84970cc4(var_2573320f, var_241ac5b2, var_e841eb15, var_e201e11);
}

/*
	Name: function_fcea19f2
	Namespace: namespace_1d795d47
	Checksum: 0x9CBEEE9D
	Offset: 0x1EB8
	Size: 0x107
	Parameters: 7
	Flags: None
*/
function function_fcea19f2(var_813fc428, var_86365a77, var_cbb15570, var_41763f9c, var_46c5ea43, var_c3efda96, var_2bc8bbd9)
{
	/#
		namespace_33b293fd::function_a7ee953(!isdefined(level.var_31868693), "Dev Block strings are not supported");
	#/
	var_813fc428 = function_57b2be45(var_813fc428);
	var_14b42b8a = function_b545fa58(var_813fc428, var_86365a77, var_cbb15570, var_41763f9c, var_46c5ea43, var_c3efda96, var_2bc8bbd9);
	level.var_e07f6589[var_813fc428] = var_14b42b8a;
	level namespace_ad23e503::function_c35e6aab(var_813fc428);
	level namespace_ad23e503::function_c35e6aab(var_813fc428 + "_completed");
	return var_14b42b8a;
}

/*
	Name: function_5f5f81d1
	Namespace: namespace_1d795d47
	Checksum: 0x3CA0F9EE
	Offset: 0x1FC8
	Size: 0x123
	Parameters: 6
	Flags: None
*/
function function_5f5f81d1(var_813fc428, var_86365a77, var_cbb15570, var_41763f9c, var_46c5ea43, var_c3efda96)
{
	var_14b42b8a = level.var_e07f6589[var_813fc428];
	if(isdefined(var_86365a77))
	{
		var_14b42b8a.var_1ca15390 = var_86365a77;
	}
	if(isdefined(var_cbb15570))
	{
		var_14b42b8a.var_cbb15570 = var_cbb15570;
	}
	if(isdefined(var_41763f9c))
	{
		var_14b42b8a.var_41763f9c = var_41763f9c;
	}
	if(isdefined(var_46c5ea43))
	{
		var_14b42b8a.var_f8c3deec = var_14b42b8a function_d4f0317b(var_46c5ea43);
	}
	if(isdefined(var_c3efda96))
	{
		var_14b42b8a.var_c3efda96 = function_d6df1f20(var_c3efda96, ",");
		var_14b42b8a.var_48b2ad0a = var_14b42b8a.var_c3efda96;
	}
}

/*
	Name: function_f578c05a
	Namespace: namespace_1d795d47
	Checksum: 0xD3FAB905
	Offset: 0x20F8
	Size: 0x17
	Parameters: 1
	Flags: None
*/
function function_f578c05a(var_86365a77)
{
	level.var_ba8dfc5d = var_86365a77;
}

/*
	Name: function_b545fa58
	Namespace: namespace_1d795d47
	Checksum: 0x2FA11FAB
	Offset: 0x2118
	Size: 0x1DF
	Parameters: 7
	Flags: None
*/
function function_b545fa58(var_813fc428, var_86365a77, var_cbb15570, var_41763f9c, var_46c5ea43, var_c3efda96, var_2bc8bbd9)
{
	if(!isdefined(var_2bc8bbd9))
	{
		var_2bc8bbd9 = 0;
	}
	var_14b42b8a = function_a8fb77bd();
	var_14b42b8a.var_4be20d44 = var_813fc428;
	var_14b42b8a.var_84e9618b = function_4e21b348(var_813fc428);
	var_14b42b8a.var_1ca15390 = var_86365a77;
	var_14b42b8a.var_cbb15570 = var_cbb15570;
	var_14b42b8a.var_41763f9c = var_41763f9c;
	var_14b42b8a.var_48b2ad0a = [];
	var_14b42b8a.var_c7a5039e = [];
	var_14b42b8a.var_f8c3deec = "";
	var_14b42b8a.var_46c5ea43 = [];
	var_14b42b8a.var_2bc8bbd9 = var_2bc8bbd9;
	if(isdefined(var_46c5ea43))
	{
		var_14b42b8a.var_f8c3deec = var_14b42b8a function_d4f0317b(var_46c5ea43);
	}
	var_14b42b8a.var_c3efda96 = [];
	if(isdefined(var_c3efda96))
	{
		var_14b42b8a.var_c3efda96 = function_d6df1f20(var_c3efda96, ",");
		var_14b42b8a.var_48b2ad0a = var_14b42b8a.var_c3efda96;
	}
	var_14b42b8a.var_17618905 = [];
	return var_14b42b8a;
}

/*
	Name: function_f170bfd5
	Namespace: namespace_1d795d47
	Checksum: 0x553F2964
	Offset: 0x2300
	Size: 0x21
	Parameters: 0
	Flags: None
*/
function function_f170bfd5()
{
	return level namespace_ad23e503::function_7922262b("level_has_skiptos");
}

/*
	Name: function_c3caf25
	Namespace: namespace_1d795d47
	Checksum: 0x66DB5C6C
	Offset: 0x2330
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_c3caf25(var_813fc428)
{
	/#
		/#
			namespace_33b293fd::function_94739542(var_813fc428);
		#/
	#/
}

/*
	Name: function_b6a4291e
	Namespace: namespace_1d795d47
	Checksum: 0x46097ECF
	Offset: 0x2368
	Size: 0x2F3
	Parameters: 1
	Flags: None
*/
function function_b6a4291e(var_3d535daf)
{
	var_d1e98630 = "";
	var_5d74e4a2 = [];
	var_23f47015 = 0;
	var_5d74e4a2[var_23f47015] = "";
	var_dccf2883 = 0;
	for(var_c957f6b6 = 0; var_c957f6b6 < var_3d535daf.size; var_c957f6b6++)
	{
		var_ad66d52c = function_f45850ec(var_3d535daf, var_c957f6b6, var_c957f6b6 + 1);
		if(var_ad66d52c == "(")
		{
			var_dccf2883++;
			var_5d74e4a2[var_23f47015] = var_5d74e4a2[var_23f47015] + var_ad66d52c;
			continue;
		}
		if(var_ad66d52c == ")")
		{
			var_dccf2883--;
			var_5d74e4a2[var_23f47015] = var_5d74e4a2[var_23f47015] + var_ad66d52c;
			continue;
		}
		if(var_dccf2883 == 0 && var_ad66d52c == "&")
		{
			if(var_d1e98630 == "|")
			{
				/#
					function_c3caf25("Dev Block strings are not supported" + var_3d535daf);
				#/
			}
			var_d1e98630 = "&";
			var_23f47015++;
			var_5d74e4a2[var_23f47015] = "";
			continue;
		}
		if(var_dccf2883 == 0 && var_ad66d52c == "|")
		{
			if(var_d1e98630 == "&")
			{
				/#
					function_c3caf25("Dev Block strings are not supported" + var_3d535daf);
				#/
			}
			var_d1e98630 = "|";
			var_23f47015++;
			var_5d74e4a2[var_23f47015] = "";
			continue;
		}
		var_5d74e4a2[var_23f47015] = var_5d74e4a2[var_23f47015] + var_ad66d52c;
	}
	if(var_dccf2883 != 0)
	{
		/#
			function_c3caf25("Dev Block strings are not supported" + var_3d535daf);
		#/
	}
	for(var_a3557c4d = 0; var_a3557c4d <= var_23f47015; var_a3557c4d++)
	{
		var_5d74e4a2[var_a3557c4d] = function_e3af1c7b(var_5d74e4a2[var_a3557c4d]);
	}
	if(var_23f47015 == 0)
	{
		return var_5d74e4a2[var_23f47015];
	}
	else
	{
		var_5d74e4a2["op"] = var_d1e98630;
		return var_5d74e4a2;
	}
}

/*
	Name: function_e3af1c7b
	Namespace: namespace_1d795d47
	Checksum: 0x8A5DA9D9
	Offset: 0x2668
	Size: 0x16D
	Parameters: 1
	Flags: None
*/
function function_e3af1c7b(var_3d535daf)
{
	var_ad66d52c = function_f45850ec(var_3d535daf, 0, 1);
	if(var_ad66d52c == "(")
	{
		var_10bee286 = function_f45850ec(var_3d535daf, var_3d535daf.size - 1, var_3d535daf.size);
		if(var_10bee286 != ")")
		{
			/#
				function_c3caf25("Dev Block strings are not supported" + var_3d535daf);
			#/
		}
		var_d8e7bbc = function_f45850ec(var_3d535daf, 1, var_3d535daf.size - 1);
		return function_b6a4291e(var_d8e7bbc);
	}
	if(!isdefined(self.var_46c5ea43))
	{
		self.var_46c5ea43 = [];
	}
	else if(!function_6e2770d8(self.var_46c5ea43))
	{
		self.var_46c5ea43 = function_84970cc4(self.var_46c5ea43);
	}
	self.var_46c5ea43[self.var_46c5ea43.size] = var_3d535daf;
	return var_3d535daf;
}

/*
	Name: function_d4f0317b
	Namespace: namespace_1d795d47
	Checksum: 0x9C926C7
	Offset: 0x27E0
	Size: 0x51
	Parameters: 1
	Flags: None
*/
function function_d4f0317b(var_46c5ea43)
{
	var_12fe08d7 = function_b6a4291e(var_46c5ea43);
	if(function_6e2770d8(var_12fe08d7))
	{
		return var_12fe08d7;
	}
	return "";
}

/*
	Name: function_e5ea5a62
	Namespace: namespace_1d795d47
	Checksum: 0xB6056E57
	Offset: 0x2840
	Size: 0x171
	Parameters: 2
	Flags: None
*/
function function_e5ea5a62(var_4ecb063, var_70f1fa42)
{
	if(!function_6e2770d8(var_4ecb063))
	{
		if(isdefined(level.var_e07f6589[var_4ecb063]) && (isdefined(level.var_e07f6589[var_4ecb063].var_e27d380a) && level.var_e07f6589[var_4ecb063].var_e27d380a || function_7f41c8e7(var_70f1fa42, var_4ecb063)))
		{
			return 0;
		}
		return 1;
	}
	else if(var_4ecb063["op"] == "|")
	{
		for(var_c957f6b6 = 0; var_c957f6b6 < var_4ecb063.size - 1; var_c957f6b6++)
		{
			if(function_e5ea5a62(var_4ecb063[var_c957f6b6], var_70f1fa42))
			{
				return 1;
			}
		}
		return 0;
	}
	else
	{
		for(var_c957f6b6 = 0; var_c957f6b6 < var_4ecb063.size - 1; var_c957f6b6++)
		{
			if(!function_e5ea5a62(var_4ecb063[var_c957f6b6], var_70f1fa42))
			{
				return 0;
			}
		}
		return 1;
	}
}

/*
	Name: function_b72da2d
	Namespace: namespace_1d795d47
	Checksum: 0x9AE446BA
	Offset: 0x29C0
	Size: 0x11B
	Parameters: 1
	Flags: None
*/
function function_b72da2d(var_d0ef8521)
{
	var_3c61bfc2 = [];
	foreach(var_4be20d44 in var_d0ef8521)
	{
		if(function_e5ea5a62(level.var_e07f6589[var_4be20d44].var_f8c3deec, var_3c61bfc2))
		{
			if(!isdefined(var_3c61bfc2))
			{
				var_3c61bfc2 = [];
			}
			else if(!function_6e2770d8(var_3c61bfc2))
			{
				var_3c61bfc2 = function_84970cc4(var_3c61bfc2);
			}
			var_3c61bfc2[var_3c61bfc2.size] = var_4be20d44;
		}
	}
	return var_3c61bfc2;
}

/*
	Name: function_5771edb2
	Namespace: namespace_1d795d47
	Checksum: 0x75A36697
	Offset: 0x2AE8
	Size: 0x71B
	Parameters: 0
	Flags: None
*/
function function_5771edb2()
{
	foreach(var_14b42b8a in level.var_e07f6589)
	{
		if(isdefined(var_14b42b8a.var_1028d0be) && var_14b42b8a.var_1028d0be)
		{
			if(var_14b42b8a.var_46c5ea43.size)
			{
				foreach(var_46c5ea43 in var_14b42b8a.var_46c5ea43)
				{
					if(isdefined(level.var_e07f6589[var_46c5ea43]))
					{
						if(!function_7f41c8e7(level.var_e07f6589[var_46c5ea43].var_48b2ad0a, var_14b42b8a.var_4be20d44))
						{
							if(!isdefined(level.var_e07f6589[var_46c5ea43].var_48b2ad0a))
							{
								level.var_e07f6589[var_46c5ea43].var_48b2ad0a = [];
							}
							else if(!function_6e2770d8(level.var_e07f6589[var_46c5ea43].var_48b2ad0a))
							{
								level.var_e07f6589[var_46c5ea43].var_48b2ad0a = function_84970cc4(level.var_e07f6589[var_46c5ea43].var_48b2ad0a);
							}
							level.var_e07f6589[var_46c5ea43].var_48b2ad0a[level.var_e07f6589[var_46c5ea43].var_48b2ad0a.size] = var_14b42b8a.var_4be20d44;
						}
						continue;
					}
					if(!isdefined(level.var_e07f6589["_default"].var_48b2ad0a))
					{
						level.var_e07f6589["_default"].var_48b2ad0a = [];
					}
					else if(!function_6e2770d8(level.var_e07f6589["_default"].var_48b2ad0a))
					{
						level.var_e07f6589["_default"].var_48b2ad0a = function_84970cc4(level.var_e07f6589["_default"].var_48b2ad0a);
					}
					level.var_e07f6589["_default"].var_48b2ad0a[level.var_e07f6589["_default"].var_48b2ad0a.size] = var_14b42b8a.var_4be20d44;
				}
			}
			else if(!isdefined(level.var_e07f6589["_default"].var_48b2ad0a))
			{
				level.var_e07f6589["_default"].var_48b2ad0a = [];
			}
			else if(!function_6e2770d8(level.var_e07f6589["_default"].var_48b2ad0a))
			{
				level.var_e07f6589["_default"].var_48b2ad0a = function_84970cc4(level.var_e07f6589["_default"].var_48b2ad0a);
			}
			level.var_e07f6589["_default"].var_48b2ad0a[level.var_e07f6589["_default"].var_48b2ad0a.size] = var_14b42b8a.var_4be20d44;
			foreach(var_c3efda96 in var_14b42b8a.var_c3efda96)
			{
				if(isdefined(level.var_e07f6589[var_c3efda96]))
				{
					if(!isdefined(level.var_e07f6589[var_c3efda96].var_c7a5039e))
					{
						level.var_e07f6589[var_c3efda96].var_c7a5039e = [];
					}
					else if(!function_6e2770d8(level.var_e07f6589[var_c3efda96].var_c7a5039e))
					{
						level.var_e07f6589[var_c3efda96].var_c7a5039e = function_84970cc4(level.var_e07f6589[var_c3efda96].var_c7a5039e);
					}
					level.var_e07f6589[var_c3efda96].var_c7a5039e[level.var_e07f6589[var_c3efda96].var_c7a5039e.size] = var_14b42b8a.var_4be20d44;
				}
			}
		}
	}
	foreach(var_14b42b8a in level.var_e07f6589)
	{
		if(isdefined(var_14b42b8a.var_1028d0be) && var_14b42b8a.var_1028d0be)
		{
			if(var_14b42b8a.var_48b2ad0a.size < 1)
			{
				if(!isdefined(var_14b42b8a.var_48b2ad0a))
				{
					var_14b42b8a.var_48b2ad0a = [];
				}
				else if(!function_6e2770d8(var_14b42b8a.var_48b2ad0a))
				{
					var_14b42b8a.var_48b2ad0a = function_84970cc4(var_14b42b8a.var_48b2ad0a);
				}
				var_14b42b8a.var_48b2ad0a[var_14b42b8a.var_48b2ad0a.size] = "_exit";
			}
		}
	}
}

/*
	Name: function_72453179
	Namespace: namespace_1d795d47
	Checksum: 0xEB6401EA
	Offset: 0x3210
	Size: 0x51
	Parameters: 1
	Flags: None
*/
function function_72453179(var_688f04ff)
{
	if(isdefined(level.var_e07f6589[var_688f04ff]))
	{
		return level.var_e07f6589[var_688f04ff].var_48b2ad0a;
	}
	return level.var_e07f6589["_default"].var_48b2ad0a;
}

/*
	Name: function_943de2e
	Namespace: namespace_1d795d47
	Checksum: 0xF7EDFE17
	Offset: 0x3270
	Size: 0xD7
	Parameters: 1
	Flags: None
*/
function function_943de2e(var_31fac33e)
{
	var_cf6ef5e8 = "";
	var_a0cd6b51 = 1;
	foreach(var_1d795d47 in var_31fac33e)
	{
		if(!var_a0cd6b51)
		{
			var_cf6ef5e8 = var_cf6ef5e8 + ",";
		}
		var_a0cd6b51 = 0;
		var_cf6ef5e8 = var_cf6ef5e8 + var_1d795d47;
	}
	return var_cf6ef5e8;
}

/*
	Name: function_8b19ec5d
	Namespace: namespace_1d795d47
	Checksum: 0xF3ABB158
	Offset: 0x3350
	Size: 0x123
	Parameters: 1
	Flags: None
*/
function function_8b19ec5d(var_533a04a6)
{
	var_c61bfb3e = function_6f1ebe57("skipto_jump");
	if(isdefined(var_c61bfb3e) && var_c61bfb3e.size)
	{
		if(var_c61bfb3e == "_default")
		{
			var_c61bfb3e = "";
		}
		var_31fac33e = [];
		var_31fac33e[0] = var_c61bfb3e;
		return var_31fac33e;
	}
	if(isdefined(var_533a04a6) && var_533a04a6)
	{
		var_31fac33e = function_57b2be45(function_6f1ebe57("sv_saveGameSkipto"));
	}
	else
	{
		var_31fac33e = function_57b2be45(function_fa0beb8());
	}
	var_3c61bfc2 = function_d6df1f20(var_31fac33e, ",");
	return var_3c61bfc2;
}

/*
	Name: function_52c50cb8
	Namespace: namespace_1d795d47
	Checksum: 0x89792AAB
	Offset: 0x3480
	Size: 0x4D
	Parameters: 0
	Flags: None
*/
function function_52c50cb8()
{
	if(!isdefined(level.var_31aefea8) || !isdefined(level.var_e07f6589[level.var_31aefea8]))
	{
		return -1;
	}
	return level.var_e07f6589[level.var_31aefea8].var_84e9618b;
}

/*
	Name: function_677539fe
	Namespace: namespace_1d795d47
	Checksum: 0x4B2D3652
	Offset: 0x34D8
	Size: 0x9B
	Parameters: 1
	Flags: None
*/
function function_677539fe(var_1d795d47)
{
	if(var_1d795d47 != "" && level.var_e07f6589[var_1d795d47].var_2bc8bbd9 === 1)
	{
		function_3f5625b4(function_57b2be45(var_1d795d47), 1);
	}
	else
	{
		function_3f5625b4(function_57b2be45(var_1d795d47), 0);
	}
}

/*
	Name: function_556029e1
	Namespace: namespace_1d795d47
	Checksum: 0xB09513E
	Offset: 0x3580
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function function_556029e1(var_31fac33e)
{
	function_677539fe(function_943de2e(var_31fac33e));
}

/*
	Name: function_1b5a2a11
	Namespace: namespace_1d795d47
	Checksum: 0xB7F0B3FE
	Offset: 0x35C0
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_1b5a2a11()
{
	if(!isdefined(level.var_574eb415))
	{
		level.var_574eb415 = "";
	}
	function_677539fe(level.var_574eb415);
}

/*
	Name: function_d71418c8
	Namespace: namespace_1d795d47
	Checksum: 0x9A685C4F
	Offset: 0x3608
	Size: 0x1F3
	Parameters: 2
	Flags: None
*/
function function_d71418c8(var_1d795d47, var_5e76f0af)
{
	/#
		if(isdefined(function_6f1ebe57("Dev Block strings are not supported")) && function_4bd0142f("Dev Block strings are not supported"))
		{
			return;
		}
		var_14ffd4e5 = function_c49dde5();
		var_14ffd4e5.var_b5536acc = "Dev Block strings are not supported";
		var_14ffd4e5.var_db55e535 = "Dev Block strings are not supported";
		var_14ffd4e5.var_4f8217af = 125;
		var_14ffd4e5.var_297f9d46 = 20 * var_5e76f0af + 2;
		var_14ffd4e5.var_2363da9c = 1.5;
		var_14ffd4e5.var_4d19365 = 20;
		var_14ffd4e5.var_aabe9f43 = 0;
		var_14ffd4e5.var_d900369a = VectorScale((1, 1, 1), 0.8);
		var_14ffd4e5.var_83253ac2 = "Dev Block strings are not supported";
		var_14ffd4e5 function_f6181aca(var_1d795d47);
		wait(0.25 * var_5e76f0af + 1);
		var_14ffd4e5 function_ba7f003e(0.25);
		var_14ffd4e5.var_aabe9f43 = 1;
		wait(0.25);
		wait(3);
		var_14ffd4e5 function_ba7f003e(0.75);
		var_14ffd4e5.var_aabe9f43 = 0;
		wait(0.75);
		var_14ffd4e5 function_89cd542d();
	#/
}

/*
	Name: function_bd4daf7b
	Namespace: namespace_1d795d47
	Checksum: 0x27646B6C
	Offset: 0x3808
	Size: 0xF5
	Parameters: 1
	Flags: None
*/
function function_bd4daf7b(var_31fac33e)
{
	var_355070e1 = 0;
	while(isdefined(var_31fac33e) && var_31fac33e.size && !var_355070e1)
	{
		var_355070e1 = 1;
		foreach(var_1d795d47 in var_31fac33e)
		{
			if(!isdefined(level.var_e07f6589[var_1d795d47]))
			{
				function_81403b2f(var_31fac33e, var_1d795d47, 0);
				var_355070e1 = 0;
				break;
			}
		}
	}
	return var_31fac33e;
}

/*
	Name: function_bfb3493
	Namespace: namespace_1d795d47
	Checksum: 0x5351EEED
	Offset: 0x3908
	Size: 0x33B
	Parameters: 0
	Flags: None
*/
function function_bfb3493()
{
	function_5771edb2();
	function_1d4d83a6();
	level namespace_ad23e503::function_1ab5ebec("start_skiptos");
	var_7405b464 = function_72453179("_default");
	var_31fac33e = function_8b19ec5d(1);
	var_c61bfb3e = function_6f1ebe57("skipto_jump");
	if(isdefined(var_c61bfb3e) && var_c61bfb3e.size)
	{
		function_6c1294b8("skipto_jump", "");
	}
	var_31fac33e = function_bd4daf7b(var_31fac33e);
	/#
		namespace_33b293fd::function_a7ee953(isdefined(level.var_f968e47b) && level.var_f968e47b, "Dev Block strings are not supported");
	#/
	if(isdefined(level.var_31aefea8))
	{
		var_31fac33e = [];
		var_31fac33e[0] = level.var_31aefea8;
	}
	level.var_fee90489 = var_31fac33e;
	var_1d795d47 = var_31fac33e[0];
	if(isdefined(var_1d795d47) && isdefined(level.var_e07f6589[var_1d795d47]))
	{
		level.var_31aefea8 = var_1d795d47;
	}
	var_9b36d3bb = 0;
	var_34fb19f = level.var_fee90489;
	if(var_34fb19f.size < 1)
	{
		var_9b36d3bb = 1;
		var_34fb19f = var_7405b464;
		if(isdefined(level.var_574eb415))
		{
			level.var_31aefea8 = level.var_574eb415;
		}
		function_ba933d27();
	}
	level.var_b0a9f843 = var_34fb19f;
	var_1d795d47 = var_34fb19f[0];
	if(isdefined(var_1d795d47) && isdefined(level.var_e07f6589[var_1d795d47]))
	{
		level.var_31aefea8 = var_1d795d47;
	}
	if(var_34fb19f.size < 1)
	{
		return;
	}
	if(!var_9b36d3bb)
	{
		function_be04f9a5(var_7405b464);
	}
	level namespace_957e94ce::function_74d6b22f("scene_on_load_wait");
	function_c4c27da4(var_34fb19f, 1);
	if(var_9b36d3bb)
	{
		thread namespace_9f824288::function_2706f7ee();
	}
	else
	{
		thread namespace_9f824288::function_d7916d65();
	}
	thread function_e462855b();
	/#
		waittillframeend;
		thread function_1df81780();
		level thread function_f70934af();
	#/
}

/*
	Name: function_f7f12a75
	Namespace: namespace_1d795d47
	Checksum: 0xCB8396EC
	Offset: 0x3C50
	Size: 0x1CB
	Parameters: 2
	Flags: None
*/
function function_f7f12a75(var_1d795d47, var_5e76f0af)
{
	var_aabe9f43 = 1;
	var_d900369a = VectorScale((1, 1, 1), 0.9);
	if(var_5e76f0af != -1)
	{
		if(var_5e76f0af != 4)
		{
			var_aabe9f43 = 1 - function_69c2f683(4 - var_5e76f0af) / 4;
		}
		else
		{
			var_d900369a = (1, 1, 0);
		}
	}
	if(var_aabe9f43 == 0)
	{
		var_aabe9f43 = 0.05;
	}
	var_14ffd4e5 = function_c49dde5();
	var_14ffd4e5.var_b5536acc = "left";
	var_14ffd4e5.var_db55e535 = "middle";
	var_14ffd4e5.var_4f8217af = 80;
	var_14ffd4e5.var_297f9d46 = 80 + var_5e76f0af * 18;
	var_14ffd4e5 function_f6181aca(var_1d795d47);
	var_14ffd4e5.var_aabe9f43 = 0;
	var_14ffd4e5.var_79e0f792 = 1;
	var_14ffd4e5.var_d900369a = var_d900369a;
	var_14ffd4e5.var_2363da9c = 1.75;
	var_14ffd4e5 function_ba7f003e(0.5);
	var_14ffd4e5.var_aabe9f43 = var_aabe9f43;
	return var_14ffd4e5;
}

/*
	Name: function_1d4d83a6
	Namespace: namespace_1d795d47
	Checksum: 0xA5831CCC
	Offset: 0x3E28
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_1d4d83a6()
{
	var_dc719734 = "devgui_remove "Map/Skipto" 
";
	function_b3c0448e(var_dc719734);
}

/*
	Name: function_e462855b
	Namespace: namespace_1d795d47
	Checksum: 0x4556B1F4
	Offset: 0x3E60
	Size: 0x2B7
	Parameters: 0
	Flags: None
*/
function function_e462855b()
{
	var_fcdf780c = "devgui_cmd "Map/Skipto/";
	var_67a5c424 = var_fcdf780c + "Jump to/";
	var_5e76f0af = 1;
	function_b3c0448e(var_67a5c424 + "Default:0" "set " + "skipto_jump" + " " + "_default" + "" 
");
	foreach(var_14b42b8a in level.var_e07f6589)
	{
		var_4be20d44 = var_14b42b8a.var_4be20d44 + ":" + var_5e76f0af;
		var_5e76f0af++;
		function_b3c0448e(var_67a5c424 + var_4be20d44 + "" "set " + "skipto_jump" + " " + var_14b42b8a.var_4be20d44 + "" 
");
	}
	function_b3c0448e(var_67a5c424 + "No Game:" + var_5e76f0af + "" "set " + "skipto_jump" + " " + "no_game" + "" 
");
	for(;;)
	{
		var_d7c02302 = function_6f1ebe57("skipto_jump");
		if(isdefined(var_d7c02302) && var_d7c02302.size)
		{
			namespace_ccb8d056::function_c1cdedfb("death");
			function_764c8221();
			return;
		}
		var_31cd1834 = function_6f1ebe57("skipto_complete");
		if(isdefined(var_31cd1834) && var_31cd1834.size)
		{
			function_6c1294b8("skipto_complete", "");
			level function_be8adfb8(var_31cd1834, function_3f10449f()[0]);
		}
		wait(0.05);
	}
}

/*
	Name: function_1df81780
	Namespace: namespace_1d795d47
	Checksum: 0xA6DD03B9
	Offset: 0x4120
	Size: 0x15F
	Parameters: 0
	Flags: None
*/
function function_1df81780()
{
	/#
		level namespace_ad23e503::function_1ab5ebec("Dev Block strings are not supported");
		var_5dc5e20a = function_3f10449f()[0];
		while(isdefined(var_5dc5e20a) && var_5dc5e20a function_ce2b5f5("Dev Block strings are not supported"))
		{
			wait(0.05);
		}
		level thread function_32d804dd();
		while(isdefined(function_4bd0142f("Dev Block strings are not supported")) && function_4bd0142f("Dev Block strings are not supported"))
		{
			function_6c1294b8("Dev Block strings are not supported", 0);
			function_3f10449f()[0] function_ed04153c(0);
			function_6bef7095();
			function_3f10449f()[0] function_ed04153c(1);
			wait(0.05);
		}
	#/
}

/*
	Name: function_5a20eade
	Namespace: namespace_1d795d47
	Checksum: 0xDF90C5C
	Offset: 0x4288
	Size: 0xBD
	Parameters: 0
	Flags: None
*/
function function_5a20eade()
{
	var_5dc5e20a = function_3f10449f()[0];
	if(isdefined(var_5dc5e20a) && var_5dc5e20a function_ce2b5f5("BUTTON_X") && var_5dc5e20a function_ce2b5f5("DPAD_RIGHT") && var_5dc5e20a function_ce2b5f5("BUTTON_LSHLDR") && var_5dc5e20a function_ce2b5f5("BUTTON_RSHLDR"))
	{
		return 1;
	}
	return 0;
}

/*
	Name: function_32d804dd
	Namespace: namespace_1d795d47
	Checksum: 0x7F65FE6B
	Offset: 0x4350
	Size: 0x67
	Parameters: 0
	Flags: None
*/
function function_32d804dd()
{
	while(!function_5a20eade())
	{
		wait(0.05);
		continue;
		function_6c1294b8("debug_skipto", 1);
		while(function_5a20eade())
		{
			wait(0.05);
		}
	}
}

/*
	Name: function_73c9bef8
	Namespace: namespace_1d795d47
	Checksum: 0x426A6B09
	Offset: 0x43C0
	Size: 0x151
	Parameters: 1
	Flags: None
*/
function function_73c9bef8(var_d0ef8521)
{
	var_dc719734 = "devgui_remove "Map/Skipto/Complete" 
";
	function_b3c0448e(var_dc719734);
	var_fcdf780c = "devgui_cmd "Map/Skipto/";
	var_86373479 = var_fcdf780c + "Complete/";
	var_5e76f0af = 1;
	foreach(var_a67db03e in var_d0ef8521)
	{
		var_4be20d44 = var_a67db03e + ":" + var_5e76f0af;
		var_5e76f0af++;
		function_b3c0448e(var_86373479 + var_4be20d44 + "" "set " + "skipto_complete" + " " + var_a67db03e + "" 
");
	}
}

/*
	Name: function_d4de4cea
	Namespace: namespace_1d795d47
	Checksum: 0x993781FD
	Offset: 0x4520
	Size: 0xC7
	Parameters: 0
	Flags: None
*/
function function_d4de4cea()
{
	var_5e76f0af = 0;
	var_4b5944f7 = [];
	foreach(var_14b42b8a in level.var_e07f6589)
	{
		var_4be20d44 = var_14b42b8a.var_4be20d44;
		var_4b5944f7[var_5e76f0af] = var_4be20d44;
		var_5e76f0af++;
	}
	return var_4b5944f7;
}

/*
	Name: function_6bef7095
	Namespace: namespace_1d795d47
	Checksum: 0xAF9CB378
	Offset: 0x45F0
	Size: 0x633
	Parameters: 0
	Flags: None
*/
function function_6bef7095()
{
	if(level.var_e07f6589.size <= 0)
	{
		return;
	}
	var_4b5944f7 = function_d4de4cea();
	var_f3b59f77 = function_fb835fed();
	var_a9f4c2c5 = function_f7f12a75("Selected skipto:", -1);
	var_a9f4c2c5.var_d900369a = (1, 1, 1);
	var_b3c5b671 = [];
	for(var_c957f6b6 = 0; var_c957f6b6 < var_4b5944f7.size; var_c957f6b6++)
	{
		var_903b73e = var_4b5944f7[var_c957f6b6];
		var_9f17f9b5 = "[" + var_4b5944f7[var_c957f6b6] + "]";
		var_b3c5b671[var_b3c5b671.size] = var_9f17f9b5;
	}
	var_d3ecf79a = var_4b5944f7.size - 1;
	var_4db49ef5 = 0;
	var_4c2ac8b6 = 0;
	var_229d7f5a = 0;
	while(var_d3ecf79a > 0)
	{
		if(var_4b5944f7[var_d3ecf79a] == level.var_31aefea8)
		{
			var_229d7f5a = 1;
			break;
		}
		var_d3ecf79a--;
	}
	if(!var_229d7f5a)
	{
		var_d3ecf79a = var_4b5944f7.size - 1;
	}
	function_59b1348d(var_f3b59f77, var_b3c5b671, var_d3ecf79a);
	var_14501e84 = var_d3ecf79a;
	while(var_14501e84 != var_d3ecf79a)
	{
		function_59b1348d(var_f3b59f77, var_b3c5b671, var_d3ecf79a);
		var_14501e84 = var_d3ecf79a;
		if(!var_4db49ef5)
		{
			if(function_3f10449f()[0] function_ce2b5f5("UPARROW") || function_3f10449f()[0] function_ce2b5f5("DPAD_UP") || function_3f10449f()[0] function_ce2b5f5("APAD_UP"))
			{
				var_4db49ef5 = 1;
				var_d3ecf79a--;
			}
		}
		else if(!function_3f10449f()[0] function_ce2b5f5("UPARROW") && !function_3f10449f()[0] function_ce2b5f5("DPAD_UP") && !function_3f10449f()[0] function_ce2b5f5("APAD_UP"))
		{
			var_4db49ef5 = 0;
		}
		if(!var_4c2ac8b6)
		{
			if(function_3f10449f()[0] function_ce2b5f5("DOWNARROW") || function_3f10449f()[0] function_ce2b5f5("DPAD_DOWN") || function_3f10449f()[0] function_ce2b5f5("APAD_DOWN"))
			{
				var_4c2ac8b6 = 1;
				var_d3ecf79a++;
			}
		}
		else if(!function_3f10449f()[0] function_ce2b5f5("DOWNARROW") && !function_3f10449f()[0] function_ce2b5f5("DPAD_DOWN") && !function_3f10449f()[0] function_ce2b5f5("APAD_DOWN"))
		{
			var_4c2ac8b6 = 0;
		}
		if(var_d3ecf79a < 0)
		{
			var_d3ecf79a = var_4b5944f7.size - 1;
		}
		if(var_d3ecf79a >= var_4b5944f7.size)
		{
			var_d3ecf79a = 0;
		}
		if(function_3f10449f()[0] function_ce2b5f5("BUTTON_B"))
		{
			function_30a9834c(var_f3b59f77, var_a9f4c2c5);
			break;
		}
		if(function_3f10449f()[0] function_ce2b5f5("kp_enter") || function_3f10449f()[0] function_ce2b5f5("BUTTON_A") || function_3f10449f()[0] function_ce2b5f5("enter"))
		{
			if(var_4b5944f7[var_d3ecf79a] == "cancel")
			{
				function_30a9834c(var_f3b59f77, var_a9f4c2c5);
				break;
			}
			function_677539fe(var_4b5944f7[var_d3ecf79a]);
			function_764c8221();
			return;
		}
		wait(0.05);
	}
}

/*
	Name: function_fb835fed
	Namespace: namespace_1d795d47
	Checksum: 0x2D199890
	Offset: 0x4C30
	Size: 0x77
	Parameters: 0
	Flags: None
*/
function function_fb835fed()
{
	var_1901fb66 = [];
	for(var_c957f6b6 = 0; var_c957f6b6 < 8; var_c957f6b6++)
	{
		var_724a4794 = function_f7f12a75("", var_c957f6b6);
		var_1901fb66[var_1901fb66.size] = var_724a4794;
	}
	return var_1901fb66;
}

/*
	Name: function_59b1348d
	Namespace: namespace_1d795d47
	Checksum: 0x5A753745
	Offset: 0x4CB0
	Size: 0xBD
	Parameters: 3
	Flags: None
*/
function function_59b1348d(var_1901fb66, var_b3c5b671, var_791757)
{
	for(var_c957f6b6 = 0; var_c957f6b6 < var_1901fb66.size; var_c957f6b6++)
	{
		var_5e76f0af = var_c957f6b6 + var_791757 - 4;
		if(isdefined(var_b3c5b671[var_5e76f0af]))
		{
			var_8caa0808 = var_b3c5b671[var_5e76f0af];
		}
		else
		{
			var_8caa0808 = "";
		}
		var_1901fb66[var_c957f6b6] function_f6181aca(var_8caa0808);
	}
}

/*
	Name: function_30a9834c
	Namespace: namespace_1d795d47
	Checksum: 0x7E2EACEB
	Offset: 0x4D78
	Size: 0x75
	Parameters: 2
	Flags: None
*/
function function_30a9834c(var_f3b59f77, var_a9f4c2c5)
{
	var_a9f4c2c5 function_89cd542d();
	for(var_c957f6b6 = 0; var_c957f6b6 < var_f3b59f77.size; var_c957f6b6++)
	{
		var_f3b59f77[var_c957f6b6] function_89cd542d();
	}
}

/*
	Name: function_7caf435a
	Namespace: namespace_1d795d47
	Checksum: 0xC77B9C1C
	Offset: 0x4DF8
	Size: 0x95
	Parameters: 0
	Flags: None
*/
function function_7caf435a()
{
	var_35ef0ec1 = function_c20c2e8();
	var_35ef0ec1 = function_525ae497(var_35ef0ec1, function_d35375b8(), 1, 0);
	for(var_c957f6b6 = 0; var_c957f6b6 < var_35ef0ec1.size; var_c957f6b6++)
	{
		var_35ef0ec1[var_c957f6b6] function_dc8c8404();
	}
}

/*
	Name: function_f70934af
	Namespace: namespace_1d795d47
	Checksum: 0x7E14FFB2
	Offset: 0x4E98
	Size: 0x13B
	Parameters: 0
	Flags: None
*/
function function_f70934af()
{
	if(!function_492f0713())
	{
		return;
	}
	var_14ffd4e5 = function_c49dde5();
	var_14ffd4e5.var_b5536acc = "left";
	var_14ffd4e5.var_db55e535 = "top";
	var_14ffd4e5.var_4f8217af = 0;
	var_14ffd4e5.var_297f9d46 = 70;
	var_14ffd4e5 function_f6181aca("This skipto is for development purposes only!  The level may not progress from this point.");
	var_14ffd4e5.var_aabe9f43 = 1;
	var_14ffd4e5.var_2363da9c = 1.8;
	var_14ffd4e5.var_d900369a = (1, 0.55, 0);
	wait(7);
	var_14ffd4e5 function_ba7f003e(1);
	var_14ffd4e5.var_aabe9f43 = 0;
	wait(1);
	var_14ffd4e5 function_89cd542d();
}

/*
	Name: function_a363b4b1
	Namespace: namespace_1d795d47
	Checksum: 0x3CF53C0D
	Offset: 0x4FE0
	Size: 0x5F
	Parameters: 1
	Flags: None
*/
function function_a363b4b1(var_1d795d47)
{
	var_c1fc5f4e = function_57b2be45(function_f45850ec(var_1d795d47, 0, 4));
	if(var_c1fc5f4e == "dev_")
	{
		return 1;
	}
	return 0;
}

/*
	Name: function_492f0713
	Namespace: namespace_1d795d47
	Checksum: 0x5E4F9D2C
	Offset: 0x5048
	Size: 0x19
	Parameters: 0
	Flags: None
*/
function function_492f0713()
{
	return function_a363b4b1(level.var_31aefea8);
}

/*
	Name: function_6be1cbfa
	Namespace: namespace_1d795d47
	Checksum: 0xFC91AAD1
	Offset: 0x5070
	Size: 0x31
	Parameters: 0
	Flags: None
*/
function function_6be1cbfa()
{
	if(!isdefined(level.var_31aefea8))
	{
		return 0;
	}
	return function_5dbf7eca(level.var_31aefea8, "no_game");
}

/*
	Name: function_6f516a11
	Namespace: namespace_1d795d47
	Checksum: 0x90F8584E
	Offset: 0x50B0
	Size: 0x9F
	Parameters: 0
	Flags: None
*/
function function_6f516a11()
{
	if(!function_6be1cbfa())
	{
		return;
	}
	level.var_9ad2a5fc = 1;
	if(isdefined(level.var_1d7c976f))
	{
		level [[level.var_1d7c976f]]();
	}
	level thread namespace_d7916d65::function_c1660872();
	namespace_84970cc4::function_966ecb29(function_99201f25("water", "targetname"), &namespace_d7916d65::function_9697822f);
	level waittill("hash_f43d8f1");
}

/*
	Name: function_2ece423b
	Namespace: namespace_1d795d47
	Checksum: 0xF1480212
	Offset: 0x5158
	Size: 0x17
	Parameters: 1
	Flags: None
*/
function function_2ece423b(var_86365a77)
{
	level.var_ba8dfc5d = var_86365a77;
}

/*
	Name: function_574eb415
	Namespace: namespace_1d795d47
	Checksum: 0xE0EC05B8
	Offset: 0x5178
	Size: 0x17
	Parameters: 1
	Flags: None
*/
function function_574eb415(var_1d795d47)
{
	level.var_574eb415 = var_1d795d47;
}

/*
	Name: function_f58fccb8
	Namespace: namespace_1d795d47
	Checksum: 0x8056E64E
	Offset: 0x5198
	Size: 0x4B
	Parameters: 3
	Flags: None
*/
function function_f58fccb8(var_688f04ff, var_b8e76549, var_46031771)
{
	function_3096a6fd(var_688f04ff, var_b8e76549);
	function_552e05fb(var_688f04ff, var_46031771);
}

/*
	Name: function_3096a6fd
	Namespace: namespace_1d795d47
	Checksum: 0x7C0D512D
	Offset: 0x51F0
	Size: 0x2D9
	Parameters: 2
	Flags: None
*/
function function_3096a6fd(var_688f04ff, var_b8e76549)
{
	if(!isdefined(var_b8e76549))
	{
		if(isdefined(level.var_6a876531))
		{
			var_b8e76549 = level.var_6a876531;
		}
		else
		{
			var_b8e76549 = function_b8494651("allies");
		}
	}
	if(function_2477ac2(var_b8e76549))
	{
		var_b8e76549 = function_c20c2e8(var_b8e76549, "script_noteworthy");
	}
	if(!function_6e2770d8(var_b8e76549))
	{
		var_b8e76549 = function_84970cc4(var_b8e76549);
	}
	var_b8e76549 = namespace_84970cc4::function_b87262e(var_b8e76549);
	var_40021c00 = function_41f575c3(namespace_14b42b8a::function_7faf4c39(var_688f04ff + "_ai", "targetname"));
	/#
		namespace_33b293fd::function_a7ee953(var_40021c00.size >= var_b8e76549.size, "Dev Block strings are not supported" + var_688f04ff + "Dev Block strings are not supported" + var_b8e76549.size + "Dev Block strings are not supported" + var_40021c00.size + "Dev Block strings are not supported");
	#/
	if(!var_40021c00.size)
	{
		return;
	}
	foreach(var_d84e54db in var_b8e76549)
	{
		if(isdefined(var_d84e54db))
		{
			var_77d4425f = 0;
			if(isdefined(var_d84e54db.var_8202763a))
			{
				for(var_a3557c4d = 0; var_a3557c4d < var_40021c00.size; var_a3557c4d++)
				{
					if(isdefined(var_40021c00[var_a3557c4d].var_8202763a))
					{
						if(var_40021c00[var_a3557c4d].var_8202763a == var_d84e54db.var_8202763a)
						{
							var_77d4425f = var_a3557c4d;
							break;
						}
					}
				}
			}
			var_d84e54db function_d9b1ee00(var_40021c00[var_77d4425f]);
			function_81403b2f(var_40021c00, var_40021c00[var_77d4425f]);
		}
	}
}

/*
	Name: function_d9b1ee00
	Namespace: namespace_1d795d47
	Checksum: 0xEF432080
	Offset: 0x54D8
	Size: 0x103
	Parameters: 1
	Flags: None
*/
function function_d9b1ee00(var_6945be17)
{
	if(isdefined(var_6945be17.var_6ab6f4fd))
	{
		self function_9869ab67(var_6945be17.var_722885f3, var_6945be17.var_6ab6f4fd);
	}
	else
	{
		self function_9869ab67(var_6945be17.var_722885f3);
	}
	if(isdefined(var_6945be17.var_b07228b6))
	{
		var_90ca1fdd = function_b4cb3503(var_6945be17.var_b07228b6, "targetname");
		if(isdefined(var_90ca1fdd))
		{
			self function_169cc712(var_90ca1fdd);
			return;
		}
	}
	self function_169cc712(var_6945be17.var_722885f3);
}

/*
	Name: function_552e05fb
	Namespace: namespace_1d795d47
	Checksum: 0x688C44ED
	Offset: 0x55E8
	Size: 0x185
	Parameters: 2
	Flags: None
*/
function function_552e05fb(var_688f04ff, var_46031771)
{
	level namespace_ad23e503::function_1ab5ebec("all_players_spawned");
	var_9dba424d = function_3529c409(var_688f04ff, var_46031771);
	/#
		namespace_33b293fd::function_a7ee953(var_9dba424d.size >= level.var_2395e945.size, "Dev Block strings are not supported");
	#/
	for(var_c957f6b6 = 0; var_c957f6b6 < level.var_2395e945.size; var_c957f6b6++)
	{
		var_ac126ac5 = var_9dba424d[var_c957f6b6].var_722885f3;
		var_ac126ac5 = level.var_2395e945[var_c957f6b6] namespace_5dc5e20a::function_1f591d91(var_ac126ac5);
		level.var_2395e945[var_c957f6b6] function_a30814d(var_ac126ac5);
		if(isdefined(var_9dba424d[var_c957f6b6].var_6ab6f4fd))
		{
			level.var_2395e945[var_c957f6b6] namespace_82b91a51::function_1cbbd5fa(2, "disconnect", &function_eda2be50, var_9dba424d[var_c957f6b6].var_6ab6f4fd);
		}
	}
}

/*
	Name: function_3529c409
	Namespace: namespace_1d795d47
	Checksum: 0x1F19CE7D
	Offset: 0x5778
	Size: 0x205
	Parameters: 2
	Flags: None
*/
function function_3529c409(var_688f04ff, var_46031771)
{
	if(!isdefined(var_46031771))
	{
		var_46031771 = 0;
	}
	var_9dba424d = namespace_14b42b8a::function_7faf4c39(var_688f04ff, "targetname");
	if(!var_9dba424d.size)
	{
		var_9dba424d = namespace_4a43ba8::function_5880f755("cp_coop_spawn", 1);
		var_9dba424d = function_c13ce5f8(undefined, var_9dba424d, var_688f04ff);
	}
	if(var_46031771)
	{
		for(var_c957f6b6 = 0; var_c957f6b6 < var_9dba424d.size; var_c957f6b6++)
		{
			for(var_a3557c4d = var_c957f6b6; var_a3557c4d < var_9dba424d.size; var_a3557c4d++)
			{
				/#
					namespace_33b293fd::function_a7ee953(isdefined(var_9dba424d[var_a3557c4d].var_8202763a), "Dev Block strings are not supported" + var_9dba424d[var_a3557c4d].var_722885f3 + "Dev Block strings are not supported");
				#/
				/#
					namespace_33b293fd::function_a7ee953(isdefined(var_9dba424d[var_c957f6b6].var_8202763a), "Dev Block strings are not supported" + var_9dba424d[var_c957f6b6].var_722885f3 + "Dev Block strings are not supported");
				#/
				if(var_9dba424d[var_a3557c4d].var_8202763a < var_9dba424d[var_c957f6b6].var_8202763a)
				{
					var_f8f608db = var_9dba424d[var_c957f6b6];
					var_9dba424d[var_c957f6b6] = var_9dba424d[var_a3557c4d];
					var_9dba424d[var_a3557c4d] = var_f8f608db;
				}
			}
		}
	}
	return var_9dba424d;
}

/*
	Name: function_6542f12c
	Namespace: namespace_1d795d47
	Checksum: 0x4927B4C7
	Offset: 0x5988
	Size: 0x107
	Parameters: 3
	Flags: None
*/
function function_6542f12c(var_fa42a0e2, var_2397f00d, var_3340d044)
{
	var_28ddff4b = function_d6df1f20(var_fa42a0e2, var_2397f00d);
	var_e1dfd87d = "";
	var_a0cd6b51 = 1;
	foreach(var_d8e7bbc in var_28ddff4b)
	{
		if(!var_a0cd6b51)
		{
			var_e1dfd87d = var_e1dfd87d + var_3340d044;
		}
		var_a0cd6b51 = 0;
		var_e1dfd87d = var_e1dfd87d + var_d8e7bbc;
	}
	return var_e1dfd87d;
}

/*
	Name: function_7c1e8577
	Namespace: namespace_1d795d47
	Checksum: 0xBA87A2F0
	Offset: 0x5A98
	Size: 0x173
	Parameters: 3
	Flags: None
*/
function function_7c1e8577(var_988ffb13, var_76d85d44, var_310b47e9)
{
	if(!isdefined(var_310b47e9))
	{
		var_310b47e9 = "";
	}
	var_5e76f0af = 0;
	for(var_3947a807 = function_d1439e4f(var_988ffb13, var_5e76f0af); isdefined(var_3947a807);  = function_d1439e4f(var_988ffb13, var_5e76f0af))
	{
		if(var_3947a807[0] == var_76d85d44 && var_3947a807[1] == var_310b47e9)
		{
			var_1d795d47 = var_3947a807[2];
			var_46c5ea43 = var_3947a807[3];
			var_c3efda96 = var_3947a807[4];
			var_c3efda96 = function_6542f12c(var_c3efda96, "+", ",");
			var_d9cbb73e = var_3947a807[5];
			function_731571ad(var_1d795d47, &function_89a9b10f, var_d9cbb73e, undefined, var_46c5ea43, var_c3efda96);
		}
		var_5e76f0af++;
	}
}

/*
	Name: function_89a9b10f
	Namespace: namespace_1d795d47
	Checksum: 0x99EC1590
	Offset: 0x5C18
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_89a9b10f()
{
}

/*
	Name: function_faeb731e
	Namespace: namespace_1d795d47
	Checksum: 0x25941DCA
	Offset: 0x5C28
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_faeb731e()
{
	level namespace_ad23e503::function_74d6b22f("start_skiptos");
}

/*
	Name: function_72a45412
	Namespace: namespace_1d795d47
	Checksum: 0xADDE746E
	Offset: 0x5C58
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_72a45412()
{
	if(function_4bd0142f("ui_blocksaves") == 0 && isdefined(self namespace_9f824288::function_36adbb9c("savegame_score")))
	{
		return;
	}
	namespace_b976075a::function_a5ac6877();
}

/*
	Name: function_f2b024f8
	Namespace: namespace_1d795d47
	Checksum: 0xF87EB6E1
	Offset: 0x5CB8
	Size: 0x35
	Parameters: 0
	Flags: None
*/
function function_f2b024f8()
{
	self endon("hash_643a7daf");
	while(1)
	{
		self function_a5a105e8();
		wait(5);
	}
}

/*
	Name: function_bc7b05ac
	Namespace: namespace_1d795d47
	Checksum: 0xA63A30C3
	Offset: 0x5CF8
	Size: 0xA3
	Parameters: 4
	Flags: None
*/
function function_bc7b05ac(var_87fe1234, var_a3b4af10, var_eece3936, var_5db7ef95)
{
	var_a88ef0ad = 0;
	var_17986f3e = 0;
	if(isdefined(var_5db7ef95))
	{
		var_17986f3e = var_5db7ef95;
	}
	if(isdefined(var_eece3936))
	{
		var_a88ef0ad = var_eece3936;
	}
	var_96f7be40 = var_17986f3e - var_a88ef0ad;
	self function_892bf421(var_a3b4af10, var_87fe1234, var_96f7be40);
}

/*
	Name: function_84008d8d
	Namespace: namespace_1d795d47
	Checksum: 0xA0ACAE66
	Offset: 0x5DA8
	Size: 0x743
	Parameters: 2
	Flags: None
*/
function function_84008d8d(var_30ff5083, var_5dc5e20a)
{
	var_76d1ec1a = level.var_e07f6589[var_30ff5083].var_84e9618b;
	var_5dc5e20a function_bc7b05ac("kills_total", var_76d1ec1a, var_5dc5e20a.var_dc615b.var_ec0b278c, var_5dc5e20a.var_ec0b278c);
	var_93e3a3c4 = var_5dc5e20a function_84368297("PlayerStatsList", "TOTAL_SHOTS", "statValue");
	var_fad7c813 = var_5dc5e20a function_84368297("PlayerStatsList", "HITS", "statValue");
	if(isdefined(var_93e3a3c4))
	{
		var_5dc5e20a function_bc7b05ac("shots_total", var_76d1ec1a, var_5dc5e20a.var_dc615b.var_ab2196bc, var_93e3a3c4);
	}
	if(isdefined(var_fad7c813))
	{
		var_5dc5e20a function_bc7b05ac("hits_total", var_76d1ec1a, var_5dc5e20a.var_dc615b.var_14e7569b, var_fad7c813);
	}
	var_5dc5e20a function_bc7b05ac("incaps_total", var_76d1ec1a, var_5dc5e20a.var_dc615b.var_58ef604f, var_5dc5e20a.var_58ef604f);
	var_5dc5e20a function_bc7b05ac("deaths_total", var_76d1ec1a, var_5dc5e20a.var_dc615b.var_add55f80, var_5dc5e20a.var_add55f80);
	var_5dc5e20a function_bc7b05ac("revives_total", var_76d1ec1a, var_5dc5e20a.var_dc615b.var_a433a6cd, var_5dc5e20a.var_a433a6cd);
	var_5dc5e20a function_bc7b05ac("headshots_total", var_76d1ec1a, var_5dc5e20a.var_dc615b.var_b79a4566, var_5dc5e20a.var_b79a4566);
	var_5dc5e20a function_bc7b05ac("duration_total", var_76d1ec1a, var_5dc5e20a.var_dc615b.var_58e077c7, GetTime());
	var_5dc5e20a function_bc7b05ac("score_total", var_76d1ec1a, var_5dc5e20a.var_dc615b.var_f1242439, var_5dc5e20a.var_f1242439);
	var_5dc5e20a function_bc7b05ac("grenades_total", var_76d1ec1a, var_5dc5e20a.var_dc615b.var_c1acde73, var_5dc5e20a.var_c1acde73);
	var_5dc5e20a function_bc7b05ac("igcSeconds", var_76d1ec1a, var_5dc5e20a.var_dc615b.var_7479d3c, var_5dc5e20a.var_324624dc);
	var_5dc5e20a function_bc7b05ac("secondsPaused", var_76d1ec1a, var_5dc5e20a.var_dc615b.var_adac7b4d, function_b6b79a0(function_355c5c13() / 1000));
	var_b1f1efe7 = 0;
	var_394190fb = 0;
	var_d88606f6 = 0;
	var_32d177c9 = 0;
	var_4dbe4ef9 = 0;
	if(isdefined(var_5dc5e20a.var_edd32051))
	{
		if(isdefined(var_5dc5e20a.var_edd32051.var_ec8f8b3e))
		{
			var_394190fb = var_5dc5e20a.var_edd32051.var_ec8f8b3e.var_7d15e2f8;
			var_32d177c9 = var_5dc5e20a.var_edd32051.var_ec8f8b3e.var_74952a22;
		}
		if(isdefined(var_5dc5e20a.var_edd32051.var_4a302def))
		{
			var_b1f1efe7 = var_5dc5e20a.var_edd32051.var_4a302def.var_7d15e2f8;
		}
		if(isdefined(var_5dc5e20a.var_edd32051.var_1e3438ee))
		{
			var_d88606f6 = var_5dc5e20a.var_edd32051.var_1e3438ee.var_7d15e2f8;
			var_4dbe4ef9 = var_5dc5e20a.var_edd32051.var_1e3438ee.var_74952a22;
		}
	}
	var_5dc5e20a function_bc7b05ac("distance_wallrun", var_76d1ec1a, var_5dc5e20a.var_dc615b.var_3a4eb4be, function_b6b79a0(var_394190fb));
	var_5dc5e20a function_bc7b05ac("distance_sprinted", var_76d1ec1a, var_5dc5e20a.var_dc615b.var_15b36d84, function_b6b79a0(var_b1f1efe7));
	var_5dc5e20a function_bc7b05ac("distance_boosted", var_76d1ec1a, var_5dc5e20a.var_dc615b.var_b3d62777, function_b6b79a0(var_d88606f6));
	var_5dc5e20a function_bc7b05ac("wallruns_total", var_76d1ec1a, var_5dc5e20a.var_dc615b.var_3e07bf28, function_b6b79a0(var_32d177c9));
	var_5dc5e20a function_bc7b05ac("boosts_total", var_76d1ec1a, var_5dc5e20a.var_dc615b.var_c5394042, function_b6b79a0(var_4dbe4ef9));
	var_5dc5e20a function_892bf421(var_76d1ec1a, "start_difficulty", var_5dc5e20a.var_dc615b.var_3f0972ca);
	var_5dc5e20a function_892bf421(var_76d1ec1a, "end_difficulty", level.var_6c41e242);
	if(isdefined(level.var_f758b962))
	{
		var_5dc5e20a function_892bf421(var_76d1ec1a, "igcSkippedNum", level.var_f758b962);
	}
}

/*
	Name: function_723221dd
	Namespace: namespace_1d795d47
	Checksum: 0x2CF64545
	Offset: 0x64F8
	Size: 0x4D7
	Parameters: 1
	Flags: None
*/
function function_723221dd(var_5dc5e20a)
{
	if(!isdefined(var_5dc5e20a.var_dc615b))
	{
		var_5dc5e20a.var_dc615b = function_a8fb77bd();
	}
	var_5dc5e20a.var_dc615b.var_ec0b278c = var_5dc5e20a.var_ec0b278c;
	var_ab2196bc = var_5dc5e20a function_84368297("PlayerStatsList", "TOTAL_SHOTS", "statValue");
	if(isdefined(var_ab2196bc))
	{
	}
	else
	{
	}
	var_5dc5e20a.var_dc615b.var_ab2196bc = 0;
	var_14e7569b = var_5dc5e20a function_84368297("PlayerStatsList", "HITS", "statValue");
	if(isdefined(var_14e7569b))
	{
	}
	else
	{
	}
	var_5dc5e20a.var_dc615b.var_14e7569b = 0;
	var_5dc5e20a.var_dc615b.var_58ef604f = var_5dc5e20a.var_58ef604f;
	var_5dc5e20a.var_dc615b.var_add55f80 = var_5dc5e20a.var_add55f80;
	var_5dc5e20a.var_dc615b.var_a433a6cd = var_5dc5e20a.var_a433a6cd;
	var_5dc5e20a.var_dc615b.var_b79a4566 = var_5dc5e20a.var_b79a4566;
	var_5dc5e20a.var_dc615b.var_58e077c7 = GetTime();
	var_5dc5e20a.var_dc615b.var_f1242439 = var_5dc5e20a.var_f1242439;
	var_5dc5e20a.var_dc615b.var_c1acde73 = var_5dc5e20a.var_c1acde73;
	var_5dc5e20a.var_dc615b.var_7479d3c = var_5dc5e20a.var_324624dc;
	var_5dc5e20a.var_dc615b.var_adac7b4d = function_b6b79a0(function_355c5c13() / 1000);
	var_5dc5e20a.var_dc615b.var_3f0972ca = level.var_6c41e242;
	var_b1f1efe7 = 0;
	var_394190fb = 0;
	var_d88606f6 = 0;
	var_32d177c9 = 0;
	var_4dbe4ef9 = 0;
	if(isdefined(var_5dc5e20a.var_edd32051))
	{
		if(isdefined(var_5dc5e20a.var_edd32051.var_ec8f8b3e))
		{
			var_394190fb = var_5dc5e20a.var_edd32051.var_ec8f8b3e.var_7d15e2f8;
			var_32d177c9 = var_5dc5e20a.var_edd32051.var_ec8f8b3e.var_74952a22;
		}
		if(isdefined(var_5dc5e20a.var_edd32051.var_4a302def))
		{
			var_b1f1efe7 = var_5dc5e20a.var_edd32051.var_4a302def.var_7d15e2f8;
		}
		if(isdefined(var_5dc5e20a.var_edd32051.var_1e3438ee))
		{
			var_d88606f6 = var_5dc5e20a.var_edd32051.var_1e3438ee.var_7d15e2f8;
			var_4dbe4ef9 = var_5dc5e20a.var_edd32051.var_1e3438ee.var_74952a22;
		}
	}
	var_5dc5e20a.var_dc615b.var_3a4eb4be = function_b6b79a0(var_394190fb);
	var_5dc5e20a.var_dc615b.var_15b36d84 = function_b6b79a0(var_b1f1efe7);
	var_5dc5e20a.var_dc615b.var_b3d62777 = function_b6b79a0(var_d88606f6);
	var_5dc5e20a.var_dc615b.var_3e07bf28 = function_b6b79a0(var_32d177c9);
	var_5dc5e20a.var_dc615b.var_c5394042 = function_b6b79a0(var_4dbe4ef9);
}

/*
	Name: function_fb4f96b5
	Namespace: namespace_1d795d47
	Checksum: 0xE77C4DBF
	Offset: 0x69D8
	Size: 0x58B
	Parameters: 0
	Flags: None
*/
function function_fb4f96b5()
{
	if(namespace_82b91a51::function_3da0c335())
	{
		return;
	}
	if(isdefined(level.var_f0ca204d) && level.var_f0ca204d)
	{
		return;
	}
	if(!isdefined(function_9065d6ea()))
	{
		return;
	}
	self thread function_f2b024f8();
	if(function_4bd0142f("ui_blocksaves") == 0)
	{
		if(self function_e025daa7())
		{
			var_85f70d3f = 1;
			if(function_bac7e7e9())
			{
				var_85f70d3f = isdefined(self function_84368297("scoreboard_migrated")) && self function_84368297("scoreboard_migrated");
			}
			else
			{
				var_85f70d3f = isdefined(self function_84368297("reserveBools", 0)) && self function_84368297("reserveBools", 0);
			}
			if(!var_85f70d3f)
			{
				self namespace_9f824288::function_bee608f0("savegame_score", self function_df7ef426("SCORE"));
				self namespace_9f824288::function_bee608f0("savegame_kills", self function_df7ef426("KILLS"));
				self namespace_9f824288::function_bee608f0("savegame_assists", self function_df7ef426("ASSISTS"));
				self namespace_9f824288::function_bee608f0("savegame_incaps", self function_df7ef426("INCAPS"));
				self namespace_9f824288::function_bee608f0("savegame_revives", self function_df7ef426("REVIVES"));
				if(function_bac7e7e9())
				{
					self function_8f67433b("scoreboard_migrated", 1);
				}
				else
				{
					self function_8f67433b("reserveBools", 0, 1);
				}
				function_9a7ed193(self);
			}
			if(!isdefined(self namespace_9f824288::function_36adbb9c("savegame_score")))
			{
				self namespace_9f824288::function_bee608f0("savegame_score", 0);
			}
			if(!isdefined(self namespace_9f824288::function_36adbb9c("savegame_kills")))
			{
				self namespace_9f824288::function_bee608f0("savegame_kills", 0);
			}
			if(!isdefined(self namespace_9f824288::function_36adbb9c("savegame_assists")))
			{
				self namespace_9f824288::function_bee608f0("savegame_assists", 0);
			}
			if(!isdefined(self namespace_9f824288::function_36adbb9c("savegame_incaps")))
			{
				self namespace_9f824288::function_bee608f0("savegame_incaps", 0);
			}
			if(!isdefined(self namespace_9f824288::function_36adbb9c("savegame_revives")))
			{
				self namespace_9f824288::function_bee608f0("savegame_revives", 0);
			}
			self.var_44fb8955["score"] = self namespace_9f824288::function_36adbb9c("savegame_score", 0);
			self.var_44fb8955["kills"] = self namespace_9f824288::function_36adbb9c("savegame_kills", 0);
			self.var_44fb8955["assists"] = self namespace_9f824288::function_36adbb9c("savegame_assists", 0);
			self.var_44fb8955["incaps"] = self namespace_9f824288::function_36adbb9c("savegame_incaps", 0);
			self.var_44fb8955["revives"] = self namespace_9f824288::function_36adbb9c("savegame_revives", 0);
			self.var_f1242439 = self.var_44fb8955["score"];
			self.var_ec0b278c = self.var_44fb8955["kills"];
			self.var_e69b4157 = self.var_44fb8955["assists"];
			self.var_58ef604f = self.var_44fb8955["incaps"];
			self.var_a433a6cd = self.var_44fb8955["revives"];
		}
	}
	function_723221dd(self);
}

/*
	Name: function_be8adfb8
	Namespace: namespace_1d795d47
	Checksum: 0x6C067933
	Offset: 0x6F70
	Size: 0x29B
	Parameters: 2
	Flags: None
*/
function function_be8adfb8(var_4be20d44, var_5dc5e20a)
{
	/#
		namespace_33b293fd::function_a7ee953(isdefined(level.var_e07f6589[var_4be20d44]), "Dev Block strings are not supported" + var_4be20d44 + "Dev Block strings are not supported");
	#/
	function_6c1294b8("NPCDeathTracking_Save", 1);
	foreach(var_eff42720 in level.var_2395e945)
	{
		if(var_eff42720 function_26ce3b38())
		{
			continue;
		}
		namespace_d8129fdd::function_bea1c67c(var_4be20d44, var_eff42720, "complete");
		var_eff42720 namespace_b976075a::function_ece4ca01();
	}
	if(isdefined(var_4be20d44))
	{
		if(isdefined(var_5dc5e20a))
		{
			function_84008d8d(var_4be20d44, var_5dc5e20a);
			break;
		}
		foreach(var_63af5576 in level.var_2395e945)
		{
			function_84008d8d(var_4be20d44, var_63af5576);
		}
		level function_2d700bc6(var_4be20d44, 0, 1, var_5dc5e20a);
	}
	var_48b2ad0a = function_72453179(var_4be20d44);
	var_48b2ad0a = function_b72da2d(var_48b2ad0a);
	if(isdefined(var_48b2ad0a) && var_48b2ad0a.size > 0)
	{
		level function_c4c27da4(var_48b2ad0a, 0, var_5dc5e20a);
		level thread namespace_9f824288::function_2706f7ee();
	}
}

/*
	Name: function_52904bc9
	Namespace: namespace_1d795d47
	Checksum: 0xA525A40F
	Offset: 0x7218
	Size: 0xA1
	Parameters: 0
	Flags: Private
*/
function private function_52904bc9()
{
	foreach(var_5948b3df in namespace_4dbf3ae3::function_4ac0de5b())
	{
		if(isdefined(var_5948b3df.var_22c28736))
		{
			var_5948b3df thread function_87fe8621();
		}
	}
}

/*
	Name: function_87fe8621
	Namespace: namespace_1d795d47
	Checksum: 0xFC459AD6
	Offset: 0x72C8
	Size: 0x271
	Parameters: 0
	Flags: Private
*/
function private function_87fe8621()
{
	self endon("hash_128f8789");
	level namespace_ad23e503::function_1ab5ebec("all_players_spawned");
	var_717810f = function_659bb22b(self.var_22c28736);
	/#
		namespace_33b293fd::function_a7ee953(var_717810f.size >= 3, "Dev Block strings are not supported");
	#/
	while(1)
	{
		self waittill("hash_4dbf3ae3", var_6f81c1b9);
		if(function_65f192a6(var_6f81c1b9))
		{
			self notify("hash_c0b9931e");
			foreach(var_5dc5e20a in level.var_2395e945)
			{
				if(var_5dc5e20a != var_6f81c1b9)
				{
					if(var_5dc5e20a.var_e0beb6ee === "playing")
					{
						if(isdefined(self.var_3367c99d))
						{
						}
						else
						{
						}
						var_ccd4343c = 2250000;
						var_cacbf7e2 = function_cb3d1c9b(var_5dc5e20a.var_722885f3, var_6f81c1b9.var_722885f3);
						if(var_cacbf7e2 > var_ccd4343c)
						{
							if(!var_5dc5e20a function_32fa5072(self))
							{
								var_5dc5e20a thread function_61843b91(var_717810f, var_cacbf7e2);
							}
						}
						continue;
					}
					if(var_5dc5e20a.var_e0beb6ee === "spectator" && (isdefined(var_5dc5e20a.var_de6188ec) && var_5dc5e20a.var_de6188ec))
					{
						var_5dc5e20a thread function_61843b91(var_717810f);
					}
				}
			}
			break;
		}
	}
}

/*
	Name: function_659bb22b
	Namespace: namespace_1d795d47
	Checksum: 0x3E12E959
	Offset: 0x7548
	Size: 0x123
	Parameters: 1
	Flags: None
*/
function function_659bb22b(var_3a36166b)
{
	var_f29ae442 = [];
	var_717810f = namespace_4a43ba8::function_93d52c4f(1);
	foreach(var_c8a3ac29 in var_717810f)
	{
		if(var_c8a3ac29.var_22c28736 === var_3a36166b)
		{
			if(!isdefined(var_f29ae442))
			{
				var_f29ae442 = [];
			}
			else if(!function_6e2770d8(var_f29ae442))
			{
				var_f29ae442 = function_84970cc4(var_f29ae442);
			}
			var_f29ae442[var_f29ae442.size] = var_c8a3ac29;
		}
	}
	return var_f29ae442;
}

/*
	Name: function_61843b91
	Namespace: namespace_1d795d47
	Checksum: 0xAF9F131A
	Offset: 0x7678
	Size: 0x3D1
	Parameters: 2
	Flags: Private
*/
function private function_61843b91(var_717810f, var_cacbf7e2)
{
	self endon("hash_128f8789");
	if(self function_cb8df3d0())
	{
		var_83c1bef6 = self function_dd4657f1();
		var_8b449b0f = var_83c1bef6 function_6f256229(self);
		var_83c1bef6 function_16337f9e(self, var_8b449b0f);
		if(isdefined(self.var_a03af093))
		{
			self waittill("hash_58a3879b");
		}
	}
	if(isdefined(self.var_a03af093))
	{
		self.var_a03af093 function_dc8c8404();
	}
	if(self.var_e0beb6ee === "spectator")
	{
		self thread [[level.var_1fee8319]]();
		waittillframeend;
	}
	else if(self namespace_564407fb::function_38a9aff8())
	{
		self notify("hash_d397bc5c");
	}
	if(self function_67f028cc())
	{
		self function_470f7e4c();
	}
	if(isdefined(self function_52b8ab2b()))
	{
		self function_52fddbd0();
		wait(0.1);
	}
	foreach(var_c8a3ac29 in var_717810f)
	{
		if(!(isdefined(var_c8a3ac29.var_c2733dc7) && var_c8a3ac29.var_c2733dc7))
		{
			var_c8a3ac29.var_c2733dc7 = 1;
			self.var_4c1451 = 1;
			self function_faf8f736(1);
			self function_b8862210("evt_coop_regroup_out", self);
			if(isdefined(var_cacbf7e2) && var_cacbf7e2 < 250000)
			{
				namespace_71e9cb84::function_688ed188("postfx_igc", 3);
			}
			else
			{
				namespace_71e9cb84::function_688ed188("postfx_igc", 1);
			}
			wait(0.5);
			self function_a30814d(var_c8a3ac29.var_722885f3);
			if(isdefined(var_c8a3ac29.var_6ab6f4fd))
			{
				namespace_82b91a51::function_1cbbd5fa(2, "disconnect", &function_eda2be50, var_c8a3ac29.var_6ab6f4fd);
			}
			self function_b8862210("evt_coop_regroup_in", self);
			break;
		}
	}
	wait(2);
	self function_faf8f736(0);
	wait(0.05);
	if(isdefined(level.var_1895e0f9))
	{
		self [[level.var_1895e0f9]]();
	}
	self namespace_82b91a51::function_11a89b44(undefined, 0, 5);
	wait(5);
	self.var_4c1451 = undefined;
}

/*
	Name: function_de4f5ef8
	Namespace: namespace_1d795d47
	Checksum: 0x4C8F1864
	Offset: 0x7A58
	Size: 0x12B
	Parameters: 1
	Flags: None
*/
function function_de4f5ef8(var_d0ef8521)
{
	/#
		function_6c1294b8("Dev Block strings are not supported", 1);
		var_5e76f0af = 0;
		foreach(var_4be20d44 in var_d0ef8521)
		{
			var_c52d91a9 = level.var_e07f6589[var_4be20d44];
			if(isdefined(var_c52d91a9.var_cbb15570) && var_c52d91a9.var_cbb15570.size)
			{
				thread function_d71418c8(var_c52d91a9.var_cbb15570, var_5e76f0af);
				var_5e76f0af++;
			}
		}
		function_6c1294b8("Dev Block strings are not supported", 0);
	#/
}

/*
	Name: function_c4c27da4
	Namespace: namespace_1d795d47
	Checksum: 0x9C3965C4
	Offset: 0x7B90
	Size: 0x2FB
	Parameters: 3
	Flags: None
*/
function function_c4c27da4(var_d0ef8521, var_13865ba1, var_5dc5e20a)
{
	function_c951eb3d();
	foreach(var_4be20d44 in var_d0ef8521)
	{
		if(isdefined(level.var_e07f6589[var_4be20d44]))
		{
			function_2d700bc6(level.var_e07f6589[var_4be20d44].var_c7a5039e, var_13865ba1, 0, var_5dc5e20a);
		}
	}
	if(isdefined(level.var_ba8dfc5d))
	{
		foreach(var_4be20d44 in var_d0ef8521)
		{
			thread [[level.var_ba8dfc5d]](var_4be20d44);
		}
	}
	/#
		thread function_de4f5ef8(var_d0ef8521);
	#/
	function_bfe10ae8(var_d0ef8521, var_13865ba1);
	level.var_31aefea8 = level.var_fee90489[0];
	if(!(isdefined(level.var_8118ccb1) && level.var_8118ccb1))
	{
		function_556029e1(level.var_fee90489);
	}
	level notify("hash_4b5852e7", level.var_fee90489);
	if(isdefined(level.var_26b4fb80))
	{
		[[level.var_26b4fb80]](level.var_fee90489);
	}
	function_73c9bef8(level.var_fee90489);
	if(isdefined(var_5dc5e20a))
	{
		function_723221dd(var_5dc5e20a);
		break;
	}
	foreach(var_63af5576 in level.var_2395e945)
	{
		function_723221dd(var_63af5576);
	}
	level thread function_39213560(var_13865ba1);
}

/*
	Name: function_39213560
	Namespace: namespace_1d795d47
	Checksum: 0x6BBE60D6
	Offset: 0x7E98
	Size: 0xAB
	Parameters: 1
	Flags: None
*/
function function_39213560(var_13865ba1)
{
	level notify("hash_39213560");
	level endon("hash_39213560");
	level endon("hash_4b5852e7");
	level namespace_ad23e503::function_1ab5ebec("first_player_spawned");
	namespace_4a43ba8::function_311d8eda();
	namespace_4a43ba8::function_74317bd4("allies", "cp_coop_spawn");
	namespace_4a43ba8::function_74317bd4("allies", "cp_coop_respawn");
	namespace_52deffe2::function_ca8dbdcd();
}

/*
	Name: function_bfe10ae8
	Namespace: namespace_1d795d47
	Checksum: 0x4B808A76
	Offset: 0x7F50
	Size: 0x391
	Parameters: 2
	Flags: None
*/
function function_bfe10ae8(var_4be20d44, var_13865ba1)
{
	if(function_6e2770d8(var_4be20d44))
	{
		foreach(var_c0316523 in var_4be20d44)
		{
			function_bfe10ae8(var_c0316523, var_13865ba1);
		}
		break;
	}
	if(isdefined(level.var_e07f6589[var_4be20d44]))
	{
		if(!(isdefined(level.var_e07f6589[var_4be20d44].var_e27d380a) && level.var_e07f6589[var_4be20d44].var_e27d380a))
		{
			if(!function_7f41c8e7(level.var_fee90489, var_4be20d44))
			{
				if(!isdefined(level.var_fee90489))
				{
					level.var_fee90489 = [];
				}
				else if(!function_6e2770d8(level.var_fee90489))
				{
					level.var_fee90489 = function_84970cc4(level.var_fee90489);
				}
				level.var_fee90489[level.var_fee90489.size] = var_4be20d44;
			}
			level notify(var_4be20d44 + "_init");
			level.var_e07f6589[var_4be20d44].var_e27d380a = 1;
			if(!function_4bd0142f("art_review", 0))
			{
				function_b342abc7(var_4be20d44, var_13865ba1);
				if(isdefined(level.var_e07f6589[var_4be20d44].var_1ca15390))
				{
					thread [[level.var_e07f6589[var_4be20d44].var_1ca15390]](var_4be20d44, var_13865ba1);
					namespace_9f824288::function_5d2cdd99(level.var_e07f6589[var_4be20d44].var_2bc8bbd9);
				}
			}
		}
		if(!isdefined(level.var_e07f6589[var_4be20d44].var_b992dc79) && level.var_e07f6589[var_4be20d44].var_b992dc79 && isdefined(level.var_e07f6589[var_4be20d44].var_4dfe0d36))
		{
			level.var_e07f6589[var_4be20d44].var_b992dc79 = 1;
			thread [[level.var_e07f6589[var_4be20d44].var_4dfe0d36]](var_4be20d44);
		}
	}
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		namespace_d8129fdd::function_bea1c67c(var_4be20d44, var_5dc5e20a, "start");
	}
}

/*
	Name: function_c951eb3d
	Namespace: namespace_1d795d47
	Checksum: 0x2700A7FC
	Offset: 0x82F0
	Size: 0x85
	Parameters: 0
	Flags: None
*/
function function_c951eb3d()
{
	foreach(var_1d795d47 in level.var_e07f6589)
	{
		var_1d795d47.var_62e39772 = 0;
	}
}

/*
	Name: function_2d700bc6
	Namespace: namespace_1d795d47
	Checksum: 0xF07E784E
	Offset: 0x8380
	Size: 0x403
	Parameters: 4
	Flags: None
*/
function function_2d700bc6(var_4be20d44, var_13865ba1, var_a682c292, var_5dc5e20a)
{
	if(function_6e2770d8(var_4be20d44))
	{
		foreach(var_c0316523 in var_4be20d44)
		{
			function_2d700bc6(var_c0316523, var_13865ba1, var_a682c292, var_5dc5e20a);
		}
	}
	else if(isdefined(level.var_e07f6589[var_4be20d44]))
	{
		var_1abe96bf = 0;
		if(isdefined(level.var_e07f6589[var_4be20d44].var_e27d380a) && level.var_e07f6589[var_4be20d44].var_e27d380a)
		{
			var_1abe96bf = 1;
			level.var_e07f6589[var_4be20d44].var_e27d380a = 0;
			if(function_7f41c8e7(level.var_fee90489, var_4be20d44))
			{
				function_81403b2f(level.var_fee90489, var_4be20d44);
			}
			if(!function_4bd0142f("art_review", 0))
			{
				if(isdefined(level.var_e07f6589[var_4be20d44].var_41763f9c))
				{
					thread [[level.var_e07f6589[var_4be20d44].var_41763f9c]](var_4be20d44, var_13865ba1, var_a682c292, var_5dc5e20a);
				}
				function_77ff537d(var_4be20d44, var_13865ba1, var_a682c292, var_5dc5e20a);
			}
			level notify(var_4be20d44 + "_terminate");
		}
		if(!(isdefined(level.var_e07f6589[var_4be20d44].var_62e39772) && level.var_e07f6589[var_4be20d44].var_62e39772))
		{
			level.var_e07f6589[var_4be20d44].var_62e39772 = 1;
			if(!(isdefined(level.var_e07f6589[var_4be20d44].var_8ae5c6a1) && level.var_e07f6589[var_4be20d44].var_8ae5c6a1))
			{
				var_c7a5039e = level.var_e07f6589[var_4be20d44].var_c7a5039e;
				foreach(var_c0316523 in var_c7a5039e)
				{
					function_2d700bc6(var_c0316523, var_13865ba1, 0, var_5dc5e20a);
				}
			}
			else if(var_13865ba1 && !var_1abe96bf)
			{
				if(!function_4bd0142f("art_review", 0))
				{
					if(isdefined(level.var_e07f6589[var_4be20d44].var_41763f9c))
					{
						thread [[level.var_e07f6589[var_4be20d44].var_41763f9c]](var_4be20d44, var_13865ba1, 0, var_5dc5e20a);
					}
					function_77ff537d(var_4be20d44, var_13865ba1, 0, var_5dc5e20a);
				}
			}
		}
	}
}

/*
	Name: function_df118466
	Namespace: namespace_1d795d47
	Checksum: 0xB6DE3033
	Offset: 0x8790
	Size: 0x21
	Parameters: 1
	Flags: None
*/
function function_df118466(var_8d8007e7)
{
	return function_c13ce5f8(undefined, var_8d8007e7);
}

/*
	Name: function_c13ce5f8
	Namespace: namespace_1d795d47
	Checksum: 0xD1C03E7B
	Offset: 0x87C0
	Size: 0x423
	Parameters: 3
	Flags: None
*/
function function_c13ce5f8(var_5dc5e20a, var_8d8007e7, var_6194780b)
{
	if(isdefined(var_6194780b))
	{
	}
	else
	{
	}
	var_d0ef8521 = level.var_fee90489;
	if(!isdefined(var_d0ef8521) || !var_d0ef8521.size)
	{
		var_d0ef8521 = function_8b19ec5d();
		if(!isdefined(var_d0ef8521) || !var_d0ef8521.size)
		{
			var_d0ef8521 = level.var_574eb415;
		}
	}
	var_3d5de9eb = [];
	if(!isdefined(var_d0ef8521))
	{
		var_d0ef8521 = [];
	}
	else if(!function_6e2770d8(var_d0ef8521))
	{
		var_d0ef8521 = function_84970cc4(var_d0ef8521);
	}
	foreach(var_a67db03e in var_d0ef8521)
	{
		if(isdefined(level.var_e07f6589[var_a67db03e]))
		{
			if(isdefined(level.var_e07f6589[var_a67db03e].var_1028d0be) && level.var_e07f6589[var_a67db03e].var_1028d0be || (isdefined(level.var_e07f6589[var_a67db03e].var_3c612393) && level.var_e07f6589[var_a67db03e].var_3c612393))
			{
				if(!isdefined(var_3d5de9eb))
				{
					var_3d5de9eb = [];
				}
				else if(!function_6e2770d8(var_3d5de9eb))
				{
					var_3d5de9eb = function_84970cc4(var_3d5de9eb);
				}
				var_3d5de9eb[var_3d5de9eb.size] = var_a67db03e;
			}
		}
	}
	if(isdefined(var_3d5de9eb) && var_3d5de9eb.size > 0)
	{
		var_1f96054 = [];
		var_b431a153 = [];
		foreach(var_dd89f865 in var_8d8007e7)
		{
			var_dd89f865.var_9c98934d = 0;
			if(isdefined(var_dd89f865.var_ff1f6868) && function_7f41c8e7(var_3d5de9eb, var_dd89f865.var_ff1f6868))
			{
				if(!isdefined(var_b431a153))
				{
					var_b431a153 = [];
				}
				else if(!function_6e2770d8(var_b431a153))
				{
					var_b431a153 = function_84970cc4(var_b431a153);
				}
				var_b431a153[var_b431a153.size] = var_dd89f865;
				continue;
			}
			if(!isdefined(var_dd89f865.var_ff1f6868))
			{
				if(!isdefined(var_1f96054))
				{
					var_1f96054 = [];
				}
				else if(!function_6e2770d8(var_1f96054))
				{
					var_1f96054 = function_84970cc4(var_1f96054);
				}
				var_1f96054[var_1f96054.size] = var_dd89f865;
				continue;
			}
			var_dd89f865.var_9c98934d = 1;
		}
		if(var_b431a153.size > 0)
		{
			return var_b431a153;
		}
		return var_1f96054;
	}
	return var_8d8007e7;
}

/*
	Name: function_85826560
	Namespace: namespace_1d795d47
	Checksum: 0xBA3A9EB1
	Offset: 0x8BF0
	Size: 0x101
	Parameters: 1
	Flags: None
*/
function function_85826560(var_6194780b)
{
	var_1475fbe1 = namespace_4a43ba8::function_5880f755("cp_coop_spawn");
	foreach(var_18196fa5 in var_1475fbe1)
	{
		if(var_18196fa5.var_ff1f6868 == var_6194780b)
		{
			if(var_18196fa5.var_e6e9b8de === "script_model")
			{
				var_18196fa5 function_dc8c8404();
				continue;
			}
			var_18196fa5 namespace_14b42b8a::function_dc8c8404();
		}
	}
}

/*
	Name: function_b0e512a3
	Namespace: namespace_1d795d47
	Checksum: 0xF2DB3205
	Offset: 0x8D00
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_b0e512a3()
{
	level.var_696b1f33 = 1;
	var_280bac5 = function_c7f783fe();
	if(function_89664f42())
	{
		function_5563b53f(var_280bac5);
	}
	else
	{
		namespace_33b293fd::function_a7ee953(0, "Dev Block strings are not supported");
	}
	/#
	#/
}

/*
	Name: function_2711019f
	Namespace: namespace_1d795d47
	Checksum: 0xBB640EEC
	Offset: 0x8D90
	Size: 0x61
	Parameters: 0
	Flags: None
*/
function function_2711019f()
{
	while(1)
	{
		var_14bd4dfe = function_b2df7c6d();
		if(var_14bd4dfe <= level.var_897126b5)
		{
			level namespace_ad23e503::function_74d6b22f("all_players_closed_aar");
			break;
		}
		wait(1);
	}
}

/*
	Name: function_f380969b
	Namespace: namespace_1d795d47
	Checksum: 0xDCF51043
	Offset: 0x8E00
	Size: 0x29B
	Parameters: 0
	Flags: None
*/
function function_f380969b()
{
	self endon("hash_643a7daf");
	self endon("hash_33722592");
	var_67bda5a5 = self function_84368297("currentRankXP");
	var_72c4032 = self namespace_f3970517::function_a76b42cb();
	var_9e54448b = self function_84368297("hasSeenMaxLevelNotification");
	if(var_9e54448b != 1 && var_72c4032 >= namespace_f3970517::function_1f2cf483(level.var_18b023e5.size - 1))
	{
		self.var_a4c14d95 = self function_2f6b6a4c("CPMaxLevelNotification");
		self function_8f67433b("hasSeenMaxLevelNotification", 1);
	}
	else
	{
		self.var_a4c14d95 = self function_2f6b6a4c("RewardsOverlayCP");
	}
	self waittill("hash_d2c577ed", var_1df81780, var_d62110b4);
	while(var_d62110b4 != "closed")
	{
		self waittill("hash_d2c577ed", var_1df81780, var_d62110b4);
	}
	foreach(var_5dc5e20a in function_3f10449f())
	{
		if(var_5dc5e20a == self)
		{
			continue;
		}
		var_5dc5e20a notify("hash_33722592");
		var_5dc5e20a function_33722592();
	}
	self function_2b74b70a(self.var_a4c14d95);
	self.var_a4c14d95 = undefined;
	var_a6f47549 = function_c7f783fe();
	if(isdefined(var_a6f47549))
	{
		self namespace_b976075a::function_4cef9872(var_a6f47549);
	}
	level.var_897126b5++;
}

/*
	Name: function_c7f783fe
	Namespace: namespace_1d795d47
	Checksum: 0xC6EB198B
	Offset: 0x90A8
	Size: 0xD9
	Parameters: 0
	Flags: None
*/
function function_c7f783fe()
{
	var_280bac5 = function_242738e();
	if(isdefined(var_280bac5) && function_27c72c1b())
	{
		var_b952f48f = function_d6df1f20(var_280bac5, "_");
		var_a2a8516f = "cp";
		for(var_c957f6b6 = 1; var_c957f6b6 < var_b952f48f.size - 1; var_c957f6b6++)
		{
			var_a2a8516f = var_a2a8516f + "_" + var_b952f48f[var_c957f6b6];
		}
		var_280bac5 = var_a2a8516f;
	}
	return var_280bac5;
}

/*
	Name: function_ab286e9e
	Namespace: namespace_1d795d47
	Checksum: 0x514F4D9
	Offset: 0x9190
	Size: 0x10B
	Parameters: 1
	Flags: None
*/
function function_ab286e9e(var_257fc497)
{
	var_8edaf582 = self function_df7ef426(var_257fc497);
	var_571a5472 = self namespace_9f824288::function_36adbb9c("savegame_" + var_257fc497);
	var_aa6cf955 = self function_84368297("PlayerStatsByMap", function_9065d6ea(), "currentStats", var_257fc497);
	var_a74fbb99 = var_8edaf582 - var_571a5472;
	var_aa6cf955 = var_aa6cf955 + var_a74fbb99;
	self function_8f67433b("PlayerStatsByMap", function_9065d6ea(), "currentStats", var_257fc497, var_aa6cf955);
}

/*
	Name: function_61688376
	Namespace: namespace_1d795d47
	Checksum: 0x9CED6753
	Offset: 0x92A8
	Size: 0xE3
	Parameters: 0
	Flags: None
*/
function function_61688376()
{
	self endon("hash_643a7daf");
	/#
		namespace_33b293fd::function_a7ee953(isdefined(level.var_a7c3eb6f));
	#/
	/#
		namespace_33b293fd::function_a7ee953(level namespace_ad23e503::function_dbca4c5d("Dev Block strings are not supported"));
	#/
	self function_a5a105e8();
	namespace_82b91a51::function_c9aa1ff("stats_changed", 2);
	level.var_a7c3eb6f++;
	var_7fba07d2 = function_b2df7c6d();
	if(var_7fba07d2 <= level.var_a7c3eb6f)
	{
		level namespace_ad23e503::function_74d6b22f("all_players_set_aar_scoreboard");
	}
}

/*
	Name: function_88bd85cc
	Namespace: namespace_1d795d47
	Checksum: 0x8F684282
	Offset: 0x9398
	Size: 0x11B
	Parameters: 0
	Flags: None
*/
function function_88bd85cc()
{
	/#
		namespace_33b293fd::function_a7ee953(isdefined(self));
	#/
	/#
		namespace_33b293fd::function_a7ee953(function_65f192a6(self));
	#/
	if(isdefined(self.var_40ac72fa))
	{
		self function_2b74b70a(self.var_40ac72fa);
		self function_faf8f736(0);
		if(self function_e025daa7())
		{
			if(namespace_9f824288::function_f6ab8f28())
			{
				var_5fc3b52f = function_59c5ca75();
				self function_8f67433b("highestMapReached", var_5fc3b52f + 1);
			}
		}
	}
	level namespace_ad23e503::function_74d6b22f("credits_done");
}

/*
	Name: function_33722592
	Namespace: namespace_1d795d47
	Checksum: 0x5C044B6B
	Offset: 0x94C0
	Size: 0x107
	Parameters: 0
	Flags: None
*/
function function_33722592()
{
	/#
		namespace_33b293fd::function_a7ee953(isdefined(self));
	#/
	/#
		namespace_33b293fd::function_a7ee953(function_65f192a6(self));
	#/
	if(isdefined(self.var_a4c14d95))
	{
		self function_2b74b70a(self.var_a4c14d95);
		self function_5b7e454a(&"close_cpaar", 0);
		self thread namespace_ce7c3ed5::function_7e61de2b(0.1, "black");
		var_a6f47549 = function_c7f783fe();
		if(isdefined(var_a6f47549))
		{
			self namespace_b976075a::function_4cef9872(var_a6f47549);
		}
		self.var_a4c14d95 = undefined;
		level.var_897126b5++;
	}
}

/*
	Name: function_eb66277b
	Namespace: namespace_1d795d47
	Checksum: 0x6CA61F8B
	Offset: 0x95D0
	Size: 0x196B
	Parameters: 2
	Flags: None
*/
function function_eb66277b(var_1d795d47, var_13865ba1)
{
	/#
		level thread function_27c2dde4();
	#/
	if(isdefined(level.var_8118ccb1) && level.var_8118ccb1)
	{
		return;
	}
	level.var_8118ccb1 = 1;
	foreach(var_63af5576 in level.var_2395e945)
	{
		namespace_d8129fdd::function_bea1c67c("_level", var_63af5576, "complete");
		namespace_d8129fdd::function_e7f3440(var_63af5576);
	}
	function_7b818e23();
	function_b0c6f02d(1, level.var_6c41e242);
	if(level.var_6e1075a2 !== 0)
	{
		level namespace_ce7c3ed5::function_7e61de2b(1);
	}
	var_280bac5 = undefined;
	if(function_92b261a3())
	{
		level thread function_9a7d9229();
		level namespace_ad23e503::function_c35e6aab("credits_done");
		foreach(var_5dc5e20a in level.var_2395e945)
		{
			var_5dc5e20a thread function_4aa085d7();
		}
		var_280bac5 = function_f4afdfcc(0);
		level namespace_ad23e503::function_1ab5ebec("credits_done");
	}
	else
	{
		var_280bac5 = function_c7f783fe();
	}
	if(isdefined(var_280bac5))
	{
		/#
			if(var_1d795d47 == "Dev Block strings are not supported" && var_13865ba1)
			{
				wait(4);
			}
		#/
		world.var_a6f47549 = var_280bac5;
		if(!isdefined(world.var_33c691cb) || function_59c5ca75(var_280bac5) > function_59c5ca75(world.var_33c691cb) && namespace_9f824288::function_f6ab8f28())
		{
			world.var_33c691cb = var_280bac5;
			var_5fc3b52f = function_59c5ca75(var_280bac5);
			foreach(var_5dc5e20a in level.var_2395e945)
			{
				if(var_5dc5e20a function_e025daa7())
				{
					var_5dc5e20a function_8f67433b("highestMapReached", var_5fc3b52f);
					break;
				}
			}
		}
		world.var_80f3ca12 = level.var_cd724008;
		level namespace_71e9cb84::function_331efedc("set_last_map_dvar");
		level namespace_fe079222::function_68d7ee52(var_280bac5);
		if(function_89664f42() || function_27c72c1b())
		{
			var_521f25b4 = function_1a7f8d9(var_280bac5);
			if(isdefined(var_521f25b4))
			{
				function_6df659a8(var_521f25b4);
			}
			if(!(isdefined(level.var_696b1f33) && level.var_696b1f33))
			{
				if(function_27c72c1b())
				{
					if(!function_92b261a3())
					{
						function_ad95a4a4(var_280bac5);
					}
				}
				else
				{
					function_ad95a4a4(var_280bac5);
				}
				function_3f5625b4("", 1);
			}
		}
		else
		{
			var_45e618b3 = function_4eafb564();
			if(isdefined(var_45e618b3))
			{
				function_6df659a8(var_45e618b3);
			}
			if(!(isdefined(level.var_696b1f33) && level.var_696b1f33))
			{
				function_6c1294b8("cp_queued_level", var_280bac5);
				var_f26d4e96 = namespace_82b91a51::function_3eb32a89(var_280bac5);
				function_ad95a4a4(var_f26d4e96);
				function_3f5625b4("", 1);
			}
		}
	}
	namespace_82b91a51::function_76f13293();
	function_677539fe("");
	foreach(var_5dc5e20a in function_3f10449f())
	{
		var_5dc5e20a namespace_5dc5e20a::function_18cd2f76();
		var_5dc5e20a namespace_9f824288::function_bee608f0("saved_weapon", var_5dc5e20a.var_88c6e52a.var_4be20d44);
		var_5dc5e20a namespace_9f824288::function_bee608f0("saved_weapondata", var_5dc5e20a.var_ae42e42f);
		var_5dc5e20a namespace_9f824288::function_bee608f0("lives", var_5dc5e20a.var_dc4a16f6);
		var_5dc5e20a.var_ae42e42f = undefined;
		var_5dc5e20a.var_8db39318 = undefined;
	}
	if(function_27c72c1b())
	{
		var_a6f47549 = function_c7f783fe();
		if(isdefined(var_a6f47549) && function_cb7247d8(var_a6f47549))
		{
			foreach(var_5dc5e20a in level.var_2395e945)
			{
				var_5dc5e20a namespace_b976075a::function_4cef9872(var_a6f47549);
			}
		}
	}
	function_9a7ed193();
	if(!function_92b261a3())
	{
		if(function_4bd0142f("tu1_saveNextMapOnLevelComplete", 1))
		{
			var_a6f47549 = function_c7f783fe();
			if(isdefined(var_a6f47549))
			{
				function_3f5625b4("", 1);
				function_ba933d27(var_a6f47549);
			}
			else
			{
				function_ba933d27();
			}
		}
		else
		{
			function_ba933d27();
		}
	}
	if(!isdefined(var_280bac5) || function_cb7247d8(var_280bac5))
	{
		foreach(var_6bfe1586 in level.var_2395e945)
		{
			if(function_4bd0142f("ui_blocksaves") == 0 && var_6bfe1586 function_e025daa7() && isdefined(var_6bfe1586 namespace_9f824288::function_36adbb9c("savegame_score")))
			{
				var_6bfe1586 namespace_9f824288::function_bee608f0("savegame_score", var_6bfe1586.var_44fb8955["score"]);
				var_6bfe1586 namespace_9f824288::function_bee608f0("savegame_kills", var_6bfe1586.var_44fb8955["kills"]);
				var_6bfe1586 namespace_9f824288::function_bee608f0("savegame_assists", var_6bfe1586.var_44fb8955["assists"]);
				var_6bfe1586 namespace_9f824288::function_bee608f0("savegame_incaps", var_6bfe1586.var_44fb8955["incaps"]);
				var_6bfe1586 namespace_9f824288::function_bee608f0("savegame_revives", var_6bfe1586.var_44fb8955["revives"]);
				var_6bfe1586 function_ab286e9e("score");
				var_6bfe1586 function_ab286e9e("kills");
				var_6bfe1586 function_ab286e9e("assists");
				var_6bfe1586 function_ab286e9e("incaps");
				var_6bfe1586 function_ab286e9e("revives");
				var_6bfe1586 namespace_9f824288::function_bee608f0("savegame_score", undefined);
				var_6bfe1586 namespace_9f824288::function_bee608f0("savegame_kills", undefined);
				var_6bfe1586 namespace_9f824288::function_bee608f0("savegame_assists", undefined);
				var_6bfe1586 namespace_9f824288::function_bee608f0("savegame_incaps", undefined);
				var_6bfe1586 namespace_9f824288::function_bee608f0("savegame_revives", undefined);
				var_6bfe1586 namespace_82b91a51::function_c9aa1ff("stats_changed", 2);
			}
			if(!isdefined(function_9065d6ea()))
			{
				break;
			}
			var_6bfe1586 namespace_9f824288::function_bee608f0("saved_weapon", undefined);
			var_6bfe1586 namespace_9f824288::function_bee608f0("saved_weapondata", undefined);
			var_6bfe1586 namespace_9f824288::function_bee608f0("lives", undefined);
			var_1e8a9261 = !var_6bfe1586 function_84368297("PlayerStatsByMap", function_9065d6ea(), "hasBeenCompleted");
			if(isdefined(var_1e8a9261) && var_1e8a9261)
			{
				var_6bfe1586 function_8f67433b("PlayerStatsByMap", function_9065d6ea(), "hasBeenCompleted", 1);
				if(function_bac7e7e9())
				{
					var_6bfe1586 function_8f67433b("PlayerStatsByMap", function_9065d6ea(), "firstTimeCompletedUTC", function_babc1ddb());
				}
				var_6bfe1586 thread namespace_f74b04eb::function_96ed590f("career_tokens");
				var_6bfe1586 function_9320359d(1);
			}
			if(var_6bfe1586 function_8295f89d(level.var_57830ddc))
			{
				switch(level.var_57830ddc)
				{
					case 0:
					{
						break;
					}
					case 1:
					{
						break;
					}
					case 2:
					{
						break;
					}
					case 3:
					{
						var_6bfe1586 function_f07412c0("cp_medal_complete_on_veteran");
						break;
					}
					case 4:
					{
						var_6bfe1586 function_f07412c0("cp_medal_complete_on_veteran");
						var_6bfe1586 function_f07412c0("cp_medal_complete_on_realistic");
						break;
					}
				}
			}
			var_6bfe1586 function_8f67433b("PlayerStatsByMap", function_9065d6ea(), "completedDifficulties", level.var_57830ddc, 1);
			var_a4b6fa1f = var_6bfe1586 function_84368297("PlayerStatsByMap", function_9065d6ea(), "highestStats", "HIGHEST_DIFFICULTY");
			if(function_bac7e7e9())
			{
				var_6bfe1586 function_8f67433b("PlayerStatsByMap", function_9065d6ea(), "lastCompletedUTC", function_babc1ddb());
				var_1ee78bf0 = var_6bfe1586 function_84368297("PlayerStatsByMap", function_9065d6ea(), "numCompletions");
				if(isdefined(var_1ee78bf0))
				{
					var_6bfe1586 function_8f67433b("PlayerStatsByMap", function_9065d6ea(), "numCompletions", var_1ee78bf0 + 1);
				}
			}
			function_59b5106b("defeat_level", "game_level", function_9065d6ea(), "game_difficulty_lowest", level.var_57830ddc, "game_difficulty_highest", level.var_a76de5fa, "game_difficulty", level.var_6c41e242, "player_count", level.var_2395e945.size, "level_duration", GetTime() - level.var_a4ad846c);
			if(level.var_57830ddc > var_a4b6fa1f)
			{
				var_6bfe1586 function_8f67433b("PlayerStatsByMap", function_9065d6ea(), "highestStats", "HIGHEST_DIFFICULTY", level.var_57830ddc);
			}
			var_6bfe1586 function_178f7e85(function_9065d6ea(), level.var_57830ddc);
			namespace_4a344d81::function_733a6065(var_6bfe1586, function_9065d6ea(), level.var_57830ddc, function_27c72c1b());
			if(level.var_57830ddc >= 2)
			{
				var_6bfe1586 notify("hash_ee109657", level.var_31b95173);
				var_6bfe1586 function_aa67c13b("mission_diff_" + function_f45850ec(function_4794dda(), 0, 3), 1);
			}
			var_6bfe1586 function_95093ed5();
			var_6bfe1586 namespace_9f824288::function_bee608f0("last_mission", "");
			var_6bfe1586 function_628760b4();
			var_6bfe1586 function_8f67433b("PlayerStatsByMap", function_9065d6ea(), "lastCompletedDifficulty", level.var_57830ddc);
			if(!var_6bfe1586 namespace_8f94416a::function_25328f50("cp_medal_no_deaths"))
			{
				if(level.var_57830ddc >= 3 && (!isdefined(world.var_bf966ebd) && world.var_bf966ebd))
				{
					var_6bfe1586 function_8f67433b("PlayerStatsByMap", function_9065d6ea(), "checkpointUsed", 0);
					if(var_6bfe1586 namespace_8f94416a::function_931263b1(3))
					{
						var_6bfe1586 function_f07412c0("cp_medal_no_deaths");
					}
				}
				else if(var_a4b6fa1f >= 3 && (!isdefined(var_6bfe1586 function_84368297("PlayerStatsByMap", function_9065d6ea(), "checkpointUsed")) && var_6bfe1586 function_84368297("PlayerStatsByMap", function_9065d6ea(), "checkpointUsed")))
				{
				}
				else
				{
					var_6bfe1586 function_8f67433b("PlayerStatsByMap", function_9065d6ea(), "checkpointUsed", 1);
				}
			}
			if(var_6bfe1586 namespace_8f94416a::function_bea4ff57())
			{
				var_6bfe1586 function_f07412c0("cp_medal_all_weapon_unlocks");
			}
		}
	}
	level namespace_ad23e503::function_c35e6aab("all_players_set_aar_scoreboard");
	level.var_a7c3eb6f = 0;
	foreach(var_5dc5e20a in function_3f10449f())
	{
		var_5dc5e20a thread function_61688376();
	}
	level namespace_ad23e503::function_d266a8b4(3, "all_players_set_aar_scoreboard");
	function_54fdc879();
	world.var_bf966ebd = undefined;
	function_e73290af("draw");
	namespace_b976075a::function_5637de0a();
	function_db4939d1();
	if(isdefined(var_280bac5))
	{
		if(isdefined(level.var_d086f08f) && level.var_d086f08f && !function_27c72c1b())
		{
			level namespace_fe079222::function_68d7ee52(var_280bac5);
			foreach(var_6bfe1586 in level.var_2395e945)
			{
				var_6bfe1586 function_8f67433b("PlayerStatsByMap", function_9065d6ea(), "lastCompletedDifficulty", level.var_57830ddc);
				if(var_6bfe1586 namespace_8f94416a::function_e72fc18())
				{
					var_6bfe1586 function_f07412c0("cp_medal_all_accolades");
				}
			}
			level namespace_ad23e503::function_c35e6aab("all_players_closed_aar");
			level.var_897126b5 = 0;
			level thread function_2711019f();
			for(var_c957f6b6 = 0; var_c957f6b6 < level.var_2395e945.size; var_c957f6b6++)
			{
				level.var_2395e945[var_c957f6b6] thread function_f380969b();
			}
			namespace_dabbe128::function_356a4ee1(&function_3fbee503);
			if(!function_92b261a3())
			{
				namespace_82b91a51::function_ef3f75eb("aar");
				namespace_ccb8d056::function_c1cdedfb("aar");
			}
			level namespace_ad23e503::function_1ab5ebec("all_players_closed_aar");
		}
		else if(!function_27c72c1b())
		{
			if(function_cb7247d8(var_280bac5))
			{
				foreach(var_5dc5e20a in function_3f10449f())
				{
					var_5dc5e20a namespace_9f824288::function_bee608f0("show_aar", 1);
				}
			}
			else
			{
				world.var_2c7a40d3 = undefined;
			}
		}
		if(!function_92b261a3())
		{
			function_a63aee74();
			function_9a7ed193();
		}
		else
		{
			level notify("hash_504f6a41");
			namespace_ccb8d056::function_c1cdedfb("death");
			wait(1);
			if(function_27c72c1b())
			{
				function_9a7ed193();
				function_7d3cac7d(0);
			}
			else
			{
				function_a63aee74();
				function_9a7ed193();
			}
		}
	}
	else
	{
		function_9a7ed193();
		function_7d3cac7d(0);
	}
}

/*
	Name: function_3d23f76a
	Namespace: namespace_1d795d47
	Checksum: 0x9A7A2330
	Offset: 0xAF48
	Size: 0x37
	Parameters: 0
	Flags: None
*/
function function_3d23f76a()
{
	self endon("hash_643a7daf");
	while(1)
	{
		self function_faf8f736(1);
		wait(0.05);
	}
}

/*
	Name: function_3fbee503
	Namespace: namespace_1d795d47
	Checksum: 0x35EBDAC0
	Offset: 0xAF88
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_3fbee503()
{
	self endon("hash_643a7daf");
	level.var_897126b5++;
	self namespace_82b91a51::function_16c71b8(1);
	self thread function_3d23f76a();
	var_d21ab194 = self function_2f6b6a4c("SpinnerFullscreenBlack");
	level namespace_ad23e503::function_1ab5ebec("all_players_closed_aar");
	self function_2b74b70a(var_d21ab194);
}

/*
	Name: function_4aa085d7
	Namespace: namespace_1d795d47
	Checksum: 0xA9660B8B
	Offset: 0xB040
	Size: 0x193
	Parameters: 0
	Flags: None
*/
function function_4aa085d7()
{
	self endon("hash_643a7daf");
	self endon("hash_88bd85cc");
	if(isdefined(self))
	{
		self.var_40ac72fa = self function_2f6b6a4c("Credit_Fullscreen", 1);
		self function_faf8f736(1);
		self waittill("hash_d2c577ed", var_1df81780, var_d62110b4);
		self function_2b74b70a(self.var_40ac72fa);
		self function_faf8f736(0);
		self.var_40ac72fa = undefined;
		foreach(var_5dc5e20a in function_3f10449f())
		{
			if(var_5dc5e20a == self)
			{
				continue;
			}
			var_5dc5e20a notify("hash_88bd85cc");
			var_5dc5e20a function_88bd85cc();
		}
		level namespace_ad23e503::function_74d6b22f("credits_done");
	}
}

/*
	Name: function_9a7d9229
	Namespace: namespace_1d795d47
	Checksum: 0x3F576D67
	Offset: 0xB1E0
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_9a7d9229()
{
	level endon("hash_504f6a41");
	wait(59);
	namespace_ccb8d056::function_c1cdedfb("unstoppable_credits");
	wait(148);
	namespace_ccb8d056::function_c1cdedfb("credits_song_3");
	wait(85);
	namespace_ccb8d056::function_c1cdedfb("credits_song_loop");
}

/*
	Name: function_cb7247d8
	Namespace: namespace_1d795d47
	Checksum: 0x6B704031
	Offset: 0xB258
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_cb7247d8(var_b8fc874d)
{
	return !function_7ddcd415(var_b8fc874d);
}

/*
	Name: function_df7ef426
	Namespace: namespace_1d795d47
	Checksum: 0x902EC35
	Offset: 0xB288
	Size: 0xF9
	Parameters: 2
	Flags: None
*/
function function_df7ef426(var_257fc497, var_fb4674a9)
{
	if(!isdefined(var_fb4674a9))
	{
		var_fb4674a9 = function_9065d6ea();
	}
	var_c10ccfdf = self function_84368297("PlayerStatsByMap", var_fb4674a9, "currentStats", var_257fc497);
	var_9948d116 = self function_84368297("PlayerStatsList", var_257fc497, "statValue");
	/#
		namespace_33b293fd::function_a7ee953(var_c10ccfdf <= var_9948d116);
	#/
	return function_b6b79a0(function_69c2f683(var_9948d116 - var_c10ccfdf));
}

/*
	Name: function_95093ed5
	Namespace: namespace_1d795d47
	Checksum: 0xD4D3D9FA
	Offset: 0xB390
	Size: 0x39B
	Parameters: 1
	Flags: None
*/
function function_95093ed5(var_fb4674a9)
{
	if(!isdefined(var_fb4674a9))
	{
		var_fb4674a9 = function_9065d6ea();
	}
	var_32c2816f = [];
	namespace_84970cc4::function_69554b3e(var_32c2816f, "KILLS");
	namespace_84970cc4::function_69554b3e(var_32c2816f, "SCORE");
	namespace_84970cc4::function_69554b3e(var_32c2816f, "ASSISTS");
	namespace_84970cc4::function_69554b3e(var_32c2816f, "REVIVES");
	foreach(var_8dca536c in var_32c2816f)
	{
		var_43ea6c98 = function_df7ef426(var_8dca536c, var_fb4674a9);
		/#
			namespace_33b293fd::function_a7ee953(var_43ea6c98 >= 0);
		#/
		var_c2a4cf78 = self function_84368297("PlayerStatsByMap", var_fb4674a9, "highestStats", var_8dca536c);
		if(var_43ea6c98 > var_c2a4cf78)
		{
			self function_8f67433b("PlayerStatsByMap", var_fb4674a9, "highestStats", var_8dca536c, var_43ea6c98);
		}
	}
	var_43ea6c98 = function_df7ef426("INCAPS", var_fb4674a9);
	if(!(isdefined(self function_84368297("PlayerStatsByMap", var_fb4674a9, "hasBeenCompleted") != 1) && self function_84368297("PlayerStatsByMap", var_fb4674a9, "hasBeenCompleted") != 1))
	{
		self function_8f67433b("PlayerStatsByMap", var_fb4674a9, "highestStats", "INCAPS", var_43ea6c98);
	}
	else
	{
		var_c2a4cf78 = self function_84368297("PlayerStatsByMap", var_fb4674a9, "highestStats", "INCAPS");
		if(var_43ea6c98 < var_c2a4cf78)
		{
			self function_8f67433b("PlayerStatsByMap", var_fb4674a9, "highestStats", "INCAPS", var_43ea6c98);
		}
	}
	if(level.var_57830ddc >= 2)
	{
		var_c2a4cf78 = self function_84368297("PlayerStatsByMap", function_9065d6ea(), "highestStats", "INCAPS");
		if(var_c2a4cf78 == 0)
		{
			self thread namespace_f74b04eb::function_96ed590f("mission_diff_nodeaths");
		}
	}
}

/*
	Name: function_8295f89d
	Namespace: namespace_1d795d47
	Checksum: 0x354B878D
	Offset: 0xB738
	Size: 0x137
	Parameters: 1
	Flags: None
*/
function function_8295f89d(var_3f0972ca)
{
	if(self function_84368297("PlayerStatsByMap", function_9065d6ea(), "completedDifficulties", var_3f0972ca) == 1)
	{
		return 0;
	}
	var_cfc9cbb7 = function_23eda99c();
	foreach(var_1a443ebd in var_cfc9cbb7)
	{
		if(var_1a443ebd == function_9065d6ea())
		{
			continue;
		}
		if(self function_84368297("PlayerStatsByMap", var_1a443ebd, "completedDifficulties", var_3f0972ca) == 0)
		{
			return 0;
		}
	}
	return 1;
}

/*
	Name: function_178f7e85
	Namespace: namespace_1d795d47
	Checksum: 0x41890999
	Offset: 0xB878
	Size: 0x20D
	Parameters: 2
	Flags: None
*/
function function_178f7e85(var_deb20b04, var_3f0972ca)
{
	if(self function_84368297("PlayerStatsByMap", var_deb20b04, "receivedXPForDifficulty", var_3f0972ca) != 0)
	{
		return;
	}
	for(var_c957f6b6 = var_3f0972ca; var_c957f6b6 >= 0; var_c957f6b6--)
	{
		if(self function_84368297("PlayerStatsByMap", var_deb20b04, "receivedXPForDifficulty", var_c957f6b6) == 0)
		{
			switch(var_c957f6b6)
			{
				case 0:
				{
					self function_37b6567c("complete_mission_recruit");
					break;
				}
				case 1:
				{
					self function_37b6567c("complete_mission_regular");
					break;
				}
				case 2:
				{
					self function_37b6567c("complete_mission_hardened");
					self thread namespace_f74b04eb::function_96ed590f("career_difficulty_hard");
					break;
				}
				case 3:
				{
					self function_37b6567c("complete_mission_veteran");
					self thread namespace_f74b04eb::function_96ed590f("career_difficulty_vet");
					break;
				}
				case 4:
				{
					self function_37b6567c("complete_mission_heroic");
					self thread namespace_f74b04eb::function_96ed590f("career_difficulty_real");
					break;
				}
			}
			self function_8f67433b("PlayerStatsByMap", var_deb20b04, "receivedXPForDifficulty", var_c957f6b6, 1);
		}
	}
}

/*
	Name: function_a5a105e8
	Namespace: namespace_1d795d47
	Checksum: 0x9EE42BB2
	Offset: 0xBA90
	Size: 0x25D
	Parameters: 0
	Flags: None
*/
function function_a5a105e8()
{
	var_d47e142e = function_3f10449f();
	for(var_c957f6b6 = 0; var_c957f6b6 < var_d47e142e.size; var_c957f6b6++)
	{
		var_6bfe1586 = var_d47e142e[var_c957f6b6];
		var_270018c4 = var_6bfe1586 function_c7f3ce11();
		var_a4306248 = var_6bfe1586 function_df7ef426("score");
		var_aae80abd = var_6bfe1586 function_df7ef426("kills");
		var_8ce58b30 = var_6bfe1586 function_df7ef426("incaps");
		var_fcdd29fe = var_6bfe1586 function_df7ef426("assists");
		var_5c1478bc = var_6bfe1586 function_df7ef426("revives");
		self function_8f67433b("AfterActionReportStats", "playerStats", var_270018c4, "score", var_a4306248);
		self function_8f67433b("AfterActionReportStats", "playerStats", var_270018c4, "kills", var_aae80abd);
		self function_8f67433b("AfterActionReportStats", "playerStats", var_270018c4, "deaths", var_8ce58b30);
		self function_8f67433b("AfterActionReportStats", "playerStats", var_270018c4, "assists", var_fcdd29fe);
		self function_8f67433b("AfterActionReportStats", "playerStats", var_270018c4, "revives", var_5c1478bc);
	}
}

/*
	Name: function_54fdc879
	Namespace: namespace_1d795d47
	Checksum: 0x4E640D9
	Offset: 0xBCF8
	Size: 0x179
	Parameters: 0
	Flags: None
*/
function function_54fdc879()
{
	var_cfc9cbb7 = function_23eda99c();
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_6511b67a = 1;
		foreach(var_1a443ebd in var_cfc9cbb7)
		{
			if(var_5dc5e20a function_84368297("PlayerStatsByMap", var_1a443ebd, "hasBeenCompleted") == 0)
			{
				var_6511b67a = 0;
				break;
			}
		}
		if(var_6511b67a)
		{
			var_5dc5e20a function_8f67433b("zmCampaignData", "unlocked", 1);
		}
	}
}

/*
	Name: function_b342abc7
	Namespace: namespace_1d795d47
	Checksum: 0x7A44328D
	Offset: 0xBE80
	Size: 0x85
	Parameters: 2
	Flags: Private
*/
function private function_b342abc7(var_1d795d47, var_13865ba1)
{
	if(isdefined(level.var_dc323706))
	{
		[[level.var_dc323706]](var_1d795d47, var_13865ba1);
	}
	level namespace_ad23e503::function_74d6b22f(var_1d795d47);
	level thread function_da2e7bff(var_1d795d47);
	level.var_c0e97bd = var_1d795d47;
	level notify("hash_7b06f432");
}

/*
	Name: function_ab12ef82
	Namespace: namespace_1d795d47
	Checksum: 0x60DF9955
	Offset: 0xBF10
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_ab12ef82(var_4ac85f5f)
{
	namespace_82b91a51::function_ab12ef82(var_4ac85f5f);
}

/*
	Name: function_77ff537d
	Namespace: namespace_1d795d47
	Checksum: 0xBF3327C7
	Offset: 0xBF40
	Size: 0x299
	Parameters: 4
	Flags: Private
*/
function private function_77ff537d(var_1d795d47, var_13865ba1, var_a682c292, var_5dc5e20a)
{
	if(isdefined(level.var_e8899224))
	{
		[[level.var_e8899224]]();
	}
	level namespace_ad23e503::function_9d134160(var_1d795d47);
	level namespace_ad23e503::function_74d6b22f(var_1d795d47 + "_completed");
	if(!isdefined(level.var_e07f6589[var_1d795d47]))
	{
		/#
			namespace_33b293fd::function_94739542("Dev Block strings are not supported" + var_1d795d47);
		#/
	}
	if(!(isdefined(level.var_f6ded45a) && level.var_f6ded45a))
	{
		waittillframeend;
		var_a1749b84 = function_99201f25(var_1d795d47, "script_objective");
		foreach(var_aa10fce8 in var_a1749b84)
		{
			if(function_5cfb84bb(var_aa10fce8))
			{
				if(!isdefined(level.var_6a876531) || !function_7f41c8e7(level.var_6a876531, var_aa10fce8))
				{
					var_aa10fce8 thread namespace_82b91a51::function_f6e4f19a();
				}
				continue;
			}
			if(function_85e4c3b3(var_aa10fce8))
			{
				var_aa10fce8.var_3e3a41eb = 1;
				var_aa10fce8 notify("hash_128f8789");
				if(!function_5b49d38c(var_aa10fce8))
				{
					var_aa10fce8 function_dc8c8404();
				}
				continue;
			}
			if(function_27c72c1b() && var_aa10fce8.var_caae374e === "bonuszm_magicbox")
			{
				if(isdefined(level.var_380bc8b7))
				{
					[[level.var_380bc8b7]](var_aa10fce8);
				}
				continue;
			}
			var_aa10fce8 function_dc8c8404();
		}
	}
}

/*
	Name: function_da2e7bff
	Namespace: namespace_1d795d47
	Checksum: 0xF10A5D87
	Offset: 0xC1E8
	Size: 0x101
	Parameters: 1
	Flags: None
*/
function function_da2e7bff(var_4be20d44)
{
	var_f09f58e0 = undefined;
	var_41c34432 = function_99201f25("objective", "targetname");
	foreach(var_4dbf3ae3 in var_41c34432)
	{
		if(var_4dbf3ae3.var_ff1f6868 == var_4be20d44)
		{
			if(!isdefined(var_f09f58e0))
			{
				var_f09f58e0 = var_4dbf3ae3;
			}
			var_f09f58e0 thread function_397eb920(var_4dbf3ae3, var_4be20d44);
		}
	}
}

/*
	Name: function_d61fbd4b
	Namespace: namespace_1d795d47
	Checksum: 0xAC583600
	Offset: 0xC2F8
	Size: 0xAB
	Parameters: 1
	Flags: None
*/
function function_d61fbd4b(var_4dbf3ae3)
{
	foreach(var_5dc5e20a in function_3f10449f())
	{
		if(!var_5dc5e20a function_32fa5072(var_4dbf3ae3))
		{
			return 0;
		}
	}
	return 1;
}

/*
	Name: function_eb0ecd7a
	Namespace: namespace_1d795d47
	Checksum: 0xC5A7A133
	Offset: 0xC3B0
	Size: 0x16F
	Parameters: 2
	Flags: None
*/
function function_eb0ecd7a(var_4dbf3ae3, var_4be20d44)
{
	var_4dbf3ae3 endon("hash_128f8789");
	level endon(var_4be20d44 + "_terminate");
	if(var_4dbf3ae3.var_caae374e === "allplayers")
	{
		do
		{
			var_4dbf3ae3 waittill("hash_4dbf3ae3", var_5dc5e20a);
		}
		while(!!function_d61fbd4b(var_4dbf3ae3));
		break;
	}
	var_4dbf3ae3 waittill("hash_4dbf3ae3", var_5dc5e20a);
	if(var_4dbf3ae3.var_caae374e === "warpplayers")
	{
		foreach(var_5ef36723 in level.var_2395e945)
		{
			if(var_5ef36723 != var_5dc5e20a)
			{
				var_5ef36723 thread function_eb7240f8();
			}
		}
	}
	level thread function_be8adfb8(var_4dbf3ae3.var_ff1f6868, var_5dc5e20a);
	return var_5dc5e20a;
}

/*
	Name: function_397eb920
	Namespace: namespace_1d795d47
	Checksum: 0x6782AF96
	Offset: 0xC528
	Size: 0x55
	Parameters: 2
	Flags: None
*/
function function_397eb920(var_4dbf3ae3, var_4be20d44)
{
	self endon("hash_397eb920");
	var_5dc5e20a = function_eb0ecd7a(var_4dbf3ae3, var_4be20d44);
	self notify("hash_397eb920");
}

/*
	Name: function_eb7240f8
	Namespace: namespace_1d795d47
	Checksum: 0xA7318D0
	Offset: 0xC588
	Size: 0xA1
	Parameters: 0
	Flags: None
*/
function function_eb7240f8()
{
	self.var_584b97b7 = 0;
	self.var_4f57d739 = 0;
	var_aa61e82a = undefined;
	if(isdefined(self.var_fa504f21))
	{
		var_aa61e82a = GetTime() - self.var_fa504f21 / 1000;
	}
	if(self namespace_564407fb::function_38a9aff8())
	{
		self notify("hash_d397bc5c");
		waittillframeend;
	}
	self notify("hash_128f8789");
	self thread [[level.var_f3db290b]](var_aa61e82a);
	self.var_fa504f21 = undefined;
}

/*
	Name: function_143fd222
	Namespace: namespace_1d795d47
	Checksum: 0x7B557F5D
	Offset: 0xC638
	Size: 0x247
	Parameters: 0
	Flags: None
*/
function function_143fd222()
{
	var_e276a329 = namespace_14b42b8a::function_7faf4c39("entity_objective_loc");
	foreach(var_5bcacdf4 in var_e276a329)
	{
		if(!isdefined(var_5bcacdf4.var_6ab6f4fd))
		{
			var_5bcacdf4.var_6ab6f4fd = (0, 0, 0);
		}
		if(isdefined(var_5bcacdf4.var_ff1f6868) && isdefined(level.var_e07f6589[var_5bcacdf4.var_ff1f6868]))
		{
			if(!isdefined(level.var_e07f6589[var_5bcacdf4.var_ff1f6868].var_17618905))
			{
				level.var_e07f6589[var_5bcacdf4.var_ff1f6868].var_17618905 = [];
			}
			else if(!function_6e2770d8(level.var_e07f6589[var_5bcacdf4.var_ff1f6868].var_17618905))
			{
				level.var_e07f6589[var_5bcacdf4.var_ff1f6868].var_17618905 = function_84970cc4(level.var_e07f6589[var_5bcacdf4.var_ff1f6868].var_17618905);
			}
			level.var_e07f6589[var_5bcacdf4.var_ff1f6868].var_17618905[level.var_e07f6589[var_5bcacdf4.var_ff1f6868].var_17618905.size] = var_5bcacdf4;
		}
	}
	for(;;)
	{
		level waittill("hash_4b5852e7", var_d0ef8521);
		function_be04f9a5(var_d0ef8521);
	}
}

/*
	Name: function_be04f9a5
	Namespace: namespace_1d795d47
	Checksum: 0x38D1310F
	Offset: 0xC888
	Size: 0x10F
	Parameters: 1
	Flags: None
*/
function function_be04f9a5(var_d0ef8521)
{
	foreach(var_a67db03e in var_d0ef8521)
	{
		foreach(var_5bcacdf4 in level.var_e07f6589[var_a67db03e].var_17618905)
		{
			thread function_1c1454cd(var_5bcacdf4);
		}
	}
}

/*
	Name: function_1c1454cd
	Namespace: namespace_1d795d47
	Checksum: 0x28DFC60A
	Offset: 0xC9A0
	Size: 0x4E1
	Parameters: 1
	Flags: None
*/
function function_1c1454cd(var_5bcacdf4)
{
	var_b3db42a9 = function_99201f25(var_5bcacdf4.var_b07228b6, "targetname");
	if(isdefined(var_5bcacdf4.var_caae374e) && var_5bcacdf4.var_caae374e == "relative")
	{
		var_d007da9e = 0;
		if(isdefined(var_5bcacdf4.var_8202763a))
		{
			var_d007da9e = var_5bcacdf4.var_8202763a;
		}
		if(var_d007da9e == 0)
		{
			var_d007da9e = 0.05;
		}
		foreach(var_b07228b6 in var_b3db42a9)
		{
			if(!isdefined(var_b07228b6.var_2c2e94d1))
			{
				var_b07228b6.var_2c2e94d1 = var_5bcacdf4;
				var_b07228b6.var_86803507 = var_5bcacdf4;
			}
			else
			{
				var_2c2e94d1 = var_b07228b6.var_86803507;
			}
			if(!isdefined(var_2c2e94d1))
			{
				var_2c2e94d1 = var_5bcacdf4;
				var_d007da9e = 0.05;
				continue;
			}
			/#
				namespace_33b293fd::function_a7ee953(var_2c2e94d1 == var_b07228b6.var_86803507, "Dev Block strings are not supported");
			#/
		}
		if(!isdefined(var_2c2e94d1) || var_2c2e94d1 == var_5bcacdf4)
		{
			return;
		}
		var_d8729916 = function_9b7fda5e("script_origin", var_2c2e94d1.var_722885f3);
		var_d8729916.var_6ab6f4fd = var_2c2e94d1.var_6ab6f4fd;
		foreach(var_b07228b6 in var_b3db42a9)
		{
			var_b07228b6 function_37f7858a(var_d8729916, "", var_d8729916 function_7a465687(var_b07228b6.var_722885f3), var_b07228b6.var_6ab6f4fd - var_d8729916.var_6ab6f4fd);
		}
		namespace_82b91a51::function_76f13293();
		var_d8729916 function_a96a2721(var_5bcacdf4.var_722885f3, var_d007da9e);
		var_d8729916 function_c0b6566f(var_5bcacdf4.var_6ab6f4fd, var_d007da9e);
		var_d8729916 waittill("hash_a21db68a");
		foreach(var_b07228b6 in var_b3db42a9)
		{
			var_b07228b6.var_86803507 = var_5bcacdf4;
			var_b07228b6 function_52fddbd0();
		}
		var_d8729916 function_dc8c8404();
		break;
	}
	foreach(var_b07228b6 in var_b3db42a9)
	{
		var_b07228b6.var_722885f3 = var_5bcacdf4.var_722885f3;
		if(isdefined(var_5bcacdf4.var_6ab6f4fd))
		{
			var_b07228b6.var_6ab6f4fd = var_5bcacdf4.var_6ab6f4fd;
		}
	}
}

/*
	Name: function_f3e035ef
	Namespace: namespace_1d795d47
	Checksum: 0xE4066B0E
	Offset: 0xCE90
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_f3e035ef()
{
	level namespace_ad23e503::function_74d6b22f("skip_safehouse_after_map");
}

/*
	Name: function_89664f42
	Namespace: namespace_1d795d47
	Checksum: 0x9234ABC6
	Offset: 0xCEC0
	Size: 0x39
	Parameters: 0
	Flags: None
*/
function function_89664f42()
{
	return level namespace_ad23e503::function_7922262b("skip_safehouse_after_map") || function_27c72c1b();
}

/*
	Name: function_272e1c8d
	Namespace: namespace_1d795d47
	Checksum: 0xD3F81F36
	Offset: 0xCF08
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_272e1c8d()
{
	level namespace_ad23e503::function_74d6b22f("final_level");
}

/*
	Name: function_92b261a3
	Namespace: namespace_1d795d47
	Checksum: 0x1A5026A8
	Offset: 0xCF38
	Size: 0x21
	Parameters: 0
	Flags: None
*/
function function_92b261a3()
{
	return level namespace_ad23e503::function_7922262b("final_level");
}

/*
	Name: function_27c2dde4
	Namespace: namespace_1d795d47
	Checksum: 0xCE9AA465
	Offset: 0xCF68
	Size: 0xE1
	Parameters: 0
	Flags: None
*/
function function_27c2dde4()
{
	/#
		if(isdefined(level.var_3f831f3b) && isdefined(level.var_3f831f3b["Dev Block strings are not supported"]))
		{
			foreach(var_cc27597 in level.var_3f831f3b["Dev Block strings are not supported"])
			{
				if(!isdefined(var_cc27597.var_ce3c5f92))
				{
					function_895b00("Dev Block strings are not supported" + var_cc27597.var_4be20d44);
				}
			}
		}
	#/
}

/*
	Name: function_7b06f432
	Namespace: namespace_1d795d47
	Checksum: 0x41883B8
	Offset: 0xD058
	Size: 0x243
	Parameters: 0
	Flags: None
*/
function function_7b06f432()
{
	/#
		self endon("hash_128f8789");
		while(1)
		{
			if(isdefined(level.var_81fdc5c1) && isdefined(level.var_81fdc5c1[level.var_c0e97bd]))
			{
				var_2573320f = level.var_81fdc5c1[level.var_c0e97bd][0];
				var_f23fc04b = level.var_f2898bd7 === var_2573320f;
				if(!var_f23fc04b)
				{
					level.var_f2898bd7 = var_2573320f;
					level.var_c79b41f2 = level.var_81fdc5c1[level.var_c0e97bd][1];
					level.var_5f835655 = level.var_81fdc5c1[level.var_c0e97bd][2];
					level.var_8debf51 = level.var_81fdc5c1[level.var_c0e97bd][3];
					foreach(var_5dc5e20a in level.var_2395e945)
					{
						var_5dc5e20a notify("hash_7b06f432");
					}
				}
				else
				{
					namespace_33b293fd::function_a7ee953(level.var_c79b41f2 == level.var_81fdc5c1[level.var_c0e97bd][1], "Dev Block strings are not supported");
					/#
						namespace_33b293fd::function_a7ee953(level.var_5f835655 == level.var_81fdc5c1[level.var_c0e97bd][2], "Dev Block strings are not supported");
					#/
					/#
						namespace_33b293fd::function_a7ee953(level.var_8debf51 == level.var_81fdc5c1[level.var_c0e97bd][3], "Dev Block strings are not supported");
					#/
				}
				/#
				#/
			}
			level waittill("hash_7b06f432");
		}
	#/
}

/*
	Name: function_c40086b6
	Namespace: namespace_1d795d47
	Checksum: 0xA6E94386
	Offset: 0xD2A8
	Size: 0x1A3
	Parameters: 0
	Flags: None
*/
function function_c40086b6()
{
	/#
		self endon("hash_128f8789");
		var_98e4816d = undefined;
		while(1)
		{
			if(isdefined(level.var_f2898bd7))
			{
				if(level.var_f2898bd7 == "Dev Block strings are not supported")
				{
					if(isdefined(var_98e4816d))
					{
						self function_2b74b70a(var_98e4816d);
						var_98e4816d = undefined;
					}
				}
				else if(!isdefined(var_98e4816d))
				{
					var_98e4816d = self function_2f6b6a4c("Dev Block strings are not supported");
				}
				self namespace_ce7c3ed5::function_5f70476c(var_98e4816d, "Dev Block strings are not supported");
				if(isdefined(level.var_8debf51))
				{
					self function_3a9588ea(var_98e4816d, "Dev Block strings are not supported", level.var_f2898bd7 + "Dev Block strings are not supported" + level.var_8debf51 + "Dev Block strings are not supported");
				}
				else
				{
					self function_3a9588ea(var_98e4816d, "Dev Block strings are not supported", level.var_f2898bd7);
				}
				self function_3a9588ea(var_98e4816d, "Dev Block strings are not supported", level.var_c79b41f2);
				self function_3a9588ea(var_98e4816d, "Dev Block strings are not supported", level.var_5f835655);
			}
			self waittill("hash_7b06f432");
		}
	#/
}

