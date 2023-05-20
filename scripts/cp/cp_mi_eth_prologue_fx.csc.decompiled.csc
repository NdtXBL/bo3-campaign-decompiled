#using scripts\codescripts\struct;
#using scripts\shared\fx_shared;
#using scripts\shared\postfx_shared;

#namespace namespace_34e37984;

/*
	Name: function_d290ebfa
	Namespace: namespace_34e37984
	Checksum: 0xAD0E7071
	Offset: 0x158
	Size: 0x1D
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	level.var_c1aa5253["player_tunnel_dust"] = "dirt/fx_dust_motes_player_loop_lite";
}

/*
	Name: function_fda9ad5f
	Namespace: namespace_34e37984
	Checksum: 0x15784D07
	Offset: 0x180
	Size: 0x10F
	Parameters: 1
	Flags: None
*/
function function_fda9ad5f(var_ec74b091)
{
	self endon("hash_643a7daf");
	self endon("hash_d5da096");
	var_59579cf9 = function_6ada35ba(var_ec74b091, "turn_off_tunnel_dust_fx", "targetname");
	var_c866fc0d = function_6ada35ba(var_ec74b091, "turn_on_tunnel_dust_fx", "targetname");
	if(isdefined(var_59579cf9) && isdefined(var_c866fc0d))
	{
		while(1)
		{
			var_c866fc0d waittill("hash_4dbf3ae3");
			self function_ba9197c(var_ec74b091, 0, 1, 0, 0, undefined, 0);
			var_59579cf9 waittill("hash_4dbf3ae3");
			self function_ba9197c(var_ec74b091, 1, 0, 0, 0, undefined, 0);
		}
	}
}

/*
	Name: function_ba9197c
	Namespace: namespace_34e37984
	Checksum: 0x1ED9EAB9
	Offset: 0x298
	Size: 0x113
	Parameters: 7
	Flags: None
*/
function function_ba9197c(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		if(isdefined(self.var_ac46de76))
		{
			function_28573e36(var_ec74b091, self.var_ac46de76, 1);
			self notify("hash_4db222ba");
			wait(0.1);
		}
		self.var_ac46de76 = function_2e9c26ef(var_ec74b091, level.var_c1aa5253["player_tunnel_dust"], (0, 0, 0), (1, 0, 0), (0, 0, 1));
	}
	else
	{
		self notify("hash_4db222ba");
		if(isdefined(self.var_ac46de76))
		{
			function_28573e36(var_ec74b091, self.var_ac46de76, 1);
		}
	}
}

/*
	Name: function_55f87893
	Namespace: namespace_34e37984
	Checksum: 0x957ED9EA
	Offset: 0x3B8
	Size: 0x63
	Parameters: 7
	Flags: None
*/
function function_55f87893(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		self namespace_bdde9225::function_bca12b73("pstfx_blood_spatter");
	}
}

