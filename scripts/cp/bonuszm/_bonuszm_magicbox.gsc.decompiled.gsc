#using scripts\codescripts\struct;
#using scripts\cp\_objectives;
#using scripts\cp\_oed;
#using scripts\cp\_util;
#using scripts\cp\bonuszm\_bonuszm_data;
#using scripts\cp\bonuszm\_bonuszm_dev;
#using scripts\cp\bonuszm\_bonuszm_spawner_shared;
#using scripts\cp\bonuszm\_bonuszm_weapons;
#using scripts\cp\gametypes\_loadout;
#using scripts\cp\gametypes\_save;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\hud_util_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;
#using scripts\shared\weapons_shared;

#namespace namespace_293e8aad;

/*
	Name: function_2dc19561
	Namespace: namespace_293e8aad
	Checksum: 0xCA80034
	Offset: 0x4C0
	Size: 0x3B
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("cp_mobile_magicbox", &function_8c87d8eb, &function_5b6b9132, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_293e8aad
	Checksum: 0xABA8E5C8
	Offset: 0x508
	Size: 0xEB
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	level.var_40b3237f = &function_999eb742;
	if(!function_27c72c1b())
	{
		return;
	}
	level.var_b2ea822f = &function_89a0f2a6;
	level.var_380bc8b7 = &function_76eab3e;
	namespace_71e9cb84::function_50f16166("zbarrier", "magicbox_open_glow", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("zbarrier", "magicbox_closed_glow", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("scriptmover", "weapon_disappear_fx", 1, 1, "int");
}

/*
	Name: function_5b6b9132
	Namespace: namespace_293e8aad
	Checksum: 0xE339B3E7
	Offset: 0x600
	Size: 0x301
	Parameters: 0
	Flags: None
*/
function function_5b6b9132()
{
	if(!function_27c72c1b())
	{
		return;
	}
	wait(0.05);
	var_7422b1d5 = function_99201f25("mobile_armory_clip", "script_noteworthy");
	foreach(var_b340b98b in var_7422b1d5)
	{
		var_b340b98b function_dc8c8404();
	}
	var_b78f06c4 = function_6f1ebe57("mapname");
	var_9f34c934 = function_99201f25("mobile_armory", "script_noteworthy");
	foreach(var_96eb5b14 in var_9f34c934)
	{
		if(var_b78f06c4 == "cp_mi_cairo_lotus")
		{
			if(function_cb3d1c9b(var_96eb5b14.var_722885f3, (-7469, 1031, 4029)) < 22500)
			{
				var_9ff80c52 = 1;
			}
		}
		if(isdefined(var_9ff80c52) && var_9ff80c52)
		{
			var_40d9775d = function_99201f25("bonuszm_magicbox", "script_noteworthy");
			var_381b4609 = namespace_84970cc4::function_4219028b(var_96eb5b14.var_722885f3, var_40d9775d, function_84970cc4(var_96eb5b14), 1, 100);
			if(isdefined(var_381b4609) && function_6e2770d8(var_381b4609) && var_381b4609.size)
			{
				var_381b4609[0] function_dc8c8404();
			}
			var_96eb5b14 function_48f26766();
			continue;
		}
		var_96eb5b14 thread function_2816573(var_96eb5b14);
	}
}

/*
	Name: function_2816573
	Namespace: namespace_293e8aad
	Checksum: 0xABF81680
	Offset: 0x910
	Size: 0x53
	Parameters: 1
	Flags: None
*/
function function_2816573(var_96eb5b14)
{
	function_9b385ca5();
	var_6982c48a = var_dafbfd8e;
	function_309dd42b(var_6982c48a);
	var_96eb5b14.var_b10011b8 = var_6982c48a;
}

/*
	Name: function_999eb742
	Namespace: namespace_293e8aad
	Checksum: 0x2B34B239
	Offset: 0x970
	Size: 0xB1
	Parameters: 0
	Flags: None
*/
function function_999eb742()
{
	var_40d9775d = function_99201f25("bonuszm_magicbox", "script_noteworthy");
	foreach(var_e89d8da5 in var_40d9775d)
	{
		var_e89d8da5 function_dc8c8404();
	}
}

