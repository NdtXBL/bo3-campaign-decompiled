#using scripts\codescripts\struct;
#using scripts\cp\_skipto;
#using scripts\cp\_util;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace namespace_4a344d81;

/*
	Name: function_2dc19561
	Namespace: namespace_4a344d81
	Checksum: 0xD606CA34
	Offset: 0x548
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("achievements", &function_8c87d8eb, undefined, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_4a344d81
	Checksum: 0xCB5B452B
	Offset: 0x588
	Size: 0xE3
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	namespace_dabbe128::function_eb99da89(&function_fb4f96b5);
	namespace_dabbe128::function_87f30e90(&function_87f30e90);
	namespace_dabbe128::function_7bb100ad(&function_7bb100ad);
	namespace_dabbe128::function_de1a6d25(&function_de1a6d25);
	namespace_dabbe128::function_1b292fa6(&function_4c579175);
	namespace_2f06d687::function_906bdb6d("wasp", &function_632712d7, 3);
	function_4462a8b7();
}

/*
	Name: function_4462a8b7
	Namespace: namespace_4a344d81
	Checksum: 0x895DB7E7
	Offset: 0x678
	Size: 0x119
	Parameters: 0
	Flags: None
*/
function function_4462a8b7()
{
	level.var_a4d4c1e3["cp_mi_cairo_aquifer"] = "CP_COMPLETE_AQUIFER";
	level.var_a4d4c1e3["cp_mi_sing_biodomes"] = "CP_COMPLETE_BIODOMES";
	level.var_a4d4c1e3["cp_mi_sing_blackstation"] = "CP_COMPLETE_BLACKSTATION";
	level.var_a4d4c1e3["cp_mi_cairo_infection"] = "CP_COMPLETE_INFECTION";
	level.var_a4d4c1e3["cp_mi_cairo_lotus"] = "CP_COMPLETE_LOTUS";
	level.var_a4d4c1e3["cp_mi_zurich_newworld"] = "CP_COMPLETE_NEWWORLD";
	level.var_a4d4c1e3["cp_mi_eth_prologue"] = "CP_COMPLETE_PROLOGUE";
	level.var_a4d4c1e3["cp_mi_cairo_ramses"] = "CP_COMPLETE_RAMSES";
	level.var_a4d4c1e3["cp_mi_sing_sgen"] = "CP_COMPLETE_SGEN";
	level.var_a4d4c1e3["cp_mi_sing_vengeance"] = "CP_COMPLETE_VENGEANCE";
}

/*
	Name: function_52c9c74a
	Namespace: namespace_4a344d81
	Checksum: 0x188EF673
	Offset: 0x7A0
	Size: 0xAB
	Parameters: 2
	Flags: None
*/
function function_52c9c74a(var_df827ad2, var_56503a18)
{
	if(!isdefined(var_56503a18))
	{
		var_56503a18 = 0;
	}
	if(function_27c72c1b() && !var_56503a18)
	{
		return;
	}
	/#
		function_d0eaf029("Dev Block strings are not supported" + var_df827ad2, (1, 1, 1));
		function_895b00("Dev Block strings are not supported" + var_df827ad2);
	#/
	self function_c718bb8f(var_df827ad2);
}

/*
	Name: function_fb4f96b5
	Namespace: namespace_4a344d81
	Checksum: 0xF3D0C2ED
	Offset: 0x858
	Size: 0xE7
	Parameters: 0
	Flags: None
*/
function function_fb4f96b5()
{
	self endon("hash_643a7daf");
	self.var_75cf9e2e = function_a8fb77bd();
	self.var_75cf9e2e.var_ac197c3f = 0;
	self.var_75cf9e2e.var_940a9f6e = 0;
	self.var_75cf9e2e.var_ec0b278c = [];
	self.var_75cf9e2e.var_43311285 = [];
	self thread function_34eaa01b();
	self thread function_e587e1f2();
	while(1)
	{
		self waittill("hash_52c9c74a", var_df827ad2);
		function_52c9c74a(var_df827ad2);
	}
}

/*
	Name: function_5f2f7800
	Namespace: namespace_4a344d81
	Checksum: 0x94943805
	Offset: 0x948
	Size: 0x73
	Parameters: 3
	Flags: None
*/
function function_5f2f7800(var_3f27ef65, var_76d85d44, var_3f0972ca)
{
	if(!isdefined(var_76d85d44) || !isdefined(level.var_a4d4c1e3[var_76d85d44]))
	{
		return;
	}
	if(var_3f0972ca < 2)
	{
		return;
	}
	var_3f27ef65 function_52c9c74a(level.var_a4d4c1e3[var_76d85d44]);
}

