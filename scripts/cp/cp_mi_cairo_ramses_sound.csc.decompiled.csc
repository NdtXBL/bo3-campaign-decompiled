#using scripts\codescripts\struct;
#using scripts\shared\array_shared;
#using scripts\shared\audio_shared;

#namespace namespace_39972b4;

/*
	Name: function_d290ebfa
	Namespace: namespace_39972b4
	Checksum: 0xB91F742B
	Offset: 0x190
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	level thread function_44f2e4b1();
	level thread function_e127e5d4();
	level thread function_2d42a9f5();
	level thread function_87ff2775();
	level thread function_1a72b50d();
	level thread function_929b684a();
}

/*
	Name: function_44f2e4b1
	Namespace: namespace_39972b4
	Checksum: 0x6BD6AAD4
	Offset: 0x230
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_44f2e4b1()
{
	var_4dbf3ae3 = function_6ada35ba(0, "subway_horn", "targetname");
	if(!isdefined(var_4dbf3ae3))
	{
		return;
	}
	while(1)
	{
		var_4dbf3ae3 waittill("hash_4dbf3ae3", var_aef176e7);
		if(var_aef176e7 function_65f192a6())
		{
			function_921a1574(0, "amb_subway_horn", (7608, 1158, -415));
			break;
		}
	}
}

/*
	Name: function_e127e5d4
	Namespace: namespace_39972b4
	Checksum: 0x41F4937D
	Offset: 0x2F0
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_e127e5d4()
{
	var_4dbf3ae3 = function_6ada35ba(0, "defibrillator", "targetname");
	if(!isdefined(var_4dbf3ae3))
	{
		return;
	}
	while(1)
	{
		var_4dbf3ae3 waittill("hash_4dbf3ae3", var_aef176e7);
		if(var_aef176e7 function_65f192a6())
		{
			function_921a1574(0, "amb_defibrillator", (7443, -1682, 74));
			break;
		}
	}
}

/*
	Name: function_4d86d804
	Namespace: namespace_39972b4
	Checksum: 0x33FDC3D4
	Offset: 0x3B0
	Size: 0x5F
	Parameters: 0
	Flags: None
*/
function function_4d86d804()
{
	level endon("hash_be144962");
	while(1)
	{
		function_921a1574(0, "amb_hospital_pa", (7068, -1791, 548));
		wait(function_dc99997a(30, 46));
	}
}

/*
	Name: function_2d42a9f5
	Namespace: namespace_39972b4
	Checksum: 0x35118413
	Offset: 0x418
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_2d42a9f5()
{
	level waittill("hash_57706e72");
	namespace_4fe3eef1::function_36bbd2b2("cp_ramses_raps_intro");
	level waittill("hash_f67ed9a6");
	namespace_4fe3eef1::function_36bbd2b2("default");
}

/*
	Name: function_87ff2775
	Namespace: namespace_39972b4
	Checksum: 0xC6106376
	Offset: 0x478
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function function_87ff2775()
{
	if(!isdefined(level.var_b3545b65))
	{
		level.var_b3545b65 = function_9b7fda5e(0, (6610, -2082, 66), "script.origin");
	}
	level waittill("hash_748aa627");
	level.var_b3545b65 function_c2931a36("amb_heart_monitor_lp");
	level waittill("hash_be144962");
	level.var_b3545b65 function_4a1ecb6c(0.25);
	wait(1);
	level.var_b3545b65 function_dc8c8404();
}

/*
	Name: function_1a72b50d
	Namespace: namespace_39972b4
	Checksum: 0x2CB02FAB
	Offset: 0x548
	Size: 0x187
	Parameters: 0
	Flags: None
*/
function function_1a72b50d()
{
	level endon("hash_464a467d");
	var_20089fb6 = (10198, -9557, 755);
	var_fa06254d = (6406, -9437, 894);
	var_d403aae4 = (4810, -8798, 833);
	var_ae01307b = (2412, -7377, 859);
	var_87feb612 = (28, -6302, 777);
	var_61fc3ba9 = (-257, -3146, 658);
	var_3bf9c140 = (334, -300, 620);
	var_536510a4 = function_84970cc4(var_20089fb6, var_fa06254d, var_d403aae4, var_ae01307b, var_87feb612, var_61fc3ba9, var_3bf9c140);
	level waittill("hash_be144962");
	while(1)
	{
		var_e18d5855 = namespace_84970cc4::function_47d18840(var_536510a4);
		function_921a1574(0, "exp_dist_heavy", var_e18d5855);
		wait(function_dc99997a(3, 6));
	}
}

/*
	Name: function_929b684a
	Namespace: namespace_39972b4
	Checksum: 0xF04AABCE
	Offset: 0x6D8
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_929b684a()
{
	level waittill("hash_6c9d5d83");
	namespace_4fe3eef1::function_36bbd2b2("cmn_level_fadeout");
}

