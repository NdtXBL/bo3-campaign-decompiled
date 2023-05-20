#using scripts\codescripts\struct;
#using scripts\cp\_load;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\util_shared;

#namespace namespace_1bcb6ea8;

/*
	Name: function_d290ebfa
	Namespace: namespace_1bcb6ea8
	Checksum: 0xB428C5BF
	Offset: 0x198
	Size: 0x13
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	function_2ea898a8();
}

/*
	Name: function_2ea898a8
	Namespace: namespace_1bcb6ea8
	Checksum: 0x7FDA2DA8
	Offset: 0x1B8
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_2ea898a8()
{
	namespace_71e9cb84::function_50f16166("world", "light_church_int_cath_all", 1, 1, "int", &function_1fa35d0a, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "toggle_cathedral_fog_banks", 1, 1, "int", &function_4ab4a437, 0, 0);
}

/*
	Name: function_1fa35d0a
	Namespace: namespace_1bcb6ea8
	Checksum: 0xA37E4494
	Offset: 0x258
	Size: 0x83
	Parameters: 7
	Flags: None
*/
function function_1fa35d0a(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		namespace_80983c42::function_80983c42("light_church_int_cath_all");
	}
	else
	{
		namespace_80983c42::function_67e7a937("light_church_int_cath_all");
	}
}

/*
	Name: function_4ab4a437
	Namespace: namespace_1bcb6ea8
	Checksum: 0xF70A2D7C
	Offset: 0x2E8
	Size: 0x8B
	Parameters: 7
	Flags: None
*/
function function_4ab4a437(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	var_4780a11e = 0;
	if(var_9193c732 == 1)
	{
		var_4780a11e = 2;
	}
	else
	{
		var_4780a11e = 0;
	}
	function_c1dc0657(var_ec74b091, var_4780a11e);
}

