#using scripts\codescripts\struct;
#using scripts\shared\array_shared;
#using scripts\shared\math_shared;
#using scripts\shared\weapons\_weapons;

#namespace namespace_a17e6f03;

/*
	Name: function_9b385ca5
	Namespace: namespace_a17e6f03
	Checksum: 0x99EC1590
	Offset: 0x198
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_9b385ca5()
{
}

/*
	Name: function_5fba2032
	Namespace: namespace_a17e6f03
	Checksum: 0x99EC1590
	Offset: 0x1A8
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_5fba2032()
{
}

#namespace namespace_fdfaa57d;

/*
	Name: function_a17e6f03
	Namespace: namespace_fdfaa57d
	Checksum: 0x708CCDEE
	Offset: 0x1B8
	Size: 0x85
	Parameters: 0
	Flags: 6
*/
function private autoexec function_a17e6f03()
{
	classes.var_a17e6f03[0] = function_a8fb77bd();
	classes.var_a17e6f03[0].var_b684a6d1[1606033458] = &namespace_a17e6f03::function_5fba2032;
	classes.var_a17e6f03[0].var_b684a6d1[-1690805083] = &namespace_a17e6f03::function_9b385ca5;
}

/*
	Name: function_58d5283a
	Namespace: namespace_fdfaa57d
	Checksum: 0x30387A33
	Offset: 0x248
	Size: 0x153
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_58d5283a()
{
	if(!function_27c72c1b())
	{
		return;
	}
	var_b78f06c4 = function_6f1ebe57("mapname");
	level.var_acba406b = [];
	level.var_ed11f8b7 = [];
	level.var_5e3f3853 = 0;
	level.var_24893e7 = function_9b7fda5e("script_model", (0, 0, 0));
	level.var_24893e7 function_cea50a94(1);
	level.var_24893e7 function_8c8e79fe();
	level.var_a432d965 = namespace_14b42b8a::function_b7af54ae("bonuszmdata", var_b78f06c4);
	var_6a173bd1 = function_e8ef6cb0(level.var_a432d965, "weaponsTable");
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_6a173bd1));
	#/
	function_549c28ac("gamedata/tables/cpzm/" + var_6a173bd1);
}

/*
	Name: function_549c28ac
	Namespace: namespace_fdfaa57d
	Checksum: 0x9597F221
	Offset: 0x3A8
	Size: 0x24D
	Parameters: 1
	Flags: None
*/
function function_549c28ac(var_6a173bd1)
{
	var_ab5bb7b7 = function_c4d5ec1f("none");
	var_adeb478a = function_1556496c(var_6a173bd1);
	for(var_c957f6b6 = 0; var_c957f6b6 < var_adeb478a; var_c957f6b6++)
	{
		function_9b385ca5();
		var_279890e8 = var_a17e6f03;
		var_279890e8.var_e3a45b44 = function_5a31ce6c(var_6a173bd1, var_c957f6b6, 0);
		var_279890e8.var_bc6ce097 = function_b6b79a0(function_5a31ce6c(var_6a173bd1, var_c957f6b6, 1));
		var_279890e8.var_2b758e89 = function_b6b79a0(function_5a31ce6c(var_6a173bd1, var_c957f6b6, 2));
		var_279890e8.var_83fbee4b = function_5a31ce6c(var_6a173bd1, var_c957f6b6, 3);
		if(!isdefined(var_279890e8.var_e3a45b44) || function_c4d5ec1f(var_279890e8.var_e3a45b44) == var_ab5bb7b7)
		{
			continue;
		}
		if(var_279890e8.var_83fbee4b == "")
		{
			var_279890e8.var_83fbee4b = 0;
		}
		else
		{
			var_279890e8.var_83fbee4b = function_b6b79a0(var_279890e8.var_83fbee4b);
		}
		if(var_279890e8.var_83fbee4b)
		{
			namespace_84970cc4::function_69554b3e(level.var_ed11f8b7, var_279890e8);
			continue;
		}
		namespace_84970cc4::function_69554b3e(level.var_acba406b, var_279890e8);
	}
}

