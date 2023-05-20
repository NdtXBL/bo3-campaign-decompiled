#using scripts\codescripts\struct;
#using scripts\cp\_accolades;
#using scripts\cp\_challenges;
#using scripts\cp\_decorations;
#using scripts\cp\_laststand;
#using scripts\cp\_skipto;
#using scripts\cp\gametypes\_save;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\dev_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\laststand_shared;
#using scripts\shared\load_shared;
#using scripts\shared\rank_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;
#using scripts\shared\weapons_shared;

#namespace namespace_e462855b;

/*
	Name: function_2dc19561
	Namespace: namespace_e462855b
	Checksum: 0x56FC5155
	Offset: 0x270
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	/#
		namespace_bea63b8a::function_50f16166("Dev Block strings are not supported", &function_8c87d8eb, undefined, undefined);
	#/
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_e462855b
	Checksum: 0x2E544098
	Offset: 0x2B0
	Size: 0x1BB
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	/#
		function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
		function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
		function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
		function_6c1294b8("Dev Block strings are not supported", 0);
		function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
		function_6c1294b8("Dev Block strings are not supported", 0);
		function_6c1294b8("Dev Block strings are not supported", 0);
		function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
		thread function_88dafe6a();
		thread function_dbdf88b3();
		thread function_c0297769();
		thread function_47239612();
		thread function_d2e4fa20();
		level thread namespace_eae8c9fa::function_8ed979e4(2);
		namespace_dabbe128::function_c61b24c4(&function_6579c4b6);
		namespace_dabbe128::function_eb99da89(&function_bbc58bb6);
		namespace_dabbe128::function_95670def(&function_6307b682);
	#/
}

/*
	Name: function_6579c4b6
	Namespace: namespace_e462855b
	Checksum: 0xE52F8091
	Offset: 0x478
	Size: 0x1ED
	Parameters: 0
	Flags: None
*/
function function_6579c4b6()
{
	/#
		level namespace_ad23e503::function_1ab5ebec("Dev Block strings are not supported");
		var_dc719734 = "Dev Block strings are not supported";
		function_b3c0448e(var_dc719734);
		var_2395e945 = function_3f10449f();
		foreach(var_5dc5e20a in function_3f10449f())
		{
			var_dc719734 = "Dev Block strings are not supported" + var_5dc5e20a.var_b3d32c97 + "Dev Block strings are not supported";
			function_b3c0448e(var_dc719734);
		}
		thread function_9df6342b();
		level.var_97ae0af9 = "Dev Block strings are not supported";
		function_1b1c9526(level.var_97ae0af9, "Dev Block strings are not supported", 0);
		var_2395e945 = function_3f10449f();
		for(var_c957f6b6 = 0; var_c957f6b6 < var_2395e945.size; var_c957f6b6++)
		{
			var_2658f52f = var_c957f6b6 + 1;
			function_1b1c9526(level.var_97ae0af9, var_2395e945[var_c957f6b6].var_b3d32c97, var_2658f52f);
		}
	#/
}

/*
	Name: function_bbc58bb6
	Namespace: namespace_e462855b
	Checksum: 0xD1BD5F69
	Offset: 0x670
	Size: 0xAD
	Parameters: 0
	Flags: None
*/
function function_bbc58bb6()
{
	/#
		if(!isdefined(level.var_97ae0af9))
		{
			return;
		}
		var_2395e945 = function_3f10449f();
		for(var_c957f6b6 = 0; var_c957f6b6 < var_2395e945.size; var_c957f6b6++)
		{
			if(var_2395e945[var_c957f6b6] != self)
			{
				continue;
			}
			function_1b1c9526(level.var_97ae0af9, var_2395e945[var_c957f6b6].var_b3d32c97, var_c957f6b6 + 1);
		}
	#/
}

