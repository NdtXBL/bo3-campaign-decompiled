#using scripts\codescripts\struct;
#using scripts\cp\_objectives;
#using scripts\cp\_util;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\objpoints_shared;
#using scripts\shared\system_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;

#namespace namespace_60c78d95;

/*
	Name: function_9b385ca5
	Namespace: namespace_60c78d95
	Checksum: 0x99EC1590
	Offset: 0x3B0
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_9b385ca5()
{
}

/*
	Name: function_c35e6aab
	Namespace: namespace_60c78d95
	Checksum: 0xD71AF9BB
	Offset: 0x3C0
	Size: 0x1DB
	Parameters: 3
	Flags: None
*/
function function_c35e6aab(var_7b81749, var_6497c82d, var_ab216c38)
{
	if(!isdefined(var_ab216c38))
	{
		var_ab216c38 = 0;
	}
	self.var_f67f539d = [];
	self.var_eddaae75 = [];
	self.var_1dd3bf2d = var_7b81749;
	if(var_ab216c38)
	{
		var_2d7defd1 = namespace_a230c2b1::function_27962b29();
		self.var_eddaae75 = function_84970cc4(var_2d7defd1);
		function_42bd3d1e(var_2d7defd1, "done", (0, 0, 0), function_483c3c51(var_7b81749));
	}
	else if(isdefined(var_6497c82d) && var_6497c82d.size > 0)
	{
		foreach(var_b07228b6 in var_6497c82d)
		{
			function_56036d16(var_b07228b6);
		}
	}
	else
	{
		var_2d7defd1 = namespace_a230c2b1::function_27962b29();
		self.var_eddaae75 = function_84970cc4(var_2d7defd1);
		function_42bd3d1e(var_2d7defd1, "active", (0, 0, 0), function_483c3c51(var_7b81749));
	}
}

/*
	Name: function_99cfbd30
	Namespace: namespace_60c78d95
	Checksum: 0x7B090724
	Offset: 0x5A8
	Size: 0x4B
	Parameters: 2
	Flags: None
*/
function function_99cfbd30(var_f85419ab, var_9368ba0c)
{
	var_2d7defd1 = self.var_eddaae75[0];
	function_78931f1b(var_2d7defd1, var_f85419ab, var_9368ba0c);
}

/*
	Name: function_1b8e225f
	Namespace: namespace_60c78d95
	Checksum: 0xC55BE099
	Offset: 0x600
	Size: 0x5B
	Parameters: 2
	Flags: None
*/
function function_1b8e225f(var_4bf4f2cf, var_9049b0da)
{
	function_99cfbd30("obj_x", var_4bf4f2cf);
	if(isdefined(var_9049b0da))
	{
		function_99cfbd30("obj_y", var_9049b0da);
	}
}

/*
	Name: function_56036d16
	Namespace: namespace_60c78d95
	Checksum: 0x38F22E8A
	Offset: 0x668
	Size: 0x1AB
	Parameters: 1
	Flags: None
*/
function function_56036d16(var_b07228b6)
{
	if(function_7f41c8e7(self.var_f67f539d, var_b07228b6))
	{
		return;
	}
	var_2d7defd1 = undefined;
	if(self.var_f67f539d.size < self.var_eddaae75.size)
	{
		var_2d7defd1 = self.var_eddaae75[self.var_eddaae75.size - 1];
	}
	else
	{
		var_2d7defd1 = namespace_a230c2b1::function_27962b29();
		namespace_84970cc4::function_69554b3e(self.var_eddaae75, var_2d7defd1);
	}
	if(function_4451c715(var_b07228b6) || function_fd096044(var_b07228b6))
	{
		function_42bd3d1e(var_2d7defd1, "active", var_b07228b6, function_483c3c51(self.var_1dd3bf2d));
	}
	else
	{
		function_42bd3d1e(var_2d7defd1, "active", var_b07228b6.var_722885f3, function_483c3c51(self.var_1dd3bf2d));
	}
	namespace_84970cc4::function_69554b3e(self.var_f67f539d, var_b07228b6);
	/#
		namespace_33b293fd::function_a7ee953(self.var_f67f539d.size == self.var_eddaae75.size);
	#/
}

