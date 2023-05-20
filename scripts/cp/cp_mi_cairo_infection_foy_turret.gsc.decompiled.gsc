#using scripts\codescripts\struct;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\system_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\vehicle_death_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\vehicleriders_shared;

#namespace namespace_2e89bb7e;

/*
	Name: function_2dc19561
	Namespace: namespace_2e89bb7e
	Checksum: 0x9D57BF2B
	Offset: 0x2A8
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("foy_turret", &function_8c87d8eb, undefined, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_2e89bb7e
	Checksum: 0x99EC1590
	Offset: 0x2E8
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
}

#namespace namespace_ce2d510;

/*
	Name: function_9b385ca5
	Namespace: namespace_ce2d510
	Checksum: 0x99EC1590
	Offset: 0x2F8
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_9b385ca5()
{
}

/*
	Name: function_5fba2032
	Namespace: namespace_ce2d510
	Checksum: 0x99EC1590
	Offset: 0x308
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_5fba2032()
{
}

/*
	Name: function_66f910ed
	Namespace: namespace_ce2d510
	Checksum: 0xE5789BA2
	Offset: 0x318
	Size: 0x113
	Parameters: 3
	Flags: None
*/
function function_66f910ed(var_96fa87af, var_e45a16d2, var_6cdabc79)
{
	self.var_69d9acb = var_96fa87af;
	self.var_69d9acb namespace_ad23e503::function_c35e6aab("gunner_position_occupied");
	if(isdefined(var_e45a16d2))
	{
		var_f73d6972 = function_6ada35ba(var_e45a16d2, "targetname");
		var_dfb53de7 = namespace_2f06d687::function_7387a40a(var_f73d6972);
		var_dfb53de7 namespace_96fa87af::function_230eadd7(self.var_69d9acb, "driver", 1);
	}
	if(isdefined(var_6cdabc79))
	{
		self.var_ee76385b = function_6ada35ba(var_6cdabc79, "targetname");
	}
	self thread function_661dadea();
}

/*
	Name: function_661dadea
	Namespace: namespace_ce2d510
	Checksum: 0x48B2DCA4
	Offset: 0x438
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_661dadea()
{
	self.var_69d9acb endon("hash_128f8789");
	self thread function_8276f484();
	self waittill("hash_2919200c");
	if(isdefined(self.var_ee76385b))
	{
		self thread function_6942abbd(1);
	}
	else
	{
		self thread function_6942abbd(0);
	}
}

/*
	Name: function_2919200c
	Namespace: namespace_ce2d510
	Checksum: 0xF4106468
	Offset: 0x4B8
	Size: 0x11
	Parameters: 0
	Flags: None
*/
function function_2919200c()
{
	self notify("hash_2919200c");
}

/*
	Name: function_6942abbd
	Namespace: namespace_ce2d510
	Checksum: 0x9B2B841A
	Offset: 0x4D8
	Size: 0x257
	Parameters: 1
	Flags: None
*/
function function_6942abbd(var_72ffe0f4)
{
	if(!isdefined(var_72ffe0f4))
	{
		var_72ffe0f4 = 0;
	}
	self.var_69d9acb endon("hash_128f8789");
	self.var_69d9acb namespace_37b990db::function_f4546867(1, 2, 0.25, 0.75, 0);
	while(1)
	{
		var_dfb53de7 = self.var_69d9acb namespace_96fa87af::function_ad4ec07a("driver");
		if(isdefined(var_dfb53de7))
		{
			self.var_69d9acb namespace_37b990db::function_bae40a28(0, 1);
			self.var_69d9acb namespace_ad23e503::function_74d6b22f("gunner_position_occupied");
			var_dfb53de7 waittill("hash_128f8789");
			level notify(self.var_69d9acb.var_170527fb + "_gunner_death");
		}
		self.var_69d9acb namespace_37b990db::function_54bdb053(0);
		self.var_69d9acb namespace_ad23e503::function_9d134160("gunner_position_occupied");
		if(var_72ffe0f4)
		{
			wait(function_72a94f05(4, 5));
			var_753bd441 = function_ceda4e5b();
			if(function_5b49d38c(var_753bd441))
			{
				if(namespace_96fa87af::function_ea08d46f(self.var_69d9acb, "driver"))
				{
					var_753bd441 thread namespace_96fa87af::function_230eadd7(self.var_69d9acb, "driver", 0);
					var_753bd441 namespace_82b91a51::function_5b7e3888("death", "in_vehicle", "exited_vehicle");
				}
			}
		}
		else
		{
			break;
		}
	}
}

