#using scripts\codescripts\struct;
#using scripts\shared\clientfield_shared;
#using scripts\shared\fx_shared;

#namespace namespace_bbfcd64f;

/*
	Name: function_d290ebfa
	Namespace: namespace_bbfcd64f
	Checksum: 0x9BAAA0AB
	Offset: 0xF8
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	namespace_71e9cb84::function_50f16166("world", "set_fog_bank", 1, 2, "int", &function_c49f36a3, 0, 0);
}

/*
	Name: function_c49f36a3
	Namespace: namespace_bbfcd64f
	Checksum: 0xAD1477C8
	Offset: 0x150
	Size: 0x12D
	Parameters: 7
	Flags: None
*/
function function_c49f36a3(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 0)
	{
		var_3a456a21 = 1;
	}
	else if(var_9193c732 == 1)
	{
		var_3a456a21 = 2;
	}
	else if(var_9193c732 == 2)
	{
		var_3a456a21 = 3;
	}
	for(var_ec74b091 = 0; var_ec74b091 < level.var_ec485aa4.size; var_ec74b091++)
	{
		function_c1dc0657(var_ec74b091, var_3a456a21);
		if(var_3a456a21 == 3)
		{
			function_2f183a94(var_ec74b091, var_3a456a21);
			continue;
		}
		if(var_3a456a21 == 1)
		{
			function_2f183a94(var_ec74b091, var_3a456a21);
		}
	}
}

