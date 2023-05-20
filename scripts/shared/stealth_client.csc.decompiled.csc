#using scripts\codescripts\struct;
#using scripts\cp\_load;
#using scripts\shared\clientfield_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace namespace_f2cf86cc;

/*
	Name: function_2dc19561
	Namespace: namespace_f2cf86cc
	Checksum: 0xF825C14D
	Offset: 0x170
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("stealth_client", &function_8c87d8eb, undefined, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_f2cf86cc
	Checksum: 0xF0AB345B
	Offset: 0x1B0
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	function_2ea898a8();
	level.var_39a2f1a5 = 0;
	level.var_ba40d63 = 0;
}

/*
	Name: function_2ea898a8
	Namespace: namespace_f2cf86cc
	Checksum: 0xEDEE5511
	Offset: 0x1E8
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_2ea898a8()
{
	namespace_71e9cb84::function_50f16166("toplayer", "stealth_sighting", 1, 2, "int", &function_f35fe4e2, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "stealth_alerted", 1, 1, "int", &function_b1ff0e4c, 0, 0);
}

/*
	Name: function_f35fe4e2
	Namespace: namespace_f2cf86cc
	Checksum: 0xD459BDD0
	Offset: 0x288
	Size: 0xA1
	Parameters: 7
	Flags: None
*/
function function_f35fe4e2(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 > 0)
	{
		if(level.var_ba40d63 == 0 || var_9193c732 == 2)
		{
			level.var_ba40d63 = var_9193c732;
			self thread function_b557fc53();
		}
	}
	else
	{
		level.var_ba40d63 = 0;
		self notify("hash_72012023");
	}
}

/*
	Name: function_b1ff0e4c
	Namespace: namespace_f2cf86cc
	Checksum: 0x3FAE3892
	Offset: 0x338
	Size: 0x93
	Parameters: 7
	Flags: None
*/
function function_b1ff0e4c(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		if(level.var_39a2f1a5 == 0)
		{
			self thread function_d473128e();
			level.var_39a2f1a5 = 1;
		}
	}
	else
	{
		self notify("hash_71c558d9");
		level.var_39a2f1a5 = 0;
	}
}

/*
	Name: function_b557fc53
	Namespace: namespace_f2cf86cc
	Checksum: 0x3C15178A
	Offset: 0x3D8
	Size: 0x9D
	Parameters: 0
	Flags: None
*/
function function_b557fc53()
{
	self notify("hash_72012023");
	self endon("hash_72012023");
	self endon("hash_71c558d9");
	self endon("hash_128f8789");
	self endon("hash_643a7daf");
	var_c6b203b0 = 3;
	if(level.var_ba40d63 == 2)
	{
		var_c6b203b0 = 1;
	}
	while(isdefined(self))
	{
		self function_921a1574(self, "uin_stealth_beep");
		wait(var_c6b203b0);
	}
}

/*
	Name: function_d473128e
	Namespace: namespace_f2cf86cc
	Checksum: 0x568F94C3
	Offset: 0x480
	Size: 0x75
	Parameters: 0
	Flags: None
*/
function function_d473128e()
{
	self notify("hash_71c558d9");
	self endon("hash_71c558d9");
	self endon("hash_128f8789");
	self endon("hash_643a7daf");
	if(level.var_ba40d63 == 1)
	{
		self function_921a1574(self, "uin_stealth_hint");
	}
	while(isdefined(self))
	{
		wait(4);
	}
}

