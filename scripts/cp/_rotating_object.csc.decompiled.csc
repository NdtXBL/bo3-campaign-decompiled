#using scripts\codescripts\struct;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace namespace_efa64da5;

/*
	Name: function_2dc19561
	Namespace: namespace_efa64da5
	Checksum: 0x56C2E2ED
	Offset: 0x140
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("rotating_object", &function_8c87d8eb, undefined, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_efa64da5
	Checksum: 0x94E63483
	Offset: 0x180
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	namespace_dabbe128::function_828aea2c(&function_d290ebfa);
}

/*
	Name: function_d290ebfa
	Namespace: namespace_efa64da5
	Checksum: 0x395C8C0A
	Offset: 0x1B0
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function function_d290ebfa(var_ec74b091)
{
	var_94fe8ab4 = function_99201f25(var_ec74b091, "rotating_object", "targetname");
	namespace_84970cc4::function_966ecb29(var_94fe8ab4, &function_218200);
}

/*
	Name: function_218200
	Namespace: namespace_efa64da5
	Checksum: 0xFA7A09E2
	Offset: 0x220
	Size: 0x1DB
	Parameters: 0
	Flags: None
*/
function function_218200()
{
	self endon("hash_d5da096");
	namespace_82b91a51::function_10f13008();
	var_c4e99d2e = "yaw";
	var_102e3d58 = 360;
	var_7c662917 = 100;
	var_35651350 = 12;
	if(isdefined(self.var_caae374e))
	{
		var_c4e99d2e = self.var_caae374e;
	}
	if(isdefined(self.var_6604b19f))
	{
		var_35651350 = self.var_6604b19f;
	}
	if(var_35651350 == 0)
	{
		var_35651350 = 12;
	}
	if(var_35651350 < 0)
	{
		var_102e3d58 = var_102e3d58 * -1;
		var_35651350 = var_35651350 * -1;
	}
	var_6ab6f4fd = self.var_6ab6f4fd;
	while(1)
	{
		switch(var_c4e99d2e)
		{
			case "roll":
			{
				self function_5613042d(var_102e3d58 * var_7c662917, var_35651350 * var_7c662917);
				break;
			}
			case "pitch":
			{
				self function_788ec1d6(var_102e3d58 * var_7c662917, var_35651350 * var_7c662917);
				break;
			}
			case "yaw":
			case default:
			{
				self function_21d0da55(var_102e3d58 * var_7c662917, var_35651350 * var_7c662917);
				break;
			}
		}
		self waittill("hash_6654e4f4");
		self.var_6ab6f4fd = var_6ab6f4fd;
	}
}