/*
	Name: function_c3e7ff05
	Namespace: namespace_4a344d81
	Checksum: 0x5DAB7B87
	Offset: 0x9C8
	Size: 0x243
	Parameters: 1
	Flags: None
*/
function function_c3e7ff05(var_3f27ef65)
{
	var_44a14bc7 = [];
	for(var_5e76f0af = 0; var_5e76f0af <= 4; var_5e76f0af++)
	{
		var_44a14bc7[var_5e76f0af] = 0;
	}
	var_7941f5c8 = namespace_1d795d47::function_23eda99c();
	var_f0ecfb92 = 0;
	foreach(var_1a443ebd in var_7941f5c8)
	{
		if(!var_3f27ef65 function_84368297("PlayerStatsByMap", var_1a443ebd, "hasBeenCompleted"))
		{
			continue;
		}
		var_158cb770 = var_3f27ef65 function_84368297("PlayerStatsByMap", var_1a443ebd, "highestStats", "HIGHEST_DIFFICULTY");
		if(!isdefined(var_44a14bc7[var_158cb770]))
		{
			var_44a14bc7[var_158cb770] = 0;
		}
		var_44a14bc7[var_158cb770]++;
		var_f0ecfb92++;
	}
	var_98680dde = var_7941f5c8.size;
	if(var_f0ecfb92 == var_98680dde)
	{
		var_3f27ef65 function_52c9c74a("CP_CAMPAIGN_COMPLETE");
	}
	if(var_44a14bc7[2] + var_44a14bc7[3] + var_44a14bc7[4] == var_98680dde)
	{
		var_3f27ef65 function_52c9c74a("CP_HARD_COMPLETE");
	}
	if(var_44a14bc7[4] == var_98680dde)
	{
		var_3f27ef65 function_52c9c74a("CP_REALISTIC_COMPLETE");
	}
}

/*
	Name: function_733a6065
	Namespace: namespace_4a344d81
	Checksum: 0x5DC98F99
	Offset: 0xC18
	Size: 0x63
	Parameters: 4
	Flags: None
*/
function function_733a6065(var_3f27ef65, var_76d85d44, var_3f0972ca, var_10c5a3ef)
{
	if(!var_10c5a3ef)
	{
		function_5f2f7800(var_3f27ef65, var_76d85d44, var_3f0972ca);
		function_c3e7ff05(var_3f27ef65);
	}
}

/*
	Name: function_34eaa01b
	Namespace: namespace_4a344d81
	Checksum: 0x609CFD03
	Offset: 0xC88
	Size: 0x137
	Parameters: 0
	Flags: None
*/
function function_34eaa01b()
{
	self endon("hash_643a7daf");
	while(1)
	{
		self waittill("hash_34c6c426");
		var_489b2980 = self.var_722885f3;
		self waittill("hash_fe772d2a");
		var_1d634a25 = function_7d15e2f8(var_489b2980, self.var_722885f3);
		var_3411368a = self function_84368297("Achievements", "CP_COMPLETE_WALL_RUN");
		var_3411368a = var_3411368a + var_1d634a25;
		/#
			function_d0eaf029(var_3411368a, (1, 1, 1));
		#/
		if(var_3411368a >= 9843)
		{
			function_52c9c74a("CP_COMPLETE_WALL_RUN");
			return;
		}
		else
		{
			self function_8f67433b("Achievements", "CP_COMPLETE_WALL_RUN", function_b6b79a0(var_3411368a));
		}
	}
}

/*
	Name: function_87f30e90
	Namespace: namespace_4a344d81
	Checksum: 0x99EC1590
	Offset: 0xDC8
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_87f30e90()
{
}

/*
	Name: function_7bb100ad
	Namespace: namespace_4a344d81
	Checksum: 0x94078186
	Offset: 0xDD8
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function function_7bb100ad(var_d4457625)
{
	self.var_74390712 = undefined;
	if(function_65f192a6(var_d4457625.var_3a212fd7))
	{
		if(var_d4457625.var_bf827987 & 8)
		{
			self.var_74390712 = var_d4457625.var_3a212fd7;
		}
	}
}

/*
	Name: function_4c579175
	Namespace: namespace_4a344d81
	Checksum: 0xE1AEB598
	Offset: 0xE48
	Size: 0x5B
	Parameters: 1
	Flags: None
*/
function function_4c579175(var_d4457625)
{
	self.var_75cf9e2e.var_ac197c3f = 0;
	self.var_75cf9e2e.var_940a9f6e = 0;
	self.var_75cf9e2e.var_ec0b278c = [];
	self.var_75cf9e2e.var_43311285 = [];
}

