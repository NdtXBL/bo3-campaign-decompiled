#using scripts\codescripts\struct;
#using scripts\shared\fx_shared;
#using scripts\shared\system_shared;

#namespace namespace_d6a4e7f5;

/*
	Name: function_2dc19561
	Namespace: namespace_d6a4e7f5
	Checksum: 0xCD7F408A
	Offset: 0x150
	Size: 0x3B
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("global_fx", &function_8c87d8eb, &function_d290ebfa, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_d6a4e7f5
	Checksum: 0x5F3548F0
	Offset: 0x198
	Size: 0x13
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	function_26ae781b();
}

/*
	Name: function_d290ebfa
	Namespace: namespace_d6a4e7f5
	Checksum: 0x39559E9A
	Offset: 0x1B8
	Size: 0x13
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	function_a660fd6f();
}

/*
	Name: function_26ae781b
	Namespace: namespace_d6a4e7f5
	Checksum: 0x5F48EAD0
	Offset: 0x1D8
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_26ae781b()
{
	function_aa332733("enable_global_wind", 0);
	function_aa332733("wind_global_vector", "0 0 0");
	function_aa332733("wind_global_low_altitude", 0);
	function_aa332733("wind_global_hi_altitude", 10000);
	function_aa332733("wind_global_low_strength_percent", 0.5);
}

/*
	Name: function_a660fd6f
	Namespace: namespace_d6a4e7f5
	Checksum: 0x1F211F57
	Offset: 0x278
	Size: 0x1F
	Parameters: 0
	Flags: None
*/
function function_a660fd6f()
{
	if(isdefined(level.var_9cade18d))
	{
		level thread [[level.var_9cade18d]]();
	}
}