/*
	Name: function_6307b682
	Namespace: namespace_e462855b
	Checksum: 0x2847C4CD
	Offset: 0x728
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_6307b682()
{
	/#
		if(!isdefined(level.var_97ae0af9))
		{
			return;
		}
		var_dc719734 = "Dev Block strings are not supported" + self.var_b3d32c97 + "Dev Block strings are not supported";
		namespace_82b91a51::function_316771cc(var_dc719734);
	#/
}

/*
	Name: function_1b1c9526
	Namespace: namespace_e462855b
	Checksum: 0xABFF2DA0
	Offset: 0x788
	Size: 0x68B
	Parameters: 3
	Flags: None
*/
function function_1b1c9526(var_71824009, var_f9bd308a, var_5e76f0af)
{
	/#
		var_acce17e = var_71824009 + var_f9bd308a + "Dev Block strings are not supported";
		var_cdd432c8 = "Dev Block strings are not supported" + var_5e76f0af;
		function_d2147d9f(var_acce17e, var_cdd432c8, "Dev Block strings are not supported", 1, "Dev Block strings are not supported");
		function_d2147d9f(var_acce17e, var_cdd432c8, "Dev Block strings are not supported", 2, "Dev Block strings are not supported");
		function_d2147d9f(var_acce17e, var_cdd432c8, "Dev Block strings are not supported", 3, "Dev Block strings are not supported");
		function_d2147d9f(var_acce17e, var_cdd432c8, "Dev Block strings are not supported", 4, "Dev Block strings are not supported");
		function_d2147d9f(var_acce17e, var_cdd432c8, "Dev Block strings are not supported", 5, "Dev Block strings are not supported");
		function_d2147d9f(var_acce17e, var_cdd432c8, "Dev Block strings are not supported", 6, "Dev Block strings are not supported");
		function_d2147d9f(var_acce17e, var_cdd432c8, "Dev Block strings are not supported", 7, "Dev Block strings are not supported");
		function_d2147d9f(var_acce17e, var_cdd432c8, "Dev Block strings are not supported", 8, "Dev Block strings are not supported");
		function_d2147d9f(var_acce17e, var_cdd432c8, "Dev Block strings are not supported", 9, "Dev Block strings are not supported");
		function_d2147d9f(var_acce17e, var_cdd432c8, "Dev Block strings are not supported", 10, "Dev Block strings are not supported");
		function_d2147d9f(var_acce17e, var_cdd432c8, "Dev Block strings are not supported", 11, "Dev Block strings are not supported");
		function_d2147d9f(var_acce17e, var_cdd432c8, "Dev Block strings are not supported", 12, "Dev Block strings are not supported");
		function_d2147d9f(var_acce17e, var_cdd432c8, "Dev Block strings are not supported", 13, "Dev Block strings are not supported");
		function_d2147d9f(var_acce17e, var_cdd432c8, "Dev Block strings are not supported", 14, "Dev Block strings are not supported");
		function_d2147d9f(var_acce17e, var_cdd432c8, "Dev Block strings are not supported", 15, "Dev Block strings are not supported");
		function_d2147d9f(var_acce17e, var_cdd432c8, "Dev Block strings are not supported", 16, "Dev Block strings are not supported");
		function_d2147d9f(var_acce17e, var_cdd432c8, "Dev Block strings are not supported", 17, "Dev Block strings are not supported");
		function_d2147d9f(var_acce17e, var_cdd432c8, "Dev Block strings are not supported", 18, "Dev Block strings are not supported");
		function_d2147d9f(var_acce17e, var_cdd432c8, "Dev Block strings are not supported", 19, "Dev Block strings are not supported");
		function_d2147d9f(var_acce17e, var_cdd432c8, "Dev Block strings are not supported", 20, "Dev Block strings are not supported");
		function_d2147d9f(var_acce17e, var_cdd432c8, "Dev Block strings are not supported", 21, "Dev Block strings are not supported");
		function_d2147d9f(var_acce17e, var_cdd432c8, "Dev Block strings are not supported", 22, "Dev Block strings are not supported");
		function_d2147d9f(var_acce17e, var_cdd432c8, "Dev Block strings are not supported", 23, "Dev Block strings are not supported");
		function_d2147d9f(var_acce17e, var_cdd432c8, "Dev Block strings are not supported", 24, "Dev Block strings are not supported");
		function_d2147d9f(var_acce17e, var_cdd432c8, "Dev Block strings are not supported", 25, "Dev Block strings are not supported");
		function_d2147d9f(var_acce17e, var_cdd432c8, "Dev Block strings are not supported", 26, "Dev Block strings are not supported");
		function_d2147d9f(var_acce17e, var_cdd432c8, "Dev Block strings are not supported", 27, "Dev Block strings are not supported");
		function_d2147d9f(var_acce17e, var_cdd432c8, "Dev Block strings are not supported", 28, "Dev Block strings are not supported");
		function_d2147d9f(var_acce17e, var_cdd432c8, "Dev Block strings are not supported", 29, "Dev Block strings are not supported");
		function_d2147d9f(var_acce17e, var_cdd432c8, "Dev Block strings are not supported", 30, "Dev Block strings are not supported");
		function_d2147d9f(var_acce17e, var_cdd432c8, "Dev Block strings are not supported", 31, "Dev Block strings are not supported");
		function_d2147d9f(var_acce17e, var_cdd432c8, "Dev Block strings are not supported", 32, "Dev Block strings are not supported");
		function_d2147d9f(var_acce17e, var_cdd432c8, "Dev Block strings are not supported", 33, "Dev Block strings are not supported");
	#/
}

/*
	Name: function_d2147d9f
	Namespace: namespace_e462855b
	Checksum: 0x5CEECD41
	Offset: 0xE20
	Size: 0x93
	Parameters: 5
	Flags: None
*/
function function_d2147d9f(var_71824009, var_cdd432c8, var_f8243fba, var_62cae919, var_c9e2ded0)
{
	/#
		function_b3c0448e(var_71824009 + var_f8243fba + "Dev Block strings are not supported" + "Dev Block strings are not supported" + "Dev Block strings are not supported" + var_cdd432c8 + "Dev Block strings are not supported" + "Dev Block strings are not supported" + "Dev Block strings are not supported" + var_c9e2ded0 + "Dev Block strings are not supported");
	#/
}

/*
	Name: function_bcce253a
	Namespace: namespace_e462855b
	Checksum: 0x26CFE2CE
	Offset: 0xEC0
	Size: 0x10B
	Parameters: 3
	Flags: None
*/
function function_bcce253a(var_c1905327, var_abf3fa43, var_439858f6)
{
	/#
		var_cdd432c8 = function_4bd0142f("Dev Block strings are not supported");
		if(var_cdd432c8 > 0)
		{
			var_5dc5e20a = function_3f10449f()[var_cdd432c8 - 1];
			if(isdefined(var_5dc5e20a))
			{
				if(isdefined(var_439858f6))
				{
					var_5dc5e20a thread [[var_abf3fa43]](var_439858f6);
				}
				else
				{
					var_5dc5e20a thread [[var_abf3fa43]]();
				}
			}
		}
		else
		{
			namespace_84970cc4::function_966ecb29(function_3f10449f(), var_abf3fa43, var_439858f6);
		}
		function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
	#/
}

