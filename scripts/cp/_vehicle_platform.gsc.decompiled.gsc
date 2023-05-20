#using scripts\codescripts\struct;
#using scripts\shared\flag_shared;
#using scripts\shared\fx_shared;
#using scripts\shared\sound_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;

#namespace namespace_fa0d90fd;

/*
	Name: function_c35e6aab
	Namespace: namespace_fa0d90fd
	Checksum: 0xF2694C3E
	Offset: 0x2B0
	Size: 0x6FB
	Parameters: 2
	Flags: None
*/
function function_c35e6aab(var_e6d08de, var_87b2bbe5)
{
	if(!level namespace_ad23e503::function_7922262b("first_player_spawned"))
	{
		wait(0.05);
	}
	self.var_950bb2b2 = var_e6d08de;
	self.var_3a0cae84 = 0;
	self.var_6c951b00 = function_6ada35ba(self.var_950bb2b2 + "_vehicle", "targetname");
	if(!isdefined(self.var_6c951b00))
	{
		self.var_6c951b00 = function_6ada35ba(self.var_950bb2b2 + "_vehicle_vh", "targetname");
	}
	self.var_6c951b00.var_3e94206a = "spectator";
	self.var_6c951b00 function_b0b70abb(1);
	/#
		namespace_33b293fd::function_a7ee953(isdefined(self.var_6c951b00), "Dev Block strings are not supported" + self.var_950bb2b2 + "Dev Block strings are not supported");
	#/
	self.var_1a144436 = function_99201f25(self.var_950bb2b2, "targetname");
	foreach(var_4efa37e7 in self.var_1a144436)
	{
		var_4efa37e7 function_8f279593();
		var_4efa37e7 function_37f7858a(self.var_6c951b00);
		if(var_4efa37e7.var_e6e9b8de == "script_brushmodel")
		{
			/#
				namespace_33b293fd::function_a7ee953(!isdefined(self.var_86d0e1a0), "Dev Block strings are not supported" + self.var_950bb2b2);
			#/
			self.var_86d0e1a0 = var_4efa37e7;
		}
	}
	/#
		namespace_33b293fd::function_a7ee953(isdefined(self.var_86d0e1a0), "Dev Block strings are not supported" + self.var_950bb2b2);
	#/
	self.var_86d0e1a0 function_b0b70abb(1);
	self.var_bfd6a2f9 = function_9b7fda5e("script_origin", self.var_86d0e1a0.var_722885f3);
	self.var_bfd6a2f9 function_37f7858a(self.var_86d0e1a0);
	self.var_6265e5b9 = function_6ada35ba(self.var_950bb2b2 + "_weakpoint", "targetname");
	if(isdefined(self.var_6265e5b9))
	{
		self.var_6265e5b9 function_8f279593();
		self.var_6265e5b9 function_37f7858a(self.var_86d0e1a0);
		self thread function_797a14ff();
	}
	self function_99848f4e(var_87b2bbe5);
	var_6518a90a = function_99201f25(var_e6d08de, "target");
	foreach(var_6518a90a in var_6518a90a)
	{
		if(var_6518a90a.var_e6e9b8de == "script_model" || var_6518a90a.var_e6e9b8de == "script_brushmodel")
		{
			var_31353764 = function_6ada35ba(var_6518a90a.var_170527fb, "target");
			self thread function_b2dfa7a2(var_31353764);
			continue;
		}
		self thread function_b2dfa7a2(var_6518a90a);
	}
	var_1ceefaa7 = function_99201f25(self.var_86d0e1a0.var_b07228b6, "targetname");
	var_2adc1705 = namespace_14b42b8a::function_7faf4c39(self.var_86d0e1a0.var_b07228b6, "targetname");
	var_3823bc4b = function_525ae497(var_1ceefaa7, var_2adc1705, 1, 0);
	foreach(var_d5b66a0 in var_3823bc4b)
	{
		if(!isdefined(var_d5b66a0.var_caae374e))
		{
			break;
		}
		switch(var_d5b66a0.var_caae374e)
		{
			case "audio_point":
			{
				self thread function_dbec37e0(var_d5b66a0, "start_" + self.var_950bb2b2 + "_klaxon", "stop_" + self.var_950bb2b2 + "_klaxon");
				break;
			}
			case "elevator_door":
			{
				self thread function_9cdfa1cb(var_d5b66a0);
				break;
			}
			case "elevator_klaxon_speaker":
			{
				self thread function_dbec37e0(var_d5b66a0, "vehicle_platform_" + self.var_950bb2b2 + "_move", "stop_" + self.var_950bb2b2 + "_movement_sound");
				break;
			}
		}
	}
}

