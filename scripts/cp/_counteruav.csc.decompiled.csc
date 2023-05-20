#using scripts\codescripts\struct;
#using scripts\shared\clientfield_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace namespace_65ee1df9;

/*
	Name: function_2dc19561
	Namespace: namespace_65ee1df9
	Checksum: 0x9E244FDB
	Offset: 0x130
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("counteruav", &function_8c87d8eb, undefined, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_65ee1df9
	Checksum: 0x50F4CE2E
	Offset: 0x170
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	namespace_71e9cb84::function_50f16166("scriptmover", "counteruav", 1, 1, "int", &function_ab1f9ea1, 0, 0);
}

/*
	Name: function_ab1f9ea1
	Namespace: namespace_65ee1df9
	Checksum: 0xE529A53B
	Offset: 0x1C8
	Size: 0x10D
	Parameters: 7
	Flags: None
*/
function function_ab1f9ea1(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(!isdefined(level.var_9caa1930))
	{
		level.var_9caa1930 = [];
	}
	if(!isdefined(level.var_9caa1930[var_ec74b091]))
	{
		level.var_9caa1930[var_ec74b091] = 0;
	}
	var_5dc5e20a = function_79c174a3(var_ec74b091);
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_5dc5e20a));
	#/
	if(var_9193c732)
	{
		level.var_9caa1930[var_ec74b091]++;
		self thread function_8752903c(var_ec74b091);
		var_5dc5e20a function_b17b1065(1);
	}
	else
	{
		self notify("hash_1d3810db");
	}
}

/*
	Name: function_8752903c
	Namespace: namespace_65ee1df9
	Checksum: 0x32428AE9
	Offset: 0x2E0
	Size: 0xDB
	Parameters: 1
	Flags: None
*/
function function_8752903c(var_ec74b091)
{
	self namespace_82b91a51::function_5b7e3888("entityshutdown", "counteruav_off");
	level.var_9caa1930[var_ec74b091]--;
	if(level.var_9caa1930[var_ec74b091] < 0)
	{
		level.var_9caa1930[var_ec74b091] = 0;
	}
	var_5dc5e20a = function_79c174a3(var_ec74b091);
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_5dc5e20a));
	#/
	if(level.var_9caa1930[var_ec74b091] == 0)
	{
		var_5dc5e20a function_b17b1065(0);
	}
}