#namespace namespace_dafbfd8e;

/*
	Name: function_9b385ca5
	Namespace: namespace_dafbfd8e
	Checksum: 0x199D3232
	Offset: 0xA30
	Size: 0xF
	Parameters: 0
	Flags: None
*/
function function_9b385ca5()
{
	self.var_2bcbe272 = 0;
}

/*
	Name: function_5fba2032
	Namespace: namespace_dafbfd8e
	Checksum: 0x99EC1590
	Offset: 0xA48
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_5fba2032()
{
}

/*
	Name: function_309dd42b
	Namespace: namespace_dafbfd8e
	Checksum: 0x8BC511E3
	Offset: 0xA58
	Size: 0x403
	Parameters: 1
	Flags: None
*/
function function_309dd42b(var_96eb5b14)
{
	var_f92a03e7 = function_9b7fda5e("trigger_radius_use", var_96eb5b14.var_722885f3 + VectorScale((0, 0, 1), 3), 0, 94, 64);
	var_f92a03e7 function_1d5013fa();
	var_f92a03e7 function_bb863f19();
	var_f92a03e7 function_1f80b3d5();
	var_f92a03e7 function_dc378587("none");
	var_f92a03e7 function_e68ee88a("HINT_INTERACTIVE_PROMPT");
	var_f92a03e7 function_d5eb00e3(&"COOP_MAGICBOX");
	var_9fd18135 = function_99201f25("bonuszm_magicbox", "script_noteworthy");
	self.var_b8eeb0fe = function_e7bdc1a1(var_f92a03e7.var_722885f3, var_9fd18135);
	self.var_b8eeb0fe.var_722885f3 = var_96eb5b14.var_722885f3;
	self.var_b8eeb0fe.var_6ab6f4fd = var_96eb5b14.var_6ab6f4fd + VectorScale((0, -1, 0), 90);
	self.var_b8eeb0fe function_ee22cd10(1);
	if(isdefined(var_96eb5b14.var_9194748))
	{
		var_1063f543 = function_6ada35ba(var_96eb5b14.var_9194748, "targetname");
		var_96eb5b14 function_37f7858a(var_1063f543);
		self.var_b8eeb0fe function_37f7858a(var_1063f543);
		var_f92a03e7 function_8f279593();
		var_f92a03e7 function_37f7858a(var_1063f543);
	}
	var_96e62168 = namespace_82b91a51::function_14518e76(var_f92a03e7, &"cp_magic_box", &"COOP_OPEN", &function_3c8ea097);
	var_96e62168.var_bca3110 = 1;
	var_96e62168.var_3f743272 = self;
	if(!isdefined(var_96eb5b14.var_9194748))
	{
		var_96e62168 function_8f279593();
		var_96e62168 function_37f7858a(var_f92a03e7);
	}
	var_96eb5b14.var_e119970e = var_96e62168;
	self.var_b8eeb0fe.var_e119970e = var_96e62168;
	self.var_3f29a509 = var_96eb5b14;
	self.var_7c66997c = var_f92a03e7;
	self.var_b8eeb0fe function_ee22cd10(0);
	self.var_b8eeb0fe namespace_71e9cb84::function_74d6b22f("magicbox_closed_glow", 1);
	self.var_b8eeb0fe namespace_71e9cb84::function_74d6b22f("magicbox_open_glow", 0);
	self.var_b8eeb0fe function_c2931a36("zmb_box_zcamp_loop");
	self.var_3f29a509 function_8c8e79fe();
	self.var_3f29a509 function_422037f5();
}

