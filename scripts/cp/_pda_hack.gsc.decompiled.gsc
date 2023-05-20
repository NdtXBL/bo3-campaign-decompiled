#using scripts\cp\_util;
#using scripts\shared\flag_shared;
#using scripts\shared\hud_util_shared;
#using scripts\shared\scoreevents_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace namespace_4cb2c123;

/*
	Name: function_2dc19561
	Namespace: namespace_4cb2c123
	Checksum: 0x2DF759D0
	Offset: 0x180
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("pda_hack", &function_8c87d8eb, undefined, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_4cb2c123
	Checksum: 0x99EC1590
	Offset: 0x1C0
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
}

#namespace namespace_d86d3a6;

/*
	Name: function_9b385ca5
	Namespace: namespace_d86d3a6
	Checksum: 0xEFC64391
	Offset: 0x1D0
	Size: 0x7F
	Parameters: 0
	Flags: None
*/
function function_9b385ca5()
{
	self.var_6ba6041f = 1;
	self.var_f6ed93ab = 0;
	self.var_4d9e1d20 = 0;
	self.var_63f3839a = 2;
	self.var_e9a4f350 = 72;
	self.var_b347a23 = 128;
	self.var_69e7c65d = &function_fd069dd4;
	self.var_724f1b05 = 0;
	self.var_eaee6a02 = "axis";
}

/*
	Name: function_5fba2032
	Namespace: namespace_d86d3a6
	Checksum: 0xF9B0C4B0
	Offset: 0x258
	Size: 0x13
	Parameters: 0
	Flags: None
*/
function function_5fba2032()
{
	function_4305af9c();
}

/*
	Name: function_808cd5de
	Namespace: namespace_d86d3a6
	Checksum: 0xDF0F4703
	Offset: 0x278
	Size: 0x193
	Parameters: 5
	Flags: None
*/
function function_808cd5de(var_b71ed4a2, var_d8a4a5ae, var_6cac4ba4, var_a65e7c1a, var_5152e048)
{
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_b71ed4a2), "Dev Block strings are not supported");
	#/
	if(!isdefined(var_6cac4ba4))
	{
		var_6cac4ba4 = (0, 0, 0);
	}
	self.var_82559c86 = var_d8a4a5ae;
	self.var_1fa07047 = var_a65e7c1a;
	self.var_95115064 = var_5152e048;
	self.var_a2d77bbb = function_4336408f(var_b71ed4a2, self.var_e9a4f350, self.var_b347a23, self.var_82559c86);
	self.var_a2d77bbb.var_6ab6f4fd = var_6cac4ba4;
	self.var_c7295a83 = function_9b7fda5e("script_model", var_b71ed4a2);
	self.var_c7295a83 function_e48f905e("");
	self.var_c7295a83 function_422037f5();
	/#
		namespace_33b293fd::function_a7ee953(!self.var_f6ed93ab, "Dev Block strings are not supported");
	#/
	self.var_f6ed93ab = 1;
	function_64ff4520();
	self thread function_341b7c41();
}

/*
	Name: function_57511b5b
	Namespace: namespace_d86d3a6
	Checksum: 0x4DD10459
	Offset: 0x418
	Size: 0x17
	Parameters: 1
	Flags: None
*/
function function_57511b5b(var_78962fff)
{
	self.var_63f3839a = var_78962fff;
}

/*
	Name: function_64ff4520
	Namespace: namespace_d86d3a6
	Checksum: 0x198D3C44
	Offset: 0x438
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_64ff4520()
{
	if(self.var_f6ed93ab)
	{
		if(self.var_eaee6a02 != "allies")
		{
			self.var_a2d77bbb function_d5eb00e3(self.var_82559c86);
			self.var_a2d77bbb function_622a981a(1);
			if(!self.var_4d9e1d20)
			{
				self thread function_341b7c41();
			}
		}
		else
		{
			self.var_a2d77bbb function_d5eb00e3("");
			self.var_a2d77bbb function_622a981a(1);
		}
	}
}

/*
	Name: function_365c53f7
	Namespace: namespace_d86d3a6
	Checksum: 0xE5FD5D41
	Offset: 0x510
	Size: 0x67
	Parameters: 0
	Flags: None
*/
function function_365c53f7()
{
	if(self.var_f6ed93ab)
	{
		self notify("hash_76b803d9");
		self.var_a2d77bbb function_d5eb00e3("");
		self.var_a2d77bbb function_622a981a(1);
		self.var_4d9e1d20 = 0;
	}
}