/*
	Name: function_31cd1834
	Namespace: namespace_60c78d95
	Checksum: 0xB18F993A
	Offset: 0x820
	Size: 0x26B
	Parameters: 1
	Flags: None
*/
function function_31cd1834(var_3f17add1)
{
	if(var_3f17add1.size > 0)
	{
		foreach(var_b07228b6 in var_3f17add1)
		{
			for(var_c957f6b6 = self.var_f67f539d.size - 1; var_c957f6b6 >= 0; var_c957f6b6--)
			{
				if(self.var_f67f539d[var_c957f6b6] == var_b07228b6)
				{
					function_2524c620(self.var_eddaae75[var_c957f6b6], "done");
					function_6c668988(self.var_eddaae75, var_c957f6b6);
					function_6c668988(self.var_f67f539d, var_c957f6b6);
					break;
				}
			}
		}
		break;
	}
	foreach(var_47ca997a in self.var_eddaae75)
	{
		function_2524c620(var_47ca997a, "done");
	}
	for(var_c957f6b6 = self.var_f67f539d.size - 1; var_c957f6b6 >= 0; var_c957f6b6--)
	{
		function_6c668988(self.var_eddaae75, var_c957f6b6);
		function_6c668988(self.var_f67f539d, var_c957f6b6);
	}
	if(self.var_eddaae75.size == 0)
	{
		function_81403b2f(level.var_daee5141, self, 1);
	}
}

/*
	Name: function_50ccee8d
	Namespace: namespace_60c78d95
	Checksum: 0x8B597FFD
	Offset: 0xA98
	Size: 0x161
	Parameters: 1
	Flags: None
*/
function function_50ccee8d(var_6bfe1586)
{
	if(isdefined(var_6bfe1586))
	{
		/#
			namespace_33b293fd::function_a7ee953(function_65f192a6(var_6bfe1586), "Dev Block strings are not supported");
		#/
		foreach(var_4458affc in self.var_eddaae75)
		{
			function_e09b765c(var_4458affc, var_6bfe1586);
		}
		break;
	}
	foreach(var_4458affc in self.var_eddaae75)
	{
		function_daebb750(var_4458affc);
	}
}

/*
	Name: function_48f26766
	Namespace: namespace_60c78d95
	Checksum: 0x395B10E7
	Offset: 0xC08
	Size: 0x161
	Parameters: 1
	Flags: None
*/
function function_48f26766(var_6bfe1586)
{
	if(isdefined(var_6bfe1586))
	{
		/#
			namespace_33b293fd::function_a7ee953(function_65f192a6(var_6bfe1586), "Dev Block strings are not supported");
		#/
		foreach(var_4458affc in self.var_eddaae75)
		{
			function_fe955f9f(var_4458affc, var_6bfe1586);
		}
		break;
	}
	foreach(var_4458affc in self.var_eddaae75)
	{
		function_18b56cf9(var_4458affc);
	}
}

/*
	Name: function_66c6f97b
	Namespace: namespace_60c78d95
	Checksum: 0xEA5D996C
	Offset: 0xD78
	Size: 0xCB
	Parameters: 1
	Flags: None
*/
function function_66c6f97b(var_377a9c22)
{
	foreach(var_4458affc in self.var_eddaae75)
	{
		var_a3d46ee4 = self.var_f67f539d[var_c957f6b6];
		if(isdefined(var_a3d46ee4) && var_a3d46ee4 == var_377a9c22)
		{
			function_2524c620(var_4458affc, "invisible");
			return;
		}
	}
}

/*
	Name: function_c0eaea6e
	Namespace: namespace_60c78d95
	Checksum: 0xF39D87D3
	Offset: 0xE50
	Size: 0xCB
	Parameters: 1
	Flags: None
*/
function function_c0eaea6e(var_377a9c22)
{
	foreach(var_4458affc in self.var_eddaae75)
	{
		var_a3d46ee4 = self.var_f67f539d[var_c957f6b6];
		if(isdefined(var_a3d46ee4) && var_a3d46ee4 == var_377a9c22)
		{
			function_2524c620(var_4458affc, "active");
			return;
		}
	}
}

/*
	Name: function_e95d8ccb
	Namespace: namespace_60c78d95
	Checksum: 0xA755AAC
	Offset: 0xF28
	Size: 0xB9
	Parameters: 1
	Flags: None
*/
function function_e95d8ccb(var_377a9c22)
{
	foreach(var_4458affc in self.var_eddaae75)
	{
		var_a3d46ee4 = self.var_f67f539d[var_c957f6b6];
		if(isdefined(var_a3d46ee4) && var_a3d46ee4 == var_377a9c22)
		{
			return var_4458affc;
		}
	}
	return -1;
}

/*
	Name: function_9fe364f
	Namespace: namespace_60c78d95
	Checksum: 0xE72E69A1
	Offset: 0xFF0
	Size: 0x5
	Parameters: 0
	Flags: None
*/
function function_9fe364f()
{
	return 0;
}