/*
	Name: function_88dafe6a
	Namespace: namespace_e462855b
	Checksum: 0xF24B2B68
	Offset: 0xFD8
	Size: 0x7A7
	Parameters: 0
	Flags: None
*/
function function_88dafe6a()
{
	/#
		for(;;)
		{
			var_c1905327 = function_6f1ebe57("Dev Block strings are not supported");
			if(var_c1905327 == "Dev Block strings are not supported")
			{
				wait(0.05);
				continue;
			}
			switch(var_c1905327)
			{
				case "Dev Block strings are not supported":
				{
					function_bcce253a(var_c1905327, &function_2612a7ee);
					break;
				}
				case "Dev Block strings are not supported":
				{
					function_bcce253a(var_c1905327, &function_57a60e2f);
					break;
				}
				case "Dev Block strings are not supported":
				{
					function_bcce253a(var_c1905327, &function_f1e00eaf);
					break;
				}
				case "Dev Block strings are not supported":
				{
					function_bcce253a(var_c1905327, &function_c4332467, 1);
					break;
				}
				case "Dev Block strings are not supported":
				{
					function_bcce253a(var_c1905327, &function_c4332467, 0);
					break;
				}
				case "Dev Block strings are not supported":
				{
					function_bcce253a(var_c1905327, &function_e412b252);
					break;
				}
				case "Dev Block strings are not supported":
				{
					function_bcce253a(var_c1905327, &function_70cef21d);
					break;
				}
				case "Dev Block strings are not supported":
				{
					function_bcce253a(var_c1905327, &function_32101c84);
					break;
				}
				case "Dev Block strings are not supported":
				{
					function_bcce253a(var_c1905327, &function_cac73614, 100);
					break;
				}
				case "Dev Block strings are not supported":
				{
					function_bcce253a(var_c1905327, &function_cac73614, 1000);
					break;
				}
				case "Dev Block strings are not supported":
				{
					function_bcce253a(var_c1905327, &function_9f78d70e, 100);
					break;
				}
				case "Dev Block strings are not supported":
				{
					function_bcce253a(var_c1905327, &function_9f78d70e, 1000);
					break;
				}
				case "Dev Block strings are not supported":
				{
					function_bcce253a(var_c1905327, &function_d7b26538);
				}
				case "Dev Block strings are not supported":
				{
					function_bcce253a(var_c1905327, &function_fcd3cf3f);
					break;
				}
				case "Dev Block strings are not supported":
				{
					function_bcce253a(var_c1905327, &function_192ef5eb);
					break;
				}
				case "Dev Block strings are not supported":
				{
					function_bcce253a(var_c1905327, &function_b79fb0fe, 0);
					break;
				}
				case "Dev Block strings are not supported":
				{
					function_bcce253a(var_c1905327, &function_b79fb0fe, 1);
					break;
				}
				case "Dev Block strings are not supported":
				{
					function_bcce253a(var_c1905327, &function_b79fb0fe, 2);
					break;
				}
				case "Dev Block strings are not supported":
				{
					function_bcce253a(var_c1905327, &function_b79fb0fe, 3);
					break;
				}
				case "Dev Block strings are not supported":
				{
					function_bcce253a(var_c1905327, &function_b79fb0fe, 4);
					break;
				}
				case "Dev Block strings are not supported":
				{
					function_bcce253a(var_c1905327, &function_b79fb0fe, 5);
					break;
				}
				case "Dev Block strings are not supported":
				{
					function_bcce253a(var_c1905327, &function_b79fb0fe, 6);
					break;
				}
				case "Dev Block strings are not supported":
				{
					function_bcce253a(var_c1905327, &function_b79fb0fe, 7);
					break;
				}
				case "Dev Block strings are not supported":
				{
					function_bcce253a(var_c1905327, &function_b79fb0fe, 8);
					break;
				}
				case "Dev Block strings are not supported":
				{
					function_bcce253a(var_c1905327, &function_b79fb0fe, 9);
					break;
				}
				case "Dev Block strings are not supported":
				{
					function_bcce253a(var_c1905327, &function_b79fb0fe, 10);
					break;
				}
				case "Dev Block strings are not supported":
				{
					function_bcce253a(var_c1905327, &function_f61fdbaf);
					break;
				}
				case "Dev Block strings are not supported":
				{
					function_bcce253a(var_c1905327, &function_408729cd);
					break;
				}
				case "Dev Block strings are not supported":
				{
					function_bcce253a(var_c1905327, &function_4edb34ed);
					break;
				}
				case "Dev Block strings are not supported":
				{
					function_bcce253a(var_c1905327, &function_4533d882);
					break;
				}
				case "Dev Block strings are not supported":
				{
					function_bcce253a(var_c1905327, &function_cac73614, 1000000);
					break;
				}
				case "Dev Block strings are not supported":
				{
					function_bcce253a(var_c1905327, &function_e2643869);
					break;
				}
				case "Dev Block strings are not supported":
				{
					function_bcce253a(var_c1905327, &function_9c35ef50, "Dev Block strings are not supported");
				}
				case "Dev Block strings are not supported":
				{
					break;
				}
				case default:
				{
					if(isdefined(level.var_6680fef1))
					{
						if(function_6e2770d8(level.var_6680fef1))
						{
							foreach(var_e462855b in level.var_6680fef1)
							{
								if(isdefined([[var_e462855b]](var_c1905327)) && [[var_e462855b]](var_c1905327))
								{
									break;
								}
							}
						}
						else
						{
							[[level.var_6680fef1]](var_c1905327);
						}
					}
					break;
				}
			}
			function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
			wait(0.5);
		}
	#/
}

/*
	Name: function_9c35ef50
	Namespace: namespace_e462855b
	Checksum: 0x925FBE7C
	Offset: 0x1788
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_9c35ef50(var_257fc497)
{
	/#
		self namespace_f74b04eb::function_96ed590f(var_257fc497, 50);
	#/
}

/*
	Name: function_e2643869
	Namespace: namespace_e462855b
	Checksum: 0xC82906BA
	Offset: 0x17C0
	Size: 0xE1
	Parameters: 0
	Flags: None
*/
function function_e2643869()
{
	/#
		var_c02de660 = namespace_1d795d47::function_23eda99c();
		foreach(var_1a443ebd in var_c02de660)
		{
			self function_aa67c13b("Dev Block strings are not supported" + function_f45850ec(function_4794dda(var_1a443ebd), 0, 3), 1);
		}
	#/
}

/*
	Name: function_4533d882
	Namespace: namespace_e462855b
	Checksum: 0xA800F7E8
	Offset: 0x18B0
	Size: 0x6D
	Parameters: 0
	Flags: None
*/
function function_4533d882()
{
	/#
		for(var_1630584c = 1; var_1630584c < 76; var_1630584c++)
		{
			self function_8f67433b("Dev Block strings are not supported", var_1630584c, "Dev Block strings are not supported", "Dev Block strings are not supported", "Dev Block strings are not supported", 999);
		}
	#/
}

/*
	Name: function_4edb34ed
	Namespace: namespace_e462855b
	Checksum: 0x2ABEB0F6
	Offset: 0x1928
	Size: 0x65
	Parameters: 0
	Flags: None
*/
function function_4edb34ed()
{
	/#
		for(var_1630584c = 1; var_1630584c < 76; var_1630584c++)
		{
			self function_8f67433b("Dev Block strings are not supported", var_1630584c, "Dev Block strings are not supported", 1000000);
		}
	#/
}

/*
	Name: function_408729cd
	Namespace: namespace_e462855b
	Checksum: 0x16E5AFEC
	Offset: 0x1998
	Size: 0xC9
	Parameters: 0
	Flags: None
*/
function function_408729cd()
{
	/#
		if(!isdefined(function_9065d6ea()))
		{
			return;
		}
		foreach(var_1a443ebd in namespace_1d795d47::function_23eda99c())
		{
			self function_8f67433b("Dev Block strings are not supported", var_1a443ebd, "Dev Block strings are not supported", 4, 1);
		}
	#/
}

