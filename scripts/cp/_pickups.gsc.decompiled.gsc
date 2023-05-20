#using scripts\codescripts\struct;
#using scripts\cp\_laststand;
#using scripts\cp\_pickups;
#using scripts\cp\_scoreevents;
#using scripts\cp\_util;
#using scripts\shared\ai_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\fx_shared;
#using scripts\shared\hud_util_shared;
#using scripts\shared\laststand_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\statemachine_shared;
#using scripts\shared\system_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_death_shared;
#using scripts\shared\vehicle_shared;

#namespace namespace_9ae542c5;

/*
	Name: function_9b385ca5
	Namespace: namespace_9ae542c5
	Checksum: 0x6EE9770B
	Offset: 0x3C8
	Size: 0xE5
	Parameters: 0
	Flags: None
*/
function function_9b385ca5()
{
	namespace_d63e16f5::function_9b385ca5();
	self.var_b40c8b78 = 1;
	self.var_74ef8b0c = 0;
	self.var_e7b9c303 = 128;
	self.var_6aa5050d = 256;
	self.var_90a8298c = 2;
	self.var_af900c85 = (0, 0, 0);
	self.var_dcf4479e = 0;
	self.var_db666eb1 = VectorScale((1, 0, 0), 45);
	self.var_2655604d = 64;
	self.var_ba68bd3 = 0;
	self.var_f4821922 = 1;
	self.var_5c6e11a4 = [];
	self.var_5c6e11a4[0] = &function_915789e0;
	self.var_c7279522 = [];
	self.var_c7279522[0] = &function_f84750dc;
}

/*
	Name: function_e57da5ad
	Namespace: namespace_9ae542c5
	Checksum: 0x2322EA50
	Offset: 0x4B8
	Size: 0x31
	Parameters: 0
	Flags: None
*/
function function_e57da5ad()
{
	if(isdefined(self.var_ce54c88c))
	{
		return self.var_ce54c88c;
	}
	else if(isdefined(self.var_a6c557b4))
	{
		return self.var_a6c557b4;
	}
	return undefined;
}

/*
	Name: function_8e0147fa
	Namespace: namespace_9ae542c5
	Checksum: 0x6E49965B
	Offset: 0x4F8
	Size: 0x5B
	Parameters: 1
	Flags: None
*/
function function_8e0147fa(var_7ce28596)
{
	if(!isdefined(var_7ce28596.var_6ab6f4fd))
	{
		var_7ce28596.var_6ab6f4fd = (0, 0, 0);
	}
	function_2156149c(var_7ce28596.var_722885f3, var_7ce28596.var_6ab6f4fd);
}

/*
	Name: function_8f5ea154
	Namespace: namespace_9ae542c5
	Checksum: 0x6734B55
	Offset: 0x560
	Size: 0x2B
	Parameters: 2
	Flags: None
*/
function function_8f5ea154(var_c55dcd82, var_6cac4ba4)
{
	function_2156149c(var_c55dcd82, var_6cac4ba4);
}

/*
	Name: function_2156149c
	Namespace: namespace_9ae542c5
	Checksum: 0xAD595426
	Offset: 0x598
	Size: 0x97
	Parameters: 2
	Flags: None
*/
function function_2156149c(var_c55dcd82, var_6cac4ba4)
{
	while(1)
	{
		if(isdefined(self.var_22e59a35))
		{
			[[self.var_22e59a35]](var_c55dcd82, var_6cac4ba4);
		}
		else
		{
			self.var_2cb2c9c5 = "Press ^3[{+usereload}]^7 to drop " + self.var_1c709f79;
			function_4d925e68(var_c55dcd82, var_6cac4ba4);
		}
		self waittill("hash_f9bc44a3");
		function_d2e1e79d();
	}
}