/*
	Name: function_13eceb32
	Namespace: namespace_ce2d510
	Checksum: 0x3C96CCA0
	Offset: 0x738
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_13eceb32()
{
	var_dfb53de7 = self.var_69d9acb namespace_96fa87af::function_ad4ec07a("driver");
	if(isdefined(var_dfb53de7))
	{
		var_dfb53de7 function_dc8c8404();
	}
}

/*
	Name: function_8276f484
	Namespace: namespace_ce2d510
	Checksum: 0xD585F8A9
	Offset: 0x798
	Size: 0x37
	Parameters: 0
	Flags: None
*/
function function_8276f484()
{
	self.var_69d9acb waittill("hash_128f8789");
	function_13eceb32();
	self.var_69d9acb = undefined;
}

/*
	Name: function_ceda4e5b
	Namespace: namespace_ce2d510
	Checksum: 0x98DB8119
	Offset: 0x7D8
	Size: 0x17D
	Parameters: 0
	Flags: None
*/
function function_ceda4e5b()
{
	var_56dd1913 = function_b8494651("axis");
	var_7b8aab61 = [];
	foreach(var_e98b4e9b in var_56dd1913)
	{
		if(function_5b49d38c(var_e98b4e9b))
		{
			if(var_e98b4e9b function_32fa5072(self.var_ee76385b))
			{
				if(!isdefined(var_7b8aab61))
				{
					var_7b8aab61 = [];
				}
				else if(!function_6e2770d8(var_7b8aab61))
				{
					var_7b8aab61 = function_84970cc4(var_7b8aab61);
				}
				var_7b8aab61[var_7b8aab61.size] = var_e98b4e9b;
			}
		}
	}
	var_dfb53de7 = function_f926d8e8(var_7b8aab61, self.var_69d9acb.var_722885f3, 1, var_7b8aab61.size)[0];
	return var_dfb53de7;
}

/*
	Name: function_35a3bd3a
	Namespace: namespace_ce2d510
	Checksum: 0x3F8BB9E1
	Offset: 0x960
	Size: 0x9
	Parameters: 0
	Flags: None
*/
function function_35a3bd3a()
{
	return self.var_69d9acb;
}

#namespace namespace_2e89bb7e;

/*
	Name: function_ce2d510
	Namespace: namespace_2e89bb7e
	Checksum: 0x84158172
	Offset: 0x978
	Size: 0x205
	Parameters: 0
	Flags: 6
*/
function private autoexec function_ce2d510()
{
	classes.var_ce2d510[0] = function_a8fb77bd();
	classes.var_ce2d510[0].var_b684a6d1[899923258] = &namespace_ce2d510::function_35a3bd3a;
	classes.var_ce2d510[0].var_b684a6d1[-824553893] = &namespace_ce2d510::function_ceda4e5b;
	classes.var_ce2d510[0].var_b684a6d1[-2106133372] = &namespace_ce2d510::function_8276f484;
	classes.var_ce2d510[0].var_b684a6d1[334293810] = &namespace_ce2d510::function_13eceb32;
	classes.var_ce2d510[0].var_b684a6d1[1765977021] = &namespace_ce2d510::function_6942abbd;
	classes.var_ce2d510[0].var_b684a6d1[689512460] = &namespace_ce2d510::function_2919200c;
	classes.var_ce2d510[0].var_b684a6d1[1713221098] = &namespace_ce2d510::function_661dadea;
	classes.var_ce2d510[0].var_b684a6d1[1727598829] = &namespace_ce2d510::function_66f910ed;
	classes.var_ce2d510[0].var_b684a6d1[1606033458] = &namespace_ce2d510::function_5fba2032;
	classes.var_ce2d510[0].var_b684a6d1[-1690805083] = &namespace_ce2d510::function_9b385ca5;
}

