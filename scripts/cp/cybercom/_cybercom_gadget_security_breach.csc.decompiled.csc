#using scripts\codescripts\struct;
#using scripts\cp\_oed;
#using scripts\shared\audio_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\filter_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\math_shared;
#using scripts\shared\postfx_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;
#using scripts\shared\visionset_mgr_shared;

#namespace namespace_acd01c5c;

/*
	Name: function_c35e6aab
	Namespace: namespace_acd01c5c
	Checksum: 0x63FC07CC
	Offset: 0x420
	Size: 0x3F
	Parameters: 0
	Flags: None
*/
function function_c35e6aab()
{
	function_2ea898a8();
	namespace_dabbe128::function_356a4ee1(&function_aebcf025);
	level.var_19eb3de5 = [];
}

/*
	Name: function_2ea898a8
	Namespace: namespace_acd01c5c
	Checksum: 0xB660D2BA
	Offset: 0x468
	Size: 0x24B
	Parameters: 0
	Flags: None
*/
function function_2ea898a8()
{
	namespace_71e9cb84::function_50f16166("toplayer", "hijack_vehicle_transition", 1, 2, "int", &function_214501b2, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "hijack_static_effect", 1, 7, "float", &function_25525279, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "sndInDrivableVehicle", 1, 1, "int", &function_4755b60c, 0, 0);
	namespace_71e9cb84::function_50f16166("vehicle", "vehicle_hijacked", 1, 1, "int", &function_9eb354f0, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "vehicle_hijacked", 1, 1, "int", &function_8ac3077f, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "hijack_spectate", 1, 1, "int", &function_5684f6e8, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "hijack_static_ramp_up", 1, 1, "int", &function_8e1516cf, 0, 0);
	namespace_e216c11c::function_336b3c36("hijack_vehicle", 1, 7, undefined, "vehicle_transition");
	namespace_e216c11c::function_336b3c36("hijack_vehicle_blur", 1, 7, undefined, "vehicle_hijack_blur");
}

/*
	Name: function_aebcf025
	Namespace: namespace_acd01c5c
	Checksum: 0x8632C858
	Offset: 0x6C0
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_aebcf025(var_ec74b091)
{
	var_5dc5e20a = function_79c174a3(var_ec74b091);
	if(var_5dc5e20a function_c7f3ce11() == self function_c7f3ce11())
	{
		namespace_3d5de9eb::function_179634e1(self);
	}
}

/*
	Name: function_5b9803d4
	Namespace: namespace_acd01c5c
	Checksum: 0x5D916AB1
	Offset: 0x738
	Size: 0x18B
	Parameters: 2
	Flags: None
*/
function function_5b9803d4(var_ec74b091, var_dd3d9543)
{
	var_5dc5e20a = function_79c174a3(var_ec74b091);
	if(!isdefined(var_5dc5e20a))
	{
		return;
	}
	if(!var_5dc5e20a function_65f192a6())
	{
		return;
	}
	if(!function_5b49d38c(var_5dc5e20a))
	{
		return;
	}
	if(isdefined(var_5dc5e20a.var_e0beb6ee))
	{
		if(var_5dc5e20a.var_e0beb6ee == "spectator")
		{
			return;
		}
		if(var_5dc5e20a.var_e0beb6ee == "intermission")
		{
			return;
		}
	}
	if(isdefined(var_5dc5e20a.var_fbad6cb4))
	{
		var_5dc5e20a function_9df5cf69(var_5dc5e20a.var_fbad6cb4);
	}
	var_37831ac3 = var_5dc5e20a function_2bfe6300();
	if(isdefined(var_5dc5e20a.var_f28a7256))
	{
		var_37831ac3 = var_5dc5e20a.var_f28a7256;
	}
	if(isdefined(var_37831ac3))
	{
		var_37831ac3 = (var_37831ac3[0], var_37831ac3[1], 0);
		var_5dc5e20a function_e3592cf2(var_37831ac3);
	}
}

/*
	Name: function_8e1516cf
	Namespace: namespace_acd01c5c
	Checksum: 0xB623BAFE
	Offset: 0x8D0
	Size: 0x19D
	Parameters: 7
	Flags: None
*/
function function_8e1516cf(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		if(isdefined(self.var_c86abfbb))
		{
		}
		else
		{
		}
		var_9667361 = 0;
		if(!(isdefined(self.var_8bb3e1f5) && self.var_8bb3e1f5))
		{
			namespace_3d5de9eb::function_1a848c42(self, 0);
			self.var_8bb3e1f5 = 1;
		}
		var_2973f62a = GetTime();
		var_69d6d7a1 = var_2973f62a + 3000;
		var_e48333a4 = var_2973f62a;
		function_921a1574(var_ec74b091, "gdt_securitybreach_static_oneshot", (0, 0, 0));
		while(var_e48333a4 < var_69d6d7a1)
		{
			var_e48333a4 = GetTime();
			var_303b5d2b = namespace_d73b9283::function_e4ef4645(var_e48333a4, var_2973f62a, var_69d6d7a1, var_9667361, 1);
			namespace_3d5de9eb::function_54a416dc(self, 0, var_303b5d2b);
			wait(0.01);
		}
	}
	else
	{
		namespace_3d5de9eb::function_231250b9(self, 0);
		self.var_8bb3e1f5 = undefined;
	}
}