/*
	Name: function_5fba2032
	Namespace: namespace_60c78d95
	Checksum: 0x99EC1590
	Offset: 0x1000
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_5fba2032()
{
}

#namespace namespace_d0ef8521;

/*
	Name: function_60c78d95
	Namespace: namespace_d0ef8521
	Checksum: 0x415A5E31
	Offset: 0x1010
	Size: 0x295
	Parameters: 0
	Flags: 6
*/
function private autoexec function_60c78d95()
{
	classes.var_60c78d95[0] = function_a8fb77bd();
	classes.var_60c78d95[0].var_b684a6d1[1606033458] = &namespace_60c78d95::function_5fba2032;
	classes.var_60c78d95[0].var_b684a6d1[167654991] = &namespace_60c78d95::function_9fe364f;
	classes.var_60c78d95[0].var_b684a6d1[-379745077] = &namespace_60c78d95::function_e95d8ccb;
	classes.var_60c78d95[0].var_b684a6d1[-1058346386] = &namespace_60c78d95::function_c0eaea6e;
	classes.var_60c78d95[0].var_b684a6d1[1724316027] = &namespace_60c78d95::function_66c6f97b;
	classes.var_60c78d95[0].var_b684a6d1[1223845734] = &namespace_60c78d95::function_48f26766;
	classes.var_60c78d95[0].var_b684a6d1[1355607693] = &namespace_60c78d95::function_50ccee8d;
	classes.var_60c78d95[0].var_b684a6d1[835524660] = &namespace_60c78d95::function_31cd1834;
	classes.var_60c78d95[0].var_b684a6d1[1443065110] = &namespace_60c78d95::function_56036d16;
	classes.var_60c78d95[0].var_b684a6d1[462299743] = &namespace_60c78d95::function_1b8e225f;
	classes.var_60c78d95[0].var_b684a6d1[-1714438864] = &namespace_60c78d95::function_99cfbd30;
	classes.var_60c78d95[0].var_b684a6d1[-1017222485] = &namespace_60c78d95::function_c35e6aab;
	classes.var_60c78d95[0].var_b684a6d1[-1690805083] = &namespace_60c78d95::function_9b385ca5;
}

#namespace namespace_1d3048b8;

/*
	Name: function_9b385ca5
	Namespace: namespace_1d3048b8
	Checksum: 0xD613FFF
	Offset: 0x12B0
	Size: 0x13
	Parameters: 0
	Flags: None
*/
function function_9b385ca5()
{
	namespace_60c78d95::function_9b385ca5();
}

/*
	Name: function_c35e6aab
	Namespace: namespace_1d3048b8
	Checksum: 0xC2FABE03
	Offset: 0x12D0
	Size: 0x17B
	Parameters: 3
	Flags: None
*/
function function_c35e6aab(var_7b81749, var_6497c82d, var_ab216c38)
{
	if(!isdefined(var_ab216c38))
	{
		var_ab216c38 = 0;
	}
	namespace_60c78d95::function_c35e6aab(var_7b81749, var_6497c82d, var_ab216c38);
	self.var_d76d218f = "";
	self.var_f801dde5 = var_ab216c38;
	self.var_3a9aa809 = [];
	for(var_c957f6b6 = 0; var_c957f6b6 < 4; var_c957f6b6++)
	{
		var_4458affc = namespace_a230c2b1::function_27962b29();
		self.var_3a9aa809[var_c957f6b6] = var_4458affc;
		if(self.var_f801dde5)
		{
			function_42bd3d1e(var_4458affc, "done", (0, 0, 0), function_483c3c51(self.var_1dd3bf2d));
			continue;
		}
		function_42bd3d1e(var_4458affc, "empty", (0, 0, 0), function_483c3c51(self.var_1dd3bf2d));
	}
	var_4458affc = self.var_eddaae75[0];
	function_daebb750(var_4458affc);
}

/*
	Name: function_31cd1834
	Namespace: namespace_1d3048b8
	Checksum: 0xED9E6446
	Offset: 0x1458
	Size: 0x123
	Parameters: 1
	Flags: None
*/
function function_31cd1834(var_3f17add1)
{
	level notify("breadcrumb_" + self.var_1dd3bf2d + "_complete");
	for(var_c957f6b6 = 0; var_c957f6b6 < 4; var_c957f6b6++)
	{
		var_4458affc = self.var_3a9aa809[var_c957f6b6];
		function_2524c620(var_4458affc, "done");
	}
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a.var_924bb3b8 = undefined;
	}
	namespace_60c78d95::function_31cd1834(var_3f17add1);
}

