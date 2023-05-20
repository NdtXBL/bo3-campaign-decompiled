#using scripts\codescripts\struct;
#using scripts\cp\_load;
#using scripts\cp\_oed;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\duplicaterender_mgr;
#using scripts\shared\filter_shared;
#using scripts\shared\math_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicles\_quadtank;
#using scripts\shared\weapons\spike_charge;

#namespace namespace_4124d;

/*
	Name: function_2dc19561
	Namespace: namespace_4124d
	Checksum: 0x25572171
	Offset: 0x340
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("arena_defend", &function_8c87d8eb, undefined, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_4124d
	Checksum: 0x40F3D869
	Offset: 0x380
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	function_2ea898a8();
	namespace_dabbe128::function_828aea2c(&function_fb4f96b5);
}

/*
	Name: function_2ea898a8
	Namespace: namespace_4124d
	Checksum: 0x9BEE5F1C
	Offset: 0x3C0
	Size: 0xDB
	Parameters: 0
	Flags: None
*/
function function_2ea898a8()
{
	namespace_71e9cb84::function_50f16166("scriptmover", "arena_defend_weak_point_keyline", 1, 1, "int", &function_a2296301, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "clear_all_dyn_ents", 1, 1, "counter", &function_37cf9477, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "set_dedicated_shadow", 1, 1, "int", &function_a40e70b2, 0, 0);
}

/*
	Name: function_fb4f96b5
	Namespace: namespace_4124d
	Checksum: 0xEEA10356
	Offset: 0x4A8
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_fb4f96b5(var_ec74b091)
{
	namespace_1c38f9cf::function_c20cc247("weakpoint_keyline", 100, "weakpoint_keyline_show_z", "weakpoint_keyline_hide_z", 2, "mc/hud_outline_model_z_orange", 1);
}

/*
	Name: function_a2296301
	Namespace: namespace_4124d
	Checksum: 0x2362AFFF
	Offset: 0x500
	Size: 0x163
	Parameters: 7
	Flags: None
*/
function function_a2296301(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		self namespace_1c38f9cf::function_c4cc39ce(var_ec74b091, "weakpoint_keyline_show_z", "weakpoint_keyline_hide_z");
		self function_cae0c618(3);
		self function_ddb95859(1);
		if(self.var_6df9264 == "wpn_t7_spike_launcher_projectile_var")
		{
			self thread function_cbf697f5(var_ec74b091);
		}
	}
	else
	{
		self namespace_1c38f9cf::function_c4cc39ce(var_ec74b091, "weakpoint_keyline_hide_z", "weakpoint_keyline_show_z");
		self function_752fada3(3);
		self function_ddb95859(0);
		if(self.var_6df9264 == "wpn_t7_spike_launcher_projectile_var")
		{
			self notify("hash_a538648e");
			self function_958821cd(var_ec74b091);
		}
	}
}

/*
	Name: function_cbf697f5
	Namespace: namespace_4124d
	Checksum: 0x806D329C
	Offset: 0x670
	Size: 0x10B
	Parameters: 1
	Flags: None
*/
function function_cbf697f5(var_ec74b091)
{
	self notify("hash_a538648e");
	self endon("hash_d5da096");
	self endon("hash_a538648e");
	self namespace_82b91a51::function_2e224d69(var_ec74b091);
	var_3d5dc0df = 0.3;
	for(;;)
	{
		self function_958821cd(var_ec74b091);
		self function_d2e7a133(var_ec74b091);
		namespace_82b91a51::function_193e964(var_ec74b091, var_3d5dc0df, 0.01, "player_switch");
		self namespace_82b91a51::function_2e224d69(var_ec74b091);
		var_3d5dc0df = namespace_d73b9283::function_31931862(var_3d5dc0df / 1.2, 0.08, 0.3);
	}
}

/*
	Name: function_d2e7a133
	Namespace: namespace_4124d
	Checksum: 0x5196FC91
	Offset: 0x788
	Size: 0x7B
	Parameters: 1
	Flags: None
*/
function function_d2e7a133(var_ec74b091)
{
	var_5c632d10 = self function_d48f2ab3("tag_fx") + VectorScale((0, 0, 1), 4);
	self.var_5753664b = function_fd4ba5e1(var_ec74b091, level.var_c1aa5253["spike_light"], var_5c632d10);
}

/*
	Name: function_958821cd
	Namespace: namespace_4124d
	Checksum: 0x73A57C1
	Offset: 0x810
	Size: 0x4D
	Parameters: 1
	Flags: None
*/
function function_958821cd(var_ec74b091)
{
	if(isdefined(self.var_5753664b) && self.var_5753664b != 0)
	{
		function_d555a113(var_ec74b091, self.var_5753664b);
		self.var_5753664b = undefined;
	}
}

/*
	Name: function_37cf9477
	Namespace: namespace_4124d
	Checksum: 0x4A8718D2
	Offset: 0x868
	Size: 0x101
	Parameters: 7
	Flags: None
*/
function function_37cf9477(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		function_f7640406();
		var_f47aa4cf = function_893e786e("arena_defend_dyn_ents");
		foreach(var_a3d46ee4 in var_f47aa4cf)
		{
			function_bda346a(var_a3d46ee4, 0);
		}
	}
}

/*
	Name: function_a40e70b2
	Namespace: namespace_4124d
	Checksum: 0xD174737F
	Offset: 0x978
	Size: 0x73
	Parameters: 7
	Flags: None
*/
function function_a40e70b2(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		self function_b97730be(1);
	}
	else
	{
		self function_b97730be(0);
	}
}