/*
	Name: function_4cc0ffc1
	Namespace: namespace_fa0d90fd
	Checksum: 0x2F0B3889
	Offset: 0x9B8
	Size: 0x3F
	Parameters: 3
	Flags: None
*/
function function_4cc0ffc1(var_f7669c82, var_8e84437a, var_519cefe7)
{
	self.var_542aaa76 = var_f7669c82;
	self.var_453a7636 = var_8e84437a;
	self.var_b94c1eb = var_519cefe7;
}

/*
	Name: function_9bc3d62a
	Namespace: namespace_fa0d90fd
	Checksum: 0xC200CC2
	Offset: 0xA00
	Size: 0x9
	Parameters: 0
	Flags: None
*/
function function_9bc3d62a()
{
	return self.var_6c951b00;
}

/*
	Name: function_845aae7f
	Namespace: namespace_fa0d90fd
	Checksum: 0x189D109F
	Offset: 0xA18
	Size: 0x6F
	Parameters: 1
	Flags: None
*/
function function_845aae7f(var_87b2bbe5)
{
	var_3c54858a = function_243bb261(var_87b2bbe5, "targetname");
	/#
		namespace_33b293fd::function_a7ee953(isdefined(self.var_e0473e16), "Dev Block strings are not supported" + var_87b2bbe5);
	#/
	self.var_e0473e16 = var_3c54858a;
}

/*
	Name: function_797a14ff
	Namespace: namespace_fa0d90fd
	Checksum: 0x32CBE6B
	Offset: 0xA90
	Size: 0x1B3
	Parameters: 0
	Flags: None
*/
function function_797a14ff()
{
	self.var_6265e5b9 function_8d63f8d0(1);
	self.var_6265e5b9.var_3a90f16b = 100;
	self.var_6265e5b9 waittill("hash_128f8789");
	self.var_3a0cae84 = 1;
	self thread namespace_5753664b::function_43718187("mobile_shop_fall_explosion", self.var_6c951b00.var_722885f3, (0, 0, 0));
	wait(0.3);
	self thread namespace_5753664b::function_43718187("mobile_shop_fall_explosion", self.var_6c951b00.var_722885f3 - VectorScale((0, 1, 0), 200), (0, 0, 0));
	self.var_6265e5b9 function_50ccee8d();
	var_e3b635fb = function_c20c2e8(self.var_950bb2b2, "groupname");
	foreach(var_d84e54db in var_e3b635fb)
	{
		var_d84e54db function_2992720d();
	}
	self.var_6c951b00 namespace_96fa87af::function_4bbca735();
}

/*
	Name: function_b2dfa7a2
	Namespace: namespace_fa0d90fd
	Checksum: 0xDBF18498
	Offset: 0xC50
	Size: 0x1DF
	Parameters: 1
	Flags: None
*/
function function_b2dfa7a2(var_f92a03e7)
{
	var_f92a03e7 endon("hash_128f8789");
	level endon(self.var_950bb2b2 + "_disabled");
	var_2c96ba3c = self.var_e0473e16;
	while(1)
	{
		var_f92a03e7 namespace_4dbf3ae3::function_1ab5ebec();
		level notify("start_" + self.var_950bb2b2 + "_klaxon");
		level notify("close_" + self.var_950bb2b2 + "_doors");
		if(isdefined(var_f92a03e7.var_7d402220))
		{
			wait(var_f92a03e7.var_7d402220);
		}
		else
		{
			wait(2);
		}
		if(self.var_e0473e16 != var_2c96ba3c)
		{
			var_e00aef4b = 1;
		}
		self.var_bfd6a2f9 function_921a1574("veh_" + self.var_950bb2b2 + "_start");
		self.var_bfd6a2f9 function_c2931a36("veh_" + self.var_950bb2b2 + "_loop", 0.5);
		self thread function_d96bbc47(var_e00aef4b);
		self.var_6c951b00 waittill("hash_6cf6ac7e");
		self.var_bfd6a2f9 function_921a1574("veh_" + self.var_950bb2b2 + "_stop");
		self.var_bfd6a2f9 function_eaa69754(0.5);
		function_c721cb49();
	}
}

/*
	Name: function_99848f4e
	Namespace: namespace_fa0d90fd
	Checksum: 0x823473B9
	Offset: 0xE38
	Size: 0x83
	Parameters: 1
	Flags: None
*/
function function_99848f4e(var_87b2bbe5)
{
	self.var_e0473e16 = function_243bb261(var_87b2bbe5, "targetname");
	/#
		namespace_33b293fd::function_a7ee953(isdefined(self.var_e0473e16), "Dev Block strings are not supported" + var_87b2bbe5);
	#/
	self.var_6c951b00 namespace_96fa87af::function_b6b0ca71(self.var_e0473e16);
}

