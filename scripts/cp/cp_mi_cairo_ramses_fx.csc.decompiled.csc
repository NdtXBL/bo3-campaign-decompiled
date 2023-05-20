#using scripts\codescripts\struct;
#using scripts\shared\clientfield_shared;
#using scripts\shared\fx_shared;

#namespace namespace_b9254c21;

/*
	Name: function_d290ebfa
	Namespace: namespace_b9254c21
	Checksum: 0x6D6DB820
	Offset: 0x108
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	namespace_71e9cb84::function_50f16166("world", "defend_fog_banks", 1, 1, "int", &function_c109794d, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "start_fog_banks", 1, 1, "int", &function_d36983d1, 0, 0);
}

/*
	Name: function_c109794d
	Namespace: namespace_b9254c21
	Checksum: 0x5CC72003
	Offset: 0x1A8
	Size: 0xCD
	Parameters: 7
	Flags: None
*/
function function_c109794d(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	for(var_ec74b091 = 0; var_ec74b091 < level.var_ec485aa4.size; var_ec74b091++)
	{
		function_ca48e0c8(var_ec74b091, -1, 1, 1);
		function_c1dc0657(var_ec74b091, 2);
		function_2f183a94(var_ec74b091, 2);
		function_4c5bfec4(var_ec74b091, 2);
	}
}

/*
	Name: function_d36983d1
	Namespace: namespace_b9254c21
	Checksum: 0xC03E9B45
	Offset: 0x280
	Size: 0xC5
	Parameters: 7
	Flags: None
*/
function function_d36983d1(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	for(var_ec74b091 = 0; var_ec74b091 < level.var_ec485aa4.size; var_ec74b091++)
	{
		function_ca48e0c8(var_ec74b091, -1, 0, 1);
		function_c1dc0657(var_ec74b091, 1);
		function_2f183a94(var_ec74b091, 1);
		function_4c5bfec4(var_ec74b091, 1);
	}
}