/*
	Name: function_192ef5eb
	Namespace: namespace_e462855b
	Checksum: 0xEC45DA43
	Offset: 0x1A70
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_192ef5eb()
{
	/#
		if(isdefined(self.var_f0080358) && self.var_f0080358)
		{
			self function_2b74b70a(self.var_f0080358);
		}
		self.var_f0080358 = self function_2f6b6a4c("Dev Block strings are not supported");
		self waittill("hash_d2c577ed", var_1df81780, var_d62110b4);
		while(var_d62110b4 != "Dev Block strings are not supported")
		{
			self waittill("hash_d2c577ed", var_1df81780, var_d62110b4);
		}
		self function_2b74b70a(self.var_f0080358);
	#/
}

/*
	Name: function_b79fb0fe
	Namespace: namespace_e462855b
	Checksum: 0x30B2578E
	Offset: 0x1B48
	Size: 0x73
	Parameters: 1
	Flags: None
*/
function function_b79fb0fe(var_b931f6fe)
{
	/#
		var_3e91b40a = self function_e5e45ad4();
		self function_f07412c0(var_3e91b40a[var_b931f6fe].var_4be20d44);
		function_9a7ed193(self);
	#/
}

/*
	Name: function_f61fdbaf
	Namespace: namespace_e462855b
	Checksum: 0x25B6FFAA
	Offset: 0x1BC8
	Size: 0xC1
	Parameters: 0
	Flags: None
*/
function function_f61fdbaf()
{
	/#
		var_c02de660 = namespace_1d795d47::function_23eda99c();
		foreach(var_827b82e9 in var_c02de660)
		{
			self function_8f67433b("Dev Block strings are not supported", var_827b82e9, "Dev Block strings are not supported", 1);
		}
	#/
}

/*
	Name: function_d7b26538
	Namespace: namespace_e462855b
	Checksum: 0x9756E50F
	Offset: 0x1C98
	Size: 0xEB
	Parameters: 0
	Flags: None
*/
function function_d7b26538()
{
	/#
		var_c02de660 = namespace_1d795d47::function_23eda99c();
		foreach(var_1a443ebd in var_c02de660)
		{
			for(var_c957f6b6 = 0; var_c957f6b6 < 10; var_c957f6b6++)
			{
				self function_8f67433b("Dev Block strings are not supported", var_1a443ebd, "Dev Block strings are not supported", var_c957f6b6, 1);
			}
		}
	#/
}

/*
	Name: function_fcd3cf3f
	Namespace: namespace_e462855b
	Checksum: 0xC919A945
	Offset: 0x1D90
	Size: 0xC1
	Parameters: 0
	Flags: None
*/
function function_fcd3cf3f()
{
	/#
		var_c02de660 = namespace_1d795d47::function_23eda99c();
		foreach(var_827b82e9 in var_c02de660)
		{
			self function_8f67433b("Dev Block strings are not supported", var_827b82e9, "Dev Block strings are not supported", 1);
		}
	#/
}

/*
	Name: function_cac73614
	Namespace: namespace_e462855b
	Checksum: 0x2CE7E4A4
	Offset: 0x1E60
	Size: 0x73
	Parameters: 1
	Flags: None
*/
function function_cac73614(var_735c65d7)
{
	/#
		/#
			namespace_33b293fd::function_a7ee953(isdefined(self));
		#/
		/#
			namespace_33b293fd::function_a7ee953(function_65f192a6(self));
		#/
		self function_dde1ac37("Dev Block strings are not supported", var_735c65d7);
	#/
}

/*
	Name: function_9f78d70e
	Namespace: namespace_e462855b
	Checksum: 0x9B374B38
	Offset: 0x1EE0
	Size: 0x113
	Parameters: 1
	Flags: None
*/
function function_9f78d70e(var_735c65d7)
{
	/#
		/#
			namespace_33b293fd::function_a7ee953(isdefined(self));
		#/
		/#
			namespace_33b293fd::function_a7ee953(function_65f192a6(self));
		#/
		var_7d65157 = function_b6b79a0(function_d4cc1345("Dev Block strings are not supported", 3, self.var_fd4f9b7c.var_8c02d299.var_b82bbe1c, 0));
		var_b51b0d94 = self function_84368297("Dev Block strings are not supported", var_7d65157, "Dev Block strings are not supported");
		self function_8f67433b("Dev Block strings are not supported", var_7d65157, "Dev Block strings are not supported", var_735c65d7 + var_b51b0d94);
	#/
}

/*
	Name: function_c4332467
	Namespace: namespace_e462855b
	Checksum: 0xCD32BAF
	Offset: 0x2000
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_c4332467(var_7eb013a5)
{
	/#
		if(var_7eb013a5)
		{
			self function_83fd42b5();
		}
		else
		{
			self function_4890e520();
		}
	#/
}

/*
	Name: function_e412b252
	Namespace: namespace_e462855b
	Checksum: 0xD5803204
	Offset: 0x2050
	Size: 0xFB
	Parameters: 0
	Flags: None
*/
function function_e412b252()
{
	/#
		/#
			namespace_33b293fd::function_a7ee953(isdefined(self));
		#/
		/#
			namespace_33b293fd::function_a7ee953(function_65f192a6(self));
		#/
		if(function_5b49d38c(self))
		{
			self function_4890e520();
			var_ca867984 = (function_72a94f05(-20, 20), function_72a94f05(-20, 20), function_72a94f05(-20, 20));
			self function_c3945cd5(self.var_3a90f16b + 666, self.var_722885f3 + var_ca867984);
		}
	#/
}

/*
	Name: function_57a60e2f
	Namespace: namespace_e462855b
	Checksum: 0x6A46AD73
	Offset: 0x2158
	Size: 0x155
	Parameters: 0
	Flags: None
*/
function function_57a60e2f()
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
	Name: function_f1e00eaf
	Namespace: namespace_e462855b
	Checksum: 0x4E997271
	Offset: 0x22B8
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_f1e00eaf()
{
	/#
		/#
			namespace_33b293fd::function_a7ee953(isdefined(self));
		#/
		/#
			namespace_33b293fd::function_a7ee953(function_65f192a6(self));
		#/
		/#
			namespace_33b293fd::function_a7ee953(function_5b49d38c(self));
		#/
		self.var_255b9315 = !self.var_255b9315;
	#/
}