/*
	Name: function_50ccee8d
	Namespace: namespace_1d3048b8
	Checksum: 0x811D1AB3
	Offset: 0x1588
	Size: 0xFD
	Parameters: 1
	Flags: None
*/
function function_50ccee8d(var_6bfe1586)
{
	if(isdefined(var_6bfe1586))
	{
		/#
			namespace_33b293fd::function_a7ee953(function_65f192a6(var_6bfe1586), "Dev Block strings are not supported");
		#/
		var_270018c4 = var_6bfe1586 function_c7f3ce11();
		var_4458affc = self.var_3a9aa809[var_270018c4];
		function_e09b765c(var_4458affc, var_6bfe1586);
		break;
	}
	for(var_c957f6b6 = 0; var_c957f6b6 < 4; var_c957f6b6++)
	{
		var_4458affc = self.var_3a9aa809[var_c957f6b6];
		function_29483715(var_4458affc, var_c957f6b6);
	}
}

/*
	Name: function_48f26766
	Namespace: namespace_1d3048b8
	Checksum: 0x30F9045
	Offset: 0x1690
	Size: 0xFD
	Parameters: 1
	Flags: None
*/
function function_48f26766(var_6bfe1586)
{
	if(isdefined(var_6bfe1586))
	{
		/#
			namespace_33b293fd::function_a7ee953(function_65f192a6(var_6bfe1586), "Dev Block strings are not supported");
		#/
		var_270018c4 = var_6bfe1586 function_c7f3ce11();
		var_4458affc = self.var_3a9aa809[var_270018c4];
		function_fe955f9f(var_4458affc, var_6bfe1586);
		break;
	}
	for(var_c957f6b6 = 0; var_c957f6b6 < 4; var_c957f6b6++)
	{
		var_4458affc = self.var_3a9aa809[var_c957f6b6];
		function_1523cdf0(var_4458affc, var_c957f6b6);
	}
}

/*
	Name: function_34fb19f
	Namespace: namespace_1d3048b8
	Checksum: 0x33D25588
	Offset: 0x1798
	Size: 0xA9
	Parameters: 1
	Flags: None
*/
function function_34fb19f(var_b93b5b10)
{
	self.var_d76d218f = var_b93b5b10;
	self.var_f801dde5 = 0;
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		function_5c0f636a(var_5dc5e20a);
	}
}

/*
	Name: function_5c0f636a
	Namespace: namespace_1d3048b8
	Checksum: 0x7D679BC9
	Offset: 0x1850
	Size: 0xB3
	Parameters: 1
	Flags: None
*/
function function_5c0f636a(var_5dc5e20a)
{
	var_270018c4 = var_5dc5e20a function_c7f3ce11();
	var_4458affc = self.var_3a9aa809[var_270018c4];
	function_daebb750(var_4458affc);
	function_fe955f9f(var_4458affc, var_5dc5e20a);
	function_2524c620(var_4458affc, "active");
	thread function_1c66b4d2(var_5dc5e20a);
}

/*
	Name: function_e3023aa1
	Namespace: namespace_1d3048b8
	Checksum: 0xDF5C259E
	Offset: 0x1910
	Size: 0x133
	Parameters: 2
	Flags: Private
*/
function private function_e3023aa1(var_5dc5e20a, var_b07228b6)
{
	var_270018c4 = var_5dc5e20a function_c7f3ce11();
	var_4458affc = self.var_3a9aa809[var_270018c4];
	var_a5b46d2f = 72;
	var_c55dcd82 = var_b07228b6;
	if(!function_4451c715(var_b07228b6))
	{
		var_c55dcd82 = var_b07228b6.var_722885f3;
		if(isdefined(var_b07228b6.var_a8675c26))
		{
			var_a5b46d2f = var_b07228b6.var_a8675c26;
		}
	}
	var_c55dcd82 = namespace_82b91a51::function_c9641d86(var_c55dcd82, 300, var_a5b46d2f);
	var_5dc5e20a.var_924bb3b8 = var_c55dcd82;
	function_e8ff844(var_4458affc, var_c55dcd82);
	function_2524c620(var_4458affc, "active");
}

