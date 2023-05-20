#using scripts\cp\_burnplayer;
#using scripts\cp\_callbacks;
#using scripts\cp\_claymore;
#using scripts\cp\_explosive_bolt;
#using scripts\shared\ai_shared;
#using scripts\shared\audio_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\filter_shared;
#using scripts\shared\footsteps_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\vehicles\_driving_fx;
#using scripts\shared\weapons\_sticky_grenade;

#namespace namespace_dabbe128;

/*
	Name: function_2dc19561
	Namespace: namespace_dabbe128
	Checksum: 0xA6D82ACF
	Offset: 0x2A0
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("callback", &function_8c87d8eb, undefined, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_dabbe128
	Checksum: 0x9BEDC0D2
	Offset: 0x2E0
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	level thread function_1234506c();
}

/*
	Name: function_1234506c
	Namespace: namespace_dabbe128
	Checksum: 0x730783FA
	Offset: 0x308
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_1234506c()
{
	level.var_81b28293 = &function_5e92b6fc;
	level.var_840039ee = &function_80bc4653;
	level.var_71efe275 = &function_4444b99f;
	level.var_b4538945 = &function_fd677ed2;
	level.var_731f70a = &namespace_cade3606::function_3ebc4867;
	level.var_7bf94c43 = &namespace_80983c42::function_27ebda3c;
	level.var_6c613045 = &function_eea4122f;
}

/*
	Name: function_80bc4653
	Namespace: namespace_dabbe128
	Checksum: 0x88DC56C9
	Offset: 0x3C0
	Size: 0x93
	Parameters: 1
	Flags: None
*/
function function_80bc4653(var_ec74b091)
{
	/#
		function_895b00("Dev Block strings are not supported" + var_ec74b091);
	#/
	if(isdefined(level.var_a699977c))
	{
		[[level.var_a699977c]](var_ec74b091);
	}
	if(isdefined(level.var_b9cae92))
	{
		[[level.var_b9cae92]](var_ec74b091);
	}
	function_dabbe128("hash_da8d7d74", var_ec74b091);
}

/*
	Name: function_5e92b6fc
	Namespace: namespace_dabbe128
	Checksum: 0xA79090FD
	Offset: 0x460
	Size: 0xD3
	Parameters: 1
	Flags: None
*/
function function_5e92b6fc(var_ec74b091)
{
	self endon("hash_d5da096");
	var_5dc5e20a = function_79c174a3(var_ec74b091);
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_5dc5e20a));
	#/
	if(isdefined(level.var_edf42b0a))
	{
		var_5dc5e20a function_e525ae24(level.var_edf42b0a);
	}
	if(self function_b80a9a41())
	{
		function_dabbe128("hash_842e788a", var_ec74b091);
	}
	function_dabbe128("hash_bc12b61f", var_ec74b091);
}

/*
	Name: function_fd677ed2
	Namespace: namespace_dabbe128
	Checksum: 0xAE349612
	Offset: 0x540
	Size: 0x28B
	Parameters: 1
	Flags: None
*/
function function_fd677ed2(var_ec74b091)
{
	self endon("hash_d5da096");
	if(!isdefined(self.var_fe311e35))
	{
		/#
			function_895b00("Dev Block strings are not supported");
		#/
		return;
	}
	if(self function_65f192a6())
	{
		if(isdefined(level.var_2ea7cec5))
		{
			self thread [[level.var_2ea7cec5]](var_ec74b091);
		}
	}
	if(self.var_fe311e35 == "missile")
	{
		if(isdefined(level.var_6c613045))
		{
			self thread [[level.var_6c613045]](var_ec74b091);
		}
		switch(self.var_dfcc01fd.var_4be20d44)
		{
			case "explosive_bolt":
			{
				self thread namespace_3d2de961::function_ab1f9ea1(var_ec74b091);
				break;
			}
			case "claymore":
			{
				self thread namespace_7df5be44::function_ab1f9ea1(var_ec74b091);
				break;
			}
		}
	}
	else if(self.var_fe311e35 == "vehicle" || self.var_fe311e35 == "helicopter" || self.var_fe311e35 == "plane")
	{
		if(isdefined(level.var_1cdec9f6))
		{
			self thread [[level.var_1cdec9f6]](var_ec74b091);
		}
		self thread namespace_96fa87af::function_bb617896(var_ec74b091, undefined, 0, 1);
		self thread namespace_96fa87af::function_db208247(var_ec74b091, undefined, 0, 1);
		if(self.var_cba6bd1d == "plane" || self.var_cba6bd1d == "helicopter")
		{
			self thread namespace_96fa87af::function_c0362d70();
		}
		else
		{
			self thread namespace_b3cd289f::function_789b5418(var_ec74b091);
			self thread namespace_96fa87af::function_e2439cba(var_ec74b091);
		}
	}
	else if(self.var_fe311e35 == "actor")
	{
		self function_ab262ae5();
		if(isdefined(level.var_45ce9961))
		{
			self thread [[level.var_45ce9961]](var_ec74b091);
		}
	}
}

/*
	Name: function_4444b99f
	Namespace: namespace_dabbe128
	Checksum: 0x27C5D29E
	Offset: 0x7D8
	Size: 0x13
	Parameters: 2
	Flags: None
*/
function function_4444b99f(var_ec74b091, var_5dc5e20a)
{
}

/*
	Name: function_8ae1d4cc
	Namespace: namespace_dabbe128
	Checksum: 0x9692397E
	Offset: 0x7F8
	Size: 0x89
	Parameters: 7
	Flags: None
*/
function function_8ae1d4cc(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	self.var_5ff63112 = var_9193c732;
	/#
		function_895b00("Dev Block strings are not supported");
	#/
	if(var_9193c732)
	{
		self notify("hash_5ff63112");
	}
	else
	{
		self notify("hash_fa8e1e14");
	}
}

/*
	Name: function_978d5cff
	Namespace: namespace_dabbe128
	Checksum: 0x6D02779B
	Offset: 0x890
	Size: 0x89
	Parameters: 7
	Flags: None
*/
function function_978d5cff(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	self.var_8790b7c1 = var_9193c732;
	/#
		function_895b00("Dev Block strings are not supported");
	#/
	if(var_9193c732)
	{
		self notify("hash_8790b7c1");
	}
	else
	{
		self notify("hash_6248b357");
	}
}

/*
	Name: function_1a338a6
	Namespace: namespace_dabbe128
	Checksum: 0x6E137C89
	Offset: 0x928
	Size: 0x47
	Parameters: 7
	Flags: None
*/
function function_1a338a6(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	self.var_f7f1e7b9 = var_9193c732;
}

