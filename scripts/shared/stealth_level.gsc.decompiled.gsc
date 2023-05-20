#using scripts\codescripts\struct;
#using scripts\shared\ai_shared;
#using scripts\shared\ai_sniper_shared;
#using scripts\shared\array_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\stealth;
#using scripts\shared\stealth_actor;
#using scripts\shared\stealth_aware;
#using scripts\shared\stealth_debug;
#using scripts\shared\stealth_player;
#using scripts\shared\stealth_vo;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;

#namespace namespace_ad45a419;

/*
	Name: function_c35e6aab
	Namespace: namespace_ad45a419
	Checksum: 0xB976633A
	Offset: 0x3C0
	Size: 0x39B
	Parameters: 0
	Flags: None
*/
function function_c35e6aab()
{
	/#
		namespace_33b293fd::function_a7ee953(!isdefined(self.var_ad06727a));
	#/
	if(!isdefined(self.var_ad06727a))
	{
		self.var_ad06727a = function_a8fb77bd();
	}
	self.var_ad06727a.var_3206367b = 1;
	self.var_ad06727a.var_657b1773 = [];
	self.var_ad06727a.var_21c68c49 = [];
	self.var_ad06727a.var_21c68c49["unaware"] = 0;
	self.var_ad06727a.var_21c68c49["low_alert"] = 1;
	self.var_ad06727a.var_21c68c49["high_alert"] = 1;
	self.var_ad06727a.var_21c68c49["combat"] = 2;
	level namespace_ad23e503::function_c35e6aab("stealth_alert", 0);
	level namespace_ad23e503::function_c35e6aab("stealth_combat", 0);
	level namespace_ad23e503::function_c35e6aab("stealth_discovered", 0);
	function_cc5cb8a3();
	namespace_2f06d687::function_ef554cf7("axis", &namespace_ad06727a::function_7df1081d);
	self namespace_234a4910::function_c35e6aab();
	self thread function_7bf2f7ba();
	self thread function_3cc2fee1();
	self thread function_a3cf57bf();
	self thread function_f8b0594a();
	self thread function_51871991();
	self thread function_945a718();
	/#
		self namespace_e449108e::function_148c43f();
	#/
	level.var_d28aaa95 = 1;
	function_6c1294b8("ai_stumbleSightRange", 200);
	function_6c1294b8("ai_awarenessenabled", 1);
	function_6c1294b8("stealth_display", 0);
	function_6c1294b8("stealth_audio", 1);
	if(function_6f1ebe57("stealth_indicator") == "")
	{
		function_6c1294b8("stealth_indicator", 0);
	}
	function_6c1294b8("stealth_group_radius", 1000);
	function_6c1294b8("stealth_all_aware", 1);
	function_6c1294b8("stealth_no_return", 1);
	function_6c1294b8("stealth_events", "sentientevents_vengeance_default");
}

/*
	Name: function_fcf56ab5
	Namespace: namespace_ad45a419
	Checksum: 0xE32EDAD7
	Offset: 0x768
	Size: 0x141
	Parameters: 0
	Flags: None
*/
function function_fcf56ab5()
{
	namespace_2f06d687::function_d5e942a4("axis", &namespace_ad06727a::function_7df1081d);
	level.var_d28aaa95 = 0;
	function_6c1294b8("ai_stumbleSightRange", 0);
	function_6c1294b8("ai_awarenessenabled", 0);
	if(isdefined(level.var_ad06727a.var_4b1f7bfc))
	{
		foreach(var_a3d46ee4 in level.var_ad06727a.var_4b1f7bfc)
		{
			var_a3d46ee4 function_eaa69754(1);
			var_a3d46ee4 namespace_82b91a51::function_2496930d(1.5);
		}
		level.var_ad06727a.var_4b1f7bfc = undefined;
	}
}

/*
	Name: function_11424fa
	Namespace: namespace_ad45a419
	Checksum: 0x324C4859
	Offset: 0x8B8
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_11424fa()
{
	level namespace_ad23e503::function_9d134160("stealth_alert");
	level namespace_ad23e503::function_9d134160("stealth_combat");
	level namespace_ad23e503::function_9d134160("stealth_discovered");
	self thread function_f8b0594a();
}

/*
	Name: function_b55533bc
	Namespace: namespace_ad45a419
	Checksum: 0x751511A5
	Offset: 0x940
	Size: 0x1F
	Parameters: 0
	Flags: None
*/
function function_b55533bc()
{
	return isdefined(self.var_ad06727a) && isdefined(self.var_ad06727a.var_3206367b);
}

