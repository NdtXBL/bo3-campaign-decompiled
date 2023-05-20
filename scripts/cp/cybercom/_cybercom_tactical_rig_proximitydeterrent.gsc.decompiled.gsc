#using scripts\codescripts\struct;
#using scripts\cp\cybercom\_cybercom;
#using scripts\cp\cybercom\_cybercom_dev;
#using scripts\cp\cybercom\_cybercom_gadget_system_overload;
#using scripts\cp\cybercom\_cybercom_tactical_rig;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\hud_util_shared;
#using scripts\shared\math_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace namespace_d1c4e441;

/*
	Name: function_c35e6aab
	Namespace: namespace_d1c4e441
	Checksum: 0x99EC1590
	Offset: 0x5C0
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_c35e6aab()
{
}

/*
	Name: function_d290ebfa
	Namespace: namespace_d1c4e441
	Checksum: 0x27AD3E78
	Offset: 0x5D0
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	namespace_dabbe128::function_eb99da89(&function_fb4f96b5);
	namespace_dabbe128::function_356a4ee1(&function_aebcf025);
	namespace_726a1ef0::function_8cb15f87("cybercom_proximitydeterrent", 2);
	namespace_726a1ef0::function_8b4ef058("cybercom_proximitydeterrent", &function_2c2e5090, &function_fba89486);
	namespace_726a1ef0::function_37a33686("cybercom_proximitydeterrent", &function_be62f8b4, &function_947ca4ed);
}

/*
	Name: function_fb4f96b5
	Namespace: namespace_d1c4e441
	Checksum: 0x99EC1590
	Offset: 0x6B0
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_fb4f96b5()
{
}

/*
	Name: function_aebcf025
	Namespace: namespace_d1c4e441
	Checksum: 0x99EC1590
	Offset: 0x6C0
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_aebcf025()
{
}

/*
	Name: function_2c2e5090
	Namespace: namespace_d1c4e441
	Checksum: 0x2D815F59
	Offset: 0x6D0
	Size: 0x1DB
	Parameters: 1
	Flags: None
*/
function function_2c2e5090(var_fe311e35)
{
	self.var_175490fb.var_a9774972 = function_c4d5ec1f("gadget_proximity_det");
	self.var_175490fb.var_f4b9137e = function_c4d5ec1f("gadget_es_strike");
	if(!isdefined(self.var_175490fb.var_d7d9f704))
	{
		self.var_175490fb.var_d7d9f704 = [];
		self.var_175490fb.var_d7d9f704[0] = function_a8fb77bd();
		self.var_175490fb.var_d7d9f704[1] = function_a8fb77bd();
		self.var_175490fb.var_d7d9f704[2] = function_a8fb77bd();
		self.var_175490fb.var_d7d9f704[3] = function_a8fb77bd();
		self.var_175490fb.var_d7d9f704[0].var_60db70fa = 0;
		self.var_175490fb.var_d7d9f704[1].var_60db70fa = 0;
		self.var_175490fb.var_d7d9f704[2].var_60db70fa = 0;
		self.var_175490fb.var_d7d9f704[3].var_60db70fa = 0;
	}
	self thread function_f5590749();
	self thread function_25cb4ffd(var_fe311e35);
}

/*
	Name: function_fba89486
	Namespace: namespace_d1c4e441
	Checksum: 0xEB9DA758
	Offset: 0x8B8
	Size: 0x25
	Parameters: 1
	Flags: None
*/
function function_fba89486(var_fe311e35)
{
	self.var_175490fb.var_a9774972 = undefined;
	self notify("hash_fba89486");
}

/*
	Name: function_25cb4ffd
	Namespace: namespace_d1c4e441
	Checksum: 0xFDC5E041
	Offset: 0x8E8
	Size: 0x137
	Parameters: 1
	Flags: None
*/
function function_25cb4ffd(var_fe311e35)
{
	self notify("hash_25cb4ffd");
	self endon("hash_25cb4ffd");
	self endon("hash_643a7daf");
	self endon("take_ability_" + var_fe311e35);
	while(1)
	{
		self waittill("hash_f9348fda", var_74d0774f, var_677b3e78, var_a3382de1, var_10e30246, var_394451d8, var_c4fe462, var_e64d69f9, var_c04aef90, var_1d6db0a3);
		if(function_5dbf7eca(var_394451d8, "MOD_MELEE") && isdefined(var_677b3e78))
		{
			self.var_175490fb.var_be57f366 = var_677b3e78;
			self namespace_726a1ef0::function_de82b8b4(var_fe311e35);
			self thread function_ae8e24a7(var_677b3e78);
		}
	}
}