/*
	Name: function_1c66b4d2
	Namespace: namespace_1d3048b8
	Checksum: 0xFF77E1AB
	Offset: 0x1A50
	Size: 0x2DB
	Parameters: 1
	Flags: None
*/
function function_1c66b4d2(var_5dc5e20a)
{
	level endon("breadcrumb_" + self.var_1dd3bf2d);
	level endon("breadcrumb_" + self.var_1dd3bf2d + "_complete");
	var_5dc5e20a endon("hash_128f8789");
	var_b93b5b10 = self.var_d76d218f;
	var_270018c4 = var_5dc5e20a function_c7f3ce11();
	var_4458affc = self.var_3a9aa809[var_270018c4];
	function_fe955f9f(var_4458affc, var_5dc5e20a);
	do
	{
		var_fe6eb061 = function_6ada35ba(var_b93b5b10, "targetname");
		if(isdefined(var_fe6eb061))
		{
			if(isdefined(var_fe6eb061.var_b07228b6))
			{
				if(isdefined(var_fe6eb061.var_f8fd6930))
				{
					function_e09b765c(var_4458affc, var_5dc5e20a);
					level namespace_ad23e503::function_1ab5ebec(var_fe6eb061.var_f8fd6930);
					function_fe955f9f(var_4458affc, var_5dc5e20a);
				}
				var_6a197e6a = namespace_14b42b8a::function_7922262b(var_fe6eb061.var_b07228b6, "targetname");
				if(isdefined(var_6a197e6a))
				{
					function_e3023aa1(var_5dc5e20a, var_6a197e6a);
				}
				else
				{
					function_e3023aa1(var_5dc5e20a, var_fe6eb061);
				}
			}
			else
			{
				function_e3023aa1(var_5dc5e20a, var_fe6eb061);
			}
			var_b93b5b10 = var_fe6eb061.var_b07228b6;
			var_fe6eb061 namespace_4dbf3ae3::function_1ab5ebec(undefined, undefined, var_5dc5e20a);
		}
		else
		{
			var_b93b5b10 = undefined;
		}
	}
	while(!isdefined(var_b93b5b10));
	function_e09b765c(var_4458affc, var_5dc5e20a);
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a.var_924bb3b8 = undefined;
	}
	self.var_f801dde5 = 1;
}

/*
	Name: function_9fe364f
	Namespace: namespace_1d3048b8
	Checksum: 0x3FE0C49D
	Offset: 0x1D38
	Size: 0x7
	Parameters: 0
	Flags: None
*/
function function_9fe364f()
{
	return 1;
}

/*
	Name: function_a130b2ac
	Namespace: namespace_1d3048b8
	Checksum: 0xEF999E9C
	Offset: 0x1D48
	Size: 0x9
	Parameters: 0
	Flags: None
*/
function function_a130b2ac()
{
	return self.var_f801dde5;
}

/*
	Name: function_5fba2032
	Namespace: namespace_1d3048b8
	Checksum: 0x76F0669B
	Offset: 0x1D60
	Size: 0x13
	Parameters: 0
	Flags: None
*/
function function_5fba2032()
{
	namespace_60c78d95::function_5fba2032();
}

#namespace namespace_d0ef8521;

/*
	Name: function_1d3048b8
	Namespace: namespace_d0ef8521
	Checksum: 0x3055588A
	Offset: 0x1D80
	Size: 0x4D5
	Parameters: 0
	Flags: 6
*/
function private autoexec function_1d3048b8()
{
	classes.var_1d3048b8[0] = function_a8fb77bd();
	classes.var_1d3048b8[0].var_b684a6d1[1606033458] = &namespace_60c78d95::function_5fba2032;
	classes.var_1d3048b8[0].var_b684a6d1[167654991] = &namespace_60c78d95::function_9fe364f;
	classes.var_1d3048b8[0].var_b684a6d1[-379745077] = &namespace_60c78d95::function_e95d8ccb;
	classes.var_1d3048b8[0].var_b684a6d1[-1058346386] = &namespace_60c78d95::function_c0eaea6e;
	classes.var_1d3048b8[0].var_b684a6d1[1724316027] = &namespace_60c78d95::function_66c6f97b;
	classes.var_1d3048b8[0].var_b684a6d1[1223845734] = &namespace_60c78d95::function_48f26766;
	classes.var_1d3048b8[0].var_b684a6d1[1355607693] = &namespace_60c78d95::function_50ccee8d;
	classes.var_1d3048b8[0].var_b684a6d1[835524660] = &namespace_60c78d95::function_31cd1834;
	classes.var_1d3048b8[0].var_b684a6d1[1443065110] = &namespace_60c78d95::function_56036d16;
	classes.var_1d3048b8[0].var_b684a6d1[462299743] = &namespace_60c78d95::function_1b8e225f;
	classes.var_1d3048b8[0].var_b684a6d1[-1714438864] = &namespace_60c78d95::function_99cfbd30;
	classes.var_1d3048b8[0].var_b684a6d1[-1017222485] = &namespace_60c78d95::function_c35e6aab;
	classes.var_1d3048b8[0].var_b684a6d1[-1690805083] = &namespace_60c78d95::function_9b385ca5;
	classes.var_1d3048b8[0].var_b684a6d1[1606033458] = &namespace_1d3048b8::function_5fba2032;
	classes.var_1d3048b8[0].var_b684a6d1[-1590644052] = &namespace_1d3048b8::function_a130b2ac;
	classes.var_1d3048b8[0].var_b684a6d1[167654991] = &namespace_1d3048b8::function_9fe364f;
	classes.var_1d3048b8[0].var_b684a6d1[476493010] = &namespace_1d3048b8::function_1c66b4d2;
	classes.var_1d3048b8[0].var_b684a6d1[-486393183] = &namespace_1d3048b8::function_e3023aa1;
	classes.var_1d3048b8[0].var_b684a6d1[1544512362] = &namespace_1d3048b8::function_5c0f636a;
	classes.var_1d3048b8[0].var_b684a6d1[55554463] = &namespace_1d3048b8::function_34fb19f;
	classes.var_1d3048b8[0].var_b684a6d1[1223845734] = &namespace_1d3048b8::function_48f26766;
	classes.var_1d3048b8[0].var_b684a6d1[1355607693] = &namespace_1d3048b8::function_50ccee8d;
	classes.var_1d3048b8[0].var_b684a6d1[835524660] = &namespace_1d3048b8::function_31cd1834;
	classes.var_1d3048b8[0].var_b684a6d1[-1017222485] = &namespace_1d3048b8::function_c35e6aab;
	classes.var_1d3048b8[0].var_b684a6d1[-1690805083] = &namespace_1d3048b8::function_9b385ca5;
}

