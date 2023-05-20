#using scripts\codescripts\struct;
#using scripts\cp\_objectives;
#using scripts\cp\_oed;
#using scripts\shared\array_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\hud_util_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\system_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;

#namespace namespace_fb5b04f4;

/*
	Name: function_2dc19561
	Namespace: namespace_fb5b04f4
	Checksum: 0x33878D37
	Offset: 0x330
	Size: 0x3B
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("cp_supply_manager", &function_8c87d8eb, &function_5b6b9132, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_fb5b04f4
	Checksum: 0x99EC1590
	Offset: 0x378
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
}

/*
	Name: function_5b6b9132
	Namespace: namespace_fb5b04f4
	Checksum: 0x647B572C
	Offset: 0x388
	Size: 0x203
	Parameters: 0
	Flags: None
*/
function function_5b6b9132()
{
	wait(0.05);
	if(isdefined(level.var_7ba8d184))
	{
		level thread [[level.var_7ba8d184]]();
		return;
	}
	level.var_bd9a76fb = 31;
	var_8e327af8 = function_99201f25("ammo_cache", "script_noteworthy");
	foreach(var_455957d8 in var_8e327af8)
	{
		function_9b385ca5();
		var_fb5b04f4 = var_1e7268a3;
		function_35dd0243(var_fb5b04f4);
	}
	var_6c2e87ca = namespace_14b42b8a::function_7faf4c39("ammo_cache", "script_noteworthy");
	foreach(var_cd9300aa in var_6c2e87ca)
	{
		function_9b385ca5();
		var_fb5b04f4 = var_1e7268a3;
		function_82b8e134(var_fb5b04f4, var_cd9300aa.var_722885f3);
	}
	function_6c1294b8("AmmoBoxPickupTime", 0.75);
}

#namespace namespace_1e7268a3;

/*
	Name: function_9b385ca5
	Namespace: namespace_1e7268a3
	Checksum: 0x99EC1590
	Offset: 0x598
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_9b385ca5()
{
}

/*
	Name: function_5fba2032
	Namespace: namespace_1e7268a3
	Checksum: 0x99EC1590
	Offset: 0x5A8
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_5fba2032()
{
}

/*
	Name: function_35dd0243
	Namespace: namespace_1e7268a3
	Checksum: 0x1EE86CE1
	Offset: 0x5B8
	Size: 0x543
	Parameters: 1
	Flags: None
*/
function function_35dd0243(var_455957d8)
{
	var_da697227 = function_9b7fda5e("trigger_radius_use", var_455957d8.var_722885f3 + VectorScale((0, 0, 1), 30), 0, 94, 64);
	var_da697227 function_1d5013fa();
	var_da697227 function_bb863f19();
	var_da697227 function_1f80b3d5();
	var_da697227 function_dc378587("none");
	var_da697227 function_e68ee88a("HINT_INTERACTIVE_PROMPT");
	var_da697227 function_d5eb00e3(&"COOP_REFILL_AMMO");
	if(isdefined(var_455957d8.var_9194748))
	{
		var_1063f543 = function_6ada35ba(var_455957d8.var_9194748, "targetname");
		var_455957d8 function_37f7858a(var_1063f543);
	}
	var_da697227 function_8f279593();
	var_da697227 function_37f7858a(var_455957d8);
	var_455957d8 namespace_16f9ecd3::function_e228c18a(1);
	if(var_455957d8.var_db7bb468 === "single_use")
	{
		var_988e928 = namespace_a230c2b1::function_be21f511("any", var_da697227, function_84970cc4(var_455957d8), VectorScale((0, 0, 1), 32), &"cp_ammo_box");
	}
	else
	{
		var_988e928 = namespace_a230c2b1::function_be21f511("any", var_da697227, function_84970cc4(var_455957d8), VectorScale((0, 0, 1), 32), &"cp_ammo_crate");
	}
	var_988e928 namespace_a230c2b1::function_1e5cb2cc("any");
	var_988e928 namespace_a230c2b1::function_1bf6799b(&"COOP_AMMO_REFILL");
	var_988e928 namespace_a230c2b1::function_a09b1ac1("allies");
	var_988e928 namespace_a230c2b1::function_bd903f5c("any");
	var_988e928.var_3c8ea097 = &function_3c8ea097;
	var_988e928.var_8de097e2 = undefined;
	var_988e928.var_722885f3 = var_455957d8.var_722885f3;
	var_988e928.var_6ab6f4fd = var_988e928.var_6ab6f4fd;
	if(var_455957d8.var_db7bb468 === "single_use")
	{
		var_988e928 namespace_a230c2b1::function_df0e9e69(0.75);
		var_988e928.var_cfce9b82 = &function_cfce9b82;
		var_988e928.var_a454a59a = &function_a454a59a;
		var_988e928.var_db0f901 = 1;
	}
	else
	{
		var_988e928 namespace_a230c2b1::function_df0e9e69(0.75);
		var_988e928.var_cfce9b82 = &function_cfce9b82;
		var_988e928.var_a454a59a = &function_a454a59a;
		var_988e928.var_db0f901 = 0;
		var_455957d8.var_e119970e = var_988e928;
		self.var_60a09143 = var_455957d8;
		self.var_60a09143.var_ce22f999 = 0;
		var_bd13c94b = function_9b7fda5e("trigger_radius", var_da697227.var_722885f3, 0, 94, 64);
		var_bd13c94b function_bb863f19();
		var_bd13c94b function_dc378587("allies");
		var_bd13c94b function_8f279593();
		var_bd13c94b function_37f7858a(var_455957d8);
		var_bd13c94b thread function_e76edd0b(self.var_60a09143);
	}
	var_455957d8.var_e119970e = var_988e928;
	var_455957d8 thread function_71f6269a(var_bd13c94b);
}