/*
	Name: function_f5590749
	Namespace: namespace_d1c4e441
	Checksum: 0x100BCF
	Offset: 0xA28
	Size: 0x267
	Parameters: 0
	Flags: None
*/
function function_f5590749()
{
	self endon("hash_fba89486");
	while(1)
	{
		var_6556d20e = GetTime();
		var_f9459f98 = undefined;
		var_2f0e78d0 = 0;
		for(var_7e8d0707 = 0; var_7e8d0707 < 4; var_7e8d0707++)
		{
			if(self.var_175490fb.var_d7d9f704[var_7e8d0707].var_60db70fa > var_6556d20e)
			{
				var_a0ad4f34 = self.var_175490fb.var_d7d9f704[var_7e8d0707].var_a0ad4f34;
				if(isdefined(var_a0ad4f34))
				{
					self.var_175490fb.var_d7d9f704[var_7e8d0707].var_3b6e5f7e = self namespace_175490fb::function_c43df297(var_a0ad4f34.var_722885f3);
				}
				if(self.var_175490fb.var_d7d9f704[var_7e8d0707].var_60db70fa > var_2f0e78d0)
				{
					var_2f0e78d0 = self.var_175490fb.var_d7d9f704[var_7e8d0707].var_60db70fa;
					var_f9459f98 = var_7e8d0707;
				}
				continue;
			}
			if(self.var_175490fb.var_d7d9f704[var_7e8d0707].var_60db70fa != 0)
			{
				self.var_175490fb.var_d7d9f704[var_7e8d0707].var_60db70fa = 0;
				self.var_175490fb.var_d7d9f704[var_7e8d0707].var_a0ad4f34 = undefined;
				self.var_175490fb.var_d7d9f704[var_7e8d0707].var_3b6e5f7e = undefined;
			}
		}
		if(isdefined(var_f9459f98))
		{
			self namespace_71e9cb84::function_cc4d5165("playerAbilities.proximityIndicatorIntensity", 1);
			self namespace_71e9cb84::function_cc4d5165("playerAbilities.proximityIndicatorDirection", var_f9459f98);
		}
		else
		{
			self namespace_71e9cb84::function_cc4d5165("playerAbilities.proximityIndicatorIntensity", 0);
		}
		wait(0.05);
	}
}

/*
	Name: function_ae8e24a7
	Namespace: namespace_d1c4e441
	Checksum: 0x8BAC3FA0
	Offset: 0xC98
	Size: 0x16B
	Parameters: 1
	Flags: None
*/
function function_ae8e24a7(var_a0ad4f34)
{
	var_3b6e5f7e = self namespace_175490fb::function_c43df297(var_a0ad4f34.var_722885f3);
	if(var_3b6e5f7e > -45 && var_3b6e5f7e <= 45)
	{
		var_7e8d0707 = 0;
	}
	else if(var_3b6e5f7e > 45 && var_3b6e5f7e <= 135)
	{
		var_7e8d0707 = 3;
	}
	else if(var_3b6e5f7e > 135 && var_3b6e5f7e <= 180 || (var_3b6e5f7e >= -180 && var_3b6e5f7e < -135))
	{
		var_7e8d0707 = 2;
	}
	else
	{
		var_7e8d0707 = 1;
	}
	self.var_175490fb.var_d7d9f704[var_7e8d0707].var_60db70fa = GetTime() + function_4bd0142f("scr_proximity_indicator_durationMSEC", 1500);
	self.var_175490fb.var_d7d9f704[var_7e8d0707].var_a0ad4f34 = var_a0ad4f34;
	self.var_175490fb.var_d7d9f704[var_7e8d0707].var_3b6e5f7e = var_3b6e5f7e;
}