/*
	Name: function_4d925e68
	Namespace: namespace_9ae542c5
	Checksum: 0x908A9C1C
	Offset: 0x638
	Size: 0x2CB
	Parameters: 2
	Flags: None
*/
function function_4d925e68(var_c55dcd82, var_6cac4ba4)
{
	if(!isdefined(self.var_a6c557b4))
	{
		self.var_a6c557b4 = namespace_82b91a51::function_b9fd52a4(self.var_c65ad26d, var_c55dcd82 + (0, 0, self.var_ba68bd3), var_6cac4ba4);
		self.var_a6c557b4 function_422037f5();
		if(isdefined(self.var_1fd664a9))
		{
			function_da6acfd2(self.var_1fd664a9, self.var_a6c557b4, "tag_origin");
		}
	}
	self.var_ec6c2cf4 = "Press and hold ^3[{+activate}]^7 to pick up " + self.var_1c709f79;
	if(!isdefined(self.var_52e14d7c))
	{
		var_f92a03e7 = namespace_d63e16f5::function_89293eac(var_c55dcd82);
		namespace_d63e16f5::function_2180809b(var_f92a03e7);
	}
	self.var_52e14d7c function_bb863f19();
	self.var_52e14d7c.var_722885f3 = var_c55dcd82;
	self.var_52e14d7c notify("hash_2e14467e");
	self.var_52e14d7c notify("hash_4e236be4", 1);
	self.var_52e14d7c function_d5eb00e3(self.var_ec6c2cf4);
	self.var_52e14d7c.var_23a943a5 = self.var_1c709f79;
	if(!isdefined(self.var_52e14d7c.var_170527fb))
	{
		var_7e16e483 = "";
		var_8b14ca2b = function_d6df1f20(function_57b2be45(self.var_1c709f79), " ");
		foreach(var_d928705c in var_8b14ca2b)
		{
			if(var_4bc288a0 > 0)
			{
				var_7e16e483 = var_7e16e483 + "_";
			}
			var_7e16e483 = var_7e16e483 + var_d928705c;
		}
		self.var_52e14d7c.var_170527fb = "trigger_" + var_7e16e483;
	}
	if(self.var_f4821922)
	{
		self thread namespace_d63e16f5::function_a72a316b();
	}
}

/*
	Name: function_107b02f9
	Namespace: namespace_9ae542c5
	Checksum: 0x356DD499
	Offset: 0x910
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_107b02f9()
{
	self endon("hash_2f46dd38");
	if(self.var_dcf4479e <= 0)
	{
		return;
	}
	self thread function_ac20c633();
	wait(self.var_dcf4479e);
	if(isdefined(self.var_c07a933c))
	{
		[[self.var_c07a933c]]();
	}
	else
	{
		function_cefc7c8b();
	}
}

/*
	Name: function_ac20c633
	Namespace: namespace_9ae542c5
	Checksum: 0x27912AB0
	Offset: 0x988
	Size: 0x9D
	Parameters: 0
	Flags: None
*/
function function_ac20c633()
{
	self endon("hash_2f46dd38");
	for(var_658460aa = self.var_dcf4479e; var_658460aa >= 0 && isdefined(self.var_a6c557b4);  = self.var_dcf4479e)
	{
		/#
			function_8f3e0f73(self.var_a6c557b4.var_722885f3 + VectorScale((0, 0, 1), 15), var_658460aa, (1, 0, 0), 1, 1, 20);
		#/
		wait(1);
	}
}

/*
	Name: function_cefc7c8b
	Namespace: namespace_9ae542c5
	Checksum: 0xFA6D1213
	Offset: 0xA30
	Size: 0x11
	Parameters: 0
	Flags: None
*/
function function_cefc7c8b()
{
	self notify("hash_f9bc44a3");
}

/*
	Name: function_d2e1e79d
	Namespace: namespace_9ae542c5
	Checksum: 0x6BED268A
	Offset: 0xA50
	Size: 0x2F
	Parameters: 0
	Flags: None
*/
function function_d2e1e79d()
{
	if(self.var_74ef8b0c > 0)
	{
	}
	else if(self.var_b40c8b78 > 0)
	{
		wait(self.var_b40c8b78);
	}
}

/*
	Name: function_915789e0
	Namespace: namespace_9ae542c5
	Checksum: 0x112051C1
	Offset: 0xA88
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_915789e0(var_df09ae6a)
{
	self.var_a6c557b4 function_dc8c8404();
	self.var_52e14d7c function_8c1f7070();
}

/*
	Name: function_f84750dc
	Namespace: namespace_9ae542c5
	Checksum: 0xFFB7B0CF
	Offset: 0xAD0
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function function_f84750dc(var_df09ae6a)
{
	function_4d925e68(var_df09ae6a.var_722885f3, var_df09ae6a.var_6ab6f4fd);
}

/*
	Name: function_5fba2032
	Namespace: namespace_9ae542c5
	Checksum: 0x12461893
	Offset: 0xB10
	Size: 0x13
	Parameters: 0
	Flags: None
*/
function function_5fba2032()
{
	namespace_d63e16f5::function_5fba2032();
}