/*
	Name: function_32101c84
	Namespace: namespace_e462855b
	Checksum: 0x3472D07B
	Offset: 0x2348
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_32101c84()
{
	/#
		/#
			namespace_33b293fd::function_a7ee953(isdefined(self));
		#/
		/#
			namespace_33b293fd::function_a7ee953(function_65f192a6(self));
		#/
		/#
			namespace_33b293fd::function_a7ee953(function_5b49d38c(self));
		#/
		self.var_6c733586 = !self.var_6c733586;
	#/
}

/*
	Name: function_70cef21d
	Namespace: namespace_e462855b
	Checksum: 0x6D39044C
	Offset: 0x23D8
	Size: 0x13D
	Parameters: 0
	Flags: None
*/
function function_70cef21d()
{
	/#
		/#
			namespace_33b293fd::function_a7ee953(isdefined(self));
		#/
		/#
			namespace_33b293fd::function_a7ee953(function_65f192a6(self));
		#/
		/#
			namespace_33b293fd::function_a7ee953(function_5b49d38c(self));
		#/
		self function_9ad3560d();
		if(isdefined(self.var_273f42da))
		{
			self.var_273f42da function_dc8c8404();
			self.var_273f42da = undefined;
		}
		self namespace_564407fb::function_4a66f284();
		self namespace_564407fb::function_b308f533();
		self function_ed04153c(1);
		self.var_255b9315 = 0;
		self function_4890e520();
		self.var_564407fb = undefined;
		self notify("hash_90831b9e", self);
	#/
}

/*
	Name: function_ec2ac25f
	Namespace: namespace_e462855b
	Checksum: 0xF0E202D3
	Offset: 0x2520
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function function_ec2ac25f(var_47c252e3)
{
	/#
		self endon("hash_643a7daf");
		self endon("hash_2612a7ee");
		while(1)
		{
			wait(1);
			if(self.var_47c252e3 != var_47c252e3)
			{
				self.var_47c252e3 = var_47c252e3;
				self.var_3a90f16b = self.var_47c252e3;
			}
		}
	#/
}

/*
	Name: function_2612a7ee
	Namespace: namespace_e462855b
	Checksum: 0x539C5EF2
	Offset: 0x2590
	Size: 0xFB
	Parameters: 0
	Flags: None
*/
function function_2612a7ee()
{
	/#
		/#
			namespace_33b293fd::function_a7ee953(isdefined(self));
		#/
		/#
			namespace_33b293fd::function_a7ee953(function_65f192a6(self));
		#/
		/#
			namespace_33b293fd::function_a7ee953(function_5b49d38c(self));
		#/
		self notify("hash_2612a7ee");
		if(self.var_47c252e3 >= 2000 && isdefined(self.var_1bcb5997))
		{
			self.var_47c252e3 = self.var_1bcb5997;
		}
		else
		{
			self.var_1bcb5997 = self.var_47c252e3;
			self.var_47c252e3 = 2000;
			self thread function_ec2ac25f(self.var_47c252e3);
		}
		self.var_3a90f16b = self.var_47c252e3;
	#/
}

/*
	Name: function_9df6342b
	Namespace: namespace_e462855b
	Checksum: 0x290F738B
	Offset: 0x2698
	Size: 0x517
	Parameters: 0
	Flags: None
*/
function function_9df6342b()
{
	/#
		if(isdefined(game["Dev Block strings are not supported"]) && game["Dev Block strings are not supported"])
		{
			return;
		}
		level namespace_ad23e503::function_1ab5ebec("Dev Block strings are not supported");
		wait(0.1);
		var_87a9e25c = function_769db7b8("Dev Block strings are not supported");
		var_f021b516 = [];
		var_f66252b6 = [];
		var_439d85 = [];
		for(var_c957f6b6 = 0; var_c957f6b6 < var_87a9e25c.size; var_c957f6b6++)
		{
			if(namespace_f996a5bc::function_afc1125(var_87a9e25c[var_c957f6b6]) || namespace_f996a5bc::function_7e589a1e(var_87a9e25c[var_c957f6b6]))
			{
				function_1c2beb2b(var_f021b516, var_87a9e25c[var_c957f6b6], 0);
				continue;
			}
			if(namespace_f996a5bc::function_56d05fd6(var_87a9e25c[var_c957f6b6]))
			{
				function_1c2beb2b(var_f66252b6, var_87a9e25c[var_c957f6b6], 0);
				continue;
			}
			function_1c2beb2b(var_439d85, var_87a9e25c[var_c957f6b6], 0);
		}
		var_476218ad = "Dev Block strings are not supported";
		function_b3c0448e(var_476218ad + "Dev Block strings are not supported" + "Dev Block strings are not supported" + "Dev Block strings are not supported" + "Dev Block strings are not supported");
		function_b3c0448e(var_476218ad + "Dev Block strings are not supported" + "Dev Block strings are not supported" + "Dev Block strings are not supported" + "Dev Block strings are not supported");
		function_b3c0448e(var_476218ad + "Dev Block strings are not supported" + "Dev Block strings are not supported" + "Dev Block strings are not supported" + "Dev Block strings are not supported");
		function_c71c01bb(var_476218ad, "Dev Block strings are not supported", 0, var_f66252b6, "Dev Block strings are not supported");
		function_c71c01bb(var_476218ad, "Dev Block strings are not supported", 0, var_f021b516, "Dev Block strings are not supported");
		function_c71c01bb(var_476218ad, "Dev Block strings are not supported", 0, var_439d85, "Dev Block strings are not supported");
		function_fcadbfcd(var_476218ad, "Dev Block strings are not supported", 0, var_f021b516, "Dev Block strings are not supported");
		var_2395e945 = function_3f10449f();
		for(var_c957f6b6 = 0; var_c957f6b6 < var_2395e945.size; var_c957f6b6++)
		{
			var_2658f52f = var_c957f6b6 + 1;
			function_b3c0448e(var_476218ad + var_2395e945[var_c957f6b6].var_b3d32c97 + "Dev Block strings are not supported" + "Dev Block strings are not supported" + "Dev Block strings are not supported");
			function_b3c0448e(var_476218ad + var_2395e945[var_c957f6b6].var_b3d32c97 + "Dev Block strings are not supported" + "Dev Block strings are not supported" + "Dev Block strings are not supported");
			function_b3c0448e(var_476218ad + var_2395e945[var_c957f6b6].var_b3d32c97 + "Dev Block strings are not supported" + "Dev Block strings are not supported" + "Dev Block strings are not supported");
			function_c71c01bb(var_476218ad, var_2395e945[var_c957f6b6].var_b3d32c97, var_2658f52f, var_f66252b6, "Dev Block strings are not supported");
			function_c71c01bb(var_476218ad, var_2395e945[var_c957f6b6].var_b3d32c97, var_2658f52f, var_f021b516, "Dev Block strings are not supported");
			function_c71c01bb(var_476218ad, var_2395e945[var_c957f6b6].var_b3d32c97, var_2658f52f, var_439d85, "Dev Block strings are not supported");
			function_fcadbfcd(var_476218ad, var_2395e945[var_c957f6b6].var_b3d32c97, var_2658f52f, var_f021b516, "Dev Block strings are not supported");
		}
		game["Dev Block strings are not supported"] = 1;
	#/
}