/*
	Name: function_be62f8b4
	Namespace: namespace_d1c4e441
	Checksum: 0x4C837FBB
	Offset: 0xE10
	Size: 0x5B
	Parameters: 1
	Flags: None
*/
function function_be62f8b4(var_fe311e35)
{
	if(isdefined(self.var_175490fb.var_be57f366))
	{
		self.var_175490fb.var_be57f366 thread function_e24410ed(var_fe311e35, self);
	}
	self namespace_726a1ef0::function_e7e75042(var_fe311e35);
}

/*
	Name: function_947ca4ed
	Namespace: namespace_d1c4e441
	Checksum: 0xC7D536E8
	Offset: 0xE78
	Size: 0xB
	Parameters: 1
	Flags: None
*/
function function_947ca4ed(var_fe311e35)
{
}

/*
	Name: function_e24410ed
	Namespace: namespace_d1c4e441
	Checksum: 0xF4BAB42F
	Offset: 0xE90
	Size: 0xCB
	Parameters: 2
	Flags: None
*/
function function_e24410ed(var_fe311e35, var_5dc5e20a)
{
	if(!isdefined(self))
	{
		return;
	}
	if(isdefined(var_5dc5e20a.var_175490fb.var_3fd69aad) && var_5dc5e20a.var_175490fb.var_3fd69aad)
	{
		return;
	}
	if(isdefined(self.var_342d9e3a) && self.var_342d9e3a)
	{
		return;
	}
	var_5dc5e20a function_921a1574("gdt_cybercore_rig_prox_activate");
	level thread function_55b9d032(var_5dc5e20a, self, var_5dc5e20a function_76f34311(var_fe311e35) == 2);
}

/*
	Name: function_55b9d032
	Namespace: namespace_d1c4e441
	Checksum: 0x2FBD5D4E
	Offset: 0xF68
	Size: 0x423
	Parameters: 3
	Flags: Private
*/
function private function_55b9d032(var_5dc5e20a, var_a0ad4f34, var_668a3301)
{
	var_a0ad4f34 endon("hash_128f8789");
	if(!isdefined(var_a0ad4f34.var_8fc0e50e))
	{
		return;
	}
	switch(var_a0ad4f34.var_8fc0e50e)
	{
		case "human":
		case "human_riotshield":
		case "zombie":
		{
			var_36a3e6ad = "J_Wrist_LE";
			var_5753664b = level.var_c1aa5253["es_effect_human"];
			var_b31a6ddf = "j_spine4";
			var_f9348fda = var_a0ad4f34.var_3a90f16b;
			var_dfcc01fd = var_5dc5e20a.var_175490fb.var_a9774972;
			if(isdefined(var_a0ad4f34.var_e4b959c5) && isdefined(var_a0ad4f34.var_273d3e89))
			{
				var_a0ad4f34 thread namespace_76d95162::function_81d8fcf2(var_a0ad4f34.var_e4b959c5 + var_a0ad4f34.var_273d3e89 + "_exert_electrocution", 1);
			}
			break;
		}
		case "robot":
		{
			var_36a3e6ad = "J_Wrist_LE";
			var_5753664b = level.var_c1aa5253["es_effect_robot"];
			var_a0ad4f34 function_921a1574("fly_bot_disable");
			var_b31a6ddf = "j_spine4";
			var_f9348fda = var_a0ad4f34.var_3a90f16b;
			var_dfcc01fd = var_5dc5e20a.var_175490fb.var_f4b9137e;
			break;
		}
		case "warlord":
		{
			var_36a3e6ad = "J_Wrist_LE";
			var_5753664b = level.var_c1aa5253["es_effect_warlord"];
			var_b31a6ddf = "j_spine4";
			var_f9348fda = function_4bd0142f("scr_proximity_stun_damage_to_warlord", 60);
			var_dfcc01fd = var_5dc5e20a.var_175490fb.var_a9774972;
			break;
		}
		case "direwolf":
		{
			var_36a3e6ad = "J_Wrist_LE";
			var_5753664b = level.var_c1aa5253["es_effect_generic"];
			var_b31a6ddf = "tag_origin";
			var_f9348fda = var_a0ad4f34.var_3a90f16b;
			var_dfcc01fd = var_5dc5e20a.var_175490fb.var_a9774972;
			break;
		}
		case default:
		{
			var_36a3e6ad = "J_Wrist_LE";
			var_b31a6ddf = "tag_origin";
			var_5753664b = level.var_c1aa5253["es_effect_generic"];
			var_f9348fda = var_a0ad4f34.var_3a90f16b;
			var_dfcc01fd = var_5dc5e20a.var_175490fb.var_a9774972;
			break;
		}
	}
	if(isdefined(var_668a3301) && var_668a3301)
	{
		level thread function_c0ba5acc(var_5dc5e20a, var_a0ad4f34);
	}
	function_da6acfd2(level.var_c1aa5253["es_contact"], var_5dc5e20a, var_36a3e6ad);
	function_da6acfd2(var_5753664b, var_a0ad4f34, var_b31a6ddf);
	var_a0ad4f34 function_921a1574("gdt_cybercore_rig_prox_imp");
	var_a0ad4f34 function_c3945cd5(var_f9348fda, var_5dc5e20a.var_722885f3, var_5dc5e20a, var_5dc5e20a, "none", "MOD_UNKNOWN", 0, var_dfcc01fd, -1, 1);
}