#namespace namespace_b78ca66c;

/*
	Name: function_9ae542c5
	Namespace: namespace_b78ca66c
	Checksum: 0x1ED54090
	Offset: 0xB30
	Size: 0x775
	Parameters: 0
	Flags: 6
*/
function private autoexec function_9ae542c5()
{
	classes.var_9ae542c5[0] = function_a8fb77bd();
	classes.var_9ae542c5[0].var_b684a6d1[-1422930206] = &namespace_d63e16f5::function_ab2fcee2;
	classes.var_9ae542c5[0].var_b684a6d1[-1993785684] = &namespace_d63e16f5::function_89293eac;
	classes.var_9ae542c5[0].var_b684a6d1[-1918751361] = &namespace_d63e16f5::function_8da22d7f;
	classes.var_9ae542c5[0].var_b684a6d1[738951197] = &namespace_d63e16f5::function_2c0b801d;
	classes.var_9ae542c5[0].var_b684a6d1[-1751768132] = &namespace_d63e16f5::function_979623bc;
	classes.var_9ae542c5[0].var_b684a6d1[-908068637] = &namespace_d63e16f5::function_c9dff8e3;
	classes.var_9ae542c5[0].var_b684a6d1[-1983032275] = &namespace_d63e16f5::function_89cd542d;
	classes.var_9ae542c5[0].var_b684a6d1[1998664073] = &namespace_d63e16f5::function_77213189;
	classes.var_9ae542c5[0].var_b684a6d1[1355165250] = &namespace_d63e16f5::function_50c62e42;
	classes.var_9ae542c5[0].var_b684a6d1[-419528313] = &namespace_d63e16f5::function_e6fe8187;
	classes.var_9ae542c5[0].var_b684a6d1[1137419972] = &namespace_d63e16f5::function_43cba6c4;
	classes.var_9ae542c5[0].var_b684a6d1[1366098661] = &namespace_d63e16f5::function_516d02e5;
	classes.var_9ae542c5[0].var_b684a6d1[87726411] = &namespace_d63e16f5::function_53a994b;
	classes.var_9ae542c5[0].var_b684a6d1[2111823028] = &namespace_d63e16f5::function_7ddfdcb4;
	classes.var_9ae542c5[0].var_b684a6d1[1002111075] = &namespace_d63e16f5::function_3bbb0063;
	classes.var_9ae542c5[0].var_b684a6d1[1562574218] = &namespace_d63e16f5::function_5d22fd8a;
	classes.var_9ae542c5[0].var_b684a6d1[-234604426] = &namespace_d63e16f5::function_f2043876;
	classes.var_9ae542c5[0].var_b684a6d1[-1490407061] = &namespace_d63e16f5::function_a72a316b;
	classes.var_9ae542c5[0].var_b684a6d1[-444976957] = &namespace_d63e16f5::function_e57a30c3;
	classes.var_9ae542c5[0].var_b684a6d1[1291604272] = &namespace_d63e16f5::function_4cfc5130;
	classes.var_9ae542c5[0].var_b684a6d1[562069659] = &namespace_d63e16f5::function_2180809b;
	classes.var_9ae542c5[0].var_b684a6d1[-1223116993] = &namespace_d63e16f5::function_b718b73f;
	classes.var_9ae542c5[0].var_b684a6d1[1291392716] = &namespace_d63e16f5::function_4cf916cc;
	classes.var_9ae542c5[0].var_b684a6d1[-896363193] = &namespace_d63e16f5::function_ca929547;
	classes.var_9ae542c5[0].var_b684a6d1[131884998] = &namespace_d63e16f5::function_7dc67c6;
	classes.var_9ae542c5[0].var_b684a6d1[-1690805083] = &namespace_d63e16f5::function_9b385ca5;
	classes.var_9ae542c5[0].var_b684a6d1[1606033458] = &namespace_9ae542c5::function_5fba2032;
	classes.var_9ae542c5[0].var_b684a6d1[-129543972] = &namespace_9ae542c5::function_f84750dc;
	classes.var_9ae542c5[0].var_b684a6d1[-1856534048] = &namespace_9ae542c5::function_915789e0;
	classes.var_9ae542c5[0].var_b684a6d1[-756947043] = &namespace_9ae542c5::function_d2e1e79d;
	classes.var_9ae542c5[0].var_b684a6d1[-822313845] = &namespace_9ae542c5::function_cefc7c8b;
	classes.var_9ae542c5[0].var_b684a6d1[-1407138253] = &namespace_9ae542c5::function_ac20c633;
	classes.var_9ae542c5[0].var_b684a6d1[276497145] = &namespace_9ae542c5::function_107b02f9;
	classes.var_9ae542c5[0].var_b684a6d1[1301438056] = &namespace_9ae542c5::function_4d925e68;
	classes.var_9ae542c5[0].var_b684a6d1[559289500] = &namespace_9ae542c5::function_2156149c;
	classes.var_9ae542c5[0].var_b684a6d1[-1889623724] = &namespace_9ae542c5::function_8f5ea154;
	classes.var_9ae542c5[0].var_b684a6d1[-1912518662] = &namespace_9ae542c5::function_8e0147fa;
	classes.var_9ae542c5[0].var_b684a6d1[-444750419] = &namespace_9ae542c5::function_e57da5ad;
	classes.var_9ae542c5[0].var_b684a6d1[-1690805083] = &namespace_9ae542c5::function_9b385ca5;
}