/*
	Name: function_fcadbfcd
	Namespace: namespace_e462855b
	Checksum: 0xADB12274
	Offset: 0x2BB8
	Size: 0x221
	Parameters: 5
	Flags: None
*/
function function_fcadbfcd(var_71824009, var_f9bd308a, var_5e76f0af, var_87a9e25c, var_5eff1d88)
{
	/#
		var_acce17e = var_71824009 + var_f9bd308a + "Dev Block strings are not supported" + "Dev Block strings are not supported" + var_5eff1d88 + "Dev Block strings are not supported";
		var_4a294ea1 = [];
		foreach(var_dfcc01fd in var_87a9e25c)
		{
			foreach(var_fc760a22 in var_dfcc01fd.var_4a95b9ed)
			{
				namespace_84970cc4::function_69554b3e(var_4a294ea1, var_fc760a22, 0);
			}
		}
		var_cdd432c8 = "Dev Block strings are not supported" + var_5e76f0af;
		foreach(var_7974a81e in var_4a294ea1)
		{
			function_2e546d79(var_acce17e, var_cdd432c8, var_7974a81e, 1);
		}
	#/
}

/*
	Name: function_c71c01bb
	Namespace: namespace_e462855b
	Checksum: 0xBF1495A4
	Offset: 0x2DE8
	Size: 0x24D
	Parameters: 5
	Flags: None
*/
function function_c71c01bb(var_71824009, var_f9bd308a, var_5e76f0af, var_87a9e25c, var_5eff1d88)
{
	/#
		var_acce17e = var_71824009 + var_f9bd308a + "Dev Block strings are not supported" + "Dev Block strings are not supported" + var_5eff1d88 + "Dev Block strings are not supported";
		var_cdd432c8 = "Dev Block strings are not supported" + var_5e76f0af;
		if(isdefined(var_87a9e25c))
		{
			for(var_c957f6b6 = 0; var_c957f6b6 < var_87a9e25c.size; var_c957f6b6++)
			{
				if(var_5eff1d88 == "Dev Block strings are not supported")
				{
					var_4a294ea1 = [];
				}
				else
				{
					var_4a294ea1 = var_87a9e25c[var_c957f6b6].var_4a95b9ed;
				}
				var_4be20d44 = var_87a9e25c[var_c957f6b6].var_4be20d44;
				if(var_4a294ea1.size)
				{
					function_3294eaad(var_acce17e + var_4be20d44 + "Dev Block strings are not supported", var_cdd432c8, var_4be20d44, var_c957f6b6 + 1);
					foreach(var_7974a81e in var_4a294ea1)
					{
						if(var_7974a81e != "Dev Block strings are not supported")
						{
							function_3294eaad(var_acce17e + var_4be20d44 + "Dev Block strings are not supported", var_cdd432c8, var_4be20d44 + "Dev Block strings are not supported" + var_7974a81e, var_c957f6b6 + 1);
						}
					}
				}
				else
				{
					function_3294eaad(var_acce17e, var_cdd432c8, var_4be20d44, var_c957f6b6 + 1);
				}
				wait(0.05);
			}
		}
	#/
}

/*
	Name: function_3294eaad
	Namespace: namespace_e462855b
	Checksum: 0x2E75D6E
	Offset: 0x3040
	Size: 0x8B
	Parameters: 4
	Flags: None
*/
function function_3294eaad(var_71824009, var_cdd432c8, var_1b995050, var_62cae919)
{
	/#
		function_b3c0448e(var_71824009 + var_1b995050 + "Dev Block strings are not supported" + "Dev Block strings are not supported" + "Dev Block strings are not supported" + var_cdd432c8 + "Dev Block strings are not supported" + "Dev Block strings are not supported" + "Dev Block strings are not supported" + var_1b995050 + "Dev Block strings are not supported");
	#/
}

/*
	Name: function_2e546d79
	Namespace: namespace_e462855b
	Checksum: 0x65801849
	Offset: 0x30D8
	Size: 0x8B
	Parameters: 4
	Flags: None
*/
function function_2e546d79(var_71824009, var_cdd432c8, var_ea9ecd24, var_62cae919)
{
	/#
		function_b3c0448e(var_71824009 + var_ea9ecd24 + "Dev Block strings are not supported" + "Dev Block strings are not supported" + "Dev Block strings are not supported" + var_cdd432c8 + "Dev Block strings are not supported" + "Dev Block strings are not supported" + "Dev Block strings are not supported" + var_ea9ecd24 + "Dev Block strings are not supported");
	#/
}

/*
	Name: function_dbdf88b3
	Namespace: namespace_e462855b
	Checksum: 0x11A6E8F8
	Offset: 0x3170
	Size: 0x107
	Parameters: 0
	Flags: None
*/
function function_dbdf88b3()
{
	/#
		for(;;)
		{
			var_e0da7a29 = function_6f1ebe57("Dev Block strings are not supported");
			if(var_e0da7a29 != "Dev Block strings are not supported")
			{
				function_bcce253a(var_e0da7a29, &function_820cf1c0, var_e0da7a29);
				function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
			}
			var_25d1d903 = function_6f1ebe57("Dev Block strings are not supported");
			if(var_25d1d903 != "Dev Block strings are not supported")
			{
				function_bcce253a(var_25d1d903, &function_1734411b, var_25d1d903);
				function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
			}
			wait(0.5);
		}
	#/
}