/*
	Name: function_c0ba5acc
	Namespace: namespace_d1c4e441
	Checksum: 0x898F8F73
	Offset: 0x1398
	Size: 0x2E1
	Parameters: 3
	Flags: None
*/
function function_c0ba5acc(var_5dc5e20a, var_a0ad4f34, var_f8456b37)
{
	var_657b1773 = function_525ae497(function_b8494651("axis"), function_b8494651("team3"), 0, 0);
	if(!isdefined(var_f8456b37))
	{
		var_119472f5 = function_4bd0142f("scr_proximity_stun_discharge_radius", 144) * function_4bd0142f("scr_proximity_stun_discharge_radius", 144);
	}
	else
	{
		var_119472f5 = var_f8456b37 * var_f8456b37;
	}
	var_4c0d9ab5 = [];
	foreach(var_6b45b25e in var_657b1773)
	{
		if(isdefined(var_a0ad4f34) && var_6b45b25e == var_a0ad4f34)
		{
			continue;
		}
		if(function_85e4c3b3(var_6b45b25e))
		{
			continue;
		}
		if(!isdefined(var_6b45b25e.var_8fc0e50e))
		{
			continue;
		}
		if(isdefined(var_6b45b25e.var_342d9e3a) && var_6b45b25e.var_342d9e3a)
		{
			continue;
		}
		if(var_6b45b25e.var_2dd707 == 0)
		{
			continue;
		}
		var_2c3e05ad = function_cb3d1c9b(var_5dc5e20a.var_722885f3, var_6b45b25e.var_722885f3);
		if(var_2c3e05ad > var_119472f5)
		{
			continue;
		}
		var_4c0d9ab5[var_4c0d9ab5.size] = var_6b45b25e;
		if(var_4c0d9ab5.size >= function_4bd0142f("scr_proximity_stun_max_secondary_hits", 6))
		{
			break;
		}
	}
	foreach(var_6b45b25e in var_4c0d9ab5)
	{
		level thread function_a38f70a1(var_5dc5e20a, var_6b45b25e);
	}
}

/*
	Name: function_c8e11a8b
	Namespace: namespace_d1c4e441
	Checksum: 0x52C55769
	Offset: 0x1688
	Size: 0x43
	Parameters: 2
	Flags: Private
*/
function private function_c8e11a8b(var_a3d46ee4, var_22fd856d)
{
	var_a3d46ee4 endon("hash_128f8789");
	self waittill(var_22fd856d);
	var_a3d46ee4 function_dc8c8404();
}

