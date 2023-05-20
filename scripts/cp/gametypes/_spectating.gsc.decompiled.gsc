#using scripts\codescripts\struct;
#using scripts\shared\callbacks_shared;
#using scripts\shared\system_shared;

#namespace namespace_54e5555d;

/*
	Name: function_2dc19561
	Namespace: namespace_54e5555d
	Checksum: 0x4E6CE717
	Offset: 0x110
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("spectating", &function_8c87d8eb, undefined, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_54e5555d
	Checksum: 0x4FB591C1
	Offset: 0x150
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	namespace_dabbe128::function_c61b24c4(&function_c35e6aab);
	namespace_dabbe128::function_356a4ee1(&function_c3d72c52);
	namespace_dabbe128::function_f6076bfe(&function_7275c170);
	namespace_dabbe128::function_f10e0be0(&function_7275c170);
}

/*
	Name: function_c35e6aab
	Namespace: namespace_54e5555d
	Checksum: 0x5A7447BE
	Offset: 0x1E0
	Size: 0x97
	Parameters: 0
	Flags: None
*/
function function_c35e6aab()
{
	foreach(var_3e94206a in level.var_e7a38025)
	{
		level.var_996d4ccc[var_3e94206a] = function_a8fb77bd();
	}
}

/*
	Name: function_920e461a
	Namespace: namespace_54e5555d
	Checksum: 0x90809A61
	Offset: 0x280
	Size: 0x5D
	Parameters: 0
	Flags: None
*/
function function_920e461a()
{
	level endon("hash_c8ab51de");
	for(var_5e76f0af = 0; var_5e76f0af < level.var_2395e945.size; var_5e76f0af++)
	{
		level.var_2395e945[var_5e76f0af] function_c3d72c52();
	}
}

/*
	Name: function_6a47a2ce
	Namespace: namespace_54e5555d
	Checksum: 0x97B3F226
	Offset: 0x2E8
	Size: 0xCD
	Parameters: 0
	Flags: None
*/
function function_6a47a2ce()
{
	for(var_5e76f0af = 0; var_5e76f0af < level.var_2395e945.size; var_5e76f0af++)
	{
		if(!isdefined(level.var_2395e945[var_5e76f0af]))
		{
			continue;
		}
		if(level.var_2395e945[var_5e76f0af] == self)
		{
			continue;
		}
		if(!self function_1155d72a(level.var_2395e945[var_5e76f0af]))
		{
			continue;
		}
		var_3e94206a = level.var_2395e945[var_5e76f0af].var_b2e5a818;
		if(var_3e94206a != "spectator")
		{
			return var_3e94206a;
		}
	}
	return self.var_b2e5a818;
}

/*
	Name: function_1f906eca
	Namespace: namespace_54e5555d
	Checksum: 0xA69733FC
	Offset: 0x3C0
	Size: 0xB7
	Parameters: 0
	Flags: None
*/
function function_1f906eca()
{
	for(var_5e76f0af = 0; var_5e76f0af < level.var_2395e945.size; var_5e76f0af++)
	{
		if(!isdefined(level.var_2395e945[var_5e76f0af]))
		{
			continue;
		}
		if(level.var_2395e945[var_5e76f0af] == self)
		{
			continue;
		}
		if(!self function_1155d72a(level.var_2395e945[var_5e76f0af]))
		{
			continue;
		}
		if(function_5b49d38c(level.var_2395e945[var_5e76f0af]))
		{
			return 1;
		}
	}
	return 0;
}

/*
	Name: function_c532d79b
	Namespace: namespace_54e5555d
	Checksum: 0xE4C5D591
	Offset: 0x480
	Size: 0x99
	Parameters: 1
	Flags: None
*/
function function_c532d79b(var_6df23d98)
{
	foreach(var_3e94206a in level.var_e7a38025)
	{
		self function_30ffffe2(var_3e94206a, var_6df23d98);
	}
}