/*
	Name: function_cc5cb8a3
	Namespace: namespace_ad45a419
	Checksum: 0x4874FA84
	Offset: 0x968
	Size: 0x3FB
	Parameters: 0
	Flags: None
*/
function function_cc5cb8a3()
{
	/#
		namespace_33b293fd::function_a7ee953(self function_b55533bc());
	#/
	if(!isdefined(self.var_ad06727a.var_1118b447))
	{
		self.var_ad06727a.var_1118b447 = function_a8fb77bd();
	}
	self.var_ad06727a.var_1118b447.var_8363b8e0["unaware"] = function_a8fb77bd();
	self.var_ad06727a.var_1118b447.var_8363b8e0["low_alert"] = function_a8fb77bd();
	self.var_ad06727a.var_1118b447.var_8363b8e0["high_alert"] = function_a8fb77bd();
	self.var_ad06727a.var_1118b447.var_8363b8e0["combat"] = function_a8fb77bd();
	var_5628f7bd = self.var_ad06727a.var_1118b447.var_8363b8e0["unaware"];
	var_5628f7bd.var_a1f56f1f = function_ef0a72b2(45);
	var_5628f7bd.var_304f0f57 = function_ef0a72b2(10);
	var_5628f7bd.var_24eff8a4 = 600;
	function_11266e67("unaware", 4, 0.5, 5, 100, 600, 0);
	var_5628f7bd = self.var_ad06727a.var_1118b447.var_8363b8e0["low_alert"];
	var_5628f7bd.var_a1f56f1f = function_ef0a72b2(60);
	var_5628f7bd.var_304f0f57 = function_ef0a72b2(20);
	var_5628f7bd.var_24eff8a4 = 800;
	function_11266e67("low_alert", 0, 0, 1, 100, 800, 0);
	var_5628f7bd = self.var_ad06727a.var_1118b447.var_8363b8e0["high_alert"];
	var_5628f7bd.var_a1f56f1f = function_ef0a72b2(60);
	var_5628f7bd.var_304f0f57 = function_ef0a72b2(20);
	var_5628f7bd.var_24eff8a4 = 1000;
	function_11266e67("high_alert", 16, 0.25, 4, 100, 1000, 0);
	var_5628f7bd = self.var_ad06727a.var_1118b447.var_8363b8e0["combat"];
	var_5628f7bd.var_a1f56f1f = 0;
	var_5628f7bd.var_304f0f57 = 0;
	var_5628f7bd.var_24eff8a4 = 8192;
	function_11266e67("combat", 32, 0.01, 0.01, 100, 1500, 1);
}

/*
	Name: function_b3269823
	Namespace: namespace_ad45a419
	Checksum: 0xD5D10691
	Offset: 0xD70
	Size: 0x47
	Parameters: 1
	Flags: None
*/
function function_b3269823(var_5a51d1)
{
	/#
		namespace_33b293fd::function_a7ee953(isdefined(level.var_ad06727a));
	#/
	return level.var_ad06727a.var_1118b447.var_8363b8e0[var_5a51d1];
}

/*
	Name: function_7bf2f7ba
	Namespace: namespace_ad45a419
	Checksum: 0xD9733856
	Offset: 0xDC0
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_7bf2f7ba()
{
	namespace_84970cc4::function_966ecb29(function_99201f25("_stealth_shadow", "targetname"), &function_49a3f37d);
	namespace_84970cc4::function_966ecb29(function_99201f25("stealth_shadow", "targetname"), &function_49a3f37d);
}

/*
	Name: function_49a3f37d
	Namespace: namespace_ad45a419
	Checksum: 0x72C7ABBC
	Offset: 0xE50
	Size: 0xAF
	Parameters: 0
	Flags: None
*/
function function_49a3f37d()
{
	self endon("hash_128f8789");
	while(1)
	{
		self waittill("hash_4dbf3ae3", var_5a952f1);
		if(!function_5b49d38c(var_5a952f1))
		{
			continue;
		}
		if(!isdefined(var_5a952f1.var_ad06727a) || (isdefined(var_5a952f1.var_ad06727a.var_325b070f) && var_5a952f1.var_ad06727a.var_325b070f))
		{
			continue;
		}
		var_5a952f1 thread function_9f3c4fa(self);
	}
}