/*
	Name: function_d0c07f53
	Namespace: namespace_fa0d90fd
	Checksum: 0x2DE689C9
	Offset: 0xEC8
	Size: 0x33
	Parameters: 2
	Flags: None
*/
function function_d0c07f53(var_43cb7e16, var_a1cc6c78)
{
	self.var_6c951b00 namespace_96fa87af::function_d0c07f53(var_43cb7e16, var_a1cc6c78);
}

/*
	Name: function_d96bbc47
	Namespace: namespace_fa0d90fd
	Checksum: 0x4EF48531
	Offset: 0xF08
	Size: 0xDF
	Parameters: 1
	Flags: None
*/
function function_d96bbc47(var_e00aef4b)
{
	if(self.var_3a0cae84)
	{
		return;
	}
	if(isdefined(var_e00aef4b) && var_e00aef4b)
	{
		self.var_6c951b00 namespace_96fa87af::function_edb3a94e(self.var_e0473e16);
	}
	else
	{
		self.var_6c951b00 namespace_96fa87af::function_ff72658f();
	}
	level notify("vehicle_platform_" + self.var_950bb2b2 + "_move");
	if(isdefined(self.var_542aaa76))
	{
		if(isdefined(self.var_b94c1eb))
		{
			self.var_86d0e1a0 thread [[self.var_542aaa76]](self.var_b94c1eb);
		}
		else
		{
			self.var_86d0e1a0 thread [[self.var_542aaa76]]();
		}
	}
}

/*
	Name: function_c721cb49
	Namespace: namespace_fa0d90fd
	Checksum: 0x3CFF240C
	Offset: 0xFF0
	Size: 0x157
	Parameters: 0
	Flags: None
*/
function function_c721cb49()
{
	level notify("vehicle_platform_" + self.var_950bb2b2 + "_stop");
	level notify("stop_" + self.var_950bb2b2 + "_movement_sound");
	level notify("stop_" + self.var_950bb2b2 + "_klaxon");
	level notify("open_" + self.var_950bb2b2 + "_doors");
	if(isdefined(self.var_d47f13c))
	{
		self.var_bfd6a2f9 function_921a1574(level.var_695a72d7[self.var_d47f13c]);
	}
	if(isdefined(level.var_695a72d7) && isdefined(level.var_695a72d7["elevator_end"]))
	{
		self.var_bfd6a2f9 function_921a1574(level.var_695a72d7["elevator_end"]);
	}
	if(isdefined(self.var_453a7636))
	{
		if(isdefined(self.var_b94c1eb))
		{
			self.var_86d0e1a0 thread [[self.var_453a7636]](self.var_b94c1eb);
		}
		else
		{
			self.var_86d0e1a0 thread [[self.var_453a7636]]();
		}
	}
}

/*
	Name: function_dbec37e0
	Namespace: namespace_fa0d90fd
	Checksum: 0xA83FFB59
	Offset: 0x1150
	Size: 0x73
	Parameters: 3
	Flags: None
*/
function function_dbec37e0(var_228ae8b0, var_544bc7c7, var_20c20cf5)
{
	level waittill(var_544bc7c7);
	if(isdefined(var_228ae8b0.var_d47f13c))
	{
		var_228ae8b0 thread namespace_93b50d82::function_4617f9ec(level.var_695a72d7[var_228ae8b0.var_d47f13c], var_228ae8b0.var_722885f3, var_20c20cf5);
	}
}

/*
	Name: function_9cdfa1cb
	Namespace: namespace_fa0d90fd
	Checksum: 0xD3198204
	Offset: 0x11D0
	Size: 0x313
	Parameters: 1
	Flags: None
*/
function function_9cdfa1cb(var_d5b66a0)
{
	var_3ac8d80f = namespace_14b42b8a::function_7922262b(var_d5b66a0.var_b07228b6, "targetname");
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_3ac8d80f), "Dev Block strings are not supported" + var_d5b66a0.var_722885f3);
	#/
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_3ac8d80f.var_b07228b6), "Dev Block strings are not supported" + var_d5b66a0.var_722885f3);
	#/
	var_f0bc435f = namespace_14b42b8a::function_7922262b(var_3ac8d80f.var_b07228b6, "targetname");
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_f0bc435f), "Dev Block strings are not supported" + var_d5b66a0.var_722885f3);
	#/
	if(isdefined(var_3ac8d80f.var_6604b19f))
	{
	}
	else
	{
	}
	var_73345118 = 1;
	if(isdefined(var_f0bc435f.var_6604b19f))
	{
	}
	else
	{
	}
	var_ef73127f = 1;
	var_b1d2ef55 = 0;
	if(isdefined(var_f0bc435f.var_caae374e) && var_f0bc435f.var_caae374e == "stay_closed")
	{
		var_b1d2ef55 = 1;
	}
	var_d5b66a0.var_722885f3 = var_3ac8d80f.var_722885f3;
	var_d5b66a0.var_6ab6f4fd = var_3ac8d80f.var_6ab6f4fd;
	var_26dfbb14 = var_f0bc435f.var_722885f3 - var_d5b66a0.var_722885f3;
	var_ebf964d9 = var_f0bc435f.var_6ab6f4fd - var_d5b66a0.var_6ab6f4fd;
	var_9a35a990 = var_d5b66a0.var_722885f3 - var_f0bc435f.var_722885f3;
	var_35a4cf2b = var_d5b66a0.var_6ab6f4fd - var_f0bc435f.var_6ab6f4fd;
	self thread function_f8655445(var_d5b66a0, "close_", var_26dfbb14, var_ebf964d9, var_ef73127f);
	if(!var_b1d2ef55)
	{
		self thread function_f8655445(var_d5b66a0, "open_", var_9a35a990, var_35a4cf2b, var_73345118);
	}
}