#namespace namespace_d63e16f5;

/*
	Name: function_9b385ca5
	Namespace: namespace_d63e16f5
	Checksum: 0xF8B46E77
	Offset: 0x12B0
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_9b385ca5()
{
	self.var_caa76426 = 1;
	self.var_ed97ef12 = 0;
	self.var_f4821922 = 0;
	self.var_6c8f4632 = 36;
	self.var_2269b061 = 128;
	self.var_bc6dcf34 = 72;
	self.var_c665189f = 128;
	self.var_352ef9 = &function_4cf916cc;
	self.var_1c709f79 = "Item";
}

/*
	Name: function_7dc67c6
	Namespace: namespace_d63e16f5
	Checksum: 0x70DD5230
	Offset: 0x1338
	Size: 0x9
	Parameters: 0
	Flags: None
*/
function function_7dc67c6()
{
	return self.var_cc8132d;
}

/*
	Name: function_ca929547
	Namespace: namespace_d63e16f5
	Checksum: 0xABDBAA18
	Offset: 0x1350
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_ca929547()
{
	if(isdefined(self.var_ecab686c))
	{
		self thread [[self.var_ecab686c]]();
		break;
	}
	while(isdefined(self.var_52e14d7c))
	{
		if(!self.var_caa76426)
		{
			self.var_52e14d7c function_d5eb00e3("Bring Toolbox to repair");
			wait(0.05);
			continue;
		}
		wait(0.05);
	}
}

/*
	Name: function_4cf916cc
	Namespace: namespace_d63e16f5
	Checksum: 0x602AC1CF
	Offset: 0x13D0
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_4cf916cc(var_5dc5e20a)
{
	self notify("hash_4cf916cc");
	if(isdefined(self.var_9c969a83))
	{
		self thread [[self.var_9c969a83]](var_5dc5e20a);
	}
}

/*
	Name: function_b718b73f
	Namespace: namespace_d63e16f5
	Checksum: 0xEBAEBEFF
	Offset: 0x1418
	Size: 0xB7
	Parameters: 0
	Flags: None
*/
function function_b718b73f()
{
	self endon("hash_b949ea5e");
	while(1)
	{
		self.var_52e14d7c waittill("hash_4dbf3ae3", var_5dc5e20a);
		if(isdefined(var_5dc5e20a.var_ca526183) && var_5dc5e20a.var_ca526183 && var_5dc5e20a.var_11120dca.var_1c709f79 == "Toolbox")
		{
			function_77213189(var_5dc5e20a.var_11120dca);
			[[self.var_352ef9]](var_5dc5e20a);
		}
		wait(0.05);
	}
}

/*
	Name: function_2180809b
	Namespace: namespace_d63e16f5
	Checksum: 0xE5F1BD89
	Offset: 0x14D8
	Size: 0x37
	Parameters: 1
	Flags: None
*/
function function_2180809b(var_f92a03e7)
{
	/#
		namespace_33b293fd::function_a7ee953(!isdefined(self.var_52e14d7c));
	#/
	self.var_52e14d7c = var_f92a03e7;
}

