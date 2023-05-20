#using scripts\shared\bots\_bot;
#using scripts\shared\bots\_bot_combat;
#using scripts\shared\laststand_shared;
#using scripts\shared\system_shared;

#namespace namespace_f8253a5c;

/*
	Name: function_2dc19561
	Namespace: namespace_f8253a5c
	Checksum: 0x1BD9FABA
	Offset: 0xF8
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("bot_cp", &function_8c87d8eb, undefined, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_f8253a5c
	Checksum: 0x33F6B130
	Offset: 0x138
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	/#
		level.var_84cbfc05 = &function_ee4b17bf;
		level.var_93a32db5 = &namespace_5cd60c9f::function_3aa9220a;
		level.var_110e31eb = &function_fd797;
		level.var_47854466 = &function_ea8d70a6;
		level.var_ce074aba = &function_1b93c521;
		level.var_f61e96da = &function_ca7aa540;
	#/
}

/*
	Name: function_ee4b17bf
	Namespace: namespace_f8253a5c
	Checksum: 0x3F4002B6
	Offset: 0x1D8
	Size: 0x67
	Parameters: 0
	Flags: None
*/
function function_ee4b17bf()
{
	/#
		self endon("hash_643a7daf");
		wait(0.25);
		self notify("hash_d2c577ed", "Dev Block strings are not supported", "Dev Block strings are not supported");
		wait(0.25);
		if(isdefined(self.var_44fb8955))
		{
			self.var_273d3e89 = self.var_44fb8955["Dev Block strings are not supported"];
		}
	#/
}

