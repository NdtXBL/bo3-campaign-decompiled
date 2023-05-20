#using scripts\codescripts\struct;
#using scripts\cp\_skipto;
#using scripts\cp\_util;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\math_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;

#namespace namespace_2afd69a;

/*
	Name: function_10dad989
	Namespace: namespace_2afd69a
	Checksum: 0xFEA59928
	Offset: 0x248
	Size: 0x17F
	Parameters: 2
	Flags: None
*/
function function_10dad989(var_cc525a1a, var_ce32be36)
{
	if(!isdefined(var_ce32be36))
	{
		var_ce32be36 = 1;
	}
	level.var_ea764859 = namespace_96fa87af::function_7387a40a("mapping_drone");
	level.var_ea764859.var_b691b9cf = "mapping_drone";
	level.var_ea764859 function_8d63f8d0(0);
	level.var_ea764859 function_422037f5();
	level.var_ea764859 function_42cddf81(20, 5, 10);
	level.var_ea764859.var_c1535232 = 1;
	if(!var_ce32be36)
	{
		level.var_ea764859 namespace_96fa87af::function_3762fc40();
		level.var_ea764859 namespace_96fa87af::function_42496438(0);
	}
	if(isdefined(var_cc525a1a))
	{
		var_3c54858a = function_243bb261(var_cc525a1a, "targetname");
		level.var_ea764859.var_722885f3 = var_3c54858a.var_722885f3;
		level.var_ea764859.var_6ab6f4fd = var_3c54858a.var_6ab6f4fd;
	}
}

/*
	Name: function_3831a720
	Namespace: namespace_2afd69a
	Checksum: 0x218D5D8C
	Offset: 0x3D0
	Size: 0x103
	Parameters: 3
	Flags: None
*/
function function_3831a720(var_cc525a1a, var_4ac85f5f, var_178571be)
{
	if(isdefined(var_4ac85f5f) && !level namespace_ad23e503::function_7922262b(var_4ac85f5f))
	{
		var_3c54858a = function_243bb261(var_cc525a1a, "targetname");
		self function_c985552d(var_3c54858a.var_722885f3, 1);
		level namespace_ad23e503::function_1ab5ebec(var_4ac85f5f);
		self function_ada64136();
	}
	if(isdefined(var_178571be))
	{
		self thread [[var_178571be]]();
	}
	self thread function_fb6d201d();
	self namespace_96fa87af::function_edb3a94e(var_cc525a1a);
}

/*
	Name: function_6a8adcf6
	Namespace: namespace_2afd69a
	Checksum: 0x9C0E144F
	Offset: 0x4E0
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_6a8adcf6(var_a6b1619d)
{
	self.var_764bad40 = var_a6b1619d;
	self function_333fd8f0(self.var_764bad40, 35, 35);
}

/*
	Name: function_2dde6e87
	Namespace: namespace_2afd69a
	Checksum: 0x162D9E4C
	Offset: 0x528
	Size: 0xD
	Parameters: 0
	Flags: None
*/
function function_2dde6e87()
{
	self.var_764bad40 = undefined;
}

/*
	Name: function_74191a2
	Namespace: namespace_2afd69a
	Checksum: 0xEAD26998
	Offset: 0x540
	Size: 0x53
	Parameters: 1
	Flags: None
*/
function function_74191a2(var_e3262ea5)
{
	if(!isdefined(var_e3262ea5))
	{
		var_e3262ea5 = 1;
	}
	if(var_e3262ea5)
	{
		self namespace_96fa87af::function_3762fc40();
	}
	else
	{
		self namespace_96fa87af::function_e103651a();
	}
}

/*
	Name: function_fb6d201d
	Namespace: namespace_2afd69a
	Checksum: 0x6A7A756C
	Offset: 0x5A0
	Size: 0x467
	Parameters: 0
	Flags: None
*/
function function_fb6d201d()
{
	self endon("hash_c4902f95");
	self endon("hash_6cf6ac7e");
	var_c119f9f1 = function_ef0a72b2(89);
	/#
		self thread function_3c36d48d();
	#/
	self.var_a6b1619d = 0;
	while(1)
	{
		if(isdefined(self.var_764bad40))
		{
			self.var_a6b1619d = self.var_764bad40;
			self function_333fd8f0(self.var_764bad40, 35, 35);
			wait(0.05);
			continue;
		}
		var_11d57f72 = 10000;
		var_1d0de873 = 9000000;
		var_60a5e1bc = 0;
		var_a8dc514 = 0;
		var_8ac2b1f9 = 0;
		foreach(var_5dc5e20a in level.var_2395e945)
		{
			if(!function_5b49d38c(var_5dc5e20a))
			{
				continue;
			}
			var_b55746b1 = var_5dc5e20a.var_722885f3[2] + 72 - self.var_722885f3[2];
			var_36b8634f = function_cb3d1c9b(var_5dc5e20a.var_722885f3, self.var_722885f3);
			if(var_b55746b1 < var_11d57f72)
			{
				var_11d57f72 = var_b55746b1;
			}
			if(var_36b8634f < var_1d0de873)
			{
				var_1d0de873 = var_36b8634f;
			}
			if(var_11d57f72 < 152 * -1)
			{
				var_a8dc514 = 1;
				continue;
			}
			if(function_69c2f683(var_b55746b1) < 96)
			{
				if(namespace_82b91a51::function_22ff7ff0(self.var_722885f3, self.var_6ab6f4fd, var_5dc5e20a.var_722885f3, var_c119f9f1))
				{
					var_60a5e1bc = 1;
				}
			}
		}
		if(!var_a8dc514 && !var_60a5e1bc && var_1d0de873 > 2250000)
		{
			var_8ac2b1f9 = 1;
		}
		if(!var_8ac2b1f9)
		{
			if(var_a8dc514)
			{
				self.var_a6b1619d = 35;
			}
			else if(var_1d0de873 <= 562500 || var_60a5e1bc)
			{
				self.var_a6b1619d = 25;
			}
			else
			{
				self.var_a6b1619d = 5;
			}
			if(level namespace_ad23e503::function_7922262b("drone_scanning"))
			{
				self namespace_96fa87af::function_422123fe();
				level namespace_ad23e503::function_9d134160("drone_scanning");
			}
		}
		else
		{
			self.var_a6b1619d = 0;
			self namespace_96fa87af::function_4bbca735();
			if(!level namespace_ad23e503::function_7922262b("drone_scanning"))
			{
				self thread function_517ced56(60, 90, 15, 50);
			}
		}
		self function_333fd8f0(self.var_a6b1619d, 35, 35);
		wait(0.05);
	}
}