/*
	Name: function_c0297769
	Namespace: namespace_e462855b
	Checksum: 0x76BEFB20
	Offset: 0x3280
	Size: 0x3DF
	Parameters: 0
	Flags: None
*/
function function_c0297769()
{
	/#
		var_2fc9381e = 0.5;
		var_c0dde77d = function_b6b79a0(var_2fc9381e / 0.05);
		var_5418427f = function_b6b79a0(1 / var_2fc9381e);
		var_a392d308 = 0;
		var_6f7b2095 = [];
		var_6f7b2095[var_6f7b2095.size] = (1, 1, 1);
		var_6f7b2095[var_6f7b2095.size] = (1, 0, 0);
		var_6f7b2095[var_6f7b2095.size] = (0, 1, 0);
		var_6f7b2095[var_6f7b2095.size] = (1, 1, 0);
		var_6f7b2095[var_6f7b2095.size] = (1, 0, 1);
		var_6f7b2095[var_6f7b2095.size] = (0, 1, 1);
		for(;;)
		{
			wait(var_2fc9381e);
			var_6bef7095 = function_4bd0142f("Dev Block strings are not supported");
			if(!var_6bef7095)
			{
				break;
			}
			if(!var_a392d308)
			{
				function_2e4b8c78(level.var_2395e945[0] function_48c6a3a2().var_4be20d44);
			}
			var_a392d308++;
			if(var_a392d308 >= var_5418427f)
			{
				var_a392d308 = 0;
			}
			var_d9fe904b = 0;
			for(var_c957f6b6 = 1; var_c957f6b6 < level.var_2395e945.size; var_c957f6b6++)
			{
				var_5dc5e20a = level.var_2395e945[var_c957f6b6];
				var_dfcc01fd = var_5dc5e20a function_48c6a3a2();
				if(!isdefined(var_dfcc01fd) || level.var_6c3e6703 == var_dfcc01fd)
				{
					continue;
				}
				function_8f3e0f73(var_5dc5e20a function_d48f2ab3("Dev Block strings are not supported"), var_dfcc01fd.var_4be20d44, var_6f7b2095[var_d9fe904b], 1, 0.15, var_c0dde77d);
				var_d9fe904b++;
				if(var_d9fe904b >= var_6f7b2095.size)
				{
					var_d9fe904b = 0;
				}
			}
			var_d9fe904b = 0;
			var_161e6daa = function_c20c2e8();
			for(var_c957f6b6 = 0; var_c957f6b6 < var_161e6daa.size; var_c957f6b6++)
			{
				var_d84e54db = var_161e6daa[var_c957f6b6];
				if(function_85e4c3b3(var_d84e54db))
				{
					var_dfcc01fd = var_d84e54db.var_76c74c4f;
				}
				else
				{
					var_dfcc01fd = var_d84e54db.var_dfcc01fd;
				}
				if(!isdefined(var_dfcc01fd) || level.var_6c3e6703 == var_dfcc01fd)
				{
					continue;
				}
				function_8f3e0f73(var_d84e54db function_d48f2ab3("Dev Block strings are not supported"), var_dfcc01fd.var_4be20d44, var_6f7b2095[var_d9fe904b], 1, 0.15, var_c0dde77d);
				var_d9fe904b++;
				if(var_d9fe904b >= var_6f7b2095.size)
				{
					var_d9fe904b = 0;
				}
			}
		}
	#/
}

/*
	Name: function_47239612
	Namespace: namespace_e462855b
	Checksum: 0x9149A16C
	Offset: 0x3668
	Size: 0x20B
	Parameters: 0
	Flags: None
*/
function function_47239612()
{
	/#
		wait(0.05);
		var_bcd2016c = function_4bd0142f("Dev Block strings are not supported");
		for(;;)
		{
			var_35c84e32 = function_4bd0142f("Dev Block strings are not supported");
			if(var_bcd2016c != var_35c84e32)
			{
				if(isdefined(level.var_315b8892))
				{
					level.var_315b8892 function_dc8c8404();
					level.var_315b8892 = undefined;
				}
				if(var_35c84e32)
				{
					var_5dc5e20a = function_3f10449f()[0];
					var_102e3d58 = var_5dc5e20a function_89c87c9c();
					var_34d7a5cf = function_bc7ce905((0, var_102e3d58[1], 0));
					var_5c21ad3d = 120;
					var_34d7a5cf = (var_34d7a5cf[0] * var_5c21ad3d, var_34d7a5cf[1] * var_5c21ad3d, var_34d7a5cf[2] * var_5c21ad3d);
					level.var_315b8892 = function_9b7fda5e("Dev Block strings are not supported", var_5dc5e20a function_501eb072() + var_34d7a5cf);
					level.var_315b8892 function_e48f905e("Dev Block strings are not supported");
					level.var_315b8892.var_6ab6f4fd = (0, var_102e3d58[1], 0) + VectorScale((0, 1, 0), 90);
				}
			}
			var_bcd2016c = var_35c84e32;
			wait(0.05);
		}
	#/
}

/*
	Name: function_820cf1c0
	Namespace: namespace_e462855b
	Checksum: 0xE77AE077
	Offset: 0x3880
	Size: 0x323
	Parameters: 1
	Flags: None
*/
function function_820cf1c0(var_e0da7a29)
{
	/#
		/#
			namespace_33b293fd::function_a7ee953(isdefined(self));
		#/
		/#
			namespace_33b293fd::function_a7ee953(function_65f192a6(self));
		#/
		/#
			namespace_33b293fd::function_a7ee953(function_5b49d38c(self));
		#/
		self notify("hash_e52a8b96");
		self endon("hash_e52a8b96");
		var_fd4f9b7c = self function_48c6a3a2();
		var_91b65017 = function_d6df1f20(var_e0da7a29, "Dev Block strings are not supported");
		switch(var_91b65017.size)
		{
			case 1:
			case default:
			{
				var_dfcc01fd = function_c4d5ec1f(var_91b65017[0]);
				break;
			}
			case 2:
			{
				var_dfcc01fd = function_c4d5ec1f(var_91b65017[0], var_91b65017[1]);
				break;
			}
			case 3:
			{
				var_dfcc01fd = function_c4d5ec1f(var_91b65017[0], var_91b65017[1], var_91b65017[2]);
				break;
			}
			case 4:
			{
				var_dfcc01fd = function_c4d5ec1f(var_91b65017[0], var_91b65017[1], var_91b65017[2], var_91b65017[3]);
				break;
			}
			case 5:
			{
				var_dfcc01fd = function_c4d5ec1f(var_91b65017[0], var_91b65017[1], var_91b65017[2], var_91b65017[3], var_91b65017[4]);
				break;
			}
		}
		if(var_fd4f9b7c != var_dfcc01fd)
		{
			if(function_4bd0142f("Dev Block strings are not supported"))
			{
				function_b3c0448e("Dev Block strings are not supported" + var_e0da7a29);
				wait(0.05);
			}
			else
			{
				self function_1f3745c0(var_fd4f9b7c);
				self function_860a040a(var_dfcc01fd);
				self function_cb53a41e(var_dfcc01fd);
			}
			var_aaeec8c5 = var_dfcc01fd.var_453c0f47;
			if(var_aaeec8c5)
			{
				self function_cdf98bcd(var_dfcc01fd, var_aaeec8c5);
			}
		}
	#/
}

