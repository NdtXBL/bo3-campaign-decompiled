#using scripts\codescripts\struct;
#using scripts\shared\system_shared;

#namespace namespace_29281ef8;

/*
	Name: function_2dc19561
	Namespace: namespace_29281ef8
	Checksum: 0x44424142
	Offset: 0xD8
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("rewindobjects", &function_8c87d8eb, undefined, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_29281ef8
	Checksum: 0x42487158
	Offset: 0x118
	Size: 0xF
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	level.var_268a341b = [];
}

/*
	Name: function_226ad760
	Namespace: namespace_29281ef8
	Checksum: 0x129536B3
	Offset: 0x130
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function function_226ad760(var_ec74b091)
{
	level.var_268a341b[var_ec74b091] = [];
	function_2a02dcbd(var_ec74b091);
	function_d2ea0298(var_ec74b091);
	level thread function_252f2cb4(var_ec74b091);
}

/*
	Name: function_252f2cb4
	Namespace: namespace_29281ef8
	Checksum: 0xC478AB75
	Offset: 0x1A0
	Size: 0x193
	Parameters: 1
	Flags: None
*/
function function_252f2cb4(var_ec74b091)
{
	while(isdefined(level.var_268a341b[var_ec74b091]))
	{
		var_67bf4810 = function_391512da(level.var_268a341b[var_ec74b091]);
		for(var_c957f6b6 = 0; var_c957f6b6 < var_67bf4810.size; var_c957f6b6++)
		{
			var_2404104c = level.var_268a341b[var_ec74b091][var_67bf4810[var_c957f6b6]];
			if(!isdefined(var_2404104c))
			{
				break;
			}
			if(!isdefined(var_2404104c.var_279e4e97))
			{
				break;
			}
			var_40fc826 = function_391512da(var_2404104c.var_279e4e97);
			for(var_a3557c4d = 0; var_a3557c4d < var_40fc826.size; var_a3557c4d++)
			{
				var_8ae05e9f = var_40fc826[var_a3557c4d];
				if(var_2404104c.var_279e4e97[var_8ae05e9f].var_7df6a28d == 1)
				{
					continue;
				}
				if(level.var_627630ff >= var_8ae05e9f)
				{
					var_2404104c thread function_f7fb011a(var_ec74b091, var_8ae05e9f);
				}
			}
		}
		wait(0.1);
	}
}

/*
	Name: function_f7fb011a
	Namespace: namespace_29281ef8
	Checksum: 0x9B076F82
	Offset: 0x340
	Size: 0x213
	Parameters: 2
	Flags: None
*/
function function_f7fb011a(var_ec74b091, var_8ae05e9f)
{
	var_5dc5e20a = function_79c174a3(var_ec74b091);
	level endon("demo_jump" + var_ec74b091);
	self.var_279e4e97[var_8ae05e9f].var_7df6a28d = 1;
	var_2988b45c = 0;
	while(var_2988b45c == 0)
	{
		var_2988b45c = 1;
		/#
			namespace_33b293fd::function_a7ee953(isdefined(self.var_e8b48c79));
		#/
		var_cdc6dbca = function_391512da(self.var_e8b48c79);
		for(var_c957f6b6 = 0; var_c957f6b6 < var_cdc6dbca.size; var_c957f6b6++)
		{
			var_d25db0c6 = self.var_e8b48c79[var_cdc6dbca[var_c957f6b6]];
			var_39e0d2eb = var_cdc6dbca[var_c957f6b6];
			if(self.var_279e4e97[var_8ae05e9f].var_d25db0c6[var_39e0d2eb] == 1)
			{
				continue;
			}
			var_a4ad846c = var_8ae05e9f + var_d25db0c6.var_6994c84b * 1000;
			if(var_a4ad846c > level.var_627630ff)
			{
				var_2988b45c = 0;
				continue;
			}
			self.var_279e4e97[var_8ae05e9f].var_d25db0c6[var_39e0d2eb] = 1;
			level thread [[var_d25db0c6.var_86365a77]](var_ec74b091, var_a4ad846c, var_d25db0c6.var_6994c84b, self.var_279e4e97[var_8ae05e9f].var_72254e15);
		}
		wait(0.1);
	}
}

/*
	Name: function_2a02dcbd
	Namespace: namespace_29281ef8
	Checksum: 0x668ABCB9
	Offset: 0x560
	Size: 0x47
	Parameters: 1
	Flags: None
*/
function function_2a02dcbd(var_ec74b091)
{
	var_dd0dea95 = function_821584a4(var_ec74b091, "napalm");
	var_edace493 = 0;
}

/*
	Name: function_d2ea0298
	Namespace: namespace_29281ef8
	Checksum: 0x20280580
	Offset: 0x5B0
	Size: 0x37
	Parameters: 1
	Flags: None
*/
function function_d2ea0298(var_ec74b091)
{
	var_af04df00 = function_821584a4(var_ec74b091, "airstrike");
}