/*
	Name: function_2dc19561
	Namespace: namespace_d0ef8521
	Checksum: 0xB5C7AB63
	Offset: 0x2260
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("objectives", &function_8c87d8eb, undefined, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_d0ef8521
	Checksum: 0xFFB95EB8
	Offset: 0x22A0
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	level.var_daee5141 = [];
	level.var_f07569b2 = 0;
	namespace_dabbe128::function_356a4ee1(&function_aebcf025);
}

/*
	Name: function_74d6b22f
	Namespace: namespace_d0ef8521
	Checksum: 0xE5311779
	Offset: 0x22E8
	Size: 0x1C1
	Parameters: 3
	Flags: None
*/
function function_74d6b22f(var_c0adf81f, var_3f17add1, var_464fc58b)
{
	if(!isdefined(level.var_daee5141))
	{
		level.var_daee5141 = [];
	}
	if(!isdefined(var_464fc58b))
	{
		var_464fc58b = 0;
	}
	if(!isdefined(var_3f17add1))
	{
		var_3f17add1 = [];
	}
	else if(!function_6e2770d8(var_3f17add1))
	{
		var_3f17add1 = function_84970cc4(var_3f17add1);
	}
	var_14191e40 = undefined;
	if(isdefined(level.var_daee5141[var_c0adf81f]))
	{
		var_14191e40 = level.var_daee5141[var_c0adf81f];
		if(isdefined(var_3f17add1))
		{
			foreach(var_b07228b6 in var_3f17add1)
			{
				function_56036d16(var_14191e40);
			}
		}
	}
	else if(var_464fc58b)
	{
		function_9b385ca5();
		var_14191e40 = var_1d3048b8;
	}
	else
	{
		function_9b385ca5();
		var_14191e40 = var_60c78d95;
	}
	function_c35e6aab(var_14191e40, var_c0adf81f);
	level.var_daee5141[var_c0adf81f] = var_14191e40;
	return var_14191e40;
}

/*
	Name: function_31cd1834
	Namespace: namespace_d0ef8521
	Checksum: 0x73B7B942
	Offset: 0x24B8
	Size: 0x115
	Parameters: 2
	Flags: None
*/
function function_31cd1834(var_c0adf81f, var_3f17add1)
{
	if(!isdefined(var_3f17add1))
	{
		var_3f17add1 = [];
	}
	else if(!function_6e2770d8(var_3f17add1))
	{
		var_3f17add1 = function_84970cc4(var_3f17add1);
	}
	if(isdefined(level.var_daee5141[var_c0adf81f]))
	{
		var_14191e40 = level.var_daee5141[var_c0adf81f];
		function_31cd1834(var_14191e40);
	}
	else if(var_c0adf81f == "cp_waypoint_breadcrumb")
	{
		function_9b385ca5();
		var_14191e40 = var_1d3048b8;
	}
	else
	{
		function_9b385ca5();
		var_14191e40 = var_60c78d95;
	}
	function_c35e6aab(var_14191e40, var_c0adf81f, undefined);
	level.var_daee5141[var_c0adf81f] = var_14191e40;
}