/*
	Name: function_3c36d48d
	Namespace: namespace_2afd69a
	Checksum: 0xE080B7F1
	Offset: 0xA10
	Size: 0xE9
	Parameters: 0
	Flags: None
*/
function function_3c36d48d()
{
	/#
		self endon("hash_c4902f95");
		self endon("hash_6cf6ac7e");
		while(1)
		{
			wait(1);
			switch(self.var_a6b1619d)
			{
				case 35:
				{
					function_d52b076d("Dev Block strings are not supported");
					break;
				}
				case 25:
				{
					function_d52b076d("Dev Block strings are not supported");
					break;
				}
				case 5:
				{
					function_d52b076d("Dev Block strings are not supported");
					break;
				}
				case default:
				{
					function_d52b076d("Dev Block strings are not supported");
					break;
				}
			}
		}
	#/
}

/*
	Name: function_517ced56
	Namespace: namespace_2afd69a
	Checksum: 0xFE7F8847
	Offset: 0xB08
	Size: 0x203
	Parameters: 4
	Flags: None
*/
function function_517ced56(var_d3dc91f3, var_c6f8c0e6, var_6813d241, var_2e2d306e)
{
	if(!isdefined(var_d3dc91f3))
	{
		var_d3dc91f3 = 90;
	}
	if(!isdefined(var_c6f8c0e6))
	{
		var_c6f8c0e6 = 90;
	}
	if(!isdefined(var_6813d241))
	{
		var_6813d241 = 10;
	}
	if(!isdefined(var_2e2d306e))
	{
		var_2e2d306e = 30;
	}
	level namespace_ad23e503::function_74d6b22f("drone_scanning");
	var_84ced1da = function_9b7fda5e("script_origin", self.var_722885f3);
	var_84ced1da.var_6ab6f4fd = self.var_6ab6f4fd;
	self function_37f7858a(var_84ced1da);
	var_1337ab43 = self.var_6ab6f4fd;
	while(level namespace_ad23e503::function_7922262b("drone_scanning"))
	{
		var_5721da1 = (function_72a94f05(var_6813d241 * -1, var_2e2d306e), function_72a94f05(var_d3dc91f3 * -1, var_c6f8c0e6), 0);
		var_e6df4d78 = var_1337ab43 + var_5721da1;
		var_84ced1da function_c0b6566f(var_e6df4d78, 0.5, 0.2, 0.2);
		var_84ced1da waittill("hash_6654e4f4");
		wait(function_72a94f05(1, 2));
	}
	var_84ced1da function_dc8c8404();
}

/*
	Name: function_4f6daa65
	Namespace: namespace_2afd69a
	Checksum: 0xCB3FE5E2
	Offset: 0xD18
	Size: 0x1BB
	Parameters: 1
	Flags: None
*/
function function_4f6daa65(var_c1e63f13)
{
	if(!isdefined(var_c1e63f13))
	{
		var_c1e63f13 = 1;
	}
	if(var_c1e63f13)
	{
		self namespace_71e9cb84::function_74d6b22f("extra_cam_ent", 1);
		foreach(var_5dc5e20a in level.var_9b1393e7)
		{
			var_5dc5e20a.var_5b63852a = var_5dc5e20a function_2f6b6a4c("drone_pip");
		}
	}
	else
	{
		foreach(var_5dc5e20a in level.var_9b1393e7)
		{
			if(isdefined(var_5dc5e20a.var_5b63852a))
			{
				var_5dc5e20a thread function_dbc35f5e(var_5dc5e20a.var_5b63852a, 1.25);
				var_5dc5e20a.var_5b63852a = undefined;
			}
		}
		self namespace_71e9cb84::function_74d6b22f("extra_cam_ent", 0);
	}
}

/*
	Name: function_dbc35f5e
	Namespace: namespace_2afd69a
	Checksum: 0x4F0FF879
	Offset: 0xEE0
	Size: 0x5B
	Parameters: 2
	Flags: Private
*/
function private function_dbc35f5e(var_c2dc2b72, var_67520c6a)
{
	self function_3a9588ea(var_c2dc2b72, "close_current_menu", 1);
	wait(var_67520c6a);
	self function_2b74b70a(var_c2dc2b72);
}