/*
	Name: function_4cfc5130
	Namespace: namespace_d63e16f5
	Checksum: 0x35DFCF4F
	Offset: 0x1518
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_4cfc5130()
{
	self.var_f4821922 = 1;
	self thread function_a72a316b();
}

/*
	Name: function_e57a30c3
	Namespace: namespace_d63e16f5
	Checksum: 0xBAE3018C
	Offset: 0x1548
	Size: 0x1D
	Parameters: 0
	Flags: None
*/
function function_e57a30c3()
{
	self.var_f4821922 = 0;
	self notify("hash_a72a316b");
}

/*
	Name: function_a72a316b
	Namespace: namespace_d63e16f5
	Checksum: 0xBD8CC8F3
	Offset: 0x1570
	Size: 0x1D9
	Parameters: 0
	Flags: None
*/
function function_a72a316b()
{
	self notify("hash_a72a316b");
	self endon("hash_a72a316b");
	self endon("hash_b949ea5e");
	while(1)
	{
		wait(0.05);
		if(!isdefined(self.var_52e14d7c))
		{
			return;
		}
		self.var_52e14d7c waittill("hash_4dbf3ae3", var_df09ae6a);
		if(isdefined(var_df09ae6a.var_ca526183) && var_df09ae6a.var_ca526183)
		{
			self.var_52e14d7c function_cb2c15eb(var_df09ae6a, "");
			continue;
		}
		if(!self.var_f4821922)
		{
			continue;
		}
		if(isdefined(var_df09ae6a.var_8407f02a) && var_df09ae6a.var_8407f02a)
		{
			continue;
		}
		if(!var_df09ae6a namespace_82b91a51::function_9ba72e41())
		{
			continue;
		}
		if(isdefined(self.var_f83480ac) && ![[self.var_f83480ac]]())
		{
			continue;
		}
		if(!isdefined(self.var_52e14d7c))
		{
			return;
		}
		if(!var_df09ae6a function_32fa5072(self.var_52e14d7c))
		{
			continue;
		}
		if(isdefined(var_df09ae6a.var_ca526183) && var_df09ae6a.var_ca526183)
		{
			continue;
		}
		if(var_df09ae6a namespace_564407fb::function_38a9aff8())
		{
			continue;
		}
		var_df09ae6a.var_ca526183 = 1;
		self thread function_f2043876(var_df09ae6a);
		return;
	}
}

/*
	Name: function_f2043876
	Namespace: namespace_d63e16f5
	Checksum: 0xE4F384FB
	Offset: 0x1758
	Size: 0x173
	Parameters: 1
	Flags: None
*/
function function_f2043876(var_df09ae6a)
{
	var_df09ae6a endon("hash_128f8789");
	var_df09ae6a endon("hash_5cc39b7a");
	var_df09ae6a.var_11120dca = self;
	self.var_cc8132d = var_df09ae6a;
	self.var_52e14d7c notify("hash_4e236be4", 0);
	self notify("hash_2f46dd38");
	var_df09ae6a function_1271a73e();
	wait(0.5);
	if(isdefined(self.var_5c6e11a4))
	{
		foreach(var_f9c63f75 in self.var_5c6e11a4)
		{
			self thread [[var_f9c63f75]](var_df09ae6a);
		}
	}
	else
	{
		var_df09ae6a function_ed04153c(0);
	}
	self thread function_3bbb0063(var_df09ae6a);
	self thread function_43cba6c4(var_df09ae6a);
	self thread function_516d02e5(var_df09ae6a);
}

/*
	Name: function_5d22fd8a
	Namespace: namespace_d63e16f5
	Checksum: 0x24EECAE5
	Offset: 0x18D8
	Size: 0x13
	Parameters: 0
	Flags: None
*/
function function_5d22fd8a()
{
	return "Press ^3[{+usereload}]^7 to drop " + self.var_1c709f79;
}

/*
	Name: function_3bbb0063
	Namespace: namespace_d63e16f5
	Checksum: 0x61EC9E7D
	Offset: 0x18F8
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function function_3bbb0063(var_5dc5e20a)
{
	var_5dc5e20a namespace_82b91a51::function_67cfce72(function_5d22fd8a());
}

/*
	Name: function_7ddfdcb4
	Namespace: namespace_d63e16f5
	Checksum: 0x2BEF749C
	Offset: 0x1938
	Size: 0x7F
	Parameters: 1
	Flags: None
*/
function function_7ddfdcb4(var_5dc5e20a)
{
	self endon("hash_128f8789");
	var_5dc5e20a endon("hash_128f8789");
	var_5dc5e20a endon("hash_8d73907f");
	while(1)
	{
		var_5dc5e20a namespace_82b91a51::function_67cfce72(function_5d22fd8a(), undefined, undefined, 0, 0.35);
		wait(0.35);
	}
}