/*
	Name: function_82b8e134
	Namespace: namespace_1e7268a3
	Checksum: 0xB92ECB5B
	Offset: 0xB08
	Size: 0x5B
	Parameters: 2
	Flags: None
*/
function function_82b8e134(var_722885f3, var_6ab6f4fd)
{
	var_62a5879d = namespace_82b91a51::function_b9fd52a4("p6_ammo_resupply_future_01", var_722885f3, var_6ab6f4fd, 1);
	function_35dd0243(var_62a5879d);
}

/*
	Name: function_cfce9b82
	Namespace: namespace_1e7268a3
	Checksum: 0x276B7BC3
	Offset: 0xB70
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_cfce9b82(var_6bfe1586)
{
	var_6bfe1586 function_921a1574("fly_ammo_crate_refill");
	var_6bfe1586 namespace_82b91a51::function_f9e9f0f0();
}

/*
	Name: function_a454a59a
	Namespace: namespace_1e7268a3
	Checksum: 0x39C03398
	Offset: 0xBC0
	Size: 0x3B
	Parameters: 3
	Flags: None
*/
function function_a454a59a(var_3e94206a, var_6bfe1586, var_deb8d133)
{
	if(!var_deb8d133)
	{
		var_6bfe1586 namespace_82b91a51::function_ee182f5d();
	}
}

/*
	Name: function_3c8ea097
	Namespace: namespace_1e7268a3
	Checksum: 0x4982B758
	Offset: 0xC08
	Size: 0x17B
	Parameters: 1
	Flags: None
*/
function function_3c8ea097(var_6bfe1586)
{
	var_8ea4a872 = var_6bfe1586 function_21995b5a();
	foreach(var_1d6db0a3 in var_8ea4a872)
	{
		if(function_57e40211(var_1d6db0a3))
		{
			continue;
		}
		var_6bfe1586 function_704b802a(var_1d6db0a3);
		var_6bfe1586 function_67795b5f(var_1d6db0a3, var_1d6db0a3.var_c0b2188);
	}
	var_6bfe1586 notify("hash_a88bbdc9");
	var_6bfe1586 function_e2af603e("damage_light");
	var_6bfe1586 namespace_82b91a51::function_ee182f5d();
	if(self.var_db0f901)
	{
		function_dc9790a1(self.var_79f5c705);
		self namespace_a230c2b1::function_c5a39495(1, undefined, 1);
	}
}

/*
	Name: function_57e40211
	Namespace: namespace_1e7268a3
	Checksum: 0xA82182A2
	Offset: 0xD90
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_57e40211(var_1d6db0a3)
{
	switch(var_1d6db0a3.var_4be20d44)
	{
		case "minigun_warlord_raid":
		{
			return 1;
			break;
		}
	}
	return 0;
}

/*
	Name: function_e76edd0b
	Namespace: namespace_1e7268a3
	Checksum: 0xD085A242
	Offset: 0xDD8
	Size: 0x87
	Parameters: 1
	Flags: None
*/
function function_e76edd0b(var_60a09143)
{
	self endon("hash_128f8789");
	var_60a09143 endon("hash_128f8789");
	while(1)
	{
		self waittill("hash_4dbf3ae3", var_aa10fce8);
		if(!isdefined(var_60a09143))
		{
			break;
		}
		if(function_65f192a6(var_aa10fce8))
		{
			function_2902ab6c(var_60a09143);
		}
	}
}