/*
	Name: function_821584a4
	Namespace: namespace_29281ef8
	Checksum: 0x8B62737
	Offset: 0x5F0
	Size: 0x107
	Parameters: 2
	Flags: None
*/
function function_821584a4(var_ec74b091, var_4be20d44)
{
	var_5dc5e20a = function_79c174a3(var_ec74b091);
	if(!isdefined(level.var_268a341b[var_ec74b091]))
	{
		level.var_268a341b[var_ec74b091] = [];
	}
	var_2404104c = function_e94201f6(var_ec74b091, var_4be20d44);
	if(!isdefined(var_2404104c))
	{
		var_2404104c = function_a8fb77bd();
		level.var_268a341b[var_ec74b091][level.var_268a341b[var_ec74b091].size] = var_2404104c;
	}
	var_2404104c.var_4be20d44 = var_4be20d44;
	var_2404104c.var_279e4e97 = [];
	var_2404104c thread function_74f2c428(var_ec74b091);
	return var_2404104c;
}

/*
	Name: function_74f2c428
	Namespace: namespace_29281ef8
	Checksum: 0x92202C4E
	Offset: 0x700
	Size: 0x18D
	Parameters: 1
	Flags: None
*/
function function_74f2c428(var_ec74b091)
{
	for(;;)
	{
		level waittill("demo_jump" + var_ec74b091);
		self.var_7df6a28d = 0;
		var_cdc6dbca = function_391512da(self.var_e8b48c79);
		for(var_c957f6b6 = 0; var_c957f6b6 < var_cdc6dbca.size; var_c957f6b6++)
		{
			self.var_e8b48c79[var_cdc6dbca[var_c957f6b6]].var_7df6a28d = 0;
		}
		var_94fe952f = function_391512da(self.var_279e4e97);
		for(var_c957f6b6 = 0; var_c957f6b6 < var_94fe952f.size; var_c957f6b6++)
		{
			self.var_279e4e97[var_94fe952f[var_c957f6b6]].var_7df6a28d = 0;
			var_cdc6dbca = function_391512da(self.var_279e4e97[var_94fe952f[var_c957f6b6]].var_d25db0c6);
			for(var_5e76f0af = 0; var_5e76f0af < var_cdc6dbca.size; var_5e76f0af++)
			{
				self.var_279e4e97[var_94fe952f[var_c957f6b6]].var_d25db0c6[var_cdc6dbca[var_5e76f0af]] = 0;
			}
		}
	}
}

/*
	Name: function_6c7beb53
	Namespace: namespace_29281ef8
	Checksum: 0xD3D3343F
	Offset: 0x898
	Size: 0xCB
	Parameters: 3
	Flags: None
*/
function function_6c7beb53(var_4be20d44, var_86365a77, var_34759367)
{
	if(!isdefined(self.var_e8b48c79))
	{
		self.var_e8b48c79 = [];
	}
	/#
		namespace_33b293fd::function_a7ee953(!isdefined(self.var_e8b48c79[var_4be20d44]));
	#/
	self.var_e8b48c79[var_4be20d44] = function_a8fb77bd();
	self.var_e8b48c79[var_4be20d44].var_7df6a28d = 0;
	self.var_e8b48c79[var_4be20d44].var_86365a77 = var_86365a77;
	self.var_e8b48c79[var_4be20d44].var_6994c84b = var_34759367;
}

/*
	Name: function_e94201f6
	Namespace: namespace_29281ef8
	Checksum: 0x4326E67A
	Offset: 0x970
	Size: 0x97
	Parameters: 2
	Flags: None
*/
function function_e94201f6(var_ec74b091, var_4be20d44)
{
	if(!isdefined(level.var_268a341b[var_ec74b091]))
	{
		return undefined;
	}
	for(var_f33365a3 = 0; var_f33365a3 < level.var_268a341b[var_ec74b091].size; var_f33365a3++)
	{
		if(level.var_268a341b[var_ec74b091][var_f33365a3].var_4be20d44 == var_4be20d44)
		{
			return level.var_268a341b[var_ec74b091][var_f33365a3];
		}
	}
	return undefined;
}