/*
	Name: function_a5d62963
	Namespace: namespace_d0ef8521
	Checksum: 0x9EBB1B12
	Offset: 0x25D8
	Size: 0x9F
	Parameters: 2
	Flags: None
*/
function function_a5d62963(var_15231088, var_d3f6be49)
{
	if(!isdefined(var_d3f6be49))
	{
		var_d3f6be49 = [];
	}
	else if(!function_6e2770d8(var_d3f6be49))
	{
		var_d3f6be49 = function_84970cc4(var_d3f6be49);
	}
	var_c28c93f6 = function_74d6b22f(var_15231088, var_d3f6be49);
	function_1b8e225f(var_c28c93f6, 0);
}

/*
	Name: function_1b8e225f
	Namespace: namespace_d0ef8521
	Checksum: 0x3B343737
	Offset: 0x2680
	Size: 0x57
	Parameters: 3
	Flags: None
*/
function function_1b8e225f(var_15231088, var_4bf4f2cf, var_9049b0da)
{
	var_c28c93f6 = level.var_daee5141[var_15231088];
	if(isdefined(var_c28c93f6))
	{
		function_1b8e225f(var_c28c93f6, var_4bf4f2cf);
	}
}

/*
	Name: function_3703618d
	Namespace: namespace_d0ef8521
	Checksum: 0x3D66A80E
	Offset: 0x26E0
	Size: 0x57
	Parameters: 3
	Flags: None
*/
function function_3703618d(var_15231088, var_f85419ab, var_9368ba0c)
{
	var_c28c93f6 = level.var_daee5141[var_15231088];
	if(isdefined(var_c28c93f6))
	{
		function_99cfbd30(var_c28c93f6, var_f85419ab);
	}
}

/*
	Name: function_45d1556
	Namespace: namespace_d0ef8521
	Checksum: 0xAB32E7AF
	Offset: 0x2740
	Size: 0x113
	Parameters: 3
	Flags: None
*/
function function_45d1556(var_b93b5b10, var_15231088, var_684f50be)
{
	if(!isdefined(var_15231088))
	{
		var_15231088 = "cp_waypoint_breadcrumb";
	}
	if(!isdefined(var_684f50be))
	{
		var_684f50be = 1;
	}
	level notify("breadcrumb_" + var_15231088);
	level endon("breadcrumb_" + var_15231088);
	if(isdefined(level.var_daee5141[var_15231088]))
	{
		function_31cd1834(var_15231088);
	}
	var_14191e40 = function_74d6b22f(var_15231088, undefined, 1);
	function_34fb19f(var_14191e40);
	while(!function_a130b2ac())
	{
		wait(0.05);
	}
	if(var_684f50be)
	{
		function_31cd1834(var_15231088);
	}
}

/*
	Name: function_50ccee8d
	Namespace: namespace_d0ef8521
	Checksum: 0x725DDD3B
	Offset: 0x2860
	Size: 0x7B
	Parameters: 2
	Flags: None
*/
function function_50ccee8d(var_c0adf81f, var_6bfe1586)
{
	if(isdefined(level.var_daee5141[var_c0adf81f]))
	{
		var_14191e40 = level.var_daee5141[var_c0adf81f];
		function_50ccee8d(var_14191e40);
	}
	else
	{
		namespace_33b293fd::function_a7ee953(0, "Dev Block strings are not supported");
	}
	/#
	#/
}

/*
	Name: function_66c6f97b
	Namespace: namespace_d0ef8521
	Checksum: 0xA326BCFC
	Offset: 0x28E8
	Size: 0x7B
	Parameters: 2
	Flags: None
*/
function function_66c6f97b(var_c0adf81f, var_377a9c22)
{
	if(isdefined(level.var_daee5141[var_c0adf81f]))
	{
		var_14191e40 = level.var_daee5141[var_c0adf81f];
		function_66c6f97b(var_14191e40);
	}
	else
	{
		namespace_33b293fd::function_a7ee953(0, "Dev Block strings are not supported");
	}
	/#
	#/
}

/*
	Name: function_48f26766
	Namespace: namespace_d0ef8521
	Checksum: 0xE9C9CE84
	Offset: 0x2970
	Size: 0x7B
	Parameters: 2
	Flags: None
*/
function function_48f26766(var_c0adf81f, var_6bfe1586)
{
	if(isdefined(level.var_daee5141[var_c0adf81f]))
	{
		var_14191e40 = level.var_daee5141[var_c0adf81f];
		function_48f26766(var_14191e40);
	}
	else
	{
		namespace_33b293fd::function_a7ee953(0, "Dev Block strings are not supported");
	}
	/#
	#/
}