/*
	Name: function_1121f26a
	Namespace: namespace_4a344d81
	Checksum: 0x31717BFD
	Offset: 0xEB0
	Size: 0x16B
	Parameters: 2
	Flags: Private
*/
function private function_1121f26a(var_c856ad1d, var_89d5a592)
{
	if(isdefined(var_c856ad1d.var_a03af093))
	{
		var_1efe785f = function_7d15e2f8(var_c856ad1d.var_a03af093.var_722885f3, var_89d5a592.var_722885f3);
	}
	else
	{
		var_1efe785f = function_7d15e2f8(var_c856ad1d.var_722885f3, var_89d5a592.var_722885f3);
	}
	if(var_1efe785f >= 3937)
	{
		var_46907f23 = var_c856ad1d function_84368297("Achievements", "CP_DISTANCE_KILL");
		var_46907f23++;
		/#
			function_d0eaf029("Dev Block strings are not supported" + var_1efe785f + "Dev Block strings are not supported" + var_46907f23, (1, 1, 1));
		#/
		if(var_46907f23 >= 5)
		{
			var_c856ad1d function_52c9c74a("CP_DISTANCE_KILL");
		}
		else
		{
			var_c856ad1d function_8f67433b("Achievements", "CP_DISTANCE_KILL", var_46907f23);
		}
	}
}

/*
	Name: function_914b8688
	Namespace: namespace_4a344d81
	Checksum: 0x82E2B9B4
	Offset: 0x1028
	Size: 0x48B
	Parameters: 4
	Flags: Private
*/
function private function_914b8688(var_5dc5e20a, var_89d5a592, var_dfcc01fd, var_51e6a548)
{
	if(!isdefined(var_dfcc01fd))
	{
		return;
	}
	if(!isdefined(var_5dc5e20a.var_58477d59))
	{
		var_5dc5e20a.var_58477d59 = [];
		var_5dc5e20a.var_58477d59["CP_FLYING_WASP_KILL"] = 0;
		var_5dc5e20a.var_58477d59["CP_COMBAT_ROBOT_KILL"] = 0;
	}
	var_9663b3f1 = 0;
	if(var_dfcc01fd.var_4be20d44 == "gadget_firefly_swarm" || var_dfcc01fd.var_4be20d44 == "gadget_firefly_swarm_upgraded")
	{
		function_9dab90e7(var_5dc5e20a);
		var_9663b3f1 = 1;
	}
	else if(isdefined(var_5dc5e20a.var_75cf9e2e.var_6ce188b0) && var_dfcc01fd.var_4be20d44 == "gadget_unstoppable_force" || var_dfcc01fd.var_4be20d44 == "gadget_unstoppable_force_upgraded")
	{
		var_5dc5e20a.var_75cf9e2e.var_6ce188b0++;
		if(var_5dc5e20a.var_75cf9e2e.var_6ce188b0 >= 5)
		{
			var_5dc5e20a function_52c9c74a("CP_UNSTOPPABLE_KILL");
		}
	}
	else if(isdefined(var_5dc5e20a.var_a03af093))
	{
		if(isdefined(var_5dc5e20a.var_a03af093.var_1901b952))
		{
			var_5dc5e20a.var_a03af093.var_1901b952++;
		}
		else
		{
			var_5dc5e20a.var_a03af093.var_1901b952 = 1;
		}
		if(var_5dc5e20a.var_a03af093.var_fd67e920 == "wasp" && var_5dc5e20a.var_a03af093.var_1901b952 >= 20)
		{
			if(!var_5dc5e20a.var_58477d59["CP_FLYING_WASP_KILL"])
			{
				var_5dc5e20a function_52c9c74a("CP_FLYING_WASP_KILL");
				var_5dc5e20a.var_58477d59["CP_FLYING_WASP_KILL"] = 1;
			}
		}
		if(var_5dc5e20a.var_a03af093.var_1901b952 >= 10)
		{
			if(!var_5dc5e20a.var_58477d59["CP_COMBAT_ROBOT_KILL"])
			{
				var_5dc5e20a function_52c9c74a("CP_COMBAT_ROBOT_KILL");
				var_5dc5e20a.var_58477d59["CP_COMBAT_ROBOT_KILL"] = 1;
			}
		}
	}
	else if(function_e70ab977(var_51e6a548) && isdefined(var_51e6a548.var_6319d77b) && var_51e6a548.var_6319d77b == var_5dc5e20a)
	{
		if(isdefined(var_51e6a548.var_1901b952))
		{
			var_51e6a548.var_1901b952++;
		}
		else
		{
			var_51e6a548.var_1901b952 = 1;
		}
		if(var_51e6a548.var_1901b952 >= 10)
		{
			if(!var_5dc5e20a.var_58477d59["CP_COMBAT_ROBOT_KILL"])
			{
				var_5dc5e20a function_52c9c74a("CP_COMBAT_ROBOT_KILL");
				var_5dc5e20a.var_58477d59["CP_COMBAT_ROBOT_KILL"] = 1;
			}
		}
	}
	if(isdefined(var_89d5a592.var_284c5bbb) && !var_9663b3f1)
	{
		function_9dab90e7(var_5dc5e20a);
	}
	if(isdefined(var_5dc5e20a.var_75cf9e2e.var_a4fb0163) && var_5dc5e20a.var_75cf9e2e.var_a4fb0163 >= 6)
	{
		var_5dc5e20a function_52c9c74a("CP_FIREFLIES_KILL");
	}
}