/*
	Name: function_f8655445
	Namespace: namespace_fa0d90fd
	Checksum: 0xC849C83C
	Offset: 0x14F0
	Size: 0x117
	Parameters: 5
	Flags: None
*/
function function_f8655445(var_d5b66a0, var_102e3d58, var_8e4b278, var_6cac4ba4, var_78962fff)
{
	level endon(self.var_950bb2b2 + "_disabled");
	var_d5b66a0 function_37f7858a(self.var_86d0e1a0);
	while(1)
	{
		level waittill(var_102e3d58 + self.var_950bb2b2 + "_doors");
		var_d5b66a0 function_52fddbd0();
		var_d5b66a0 function_a96a2721(var_d5b66a0.var_722885f3 + var_8e4b278, var_78962fff);
		var_d5b66a0 function_c0b6566f(var_d5b66a0.var_6ab6f4fd + var_6cac4ba4, var_78962fff);
		wait(var_78962fff);
		var_d5b66a0 function_37f7858a(self.var_86d0e1a0);
	}
}

/*
	Name: function_9b385ca5
	Namespace: namespace_fa0d90fd
	Checksum: 0x99EC1590
	Offset: 0x1610
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_9b385ca5()
{
}

/*
	Name: function_5fba2032
	Namespace: namespace_fa0d90fd
	Checksum: 0x99EC1590
	Offset: 0x1620
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_5fba2032()
{
}

#namespace namespace_7206ad77;

/*
	Name: function_fa0d90fd
	Namespace: namespace_7206ad77
	Checksum: 0xC5379E9F
	Offset: 0x1630
	Size: 0x2F5
	Parameters: 0
	Flags: 6
*/
function private autoexec function_fa0d90fd()
{
	classes.var_fa0d90fd[0] = function_a8fb77bd();
	classes.var_fa0d90fd[0].var_b684a6d1[1606033458] = &namespace_fa0d90fd::function_5fba2032;
	classes.var_fa0d90fd[0].var_b684a6d1[-1690805083] = &namespace_fa0d90fd::function_9b385ca5;
	classes.var_fa0d90fd[0].var_b684a6d1[-127577019] = &namespace_fa0d90fd::function_f8655445;
	classes.var_fa0d90fd[0].var_b684a6d1[-1663065653] = &namespace_fa0d90fd::function_9cdfa1cb;
	classes.var_fa0d90fd[0].var_b684a6d1[-605276192] = &namespace_fa0d90fd::function_dbec37e0;
	classes.var_fa0d90fd[0].var_b684a6d1[-954086583] = &namespace_fa0d90fd::function_c721cb49;
	classes.var_fa0d90fd[0].var_b684a6d1[-647250873] = &namespace_fa0d90fd::function_d96bbc47;
	classes.var_fa0d90fd[0].var_b684a6d1[-792690861] = &namespace_fa0d90fd::function_d0c07f53;
	classes.var_fa0d90fd[0].var_b684a6d1[-1719365810] = &namespace_fa0d90fd::function_99848f4e;
	classes.var_fa0d90fd[0].var_b684a6d1[-1293965406] = &namespace_fa0d90fd::function_b2dfa7a2;
	classes.var_fa0d90fd[0].var_b684a6d1[2038043903] = &namespace_fa0d90fd::function_797a14ff;
	classes.var_fa0d90fd[0].var_b684a6d1[-2074431873] = &namespace_fa0d90fd::function_845aae7f;
	classes.var_fa0d90fd[0].var_b684a6d1[-1681664470] = &namespace_fa0d90fd::function_9bc3d62a;
	classes.var_fa0d90fd[0].var_b684a6d1[1287716801] = &namespace_fa0d90fd::function_4cc0ffc1;
	classes.var_fa0d90fd[0].var_b684a6d1[-1017222485] = &namespace_fa0d90fd::function_c35e6aab;
}

