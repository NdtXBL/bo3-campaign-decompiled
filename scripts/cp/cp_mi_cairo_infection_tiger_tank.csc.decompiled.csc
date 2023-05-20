#using scripts\codescripts\struct;
#using scripts\shared\clientfield_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace namespace_8a035955;

/*
	Name: function_2dc19561
	Namespace: namespace_8a035955
	Checksum: 0xD0A90D85
	Offset: 0x178
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("tiger_tank", &function_8c87d8eb, undefined, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_8a035955
	Checksum: 0xDE87FB5E
	Offset: 0x1B8
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	namespace_71e9cb84::function_50f16166("vehicle", "tiger_tank_retreat_fx", 1, 1, "int", &function_6c906721, 0, 0);
	namespace_71e9cb84::function_50f16166("vehicle", "tiger_tank_disable_sfx", 1, 1, "int", &function_c2c3fb69, 0, 0);
}

/*
	Name: function_6c906721
	Namespace: namespace_8a035955
	Checksum: 0x17FD4941
	Offset: 0x258
	Size: 0xAB
	Parameters: 7
	Flags: None
*/
function function_6c906721(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		self function_ea0e7704(var_ec74b091, "retreat_fx", "explosions/fx_exp_grenade_smoke", 1, self.var_722885f3);
	}
	else
	{
		self function_be968491(var_ec74b091, "retreat_fx", "explosions/fx_exp_grenade_smoke");
	}
}

/*
	Name: function_be968491
	Namespace: namespace_8a035955
	Checksum: 0x9C060A37
	Offset: 0x310
	Size: 0x10B
	Parameters: 3
	Flags: None
*/
function function_be968491(var_ec74b091, var_7b81749, var_fc9f79e7)
{
	if(!isdefined(self.var_62bb476b))
	{
		self.var_62bb476b = [];
	}
	if(!isdefined(self.var_62bb476b[var_ec74b091]))
	{
		self.var_62bb476b[var_ec74b091] = [];
	}
	if(!isdefined(self.var_62bb476b[var_ec74b091][var_7b81749]))
	{
		self.var_62bb476b[var_ec74b091][var_7b81749] = [];
	}
	if(isdefined(var_fc9f79e7) && isdefined(self.var_62bb476b[var_ec74b091][var_7b81749][var_fc9f79e7]))
	{
		var_ac46de76 = self.var_62bb476b[var_ec74b091][var_7b81749][var_fc9f79e7];
		function_28573e36(var_ec74b091, var_ac46de76, 0);
		self.var_62bb476b[var_ec74b091][var_7b81749][var_fc9f79e7] = undefined;
	}
}

/*
	Name: function_ea0e7704
	Namespace: namespace_8a035955
	Checksum: 0x541D25BC
	Offset: 0x428
	Size: 0x15D
	Parameters: 7
	Flags: None
*/
function function_ea0e7704(var_ec74b091, var_7b81749, var_fc9f79e7, var_cffd17f8, var_c55dcd82, var_d230ad83, var_766fbf83)
{
	if(!isdefined(var_cffd17f8))
	{
		var_cffd17f8 = 1;
	}
	self function_be968491(var_ec74b091, var_7b81749, var_fc9f79e7);
	if(var_cffd17f8)
	{
		self function_400e6e82(var_ec74b091, var_7b81749, 0);
	}
	if(isdefined(var_d230ad83) && isdefined(var_766fbf83))
	{
		var_ac46de76 = function_fd4ba5e1(var_ec74b091, var_fc9f79e7, var_c55dcd82, var_d230ad83, var_766fbf83);
	}
	else if(isdefined(var_d230ad83))
	{
		var_ac46de76 = function_fd4ba5e1(var_ec74b091, var_fc9f79e7, var_c55dcd82, var_d230ad83);
	}
	else
	{
		var_ac46de76 = function_fd4ba5e1(var_ec74b091, var_fc9f79e7, var_c55dcd82);
	}
	self.var_62bb476b[var_ec74b091][var_7b81749][var_fc9f79e7] = var_ac46de76;
}

/*
	Name: function_400e6e82
	Namespace: namespace_8a035955
	Checksum: 0x9408F114
	Offset: 0x590
	Size: 0x11D
	Parameters: 3
	Flags: None
*/
function function_400e6e82(var_ec74b091, var_7b81749, var_91599cfb)
{
	if(!isdefined(var_91599cfb))
	{
		var_91599cfb = 1;
	}
	if(isdefined(self.var_62bb476b) && isdefined(self.var_62bb476b[var_ec74b091]) && isdefined(self.var_62bb476b[var_ec74b091][var_7b81749]))
	{
		var_a15d7eed = function_391512da(self.var_62bb476b[var_ec74b091][var_7b81749]);
		for(var_c957f6b6 = 0; var_c957f6b6 < var_a15d7eed.size; var_c957f6b6++)
		{
			function_28573e36(var_ec74b091, self.var_62bb476b[var_ec74b091][var_7b81749][var_a15d7eed[var_c957f6b6]], var_91599cfb);
			self.var_62bb476b[var_ec74b091][var_7b81749][var_a15d7eed[var_c957f6b6]] = undefined;
		}
	}
}

/*
	Name: function_c2c3fb69
	Namespace: namespace_8a035955
	Checksum: 0x64625866
	Offset: 0x6B8
	Size: 0x73
	Parameters: 7
	Flags: None
*/
function function_c2c3fb69(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		self function_bd96a419();
	}
	else
	{
		self function_bab65d14();
	}
}