/*
	Name: function_fd069dd4
	Namespace: namespace_d86d3a6
	Checksum: 0x3C8995CA
	Offset: 0x580
	Size: 0xB7
	Parameters: 1
	Flags: None
*/
function function_fd069dd4(var_df09ae6a)
{
	self notify("hash_fd069dd4");
	self.var_eaee6a02 = "allies";
	self.var_a2d77bbb function_d5eb00e3("");
	self.var_a2d77bbb function_622a981a(1);
	if(isdefined(self.var_95115064))
	{
		var_5152e048 = self.var_95115064;
	}
	else
	{
		var_5152e048 = self;
	}
	if(isdefined(self.var_1fa07047))
	{
		var_5152e048 [[self.var_1fa07047]]();
	}
}

/*
	Name: function_ce55f4fa
	Namespace: namespace_d86d3a6
	Checksum: 0x7A93950C
	Offset: 0x640
	Size: 0xF
	Parameters: 0
	Flags: None
*/
function function_ce55f4fa()
{
	self waittill("hash_fd069dd4");
}

/*
	Name: function_341b7c41
	Namespace: namespace_d86d3a6
	Checksum: 0xD41B1DB0
	Offset: 0x658
	Size: 0x557
	Parameters: 0
	Flags: None
*/
function function_341b7c41()
{
	self endon("hash_fd069dd4");
	self endon("hash_76b803d9");
	self.var_a2d77bbb endon("hash_128f8789");
	self.var_4d9e1d20 = 1;
	self.var_a2d77bbb function_d5eb00e3("");
	self.var_a2d77bbb function_622a981a(1);
	while(1)
	{
		self.var_a2d77bbb waittill("hash_4dbf3ae3", var_df09ae6a);
		if(!self.var_6ba6041f)
		{
			continue;
		}
		if(!var_df09ae6a namespace_82b91a51::function_d61b846f(self.var_a2d77bbb.var_722885f3, 0.75, 0))
		{
			self.var_a2d77bbb function_d5eb00e3("");
			self.var_a2d77bbb function_622a981a(1);
			continue;
		}
		self.var_a2d77bbb function_d5eb00e3(self.var_82559c86);
		self.var_a2d77bbb function_622a981a(1);
		if(!var_df09ae6a function_d5ef124())
		{
			continue;
		}
		foreach(var_5dc5e20a in level.var_2395e945)
		{
			if(var_5dc5e20a != var_df09ae6a)
			{
				self.var_a2d77bbb function_cb2c15eb(var_5dc5e20a, "");
			}
		}
		level.var_e63a55a5 = 0;
		level.var_c037db3c = 110;
		level.var_76f2da86 = 8;
		level.var_96a7eeed = 120;
		level.var_f0aa5b7d = 280;
		var_df09ae6a function_e1c61785(self.var_a2d77bbb);
		wait(0.8);
		var_94db6e7c = 0;
		var_319ed91d = self.var_63f3839a;
		if(self.var_724f1b05)
		{
			if(isdefined(level.var_fdfac3e5))
			{
				var_319ed91d = var_319ed91d * level.var_fdfac3e5;
			}
		}
		var_ee46aab4 = self.var_e9a4f350 * self.var_e9a4f350;
		var_98d5021b = function_316422d1(var_df09ae6a.var_722885f3, self.var_a2d77bbb.var_722885f3);
		if(var_98d5021b > var_ee46aab4)
		{
			var_ee46aab4 = var_98d5021b;
		}
		var_b01de8c7 = 1;
		while(var_94db6e7c < var_319ed91d && var_df09ae6a function_d5ef124() && var_98d5021b <= var_ee46aab4 && var_b01de8c7)
		{
			var_94db6e7c = var_94db6e7c + 0.05;
			if(!isdefined(self.var_3ac7294a))
			{
				self.var_3ac7294a = var_df09ae6a namespace_724a4794::function_2057d0d7();
				self.var_3ac7294a thread function_62faa634(var_319ed91d);
			}
			wait(0.05);
			var_98d5021b = function_316422d1(var_df09ae6a.var_722885f3, self.var_a2d77bbb.var_722885f3);
			var_af239af9 = var_df09ae6a namespace_82b91a51::function_d61b846f(self.var_a2d77bbb.var_722885f3, 0.75, 0);
		}
		if(isdefined(self.var_3ac7294a))
		{
			self.var_3ac7294a notify("hash_bd3246ef");
			self.var_3ac7294a namespace_724a4794::function_9c3abbf4();
		}
		var_df09ae6a function_f7d58490();
		if(var_94db6e7c >= var_319ed91d)
		{
			if(self.var_724f1b05)
			{
				if(!isdefined(level.var_fdfac3e5))
				{
					level.var_fdfac3e5 = 1;
				}
				level.var_fdfac3e5 = level.var_fdfac3e5 + 0.2;
			}
			self thread [[self.var_69e7c65d]](var_df09ae6a);
		}
		while(var_df09ae6a function_d5ef124())
		{
			wait(0.1);
		}
	}
}

