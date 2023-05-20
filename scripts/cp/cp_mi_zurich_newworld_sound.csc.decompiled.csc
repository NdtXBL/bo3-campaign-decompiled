#using scripts\codescripts\struct;
#using scripts\shared\audio_shared;

#namespace namespace_b5a65bd6;

/*
	Name: function_d290ebfa
	Namespace: namespace_b5a65bd6
	Checksum: 0x4F54B8DD
	Offset: 0x158
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	level thread function_9f9f219();
	level thread function_cfd80c1b();
	level thread function_166fca02();
	level thread function_694458bd();
}

/*
	Name: function_9f9f219
	Namespace: namespace_b5a65bd6
	Checksum: 0x853C4AE
	Offset: 0x1C8
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_9f9f219()
{
	var_4dbf3ae3 = function_6ada35ba(0, "security_det", "targetname");
	if(!isdefined(var_4dbf3ae3))
	{
		return;
	}
	while(1)
	{
		var_4dbf3ae3 waittill("hash_4dbf3ae3", var_aef176e7);
		if(var_aef176e7 function_65f192a6())
		{
			function_921a1574(0, "amb_security_detector", (-10363, -24283, 9450));
			break;
		}
	}
}

/*
	Name: function_cfd80c1b
	Namespace: namespace_b5a65bd6
	Checksum: 0x436033A7
	Offset: 0x288
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_cfd80c1b()
{
	var_4dbf3ae3 = function_6ada35ba(0, "horn", "targetname");
	if(!isdefined(var_4dbf3ae3))
	{
		return;
	}
	while(1)
	{
		var_4dbf3ae3 waittill("hash_4dbf3ae3", var_aef176e7);
		if(var_aef176e7 function_65f192a6())
		{
			function_921a1574(0, "amb_train_horn_distant", (21054, -3421, -6031));
			break;
		}
	}
}

/*
	Name: function_166fca02
	Namespace: namespace_b5a65bd6
	Checksum: 0x917A0B21
	Offset: 0x348
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_166fca02()
{
	var_4dbf3ae3 = function_6ada35ba(0, "train_horn_dist", "targetname");
	if(!isdefined(var_4dbf3ae3))
	{
		return;
	}
	while(1)
	{
		var_4dbf3ae3 waittill("hash_4dbf3ae3", var_aef176e7);
		if(var_aef176e7 function_65f192a6())
		{
			function_921a1574(0, "amb_train_horn_distant", (-13099, -18453, 10228));
			break;
		}
	}
}

/*
	Name: function_694458bd
	Namespace: namespace_b5a65bd6
	Checksum: 0xD5AA6127
	Offset: 0x408
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_694458bd()
{
	function_9c128ee("amb_wind_tarp", (-17754, 15606, 4288));
	function_9c128ee("amb_wind_door", (-12556, 15887, 4201));
	function_9c128ee("amb_wind_door", (-12164, 15338, 4207));
	function_9c128ee("anb_snow_plow", (-14268, 15963, 4248));
	function_9c128ee("anb_snow_plow", (-14281, 15331, 4235));
}

/*
	Name: function_98d2df25
	Namespace: namespace_b5a65bd6
	Checksum: 0x48B38D9F
	Offset: 0x4E0
	Size: 0xC7
	Parameters: 7
	Flags: None
*/
function function_98d2df25(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		function_23e91425("train", "country");
	}
	else if(var_9193c732 == 2)
	{
		function_23e91425("train", "city");
		continue;
	}
	else
	{
		function_23e91425("train", "tunnel");
		continue;
	}
}