/*
	Name: function_1734411b
	Namespace: namespace_e462855b
	Checksum: 0x500D3027
	Offset: 0x3BB0
	Size: 0x46B
	Parameters: 1
	Flags: None
*/
function function_1734411b(var_ea9ecd24)
{
	/#
		/#
			namespace_33b293fd::function_a7ee953(isdefined(self));
		#/
		/#
			namespace_33b293fd::function_a7ee953(function_65f192a6(self));
		#/
		/#
			namespace_33b293fd::function_a7ee953(function_5b49d38c(self));
		#/
		self notify("hash_1734411b");
		self endon("hash_1734411b");
		var_fd4f9b7c = self function_48c6a3a2();
		var_2ee2f0c0 = 0;
		var_91b65017 = function_d6df1f20(var_fd4f9b7c.var_4be20d44, "Dev Block strings are not supported");
		foreach(var_b000b0be in var_fd4f9b7c.var_4a95b9ed)
		{
			if(var_b000b0be == var_ea9ecd24)
			{
				var_2ee2f0c0 = 1;
			}
		}
		if(var_2ee2f0c0 == 0)
		{
			function_2e4b8c78("Dev Block strings are not supported" + var_ea9ecd24 + "Dev Block strings are not supported" + var_91b65017[0]);
			var_3d3b647a = "Dev Block strings are not supported";
			if(var_fd4f9b7c.var_4a95b9ed.size == 0)
			{
				var_3d3b647a = var_3d3b647a + "Dev Block strings are not supported";
			}
			foreach(var_b000b0be in var_fd4f9b7c.var_4a95b9ed)
			{
				var_3d3b647a = var_3d3b647a + "Dev Block strings are not supported" + var_b000b0be;
			}
			function_2e4b8c78(var_3d3b647a);
			return;
		}
		foreach(var_feca4dc7 in var_91b65017)
		{
			if(var_feca4dc7 == var_ea9ecd24)
			{
				function_2e4b8c78("Dev Block strings are not supported" + var_ea9ecd24 + "Dev Block strings are not supported" + var_fd4f9b7c.var_4be20d44);
				return;
			}
		}
		var_91b65017[var_91b65017.size] = var_ea9ecd24;
		for(var_5e76f0af = var_91b65017.size; var_5e76f0af < 9; var_5e76f0af++)
		{
			var_91b65017[var_5e76f0af] = "Dev Block strings are not supported";
		}
		self function_1f3745c0(var_fd4f9b7c);
		var_c00374fd = function_c4d5ec1f(var_91b65017[0], var_91b65017[1], var_91b65017[2], var_91b65017[3], var_91b65017[4], var_91b65017[5], var_91b65017[6], var_91b65017[7], var_91b65017[8]);
		self function_860a040a(var_c00374fd);
		self function_cb53a41e(var_c00374fd);
	#/
}

/*
	Name: function_d2e4fa20
	Namespace: namespace_e462855b
	Checksum: 0x40452B25
	Offset: 0x4028
	Size: 0x12B
	Parameters: 0
	Flags: None
*/
function function_d2e4fa20()
{
	/#
		var_7fcd9ec4 = "Dev Block strings are not supported";
		while(function_4bd0142f("Dev Block strings are not supported"))
		{
			if(!isdefined(level.var_8d3aa7cb) || level.var_8d3aa7cb == 0)
			{
				thread function_4bed8a5();
				var_7fcd9ec4 = function_6f1ebe57("Dev Block strings are not supported");
				if(isdefined(var_7fcd9ec4) && var_7fcd9ec4 == "Dev Block strings are not supported")
				{
					function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
					var_7fcd9ec4 = "Dev Block strings are not supported";
				}
			}
			continue;
			level notify("hash_8e42baed");
			if(var_7fcd9ec4 == "Dev Block strings are not supported")
			{
				function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
				var_7fcd9ec4 = "Dev Block strings are not supported";
			}
			wait(0.05);
		}
	#/
}

/*
	Name: function_4bed8a5
	Namespace: namespace_e462855b
	Checksum: 0x13C6FC57
	Offset: 0x4160
	Size: 0x227
	Parameters: 0
	Flags: None
*/
function function_4bed8a5()
{
	/#
		level.var_8d3aa7cb = 1;
		wait(0.1);
		level.var_65029abb = function_ad13099a(level.var_2395e945[0]);
		level.var_65029abb.var_b5536acc = "Dev Block strings are not supported";
		level.var_65029abb.var_db55e535 = "Dev Block strings are not supported";
		level.var_65029abb.var_2363da9c = 1;
		level.var_65029abb.var_aabe9f43 = 0.5;
		level.var_65029abb.var_4f8217af = 320 - 1;
		level.var_65029abb.var_297f9d46 = 240;
		level.var_65029abb function_9befb288("Dev Block strings are not supported", 1000, 1);
		level.var_f2fb2b80 = function_ad13099a(level.var_2395e945[0]);
		level.var_f2fb2b80.var_b5536acc = "Dev Block strings are not supported";
		level.var_f2fb2b80.var_db55e535 = "Dev Block strings are not supported";
		level.var_f2fb2b80.var_2363da9c = 1;
		level.var_f2fb2b80.var_aabe9f43 = 0.5;
		level.var_f2fb2b80.var_4f8217af = 320 - 1;
		level.var_f2fb2b80.var_297f9d46 = 240;
		level.var_f2fb2b80 function_9befb288("Dev Block strings are not supported", 1, 480);
		level waittill("hash_8e42baed");
		level.var_65029abb function_89cd542d();
		level.var_f2fb2b80 function_89cd542d();
		level.var_8d3aa7cb = 0;
	#/
}