/*
	Name: function_2902ab6c
	Namespace: namespace_1e7268a3
	Checksum: 0x13613CCB
	Offset: 0xE68
	Size: 0x193
	Parameters: 1
	Flags: None
*/
function function_2902ab6c(var_60a09143)
{
	var_60a09143 endon("hash_128f8789");
	if(var_60a09143.var_ce22f999)
	{
		return;
	}
	var_60a09143.var_ce22f999 = 1;
	var_60a09143 namespace_cc27597::function_43718187("p7_fxanim_gp_ammo_resupply_02_open_bundle", var_60a09143);
	wait(1);
	var_d3571721 = 1;
	while(var_d3571721 > 0)
	{
		var_d3571721 = 0;
		foreach(var_6bfe1586 in level.var_2395e945)
		{
			var_cea909a8 = function_cb3d1c9b(var_6bfe1586.var_722885f3, var_60a09143.var_722885f3);
			if(var_cea909a8 <= 14400)
			{
				var_d3571721++;
			}
		}
		wait(0.5);
	}
	var_60a09143 namespace_cc27597::function_43718187("p7_fxanim_gp_ammo_resupply_02_close_bundle", var_60a09143);
	var_60a09143.var_ce22f999 = 0;
}

/*
	Name: function_71f6269a
	Namespace: namespace_1e7268a3
	Checksum: 0x52045C14
	Offset: 0x1008
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_71f6269a(var_bd13c94b)
{
	self waittill("hash_128f8789");
	self.var_e119970e namespace_a230c2b1::function_c5a39495(1);
	self.var_e119970e function_dc8c8404();
	if(isdefined(var_bd13c94b))
	{
		var_bd13c94b function_dc8c8404();
	}
}

#namespace namespace_fb5b04f4;

/*
	Name: function_1e7268a3
	Namespace: namespace_fb5b04f4
	Checksum: 0x5C4405D0
	Offset: 0x1080
	Size: 0x235
	Parameters: 0
	Flags: 6
*/
function private autoexec function_1e7268a3()
{
	classes.var_1e7268a3[0] = function_a8fb77bd();
	classes.var_1e7268a3[0].var_b684a6d1[1911957146] = &namespace_1e7268a3::function_71f6269a;
	classes.var_1e7268a3[0].var_b684a6d1[688040812] = &namespace_1e7268a3::function_2902ab6c;
	classes.var_1e7268a3[0].var_b684a6d1[-412164853] = &namespace_1e7268a3::function_e76edd0b;
	classes.var_1e7268a3[0].var_b684a6d1[1474560529] = &namespace_1e7268a3::function_57e40211;
	classes.var_1e7268a3[0].var_b684a6d1[1015980183] = &namespace_1e7268a3::function_3c8ea097;
	classes.var_1e7268a3[0].var_b684a6d1[-1537956454] = &namespace_1e7268a3::function_a454a59a;
	classes.var_1e7268a3[0].var_b684a6d1[-808543358] = &namespace_1e7268a3::function_cfce9b82;
	classes.var_1e7268a3[0].var_b684a6d1[-2101812940] = &namespace_1e7268a3::function_82b8e134;
	classes.var_1e7268a3[0].var_b684a6d1[903676483] = &namespace_1e7268a3::function_35dd0243;
	classes.var_1e7268a3[0].var_b684a6d1[1606033458] = &namespace_1e7268a3::function_5fba2032;
	classes.var_1e7268a3[0].var_b684a6d1[-1690805083] = &namespace_1e7268a3::function_9b385ca5;
}

/*
	Name: function_5815ab75
	Namespace: namespace_fb5b04f4
	Checksum: 0x1C1E7F56
	Offset: 0x12C0
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_5815ab75(var_6bfe1586)
{
	self.var_e119970e namespace_a230c2b1::function_5815ab75(var_6bfe1586);
}

/*
	Name: function_76a3ab20
	Namespace: namespace_fb5b04f4
	Checksum: 0xBEF11540
	Offset: 0x12F8
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_76a3ab20(var_6bfe1586)
{
	self.var_e119970e namespace_a230c2b1::function_76a3ab20(var_6bfe1586);
}

