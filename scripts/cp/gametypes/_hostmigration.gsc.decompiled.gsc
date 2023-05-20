#using scripts\codescripts\struct;
#using scripts\shared\hostmigration_shared;
#using scripts\shared\hud_shared;
#using scripts\shared\hud_util_shared;

#namespace namespace_6c1d04bd;

/*
	Name: function_f06c3fc
	Namespace: namespace_6c1d04bd
	Checksum: 0x99EC1590
	Offset: 0x100
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_f06c3fc()
{
}

/*
	Name: function_1c4c1953
	Namespace: namespace_6c1d04bd
	Checksum: 0x99EC1590
	Offset: 0x110
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_1c4c1953()
{
}

/*
	Name: function_4c77da13
	Namespace: namespace_6c1d04bd
	Checksum: 0x715CBD54
	Offset: 0x120
	Size: 0x1C1
	Parameters: 0
	Flags: None
*/
function function_4c77da13()
{
	function_b8d9ad6e(1, 1, 0);
	level.var_7ec47890 = 0;
	if(level.var_35a23885)
	{
		level waittill("hash_5f6f3990");
	}
	if(level.var_6b0d921)
	{
		/#
			function_895b00("Dev Block strings are not supported" + GetTime() + "Dev Block strings are not supported");
		#/
		return;
	}
	/#
		function_895b00("Dev Block strings are not supported" + GetTime());
	#/
	level.var_5f3b0fcc = 1;
	function_38b4d4a9(1);
	level notify("hash_47e173c8");
	thread function_ce29b4cb();
	var_2395e945 = level.var_2395e945;
	for(var_c957f6b6 = 0; var_c957f6b6 < var_2395e945.size; var_c957f6b6++)
	{
		var_5dc5e20a = var_2395e945[var_c957f6b6];
		var_5dc5e20a thread function_41818acc();
	}
	level endon("hash_47e173c8");
	function_e2942b82();
	level.var_5f3b0fcc = undefined;
	function_38b4d4a9(0);
	/#
		function_895b00("Dev Block strings are not supported" + GetTime());
	#/
	function_875ac970();
	level notify("hash_3554b2fc");
}

