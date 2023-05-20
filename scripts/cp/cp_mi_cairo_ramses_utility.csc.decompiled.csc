#using scripts\codescripts\struct;
#using scripts\cp\_load;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\postfx_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace namespace_3a723085;

/*
	Name: function_2dc19561
	Namespace: namespace_3a723085
	Checksum: 0xC0EEF043
	Offset: 0x208
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("ramses_util", &function_8c87d8eb, undefined, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_3a723085
	Checksum: 0x5DA04917
	Offset: 0x248
	Size: 0xDB
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	namespace_71e9cb84::function_50f16166("toplayer", "ramses_sun_color", 1, 1, "int", &function_93fe9aa, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "dni_eye", 1, 1, "int", &function_1561b96d, 1, 0);
	namespace_71e9cb84::function_50f16166("scriptmover", "hide_graphic_content", 1, 1, "counter", &function_1edfa950, 0, 0);
}

/*
	Name: function_93fe9aa
	Namespace: namespace_3a723085
	Checksum: 0x3CF99AA2
	Offset: 0x330
	Size: 0xA3
	Parameters: 7
	Flags: None
*/
function function_93fe9aa(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		function_6c1294b8("r_sunTweak", 1);
		function_6c1294b8("r_sunColor", "1 0.8549 0.6235 1");
	}
	else
	{
		function_6c1294b8("r_sunTweak", 0);
	}
}

/*
	Name: function_1561b96d
	Namespace: namespace_3a723085
	Checksum: 0xB67B988
	Offset: 0x3E0
	Size: 0x9B
	Parameters: 7
	Flags: None
*/
function function_1561b96d(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		self function_e7f6dc4e(var_ec74b091, 0, "scriptVector0", 0, 1, 0, 0);
	}
	else
	{
		self function_e7f6dc4e(var_ec74b091, 0, "scriptVector0", 0, 0, 0, 0);
	}
}

/*
	Name: function_1edfa950
	Namespace: namespace_3a723085
	Checksum: 0xFF352917
	Offset: 0x488
	Size: 0x73
	Parameters: 7
	Flags: None
*/
function function_1edfa950(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(namespace_82b91a51::function_179773ff())
	{
		if(var_9193c732 == 1)
		{
			self function_50ccee8d();
		}
	}
}