/*
	Name: function_1e2e0936
	Namespace: namespace_fdfaa57d
	Checksum: 0x97A564D
	Offset: 0x600
	Size: 0xE9
	Parameters: 1
	Flags: None
*/
function function_1e2e0936(var_1010f96a)
{
	if(!isdefined(var_1010f96a))
	{
		var_1010f96a = 0;
	}
	if(isdefined(level.var_fd21e404))
	{
		var_d0821c81 = level.var_fd21e404;
	}
	level.var_fd21e404 = function_53200e4d(var_1010f96a);
	level.var_24893e7 function_97877619(level.var_fd21e404[0], level.var_fd21e404[0].var_7c2864e6);
	level.var_24893e7 function_53033123(level.var_fd21e404[2], 0, 0, 0, 0);
	if(isdefined(var_d0821c81))
	{
		return var_d0821c81;
	}
	return function_53200e4d(var_1010f96a);
}

/*
	Name: function_53200e4d
	Namespace: namespace_fdfaa57d
	Checksum: 0x93E48692
	Offset: 0x6F8
	Size: 0x88F
	Parameters: 1
	Flags: None
*/
function function_53200e4d(var_1010f96a)
{
	/#
		namespace_33b293fd::function_a7ee953(isdefined(level.var_acba406b));
	#/
	/#
		namespace_33b293fd::function_a7ee953(isdefined(level.var_ed11f8b7));
	#/
	/#
		namespace_33b293fd::function_a7ee953(isdefined(level.var_a9e78bf7["Dev Block strings are not supported"]));
	#/
	var_82d771df = undefined;
	var_d9cb0358 = [];
	if(var_1010f96a && level.var_5e3f3853 < level.var_a9e78bf7["maxmagicboxonlyweapons"] && function_26299103(100) < level.var_a9e78bf7["magicboxonlyweaponchance"] && level.var_ed11f8b7.size)
	{
		level.var_5e3f3853++;
		var_279890e8 = namespace_84970cc4::function_47d18840(level.var_ed11f8b7);
	}
	else
	{
		var_279890e8 = namespace_84970cc4::function_47d18840(level.var_acba406b);
	}
	var_af719a4b = 0;
	if(var_279890e8.var_bc6ce097 >= 0 && var_279890e8.var_2b758e89 > 0)
	{
		var_af719a4b = function_dc99997a(var_279890e8.var_bc6ce097, var_279890e8.var_2b758e89);
	}
	if(var_af719a4b > 0)
	{
		var_dfcc01fd = function_c4d5ec1f(var_279890e8.var_e3a45b44);
		var_d9cb0358 = function_2df9fb87(var_dfcc01fd, var_af719a4b);
	}
	var_65ce895e = undefined;
	var_2106259a = 0;
	if(isdefined(var_d9cb0358) && function_6e2770d8(var_d9cb0358) && var_d9cb0358.size)
	{
		var_82d771df = function_c4d5ec1f(var_279890e8.var_e3a45b44, var_d9cb0358);
		if(isdefined(var_82d771df))
		{
			var_2106259a = 1;
			switch(var_d9cb0358.size)
			{
				case 8:
				{
					var_65ce895e = function_72ddee44(var_82d771df, var_d9cb0358[0], namespace_d73b9283::function_d2c92ee7(), var_d9cb0358[1], namespace_d73b9283::function_d2c92ee7(), var_d9cb0358[2], namespace_d73b9283::function_d2c92ee7(), var_d9cb0358[3], namespace_d73b9283::function_d2c92ee7(), var_d9cb0358[4], namespace_d73b9283::function_d2c92ee7(), var_d9cb0358[5], namespace_d73b9283::function_d2c92ee7(), var_d9cb0358[6], namespace_d73b9283::function_d2c92ee7(), var_d9cb0358[7], namespace_d73b9283::function_d2c92ee7());
					break;
				}
				case 7:
				{
					var_65ce895e = function_72ddee44(var_82d771df, var_d9cb0358[0], namespace_d73b9283::function_d2c92ee7(), var_d9cb0358[1], namespace_d73b9283::function_d2c92ee7(), var_d9cb0358[2], namespace_d73b9283::function_d2c92ee7(), var_d9cb0358[3], namespace_d73b9283::function_d2c92ee7(), var_d9cb0358[4], namespace_d73b9283::function_d2c92ee7(), var_d9cb0358[5], namespace_d73b9283::function_d2c92ee7(), var_d9cb0358[6], namespace_d73b9283::function_d2c92ee7());
					break;
				}
				case 6:
				{
					var_65ce895e = function_72ddee44(var_82d771df, var_d9cb0358[0], namespace_d73b9283::function_d2c92ee7(), var_d9cb0358[1], namespace_d73b9283::function_d2c92ee7(), var_d9cb0358[2], namespace_d73b9283::function_d2c92ee7(), var_d9cb0358[3], namespace_d73b9283::function_d2c92ee7(), var_d9cb0358[4], namespace_d73b9283::function_d2c92ee7(), var_d9cb0358[5], namespace_d73b9283::function_d2c92ee7());
					break;
				}
				case 5:
				{
					var_65ce895e = function_72ddee44(var_82d771df, var_d9cb0358[0], namespace_d73b9283::function_d2c92ee7(), var_d9cb0358[1], namespace_d73b9283::function_d2c92ee7(), var_d9cb0358[2], namespace_d73b9283::function_d2c92ee7(), var_d9cb0358[3], namespace_d73b9283::function_d2c92ee7(), var_d9cb0358[4], namespace_d73b9283::function_d2c92ee7());
					break;
				}
				case 4:
				{
					var_65ce895e = function_72ddee44(var_82d771df, var_d9cb0358[0], namespace_d73b9283::function_d2c92ee7(), var_d9cb0358[1], namespace_d73b9283::function_d2c92ee7(), var_d9cb0358[2], namespace_d73b9283::function_d2c92ee7(), var_d9cb0358[3], namespace_d73b9283::function_d2c92ee7());
					break;
				}
				case 3:
				{
					var_65ce895e = function_72ddee44(var_82d771df, var_d9cb0358[0], namespace_d73b9283::function_d2c92ee7(), var_d9cb0358[1], namespace_d73b9283::function_d2c92ee7(), var_d9cb0358[2], namespace_d73b9283::function_d2c92ee7());
					break;
				}
				case 2:
				{
					var_65ce895e = function_72ddee44(var_82d771df, var_d9cb0358[0], namespace_d73b9283::function_d2c92ee7(), var_d9cb0358[1], namespace_d73b9283::function_d2c92ee7());
					break;
				}
				case 1:
				{
					var_65ce895e = function_72ddee44(var_82d771df, var_d9cb0358[0], namespace_d73b9283::function_d2c92ee7());
					break;
				}
			}
		}
	}
	if(!var_2106259a)
	{
		var_82d771df = function_c4d5ec1f(var_279890e8.var_e3a45b44);
	}
	var_d0821c81 = [];
	var_d0821c81[0] = var_82d771df;
	var_d0821c81[1] = var_65ce895e;
	if(function_26299103(100) < level.var_a9e78bf7["camochance"])
	{
		var_d0821c81[2] = namespace_84970cc4::function_47d18840(function_84970cc4(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 18, 19, 20, 21, 22, 23, 24, 25));
	}
	else
	{
		var_d0821c81[2] = 0;
	}
	/#
		namespace_33b293fd::function_a7ee953(var_d0821c81[0] != level.var_6c3e6703);
	#/
	return var_d0821c81;
}

