#using scripts\codescripts\struct;
#using scripts\cp\_callbacks;
#using scripts\cp\gametypes\_spawning;
#using scripts\cp\gametypes\_spawnlogic;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\math_shared;
#using scripts\shared\system_shared;

#namespace namespace_4a43ba8;

/*
	Name: function_2dc19561
	Namespace: namespace_4a43ba8
	Checksum: 0x8A8088D7
	Offset: 0x348
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("spawnlogic", &function_8c87d8eb, undefined, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_4a43ba8
	Checksum: 0x9FA329BB
	Offset: 0x388
	Size: 0x24B
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	function_4489f2c9();
	foreach(var_18196fa5 in function_93d52c4f())
	{
		if(isdefined(var_18196fa5.var_ff844e3f))
		{
			foreach(var_5948b3df in function_99201f25(var_18196fa5.var_ff844e3f, "scriptgroup_playerspawns_enable"))
			{
				var_18196fa5 thread function_d241af5c(var_5948b3df);
			}
		}
		else if(isdefined(var_18196fa5.var_ff3739ca))
		{
			foreach(var_5948b3df in function_99201f25(var_18196fa5.var_ff3739ca, "scriptgroup_playerspawns_disable"))
			{
				var_18196fa5 thread function_e3064ea7(var_5948b3df);
			}
		}
	}
	level thread function_39213560();
	namespace_dabbe128::function_c61b24c4(&function_c35e6aab);
	/#
		level thread function_5787bc10();
	#/
}

/*
	Name: function_4489f2c9
	Namespace: namespace_4a43ba8
	Checksum: 0x3EF5FF22
	Offset: 0x5E0
	Size: 0x139
	Parameters: 0
	Flags: None
*/
function function_4489f2c9()
{
	foreach(var_18196fa5 in function_93d52c4f())
	{
		if(isdefined(var_18196fa5.var_37f7858a))
		{
			var_ec0f65c6 = function_6ada35ba(var_18196fa5.var_37f7858a, "linkname");
			var_18196fa5 function_98b48204(var_ec0f65c6);
			continue;
		}
		if(isdefined(var_18196fa5.var_9194748))
		{
			var_ec0f65c6 = function_6ada35ba(var_18196fa5.var_9194748, "targetname");
			var_18196fa5 function_98b48204(var_ec0f65c6);
		}
	}
}

/*
	Name: function_98b48204
	Namespace: namespace_4a43ba8
	Checksum: 0xEBFFD5E7
	Offset: 0x728
	Size: 0xDB
	Parameters: 1
	Flags: None
*/
function function_98b48204(var_ec0f65c6)
{
	var_14497229 = function_9b7fda5e("script_origin", self.var_722885f3);
	var_14497229.var_6ab6f4fd = self.var_6ab6f4fd;
	var_14497229.var_170527fb = self.var_170527fb;
	var_14497229.var_ff1f6868 = self.var_ff1f6868;
	var_14497229.var_ff3739ca = self.var_ff3739ca;
	var_14497229.var_ff844e3f = self.var_ff844e3f;
	if(isdefined(var_ec0f65c6))
	{
		var_14497229 function_37f7858a(var_ec0f65c6);
	}
	self namespace_14b42b8a::function_dc8c8404();
}

/*
	Name: function_d241af5c
	Namespace: namespace_4a43ba8
	Checksum: 0xB29B001B
	Offset: 0x810
	Size: 0x4F
	Parameters: 1
	Flags: None
*/
function function_d241af5c(var_5948b3df)
{
	var_5948b3df endon("hash_128f8789");
	self.var_91572f2d = 1;
	while(1)
	{
		var_5948b3df waittill("hash_4dbf3ae3");
		function_82c857e9(0);
	}
}

/*
	Name: function_e3064ea7
	Namespace: namespace_4a43ba8
	Checksum: 0xD515BD34
	Offset: 0x868
	Size: 0x47
	Parameters: 1
	Flags: None
*/
function function_e3064ea7(var_5948b3df)
{
	var_5948b3df endon("hash_128f8789");
	while(1)
	{
		var_5948b3df waittill("hash_4dbf3ae3");
		function_82c857e9(1);
	}
}

/*
	Name: function_82c857e9
	Namespace: namespace_4a43ba8
	Checksum: 0xE637A5D0
	Offset: 0x8B8
	Size: 0x6F
	Parameters: 1
	Flags: None
*/
function function_82c857e9(var_e2e6bbcb)
{
	if(isdefined(var_e2e6bbcb) && var_e2e6bbcb)
	{
	}
	else
	{
	}
	var_1b30c0b0 = undefined;
	if(self.var_91572f2d !== var_1b30c0b0)
	{
		level namespace_957e94ce::function_74d6b22f("spawnpoints_dirty");
		self.var_91572f2d = var_1b30c0b0;
	}
}

/*
	Name: function_39213560
	Namespace: namespace_4a43ba8
	Checksum: 0xFF193C80
	Offset: 0x930
	Size: 0xFF
	Parameters: 0
	Flags: None
*/
function function_39213560()
{
	while(1)
	{
		if(level namespace_957e94ce::function_7922262b("spawnpoints_dirty"))
		{
			foreach(var_3e94206a in level.var_e7a38025)
			{
				function_e50ff400(var_3e94206a);
			}
			level.var_d0602b51 = undefined;
			namespace_52deffe2::function_ca8dbdcd();
			level namespace_957e94ce::function_9d134160("spawnpoints_dirty");
		}
		wait(0.05);
	}
}