/*
	Name: function_2b2fb40b
	Namespace: namespace_4a344d81
	Checksum: 0x4F15C880
	Offset: 0x14C0
	Size: 0x17B
	Parameters: 3
	Flags: Private
*/
function private function_2b2fb40b(var_5dc5e20a, var_aae1ed0d, var_dfcc01fd)
{
	var_5dc5e20a.var_75cf9e2e.var_940a9f6e++;
	var_c216f374 = var_5dc5e20a.var_75cf9e2e.var_ac197c3f;
	var_5dc5e20a.var_75cf9e2e.var_ec0b278c[var_c216f374] = GetTime();
	var_5dc5e20a.var_75cf9e2e.var_ac197c3f = var_c216f374 + 1 % 10;
	if(var_5dc5e20a.var_75cf9e2e.var_940a9f6e < 10)
	{
		return;
	}
	var_6001f5b1 = var_c216f374 + 1 % 10;
	var_a4ad846c = var_5dc5e20a.var_75cf9e2e.var_ec0b278c[var_6001f5b1];
	var_e48beec7 = var_5dc5e20a.var_75cf9e2e.var_ec0b278c[var_c216f374];
	if(var_5dc5e20a.var_75cf9e2e.var_940a9f6e >= 10 && var_e48beec7 - var_a4ad846c <= 3000)
	{
		var_5dc5e20a function_52c9c74a("CP_TIMED_KILL");
	}
}

/*
	Name: function_b1d71bd3
	Namespace: namespace_4a344d81
	Checksum: 0x25E2B1F9
	Offset: 0x1648
	Size: 0x18B
	Parameters: 2
	Flags: Private
*/
function private function_b1d71bd3(var_5dc5e20a, var_dfcc01fd)
{
	var_4c26012 = function_54d2de57(var_dfcc01fd);
	if(!isdefined(var_4c26012) || (var_4c26012 < 1 || var_4c26012 > 60))
	{
		return;
	}
	var_5dc5e20a.var_75cf9e2e.var_43311285[var_dfcc01fd.var_8c02d299.var_4be20d44] = GetTime();
	var_6c46ba29 = 0;
	var_376861f6 = GetTime() - 30000;
	if(var_376861f6 < 0)
	{
		var_376861f6 = 0;
	}
	foreach(var_61af974a in var_5dc5e20a.var_75cf9e2e.var_43311285)
	{
		if(var_61af974a > var_376861f6)
		{
			var_6c46ba29++;
		}
	}
	if(var_6c46ba29 >= 5)
	{
		var_5dc5e20a function_52c9c74a("CP_DIFFERENT_GUN_KILL");
	}
}

