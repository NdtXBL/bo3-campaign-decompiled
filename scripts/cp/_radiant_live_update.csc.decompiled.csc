#using scripts\shared\system_shared;

#namespace namespace_12f393e5;

/*
	Name: function_2dc19561
	Namespace: namespace_12f393e5
	Checksum: 0x6FEDD873
	Offset: 0x98
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	/#
		namespace_bea63b8a::function_50f16166("Dev Block strings are not supported", &function_8c87d8eb, undefined, undefined);
	#/
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_12f393e5
	Checksum: 0x85AD79B0
	Offset: 0xD8
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	/#
		thread function_a864be3e();
	#/
}

/*
	Name: function_a864be3e
	Namespace: namespace_12f393e5
	Checksum: 0x82E7522D
	Offset: 0x100
	Size: 0x61
	Parameters: 0
	Flags: None
*/
function function_a864be3e()
{
	/#
		while(1)
		{
			level waittill("hash_8f85844c", var_f360ca4e);
			if(isdefined(var_f360ca4e))
			{
				level thread function_27d8985f(var_f360ca4e);
			}
			else
			{
				level notify("hash_184e13fa");
			}
		}
	#/
}

/*
	Name: function_27d8985f
	Namespace: namespace_12f393e5
	Checksum: 0x2FFFCD7E
	Offset: 0x170
	Size: 0x97
	Parameters: 1
	Flags: None
*/
function function_27d8985f(var_f360ca4e)
{
	/#
		self endon("hash_184e13fa");
		while(isdefined(var_f360ca4e) && isdefined(var_f360ca4e.var_722885f3))
		{
			function_30077d70(var_f360ca4e.var_722885f3, VectorScale((-1, -1, -1), 16), VectorScale((1, 1, 1), 16), 0, (1, 0.4, 0.4));
			wait(0.01);
		}
	#/
}

