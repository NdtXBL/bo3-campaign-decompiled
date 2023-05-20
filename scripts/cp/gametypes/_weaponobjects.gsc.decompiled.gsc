#using scripts\codescripts\struct;
#using scripts\cp\_util;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;
#using scripts\shared\weapons\_weaponobjects;
#using scripts\shared\weapons_shared;

#namespace namespace_aec973d7;

/*
	Name: function_2dc19561
	Namespace: namespace_aec973d7
	Checksum: 0xC1B2AED3
	Offset: 0x1D0
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("weaponobjects", &function_8c87d8eb, undefined, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_aec973d7
	Checksum: 0xA9CD6A7A
	Offset: 0x210
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	function_1463e4e5();
	namespace_dabbe128::function_c61b24c4(&function_d1413784);
}

/*
	Name: function_d1413784
	Namespace: namespace_aec973d7
	Checksum: 0x609C463A
	Offset: 0x250
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_d1413784()
{
	namespace_dabbe128::function_eb99da89(&function_fb4f96b5);
	namespace_dabbe128::function_356a4ee1(&function_aebcf025);
}

/*
	Name: function_aebcf025
	Namespace: namespace_aec973d7
	Checksum: 0x57416167
	Offset: 0x2A0
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_aebcf025()
{
	for(var_f33365a3 = 0; var_f33365a3 < self.var_1866fbab.size; var_f33365a3++)
	{
		if(self.var_1866fbab[var_f33365a3].var_4be20d44 == "spike_charge")
		{
			function_6c668988(self.var_1866fbab, var_f33365a3);
		}
	}
	self function_64d7c6a7("spike_launcher");
}