/*
	Name: function_307b3ac3
	Namespace: namespace_4a344d81
	Checksum: 0x727CB614
	Offset: 0x17E0
	Size: 0x24B
	Parameters: 3
	Flags: Private
*/
function private function_307b3ac3(var_3f27ef65, var_89d5a592, var_433291aa)
{
	if(!var_89d5a592 namespace_82b91a51::function_d9c13489() || var_89d5a592.var_3e94206a !== "axis")
	{
		return;
	}
	if(!isdefined(var_3f27ef65.var_75cf9e2e.var_6a670270))
	{
		var_3f27ef65.var_75cf9e2e.var_6a670270 = [];
	}
	if(!isdefined(var_3f27ef65.var_75cf9e2e.var_6a670270))
	{
		var_3f27ef65.var_75cf9e2e.var_6a670270 = [];
	}
	else if(!function_6e2770d8(var_3f27ef65.var_75cf9e2e.var_6a670270))
	{
		var_3f27ef65.var_75cf9e2e.var_6a670270 = function_84970cc4(var_3f27ef65.var_75cf9e2e.var_6a670270);
	}
	var_3f27ef65.var_75cf9e2e.var_6a670270[var_3f27ef65.var_75cf9e2e.var_6a670270.size] = GetTime();
	var_6001f5b1 = var_3f27ef65.var_75cf9e2e.var_6a670270.size - 1;
	var_6f31ae62 = GetTime() - 3000;
	for(var_7b5c89e6 = var_6001f5b1; var_7b5c89e6 >= 0; var_7b5c89e6--)
	{
		if(var_3f27ef65.var_75cf9e2e.var_6a670270[var_7b5c89e6] < var_6f31ae62)
		{
			function_6c668988(var_3f27ef65.var_75cf9e2e.var_6a670270, var_7b5c89e6);
		}
	}
	if(var_3f27ef65.var_75cf9e2e.var_6a670270.size >= 5)
	{
		var_3f27ef65 function_52c9c74a("CP_TIMED_STUNNED_KILL");
	}
}

/*
	Name: function_c4f2de38
	Namespace: namespace_4a344d81
	Checksum: 0xC41A2FC8
	Offset: 0x1A38
	Size: 0xEB
	Parameters: 3
	Flags: Private
*/
function private function_c4f2de38(var_5dc5e20a, var_8bcb913d, var_178903fd)
{
	if(!isdefined(var_178903fd.var_dfcc01fd) || !isdefined(self.var_fd67e920) || self.var_fd67e920 != "wasp" || var_178903fd.var_dfcc01fd.var_fe311e35 != "grenade")
	{
		return;
	}
	if(!isdefined(var_178903fd.var_9bbaef3))
	{
		var_178903fd.var_9bbaef3 = 1;
	}
	else
	{
		var_178903fd.var_9bbaef3++;
	}
	if(var_178903fd.var_9bbaef3 >= 3)
	{
		var_5dc5e20a function_52c9c74a("CP_KILL_WASPS");
	}
}

/*
	Name: function_17ec453c
	Namespace: namespace_4a344d81
	Checksum: 0x3027EED4
	Offset: 0x1B30
	Size: 0xC3
	Parameters: 3
	Flags: None
*/
function function_17ec453c(var_3a212fd7, var_89d5a592, var_433291aa)
{
	if(isdefined(var_3a212fd7.var_6fb3bfc3) && function_65f192a6(var_3a212fd7.var_6fb3bfc3))
	{
		if(isdefined(var_3a212fd7.var_1901b952))
		{
			var_3a212fd7.var_1901b952++;
		}
		else
		{
			var_3a212fd7.var_1901b952 = 1;
		}
		if(var_3a212fd7.var_1901b952 >= 10)
		{
			var_3a212fd7.var_6fb3bfc3 function_52c9c74a("CP_COMBAT_ROBOT_KILL");
		}
	}
}

/*
	Name: function_99d6210d
	Namespace: namespace_4a344d81
	Checksum: 0x19CB686E
	Offset: 0x1C00
	Size: 0x7B
	Parameters: 2
	Flags: None
*/
function function_99d6210d(var_3f27ef65, var_89d5a592)
{
	if(isdefined(var_89d5a592.var_74390712) && var_89d5a592.var_74390712 == var_3f27ef65 && var_89d5a592.var_3e94206a !== "allies")
	{
		var_3f27ef65 function_52c9c74a("CP_OBSTRUCTED_KILL");
	}
}

/*
	Name: function_fbe029db
	Namespace: namespace_4a344d81
	Checksum: 0xFCE6693E
	Offset: 0x1C88
	Size: 0x5B
	Parameters: 1
	Flags: None
*/
function function_fbe029db(var_3f27ef65)
{
	var_ba8faef8 = var_3f27ef65 function_916d0351();
	if(2 <= var_ba8faef8)
	{
		var_3f27ef65 function_52c9c74a("CP_MELEE_COMBO_KILL");
	}
}