/*
	Name: function_9f3c4fa
	Namespace: namespace_ad45a419
	Checksum: 0x1E8D875C
	Offset: 0xF08
	Size: 0x7F
	Parameters: 1
	Flags: None
*/
function function_9f3c4fa(var_45db3dab)
{
	self endon("hash_128f8789");
	if(!isdefined(self.var_ad06727a))
	{
		return;
	}
	self.var_ad06727a.var_325b070f = 1;
	while(isdefined(var_45db3dab) && self function_32fa5072(var_45db3dab))
	{
		wait(0.05);
	}
	self.var_ad06727a.var_325b070f = 0;
}

/*
	Name: function_3cc2fee1
	Namespace: namespace_ad45a419
	Checksum: 0x513C5EEA
	Offset: 0xF90
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_3cc2fee1()
{
	/#
		namespace_33b293fd::function_a7ee953(self function_b55533bc());
	#/
	self endon("hash_94ff6d85");
	while(1)
	{
		self function_c66a9b53();
		var_f5f40c = function_6f1ebe57("stealth_events");
		if(var_f5f40c != "" && (!isdefined(level.var_1e44252f) || level.var_1e44252f != var_f5f40c))
		{
			function_2a400f9d(var_f5f40c);
		}
		level.var_1e44252f = var_f5f40c;
		wait(0.25);
	}
}

/*
	Name: function_c66a9b53
	Namespace: namespace_ad45a419
	Checksum: 0x1C0C85B2
	Offset: 0x1070
	Size: 0x79B
	Parameters: 0
	Flags: None
*/
function function_c66a9b53()
{
	/#
		namespace_33b293fd::function_a7ee953(self function_b55533bc());
	#/
	self.var_ad06727a.var_657b1773["axis"] = [];
	self.var_ad06727a.var_657b1773["allies"] = [];
	self.var_ad06727a.var_ba093e01 = [];
	var_d47e142e = function_3f10449f();
	var_68e8737f = function_c20c2e8();
	foreach(var_5dc5e20a in var_d47e142e)
	{
		if(!isdefined(var_5dc5e20a.var_ad06727a))
		{
			var_5dc5e20a namespace_ad06727a::function_7df1081d();
		}
		if(isdefined(var_5dc5e20a.var_255b9315) && var_5dc5e20a.var_255b9315)
		{
			continue;
		}
		if(var_5dc5e20a.var_3e94206a == "allies")
		{
			self.var_ad06727a.var_657b1773["axis"][var_5dc5e20a function_c7f3ce11()] = var_5dc5e20a;
		}
		var_5dc5e20a namespace_10443be6::function_b9393d6c("high_alert");
		var_5dc5e20a.var_ad06727a.var_4ea02c94 = 0;
	}
	var_c750f946 = 0;
	level.var_354c1bca = 0;
	level.var_ad06727a.var_e7ad9c1f = 0;
	foreach(var_d84e54db in var_68e8737f)
	{
		if(isdefined(var_d84e54db.var_255b9315) && var_d84e54db.var_255b9315)
		{
			continue;
		}
		var_270018c4 = var_d84e54db function_c7f3ce11();
		var_fa4d6f35 = 0;
		if(function_5b49d38c(var_d84e54db) && var_d84e54db namespace_80045451::function_b55533bc() && (!isdefined(var_d84e54db.var_e73d60ea) && var_d84e54db.var_e73d60ea))
		{
			var_96b139a9 = function_8d0347b8(var_d84e54db) && namespace_7244fa9b::function_821cb119(var_d84e54db) && isdefined(var_d84e54db.var_9eb700da) && function_65f192a6(var_d84e54db.var_9eb700da.var_8722cfb);
			if(!isdefined(var_d84e54db.var_c584775c) && var_d84e54db.var_c584775c && var_d84e54db namespace_80045451::function_739525d() != "unaware")
			{
				var_c750f946 = var_c750f946 + 1;
			}
			if(var_d84e54db namespace_80045451::function_739525d() == "combat" || var_96b139a9)
			{
				if(var_96b139a9)
				{
					var_d84e54db.var_ad06727a.var_d1b49f30[var_d84e54db.var_9eb700da.var_8722cfb function_c7f3ce11()] = var_d84e54db.var_9eb700da.var_8722cfb;
				}
				var_fa4d6f35 = 0;
				if(isdefined(var_d84e54db.var_ad06727a.var_d1b49f30))
				{
					foreach(var_4e5d2310 in var_d84e54db.var_ad06727a.var_d1b49f30)
					{
						if(!function_5b49d38c(var_4e5d2310))
						{
							continue;
						}
						var_146dd427 = var_4e5d2310 function_c7f3ce11();
						if(!isdefined(self.var_ad06727a.var_ba093e01[var_146dd427]))
						{
							self.var_ad06727a.var_ba093e01[var_146dd427] = var_4e5d2310;
						}
						if(function_65f192a6(var_4e5d2310))
						{
							if(!var_fa4d6f35 && (!isdefined(var_d84e54db.var_c584775c) && var_d84e54db.var_c584775c))
							{
								level.var_354c1bca = level.var_354c1bca + 1;
								var_fa4d6f35 = 1;
							}
							var_4e5d2310 namespace_10443be6::function_b9393d6c("combat");
							if(!var_4e5d2310.var_ad06727a.var_4ea02c94)
							{
								level.var_ad06727a.var_e7ad9c1f++;
							}
							var_4e5d2310.var_ad06727a.var_4ea02c94 = 1;
						}
					}
				}
			}
		}
		else if(var_d84e54db.var_3e94206a == "allies")
		{
			self.var_ad06727a.var_657b1773["axis"][var_270018c4] = var_d84e54db;
			continue;
		}
		if(var_d84e54db.var_3e94206a == "axis")
		{
			self.var_ad06727a.var_657b1773["allies"][var_270018c4] = var_d84e54db;
		}
	}
	if(var_c750f946 > 0)
	{
		level namespace_ad23e503::function_74d6b22f("stealth_alert");
	}
	else
	{
		level namespace_ad23e503::function_9d134160("stealth_alert");
	}
	if(level.var_354c1bca > 0)
	{
		level namespace_ad23e503::function_74d6b22f("stealth_combat");
	}
	else
	{
		level namespace_ad23e503::function_9d134160("stealth_combat");
	}
}

