#using scripts\codescripts\struct;
#using scripts\shared\array_shared;
#using scripts\shared\audio_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\load_shared;
#using scripts\shared\postfx_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace namespace_1d795d47;

/*
	Name: function_2dc19561
	Namespace: namespace_1d795d47
	Checksum: 0xF6497CB8
	Offset: 0x2F0
	Size: 0x3B
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("skipto", &function_8c87d8eb, &function_5b6b9132, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_1d795d47
	Checksum: 0xB395C696
	Offset: 0x338
	Size: 0x18B
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	level namespace_ad23e503::function_c35e6aab("running_skipto");
	level namespace_ad23e503::function_c35e6aab("level_has_skiptos");
	level namespace_ad23e503::function_c35e6aab("level_has_skipto_branches");
	level.var_fee90489 = [];
	namespace_71e9cb84::function_50f16166("toplayer", "catch_up_transition", 1, 1, "counter", &function_697ada60, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "set_last_map_dvar", 1, 1, "counter", &function_7bb63f2f, 0, 0);
	function_fcea19f2("_default");
	function_fcea19f2("no_game");
	function_7c1e8577("gamedata/tables/cp/cp_mapmissions.csv", function_6f1ebe57("mapname"));
	level thread function_8ed81a86();
	level thread function_91c7f6af();
}

/*
	Name: function_5b6b9132
	Namespace: namespace_1d795d47
	Checksum: 0xDC31582F
	Offset: 0x4D0
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_5b6b9132()
{
	level thread function_bfb3493();
	var_cb97644f = function_557eb98c(function_c9741013(), "nextMap");
	if(!namespace_82b91a51::function_3da0c335())
	{
		var_cb97644f = function_5821abb6(function_c9741013(), "nextMap");
		function_bd3f2b3b(var_cb97644f, function_6f1ebe57("ui_mapname"));
	}
}

/*
	Name: function_69554b3e
	Namespace: namespace_1d795d47
	Checksum: 0xCFA0FCF
	Offset: 0x5A8
	Size: 0x32B
	Parameters: 6
	Flags: None
*/
function function_69554b3e(var_1d795d47, var_86365a77, var_d01f133f, var_41763f9c, var_46c5ea43, var_c3efda96)
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
				}
				level.var_e07f6589[level.var_8b767436].var_c3efda96[level.var_e07f6589[level.var_8b767436].var_c3efda96.size] = var_1d795d47;
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
	var_14b42b8a = function_fcea19f2(var_1d795d47, var_86365a77, var_d01f133f, var_41763f9c, var_46c5ea43, var_c3efda96);
	var_14b42b8a.var_1028d0be = 1;
	level namespace_ad23e503::function_74d6b22f("level_has_skiptos");
}

/*
	Name: function_731571ad
	Namespace: namespace_1d795d47
	Checksum: 0xEA0B4B2D
	Offset: 0x8E0
	Size: 0x313
	Parameters: 6
	Flags: None
*/
function function_731571ad(var_1d795d47, var_86365a77, var_d01f133f, var_41763f9c, var_46c5ea43, var_c3efda96)
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
				}
				level.var_e07f6589[level.var_8b767436].var_c3efda96[level.var_e07f6589[level.var_8b767436].var_c3efda96.size] = var_1d795d47;
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
	var_14b42b8a = function_fcea19f2(var_1d795d47, var_86365a77, var_d01f133f, var_41763f9c, var_46c5ea43, var_c3efda96);
	var_14b42b8a.var_1028d0be = 1;
	level namespace_ad23e503::function_74d6b22f("level_has_skiptos");
	level namespace_ad23e503::function_74d6b22f("level_has_skipto_branches");
}

/*
	Name: function_654c9dda
	Namespace: namespace_1d795d47
	Checksum: 0x1E4797C
	Offset: 0xC00
	Size: 0xD3
	Parameters: 6
	Flags: None
*/
function function_654c9dda(var_1d795d47, var_86365a77, var_d01f133f, var_41763f9c, var_46c5ea43, var_c3efda96)
{
	if(!isdefined(level.var_574eb415))
	{
		level.var_574eb415 = var_1d795d47;
	}
	if(function_a363b4b1(var_1d795d47))
	{
		var_14b42b8a = function_fcea19f2(var_1d795d47, var_86365a77, var_d01f133f, var_41763f9c, var_46c5ea43, var_c3efda96);
		var_14b42b8a.var_3c612393 = 1;
		return;
	}
	/#
		function_95d3daf8("Dev Block strings are not supported");
	#/
}