/*
	Name: function_b471f57b
	Namespace: namespace_dafbfd8e
	Checksum: 0xA68DEB28
	Offset: 0xE68
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_b471f57b()
{
	if(!self.var_2bcbe272)
	{
		self.var_3f29a509.var_e119970e namespace_a230c2b1::function_c5a39495(1, 1);
		self.var_b8eeb0fe namespace_71e9cb84::function_74d6b22f("magicbox_closed_glow", 0);
		namespace_82b91a51::function_76f13293();
		self.var_b8eeb0fe function_50ccee8d();
	}
}

/*
	Name: function_3c8ea097
	Namespace: namespace_dafbfd8e
	Checksum: 0xEED7F6D2
	Offset: 0xEF0
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_3c8ea097(var_6bfe1586)
{
	if(!self.var_2bcbe272)
	{
		self thread function_83bb9b69(var_6bfe1586);
	}
	else
	{
		var_6bfe1586 thread function_7429abd1(self.var_b8eeb0fe.var_7983c848, self.var_b8eeb0fe.var_d0821c81, var_6bfe1586);
	}
}

/*
	Name: function_cfce9b82
	Namespace: namespace_dafbfd8e
	Checksum: 0xA9DF236C
	Offset: 0xF68
	Size: 0xB
	Parameters: 1
	Flags: None
*/
function function_cfce9b82(var_6bfe1586)
{
}

/*
	Name: function_83bb9b69
	Namespace: namespace_dafbfd8e
	Checksum: 0x37FBCE72
	Offset: 0xF80
	Size: 0x377
	Parameters: 1
	Flags: None
*/
function function_83bb9b69(var_6bfe1586)
{
	if(self.var_2bcbe272)
	{
		return;
	}
	self.var_3f29a509.var_e119970e namespace_a230c2b1::function_e54c54c3(1);
	self.var_2bcbe272 = 1;
	self.var_b8eeb0fe namespace_71e9cb84::function_74d6b22f("magicbox_closed_glow", 0);
	self.var_b8eeb0fe namespace_71e9cb84::function_74d6b22f("magicbox_open_glow", 1);
	var_d0821c81 = function_c3e9e1ab(var_6bfe1586);
	var_7983c848 = function_9b7fda5e("trigger_radius_use", self.var_3f29a509.var_722885f3 + VectorScale((0, 0, 1), 3), 0, 94, 64);
	var_7983c848 function_1d5013fa();
	var_7983c848 function_bb863f19();
	var_7983c848 function_1f80b3d5();
	var_7983c848 function_dc378587("none");
	var_7983c848 function_e68ee88a("HINT_INTERACTIVE_PROMPT");
	var_7983c848 function_d5eb00e3(&"COOP_MAGICBOX_SWAP_WEAPON");
	self.var_b8eeb0fe.var_7983c848 = var_7983c848;
	var_aafa484e = namespace_82b91a51::function_14518e76(var_7983c848, &"cp_magic_box", &"COOP_MAGICBOX_SWAP_WEAPON", &function_3c8ea097);
	var_aafa484e.var_bca3110 = 1;
	var_aafa484e.var_3f743272 = self;
	var_aafa484e function_8f279593();
	var_aafa484e function_37f7858a(var_7983c848);
	var_6bfe1586 function_52fddbd0();
	var_7983c848 namespace_82b91a51::function_9fcf3cd8(6, "player_took_weapon");
	var_7983c848 notify("hash_49d64e9");
	var_aafa484e namespace_a230c2b1::function_c5a39495(1, 1);
	self thread function_b449e467();
	var_aafa484e function_dc8c8404();
	self.var_b8eeb0fe waittill("hash_e959ad99");
	self.var_b8eeb0fe namespace_71e9cb84::function_74d6b22f("magicbox_closed_glow", 1);
	self.var_b8eeb0fe namespace_71e9cb84::function_74d6b22f("magicbox_open_glow", 0);
	self.var_3f29a509.var_e119970e namespace_a230c2b1::function_ed0abeee(1);
	self.var_2bcbe272 = 0;
}

/*
	Name: function_7429abd1
	Namespace: namespace_dafbfd8e
	Checksum: 0x75EDB728
	Offset: 0x1300
	Size: 0x83
	Parameters: 3
	Flags: None
*/
function function_7429abd1(var_7983c848, var_d0821c81, var_6bfe1586)
{
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_d0821c81));
	#/
	var_6bfe1586 namespace_fdfaa57d::function_43128d49(var_d0821c81, 0);
	var_7983c848 notify("hash_1285c563");
	var_6bfe1586 function_52fddbd0();
}