/*
	Name: function_a3cf57bf
	Namespace: namespace_ad45a419
	Checksum: 0x4614A380
	Offset: 0x1818
	Size: 0x11F
	Parameters: 0
	Flags: None
*/
function function_a3cf57bf()
{
	self endon("hash_94ff6d85");
	var_e58d664d = 6;
	while(1)
	{
		level namespace_ad23e503::function_1ab5ebec("stealth_combat");
		if(level.var_ad06727a.var_e7ad9c1f == 0)
		{
			wait(0.05);
			continue;
		}
		level.var_ad06727a.var_30d9fcc6 = 1;
		wait(var_e58d664d);
		level.var_ad06727a.var_30d9fcc6 = 0;
		if(namespace_ad23e503::function_7922262b("stealth_combat"))
		{
			level namespace_ad23e503::function_74d6b22f("stealth_discovered");
			thread function_959a64c9();
		}
		level namespace_ad23e503::function_d3de6822("stealth_combat");
		if(isdefined(level.var_354c1bca))
		{
			level.var_354c1bca = 0;
		}
	}
}

/*
	Name: function_f8b0594a
	Namespace: namespace_ad45a419
	Checksum: 0xCDAF5BEE
	Offset: 0x1940
	Size: 0x25F
	Parameters: 0
	Flags: None
*/
function function_f8b0594a()
{
System.InvalidOperationException: Stack empty.
   at System.ThrowHelper.ThrowInvalidOperationException(ExceptionResource resource)
   at System.Collections.Generic.Stack`1.Pop()
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.⁬‬​⁯‏‬‪⁬‪‌‌​‪‭‬‮‪‏⁮‌⁫‬⁫⁪‌⁭​⁮⁪⁮‫⁬⁫‮‏‪⁫⁪‎‪‮(ScriptOp )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‮​⁬⁭⁮‍‏‏‫‎‭‫⁮‪‮⁭‮⁬​‌⁯‮⁭‬​‪⁭‍‏‪⁪‎⁭⁭‌⁪‌‭​⁯‮(ScriptOp , ‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‭⁭⁫‭⁪‫‭‮‪⁬‏‎‪⁯⁪⁬‪‏‫⁯⁯‭​‫⁯‍‮⁫‪‏⁫⁪‎‏‫‫‪⁬‌⁯‮(‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ , Int32 )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‭⁭⁫‭⁪‫‭‮‪⁬‏‎‪⁯⁪⁬‪‏‫⁯⁯‭​‫⁯‍‮⁫‪‏⁫⁪‎‏‫‫‪⁬‌⁯‮(‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ , Int32 )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮..ctor(ScriptExport , ScriptBase )
}

/*
	Name: function_959a64c9
	Namespace: namespace_ad45a419
	Checksum: 0xA1F9BE49
	Offset: 0x1BA8
	Size: 0x281
	Parameters: 0
	Flags: None
*/
function function_959a64c9()
{
	self notify("hash_959a64c9");
	self endon("hash_959a64c9");
	if(function_4bd0142f("stealth_no_return"))
	{
		var_657b1773 = function_b8494651("axis");
		foreach(var_6050ab17 in var_657b1773)
		{
			if(!function_5b49d38c(var_6050ab17))
			{
				continue;
			}
			if(isdefined(var_6050ab17.var_ad06727a))
			{
				var_6050ab17 notify("hash_959a64c9");
				var_6050ab17 notify("hash_78a7a5b9", "combat", var_6050ab17.var_722885f3, undefined, "wake_all");
				var_6050ab17 namespace_ad06727a::function_fcf56ab5();
			}
			foreach(var_5dc5e20a in level.var_9b1393e7)
			{
				var_6050ab17 function_b7cc66c6(var_5dc5e20a, 1);
			}
			var_6050ab17 function_470f7e4c();
			if(isdefined(var_6050ab17.var_f2090578) && var_6050ab17.var_f2090578)
			{
				var_6050ab17 namespace_d84e54db::function_6a90f059();
			}
			var_6050ab17 namespace_7244fa9b::function_782962c5();
			if(function_8d0347b8(var_6050ab17))
			{
				var_6050ab17 thread namespace_aec89ff8::function_1064f733();
			}
			wait(0.25);
		}
	}
}

/*
	Name: function_51871991
	Namespace: namespace_ad45a419
	Checksum: 0x262D9CA
	Offset: 0x1E38
	Size: 0xE7
	Parameters: 0
	Flags: None
*/
function function_51871991()
{
	self endon("hash_94ff6d85");
	namespace_ad06727a::function_862e861f();
	while(1)
	{
		if(!level namespace_ad23e503::function_7922262b("stealth_discovered"))
		{
			if(level namespace_ad23e503::function_7922262b("stealth_combat"))
			{
				namespace_ad06727a::function_e0319e51("combat");
			}
			else if(level namespace_ad23e503::function_7922262b("stealth_alert"))
			{
				namespace_ad06727a::function_e0319e51("high_alert");
			}
			else
			{
				namespace_ad06727a::function_e0319e51("unaware");
			}
		}
		wait(0.05);
	}
}

/*
	Name: function_945a718
	Namespace: namespace_ad45a419
	Checksum: 0xC9E92EA9
	Offset: 0x1F28
	Size: 0x2D9
	Parameters: 0
	Flags: None
*/
function function_945a718()
{
	wait(0.05);
	var_e3fe91b2 = namespace_14b42b8a::function_7faf4c39("stealth_callout", "targetname");
	foreach(var_a3d46ee4 in var_e3fe91b2)
	{
		var_a3d46ee4 namespace_234a4910::function_4970c8b8(var_a3d46ee4.var_a33b36db);
	}
	var_e3fe91b2 = namespace_14b42b8a::function_7faf4c39("stealth_callout", "script_noteworthy");
	foreach(var_a3d46ee4 in var_e3fe91b2)
	{
		var_a3d46ee4 namespace_234a4910::function_4970c8b8(var_a3d46ee4.var_a33b36db);
	}
	var_e3fe91b2 = function_99201f25("stealth_callout", "targetname");
	foreach(var_a3d46ee4 in var_e3fe91b2)
	{
		var_a3d46ee4 namespace_234a4910::function_4970c8b8(var_a3d46ee4.var_a33b36db);
	}
	var_e3fe91b2 = function_99201f25("stealth_callout", "script_noteworthy");
	foreach(var_a3d46ee4 in var_e3fe91b2)
	{
		var_a3d46ee4 namespace_234a4910::function_4970c8b8(var_a3d46ee4.var_a33b36db);
	}
}