/*
	Name: function_e1c61785
	Namespace: namespace_d86d3a6
	Checksum: 0x521E01B5
	Offset: 0xBB8
	Size: 0x173
	Parameters: 1
	Flags: None
*/
function function_e1c61785(var_4dbf3ae3)
{
	var_3ac7dd05 = var_4dbf3ae3.var_722885f3 + function_f679a325(function_bc7ce905(var_4dbf3ae3.var_6ab6f4fd)) * 50;
	var_7c5a58b9 = function_e1dc201c(var_3ac7dd05, var_3ac7dd05 - VectorScale((0, 0, 1), 100), 0, undefined)["position"];
	var_921dacdc = (0, function_bdcdc423(VectorScale(function_bc7ce905(var_4dbf3ae3.var_6ab6f4fd), -1))[1], 0);
	self.var_246c72d1 = function_9b7fda5e("script_origin", var_7c5a58b9);
	self.var_246c72d1.var_6ab6f4fd = var_921dacdc;
	self function_87b6cda1(self.var_246c72d1, undefined, 0, 0, 0, 0, 0);
	self function_1271a73e();
}

/*
	Name: function_f7d58490
	Namespace: namespace_d86d3a6
	Checksum: 0xE9339F6B
	Offset: 0xD38
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_f7d58490()
{
	if(isdefined(self) && isdefined(self.var_246c72d1))
	{
		self function_52fddbd0();
		self.var_246c72d1 function_dc8c8404();
		self function_901e0817();
	}
}

/*
	Name: function_62faa634
	Namespace: namespace_d86d3a6
	Checksum: 0x6AB3A10C
	Offset: 0xDA0
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_62faa634(var_cbc69bae)
{
	self endon("hash_bd3246ef");
	self namespace_724a4794::function_7089bce5(0.01, 1 / var_cbc69bae);
}

/*
	Name: function_4336408f
	Namespace: namespace_d86d3a6
	Checksum: 0x6F1C2CFE
	Offset: 0xDE8
	Size: 0x167
	Parameters: 4
	Flags: None
*/
function function_4336408f(var_b71ed4a2, var_562b538e, var_5b1ebb35, var_f6e313be)
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
	Name: function_4305af9c
	Namespace: namespace_d86d3a6
	Checksum: 0xA83BF92C
	Offset: 0xF58
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_4305af9c()
{
	if(isdefined(self.var_a2d77bbb))
	{
		self.var_a2d77bbb function_dc8c8404();
	}
}

#namespace namespace_4cb2c123;

/*
	Name: function_d86d3a6
	Namespace: namespace_4cb2c123
	Checksum: 0xD600D653
	Offset: 0xF90
	Size: 0x2C5
	Parameters: 0
	Flags: 6
*/
function private autoexec function_d86d3a6()
{
	classes.var_d86d3a6[0] = function_a8fb77bd();
	classes.var_d86d3a6[0].var_b684a6d1[1124446108] = &namespace_d86d3a6::function_4305af9c;
	classes.var_d86d3a6[0].var_b684a6d1[1127628943] = &namespace_d86d3a6::function_4336408f;
	classes.var_d86d3a6[0].var_b684a6d1[1660593716] = &namespace_d86d3a6::function_62faa634;
	classes.var_d86d3a6[0].var_b684a6d1[-137001840] = &namespace_d86d3a6::function_f7d58490;
	classes.var_d86d3a6[0].var_b684a6d1[-507111547] = &namespace_d86d3a6::function_e1c61785;
	classes.var_d86d3a6[0].var_b684a6d1[874216513] = &namespace_d86d3a6::function_341b7c41;
	classes.var_d86d3a6[0].var_b684a6d1[-833227526] = &namespace_d86d3a6::function_ce55f4fa;
	classes.var_d86d3a6[0].var_b684a6d1[-49898028] = &namespace_d86d3a6::function_fd069dd4;
	classes.var_d86d3a6[0].var_b684a6d1[912020471] = &namespace_d86d3a6::function_365c53f7;
	classes.var_d86d3a6[0].var_b684a6d1[1694450976] = &namespace_d86d3a6::function_64ff4520;
	classes.var_d86d3a6[0].var_b684a6d1[1464933211] = &namespace_d86d3a6::function_57511b5b;
	classes.var_d86d3a6[0].var_b684a6d1[-2138253858] = &namespace_d86d3a6::function_808cd5de;
	classes.var_d86d3a6[0].var_b684a6d1[1606033458] = &namespace_d86d3a6::function_5fba2032;
	classes.var_d86d3a6[0].var_b684a6d1[-1690805083] = &namespace_d86d3a6::function_9b385ca5;
}