/*
	Name: function_c0eaea6e
	Namespace: namespace_d0ef8521
	Checksum: 0xB48BD41
	Offset: 0x29F8
	Size: 0x7B
	Parameters: 2
	Flags: None
*/
function function_c0eaea6e(var_c0adf81f, var_377a9c22)
{
	if(isdefined(level.var_daee5141[var_c0adf81f]))
	{
		var_14191e40 = level.var_daee5141[var_c0adf81f];
		function_c0eaea6e(var_14191e40);
	}
	else
	{
		namespace_33b293fd::function_a7ee953(0, "Dev Block strings are not supported");
	}
	/#
	#/
}

/*
	Name: function_e95d8ccb
	Namespace: namespace_d0ef8521
	Checksum: 0xF1481587
	Offset: 0x2A80
	Size: 0x9F
	Parameters: 2
	Flags: None
*/
function function_e95d8ccb(var_c0adf81f, var_377a9c22)
{
	var_3d29746 = -1;
	if(isdefined(level.var_daee5141[var_c0adf81f]))
	{
		var_14191e40 = level.var_daee5141[var_c0adf81f];
		var_3d29746 = function_e95d8ccb(var_14191e40);
	}
	if(var_3d29746 < 0)
	{
		/#
			namespace_33b293fd::function_a7ee953(0, "Dev Block strings are not supported");
		#/
	}
	return var_3d29746;
}

/*
	Name: function_43241b6f
	Namespace: namespace_d0ef8521
	Checksum: 0x8FE357EB
	Offset: 0x2B28
	Size: 0xA1
	Parameters: 1
	Flags: None
*/
function function_43241b6f(var_b555fce7)
{
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		namespace_82b91a51::function_964b7eb7(var_5dc5e20a, function_483c3c51(var_b555fce7));
	}
}

/*
	Name: function_fe46cd6
	Namespace: namespace_d0ef8521
	Checksum: 0x55C2D488
	Offset: 0x2BD8
	Size: 0x1D7
	Parameters: 4
	Flags: None
*/
function function_fe46cd6(var_c0adf81f, var_95acca4a, var_c55dcd82, var_27c4935)
{
	if(!isdefined(var_27c4935))
	{
		var_27c4935 = (0, 0, 0);
	}
	switch(var_c0adf81f)
	{
		case "target":
		{
			var_5cbd0572 = "waypoint_targetneutral";
			break;
		}
		case "capture":
		{
			var_5cbd0572 = "waypoint_capture";
			break;
		}
		case "capture_a":
		{
			var_5cbd0572 = "waypoint_capture_a";
			break;
		}
		case "capture_b":
		{
			var_5cbd0572 = "waypoint_capture_b";
			break;
		}
		case "capture_c":
		{
			var_5cbd0572 = "waypoint_capture_c";
			break;
		}
		case "defend":
		{
			var_5cbd0572 = "waypoint_defend";
			break;
		}
		case "defend_a":
		{
			var_5cbd0572 = "waypoint_defend_a";
			break;
		}
		case "defend_b":
		{
			var_5cbd0572 = "waypoint_defend_b";
			break;
		}
		case "defend_c":
		{
			var_5cbd0572 = "waypoint_defend_c";
			break;
		}
		case "return":
		{
			var_5cbd0572 = "waypoint_return";
			break;
		}
		case default:
		{
			/#
				namespace_33b293fd::function_94739542("Dev Block strings are not supported" + var_c0adf81f + "Dev Block strings are not supported");
			#/
			break;
		}
	}
	var_95ea7549 = namespace_46413591::function_f7f12a75(var_95acca4a, var_c55dcd82 + var_27c4935, "all", var_5cbd0572);
	var_95ea7549 function_26b3bd1e(1, var_5cbd0572);
	return var_95ea7549;
}

/*
	Name: function_ac28ba8e
	Namespace: namespace_d0ef8521
	Checksum: 0xFD79D6B6
	Offset: 0x2DB8
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_ac28ba8e()
{
	namespace_46413591::function_dc8c8404(self);
}

/*
	Name: function_aebcf025
	Namespace: namespace_d0ef8521
	Checksum: 0x76E69D94
	Offset: 0x2DE0
	Size: 0xBD
	Parameters: 0
	Flags: Private
*/
function private function_aebcf025()
{
	if(isdefined(level.var_daee5141))
	{
		foreach(var_14191e40 in level.var_daee5141)
		{
			if(function_9fe364f() && !function_a130b2ac())
			{
				function_5c0f636a(var_14191e40);
			}
		}
	}
}

