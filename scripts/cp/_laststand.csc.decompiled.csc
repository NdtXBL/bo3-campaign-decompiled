#using scripts\cp\_load;
#using scripts\cp\_util;
#using scripts\shared\clientfield_shared;
#using scripts\shared\system_shared;

#namespace namespace_8f9cc7d0;

/*
	Name: function_c35e6aab
	Namespace: namespace_8f9cc7d0
	Checksum: 0x6C0CA5E3
	Offset: 0x158
	Size: 0x123
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_c35e6aab()
{
	level.var_4d057c9a = [];
	for(var_c957f6b6 = 0; var_c957f6b6 < 4; var_c957f6b6++)
	{
		level.var_4d057c9a[var_c957f6b6] = function_a8fb77bd();
		level.var_4d057c9a[var_c957f6b6].var_519afad2 = 0;
		level.var_4d057c9a[var_c957f6b6].var_1f6bae66 = "laststand_update" + var_c957f6b6;
		level.var_4d057c9a[var_c957f6b6].var_48ba472 = 0;
		namespace_71e9cb84::function_50f16166("world", level.var_4d057c9a[var_c957f6b6].var_1f6bae66, 1, 5, "counter", &function_3cc786df, 0, 0);
	}
	level thread function_1e56aab0();
}

/*
	Name: function_1e56aab0
	Namespace: namespace_8f9cc7d0
	Checksum: 0x3627C892
	Offset: 0x288
	Size: 0xAF
	Parameters: 0
	Flags: None
*/
function function_1e56aab0()
{
	while(1)
	{
		level waittill("hash_4298e0ca", var_ec74b091, var_22fd856d);
		if(var_22fd856d == "revive_shader_constant")
		{
			var_5dc5e20a = function_79c174a3(var_ec74b091);
			var_5dc5e20a function_e7f6dc4e(var_ec74b091, 0, "scriptVector2", 0, 1, 0, function_d9502965(var_ec74b091) / 1000);
		}
	}
}

/*
	Name: function_c2e280cb
	Namespace: namespace_8f9cc7d0
	Checksum: 0xAA41963A
	Offset: 0x340
	Size: 0x107
	Parameters: 3
	Flags: None
*/
function function_c2e280cb(var_6df9264, var_6bc69ce3, var_23875b0c)
{
	self endon("hash_350084ad");
	var_a4ad846c = function_3586fb08();
	var_4254c05b = 0;
	if(var_6bc69ce3 == var_23875b0c)
	{
		var_23875b0c = var_6bc69ce3 - 1;
	}
	while(var_4254c05b <= 1)
	{
		var_4254c05b = function_3586fb08() - var_a4ad846c / 1000;
		var_81ef2a5 = function_2ebd5084(var_6bc69ce3, var_23875b0c, var_4254c05b) / 30;
		function_bd3f2b3b(var_6df9264, var_81ef2a5);
		wait(0.016);
	}
}

/*
	Name: function_3cc786df
	Namespace: namespace_8f9cc7d0
	Checksum: 0x6DEB8153
	Offset: 0x450
	Size: 0x2B3
	Parameters: 7
	Flags: None
*/
function function_3cc786df(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	var_c1fc5f4e = function_f45850ec(var_7f86519e, 16);
	var_5c820472 = function_b6b79a0(var_c1fc5f4e);
	level.var_4d057c9a[var_5c820472].var_48ba472 = level.var_4d057c9a[var_5c820472].var_519afad2;
	level.var_4d057c9a[var_5c820472].var_519afad2 = var_9193c732 - 1;
	if(level.var_4d057c9a[var_5c820472].var_48ba472 < level.var_4d057c9a[var_5c820472].var_519afad2)
	{
		level.var_4d057c9a[var_5c820472].var_48ba472 = level.var_4d057c9a[var_5c820472].var_519afad2;
	}
	var_6df9264 = function_557eb98c(function_dd1bd95(var_ec74b091), "WorldSpaceIndicators.bleedOutModel" + var_5c820472 + ".bleedOutPercent");
	if(isdefined(var_6df9264))
	{
		if(var_9193c732 == 30)
		{
			level.var_4d057c9a[var_5c820472].var_519afad2 = 0;
			level.var_4d057c9a[var_5c820472].var_48ba472 = 0;
			function_bd3f2b3b(var_6df9264, 1);
		}
		else if(var_9193c732 == 29)
		{
			level.var_4d057c9a[var_5c820472] notify("hash_350084ad");
			level.var_4d057c9a[var_5c820472] thread function_c2e280cb(var_6df9264, 30, 28);
		}
		else
		{
			level.var_4d057c9a[var_5c820472] notify("hash_350084ad");
			level.var_4d057c9a[var_5c820472] thread function_c2e280cb(var_6df9264, level.var_4d057c9a[var_5c820472].var_48ba472, level.var_4d057c9a[var_5c820472].var_519afad2);
		}
	}
}