/*
	Name: function_5684f6e8
	Namespace: namespace_acd01c5c
	Checksum: 0x11321535
	Offset: 0xA78
	Size: 0x9D
	Parameters: 7
	Flags: None
*/
function function_5684f6e8(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	self notify("hash_ccf4fc20");
	if(var_9193c732)
	{
		self function_32542b56(&function_5b9803d4);
	}
	else
	{
		self function_32542b56();
		self.var_fbad6cb4 = undefined;
		self.var_f28a7256 = undefined;
	}
}

/*
	Name: function_49ec9e85
	Namespace: namespace_acd01c5c
	Checksum: 0xD54C9E55
	Offset: 0xB20
	Size: 0xA7
	Parameters: 1
	Flags: None
*/
function function_49ec9e85(var_96fa87af)
{
	self endon("hash_ccf4fc20");
	self endon("hash_643a7daf");
	self endon("hash_9b7fda5e");
	self endon("hash_d5da096");
	var_96fa87af endon("hash_d5da096");
	while(function_5b49d38c(var_96fa87af))
	{
		self.var_fbad6cb4 = self function_d22b2a4e();
		self.var_f28a7256 = self function_2bfe6300();
		wait(0.01);
	}
}

/*
	Name: function_8ac3077f
	Namespace: namespace_acd01c5c
	Checksum: 0x4B3B418E
	Offset: 0xBD0
	Size: 0xBB
	Parameters: 7
	Flags: None
*/
function function_8ac3077f(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		self function_471a18c7(0);
		self namespace_16f9ecd3::function_3b4d6db0(var_ec74b091);
	}
	else if(isdefined(self.var_8b70667f) && self.var_8b70667f)
	{
		self function_471a18c7(1);
		self namespace_16f9ecd3::function_165838aa(var_ec74b091);
	}
}

/*
	Name: function_9eb354f0
	Namespace: namespace_acd01c5c
	Checksum: 0x2D1ABCD6
	Offset: 0xC98
	Size: 0x93
	Parameters: 7
	Flags: None
*/
function function_9eb354f0(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(self function_84f89a39(var_ec74b091))
	{
		var_5dc5e20a = function_79c174a3(var_ec74b091);
		var_5dc5e20a thread function_49ec9e85(self);
	}
}

/*
	Name: function_25525279
	Namespace: namespace_acd01c5c
	Checksum: 0x1EC02487
	Offset: 0xD38
	Size: 0x103
	Parameters: 7
	Flags: None
*/
function function_25525279(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 != 0)
	{
		self.var_c86abfbb = var_9193c732;
		if(!(isdefined(self.var_8bb3e1f5) && self.var_8bb3e1f5))
		{
			namespace_3d5de9eb::function_1a848c42(self, 0);
			self.var_8bb3e1f5 = 1;
		}
		namespace_3d5de9eb::function_54a416dc(self, 0, var_9193c732);
	}
	if(isdefined(self.var_8bb3e1f5) && self.var_8bb3e1f5 && var_9193c732 == 0)
	{
		namespace_3d5de9eb::function_231250b9(self, 0);
		self.var_8bb3e1f5 = undefined;
	}
	self thread function_748fddf7(var_9193c732);
}

/*
	Name: function_748fddf7
	Namespace: namespace_acd01c5c
	Checksum: 0x810CC1D
	Offset: 0xE48
	Size: 0xFB
	Parameters: 1
	Flags: None
*/
function function_748fddf7(var_35c84e32)
{
	if(!isdefined(level.var_924ad306))
	{
		level.var_924ad306 = function_9b7fda5e(0, self.var_722885f3, "script_origin");
		level.var_924ad306 function_37f7858a(self);
	}
	if(var_35c84e32 == 0)
	{
		level.var_924ad306 function_dc8c8404();
		level.var_924ad306 = undefined;
	}
	else
	{
		var_580a3a1b = level.var_924ad306 function_c2931a36("gdt_securitybreach_static_interference", 1);
		if(isdefined(var_580a3a1b))
		{
			function_a69510c2(var_580a3a1b, var_35c84e32);
			function_9d2e5c(var_580a3a1b, 1);
		}
	}
}

/*
	Name: function_4755b60c
	Namespace: namespace_acd01c5c
	Checksum: 0x9F8E75B9
	Offset: 0xF50
	Size: 0xE5
	Parameters: 7
	Flags: None
*/
function function_4755b60c(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		if(!isdefined(level.var_9ddb7247))
		{
			level.var_9ddb7247 = function_9b7fda5e(0, self.var_722885f3, "script_origin");
			level.var_9ddb7247 function_37f7858a(self);
			level.var_9ddb7247 function_c2931a36("gdt_securitybreach_silence");
		}
	}
	else
	{
		level.var_9ddb7247 function_dc8c8404();
		level.var_9ddb7247 = undefined;
	}
}

/*
	Name: function_214501b2
	Namespace: namespace_acd01c5c
	Checksum: 0x76A1676D
	Offset: 0x1040
	Size: 0x125
	Parameters: 7
	Flags: None
*/
function function_214501b2(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	switch(var_9193c732)
	{
		case 2:
		{
			self thread namespace_bdde9225::function_bca12b73("pstfx_vehicle_takeover_fade_in");
			function_921a1574(0, "gdt_securitybreach_transition_in", (0, 0, 0));
			break;
		}
		case 3:
		{
			self thread namespace_bdde9225::function_bca12b73("pstfx_vehicle_takeover_fade_out");
			function_921a1574(0, "gdt_securitybreach_transition_out", (0, 0, 0));
			break;
		}
		case 1:
		{
			self thread namespace_bdde9225::function_3d1a8db5();
			break;
		}
		case 4:
		{
			self thread namespace_bdde9225::function_bca12b73("pstfx_vehicle_takeover_white");
			break;
		}
	}
}