/*
	Name: function_93d52c4f
	Namespace: namespace_4a43ba8
	Checksum: 0x6331C46B
	Offset: 0xA38
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function function_93d52c4f(var_30b675eb)
{
	var_8bfb9994 = function_525ae497(function_5880f755("cp_coop_spawn", var_30b675eb), function_5880f755("cp_coop_respawn", var_30b675eb), 0, 0);
	return var_8bfb9994;
}

/*
	Name: function_5787bc10
	Namespace: namespace_4a43ba8
	Checksum: 0x300AF62A
	Offset: 0xAA8
	Size: 0x2AF
	Parameters: 0
	Flags: None
*/
function function_5787bc10()
{
System.InvalidOperationException: Stack empty.
   at System.ThrowHelper.ThrowInvalidOperationException(ExceptionResource resource)
   at System.Collections.Generic.Stack`1.Pop()
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.⁫⁮⁭‮⁮⁪‬⁮‎‌‮⁪‏‍⁬‏⁪‮‎‏‪‌‎‍‎‪⁮​‬⁪‮⁭‏⁭‌‏‎‭⁪‫‮(String , Int32 , Boolean , Boolean )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‮​⁬⁭⁮‍‏‏‫‎‭‫⁮‪‮⁭‮⁬​‌⁯‮⁭‬​‪⁭‍‏‪⁪‎⁭⁭‌⁪‌‭​⁯‮(ScriptOp , ‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‭⁭⁫‭⁪‫‭‮‪⁬‏‎‪⁯⁪⁬‪‏‫⁯⁯‭​‫⁯‍‮⁫‪‏⁫⁪‎‏‫‫‪⁬‌⁯‮(‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ , Int32 )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‭⁭⁫‭⁪‫‭‮‪⁬‏‎‪⁯⁪⁬‪‏‫⁯⁯‭​‫⁯‍‮⁫‪‏⁫⁪‎‏‫‫‪⁬‌⁯‮(‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ , Int32 )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‭⁭⁫‭⁪‫‭‮‪⁬‏‎‪⁯⁪⁬‪‏‫⁯⁯‭​‫⁯‍‮⁫‪‏⁫⁪‎‏‫‫‪⁬‌⁯‮(‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ , Int32 )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‭⁭⁫‭⁪‫‭‮‪⁬‏‎‪⁯⁪⁬‪‏‫⁯⁯‭​‫⁯‍‮⁫‪‏⁫⁪‎‏‫‫‪⁬‌⁯‮(‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ , Int32 )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‭⁭⁫‭⁪‫‭‮‪⁬‏‎‪⁯⁪⁬‪‏‫⁯⁯‭​‫⁯‍‮⁫‪‏⁫⁪‎‏‫‫‪⁬‌⁯‮(‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ , Int32 )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮..ctor(ScriptExport , ScriptBase )
}

/*
	Name: function_c35e6aab
	Namespace: namespace_4a43ba8
	Checksum: 0x3091C87F
	Offset: 0xD60
	Size: 0x3BB
	Parameters: 0
	Flags: None
*/
function function_c35e6aab()
{
	/#
		if(function_6f1ebe57("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			function_6c1294b8("Dev Block strings are not supported", 0);
		}
		level.var_c84cc7ad = function_4bd0142f("Dev Block strings are not supported");
		if(function_6f1ebe57("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			function_6c1294b8("Dev Block strings are not supported", 0);
		}
		if(function_6f1ebe57("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			function_6c1294b8("Dev Block strings are not supported", 0.25);
		}
		thread function_d320505c();
	#/
	level.var_2858620e = [];
	level.var_98822143 = [];
	level.var_2395e945 = [];
	level.var_962dfd9c = [];
	level.var_f91c09c8 = [];
	level.var_6af14375 = (0, 0, 0);
	level.var_51c188a7 = (0, 0, 0);
	level.var_6a93a097 = 0;
	if(isdefined(level.var_21f1da72))
	{
		for(var_c957f6b6 = 0; var_c957f6b6 < level.var_21f1da72.size; var_c957f6b6++)
		{
			level.var_21f1da72[var_c957f6b6] function_eed34c85();
		}
	}
	else if(function_6f1ebe57("scr_spawn_enemyavoiddist") == "")
	{
		function_6c1294b8("scr_spawn_enemyavoiddist", "800");
	}
	if(function_6f1ebe57("scr_spawn_enemyavoidweight") == "")
	{
		function_6c1294b8("scr_spawn_enemyavoidweight", "0");
	}
	/#
		if(function_6f1ebe57("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
		}
		if(function_6f1ebe57("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
		}
		if(function_4bd0142f("Dev Block strings are not supported") > 0)
		{
			thread function_76bb9fb8();
			thread function_403f0d14();
			thread function_9ce570b0();
		}
		if(level.var_c84cc7ad)
		{
			thread function_8384886e();
		}
		if(function_6f1ebe57("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
		}
		thread function_f415b14();
		thread function_e2e4ca72();
	#/
}

/*
	Name: function_69178c74
	Namespace: namespace_4a43ba8
	Checksum: 0x5B22B67B
	Offset: 0x1128
	Size: 0x1E9
	Parameters: 2
	Flags: None
*/
function function_69178c74(var_3e94206a, var_8d8007e7)
{
	var_d0ec9bd4 = [];
	if(level.var_57486c1a[var_3e94206a].size)
	{
		var_d0ec9bd4 = level.var_57486c1a[var_3e94206a];
	}
	if(isdefined(level.var_df118466))
	{
		var_8d8007e7 = [[level.var_df118466]](var_8d8007e7);
	}
	level.var_57486c1a[var_3e94206a] = var_8d8007e7;
	if(!isdefined(level.var_8d8007e7))
	{
		level.var_8d8007e7 = [];
	}
	for(var_5e76f0af = 0; var_5e76f0af < level.var_57486c1a[var_3e94206a].size; var_5e76f0af++)
	{
		var_3f6206f4 = level.var_57486c1a[var_3e94206a][var_5e76f0af];
		if(!isdefined(var_3f6206f4.var_540091e0))
		{
			var_3f6206f4 function_eed34c85();
			level.var_8d8007e7[level.var_8d8007e7.size] = var_3f6206f4;
		}
	}
	for(var_5e76f0af = 0; var_5e76f0af < var_d0ec9bd4.size; var_5e76f0af++)
	{
		var_722885f3 = var_d0ec9bd4[var_5e76f0af].var_722885f3;
		level.var_6af14375 = namespace_d73b9283::function_6ebd6237(level.var_6af14375, var_722885f3);
		level.var_51c188a7 = namespace_d73b9283::function_eb6b8895(level.var_51c188a7, var_722885f3);
		level.var_57486c1a[var_3e94206a][level.var_57486c1a[var_3e94206a].size] = var_d0ec9bd4[var_5e76f0af];
	}
}

/*
	Name: function_311d8eda
	Namespace: namespace_4a43ba8
	Checksum: 0xAFCDA111
	Offset: 0x1320
	Size: 0x99
	Parameters: 0
	Flags: None
*/
function function_311d8eda()
{
	foreach(var_3e94206a in level.var_e7a38025)
	{
		level.var_57486c1a[var_3e94206a] = [];
	}
	level.var_8d8007e7 = [];
	level.var_d0602b51 = undefined;
}

/*
	Name: function_74317bd4
	Namespace: namespace_4a43ba8
	Checksum: 0x67D58D2F
	Offset: 0x13C8
	Size: 0xD3
	Parameters: 2
	Flags: None
*/
function function_74317bd4(var_3e94206a, var_9885f415)
{
	function_caa2d299(var_9885f415);
	function_4f996eb3(var_3e94206a, var_9885f415);
	function_69178c74(var_3e94206a, function_5880f755(var_9885f415));
	if(!level.var_57486c1a[var_3e94206a].size)
	{
		/#
			if(!isdefined(level.var_a6f85f47))
			{
				/#
					namespace_33b293fd::function_a7ee953(level.var_57486c1a[var_3e94206a].size, "Dev Block strings are not supported" + var_9885f415 + "Dev Block strings are not supported");
				#/
			}
		#/
		wait(1);
		return;
	}
}

/*
	Name: function_e50ff400
	Namespace: namespace_4a43ba8
	Checksum: 0x66A6EB92
	Offset: 0x14A8
	Size: 0x85
	Parameters: 1
	Flags: None
*/
function function_e50ff400(var_3e94206a)
{
	level.var_57486c1a[var_3e94206a] = [];
	for(var_5e76f0af = 0; var_5e76f0af < level.var_38a63f67[var_3e94206a].size; var_5e76f0af++)
	{
		function_69178c74(var_3e94206a, function_5880f755(level.var_38a63f67[var_3e94206a][var_5e76f0af]));
	}
}

/*
	Name: function_8a213fa0
	Namespace: namespace_4a43ba8
	Checksum: 0x3DD5C882
	Offset: 0x1538
	Size: 0x137
	Parameters: 1
	Flags: None
*/
function function_8a213fa0(var_9885f415)
{
	function_caa2d299(var_9885f415);
	var_8d8007e7 = function_5880f755(var_9885f415);
	/#
		if(!isdefined(level.var_d41c14c))
		{
			level.var_d41c14c = [];
		}
	#/
	if(!var_8d8007e7.size)
	{
		/#
			function_895b00("Dev Block strings are not supported" + var_9885f415 + "Dev Block strings are not supported");
		#/
		namespace_dabbe128::function_7668abe();
		wait(1);
		return;
	}
	for(var_5e76f0af = 0; var_5e76f0af < var_8d8007e7.size; var_5e76f0af++)
	{
		var_8d8007e7[var_5e76f0af] function_eed34c85();
		/#
			var_8d8007e7[var_5e76f0af].var_9117c67 = var_9885f415;
			level.var_d41c14c[level.var_d41c14c.size] = var_8d8007e7[var_5e76f0af];
		#/
	}
}

/*
	Name: function_43d63258
	Namespace: namespace_4a43ba8
	Checksum: 0xEC46E7F9
	Offset: 0x1678
	Size: 0xAD
	Parameters: 1
	Flags: None
*/
function function_43d63258(var_9885f415)
{
	var_8d8007e7 = function_5880f755(var_9885f415);
	if(!var_8d8007e7.size)
	{
		/#
			function_895b00("Dev Block strings are not supported" + var_9885f415 + "Dev Block strings are not supported");
		#/
		return;
	}
	for(var_5e76f0af = 0; var_5e76f0af < var_8d8007e7.size; var_5e76f0af++)
	{
		var_8d8007e7[var_5e76f0af] function_1e347e22();
	}
}

/*
	Name: function_caa2d299
	Namespace: namespace_4a43ba8
	Checksum: 0x908DFE4
	Offset: 0x1730
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_caa2d299(var_9ae280cd)
{
	if(!isdefined(level.var_32ef48c5))
	{
		level.var_32ef48c5 = [];
	}
	namespace_84970cc4::function_69554b3e(level.var_32ef48c5, var_9ae280cd, 0);
}

/*
	Name: function_4f996eb3
	Namespace: namespace_4a43ba8
	Checksum: 0xFA8E2E9F
	Offset: 0x1780
	Size: 0x3B
	Parameters: 2
	Flags: None
*/
function function_4f996eb3(var_3e94206a, var_9ae280cd)
{
	namespace_84970cc4::function_69554b3e(level.var_38a63f67[var_3e94206a], var_9ae280cd, 0);
}

/*
	Name: function_5880f755
	Namespace: namespace_4a43ba8
	Checksum: 0x7B09A86B
	Offset: 0x17C8
	Size: 0x219
	Parameters: 2
	Flags: None
*/
function function_5880f755(var_e6e9b8de, var_30b675eb)
{
	if(!isdefined(var_30b675eb))
	{
		var_30b675eb = 0;
	}
	var_a55896c4 = function_525ae497(namespace_14b42b8a::function_7faf4c39(var_e6e9b8de, "targetname"), function_99201f25(var_e6e9b8de, "targetname"), 0, 0);
	var_8bfb9994 = [];
	if(!var_30b675eb)
	{
		foreach(var_18196fa5 in var_a55896c4)
		{
			if(!(isdefined(var_18196fa5.var_91572f2d) && var_18196fa5.var_91572f2d))
			{
				if(!isdefined(var_8bfb9994))
				{
					var_8bfb9994 = [];
				}
				else if(!function_6e2770d8(var_8bfb9994))
				{
					var_8bfb9994 = function_84970cc4(var_8bfb9994);
				}
				var_8bfb9994[var_8bfb9994.size] = var_18196fa5;
			}
		}
	}
	else
	{
		var_8bfb9994 = var_a55896c4;
	}
	if(!isdefined(level.var_8d380a13) || !isdefined(level.var_8d380a13[var_e6e9b8de]))
	{
		return var_8bfb9994;
	}
	for(var_c957f6b6 = 0; var_c957f6b6 < level.var_8d380a13[var_e6e9b8de].size; var_c957f6b6++)
	{
		var_8bfb9994[var_8bfb9994.size] = level.var_8d380a13[var_e6e9b8de][var_c957f6b6];
	}
	return var_8bfb9994;
}

/*
	Name: function_eed34c85
	Namespace: namespace_4a43ba8
	Checksum: 0x50B264B5
	Offset: 0x19F0
	Size: 0x15F
	Parameters: 0
	Flags: None
*/
function function_eed34c85()
{
	var_3f6206f4 = self;
	var_722885f3 = var_3f6206f4.var_722885f3;
	if(!level.var_6a93a097)
	{
		level.var_6af14375 = var_722885f3;
		level.var_51c188a7 = var_722885f3;
		level.var_6a93a097 = 1;
	}
	else
	{
		level.var_6af14375 = namespace_d73b9283::function_6ebd6237(level.var_6af14375, var_722885f3);
		level.var_51c188a7 = namespace_d73b9283::function_eb6b8895(level.var_51c188a7, var_722885f3);
	}
	var_3f6206f4 function_1e347e22();
	if(!isdefined(var_3f6206f4.var_6ab6f4fd))
	{
		var_3f6206f4.var_6ab6f4fd = (0, 0, 0);
	}
	var_3f6206f4.var_1a859714 = function_bc7ce905(var_3f6206f4.var_6ab6f4fd);
	var_3f6206f4.var_74ceb7b3 = var_3f6206f4.var_722885f3 + VectorScale((0, 0, 1), 50);
	var_3f6206f4.var_540091e0 = 1;
}

/*
	Name: function_7f4a71b0
	Namespace: namespace_4a43ba8
	Checksum: 0xC09F1E89
	Offset: 0x1B58
	Size: 0x17
	Parameters: 1
	Flags: None
*/
function function_7f4a71b0(var_3e94206a)
{
	return level.var_57486c1a[var_3e94206a];
}

/*
	Name: function_e87ffe7e
	Namespace: namespace_4a43ba8
	Checksum: 0xAD6892B3
	Offset: 0x1B78
	Size: 0x23F
	Parameters: 2
	Flags: None
*/
function function_e87ffe7e(var_8d8007e7, var_8959425)
{
	var_53cafbc6 = undefined;
	if(!isdefined(var_8d8007e7) || var_8d8007e7.size == 0)
	{
		return undefined;
	}
	if(!isdefined(var_8959425))
	{
		var_8959425 = 1;
	}
	if(var_8959425)
	{
		var_53cafbc6 = function_f714995a(var_8d8007e7);
		thread function_f5751b11(var_8d8007e7);
		break;
	}
	for(var_c957f6b6 = 0; var_c957f6b6 < var_8d8007e7.size; var_c957f6b6++)
	{
		if(isdefined(self.var_40952794) && self.var_40952794 == var_8d8007e7[var_c957f6b6])
		{
			continue;
		}
		if(function_ba336b7(var_8d8007e7[var_c957f6b6].var_722885f3))
		{
			continue;
		}
		var_53cafbc6 = var_8d8007e7[var_c957f6b6];
		break;
	}
	if(!isdefined(var_53cafbc6))
	{
		if(isdefined(self.var_40952794) && !function_ba336b7(self.var_40952794.var_722885f3))
		{
			for(var_c957f6b6 = 0; var_c957f6b6 < var_8d8007e7.size; var_c957f6b6++)
			{
				if(var_8d8007e7[var_c957f6b6] == self.var_40952794)
				{
					var_53cafbc6 = var_8d8007e7[var_c957f6b6];
					break;
				}
			}
		}
	}
	else if(!isdefined(var_53cafbc6))
	{
		if(var_8959425)
		{
			var_53cafbc6 = var_8d8007e7[function_26299103(var_8d8007e7.size)];
		}
		else
		{
			var_53cafbc6 = var_8d8007e7[0];
		}
	}
	self function_3a4b1ceb(var_53cafbc6);
	/#
		self function_75321ef(var_8d8007e7, var_8959425, var_53cafbc6);
	#/
	return var_53cafbc6;
}

/*
	Name: function_3a4b1ceb
	Namespace: namespace_4a43ba8
	Checksum: 0x8EE68E39
	Offset: 0x1DC0
	Size: 0x57
	Parameters: 1
	Flags: None
*/
function function_3a4b1ceb(var_3f6206f4)
{
	var_60db70fa = GetTime();
	self.var_40952794 = var_3f6206f4;
	self.var_f5190531 = var_60db70fa;
	var_3f6206f4.var_4d1e065e = self;
	var_3f6206f4.var_f5190531 = var_60db70fa;
}

/*
	Name: function_f714995a
	Namespace: namespace_4a43ba8
	Checksum: 0x3B7B2E63
	Offset: 0x1E20
	Size: 0x2B5
	Parameters: 1
	Flags: None
*/
function function_f714995a(var_8d8007e7)
{
	var_c424646b = 3;
	for(var_ded856b0 = 0; var_ded856b0 <= var_c424646b; var_ded856b0++)
	{
		var_a7c19d79 = [];
		var_a3a954ff = undefined;
		var_53cafbc6 = undefined;
		for(var_c957f6b6 = 0; var_c957f6b6 < var_8d8007e7.size; var_c957f6b6++)
		{
			if(!isdefined(var_a3a954ff) || var_8d8007e7[var_c957f6b6].var_62341371 > var_a3a954ff)
			{
				if(function_ba336b7(var_8d8007e7[var_c957f6b6].var_722885f3))
				{
					continue;
				}
				var_a7c19d79 = [];
				var_a7c19d79[0] = var_8d8007e7[var_c957f6b6];
				var_a3a954ff = var_8d8007e7[var_c957f6b6].var_62341371;
				continue;
			}
			if(var_8d8007e7[var_c957f6b6].var_62341371 == var_a3a954ff)
			{
				if(function_ba336b7(var_8d8007e7[var_c957f6b6].var_722885f3))
				{
					continue;
				}
				var_a7c19d79[var_a7c19d79.size] = var_8d8007e7[var_c957f6b6];
			}
		}
		if(var_a7c19d79.size == 0)
		{
			return undefined;
		}
		var_53cafbc6 = var_a7c19d79[function_26299103(var_a7c19d79.size)];
		if(var_ded856b0 == var_c424646b)
		{
			return var_53cafbc6;
		}
		if(isdefined(var_53cafbc6.var_e0c5d87c) && var_53cafbc6.var_e0c5d87c == GetTime())
		{
			return var_53cafbc6;
		}
		if(!function_b7cf3433(var_53cafbc6))
		{
			return var_53cafbc6;
		}
		var_defc5258 = function_e40b0d5e();
		/#
			if(level.var_c84cc7ad || level.var_1d606209)
			{
				var_53cafbc6.var_3f63526e[var_53cafbc6.var_3f63526e.size] = "Dev Block strings are not supported" + var_defc5258;
			}
		#/
		var_53cafbc6.var_62341371 = var_53cafbc6.var_62341371 - var_defc5258;
		var_53cafbc6.var_e0c5d87c = GetTime();
	}
}

/*
	Name: function_d46f7aa7
	Namespace: namespace_4a43ba8
	Checksum: 0x14975231
	Offset: 0x20E0
	Size: 0x155
	Parameters: 1
	Flags: None
*/
function function_d46f7aa7(var_3f6206f4)
{
	/#
		for(var_c957f6b6 = 0; var_c957f6b6 < level.var_2395e945.size; var_c957f6b6++)
		{
			var_5dc5e20a = level.var_2395e945[var_c957f6b6];
			if(!function_5b49d38c(var_5dc5e20a) || var_5dc5e20a.var_e0beb6ee != "Dev Block strings are not supported")
			{
				continue;
			}
			if(level.var_de12b72f && var_5dc5e20a.var_3e94206a == self.var_3e94206a)
			{
				continue;
			}
			var_618bc849 = function_7178c13c(var_5dc5e20a.var_722885f3 + VectorScale((0, 0, 1), 50), var_3f6206f4.var_74ceb7b3, 0, undefined);
			if(var_618bc849)
			{
				thread function_c12fba5f(var_3f6206f4.var_74ceb7b3, var_5dc5e20a.var_722885f3 + VectorScale((0, 0, 1), 50), self.var_4be20d44, var_5dc5e20a.var_4be20d44);
			}
		}
	#/
}

/*
	Name: function_c12fba5f
	Namespace: namespace_4a43ba8
	Checksum: 0x3C3150C6
	Offset: 0x2240
	Size: 0xE5
	Parameters: 4
	Flags: None
*/
function function_c12fba5f(var_34fb19f, var_3fc1574, var_7eb5b5e5, var_a4b8304e)
{
	/#
		var_2a97d9fd = function_7d15e2f8(var_34fb19f, var_3fc1574);
		for(var_c957f6b6 = 0; var_c957f6b6 < 200; var_c957f6b6++)
		{
			function_4e418837(var_34fb19f, var_3fc1574, (1, 0, 0));
			function_8f3e0f73(var_34fb19f, "Dev Block strings are not supported" + var_7eb5b5e5 + "Dev Block strings are not supported" + var_2a97d9fd);
			function_8f3e0f73(var_3fc1574, var_a4b8304e);
			wait(0.05);
		}
	#/
}

/*
	Name: function_75321ef
	Namespace: namespace_4a43ba8
	Checksum: 0x6A7E6551
	Offset: 0x2330
	Size: 0x88B
	Parameters: 3
	Flags: None
*/
function function_75321ef(var_8d8007e7, var_8959425, var_53cafbc6)
{
	/#
		if(!isdefined(level.var_c84cc7ad) || !level.var_c84cc7ad)
		{
			return;
		}
		level.var_c84cc7ad = function_4bd0142f("Dev Block strings are not supported");
		if(!level.var_c84cc7ad)
		{
			return;
		}
		if(!isdefined(level.var_67c47025))
		{
			level.var_d5f0f98f = function_26299103(100);
			level.var_67c47025 = 0;
		}
		if(var_53cafbc6.var_170527fb == "Dev Block strings are not supported")
		{
			return;
		}
		level.var_67c47025++;
		var_51166293 = function_5f2d88f7("Dev Block strings are not supported", "Dev Block strings are not supported");
		function_a2b29765(var_51166293, level.var_d5f0f98f + "Dev Block strings are not supported" + level.var_67c47025 + "Dev Block strings are not supported" + var_8d8007e7.size + "Dev Block strings are not supported" + self.var_4be20d44);
		for(var_c957f6b6 = 0; var_c957f6b6 < var_8d8007e7.size; var_c957f6b6++)
		{
			var_fa42a0e2 = function_88dd1973(var_8d8007e7[var_c957f6b6].var_722885f3) + "Dev Block strings are not supported";
			if(var_8d8007e7[var_c957f6b6] == var_53cafbc6)
			{
				var_fa42a0e2 = var_fa42a0e2 + "Dev Block strings are not supported";
			}
			else
			{
				var_fa42a0e2 = var_fa42a0e2 + "Dev Block strings are not supported";
			}
			if(!var_8959425)
			{
				var_fa42a0e2 = var_fa42a0e2 + "Dev Block strings are not supported";
			}
			else
			{
				var_fa42a0e2 = var_fa42a0e2 + var_8d8007e7[var_c957f6b6].var_62341371 + "Dev Block strings are not supported";
			}
			if(!isdefined(var_8d8007e7[var_c957f6b6].var_3f63526e))
			{
				var_8d8007e7[var_c957f6b6].var_3f63526e = [];
			}
			if(!isdefined(var_8d8007e7[var_c957f6b6].var_fbadb457))
			{
				var_8d8007e7[var_c957f6b6].var_fbadb457 = [];
			}
			var_fa42a0e2 = var_fa42a0e2 + var_8d8007e7[var_c957f6b6].var_3f63526e.size + "Dev Block strings are not supported";
			for(var_a3557c4d = 0; var_a3557c4d < var_8d8007e7[var_c957f6b6].var_3f63526e.size; var_a3557c4d++)
			{
				var_fa42a0e2 = var_fa42a0e2 + var_8d8007e7[var_c957f6b6].var_3f63526e[var_a3557c4d] + "Dev Block strings are not supported";
			}
			var_fa42a0e2 = var_fa42a0e2 + var_8d8007e7[var_c957f6b6].var_fbadb457.size + "Dev Block strings are not supported";
			for(var_a3557c4d = 0; var_a3557c4d < var_8d8007e7[var_c957f6b6].var_fbadb457.size; var_a3557c4d++)
			{
				var_fa42a0e2 = var_fa42a0e2 + var_8d8007e7[var_c957f6b6].var_fbadb457[var_a3557c4d].var_defc5258 + "Dev Block strings are not supported" + function_88dd1973(var_8d8007e7[var_c957f6b6].var_722885f3) + "Dev Block strings are not supported";
			}
			function_a2b29765(var_51166293, var_fa42a0e2);
		}
		var_56fd354c = function_a8fb77bd();
		function_b8bbe7f3(var_56fd354c);
		var_c4798295 = 0;
		var_20aa8e29 = 0;
		var_fa42a0e2 = "Dev Block strings are not supported";
		for(var_c957f6b6 = 0; var_c957f6b6 < var_56fd354c.var_5f60144f.size; var_c957f6b6++)
		{
			if(var_56fd354c.var_5f60144f[var_c957f6b6] == self)
			{
				continue;
			}
			var_c4798295++;
			var_fa42a0e2 = var_fa42a0e2 + function_88dd1973(var_56fd354c.var_5f60144f[var_c957f6b6].var_722885f3) + "Dev Block strings are not supported";
		}
		for(var_c957f6b6 = 0; var_c957f6b6 < var_56fd354c.var_657b1773.size; var_c957f6b6++)
		{
			var_20aa8e29++;
			var_fa42a0e2 = var_fa42a0e2 + function_88dd1973(var_56fd354c.var_657b1773[var_c957f6b6].var_722885f3) + "Dev Block strings are not supported";
		}
		var_fa42a0e2 = var_c4798295 + "Dev Block strings are not supported" + var_20aa8e29 + "Dev Block strings are not supported" + var_fa42a0e2;
		function_a2b29765(var_51166293, var_fa42a0e2);
		var_51e50309 = [];
		if(isdefined(level.var_9d6eaa06))
		{
			var_5e76f0af = var_51e50309.size;
			var_51e50309[var_5e76f0af] = function_a8fb77bd();
			var_51e50309[var_5e76f0af].var_722885f3 = level.var_9d6eaa06.var_722885f3 + VectorScale((0, 0, 1), 20);
			var_51e50309[var_5e76f0af].var_8caa0808 = "Dev Block strings are not supported";
		}
		else if(isdefined(level.var_59642065))
		{
			var_5e76f0af = var_51e50309.size;
			var_51e50309[var_5e76f0af] = function_a8fb77bd();
			var_51e50309[var_5e76f0af].var_722885f3 = level.var_59642065;
			var_51e50309[var_5e76f0af].var_8caa0808 = "Dev Block strings are not supported";
		}
		if(isdefined(level.var_980d0a72))
		{
			for(var_c957f6b6 = 0; var_c957f6b6 < level.var_980d0a72.size; var_c957f6b6++)
			{
				var_5e76f0af = var_51e50309.size;
				var_51e50309[var_5e76f0af] = function_a8fb77bd();
				var_51e50309[var_5e76f0af].var_722885f3 = level.var_980d0a72[var_c957f6b6].var_722885f3;
				var_51e50309[var_5e76f0af].var_8caa0808 = level.var_980d0a72[var_c957f6b6].var_288e62a9 namespace_a230c2b1::function_4a1421fd() + "Dev Block strings are not supported";
			}
		}
		var_fa42a0e2 = var_51e50309.size + "Dev Block strings are not supported";
		for(var_c957f6b6 = 0; var_c957f6b6 < var_51e50309.size; var_c957f6b6++)
		{
			var_fa42a0e2 = var_fa42a0e2 + function_88dd1973(var_51e50309[var_c957f6b6].var_722885f3) + "Dev Block strings are not supported" + var_51e50309[var_c957f6b6].var_8caa0808 + "Dev Block strings are not supported";
		}
		function_a2b29765(var_51166293, var_fa42a0e2);
		function_76ae2169(var_51166293);
		var_d47c0b65 = level.var_d5f0f98f + "Dev Block strings are not supported" + level.var_67c47025;
		self.var_d47c0b65 = var_d47c0b65;
	#/
}

/*
	Name: function_78353cbc
	Namespace: namespace_4a43ba8
	Checksum: 0x11E58333
	Offset: 0x2BC8
	Size: 0xB33
	Parameters: 2
	Flags: None
*/
function function_78353cbc(var_d451c822, var_4aa9326d)
{
	/#
		var_51166293 = function_5f2d88f7("Dev Block strings are not supported", "Dev Block strings are not supported");
		if(var_51166293 < 0)
		{
			return;
		}
		var_129e7875 = level.var_27b4af72;
		level.var_27b4af72 = undefined;
		var_c7a5039e = undefined;
		var_883b84e9 = undefined;
		var_c847dca1 = 0;
		var_6f6fb0d6 = 0;
		if(isdefined(var_4aa9326d) && !isdefined(var_129e7875))
		{
			return;
		}
		while(1)
		{
			if(function_2b4ca53f(var_51166293) <= 0)
			{
				break;
			}
			var_72254e15 = function_a8fb77bd();
			var_72254e15.var_3d29746 = function_77f17085(var_51166293, 0);
			var_44b4df0b = function_b6b79a0(function_77f17085(var_51166293, 1));
			if(var_44b4df0b > 256)
			{
				break;
			}
			var_72254e15.var_b3d32c97 = function_77f17085(var_51166293, 2);
			var_72254e15.var_8d8007e7 = [];
			var_72254e15.var_2da28080 = [];
			var_72254e15.var_657b1773 = [];
			var_72254e15.var_51e50309 = [];
			for(var_c957f6b6 = 0; var_c957f6b6 < var_44b4df0b; var_c957f6b6++)
			{
				if(function_2b4ca53f(var_51166293) <= 0)
				{
					break;
				}
				var_3f6206f4 = function_a8fb77bd();
				var_3f6206f4.var_722885f3 = function_a76187dd(function_77f17085(var_51166293, 0));
				var_3f6206f4.var_f49bab78 = function_b6b79a0(function_77f17085(var_51166293, 1));
				var_3f6206f4.var_62341371 = function_b6b79a0(function_77f17085(var_51166293, 2));
				var_3f6206f4.var_72254e15 = [];
				var_3f6206f4.var_fbadb457 = [];
				if(var_c957f6b6 == 0)
				{
					var_72254e15.var_1e624547 = var_3f6206f4.var_62341371;
					var_72254e15.var_17d7b8f9 = var_3f6206f4.var_62341371;
				}
				else if(var_3f6206f4.var_62341371 < var_72254e15.var_1e624547)
				{
					var_72254e15.var_1e624547 = var_3f6206f4.var_62341371;
				}
				if(var_3f6206f4.var_62341371 > var_72254e15.var_17d7b8f9)
				{
					var_72254e15.var_17d7b8f9 = var_3f6206f4.var_62341371;
				}
				var_4467d6c1 = 4;
				var_3929e437 = function_b6b79a0(function_77f17085(var_51166293, 3));
				if(var_3929e437 > 256)
				{
					break;
				}
				for(var_a3557c4d = 0; var_a3557c4d < var_3929e437; var_a3557c4d++)
				{
					var_3f6206f4.var_72254e15[var_3f6206f4.var_72254e15.size] = function_77f17085(var_51166293, var_4467d6c1);
					var_4467d6c1++;
				}
				var_8e8658cd = function_b6b79a0(function_77f17085(var_51166293, var_4467d6c1));
				var_4467d6c1++;
				if(var_8e8658cd > 256)
				{
					break;
				}
				for(var_a3557c4d = 0; var_a3557c4d < var_8e8658cd; var_a3557c4d++)
				{
					var_5e76f0af = var_3f6206f4.var_fbadb457.size;
					var_3f6206f4.var_fbadb457[var_5e76f0af] = function_a8fb77bd();
					var_3f6206f4.var_fbadb457[var_5e76f0af].var_defc5258 = function_b6b79a0(function_77f17085(var_51166293, var_4467d6c1));
					var_4467d6c1++;
					var_3f6206f4.var_fbadb457[var_5e76f0af].var_722885f3 = function_a76187dd(function_77f17085(var_51166293, var_4467d6c1));
					var_4467d6c1++;
				}
				var_72254e15.var_8d8007e7[var_72254e15.var_8d8007e7.size] = var_3f6206f4;
			}
			if(!isdefined(var_72254e15.var_1e624547))
			{
				var_72254e15.var_1e624547 = -1;
				var_72254e15.var_17d7b8f9 = 0;
			}
			if(var_72254e15.var_1e624547 == var_72254e15.var_17d7b8f9)
			{
				var_72254e15.var_1e624547 = var_72254e15.var_1e624547 - 1;
			}
			if(function_2b4ca53f(var_51166293) <= 0)
			{
				break;
			}
			var_5aa53bd6 = function_b6b79a0(function_77f17085(var_51166293, 0));
			var_20aa8e29 = function_b6b79a0(function_77f17085(var_51166293, 1));
			if(var_5aa53bd6 > 32 || var_20aa8e29 > 32)
			{
				break;
			}
			var_4467d6c1 = 2;
			for(var_c957f6b6 = 0; var_c957f6b6 < var_5aa53bd6; var_c957f6b6++)
			{
				var_72254e15.var_2da28080[var_72254e15.var_2da28080.size] = function_a76187dd(function_77f17085(var_51166293, var_4467d6c1));
				var_4467d6c1++;
			}
			for(var_c957f6b6 = 0; var_c957f6b6 < var_20aa8e29; var_c957f6b6++)
			{
				var_72254e15.var_657b1773[var_72254e15.var_657b1773.size] = function_a76187dd(function_77f17085(var_51166293, var_4467d6c1));
				var_4467d6c1++;
			}
			if(function_2b4ca53f(var_51166293) <= 0)
			{
				break;
			}
			var_d6823597 = function_b6b79a0(function_77f17085(var_51166293, 0));
			var_4467d6c1 = 1;
			for(var_c957f6b6 = 0; var_c957f6b6 < var_d6823597; var_c957f6b6++)
			{
				var_51e50309 = function_a8fb77bd();
				var_51e50309.var_722885f3 = function_a76187dd(function_77f17085(var_51166293, var_4467d6c1));
				var_4467d6c1++;
				var_51e50309.var_8caa0808 = function_77f17085(var_51166293, var_4467d6c1);
				var_4467d6c1++;
				var_72254e15.var_51e50309[var_72254e15.var_51e50309.size] = var_51e50309;
			}
			if(isdefined(var_4aa9326d))
			{
				if(var_4aa9326d == "Dev Block strings are not supported")
				{
					if(var_72254e15.var_3d29746 == var_129e7875.var_3d29746)
					{
						level.var_27b4af72 = var_883b84e9;
						break;
					}
				}
				else if(var_4aa9326d == "Dev Block strings are not supported")
				{
					if(var_72254e15.var_3d29746 == var_129e7875.var_3d29746)
					{
						level.var_27b4af72 = var_c7a5039e;
						break;
					}
				}
				else if(var_4aa9326d == "Dev Block strings are not supported")
				{
					if(var_c847dca1)
					{
						level.var_27b4af72 = var_72254e15;
						break;
					}
					else if(var_72254e15.var_3d29746 == var_129e7875.var_3d29746)
					{
						var_c847dca1 = 1;
					}
				}
				else if(var_4aa9326d == "Dev Block strings are not supported")
				{
					if(var_6f6fb0d6)
					{
						level.var_27b4af72 = var_72254e15;
						break;
					}
					else if(var_72254e15.var_3d29746 == var_129e7875.var_3d29746)
					{
						var_6f6fb0d6 = 1;
					}
				}
			}
			else if(var_72254e15.var_3d29746 == var_d451c822)
			{
				level.var_27b4af72 = var_72254e15;
				break;
			}
			var_c7a5039e = var_72254e15;
			if(isdefined(var_129e7875) && var_72254e15.var_b3d32c97 == var_129e7875.var_b3d32c97)
			{
				var_883b84e9 = var_72254e15;
			}
		}
		function_76ae2169(var_51166293);
	#/
}

/*
	Name: function_363025a
	Namespace: namespace_4a43ba8
	Checksum: 0xA688EC78
	Offset: 0x3708
	Size: 0x473
	Parameters: 0
	Flags: None
*/
function function_363025a()
{
	/#
		level notify("hash_fa803edc");
		level endon("hash_fa803edc");
		var_f07c0031 = VectorScale((0, 0, -1), 12);
		while(1)
		{
			if(!isdefined(level.var_27b4af72))
			{
				wait(0.5);
				continue;
			}
			for(var_c957f6b6 = 0; var_c957f6b6 < level.var_27b4af72.var_2da28080.size; var_c957f6b6++)
			{
				function_8f3e0f73(level.var_27b4af72.var_2da28080[var_c957f6b6], "Dev Block strings are not supported", (0.5, 1, 0.5), 1, 5);
			}
			for(var_c957f6b6 = 0; var_c957f6b6 < level.var_27b4af72.var_657b1773.size; var_c957f6b6++)
			{
				function_8f3e0f73(level.var_27b4af72.var_657b1773[var_c957f6b6], "Dev Block strings are not supported", (1, 0.5, 0.5), 1, 5);
			}
			for(var_c957f6b6 = 0; var_c957f6b6 < level.var_27b4af72.var_51e50309.size; var_c957f6b6++)
			{
				function_8f3e0f73(level.var_27b4af72.var_51e50309[var_c957f6b6].var_722885f3, level.var_27b4af72.var_51e50309[var_c957f6b6].var_8caa0808, (0.5, 0.75, 1), 1, 2);
			}
			for(var_c957f6b6 = 0; var_c957f6b6 < level.var_27b4af72.var_8d8007e7.size; var_c957f6b6++)
			{
				var_f2d5d544 = level.var_27b4af72.var_8d8007e7[var_c957f6b6];
				var_114c96fa = var_f2d5d544.var_74ceb7b3;
				if(var_f2d5d544.var_f49bab78)
				{
					function_8f3e0f73(var_114c96fa, level.var_27b4af72.var_b3d32c97 + "Dev Block strings are not supported", (0.5, 0.5, 1), 1, 2);
					var_114c96fa = var_114c96fa + var_f07c0031;
				}
				var_d37015ad = var_f2d5d544.var_62341371 - level.var_27b4af72.var_1e624547 / level.var_27b4af72.var_17d7b8f9 - level.var_27b4af72.var_1e624547;
				function_8f3e0f73(var_114c96fa, "Dev Block strings are not supported" + var_f2d5d544.var_62341371, (1 - var_d37015ad, var_d37015ad, 0.5));
				var_114c96fa = var_114c96fa + var_f07c0031;
				for(var_a3557c4d = 0; var_a3557c4d < var_f2d5d544.var_72254e15.size; var_a3557c4d++)
				{
					function_8f3e0f73(var_114c96fa, var_f2d5d544.var_72254e15[var_a3557c4d], (1, 1, 1));
					var_114c96fa = var_114c96fa + var_f07c0031;
				}
				for(var_a3557c4d = 0; var_a3557c4d < var_f2d5d544.var_fbadb457.size; var_a3557c4d++)
				{
					function_8f3e0f73(var_114c96fa, "Dev Block strings are not supported" + var_f2d5d544.var_fbadb457[var_a3557c4d].var_defc5258, (1, 0.5, 0.5));
					var_114c96fa = var_114c96fa + var_f07c0031;
				}
			}
			wait(0.05);
		}
	#/
}

/*
	Name: function_88dd1973
	Namespace: namespace_4a43ba8
	Checksum: 0x877CABC6
	Offset: 0x3B88
	Size: 0x7D
	Parameters: 1
	Flags: None
*/
function function_88dd1973(var_d2412961)
{
	/#
		return function_b6b79a0(var_d2412961[0]) + "Dev Block strings are not supported" + function_b6b79a0(var_d2412961[1]) + "Dev Block strings are not supported" + function_b6b79a0(var_d2412961[2]);
	#/
}

/*
	Name: function_a76187dd
	Namespace: namespace_4a43ba8
	Checksum: 0x88D89BE4
	Offset: 0x3C10
	Size: 0x9D
	Parameters: 1
	Flags: None
*/
function function_a76187dd(var_fa42a0e2)
{
	/#
		var_6445c659 = function_d6df1f20(var_fa42a0e2, "Dev Block strings are not supported");
		if(var_6445c659.size != 3)
		{
			return (0, 0, 0);
		}
		return (function_b6b79a0(var_6445c659[0]), function_b6b79a0(var_6445c659[1]), function_b6b79a0(var_6445c659[2]));
	#/
}

/*
	Name: function_68eb5b1b
	Namespace: namespace_4a43ba8
	Checksum: 0x7BDF592F
	Offset: 0x3CB8
	Size: 0xC1
	Parameters: 1
	Flags: None
*/
function function_68eb5b1b(var_8d8007e7)
{
	if(!isdefined(var_8d8007e7))
	{
		return undefined;
	}
	for(var_c957f6b6 = 0; var_c957f6b6 < var_8d8007e7.size; var_c957f6b6++)
	{
		var_a3557c4d = function_26299103(var_8d8007e7.size);
		var_3f6206f4 = var_8d8007e7[var_c957f6b6];
		var_8d8007e7[var_c957f6b6] = var_8d8007e7[var_a3557c4d];
		var_8d8007e7[var_a3557c4d] = var_3f6206f4;
	}
	return function_e87ffe7e(var_8d8007e7, 0);
}

/*
	Name: function_375588a3
	Namespace: namespace_4a43ba8
	Checksum: 0xACB256AB
	Offset: 0x3D88
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_375588a3()
{
	var_bbd67d26 = [];
	for(var_c957f6b6 = 0; var_c957f6b6 < level.var_2395e945.size; var_c957f6b6++)
	{
		if(!isdefined(level.var_2395e945[var_c957f6b6]))
		{
			continue;
		}
		var_5dc5e20a = level.var_2395e945[var_c957f6b6];
		if(var_5dc5e20a.var_e0beb6ee != "playing" || var_5dc5e20a == self)
		{
			continue;
		}
		var_bbd67d26[var_bbd67d26.size] = var_5dc5e20a;
	}
	return var_bbd67d26;
}

/*
	Name: function_b8bbe7f3
	Namespace: namespace_4a43ba8
	Checksum: 0xE24F2998
	Offset: 0x3E48
	Size: 0x1EB
	Parameters: 1
	Flags: None
*/
function function_b8bbe7f3(var_56fd354c)
{
	if(level.var_de12b72f)
	{
		/#
			namespace_33b293fd::function_a7ee953(isdefined(level.var_e7a38025[self.var_3e94206a]));
		#/
		var_56fd354c.var_5f60144f = level.var_bbd67d26[self.var_3e94206a];
		var_56fd354c.var_657b1773 = undefined;
		foreach(var_3e94206a in level.var_e7a38025)
		{
			if(var_3e94206a == self.var_3e94206a)
			{
				break;
			}
			if(!isdefined(var_56fd354c.var_657b1773))
			{
				var_56fd354c.var_657b1773 = level.var_bbd67d26[var_3e94206a];
				break;
			}
			foreach(var_5dc5e20a in level.var_bbd67d26[var_3e94206a])
			{
				var_56fd354c.var_657b1773[var_56fd354c.var_657b1773.size] = var_5dc5e20a;
			}
		}
	}
	else
	{
		var_56fd354c.var_5f60144f = [];
		var_56fd354c.var_657b1773 = level.var_9b1393e7;
	}
}

/*
	Name: function_57cf2c61
	Namespace: namespace_4a43ba8
	Checksum: 0xAFBE77A0
	Offset: 0x4040
	Size: 0xB9
	Parameters: 1
	Flags: None
*/
function function_57cf2c61(var_8d8007e7)
{
	for(var_c957f6b6 = 0; var_c957f6b6 < var_8d8007e7.size; var_c957f6b6++)
	{
		var_8d8007e7[var_c957f6b6].var_62341371 = 0;
	}
	/#
		if(level.var_c84cc7ad || level.var_1d606209)
		{
			for(var_c957f6b6 = 0; var_c957f6b6 < var_8d8007e7.size; var_c957f6b6++)
			{
				var_8d8007e7[var_c957f6b6].var_3f63526e = [];
				var_8d8007e7[var_c957f6b6].var_fbadb457 = [];
			}
		}
	#/
}

/*
	Name: function_a8b6ae24
	Namespace: namespace_4a43ba8
	Checksum: 0x845BCCB9
	Offset: 0x4108
	Size: 0x53F
	Parameters: 2
	Flags: None
*/
function function_a8b6ae24(var_8d8007e7, var_a8071538)
{
	if(!isdefined(var_8d8007e7))
	{
		return undefined;
	}
	/#
		if(function_6f1ebe57("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
		}
		if(function_6f1ebe57("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			return function_68eb5b1b(var_8d8007e7);
		}
	#/
	if(function_4bd0142f("scr_spawnsimple") > 0)
	{
		return function_68eb5b1b(var_8d8007e7);
	}
	function_f38736d0();
	var_3df4900d = 25000;
	function_57cf2c61(var_8d8007e7);
	var_56fd354c = function_a8fb77bd();
	function_b8bbe7f3(var_56fd354c);
	var_fa9ec3b3 = var_56fd354c.var_5f60144f.size + var_56fd354c.var_657b1773.size;
	var_a55438b5 = 2;
	var_a761d1cc = self.var_3e94206a;
	for(var_c957f6b6 = 0; var_c957f6b6 < var_8d8007e7.size; var_c957f6b6++)
	{
		var_3f6206f4 = var_8d8007e7[var_c957f6b6];
		if(!isdefined(var_3f6206f4.var_a5f53b97))
		{
			var_3f6206f4.var_a5f53b97 = 0;
		}
		if(var_3f6206f4.var_a5f53b97 > 0)
		{
			var_3d616940 = var_3f6206f4.var_b8357d4e[var_a761d1cc];
			var_ddb85454 = var_3f6206f4.var_ddb85454[var_a761d1cc];
			var_3f6206f4.var_62341371 = var_ddb85454 - var_a55438b5 * var_3d616940 / var_3f6206f4.var_a5f53b97;
			/#
				if(level.var_c84cc7ad || level.var_1d606209)
				{
					var_3f6206f4.var_3f63526e[var_3f6206f4.var_3f63526e.size] = "Dev Block strings are not supported" + function_b6b79a0(var_3f6206f4.var_62341371) + "Dev Block strings are not supported" + function_b6b79a0(var_ddb85454) + "Dev Block strings are not supported" + var_a55438b5 + "Dev Block strings are not supported" + function_b6b79a0(var_3d616940) + "Dev Block strings are not supported" + var_3f6206f4.var_a5f53b97;
				}
			#/
			continue;
		}
		var_3f6206f4.var_62341371 = 0;
		/#
			if(level.var_c84cc7ad || level.var_1d606209)
			{
				var_3f6206f4.var_3f63526e[var_3f6206f4.var_3f63526e.size] = "Dev Block strings are not supported";
			}
		#/
	}
	if(isdefined(var_a8071538))
	{
		for(var_c957f6b6 = 0; var_c957f6b6 < var_a8071538.size; var_c957f6b6++)
		{
			if(isdefined(var_a8071538[var_c957f6b6].var_62341371))
			{
				var_a8071538[var_c957f6b6].var_62341371 = var_a8071538[var_c957f6b6].var_62341371 + var_3df4900d;
				continue;
			}
			var_a8071538[var_c957f6b6].var_62341371 = var_3df4900d;
		}
	}
	function_ad490295(var_8d8007e7);
	function_147ebda5(var_8d8007e7, 1);
	function_3ed62c9(var_8d8007e7);
	function_ab118dbe(var_8d8007e7, 1);
	var_3c61bfc2 = function_e87ffe7e(var_8d8007e7);
	/#
		if(function_6f1ebe57("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
		}
		if(function_6f1ebe57("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			function_d46f7aa7(var_3c61bfc2);
		}
	#/
	return var_3c61bfc2;
}

/*
	Name: function_a1a08e8b
	Namespace: namespace_4a43ba8
	Checksum: 0xFA1AE4F7
	Offset: 0x4650
	Size: 0x299
	Parameters: 1
	Flags: None
*/
function function_a1a08e8b(var_8d8007e7)
{
	if(!isdefined(var_8d8007e7))
	{
		return undefined;
	}
	function_f38736d0();
	function_57cf2c61(var_8d8007e7);
	var_bbd67d26 = function_375588a3();
	var_7d44ed30 = 1600;
	var_5ee6ca02 = 1200;
	if(var_bbd67d26.size > 0)
	{
		for(var_c957f6b6 = 0; var_c957f6b6 < var_8d8007e7.size; var_c957f6b6++)
		{
			var_17d83354 = 0;
			var_52eb95e5 = 0;
			for(var_a3557c4d = 0; var_a3557c4d < var_bbd67d26.size; var_a3557c4d++)
			{
				var_2a97d9fd = function_7d15e2f8(var_8d8007e7[var_c957f6b6].var_722885f3, var_bbd67d26[var_a3557c4d].var_722885f3);
				if(var_2a97d9fd < var_5ee6ca02)
				{
					var_52eb95e5 = var_52eb95e5 + var_5ee6ca02 - var_2a97d9fd / var_5ee6ca02;
				}
				var_520bfddc = function_69c2f683(var_2a97d9fd - var_7d44ed30);
				var_17d83354 = var_17d83354 + var_520bfddc;
			}
			var_9b51d63e = var_17d83354 / var_bbd67d26.size;
			var_73447ab0 = var_7d44ed30 - var_9b51d63e / var_7d44ed30;
			var_8d8007e7[var_c957f6b6].var_62341371 = var_73447ab0 - var_52eb95e5 * 2 + function_62e4226e(0.2);
		}
	}
	function_ad490295(var_8d8007e7);
	function_147ebda5(var_8d8007e7, 0);
	function_3ed62c9(var_8d8007e7);
	function_ab118dbe(var_8d8007e7, 0);
	return function_e87ffe7e(var_8d8007e7);
}

/*
	Name: function_f38736d0
	Namespace: namespace_4a43ba8
	Checksum: 0x7A324981
	Offset: 0x48F8
	Size: 0x4F
	Parameters: 0
	Flags: None
*/
function function_f38736d0()
{
	/#
		level.var_c84cc7ad = function_4bd0142f("Dev Block strings are not supported");
		level.var_1d606209 = function_4bd0142f("Dev Block strings are not supported") > 0;
	#/
}

/*
	Name: function_f415b14
	Namespace: namespace_4a43ba8
	Checksum: 0x1A1AE24F
	Offset: 0x4950
	Size: 0xA5
	Parameters: 0
	Flags: None
*/
function function_f415b14()
{
	/#
		while(1)
		{
			while(1)
			{
				if(function_4bd0142f("Dev Block strings are not supported") > 0)
				{
					break;
				}
				wait(0.05);
			}
			thread function_91a6180();
			while(1)
			{
				if(function_4bd0142f("Dev Block strings are not supported") <= 0)
				{
					break;
				}
				wait(0.05);
			}
			level notify("hash_872a4ab7");
		}
	#/
}

/*
	Name: function_91a6180
	Namespace: namespace_4a43ba8
	Checksum: 0x12CA3AC
	Offset: 0x4A00
	Size: 0x10F
	Parameters: 0
	Flags: None
*/
function function_91a6180()
{
	/#
		level endon("hash_872a4ab7");
		while(1)
		{
			if(level.var_2395e945.size > 0 && level.var_8d8007e7.size > 0)
			{
				var_5c820472 = function_26299103(level.var_2395e945.size);
				var_5dc5e20a = level.var_2395e945[var_5c820472];
				var_8a45b9f4 = 1;
				while(!isdefined(var_5dc5e20a) && var_8a45b9f4 < level.var_2395e945.size)
				{
					var_5c820472 = var_5c820472 + 1 % level.var_2395e945.size;
					var_8a45b9f4++;
					var_5dc5e20a = level.var_2395e945[var_5c820472];
				}
				var_5dc5e20a function_a8b6ae24(level.var_8d8007e7);
			}
			wait(0.05);
		}
	#/
}

/*
	Name: function_e2e4ca72
	Namespace: namespace_4a43ba8
	Checksum: 0xA2F3901C
	Offset: 0x4B18
	Size: 0x59
	Parameters: 0
	Flags: None
*/
function function_e2e4ca72()
{
	/#
		while(1)
		{
			if(function_4bd0142f("Dev Block strings are not supported") < 1)
			{
				wait(3);
				continue;
			}
			thread function_ee9ff5a7();
			return;
		}
	#/
}

/*
	Name: function_ee9ff5a7
	Namespace: namespace_4a43ba8
	Checksum: 0x8A7DA13B
	Offset: 0x4B80
	Size: 0x64F
	Parameters: 0
	Flags: None
*/
function function_ee9ff5a7()
{
	/#
		var_75849218 = 20;
		var_ef5a711f = 20;
		var_e382e5d9 = 0.1;
		var_6482520a = [];
		var_ffb22fd = function_99201f25("Dev Block strings are not supported", "Dev Block strings are not supported");
		if(var_ffb22fd.size != 2)
		{
			function_895b00("Dev Block strings are not supported");
			return;
		}
		var_95d0212b = var_ffb22fd[0].var_722885f3;
		var_aaeec8c5 = var_ffb22fd[0].var_722885f3;
		if(var_ffb22fd[1].var_722885f3[0] > var_aaeec8c5[0])
		{
			var_aaeec8c5 = (var_ffb22fd[1].var_722885f3[0], var_aaeec8c5[1], var_aaeec8c5[2]);
		}
		else
		{
			var_95d0212b = (var_ffb22fd[1].var_722885f3[0], var_95d0212b[1], var_95d0212b[2]);
		}
		if(var_ffb22fd[1].var_722885f3[1] > var_aaeec8c5[1])
		{
			var_aaeec8c5 = (var_aaeec8c5[0], var_ffb22fd[1].var_722885f3[1], var_aaeec8c5[2]);
		}
		else
		{
			var_95d0212b = (var_95d0212b[0], var_ffb22fd[1].var_722885f3[1], var_95d0212b[2]);
		}
		var_c957f6b6 = 0;
		for(var_297f9d46 = 0; var_297f9d46 < var_ef5a711f; var_297f9d46++)
		{
			var_fe5c70b2 = var_297f9d46 / var_ef5a711f - 1;
			for(var_4f8217af = 0; var_4f8217af < var_75849218; var_4f8217af++)
			{
				var_a556d0db = var_4f8217af / var_75849218 - 1;
				var_6482520a[var_c957f6b6] = function_a8fb77bd();
				var_6482520a[var_c957f6b6].var_722885f3 = (var_95d0212b[0] * var_a556d0db + var_aaeec8c5[0] * 1 - var_a556d0db, var_95d0212b[1] * var_fe5c70b2 + var_aaeec8c5[1] * 1 - var_fe5c70b2, var_95d0212b[2]);
				var_6482520a[var_c957f6b6].var_6ab6f4fd = (0, 0, 0);
				var_6482520a[var_c957f6b6].var_1a859714 = function_bc7ce905(var_6482520a[var_c957f6b6].var_6ab6f4fd);
				var_6482520a[var_c957f6b6].var_74ceb7b3 = var_6482520a[var_c957f6b6].var_722885f3;
				var_c957f6b6++;
			}
		}
		var_36efe19f = 0;
		while(1)
		{
			var_dd4581bb = 0;
			var_5acdd08c = 5;
			for(var_c957f6b6 = 0; var_c957f6b6 < var_5acdd08c; var_c957f6b6++)
			{
				if(!level.var_2395e945.size || !isdefined(level.var_2395e945[0].var_3e94206a) || level.var_2395e945[0].var_3e94206a == "Dev Block strings are not supported" || !isdefined(level.var_2395e945[0].var_808c68ef))
				{
					break;
				}
				var_98e9ed4a = var_dd4581bb + var_6482520a.size / var_5acdd08c;
				if(var_c957f6b6 == var_5acdd08c - 1)
				{
					var_98e9ed4a = var_6482520a.size;
				}
				while(var_dd4581bb < var_98e9ed4a)
				{
					function_bb6a45e8(var_6482520a[var_dd4581bb]);
					var_dd4581bb++;
				}
				if(var_36efe19f)
				{
					level.var_2395e945[0] function_714f6572(var_6482520a, var_75849218, var_ef5a711f, var_e382e5d9);
				}
				wait(0.05);
			}
			if(!level.var_2395e945.size || !isdefined(level.var_2395e945[0].var_3e94206a) || level.var_2395e945[0].var_3e94206a == "Dev Block strings are not supported" || !isdefined(level.var_2395e945[0].var_808c68ef))
			{
				wait(1);
				continue;
			}
			level.var_2395e945[0] function_a8b6ae24(var_6482520a);
			for(var_c957f6b6 = 0; var_c957f6b6 < var_6482520a.size; var_c957f6b6++)
			{
				function_3bdbf842(var_6482520a[var_c957f6b6], var_e382e5d9);
			}
			var_36efe19f = 1;
			level.var_2395e945[0] function_714f6572(var_6482520a, var_75849218, var_ef5a711f, var_e382e5d9);
			wait(0.05);
		}
	#/
}

/*
	Name: function_714f6572
	Namespace: namespace_4a43ba8
	Checksum: 0xE87546D
	Offset: 0x51D8
	Size: 0x145
	Parameters: 4
	Flags: None
*/
function function_714f6572(var_6482520a, var_75849218, var_ef5a711f, var_e382e5d9)
{
	/#
		var_c957f6b6 = 0;
		for(var_297f9d46 = 0; var_297f9d46 < var_ef5a711f; var_297f9d46++)
		{
			var_fe5c70b2 = var_297f9d46 / var_ef5a711f - 1;
			for(var_4f8217af = 0; var_4f8217af < var_75849218; var_4f8217af++)
			{
				var_a556d0db = var_4f8217af / var_75849218 - 1;
				if(var_297f9d46 > 0)
				{
					function_8965f304(var_6482520a[var_c957f6b6], var_6482520a[var_c957f6b6 - var_75849218], var_e382e5d9);
				}
				if(var_4f8217af > 0)
				{
					function_8965f304(var_6482520a[var_c957f6b6], var_6482520a[var_c957f6b6 - 1], var_e382e5d9);
				}
				var_c957f6b6++;
			}
		}
	#/
}

/*
	Name: function_3bdbf842
	Namespace: namespace_4a43ba8
	Checksum: 0xDAA8BDAA
	Offset: 0x5328
	Size: 0x5B
	Parameters: 2
	Flags: None
*/
function function_3bdbf842(var_9976e9ed, var_e382e5d9)
{
	/#
		var_9976e9ed.var_5ab41da9 = 1;
		if(var_9976e9ed.var_62341371 < -1000 / var_e382e5d9)
		{
			var_9976e9ed.var_5ab41da9 = 0;
		}
	#/
}

/*
	Name: function_8965f304
	Namespace: namespace_4a43ba8
	Checksum: 0x658A4EA6
	Offset: 0x5390
	Size: 0xDB
	Parameters: 3
	Flags: None
*/
function function_8965f304(var_9976e9ed, var_bf796456, var_e382e5d9)
{
	/#
		if(!var_9976e9ed.var_5ab41da9 || !var_bf796456.var_5ab41da9)
		{
			return;
		}
		var_ca755c1c = var_9976e9ed.var_722885f3 + (0, 0, var_9976e9ed.var_62341371 * var_e382e5d9 + 100);
		var_3c7ccb57 = var_bf796456.var_722885f3 + (0, 0, var_bf796456.var_62341371 * var_e382e5d9 + 100);
		function_4e418837(var_ca755c1c, var_3c7ccb57, (1, 1, 1));
	#/
}

/*
	Name: function_d320505c
	Namespace: namespace_4a43ba8
	Checksum: 0xC305282A
	Offset: 0x5478
	Size: 0x373
	Parameters: 0
	Flags: None
*/
function function_d320505c()
{
	/#
		while(1)
		{
			if(function_4bd0142f("Dev Block strings are not supported") < 1)
			{
				wait(3);
				continue;
			}
			if(!isdefined(level.var_2395e945))
			{
				wait(0.05);
				continue;
			}
			var_d0c9f49f = [];
			for(var_c957f6b6 = 0; var_c957f6b6 < level.var_2395e945.size; var_c957f6b6++)
			{
				if(!isdefined(level.var_2395e945[var_c957f6b6]))
				{
					continue;
				}
				if(level.var_2395e945[var_c957f6b6].var_e0beb6ee == "Dev Block strings are not supported" && function_5dbf7eca(level.var_2395e945[var_c957f6b6].var_4be20d44, "Dev Block strings are not supported"))
				{
					var_d0c9f49f[var_d0c9f49f.size] = level.var_2395e945[var_c957f6b6];
				}
			}
			if(var_d0c9f49f.size > 0)
			{
				if(function_4bd0142f("Dev Block strings are not supported") == 1)
				{
					var_e600741c = var_d0c9f49f[function_26299103(var_d0c9f49f.size)];
					var_8bcb913d = var_d0c9f49f[function_26299103(var_d0c9f49f.size)];
					var_8bcb913d thread [[level.var_637baea8]](var_e600741c, var_e600741c, 1000, 0, "Dev Block strings are not supported", level.var_6c3e6703, (0, 0, 0), (0, 0, 0), "Dev Block strings are not supported", (0, 0, 0), 0, 0, (1, 0, 0));
					break;
				}
				var_b324de2 = function_4bd0142f("Dev Block strings are not supported");
				var_a6b677dd = undefined;
				for(var_5e76f0af = 0; var_5e76f0af < var_b324de2; var_5e76f0af++)
				{
					var_e600741c = var_d0c9f49f[function_26299103(var_d0c9f49f.size)];
					for(var_8bcb913d = var_d0c9f49f[function_26299103(var_d0c9f49f.size)]; isdefined(var_a6b677dd) && var_8bcb913d == var_a6b677dd;  = var_d0c9f49f[function_26299103(var_d0c9f49f.size)])
					{
					}
					var_8bcb913d thread [[level.var_637baea8]](var_e600741c, var_e600741c, 1000, 0, "Dev Block strings are not supported", level.var_6c3e6703, (0, 0, 0), (0, 0, 0), "Dev Block strings are not supported", (0, 0, 0), 0, 0, (1, 0, 0));
					var_a6b677dd = var_8bcb913d;
				}
			}
			else if(function_6f1ebe57("Dev Block strings are not supported") != "Dev Block strings are not supported")
			{
				wait(function_f3087faa("Dev Block strings are not supported"));
			}
			else
			{
				wait(0.05);
			}
		}
	#/
}

/*
	Name: function_8384886e
	Namespace: namespace_4a43ba8
	Checksum: 0x4656EE6C
	Offset: 0x57F8
	Size: 0x1E7
	Parameters: 0
	Flags: None
*/
function function_8384886e()
{
	/#
		function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
		var_647c803b = function_6f1ebe57("Dev Block strings are not supported");
		var_baed4310 = function_6f1ebe57("Dev Block strings are not supported");
		var_9d0e9a06 = 0;
		while(1)
		{
			var_35c84e32 = function_6f1ebe57("Dev Block strings are not supported");
			var_957b0fef = undefined;
			if(!isdefined(var_35c84e32) || var_35c84e32 == var_647c803b)
			{
				var_957b0fef = function_6f1ebe57("Dev Block strings are not supported");
				if(isdefined(var_957b0fef) && var_957b0fef != "Dev Block strings are not supported")
				{
					function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
				}
				else
				{
					wait(0.5);
					continue;
				}
			}
			var_647c803b = var_35c84e32;
			var_9d0e9a06 = 0;
			function_78353cbc(var_35c84e32, var_957b0fef);
			if(!isdefined(level.var_27b4af72))
			{
				function_895b00("Dev Block strings are not supported");
			}
			else
			{
				function_895b00("Dev Block strings are not supported" + level.var_27b4af72.var_3d29746);
			}
			thread function_363025a();
		}
	#/
}

/*
	Name: function_76bb9fb8
	Namespace: namespace_4a43ba8
	Checksum: 0xE7EE5738
	Offset: 0x59E8
	Size: 0x4AF
	Parameters: 0
	Flags: None
*/
function function_76bb9fb8()
{
	/#
		while(1)
		{
			if(function_6f1ebe57("Dev Block strings are not supported") == "Dev Block strings are not supported")
			{
				wait(3);
				continue;
			}
			var_60db70fa = GetTime();
			for(var_c957f6b6 = 0; var_c957f6b6 < level.var_2858620e.size; var_c957f6b6++)
			{
				if(isdefined(level.var_2858620e[var_c957f6b6].var_28cb52b9))
				{
					function_4e418837(level.var_2858620e[var_c957f6b6].var_22ae8d39, level.var_2858620e[var_c957f6b6].var_20bea989, (1, 0, 0));
				}
				else
				{
					function_4e418837(level.var_2858620e[var_c957f6b6].var_22ae8d39, level.var_2858620e[var_c957f6b6].var_20bea989, (1, 1, 1));
				}
				var_e600741c = level.var_2858620e[var_c957f6b6].var_e600741c;
				if(isdefined(var_e600741c) && function_5b49d38c(var_e600741c))
				{
					function_4e418837(level.var_2858620e[var_c957f6b6].var_20bea989, var_e600741c.var_722885f3, (0.4, 0.4, 0.8));
				}
			}
			for(var_7f95eaf7 = 0; var_7f95eaf7 < level.var_2395e945.size; var_7f95eaf7++)
			{
				if(!isdefined(level.var_2395e945[var_7f95eaf7]))
				{
					continue;
				}
				if(isdefined(level.var_2395e945[var_7f95eaf7].var_828447e7))
				{
					function_8f3e0f73(level.var_2395e945[var_7f95eaf7].var_722885f3 + VectorScale((0, 0, 1), 64), level.var_2395e945[var_7f95eaf7].var_828447e7, (1, 1, 1));
				}
			}
			var_7d1c9e6c = level.var_98822143;
			level.var_98822143 = [];
			for(var_c957f6b6 = 0; var_c957f6b6 < var_7d1c9e6c.size; var_c957f6b6++)
			{
				var_7501043a = var_7d1c9e6c[var_c957f6b6];
				if(var_7501043a.var_349bc34)
				{
					function_4e418837(var_7501043a.var_2213d792, var_7501043a.var_5a754563, (0.4, 0.5, 0.4));
					function_4e418837(var_7501043a.var_5a754563, var_7501043a.var_a92e1aba, (0, 1, 1));
					function_8f3e0f73(var_7501043a.var_5a754563 + VectorScale((0, 0, 1), 32), "Dev Block strings are not supported", (0, 1, 1));
				}
				else
				{
					function_4e418837(var_7501043a.var_2213d792, var_7501043a.var_a92e1aba, (0.4, 0.5, 0.4));
					function_4e418837(var_7501043a.var_a92e1aba, var_7501043a.var_5a754563, (0, 1, 1));
					function_8f3e0f73(var_7501043a.var_5a754563 + VectorScale((0, 0, 1), 32), "Dev Block strings are not supported", (0, 1, 1));
				}
				if(var_60db70fa - var_7501043a.var_60db70fa < 60000)
				{
					level.var_98822143[level.var_98822143.size] = var_7d1c9e6c[var_c957f6b6];
				}
			}
			wait(0.05);
		}
	#/
}

/*
	Name: function_403f0d14
	Namespace: namespace_4a43ba8
	Checksum: 0x63DD92BA
	Offset: 0x5EA0
	Size: 0x55
	Parameters: 0
	Flags: None
*/
function function_403f0d14()
{
	while(1)
	{
		if(function_6f1ebe57("scr_spawnpointdebug") == "0")
		{
			wait(3);
			continue;
		}
		function_1acf6a5c();
		wait(3);
	}
}

/*
	Name: function_f5751b11
	Namespace: namespace_4a43ba8
	Checksum: 0x94F24A10
	Offset: 0x5F00
	Size: 0x313
	Parameters: 1
	Flags: None
*/
function function_f5751b11(var_8d8007e7)
{
	level notify("hash_94c152d8");
	level endon("hash_94c152d8");
	/#
		while(1)
		{
			if(function_6f1ebe57("Dev Block strings are not supported") == "Dev Block strings are not supported")
			{
				wait(3);
				continue;
			}
			var_f07c0031 = VectorScale((0, 0, -1), 12);
			for(var_c957f6b6 = 0; var_c957f6b6 < var_8d8007e7.size; var_c957f6b6++)
			{
				var_d37015ad = 1 * 1 - var_8d8007e7[var_c957f6b6].var_62341371 / -100000;
				if(var_d37015ad < 0)
				{
					var_d37015ad = 0;
				}
				if(var_d37015ad > 1)
				{
					var_d37015ad = 1;
				}
				var_114c96fa = var_8d8007e7[var_c957f6b6].var_722885f3 + VectorScale((0, 0, 1), 80);
				function_8f3e0f73(var_114c96fa, function_b6b79a0(var_8d8007e7[var_c957f6b6].var_62341371), (1, var_d37015ad, 0.5));
				var_114c96fa = var_114c96fa + var_f07c0031;
				if(isdefined(var_8d8007e7[var_c957f6b6].var_3f63526e))
				{
					for(var_a3557c4d = 0; var_a3557c4d < var_8d8007e7[var_c957f6b6].var_3f63526e.size; var_a3557c4d++)
					{
						function_8f3e0f73(var_114c96fa, var_8d8007e7[var_c957f6b6].var_3f63526e[var_a3557c4d], VectorScale((1, 1, 1), 0.5));
						var_114c96fa = var_114c96fa + var_f07c0031;
					}
				}
				else if(isdefined(var_8d8007e7[var_c957f6b6].var_fbadb457))
				{
					for(var_a3557c4d = 0; var_a3557c4d < var_8d8007e7[var_c957f6b6].var_fbadb457.size; var_a3557c4d++)
					{
						if(var_8d8007e7[var_c957f6b6].var_fbadb457[var_a3557c4d].var_defc5258 == 0)
						{
							continue;
						}
						function_8f3e0f73(var_114c96fa, "Dev Block strings are not supported" + var_8d8007e7[var_c957f6b6].var_fbadb457[var_a3557c4d].var_defc5258, VectorScale((1, 1, 1), 0.5));
						var_114c96fa = var_114c96fa + var_f07c0031;
					}
				}
			}
			wait(0.05);
		}
	#/
}

/*
	Name: function_9ce570b0
	Namespace: namespace_4a43ba8
	Checksum: 0xFD9796C0
	Offset: 0x6220
	Size: 0xEF
	Parameters: 0
	Flags: None
*/
function function_9ce570b0()
{
	while(1)
	{
		if(function_6f1ebe57("scr_spawnpointprofile") != "1")
		{
			wait(3);
			continue;
		}
		for(var_c957f6b6 = 0; var_c957f6b6 < level.var_8d8007e7.size; var_c957f6b6++)
		{
			level.var_8d8007e7[var_c957f6b6].var_62341371 = function_26299103(10000);
		}
		if(level.var_2395e945.size > 0)
		{
			level.var_2395e945[function_26299103(level.var_2395e945.size)] function_a8b6ae24(level.var_8d8007e7);
		}
		wait(0.05);
	}
}

/*
	Name: function_d98d4227
	Namespace: namespace_4a43ba8
	Checksum: 0xC2A22C43
	Offset: 0x6318
	Size: 0xDF
	Parameters: 2
	Flags: None
*/
function function_d98d4227(var_2395e945, var_722885f3)
{
	/#
		if(function_6f1ebe57("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			return;
		}
		var_a4ad846c = GetTime();
		while(1)
		{
			for(var_c957f6b6 = 0; var_c957f6b6 < var_2395e945.size; var_c957f6b6++)
			{
				function_4e418837(var_2395e945[var_c957f6b6].var_722885f3, var_722885f3, (0.5, 1, 0.5));
			}
			if(GetTime() - var_a4ad846c > 5000)
			{
				return;
			}
			wait(0.05);
		}
	#/
}

/*
	Name: function_d5c89a1f
	Namespace: namespace_4a43ba8
	Checksum: 0xC5612788
	Offset: 0x6400
	Size: 0x13
	Parameters: 2
	Flags: None
*/
function function_d5c89a1f(var_93c0118d, var_e600741c)
{
}

/*
	Name: function_bf793871
	Namespace: namespace_4a43ba8
	Checksum: 0xD976DF9E
	Offset: 0x6420
	Size: 0x121
	Parameters: 1
	Flags: None
*/
function function_bf793871(var_993844c5)
{
	for(var_c957f6b6 = 0; var_c957f6b6 < level.var_2858620e.size; var_c957f6b6++)
	{
		if(level.var_2858620e[var_c957f6b6].var_e600741c == var_993844c5.var_e600741c)
		{
			var_2a97d9fd = function_7d15e2f8(level.var_2858620e[var_c957f6b6].var_22ae8d39, var_993844c5.var_22ae8d39);
			if(var_2a97d9fd > 200)
			{
				continue;
			}
			var_2a97d9fd = function_7d15e2f8(level.var_2858620e[var_c957f6b6].var_20bea989, var_993844c5.var_20bea989);
			if(var_2a97d9fd > 200)
			{
				continue;
			}
			level.var_2858620e[var_c957f6b6].var_77213189 = 1;
		}
	}
}

/*
	Name: function_1acf6a5c
	Namespace: namespace_4a43ba8
	Checksum: 0x3F01D1A8
	Offset: 0x6550
	Size: 0x1E3
	Parameters: 0
	Flags: None
*/
function function_1acf6a5c()
{
	var_60db70fa = GetTime();
	for(var_c957f6b6 = 0; var_c957f6b6 < level.var_2858620e.size; var_c957f6b6++)
	{
		var_993844c5 = level.var_2858620e[var_c957f6b6];
		if(var_60db70fa - var_993844c5.var_60db70fa > 90000 || !isdefined(var_993844c5.var_e600741c) || !function_5b49d38c(var_993844c5.var_e600741c) || !isdefined(level.var_e7a38025[var_993844c5.var_e600741c.var_3e94206a]) || function_7d15e2f8(var_993844c5.var_e600741c.var_722885f3, var_993844c5.var_20bea989) > 400)
		{
			level.var_2858620e[var_c957f6b6].var_77213189 = 1;
		}
	}
	var_59026767 = level.var_2858620e;
	level.var_2858620e = [];
	var_34fb19f = 0;
	if(var_59026767.size - 1024 > 0)
	{
		var_34fb19f = var_59026767.size - 1024;
	}
	for(var_c957f6b6 = var_34fb19f; var_c957f6b6 < var_59026767.size; var_c957f6b6++)
	{
		if(!isdefined(var_59026767[var_c957f6b6].var_77213189))
		{
			level.var_2858620e[level.var_2858620e.size] = var_59026767[var_c957f6b6];
		}
	}
}

/*
	Name: function_cb4bd6bd
	Namespace: namespace_4a43ba8
	Checksum: 0x73FBDD1B
	Offset: 0x6740
	Size: 0x127
	Parameters: 1
	Flags: None
*/
function function_cb4bd6bd(var_3ba4ad68)
{
	var_a2d47c3d = self.var_722885f3 + level.var_67efebc4;
	var_38347c = var_3ba4ad68 + VectorScale((0, 0, 1), 32);
	var_661f78b = function_cb3d1c9b(var_a2d47c3d, var_38347c);
	var_1a859714 = function_bc7ce905(self.var_6ab6f4fd);
	if(var_661f78b < level.var_bbbc02ee * level.var_bbbc02ee)
	{
		var_be8ec63f = function_f679a325(var_38347c - var_a2d47c3d);
		var_7204da72 = function_88c629b7(function_5f9a4869(var_be8ec63f, var_1a859714));
		if(var_7204da72 < level.var_545a87d2)
		{
			return 1;
		}
	}
	return 0;
}

/*
	Name: function_3ed62c9
	Namespace: namespace_4a43ba8
	Checksum: 0x9BF393C4
	Offset: 0x6870
	Size: 0x211
	Parameters: 1
	Flags: None
*/
function function_3ed62c9(var_8d8007e7)
{
	if(function_6f1ebe57("scr_spawnpointnewlogic") == "0")
	{
		return;
	}
	var_4e0a4ce9 = 100000;
	if(function_6f1ebe57("scr_spawnpointweaponpenalty") != "" && function_6f1ebe57("scr_spawnpointweaponpenalty") != "0")
	{
		var_4e0a4ce9 = function_f3087faa("scr_spawnpointweaponpenalty");
	}
	var_1dfcdec2 = 62500;
	for(var_c957f6b6 = 0; var_c957f6b6 < var_8d8007e7.size; var_c957f6b6++)
	{
		for(var_a3557c4d = 0; var_a3557c4d < level.var_962dfd9c.size; var_a3557c4d++)
		{
			if(!isdefined(level.var_962dfd9c[var_a3557c4d]))
			{
				continue;
			}
			if(function_cb3d1c9b(var_8d8007e7[var_c957f6b6].var_722885f3, level.var_962dfd9c[var_a3557c4d].var_722885f3) < var_1dfcdec2)
			{
				var_8d8007e7[var_c957f6b6].var_62341371 = var_8d8007e7[var_c957f6b6].var_62341371 - var_4e0a4ce9;
				/#
					if(level.var_c84cc7ad || level.var_1d606209)
					{
						var_8d8007e7[var_c957f6b6].var_3f63526e[var_8d8007e7[var_c957f6b6].var_3f63526e.size] = "Dev Block strings are not supported" + function_b6b79a0(var_4e0a4ce9);
					}
				#/
			}
		}
	}
}

/*
	Name: function_d43d261c
	Namespace: namespace_4a43ba8
	Checksum: 0xAF74B47F
	Offset: 0x6A90
	Size: 0x7F
	Parameters: 0
	Flags: None
*/
function function_d43d261c()
{
	var_c87ce48 = 0;
	while(1)
	{
		wait(0.05);
		if(!isdefined(level.var_8d8007e7))
		{
			return;
		}
		var_c87ce48 = var_c87ce48 + 1 % level.var_8d8007e7.size;
		var_3f6206f4 = level.var_8d8007e7[var_c87ce48];
		function_bb6a45e8(var_3f6206f4);
	}
}

/*
	Name: function_30934c61
	Namespace: namespace_4a43ba8
	Checksum: 0x8422B618
	Offset: 0x6B18
	Size: 0xBF
	Parameters: 2
	Flags: None
*/
function function_30934c61(var_60282b10, var_aae5c7f1)
{
	var_9368ba0c = 0;
	foreach(var_3e94206a in level.var_e7a38025)
	{
		if(var_3e94206a == var_60282b10)
		{
			continue;
		}
		var_9368ba0c = var_9368ba0c + var_aae5c7f1[var_3e94206a];
	}
	return var_9368ba0c;
}

/*
	Name: function_5218c147
	Namespace: namespace_4a43ba8
	Checksum: 0xB500B02F
	Offset: 0x6BE0
	Size: 0xD1
	Parameters: 2
	Flags: None
*/
function function_5218c147(var_60282b10, var_a7f952ce)
{
	var_2a97d9fd = 9999999;
	foreach(var_3e94206a in level.var_e7a38025)
	{
		if(var_3e94206a == var_60282b10)
		{
			continue;
		}
		if(var_2a97d9fd > var_a7f952ce[var_3e94206a])
		{
			var_2a97d9fd = var_a7f952ce[var_3e94206a];
		}
	}
	return var_2a97d9fd;
}

/*
	Name: function_bb6a45e8
	Namespace: namespace_4a43ba8
	Checksum: 0xD5F0D82F
	Offset: 0x6CC0
	Size: 0x6E9
	Parameters: 1
	Flags: None
*/
function function_bb6a45e8(var_3f6206f4)
{
	if(level.var_de12b72f)
	{
		var_a50ee20f = [];
		foreach(var_3e94206a in level.var_e7a38025)
		{
			var_3f6206f4.var_e5b9400d[var_3e94206a] = 0;
			var_a50ee20f[var_3e94206a] = 0;
			var_3f6206f4.var_2783a826[var_3e94206a] = [];
		}
	}
	else
	{
		var_3f6206f4.var_e5b9400d = 0;
		var_3f6206f4.var_2783a826["all"] = [];
	}
	var_2afa9229 = var_3f6206f4.var_1a859714;
	var_f96f74aa = 0;
	/#
		var_f96f74aa = function_4bd0142f("Dev Block strings are not supported") > 0;
	#/
	var_587c5717 = [];
	var_b8357d4e = [];
	if(!level.var_de12b72f)
	{
		var_587c5717["all"] = 9999999;
	}
	foreach(var_3e94206a in level.var_e7a38025)
	{
		var_3f6206f4.var_b8357d4e[var_3e94206a] = 0;
		var_3f6206f4.var_ddb85454[var_3e94206a] = 0;
		var_3f6206f4.var_5bd4a55[var_3e94206a] = 9999999;
		var_587c5717[var_3e94206a] = 9999999;
	}
	var_3f6206f4.var_a5f53b97 = 0;
	for(var_c957f6b6 = 0; var_c957f6b6 < level.var_2395e945.size; var_c957f6b6++)
	{
		var_5dc5e20a = level.var_2395e945[var_c957f6b6];
		if(var_5dc5e20a.var_e0beb6ee != "playing")
		{
			continue;
		}
		var_4cb423cc = var_5dc5e20a.var_722885f3 - var_3f6206f4.var_722885f3;
		var_4cb423cc = (var_4cb423cc[0], var_4cb423cc[1], 0);
		var_2a97d9fd = function_73b84f4d(var_4cb423cc);
		var_3e94206a = "all";
		if(level.var_de12b72f)
		{
			var_3e94206a = var_5dc5e20a.var_3e94206a;
		}
		if(var_2a97d9fd < 1024)
		{
			var_3f6206f4.var_2783a826[var_3e94206a][var_3f6206f4.var_2783a826[var_3e94206a].size] = var_5dc5e20a;
		}
		if(var_2a97d9fd < var_587c5717[var_3e94206a])
		{
			var_587c5717[var_3e94206a] = var_2a97d9fd;
		}
		var_b8357d4e[var_3e94206a] = var_b8357d4e[var_3e94206a] + var_2a97d9fd;
		var_3f6206f4.var_a5f53b97++;
		var_32251794 = function_bc7ce905(var_5dc5e20a.var_6ab6f4fd);
		if(function_5f9a4869(var_2afa9229, var_4cb423cc) < 0 && function_5f9a4869(var_32251794, var_4cb423cc) > 0)
		{
			continue;
		}
		var_618bc849 = function_7178c13c(var_5dc5e20a.var_722885f3 + VectorScale((0, 0, 1), 50), var_3f6206f4.var_74ceb7b3, 0, undefined);
		var_3f6206f4.var_e0c5d87c = GetTime();
		if(var_618bc849)
		{
			if(level.var_de12b72f)
			{
				var_a50ee20f[var_5dc5e20a.var_3e94206a]++;
			}
			else
			{
				var_3f6206f4.var_e5b9400d++;
			}
			/#
				if(var_f96f74aa)
				{
					function_4e418837(var_5dc5e20a.var_722885f3 + VectorScale((0, 0, 1), 50), var_3f6206f4.var_74ceb7b3, (0.5, 1, 0.5));
				}
			#/
		}
	}
	if(level.var_de12b72f)
	{
		foreach(var_3e94206a in level.var_e7a38025)
		{
			var_3f6206f4.var_e5b9400d[var_3e94206a] = function_30934c61(var_3e94206a, var_a50ee20f);
			var_3f6206f4.var_5bd4a55[var_3e94206a] = function_5218c147(var_3e94206a, var_587c5717);
			var_3f6206f4.var_b8357d4e[var_3e94206a] = var_b8357d4e[var_3e94206a];
			var_3f6206f4.var_ddb85454[var_3e94206a] = function_30934c61(var_3e94206a, var_b8357d4e);
		}
	}
	else
	{
		var_3f6206f4.var_b8357d4e["all"] = var_b8357d4e["all"];
		var_3f6206f4.var_ddb85454["all"] = var_b8357d4e["all"];
		var_3f6206f4.var_5bd4a55["all"] = var_587c5717["all"];
	}
}

/*
	Name: function_e40b0d5e
	Namespace: namespace_4a43ba8
	Checksum: 0x18BA0E18
	Offset: 0x73B8
	Size: 0x71
	Parameters: 0
	Flags: None
*/
function function_e40b0d5e()
{
	if(function_6f1ebe57("scr_spawnpointlospenalty") != "" && function_6f1ebe57("scr_spawnpointlospenalty") != "0")
	{
		return function_f3087faa("scr_spawnpointlospenalty");
	}
	return 100000;
}

/*
	Name: function_b7cf3433
	Namespace: namespace_4a43ba8
	Checksum: 0xF13FB75B
	Offset: 0x7438
	Size: 0x2DD
	Parameters: 1
	Flags: None
*/
function function_b7cf3433(var_3f6206f4)
{
	if(!isdefined(var_3f6206f4.var_2783a826))
	{
		return 0;
	}
	var_b4d58996 = undefined;
	var_cf591bbe = undefined;
	var_eb9b16be = undefined;
	var_c3ba4f6 = undefined;
	foreach(var_3e94206a in var_3f6206f4.var_2783a826)
	{
		if(var_3e94206a == self.var_3e94206a)
		{
			break;
		}
		for(var_c957f6b6 = 0; var_c957f6b6 < var_3f6206f4.var_2783a826[var_3e94206a].size; var_c957f6b6++)
		{
			var_5dc5e20a = var_3f6206f4.var_2783a826[var_3e94206a][var_c957f6b6];
			if(!isdefined(var_5dc5e20a))
			{
				continue;
			}
			if(var_5dc5e20a.var_e0beb6ee != "playing")
			{
				continue;
			}
			if(var_5dc5e20a == self)
			{
				continue;
			}
			var_2c3e05ad = function_cb3d1c9b(var_3f6206f4.var_722885f3, var_5dc5e20a.var_722885f3);
			if(!isdefined(var_b4d58996) || var_2c3e05ad < var_cf591bbe)
			{
				var_eb9b16be = var_b4d58996;
				var_c3ba4f6 = var_cf591bbe;
				var_b4d58996 = var_5dc5e20a;
				var_cf591bbe = var_2c3e05ad;
				continue;
			}
			if(!isdefined(var_eb9b16be) || var_2c3e05ad < var_c3ba4f6)
			{
				var_eb9b16be = var_5dc5e20a;
				var_c3ba4f6 = var_2c3e05ad;
			}
		}
	}
	if(isdefined(var_b4d58996))
	{
		if(function_7178c13c(var_b4d58996.var_722885f3 + VectorScale((0, 0, 1), 50), var_3f6206f4.var_74ceb7b3, 0, undefined))
		{
			return 1;
		}
	}
	if(isdefined(var_eb9b16be))
	{
		if(function_7178c13c(var_eb9b16be.var_722885f3 + VectorScale((0, 0, 1), 50), var_3f6206f4.var_74ceb7b3, 0, undefined))
		{
			return 1;
		}
	}
	return 0;
}

/*
	Name: function_ab118dbe
	Namespace: namespace_4a43ba8
	Checksum: 0xC988B060
	Offset: 0x7720
	Size: 0x56F
	Parameters: 2
	Flags: None
*/
function function_ab118dbe(var_8d8007e7, var_de12b72f)
{
	if(function_6f1ebe57("scr_spawnpointnewlogic") == "0")
	{
		return;
	}
	var_cd367bfc = function_e40b0d5e();
	var_95923fac = self.var_3e94206a;
	if(var_de12b72f)
	{
		for(var_c957f6b6 = 0; var_c957f6b6 < var_8d8007e7.size; var_c957f6b6++)
		{
			if(!isdefined(var_8d8007e7[var_c957f6b6].var_e5b9400d))
			{
				continue;
			}
			var_defc5258 = var_cd367bfc * var_8d8007e7[var_c957f6b6].var_e5b9400d[self.var_3e94206a];
			var_8d8007e7[var_c957f6b6].var_62341371 = var_8d8007e7[var_c957f6b6].var_62341371 - var_defc5258;
			/#
				if(level.var_c84cc7ad || level.var_1d606209)
				{
					var_5e76f0af = var_8d8007e7[var_c957f6b6].var_fbadb457.size;
					var_8d8007e7[var_c957f6b6].var_fbadb457[var_5e76f0af] = function_a8fb77bd();
					var_8d8007e7[var_c957f6b6].var_fbadb457[var_5e76f0af].var_defc5258 = var_defc5258;
				}
			#/
		}
	}
	else
	{
		for(var_c957f6b6 = 0; var_c957f6b6 < var_8d8007e7.size; var_c957f6b6++)
		{
			if(!isdefined(var_8d8007e7[var_c957f6b6].var_e5b9400d))
			{
				continue;
			}
			var_defc5258 = var_cd367bfc * var_8d8007e7[var_c957f6b6].var_e5b9400d;
			var_8d8007e7[var_c957f6b6].var_62341371 = var_8d8007e7[var_c957f6b6].var_62341371 - var_defc5258;
			/#
				if(level.var_c84cc7ad || level.var_1d606209)
				{
					var_5e76f0af = var_8d8007e7[var_c957f6b6].var_fbadb457.size;
					var_8d8007e7[var_c957f6b6].var_fbadb457[var_5e76f0af] = function_a8fb77bd();
					var_8d8007e7[var_c957f6b6].var_fbadb457[var_5e76f0af].var_defc5258 = var_defc5258;
				}
			#/
		}
		var_95923fac = "all";
	}
	var_9673c8ac = function_f3087faa("scr_spawn_enemyavoidweight");
	if(var_9673c8ac != 0)
	{
		var_e52d754 = function_f3087faa("scr_spawn_enemyavoiddist");
		var_ab9accec = var_e52d754 * var_e52d754;
		var_8571a09b = 1500 * var_9673c8ac;
		var_203000aa = 800 * var_9673c8ac;
		var_81c42b72 = VectorScale((-1, -1, -1), 99999);
		var_894cbf99 = VectorScale((-1, -1, -1), 99999);
		if(function_5b49d38c(self.var_1f2befd4))
		{
			var_81c42b72 = self.var_1f2befd4.var_722885f3;
		}
		if(isdefined(self.var_894cbf99))
		{
			var_894cbf99 = self.var_894cbf99;
		}
		for(var_c957f6b6 = 0; var_c957f6b6 < var_8d8007e7.size; var_c957f6b6++)
		{
			var_587c5717 = var_8d8007e7[var_c957f6b6].var_5bd4a55[var_95923fac];
			if(var_587c5717 < var_e52d754 * 2)
			{
				var_defc5258 = var_203000aa * 1 - var_587c5717 / var_e52d754 * 2;
				if(var_587c5717 < var_e52d754)
				{
					var_defc5258 = var_defc5258 + var_8571a09b * 1 - var_587c5717 / var_e52d754;
				}
				if(var_defc5258 > 0)
				{
					var_8d8007e7[var_c957f6b6].var_62341371 = var_8d8007e7[var_c957f6b6].var_62341371 - var_defc5258;
					/#
						if(level.var_c84cc7ad || level.var_1d606209)
						{
							var_8d8007e7[var_c957f6b6].var_3f63526e[var_8d8007e7[var_c957f6b6].var_3f63526e.size] = "Dev Block strings are not supported" + function_b6b79a0(var_8d8007e7[var_c957f6b6].var_5bd4a55[var_95923fac]) + "Dev Block strings are not supported" + function_b6b79a0(var_defc5258);
						}
					#/
				}
			}
		}
	}
}

/*
	Name: function_147ebda5
	Namespace: namespace_4a43ba8
	Checksum: 0xDD3D43B9
	Offset: 0x7C98
	Size: 0x28B
	Parameters: 2
	Flags: None
*/
function function_147ebda5(var_8d8007e7, var_de12b72f)
{
	if(function_6f1ebe57("scr_spawnpointnewlogic") == "0")
	{
		return;
	}
	var_60db70fa = GetTime();
	var_6f31ae62 = 10000;
	var_b453c865 = 1048576;
	for(var_c957f6b6 = 0; var_c957f6b6 < var_8d8007e7.size; var_c957f6b6++)
	{
		var_3f6206f4 = var_8d8007e7[var_c957f6b6];
		if(!isdefined(var_3f6206f4.var_4d1e065e) || !isdefined(var_3f6206f4.var_f5190531) || !function_5b49d38c(var_3f6206f4.var_4d1e065e))
		{
			continue;
		}
		if(var_3f6206f4.var_4d1e065e == self)
		{
			continue;
		}
		if(var_de12b72f && var_3f6206f4.var_4d1e065e.var_3e94206a == self.var_3e94206a)
		{
			continue;
		}
		var_aa61e82a = var_60db70fa - var_3f6206f4.var_f5190531;
		if(var_aa61e82a < var_6f31ae62)
		{
			var_2c3e05ad = function_cb3d1c9b(var_3f6206f4.var_4d1e065e.var_722885f3, var_3f6206f4.var_722885f3);
			if(var_2c3e05ad < var_b453c865)
			{
				var_1be81153 = 5000 * 1 - var_2c3e05ad / var_b453c865 * 1 - var_aa61e82a / var_6f31ae62;
				var_3f6206f4.var_62341371 = var_3f6206f4.var_62341371 - var_1be81153;
				/#
					if(level.var_c84cc7ad || level.var_1d606209)
					{
						var_3f6206f4.var_3f63526e[var_3f6206f4.var_3f63526e.size] = "Dev Block strings are not supported" + var_1be81153;
					}
				#/
			}
			else
			{
				var_3f6206f4.var_4d1e065e = undefined;
			}
			continue;
		}
		var_3f6206f4.var_4d1e065e = undefined;
	}
}

/*
	Name: function_ad490295
	Namespace: namespace_4a43ba8
	Checksum: 0x37ECBE93
	Offset: 0x7F30
	Size: 0x103
	Parameters: 1
	Flags: None
*/
function function_ad490295(var_8d8007e7)
{
	if(function_6f1ebe57("scr_spawnpointnewlogic") == "0")
	{
		return;
	}
	if(!isdefined(self.var_40952794))
	{
		return;
	}
	for(var_c957f6b6 = 0; var_c957f6b6 < var_8d8007e7.size; var_c957f6b6++)
	{
		if(var_8d8007e7[var_c957f6b6] == self.var_40952794)
		{
			var_8d8007e7[var_c957f6b6].var_62341371 = var_8d8007e7[var_c957f6b6].var_62341371 - 50000;
			/#
				if(level.var_c84cc7ad || level.var_1d606209)
				{
					var_8d8007e7[var_c957f6b6].var_3f63526e[var_8d8007e7[var_c957f6b6].var_3f63526e.size] = "Dev Block strings are not supported";
				}
			#/
			break;
		}
	}
}

/*
	Name: function_3812b585
	Namespace: namespace_4a43ba8
	Checksum: 0xC84B4010
	Offset: 0x8040
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_3812b585()
{
	var_8d8007e7 = namespace_14b42b8a::function_7faf4c39("cp_global_intermission", "targetname");
	if(!var_8d8007e7.size)
	{
		var_8d8007e7 = namespace_14b42b8a::function_7faf4c39("cp_coop_spawn", "targetname");
	}
	/#
		namespace_33b293fd::function_a7ee953(var_8d8007e7.size);
	#/
	var_3f6206f4 = function_68eb5b1b(var_8d8007e7);
	return var_3f6206f4;
}

/*
	Name: function_1e347e22
	Namespace: namespace_4a43ba8
	Checksum: 0x99EC1590
	Offset: 0x80F0
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_1e347e22()
{
}