/*
	Name: function_2cf41c8d
	Namespace: namespace_54e5555d
	Checksum: 0x131CFAE
	Offset: 0x528
	Size: 0xB1
	Parameters: 2
	Flags: None
*/
function function_2cf41c8d(var_60282b10, var_6df23d98)
{
	foreach(var_3e94206a in level.var_e7a38025)
	{
		if(var_3e94206a == var_60282b10)
		{
			continue;
		}
		self function_30ffffe2(var_3e94206a, var_6df23d98);
	}
}

/*
	Name: function_c3d72c52
	Namespace: namespace_54e5555d
	Checksum: 0x1751078
	Offset: 0x5E8
	Size: 0x523
	Parameters: 0
	Flags: None
*/
function function_c3d72c52()
{
	var_3e94206a = self.var_b2e5a818;
	if(var_3e94206a == "spectator")
	{
		if(self function_33d0d4d7() && !level.var_2016892b)
		{
			var_3e94206a = function_6a47a2ce();
		}
		if(var_3e94206a == "spectator")
		{
			self function_c532d79b(1);
			self function_30ffffe2("freelook", 0);
			self function_30ffffe2("none", 1);
			self function_30ffffe2("localplayers", 1);
			return;
		}
	}
	var_21bdb21c = level.var_21bdb21c;
	switch(var_21bdb21c)
	{
		case 0:
		{
			self function_c532d79b(0);
			self function_30ffffe2("freelook", 0);
			self function_30ffffe2("none", 1);
			self function_30ffffe2("localplayers", 0);
			break;
		}
		case 3:
		{
			if(self function_33d0d4d7() && self function_1f906eca())
			{
				self function_c532d79b(0);
				self function_30ffffe2("none", 0);
				self function_30ffffe2("freelook", 0);
				self function_30ffffe2("localplayers", 1);
				break;
			}
		}
		case 1:
		{
			if(!level.var_de12b72f)
			{
				self function_c532d79b(1);
				self function_30ffffe2("none", 1);
				self function_30ffffe2("freelook", 0);
				self function_30ffffe2("localplayers", 1);
			}
			else if(isdefined(var_3e94206a) && isdefined(level.var_e7a38025[var_3e94206a]))
			{
				self function_30ffffe2(var_3e94206a, 1);
				self function_2cf41c8d(var_3e94206a, 0);
				self function_30ffffe2("freelook", 0);
				self function_30ffffe2("none", 0);
				self function_30ffffe2("localplayers", 1);
			}
			else
			{
				self function_c532d79b(0);
				self function_30ffffe2("freelook", 0);
				self function_30ffffe2("none", 0);
				self function_30ffffe2("localplayers", 1);
			}
			break;
		}
		case 2:
		{
			self function_c532d79b(1);
			self function_30ffffe2("freelook", 1);
			self function_30ffffe2("none", 1);
			self function_30ffffe2("localplayers", 1);
			break;
		}
	}
	if(isdefined(var_3e94206a) && isdefined(level.var_e7a38025[var_3e94206a]))
	{
		if(isdefined(level.var_996d4ccc[var_3e94206a].var_f31e08a7))
		{
			self function_30ffffe2("freelook", 1);
		}
		if(isdefined(level.var_996d4ccc[var_3e94206a].var_cd743a99))
		{
			self function_2cf41c8d(var_3e94206a, 1);
		}
	}
}

/*
	Name: function_7275c170
	Namespace: namespace_54e5555d
	Checksum: 0x3CE731DE
	Offset: 0xB18
	Size: 0xDD
	Parameters: 0
	Flags: None
*/
function function_7275c170()
{
	self function_c3d72c52();
	if(!self function_33d0d4d7())
	{
		return;
	}
	for(var_5e76f0af = 0; var_5e76f0af < level.var_2395e945.size; var_5e76f0af++)
	{
		if(!isdefined(level.var_2395e945[var_5e76f0af]))
		{
			continue;
		}
		if(level.var_2395e945[var_5e76f0af] == self)
		{
			continue;
		}
		if(!self function_1155d72a(level.var_2395e945[var_5e76f0af]))
		{
			continue;
		}
		level.var_2395e945[var_5e76f0af] function_c3d72c52();
	}
}