/*
	Name: function_43128d49
	Namespace: namespace_fdfaa57d
	Checksum: 0xE01C7CC
	Offset: 0xF90
	Size: 0x48B
	Parameters: 2
	Flags: None
*/
function function_43128d49(var_d0821c81, var_fe7b5ca3)
{
	if(!isdefined(var_fe7b5ca3))
	{
		var_fe7b5ca3 = 1;
	}
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_d0821c81));
	#/
	var_f4a6ae3c = var_d0821c81[0];
	var_d6c5d457 = var_d0821c81[1];
	var_54a70e6e = var_d0821c81[2];
	if(!isdefined(var_f4a6ae3c))
	{
		return;
	}
	if(var_f4a6ae3c == level.var_6c3e6703)
	{
		return;
	}
	var_4da6a075 = self function_21995b5a();
	var_961f11b8 = [];
	foreach(var_dfcc01fd in var_4da6a075)
	{
		if(isdefined(var_dfcc01fd.var_84690dfd) && var_dfcc01fd.var_84690dfd)
		{
			if(!isdefined(var_961f11b8))
			{
				var_961f11b8 = [];
			}
			else if(!function_6e2770d8(var_961f11b8))
			{
				var_961f11b8 = function_84970cc4(var_961f11b8);
			}
			var_961f11b8[var_961f11b8.size] = var_dfcc01fd;
		}
	}
	var_4044e31f = self function_da26566c();
	foreach(var_dfcc01fd in var_4044e31f)
	{
		if(var_dfcc01fd.var_84690dfd || !var_fe7b5ca3)
		{
			self function_1f3745c0(var_dfcc01fd);
			continue;
		}
		self function_132d9eee(var_dfcc01fd);
	}
	var_a817a92d = self function_7844b40(var_54a70e6e, 0, 0, 0);
	if(isdefined(var_d6c5d457))
	{
		self function_860a040a(var_f4a6ae3c, var_a817a92d, var_d6c5d457);
	}
	else
	{
		self function_860a040a(var_f4a6ae3c, var_a817a92d);
	}
	if(self function_2103ff4b(var_f4a6ae3c))
	{
		self function_67795b5f(var_f4a6ae3c, var_f4a6ae3c.var_c0b2188);
		self function_704b802a(var_f4a6ae3c);
	}
	foreach(var_dfcc01fd in var_961f11b8)
	{
		self function_860a040a(var_dfcc01fd);
		self function_67795b5f(var_dfcc01fd, var_dfcc01fd.var_c0b2188);
		self function_704b802a(var_dfcc01fd);
	}
	if(self function_2103ff4b(var_f4a6ae3c))
	{
		self function_cb53a41e(var_f4a6ae3c);
	}
	else if(var_4044e31f.size)
	{
		self function_cb53a41e(var_4044e31f[0]);
	}
}