/*
	Name: function_53a994b
	Namespace: namespace_d63e16f5
	Checksum: 0x20051AE
	Offset: 0x19C0
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function function_53a994b(var_5dc5e20a)
{
	var_5dc5e20a notify("hash_8d73907f");
	var_5dc5e20a namespace_82b91a51::function_79f9f98d();
}

/*
	Name: function_516d02e5
	Namespace: namespace_d63e16f5
	Checksum: 0x44A73738
	Offset: 0x1A00
	Size: 0xB3
	Parameters: 1
	Flags: None
*/
function function_516d02e5(var_df09ae6a)
{
	var_df09ae6a endon("hash_e6fe8187");
	var_df09ae6a endon("hash_128f8789");
	var_df09ae6a endon("hash_5cc39b7a");
	self thread function_2c0b801d(var_df09ae6a);
	while(var_df09ae6a function_d5ef124())
	{
		wait(0.05);
	}
	while(!var_df09ae6a function_d5ef124())
	{
		wait(0.05);
	}
	self thread function_50c62e42(var_df09ae6a);
}

/*
	Name: function_43cba6c4
	Namespace: namespace_d63e16f5
	Checksum: 0xB599F0F8
	Offset: 0x1AC0
	Size: 0x227
	Parameters: 1
	Flags: None
*/
function function_43cba6c4(var_df09ae6a)
{
	var_df09ae6a endon("hash_e6fe8187");
	var_df09ae6a endon("hash_128f8789");
	var_df09ae6a endon("hash_5cc39b7a");
	var_b9f3ddcc = var_df09ae6a function_501eb072();
	var_f222cb9a = var_df09ae6a function_89c87c9c();
	var_f222cb9a = var_f222cb9a + self.var_db666eb1;
	var_f222cb9a = function_bc7ce905(var_f222cb9a);
	var_6cac4ba4 = var_df09ae6a.var_6ab6f4fd + self.var_af900c85;
	var_b71ed4a2 = var_b9f3ddcc + var_f222cb9a * self.var_2655604d;
	if(!isdefined(self.var_4f46ac84))
	{
		if(isdefined(self.var_c65ad26d))
		{
			self.var_4f46ac84 = self.var_c65ad26d;
		}
		else
		{
			self.var_4f46ac84 = "script_origin";
		}
	}
	self.var_ce54c88c = namespace_82b91a51::function_b9fd52a4(self.var_4f46ac84, var_b71ed4a2, var_6cac4ba4);
	self.var_ce54c88c function_422037f5();
	while(isdefined(self.var_ce54c88c))
	{
		var_b9f3ddcc = var_df09ae6a function_501eb072();
		var_f222cb9a = var_df09ae6a function_89c87c9c();
		var_f222cb9a = var_f222cb9a + self.var_db666eb1;
		var_f222cb9a = function_bc7ce905(var_f222cb9a);
		self.var_ce54c88c.var_6ab6f4fd = var_df09ae6a.var_6ab6f4fd + self.var_af900c85;
		self.var_ce54c88c.var_722885f3 = var_b9f3ddcc + var_f222cb9a * self.var_2655604d;
		wait(0.05);
	}
}

/*
	Name: function_e6fe8187
	Namespace: namespace_d63e16f5
	Checksum: 0x578DB70B
	Offset: 0x1CF0
	Size: 0x83
	Parameters: 1
	Flags: None
*/
function function_e6fe8187(var_df09ae6a)
{
	var_df09ae6a endon("hash_128f8789");
	var_df09ae6a endon("hash_5cc39b7a");
	if(!var_df09ae6a.var_ca526183)
	{
		return;
	}
	var_df09ae6a notify("hash_e6fe8187");
	var_df09ae6a function_901e0817();
	var_df09ae6a.var_ca526183 = 0;
	var_df09ae6a function_ed04153c(1);
}

/*
	Name: function_50c62e42
	Namespace: namespace_d63e16f5
	Checksum: 0xBE645FBC
	Offset: 0x1D80
	Size: 0x12B
	Parameters: 1
	Flags: None
*/
function function_50c62e42(var_df09ae6a)
{
	function_e6fe8187(var_df09ae6a);
	var_df09ae6a namespace_82b91a51::function_79f9f98d();
	if(isdefined(self.var_ce54c88c))
	{
		self.var_ce54c88c function_dc8c8404();
	}
	if(isdefined(self.var_c7279522))
	{
		foreach(var_2c0c6c13 in self.var_c7279522)
		{
			[[var_2c0c6c13]](var_df09ae6a);
		}
	}
	self.var_cc8132d = undefined;
	self thread function_a72a316b();
	var_df09ae6a thread function_c9dff8e3();
}