/*
	Name: function_de1a6d25
	Namespace: namespace_4a344d81
	Checksum: 0x38B1BD89
	Offset: 0x1CF0
	Size: 0x1AB
	Parameters: 1
	Flags: None
*/
function function_de1a6d25(var_d4457625)
{
	if(function_65f192a6(var_d4457625.var_3a212fd7))
	{
		var_5dc5e20a = var_d4457625.var_3a212fd7;
		function_1121f26a(var_5dc5e20a, self);
		function_914b8688(var_5dc5e20a, self, var_d4457625.var_dfcc01fd, var_d4457625.var_51e6a548);
		function_fbe029db(var_5dc5e20a);
		function_2b2fb40b(var_5dc5e20a, self, var_d4457625.var_dfcc01fd);
		function_b1d71bd3(var_5dc5e20a, var_d4457625.var_dfcc01fd);
		function_c4f2de38(var_5dc5e20a, self, var_d4457625.var_51e6a548);
		function_307b3ac3(var_5dc5e20a, self, var_d4457625.var_dfcc01fd);
		function_99d6210d(var_5dc5e20a, self);
	}
	else if(function_e70ab977(var_d4457625.var_3a212fd7))
	{
		function_17ec453c(var_d4457625.var_3a212fd7, self, var_d4457625.var_dfcc01fd);
	}
}

/*
	Name: function_632712d7
	Namespace: namespace_4a344d81
	Checksum: 0x6A438277
	Offset: 0x1EA8
	Size: 0xB
	Parameters: 1
	Flags: None
*/
function function_632712d7(var_3e671a1)
{
}

/*
	Name: function_9dab90e7
	Namespace: namespace_4a344d81
	Checksum: 0xF271B138
	Offset: 0x1EC0
	Size: 0x5F
	Parameters: 1
	Flags: Private
*/
function private function_9dab90e7(var_5dc5e20a)
{
	if(!isdefined(var_5dc5e20a.var_75cf9e2e.var_a4fb0163))
	{
		var_5dc5e20a.var_75cf9e2e.var_a4fb0163 = 1;
	}
	else
	{
		var_5dc5e20a.var_75cf9e2e.var_a4fb0163++;
	}
}

/*
	Name: function_e587e1f2
	Namespace: namespace_4a344d81
	Checksum: 0x3D213ABF
	Offset: 0x1F28
	Size: 0xAB
	Parameters: 0
	Flags: Private
*/
function private function_e587e1f2()
{
	self endon("hash_643a7daf");
	while(1)
	{
		self waittill("hash_7a5231dc", var_71ad4980, var_5e3ecd9a, var_1630584c, var_30934be8, var_3d7e4bbb);
		if(var_3d7e4bbb && (var_1630584c >= 1 && var_1630584c <= 60))
		{
			self function_52c9c74a("CP_ALL_WEAPON_ATTACHMENTS");
			break;
		}
	}
}

/*
	Name: function_17dc8de7
	Namespace: namespace_4a344d81
	Checksum: 0xDB95929F
	Offset: 0x1FE0
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function function_17dc8de7(var_e9af7d73)
{
	if(var_e9af7d73 == 3)
	{
		self function_52c9c74a("CP_ALL_WEAPON_CAMOS");
	}
}

/*
	Name: function_b2d1aafa
	Namespace: namespace_4a344d81
	Checksum: 0x31223000
	Offset: 0x2020
	Size: 0xBF
	Parameters: 0
	Flags: None
*/
function function_b2d1aafa()
{
	if(level.var_175490fb.var_12f85dec == 0)
	{
		foreach(var_5dc5e20a in level.var_2395e945)
		{
			if(!isdefined(var_5dc5e20a.var_75cf9e2e.var_a4fb0163))
			{
				continue;
			}
			var_5dc5e20a.var_75cf9e2e.var_a4fb0163 = undefined;
		}
	}
}

/*
	Name: function_386309ce
	Namespace: namespace_4a344d81
	Checksum: 0xCE3AD276
	Offset: 0x20E8
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_386309ce(var_5dc5e20a)
{
	var_5dc5e20a.var_75cf9e2e.var_6ce188b0 = 0;
}

/*
	Name: function_6903d776
	Namespace: namespace_4a344d81
	Checksum: 0x536761BA
	Offset: 0x2118
	Size: 0x2D
	Parameters: 1
	Flags: None
*/
function function_6903d776(var_44c1c544)
{
	if(isdefined(var_44c1c544.var_1901b952))
	{
		var_44c1c544.var_1901b952 = undefined;
	}
}

