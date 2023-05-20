#using scripts\codescripts\struct;
#using scripts\shared\math_shared;
#using scripts\shared\util_shared;

#namespace namespace_3d2de961;

/*
	Name: function_d290ebfa
	Namespace: namespace_3d2de961
	Checksum: 0x8A023D93
	Offset: 0x128
	Size: 0x1D
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	level.var_c1aa5253["crossbow_light"] = "weapon/fx_equip_light_os";
}

/*
	Name: function_ab1f9ea1
	Namespace: namespace_3d2de961
	Checksum: 0x439528B7
	Offset: 0x150
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_ab1f9ea1(var_ec74b091)
{
	if(self function_ba8f1d94())
	{
		return;
	}
	self thread function_e18161a(var_ec74b091);
}

/*
	Name: function_e18161a
	Namespace: namespace_3d2de961
	Checksum: 0x350353A4
	Offset: 0x1A0
	Size: 0x12B
	Parameters: 1
	Flags: None
*/
function function_e18161a(var_ec74b091)
{
	self notify("hash_a538648e");
	self endon("hash_d5da096");
	self endon("hash_a538648e");
	self namespace_82b91a51::function_2e224d69(var_ec74b091);
	var_32b93aca = 0.3;
	for(;;)
	{
		self function_958821cd(var_ec74b091);
		self function_d2e7a133(var_ec74b091);
		self function_9eb5d027(var_ec74b091);
		self function_921a1574(var_ec74b091, "wpn_semtex_alert");
		namespace_82b91a51::function_193e964(var_ec74b091, var_32b93aca, 0.01, "player_switch");
		var_32b93aca = namespace_d73b9283::function_31931862(var_32b93aca / 1.2, 0.08, 0.3);
	}
}

/*
	Name: function_d2e7a133
	Namespace: namespace_3d2de961
	Checksum: 0xBFC8117E
	Offset: 0x2D8
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_d2e7a133(var_ec74b091)
{
	var_5dc5e20a = function_79c174a3(var_ec74b091);
	self.var_5753664b = function_da6acfd2(var_ec74b091, level.var_c1aa5253["crossbow_light"], self, "tag_origin");
}

/*
	Name: function_958821cd
	Namespace: namespace_3d2de961
	Checksum: 0xDB6B62D7
	Offset: 0x350
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
	Name: function_9eb5d027
	Namespace: namespace_3d2de961
	Checksum: 0x17A0A744
	Offset: 0x3A8
	Size: 0xD3
	Parameters: 1
	Flags: None
*/
function function_9eb5d027(var_ec74b091)
{
	var_5dc5e20a = function_79c174a3(var_ec74b091);
	if(isdefined(var_5dc5e20a))
	{
		if(var_5dc5e20a namespace_82b91a51::function_99d55485(var_ec74b091))
		{
			return;
		}
	}
	if(self namespace_82b91a51::function_f36b8920(var_ec74b091))
	{
		return;
	}
	var_94afbc2d = self function_f8f96b4a();
	if(isdefined(var_94afbc2d) && var_94afbc2d == var_5dc5e20a)
	{
		var_94afbc2d function_e2af603e(var_ec74b091, "buzz_high");
	}
}

