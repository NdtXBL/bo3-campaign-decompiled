#using scripts\shared\clientfield_shared;
#using scripts\shared\system_shared;

#namespace namespace_c8c4714f;

/*
	Name: function_2dc19561
	Namespace: namespace_c8c4714f
	Checksum: 0x183D495F
	Offset: 0x100
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("destructible", &function_8c87d8eb, undefined, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_c8c4714f
	Checksum: 0x5FC646DB
	Offset: 0x140
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	namespace_71e9cb84::function_50f16166("scriptmover", "start_destructible_explosion", 1, 11, "int", &function_cec10937, 0, 0);
}

/*
	Name: function_6371bdac
	Namespace: namespace_c8c4714f
	Checksum: 0x69261B71
	Offset: 0x198
	Size: 0x73
	Parameters: 2
	Flags: None
*/
function function_6371bdac(var_ec74b091, var_c7b6e8e4)
{
	function_5e09918e(var_ec74b091, "grenade_rumble", var_c7b6e8e4);
	function_79c174a3(var_ec74b091) function_9cf04c2e(0.5, 0.5, var_c7b6e8e4, 800);
}

/*
	Name: function_cec10937
	Namespace: namespace_c8c4714f
	Checksum: 0x38A4089C
	Offset: 0x218
	Size: 0x1A3
	Parameters: 7
	Flags: None
*/
function function_cec10937(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 0)
	{
		return;
	}
	var_824b40e2 = var_9193c732 & 1 << 10;
	if(var_824b40e2)
	{
		var_9193c732 = var_9193c732 - 1 << 10;
	}
	var_e5f5d8f8 = 0.3;
	var_34aa7e9b = var_9193c732 & 1 << 9;
	if(var_34aa7e9b)
	{
		var_e5f5d8f8 = 0.5;
		var_9193c732 = var_9193c732 - 1 << 9;
	}
	if(isdefined(var_824b40e2) && var_824b40e2)
	{
		function_534b3cba(var_ec74b091, self.var_722885f3, var_9193c732, var_9193c732 / 2, var_e5f5d8f8, 25, 400);
	}
	else
	{
		function_534b3cba(var_ec74b091, self.var_722885f3, var_9193c732, var_9193c732 - 1, var_e5f5d8f8, 25, 400);
	}
	function_6371bdac(var_ec74b091, self.var_722885f3);
	function_ca76ff24(self.var_722885f3, 200, 800);
}