/*
	Name: function_fcea19f2
	Namespace: namespace_1d795d47
	Checksum: 0x3ADC9A1F
	Offset: 0xCE0
	Size: 0xC5
	Parameters: 6
	Flags: None
*/
function function_fcea19f2(var_813fc428, var_86365a77, var_d01f133f, var_41763f9c, var_46c5ea43, var_c3efda96)
{
	/#
		namespace_33b293fd::function_a7ee953(!isdefined(level.var_31868693), "Dev Block strings are not supported");
	#/
	var_813fc428 = function_57b2be45(var_813fc428);
	var_14b42b8a = function_b545fa58(var_813fc428, var_86365a77, var_d01f133f, var_41763f9c, var_46c5ea43, var_c3efda96);
	level.var_e07f6589[var_813fc428] = var_14b42b8a;
	return var_14b42b8a;
}

/*
	Name: function_5f5f81d1
	Namespace: namespace_1d795d47
	Checksum: 0x1888B6DC
	Offset: 0xDB0
	Size: 0x193
	Parameters: 6
	Flags: None
*/
function function_5f5f81d1(var_813fc428, var_86365a77, var_d01f133f, var_41763f9c, var_46c5ea43, var_c3efda96)
{
	var_14b42b8a = level.var_e07f6589[var_813fc428];
	if(isdefined(var_86365a77))
	{
		var_14b42b8a.var_1ca15390 = var_86365a77;
	}
	if(isdefined(var_d01f133f))
	{
		var_14b42b8a.var_4537ac00 = var_d01f133f;
	}
	if(isdefined(var_41763f9c))
	{
		var_14b42b8a.var_41763f9c = var_41763f9c;
	}
	if(isdefined(var_46c5ea43))
	{
		if(!isdefined(var_14b42b8a.var_46c5ea43))
		{
			var_14b42b8a.var_46c5ea43 = [];
		}
		else if(!function_6e2770d8(var_14b42b8a.var_46c5ea43))
		{
			var_14b42b8a.var_46c5ea43 = function_84970cc4(var_14b42b8a.var_46c5ea43);
		}
		var_14b42b8a.var_46c5ea43[var_14b42b8a.var_46c5ea43.size] = var_46c5ea43;
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
	Checksum: 0x11CE4F04
	Offset: 0xF50
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
	Checksum: 0xFA7CA7CB
	Offset: 0xF70
	Size: 0x1F7
	Parameters: 6
	Flags: None
*/
function function_b545fa58(var_813fc428, var_86365a77, var_d01f133f, var_41763f9c, var_46c5ea43, var_c3efda96)
{
	var_14b42b8a = function_a8fb77bd();
	var_14b42b8a.var_4be20d44 = var_813fc428;
	var_14b42b8a.var_1ca15390 = var_86365a77;
	var_14b42b8a.var_4537ac00 = var_d01f133f;
	var_14b42b8a.var_41763f9c = var_41763f9c;
	var_14b42b8a.var_48b2ad0a = [];
	var_14b42b8a.var_c7a5039e = [];
	var_14b42b8a.var_f8c3deec = "";
	var_14b42b8a.var_46c5ea43 = [];
	if(isdefined(var_46c5ea43))
	{
		if(!isdefined(var_14b42b8a.var_46c5ea43))
		{
			var_14b42b8a.var_46c5ea43 = [];
		}
		else if(!function_6e2770d8(var_14b42b8a.var_46c5ea43))
		{
			var_14b42b8a.var_46c5ea43 = function_84970cc4(var_14b42b8a.var_46c5ea43);
		}
		var_14b42b8a.var_46c5ea43[var_14b42b8a.var_46c5ea43.size] = var_46c5ea43;
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
	Name: function_5771edb2
	Namespace: namespace_1d795d47
	Checksum: 0x4DF09A09
	Offset: 0x1170
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
	Name: function_a363b4b1
	Namespace: namespace_1d795d47
	Checksum: 0x3AD732F
	Offset: 0x1898
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
	Name: function_f170bfd5
	Namespace: namespace_1d795d47
	Checksum: 0x101492EF
	Offset: 0x1900
	Size: 0x21
	Parameters: 0
	Flags: None
*/
function function_f170bfd5()
{
	return level namespace_ad23e503::function_7922262b("level_has_skiptos");
}

/*
	Name: function_8b19ec5d
	Namespace: namespace_1d795d47
	Checksum: 0x5FBED789
	Offset: 0x1930
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_8b19ec5d()
{
	var_31fac33e = function_57b2be45(function_fa0beb8());
	var_3c61bfc2 = function_d6df1f20(var_31fac33e, ",");
	return var_3c61bfc2;
}

/*
	Name: function_bfb3493
	Namespace: namespace_1d795d47
	Checksum: 0x934F972
	Offset: 0x19A0
	Size: 0xB7
	Parameters: 0
	Flags: None
*/
function function_bfb3493()
{
	function_b2c47917();
	function_5771edb2();
	function_3b25fd7e();
	var_31fac33e = function_8b19ec5d();
	function_c4c27da4(var_31fac33e, 1);
	while(1)
	{
		level waittill("hash_e384c5e7");
		var_31fac33e = function_8b19ec5d();
		function_c4c27da4(var_31fac33e, 0);
	}
}

/*
	Name: function_2ece423b
	Namespace: namespace_1d795d47
	Checksum: 0x17E5378
	Offset: 0x1A60
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
	Checksum: 0x4A331FDB
	Offset: 0x1A80
	Size: 0x17
	Parameters: 1
	Flags: None
*/
function function_574eb415(var_1d795d47)
{
	level.var_574eb415 = var_1d795d47;
}

/*
	Name: function_6542f12c
	Namespace: namespace_1d795d47
	Checksum: 0x3CE8A45C
	Offset: 0x1AA0
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
	Checksum: 0xBC62726F
	Offset: 0x1BB0
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
	Offset: 0x1D30
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_89a9b10f()
{
}

/*
	Name: function_b2c47917
	Namespace: namespace_1d795d47
	Checksum: 0xD45890A5
	Offset: 0x1D40
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_b2c47917()
{
	level namespace_ad23e503::function_1ab5ebec("skipto_player_connected");
}

/*
	Name: function_8ed81a86
	Namespace: namespace_1d795d47
	Checksum: 0x7DBC5BF9
	Offset: 0x1D70
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_8ed81a86()
{
	if(!level namespace_ad23e503::function_dbca4c5d("skipto_player_connected"))
	{
		level namespace_ad23e503::function_c35e6aab("skipto_player_connected");
	}
	namespace_dabbe128::function_de460788("hash_da8d7d74", &function_fb4f96b5);
}

/*
	Name: function_fb4f96b5
	Namespace: namespace_1d795d47
	Checksum: 0x1F49FBEC
	Offset: 0x1DE8
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_fb4f96b5(var_ec74b091)
{
	level namespace_ad23e503::function_74d6b22f("skipto_player_connected");
}

/*
	Name: function_c4c27da4
	Namespace: namespace_1d795d47
	Checksum: 0xC1F392EA
	Offset: 0x1E20
	Size: 0x2A3
	Parameters: 2
	Flags: None
*/
function function_c4c27da4(var_d0ef8521, var_13865ba1)
{
	function_c951eb3d();
	if(var_13865ba1)
	{
		foreach(var_a67db03e in var_d0ef8521)
		{
			if(isdefined(level.var_e07f6589[var_a67db03e]))
			{
				function_2d700bc6(level.var_e07f6589[var_a67db03e].var_c7a5039e, var_13865ba1);
			}
		}
		break;
	}
	foreach(var_1d795d47 in level.var_e07f6589)
	{
		if(isdefined(var_1d795d47.var_e27d380a) && var_1d795d47.var_e27d380a && !function_7f41c8e7(var_d0ef8521, var_1d795d47.var_4be20d44))
		{
			function_2d700bc6(var_1d795d47.var_4be20d44, var_13865ba1);
		}
	}
	if(isdefined(level.var_ba8dfc5d))
	{
		foreach(var_4be20d44 in var_d0ef8521)
		{
			thread [[level.var_ba8dfc5d]](var_4be20d44);
		}
	}
	function_bfe10ae8(var_d0ef8521, var_13865ba1);
	level.var_31aefea8 = level.var_fee90489[0];
	level notify("hash_4b5852e7", level.var_fee90489);
	level.var_fee90489 = var_d0ef8521;
}

/*
	Name: function_3b25fd7e
	Namespace: namespace_1d795d47
	Checksum: 0x53504FC9
	Offset: 0x20D0
	Size: 0xE5
	Parameters: 1
	Flags: None
*/
function function_3b25fd7e(var_d0ef8521)
{
	foreach(var_1d795d47 in level.var_e07f6589)
	{
		if(!(isdefined(var_1d795d47.var_b992dc79) && var_1d795d47.var_b992dc79))
		{
			var_1d795d47.var_b992dc79 = 1;
			if(isdefined(var_1d795d47.var_4dfe0d36))
			{
				thread [[var_1d795d47.var_4dfe0d36]](var_1d795d47.var_4be20d44);
			}
		}
	}
}

/*
	Name: function_bfe10ae8
	Namespace: namespace_1d795d47
	Checksum: 0x546751AA
	Offset: 0x21C0
	Size: 0x21F
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
	}
	else if(isdefined(level.var_e07f6589[var_4be20d44]))
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
			function_b342abc7(var_4be20d44, var_13865ba1);
			if(isdefined(level.var_e07f6589[var_4be20d44].var_1ca15390))
			{
				thread [[level.var_e07f6589[var_4be20d44].var_1ca15390]](var_4be20d44, var_13865ba1);
			}
		}
	}
}

/*
	Name: function_c951eb3d
	Namespace: namespace_1d795d47
	Checksum: 0x67897D1C
	Offset: 0x23E8
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
	Checksum: 0x43E8B003
	Offset: 0x2478
	Size: 0x2E3
	Parameters: 2
	Flags: None
*/
function function_2d700bc6(var_4be20d44, var_13865ba1)
{
	if(function_6e2770d8(var_4be20d44))
	{
		foreach(var_c0316523 in var_4be20d44)
		{
			function_2d700bc6(var_c0316523, var_13865ba1);
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
			if(isdefined(level.var_e07f6589[var_4be20d44].var_41763f9c))
			{
				thread [[level.var_e07f6589[var_4be20d44].var_41763f9c]](var_4be20d44, var_13865ba1);
			}
			function_77ff537d(var_4be20d44, var_13865ba1);
			level notify(var_4be20d44 + "_terminate");
		}
		if(var_13865ba1 && (!isdefined(level.var_e07f6589[var_4be20d44].var_62e39772) && level.var_e07f6589[var_4be20d44].var_62e39772))
		{
			level.var_e07f6589[var_4be20d44].var_62e39772 = 1;
			function_2d700bc6(level.var_e07f6589[var_4be20d44].var_c7a5039e, var_13865ba1);
			if(!var_1abe96bf)
			{
				if(isdefined(level.var_e07f6589[var_4be20d44].var_41763f9c))
				{
					thread [[level.var_e07f6589[var_4be20d44].var_41763f9c]](var_4be20d44, var_13865ba1);
				}
				function_77ff537d(var_4be20d44, var_13865ba1);
			}
		}
	}
}

/*
	Name: function_7bb63f2f
	Namespace: namespace_1d795d47
	Checksum: 0xD4574B8D
	Offset: 0x2768
	Size: 0x7B
	Parameters: 7
	Flags: None
*/
function function_7bb63f2f(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	var_1df2da04 = function_6f1ebe57("ui_mapname");
	function_6c1294b8("last_map", var_1df2da04);
}

/*
	Name: function_b342abc7
	Namespace: namespace_1d795d47
	Checksum: 0x27DDDC59
	Offset: 0x27F0
	Size: 0x13
	Parameters: 2
	Flags: Private
*/
function private function_b342abc7(var_a67db03e, var_13865ba1)
{
}

/*
	Name: function_77ff537d
	Namespace: namespace_1d795d47
	Checksum: 0x281598C5
	Offset: 0x2810
	Size: 0x13
	Parameters: 2
	Flags: Private
*/
function private function_77ff537d(var_a67db03e, var_13865ba1)
{
}

/*
	Name: function_697ada60
	Namespace: namespace_1d795d47
	Checksum: 0x4FC21311
	Offset: 0x2830
	Size: 0x53
	Parameters: 7
	Flags: None
*/
function function_697ada60(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	namespace_bdde9225::function_bca12b73("pstfx_cp_transition_sprite");
}

/*
	Name: function_91c7f6af
	Namespace: namespace_1d795d47
	Checksum: 0xAAE5BFD5
	Offset: 0x2890
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_91c7f6af()
{
	level waittill("hash_1b1ca7b");
	namespace_4fe3eef1::function_36bbd2b2("cmn_aar_screen");
}