/*
	Name: function_c3e9e1ab
	Namespace: namespace_dafbfd8e
	Checksum: 0x982E330E
	Offset: 0x1390
	Size: 0x29F
	Parameters: 1
	Flags: None
*/
function function_c3e9e1ab(var_6bfe1586)
{
	var_dfcc01fd = level.var_6c3e6703;
	var_f10f645 = undefined;
	var_b971d8f0 = undefined;
	var_5b9e73d8 = 40;
	self thread function_cf5042c5();
	for(var_c957f6b6 = 0; var_c957f6b6 < var_5b9e73d8; var_c957f6b6++)
	{
		if(var_c957f6b6 < 20)
		{
			wait(0.05);
			continue;
		}
		if(var_c957f6b6 < 30)
		{
			wait(0.1);
			continue;
		}
		if(var_c957f6b6 < 35)
		{
			wait(0.2);
			continue;
		}
		if(var_c957f6b6 < 38)
		{
			wait(0.3);
		}
	}
	wait(1);
	self.var_b8eeb0fe.var_d0821c81 = function_f555c05b();
	var_f172090a = function_aba60185(self.var_b8eeb0fe.var_6ab6f4fd) * 40;
	self.var_b8eeb0fe.var_c222d467 = function_9b7fda5e("script_model", self.var_b8eeb0fe.var_722885f3 + var_f172090a, 0);
	self.var_b8eeb0fe.var_c222d467.var_6ab6f4fd = (self.var_b8eeb0fe.var_6ab6f4fd[0] * -1, self.var_b8eeb0fe.var_6ab6f4fd[1] + 180, self.var_b8eeb0fe.var_6ab6f4fd[2] * -1);
	self.var_b8eeb0fe.var_c222d467 function_97877619(self.var_b8eeb0fe.var_d0821c81[0], self.var_b8eeb0fe.var_d0821c81[0].var_7c2864e6);
	self.var_b8eeb0fe.var_c222d467 function_53033123(self.var_b8eeb0fe.var_d0821c81[2], 0, 0, 0, 0);
	self.var_b8eeb0fe notify("hash_33d10da3");
}

/*
	Name: function_f555c05b
	Namespace: namespace_dafbfd8e
	Checksum: 0x502C7259
	Offset: 0x1638
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_f555c05b()
{
	var_d0821c81 = namespace_fdfaa57d::function_1e2e0936(1);
	return var_d0821c81;
}

/*
	Name: function_cf5042c5
	Namespace: namespace_dafbfd8e
	Checksum: 0xE41281E5
	Offset: 0x1670
	Size: 0x20B
	Parameters: 0
	Flags: None
*/
function function_cf5042c5()
{
	self.var_b8eeb0fe function_f64e9135(2, "opening");
	while(self.var_b8eeb0fe function_3c427221(2) != "open")
	{
		wait(0.1);
	}
	self.var_b8eeb0fe function_f64e9135(3, "closed");
	self.var_b8eeb0fe function_f64e9135(4, "closed");
	namespace_82b91a51::function_76f13293();
	self.var_b8eeb0fe function_479cf0df(3);
	self.var_b8eeb0fe function_479cf0df(4);
	self.var_b8eeb0fe function_4d0b6261(3);
	self.var_b8eeb0fe function_4d0b6261(4);
	self.var_b8eeb0fe function_f64e9135(3, "opening");
	self.var_b8eeb0fe function_f64e9135(4, "opening");
	while(self.var_b8eeb0fe function_3c427221(3) != "open")
	{
		wait(0.5);
	}
	self.var_b8eeb0fe function_ee22cd10(3);
	self.var_b8eeb0fe function_ee22cd10(4);
}

/*
	Name: function_b449e467
	Namespace: namespace_dafbfd8e
	Checksum: 0xD4BDFC92
	Offset: 0x1888
	Size: 0xD7
	Parameters: 0
	Flags: None
*/
function function_b449e467()
{
	self.var_b8eeb0fe.var_c222d467 namespace_71e9cb84::function_74d6b22f("weapon_disappear_fx", 1);
	namespace_82b91a51::function_76f13293();
	self.var_b8eeb0fe.var_c222d467 function_dc8c8404();
	wait(1);
	self.var_b8eeb0fe function_f64e9135(2, "closing");
	while(self.var_b8eeb0fe function_3c427221(2) == "closing")
	{
		wait(0.1);
	}
	self.var_b8eeb0fe notify("hash_e959ad99");
}