/*
	Name: function_77213189
	Namespace: namespace_d63e16f5
	Checksum: 0x46C8C2E1
	Offset: 0x1EB8
	Size: 0x7D
	Parameters: 1
	Flags: None
*/
function function_77213189(var_df09ae6a)
{
	function_e6fe8187(var_df09ae6a);
	var_df09ae6a namespace_82b91a51::function_79f9f98d();
	if(isdefined(self.var_ce54c88c))
	{
		self.var_ce54c88c function_dc8c8404();
	}
	self.var_cc8132d = undefined;
	self notify("hash_f9bc44a3");
}

/*
	Name: function_89cd542d
	Namespace: namespace_d63e16f5
	Checksum: 0xE215B463
	Offset: 0x1F40
	Size: 0x77
	Parameters: 0
	Flags: None
*/
function function_89cd542d()
{
	if(isdefined(self.var_cc8132d))
	{
		function_e6fe8187(self.var_cc8132d);
		self.var_cc8132d namespace_82b91a51::function_79f9f98d();
	}
	if(isdefined(self.var_ce54c88c))
	{
		self.var_ce54c88c function_dc8c8404();
	}
	self.var_cc8132d = undefined;
}

/*
	Name: function_c9dff8e3
	Namespace: namespace_d63e16f5
	Checksum: 0x7ECAF472
	Offset: 0x1FC0
	Size: 0x3D
	Parameters: 0
	Flags: None
*/
function function_c9dff8e3()
{
	self endon("hash_3f7b661c");
	self.var_8407f02a = 1;
	self function_979623bc();
	self.var_8407f02a = undefined;
}

/*
	Name: function_979623bc
	Namespace: namespace_d63e16f5
	Checksum: 0x3F68BC31
	Offset: 0x2008
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_979623bc()
{
	self endon("hash_5cc39b7a");
	while(self function_d5ef124())
	{
		wait(0.05);
	}
}

/*
	Name: function_2c0b801d
	Namespace: namespace_d63e16f5
	Checksum: 0x2F2E6149
	Offset: 0x2048
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_2c0b801d(var_df09ae6a)
{
	self notify("hash_2c0b801d");
	self endon("hash_2c0b801d");
	var_df09ae6a namespace_82b91a51::function_5b7e3888("player_downed", "death");
	if(isdefined(self.var_cc8132d))
	{
		function_50c62e42(var_df09ae6a);
	}
}

/*
	Name: function_8da22d7f
	Namespace: namespace_d63e16f5
	Checksum: 0x9111D7EE
	Offset: 0x20C0
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_8da22d7f(var_b71ed4a2)
{
	var_f36962fb = function_ab2fcee2(var_b71ed4a2, self.var_bc6dcf34, self.var_c665189f, "Bring Toolbox to repair");
	return var_f36962fb;
}

/*
	Name: function_89293eac
	Namespace: namespace_d63e16f5
	Checksum: 0x1EA0C7
	Offset: 0x2118
	Size: 0x67
	Parameters: 1
	Flags: None
*/
function function_89293eac(var_b71ed4a2)
{
	var_f92a03e7 = function_ab2fcee2(var_b71ed4a2, self.var_6c8f4632, self.var_2269b061, "");
	var_f92a03e7 function_622a981a(1);
	return var_f92a03e7;
}

/*
	Name: function_ab2fcee2
	Namespace: namespace_d63e16f5
	Checksum: 0x6EB896D7
	Offset: 0x2188
	Size: 0x167
	Parameters: 4
	Flags: None
*/
function function_ab2fcee2(var_b71ed4a2, var_562b538e, var_5b1ebb35, var_f6e313be)
{
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_b71ed4a2), "Dev Block strings are not supported");
	#/
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_562b538e), "Dev Block strings are not supported");
	#/
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_5b1ebb35), "Dev Block strings are not supported");
	#/
	var_f92a03e7 = function_9b7fda5e("trigger_radius", var_b71ed4a2, 0, var_562b538e, var_5b1ebb35);
	var_f92a03e7 function_1d5013fa();
	var_f92a03e7 function_bb863f19();
	var_f92a03e7 function_dc378587("none");
	var_f92a03e7 function_e68ee88a("HINT_NOICON");
	if(isdefined(var_f6e313be))
	{
		var_f92a03e7 function_d5eb00e3(var_f6e313be);
	}
	return var_f92a03e7;
}

