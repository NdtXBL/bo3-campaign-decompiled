#using scripts\shared\flag_shared;
#using scripts\shared\system_shared;

#namespace namespace_160f792;

/*
	Name: function_2dc19561
	Namespace: namespace_160f792
	Checksum: 0x8598BA5D
	Offset: 0xE0
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("cheat", &function_8c87d8eb, undefined, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_160f792
	Checksum: 0x6B54A10
	Offset: 0x120
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	level.var_d7af4c88 = [];
	level.var_7a56ad1b = [];
	level.var_e56c7cd0 = [];
	level namespace_ad23e503::function_c35e6aab("has_cheated");
	level thread function_ba9821ce();
}

/*
	Name: function_536049a7
	Namespace: namespace_160f792
	Checksum: 0x31F2394
	Offset: 0x188
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_536049a7()
{
	self thread function_c73833ba();
}

/*
	Name: function_ba9821ce
	Namespace: namespace_160f792
	Checksum: 0xF13D2A17
	Offset: 0x1B0
	Size: 0x13
	Parameters: 0
	Flags: None
*/
function function_ba9821ce()
{
	function_24023f66();
}

/*
	Name: function_24023f66
	Namespace: namespace_160f792
	Checksum: 0xE3961AC8
	Offset: 0x1D0
	Size: 0x65
	Parameters: 0
	Flags: None
*/
function function_24023f66()
{
	/#
		for(var_5e76f0af = 0; var_5e76f0af < level.var_e56c7cd0.size; var_5e76f0af++)
		{
			function_6c1294b8(level.var_e56c7cd0[var_5e76f0af], level.var_d7af4c88[level.var_e56c7cd0[var_5e76f0af]]);
		}
	#/
}

/*
	Name: function_abb44133
	Namespace: namespace_160f792
	Checksum: 0x62F7C4CA
	Offset: 0x240
	Size: 0x99
	Parameters: 2
	Flags: None
*/
function function_abb44133(var_fc14059a, var_d8e978b0)
{
	/#
		function_6c1294b8(var_fc14059a, 0);
	#/
	level.var_d7af4c88[var_fc14059a] = function_4bd0142f(var_fc14059a);
	level.var_7a56ad1b[var_fc14059a] = var_d8e978b0;
	if(level.var_d7af4c88[var_fc14059a])
	{
		[[var_d8e978b0]](level.var_d7af4c88[var_fc14059a]);
	}
}

/*
	Name: function_2276c67c
	Namespace: namespace_160f792
	Checksum: 0x77FFE534
	Offset: 0x2E8
	Size: 0x95
	Parameters: 1
	Flags: None
*/
function function_2276c67c(var_fc14059a)
{
	var_38c46b05 = function_4bd0142f(var_fc14059a);
	if(level.var_d7af4c88[var_fc14059a] == var_38c46b05)
	{
		return;
	}
	if(var_38c46b05)
	{
		level namespace_ad23e503::function_74d6b22f("has_cheated");
	}
	level.var_d7af4c88[var_fc14059a] = var_38c46b05;
	[[level.var_7a56ad1b[var_fc14059a]]](var_38c46b05);
}

/*
	Name: function_c73833ba
	Namespace: namespace_160f792
	Checksum: 0xE0E3652B
	Offset: 0x388
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_c73833ba()
{
	level endon("hash_9aabe1d7");
	function_abb44133("sf_use_ignoreammo", &function_450d7601);
	level.var_e56c7cd0 = function_391512da(level.var_d7af4c88);
	for(;;)
	{
		for(var_5e76f0af = 0; var_5e76f0af < level.var_e56c7cd0.size; var_5e76f0af++)
		{
			function_2276c67c(level.var_e56c7cd0[var_5e76f0af]);
		}
		wait(0.5);
	}
}

/*
	Name: function_450d7601
	Namespace: namespace_160f792
	Checksum: 0x558A341E
	Offset: 0x440
	Size: 0x53
	Parameters: 1
	Flags: None
*/
function function_450d7601(var_38c46b05)
{
	if(var_38c46b05)
	{
		function_aa332733("player_sustainAmmo", 1);
	}
	else
	{
		function_aa332733("player_sustainAmmo", 0);
	}
}

/*
	Name: function_6fa66fdf
	Namespace: namespace_160f792
	Checksum: 0x52BCEE02
	Offset: 0x4A0
	Size: 0x21
	Parameters: 0
	Flags: None
*/
function function_6fa66fdf()
{
	return level namespace_ad23e503::function_7922262b("has_cheated");
}