#namespace namespace_293e8aad;

/*
	Name: function_dafbfd8e
	Namespace: namespace_293e8aad
	Checksum: 0x677BED00
	Offset: 0x1968
	Size: 0x265
	Parameters: 0
	Flags: 6
*/
function private autoexec function_dafbfd8e()
{
	classes.var_dafbfd8e[0] = function_a8fb77bd();
	classes.var_dafbfd8e[0].var_b684a6d1[-1270225817] = &namespace_dafbfd8e::function_b449e467;
	classes.var_dafbfd8e[0].var_b684a6d1[-816823611] = &namespace_dafbfd8e::function_cf5042c5;
	classes.var_dafbfd8e[0].var_b684a6d1[-178929573] = &namespace_dafbfd8e::function_f555c05b;
	classes.var_dafbfd8e[0].var_b684a6d1[-1008082517] = &namespace_dafbfd8e::function_c3e9e1ab;
	classes.var_dafbfd8e[0].var_b684a6d1[1948888017] = &namespace_dafbfd8e::function_7429abd1;
	classes.var_dafbfd8e[0].var_b684a6d1[-2084856983] = &namespace_dafbfd8e::function_83bb9b69;
	classes.var_dafbfd8e[0].var_b684a6d1[-808543358] = &namespace_dafbfd8e::function_cfce9b82;
	classes.var_dafbfd8e[0].var_b684a6d1[1015980183] = &namespace_dafbfd8e::function_3c8ea097;
	classes.var_dafbfd8e[0].var_b684a6d1[-1267600005] = &namespace_dafbfd8e::function_b471f57b;
	classes.var_dafbfd8e[0].var_b684a6d1[815649835] = &namespace_dafbfd8e::function_309dd42b;
	classes.var_dafbfd8e[0].var_b684a6d1[1606033458] = &namespace_dafbfd8e::function_5fba2032;
	classes.var_dafbfd8e[0].var_b684a6d1[-1690805083] = &namespace_dafbfd8e::function_9b385ca5;
}

/*
	Name: function_89a0f2a6
	Namespace: namespace_293e8aad
	Checksum: 0xAB63D8B8
	Offset: 0x1BD8
	Size: 0x121
	Parameters: 0
	Flags: None
*/
function function_89a0f2a6()
{
	if(!function_27c72c1b())
	{
		return;
	}
	var_7e526b74 = function_99201f25("bonuszm_magicbox", "script_noteworthy");
	foreach(var_e89d8da5 in var_7e526b74)
	{
		var_e89d8da5.var_e119970e namespace_a230c2b1::function_c5a39495(1, 1);
		var_e89d8da5 namespace_71e9cb84::function_74d6b22f("magicbox_closed_glow", 0);
		namespace_82b91a51::function_76f13293();
		var_e89d8da5 function_50ccee8d();
	}
}

/*
	Name: function_76eab3e
	Namespace: namespace_293e8aad
	Checksum: 0x26114334
	Offset: 0x1D08
	Size: 0x7B
	Parameters: 1
	Flags: None
*/
function function_76eab3e(var_e89d8da5)
{
	if(var_e89d8da5.var_caae374e === "bonuszm_magicbox")
	{
		if(isdefined(var_e89d8da5.var_e119970e))
		{
			var_e89d8da5.var_e119970e namespace_a230c2b1::function_c5a39495(1, 1);
		}
		var_e89d8da5 thread function_73ea8d16(var_e89d8da5);
	}
}

/*
	Name: function_73ea8d16
	Namespace: namespace_293e8aad
	Checksum: 0x301860B3
	Offset: 0x1D90
	Size: 0x5B
	Parameters: 1
	Flags: None
*/
function function_73ea8d16(var_e89d8da5)
{
	var_e89d8da5 endon("hash_128f8789");
	var_e89d8da5 namespace_71e9cb84::function_74d6b22f("magicbox_closed_glow", 0);
	namespace_82b91a51::function_76f13293();
	var_e89d8da5 function_dc8c8404();
}