/*
	Name: function_7e774306
	Namespace: namespace_fdfaa57d
	Checksum: 0xA9502087
	Offset: 0x1428
	Size: 0x155
	Parameters: 0
	Flags: None
*/
function function_7e774306()
{
	level.var_3d2f81f1 = function_c4d5ec1f("ar_standard");
	while(1)
	{
		level waittill("hash_1c353a4f");
		foreach(var_5dc5e20a in level.var_9b1393e7)
		{
			var_5dc5e20a function_be94c003();
		}
		level waittill("hash_14c06c0c");
		foreach(var_5dc5e20a in level.var_9b1393e7)
		{
			var_5dc5e20a function_d5efb07f();
		}
	}
}

/*
	Name: function_be94c003
	Namespace: namespace_fdfaa57d
	Checksum: 0x639C1FBF
	Offset: 0x1588
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_be94c003()
{
	self.var_c74b20c1 = self function_48c6a3a2();
	if(self function_2103ff4b(level.var_3d2f81f1))
	{
		self.var_7a5a5490 = 1;
	}
	else
	{
		self function_860a040a(level.var_3d2f81f1);
	}
	self function_cb53a41e(level.var_3d2f81f1);
}

/*
	Name: function_d5efb07f
	Namespace: namespace_fdfaa57d
	Checksum: 0x5600CDC8
	Offset: 0x1628
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_d5efb07f()
{
	if(!(isdefined(self.var_7a5a5490) && self.var_7a5a5490))
	{
		self function_1f3745c0(level.var_3d2f81f1);
	}
	if(isdefined(self.var_c74b20c1) && self function_2103ff4b(self.var_c74b20c1))
	{
		self function_cb53a41e(self.var_c74b20c1);
	}
}

/*
	Name: function_132d9eee
	Namespace: namespace_fdfaa57d
	Checksum: 0xEC9D94B6
	Offset: 0x16B0
	Size: 0x173
	Parameters: 1
	Flags: None
*/
function function_132d9eee(var_dfcc01fd)
{
	var_2b2afdf1 = self function_159a070b(var_dfcc01fd);
	var_983ff293 = self function_54d84899(var_dfcc01fd);
	var_f34ff5f1 = var_dfcc01fd.var_453c0f47;
	if(var_983ff293 > var_f34ff5f1)
	{
		var_983ff293 = var_f34ff5f1;
	}
	var_c5b0e858 = self function_562a2c6f(var_dfcc01fd, "tag_origin");
	if(!isdefined(var_c5b0e858))
	{
		/#
			function_2e4b8c78("Dev Block strings are not supported" + var_dfcc01fd.var_4be20d44 + "Dev Block strings are not supported");
		#/
		return;
	}
	level namespace_f996a5bc::function_843a5c4(var_dfcc01fd, self, var_c5b0e858);
	var_c5b0e858 function_4445660e(var_2b2afdf1, var_983ff293);
	var_c5b0e858.var_5e36fd2e = self;
	var_c5b0e858 thread namespace_f996a5bc::function_47874d19();
	var_c5b0e858 thread namespace_f996a5bc::function_3d63464b();
}