/*
	Name: function_5fba2032
	Namespace: namespace_d63e16f5
	Checksum: 0x99EC1590
	Offset: 0x22F8
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_5fba2032()
{
}

#namespace namespace_b78ca66c;

/*
	Name: function_d63e16f5
	Namespace: namespace_b78ca66c
	Checksum: 0x11C3C08
	Offset: 0x2308
	Size: 0x535
	Parameters: 0
	Flags: 6
*/
function private autoexec function_d63e16f5()
{
	classes.var_d63e16f5[0] = function_a8fb77bd();
	classes.var_d63e16f5[0].var_b684a6d1[1606033458] = &namespace_d63e16f5::function_5fba2032;
	classes.var_d63e16f5[0].var_b684a6d1[-1422930206] = &namespace_d63e16f5::function_ab2fcee2;
	classes.var_d63e16f5[0].var_b684a6d1[-1993785684] = &namespace_d63e16f5::function_89293eac;
	classes.var_d63e16f5[0].var_b684a6d1[-1918751361] = &namespace_d63e16f5::function_8da22d7f;
	classes.var_d63e16f5[0].var_b684a6d1[738951197] = &namespace_d63e16f5::function_2c0b801d;
	classes.var_d63e16f5[0].var_b684a6d1[-1751768132] = &namespace_d63e16f5::function_979623bc;
	classes.var_d63e16f5[0].var_b684a6d1[-908068637] = &namespace_d63e16f5::function_c9dff8e3;
	classes.var_d63e16f5[0].var_b684a6d1[-1983032275] = &namespace_d63e16f5::function_89cd542d;
	classes.var_d63e16f5[0].var_b684a6d1[1998664073] = &namespace_d63e16f5::function_77213189;
	classes.var_d63e16f5[0].var_b684a6d1[1355165250] = &namespace_d63e16f5::function_50c62e42;
	classes.var_d63e16f5[0].var_b684a6d1[-419528313] = &namespace_d63e16f5::function_e6fe8187;
	classes.var_d63e16f5[0].var_b684a6d1[1137419972] = &namespace_d63e16f5::function_43cba6c4;
	classes.var_d63e16f5[0].var_b684a6d1[1366098661] = &namespace_d63e16f5::function_516d02e5;
	classes.var_d63e16f5[0].var_b684a6d1[87726411] = &namespace_d63e16f5::function_53a994b;
	classes.var_d63e16f5[0].var_b684a6d1[2111823028] = &namespace_d63e16f5::function_7ddfdcb4;
	classes.var_d63e16f5[0].var_b684a6d1[1002111075] = &namespace_d63e16f5::function_3bbb0063;
	classes.var_d63e16f5[0].var_b684a6d1[1562574218] = &namespace_d63e16f5::function_5d22fd8a;
	classes.var_d63e16f5[0].var_b684a6d1[-234604426] = &namespace_d63e16f5::function_f2043876;
	classes.var_d63e16f5[0].var_b684a6d1[-1490407061] = &namespace_d63e16f5::function_a72a316b;
	classes.var_d63e16f5[0].var_b684a6d1[-444976957] = &namespace_d63e16f5::function_e57a30c3;
	classes.var_d63e16f5[0].var_b684a6d1[1291604272] = &namespace_d63e16f5::function_4cfc5130;
	classes.var_d63e16f5[0].var_b684a6d1[562069659] = &namespace_d63e16f5::function_2180809b;
	classes.var_d63e16f5[0].var_b684a6d1[-1223116993] = &namespace_d63e16f5::function_b718b73f;
	classes.var_d63e16f5[0].var_b684a6d1[1291392716] = &namespace_d63e16f5::function_4cf916cc;
	classes.var_d63e16f5[0].var_b684a6d1[-896363193] = &namespace_d63e16f5::function_ca929547;
	classes.var_d63e16f5[0].var_b684a6d1[131884998] = &namespace_d63e16f5::function_7dc67c6;
	classes.var_d63e16f5[0].var_b684a6d1[-1690805083] = &namespace_d63e16f5::function_9b385ca5;
}

