#using scripts\shared\clientfield_shared;
#using scripts\shared\system_shared;

#namespace namespace_aa481297;

/*
	Name: function_2dc19561
	Namespace: namespace_aa481297
	Checksum: 0xEA56AE85
	Offset: 0x130
	Size: 0x3B
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("cp_mobile_armory", &function_8c87d8eb, &function_5b6b9132, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_aa481297
	Checksum: 0x9980BAFC
	Offset: 0x178
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	namespace_71e9cb84::function_50f16166("toplayer", "mobile_armory_cac", 1, 4, "int", &function_dd709a6d, 0, 0);
}

/*
	Name: function_5b6b9132
	Namespace: namespace_aa481297
	Checksum: 0x99EC1590
	Offset: 0x1D0
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_5b6b9132()
{
}

/*
	Name: function_dd709a6d
	Namespace: namespace_aa481297
	Checksum: 0x2C5F84B4
	Offset: 0x1E0
	Size: 0x1B5
	Parameters: 7
	Flags: None
*/
function function_dd709a6d(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(function_2017fed1(var_ec74b091, 0))
	{
		return;
	}
	if(!isdefined(self.var_c8b2875a))
	{
		self.var_c8b2875a = function_5307ab20(var_ec74b091, "ChooseClass_InGame");
	}
	if(isdefined(self.var_c8b2875a))
	{
		if(var_9193c732)
		{
			function_3a9588ea(var_ec74b091, self.var_c8b2875a, "isInMobileArmory", 1);
			var_5ebe0017 = var_9193c732 >> 1;
			if(var_5ebe0017)
			{
				var_91475d5f = var_9193c732 >> 2;
				var_91475d5f = var_91475d5f + 6;
				function_3a9588ea(var_ec74b091, self.var_c8b2875a, "fieldOpsKitClassNum", var_91475d5f);
			}
			function_2f6b6a4c(var_ec74b091, self.var_c8b2875a);
		}
		else
		{
			function_3a9588ea(var_ec74b091, self.var_c8b2875a, "close_current_menu", 1);
			function_2b74b70a(var_ec74b091, self.var_c8b2875a);
			self.var_c8b2875a = undefined;
		}
	}
}