/*
	Name: function_7877f192
	Namespace: namespace_29281ef8
	Checksum: 0xFB2F8647
	Offset: 0xA10
	Size: 0x137
	Parameters: 2
	Flags: None
*/
function function_7877f192(var_a4ad846c, var_72254e15)
{
	if(isdefined(self.var_279e4e97[var_a4ad846c]))
	{
		return;
	}
	self.var_279e4e97[var_a4ad846c] = function_a8fb77bd();
	self.var_279e4e97[var_a4ad846c].var_72254e15 = var_72254e15;
	self.var_279e4e97[var_a4ad846c].var_7df6a28d = 0;
	if(isdefined(self.var_e8b48c79))
	{
		var_cdc6dbca = function_391512da(self.var_e8b48c79);
		self.var_279e4e97[var_a4ad846c].var_d25db0c6 = [];
		for(var_c957f6b6 = 0; var_c957f6b6 < var_cdc6dbca.size; var_c957f6b6++)
		{
			var_39e0d2eb = var_cdc6dbca[var_c957f6b6];
			self.var_279e4e97[var_a4ad846c].var_d25db0c6[var_39e0d2eb] = 0;
		}
	}
}

/*
	Name: function_d621084d
	Namespace: namespace_29281ef8
	Checksum: 0x7070BB6
	Offset: 0xB50
	Size: 0x14F
	Parameters: 5
	Flags: None
*/
function function_d621084d(var_ec74b091, var_e4cdc5c3, var_56f00a76, var_a4ad846c, var_62240a71)
{
	level endon("demo_jump" + var_ec74b091);
	var_e4e6811a = level.var_627630ff - var_a4ad846c * 0.001;
	/#
		namespace_33b293fd::function_a7ee953(var_62240a71 > 0);
	#/
	var_cfaac96 = 1;
	if(var_e4e6811a < 0.02)
	{
		var_cfaac96 = 0;
	}
	if(var_e4e6811a < var_62240a71)
	{
		var_5f3b356d = var_62240a71 - var_e4e6811a;
		if(var_cfaac96)
		{
			var_7559cd79 = function_180453be(var_e4cdc5c3, var_56f00a76, var_e4e6811a / var_62240a71);
			self.var_722885f3 = var_7559cd79;
		}
		self function_a96a2721(var_56f00a76, var_5f3b356d, 0, 0);
		return 1;
	}
	else
	{
		self.var_722885f3 = var_56f00a76;
		return 0;
	}
}

/*
	Name: function_9a7ea2eb
	Namespace: namespace_29281ef8
	Checksum: 0xFA1944
	Offset: 0xCA8
	Size: 0x10F
	Parameters: 6
	Flags: None
*/
function function_9a7ea2eb(var_ec74b091, var_6ab6f4fd, var_a4ad846c, var_62240a71, var_dba3eff3, var_4573206)
{
	level endon("demo_jump" + var_ec74b091);
	var_e4e6811a = level.var_627630ff - var_a4ad846c * 0.001;
	if(!isdefined(var_dba3eff3))
	{
		var_dba3eff3 = 0;
	}
	if(!isdefined(var_4573206))
	{
		var_4573206 = 0;
	}
	/#
		namespace_33b293fd::function_a7ee953(var_62240a71 > 0);
	#/
	if(var_e4e6811a < var_62240a71)
	{
		var_8a00a6a7 = var_62240a71 - var_e4e6811a;
		self function_c0b6566f(var_6ab6f4fd, var_8a00a6a7, var_dba3eff3, var_4573206);
		return 1;
	}
	else
	{
		self.var_6ab6f4fd = var_6ab6f4fd;
		return 0;
	}
}

/*
	Name: function_1cf87f21
	Namespace: namespace_29281ef8
	Checksum: 0x55287B8C
	Offset: 0xDC0
	Size: 0x2F
	Parameters: 2
	Flags: None
*/
function function_1cf87f21(var_ec74b091, var_c8ff0c86)
{
	while(var_c8ff0c86 > level.var_627630ff)
	{
		wait(0.01);
	}
}

/*
	Name: function_424c7d60
	Namespace: namespace_29281ef8
	Checksum: 0xE0049DA6
	Offset: 0xDF8
	Size: 0x73
	Parameters: 2
	Flags: None
*/
function function_424c7d60(var_d88c7f2f, var_ec74b091)
{
	var_d88c7f2f endon("hash_31cd1834");
	var_5dc5e20a = function_79c174a3(var_ec74b091);
	level waittill("demo_jump" + var_ec74b091);
	var_d88c7f2f notify("hash_dc8c8404");
	var_d88c7f2f function_9b6966df();
}

/*
	Name: function_180453be
	Namespace: namespace_29281ef8
	Checksum: 0x3DE87540
	Offset: 0xE78
	Size: 0xA1
	Parameters: 3
	Flags: None
*/
function function_180453be(var_e4cdc5c3, var_56f00a76, var_2e29d79e)
{
	var_22f060 = (var_e4cdc5c3[0] + var_56f00a76[0] - var_e4cdc5c3[0] * var_2e29d79e, var_e4cdc5c3[1] + var_56f00a76[1] - var_e4cdc5c3[1] * var_2e29d79e, var_e4cdc5c3[2] + var_56f00a76[2] - var_e4cdc5c3[2] * var_2e29d79e);
	return var_22f060;
}