/*
	Name: function_a38f70a1
	Namespace: namespace_d1c4e441
	Checksum: 0xC8657186
	Offset: 0x16D8
	Size: 0x4C3
	Parameters: 2
	Flags: Private
*/
function private function_a38f70a1(var_5dc5e20a, var_b07228b6)
{
	var_b07228b6 endon("hash_128f8789");
	var_5dc5e20a endon("hash_643a7daf");
	var_94b5fc74 = function_9b7fda5e("script_model", var_5dc5e20a.var_722885f3 + VectorScale((0, 0, 1), 45));
	var_94b5fc74 function_e48f905e("tag_origin");
	function_da6acfd2(level.var_c1aa5253["es_arc"], var_94b5fc74, "tag_origin");
	var_94b5fc74 endon("hash_128f8789");
	var_b07228b6 thread function_c8e11a8b(var_94b5fc74, "death");
	var_5dc5e20a thread function_c8e11a8b(var_94b5fc74, "disconnect");
	var_94b5fc74 function_a96a2721(var_b07228b6.var_722885f3 + VectorScale((0, 0, 1), 45), 0.3);
	var_94b5fc74 waittill("hash_a21db68a");
	var_b07228b6 function_921a1574("gdt_cybercore_rig_prox_imp");
	var_f9348fda = function_4bd0142f("scr_proximity_stun_damage", 20);
	switch(var_b07228b6.var_8fc0e50e)
	{
		case "human":
		case "human_riotshield":
		case "zombie":
		{
			var_5753664b = level.var_c1aa5253["es_effect_human"];
			var_b31a6ddf = "j_spine4";
			var_b07228b6 function_c3945cd5(var_f9348fda, var_5dc5e20a.var_722885f3, var_5dc5e20a, var_5dc5e20a, "none", "MOD_UNKNOWN", 0, var_5dc5e20a.var_175490fb.var_a9774972, -1, 1);
			var_b07228b6 notify("hash_b64936fe", "electrocute");
			break;
		}
		case "robot":
		{
			var_5753664b = level.var_c1aa5253["es_effect_robot"];
			var_b31a6ddf = "j_spine4";
			var_b07228b6 thread namespace_528b4613::function_30553c67(var_5dc5e20a);
			break;
		}
		case "warlord":
		{
			var_5753664b = level.var_c1aa5253["es_effect_warlord"];
			var_b31a6ddf = "j_spine4";
			var_b07228b6 function_c3945cd5(var_f9348fda, var_5dc5e20a.var_722885f3, var_5dc5e20a, var_5dc5e20a, "none", "MOD_UNKNOWN", 0, var_5dc5e20a.var_175490fb.var_a9774972, -1, 1);
			break;
		}
		case "direwolf":
		{
			var_5753664b = level.var_c1aa5253["es_effect_generic"];
			var_b31a6ddf = "tag_origin";
			var_b07228b6 function_c3945cd5(var_f9348fda, var_5dc5e20a.var_722885f3, var_5dc5e20a, var_5dc5e20a, "none", "MOD_UNKNOWN", 0, var_5dc5e20a.var_175490fb.var_a9774972, -1, 1);
			break;
		}
		case default:
		{
			var_5753664b = level.var_c1aa5253["es_effect_generic"];
			var_b31a6ddf = "tag_body";
			var_b07228b6 function_c3945cd5(var_f9348fda, var_5dc5e20a.var_722885f3, var_5dc5e20a, var_5dc5e20a, "none", "MOD_GRENADE_SPLASH", 0, function_c4d5ec1f("emp_grenade"), -1, 1);
			break;
		}
	}
	function_fd4ba5e1(level.var_c1aa5253["es_contact"], var_94b5fc74.var_722885f3);
	function_da6acfd2(var_5753664b, var_b07228b6, var_b31a6ddf);
	var_94b5fc74 function_dc8c8404();
}

/*
	Name: function_327bda1e
	Namespace: namespace_d1c4e441
	Checksum: 0xE024942
	Offset: 0x1BA8
	Size: 0xEB
	Parameters: 2
	Flags: None
*/
function function_327bda1e(var_f9a179ed, var_4e3de306)
{
	if(!function_5dbf7eca(var_4e3de306, "_MELEE"))
	{
		return var_f9a179ed;
	}
	var_2e2a14bb = self function_76f34311("cybercom_proximitydeterrent");
	if(var_2e2a14bb == 2)
	{
	}
	else
	{
	}
	var_82d77f6b = function_f3087faa("scr_proximity_damage_reducer", 0.2);
	var_bc6c098a = function_b6b79a0(var_f9a179ed * var_82d77f6b);
	return var_bc6c098a;
}

