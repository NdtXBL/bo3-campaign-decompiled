#using scripts\codescripts\struct;
#using scripts\cp\_oed;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\duplicaterender_mgr;
#using scripts\shared\postfx_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicles\_quadtank;

#namespace namespace_c550ee23;

/*
	Name: function_2dc19561
	Namespace: namespace_c550ee23
	Checksum: 0x520563CA
	Offset: 0x6C0
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("training_sim", &function_8c87d8eb, undefined, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_c550ee23
	Checksum: 0x3AEE74C0
	Offset: 0x700
	Size: 0x2BB
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	namespace_71e9cb84::function_50f16166("actor", "rez_in", 1, 1, "int", &function_86af5f80, 0, 0);
	namespace_71e9cb84::function_50f16166("actor", "rez_out", 1, 1, "int", &function_11225c9f, 0, 0);
	namespace_71e9cb84::function_50f16166("vehicle", "rez_in", 1, 1, "int", &function_86af5f80, 0, 0);
	namespace_71e9cb84::function_50f16166("vehicle", "rez_out", 1, 1, "int", &function_11225c9f, 0, 0);
	namespace_71e9cb84::function_50f16166("actor", "enable_ethereal_overlay", 1, 1, "int", &function_d3b7cf16, 0, 0);
	namespace_71e9cb84::function_50f16166("vehicle", "enable_ethereal_overlay", 1, 1, "int", &function_d3b7cf16, 0, 0);
	namespace_71e9cb84::function_50f16166("scriptmover", "enable_ethereal_overlay", 1, 1, "int", &function_d3b7cf16, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "postfx_build_world", 1, 1, "counter", &function_14646786, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "cleanup_sim", 1000, 1, "counter", &function_b699155b, 0, 0);
	namespace_1c38f9cf::function_1a41edb("armor_pl", 0, "armor_on", undefined, 1, "mc/mtl_power_armor", 0);
}

/*
	Name: function_86af5f80
	Namespace: namespace_c550ee23
	Checksum: 0xBDA90FD8
	Offset: 0x9C8
	Size: 0x4B3
	Parameters: 7
	Flags: None
*/
function function_86af5f80(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		if(function_5dbf7eca(self.var_8fc0e50e, "human") || function_5dbf7eca(self.var_8fc0e50e, "robot") || function_5dbf7eca(self.var_8fc0e50e, "warlord"))
		{
			function_da6acfd2(var_ec74b091, "ui/fx_training_rez_in_biped", self, "j_spine4");
			function_da6acfd2(var_ec74b091, "ui/fx_training_rez_in_biped_leg", self, "j_knee_ri");
			function_da6acfd2(var_ec74b091, "ui/fx_training_rez_in_biped_leg", self, "j_knee_le");
		}
		else if(function_5dbf7eca(self.var_8fc0e50e, "amws") || function_5dbf7eca(self.var_8fc0e50e, "raps"))
		{
			function_da6acfd2(var_ec74b091, "ui/fx_training_rez_in_veh_sm", self, "tag_deathfx");
		}
		else if(function_5dbf7eca(self.var_8fc0e50e, "quadtank"))
		{
			function_da6acfd2(var_ec74b091, "ui/fx_training_rez_in_veh_quad", self, "tag_turret_animate");
			function_da6acfd2(var_ec74b091, "ui/fx_training_rez_in_veh_quad_leg", self, "leg_back_right_femur_pitch_fx");
			function_da6acfd2(var_ec74b091, "ui/fx_training_rez_in_veh_quad_leg", self, "leg_back_left_femur_pitch_fx");
			function_da6acfd2(var_ec74b091, "ui/fx_training_rez_in_veh_quad_leg", self, "leg_front_left_femur_pitch_fx");
			function_da6acfd2(var_ec74b091, "ui/fx_training_rez_in_veh_quad_leg", self, "leg_front_right_femur_pitch_fx");
		}
		else if(function_5dbf7eca(self.var_8fc0e50e, "hunter"))
		{
			function_da6acfd2(var_ec74b091, "ui/fx_training_rez_in_veh_hunter", self, "tag_body");
		}
		else if(function_5dbf7eca(self.var_8fc0e50e, "mlrs"))
		{
			function_da6acfd2(var_ec74b091, "ui/fx_training_rez_in_veh_mrls", self, "tag_turret_animate");
			function_da6acfd2(var_ec74b091, "ui/fx_training_rez_in_veh_mrls_leg", self, "leg_back_left_femur_pitch_fx");
			function_da6acfd2(var_ec74b091, "ui/fx_training_rez_in_veh_mrls_leg", self, "leg_back_right_femur_pitch_fx");
			function_da6acfd2(var_ec74b091, "ui/fx_training_rez_in_veh_mrls_leg", self, "leg_front_left_femur_pitch_fx");
			function_da6acfd2(var_ec74b091, "ui/fx_training_rez_in_veh_mrls_leg", self, "leg_front_right_femur_pitch_fx");
		}
		else if(function_5dbf7eca(self.var_8fc0e50e, "siege"))
		{
			function_da6acfd2(var_ec74b091, "ui/fx_training_rez_in_veh_siege", self, "tag_turret_animate");
			function_da6acfd2(var_ec74b091, "ui/fx_training_rez_in_veh_siege_leg", self, "tag_leg_left_6_animate");
			function_da6acfd2(var_ec74b091, "ui/fx_training_rez_in_veh_siege_leg", self, "tag_leg_right_6_animate");
		}
		else if(function_5dbf7eca(self.var_8fc0e50e, "wasp"))
		{
			function_da6acfd2(var_ec74b091, "ui/fx_training_rez_in_veh_wasp", self, "tag_body");
		}
	}
}

/*
	Name: function_11225c9f
	Namespace: namespace_c550ee23
	Checksum: 0xB11E6213
	Offset: 0xE88
	Size: 0x4C3
	Parameters: 7
	Flags: None
*/
function function_11225c9f(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		if(function_5dbf7eca(self.var_8fc0e50e, "human") || function_5dbf7eca(self.var_8fc0e50e, "robot") || function_5dbf7eca(self.var_8fc0e50e, "warlord"))
		{
			function_da6acfd2(var_ec74b091, "ui/fx_training_rez_out_biped", self, "j_spine4");
			function_da6acfd2(var_ec74b091, "ui/fx_training_rez_out_biped_leg", self, "j_knee_ri");
			function_da6acfd2(var_ec74b091, "ui/fx_training_rez_out_biped_leg", self, "j_knee_le");
			function_f7640406();
		}
		else if(function_5dbf7eca(self.var_8fc0e50e, "amws") || function_5dbf7eca(self.var_8fc0e50e, "raps"))
		{
			function_da6acfd2(var_ec74b091, "ui/fx_training_rez_out_veh_sm", self, "tag_deathfx");
		}
		else if(function_5dbf7eca(self.var_8fc0e50e, "quadtank"))
		{
			function_da6acfd2(var_ec74b091, "ui/fx_training_rez_out_veh_quad", self, "tag_turret_animate");
			function_da6acfd2(var_ec74b091, "ui/fx_training_rez_out_veh_quad_leg", self, "leg_back_right_femur_pitch_fx");
			function_da6acfd2(var_ec74b091, "ui/fx_training_rez_out_veh_quad_leg", self, "leg_back_left_femur_pitch_fx");
			function_da6acfd2(var_ec74b091, "ui/fx_training_rez_out_veh_quad_leg", self, "leg_front_left_femur_pitch_fx");
			function_da6acfd2(var_ec74b091, "ui/fx_training_rez_out_veh_quad_leg", self, "leg_front_right_femur_pitch_fx");
		}
		else if(function_5dbf7eca(self.var_8fc0e50e, "hunter"))
		{
			function_da6acfd2(var_ec74b091, "ui/fx_training_rez_out_veh_hunter", self, "tag_body");
		}
		else if(function_5dbf7eca(self.var_8fc0e50e, "mlrs"))
		{
			function_da6acfd2(var_ec74b091, "ui/fx_training_rez_out_veh_mrls", self, "tag_turret_animate");
			function_da6acfd2(var_ec74b091, "ui/fx_training_rez_out_veh_mrls_leg", self, "leg_back_left_femur_pitch_fx");
			function_da6acfd2(var_ec74b091, "ui/fx_training_rez_out_veh_mrls_leg", self, "leg_back_right_femur_pitch_fx");
			function_da6acfd2(var_ec74b091, "ui/fx_training_rez_out_veh_mrls_leg", self, "leg_front_left_femur_pitch_fx");
			function_da6acfd2(var_ec74b091, "ui/fx_training_rez_out_veh_mrls_leg", self, "leg_front_right_femur_pitch_fx");
		}
		else if(function_5dbf7eca(self.var_8fc0e50e, "siege"))
		{
			function_da6acfd2(var_ec74b091, "ui/fx_training_rez_out_veh_siege", self, "tag_turret_animate");
			function_da6acfd2(var_ec74b091, "ui/fx_training_rez_out_veh_siege_leg", self, "tag_leg_left_6_animate");
			function_da6acfd2(var_ec74b091, "ui/fx_training_rez_out_veh_siege_leg", self, "tag_leg_right_6_animate");
		}
		else if(function_5dbf7eca(self.var_8fc0e50e, "wasp"))
		{
			function_da6acfd2(var_ec74b091, "ui/fx_training_rez_out_veh_wasp", self, "tag_body");
		}
	}
}

/*
	Name: function_d3b7cf16
	Namespace: namespace_c550ee23
	Checksum: 0x82E1965F
	Offset: 0x1358
	Size: 0x173
	Parameters: 7
	Flags: None
*/
function function_d3b7cf16(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	self namespace_1c38f9cf::function_1e56fc11("armor_on", var_9193c732);
	self namespace_1c38f9cf::function_2c582173(var_ec74b091);
	if(var_9193c732)
	{
		var_aa5d763a = "scriptVector3";
		var_fc81e73c = 0.4;
		var_754d7044 = 1;
		var_e754df7f = 0.45;
		var_595c4eba = 0;
		var_6c5c3132 = "scriptVector4";
		var_93429fd9 = 0.6;
		self function_e7f6dc4e(var_ec74b091, 0, var_aa5d763a, var_fc81e73c, var_754d7044, var_e754df7f, var_595c4eba);
		self function_e7f6dc4e(var_ec74b091, 0, var_6c5c3132, var_93429fd9, 0, 0, 0);
		self function_cae0c618(10);
	}
}

/*
	Name: function_14646786
	Namespace: namespace_c550ee23
	Checksum: 0x7ADAC76B
	Offset: 0x14D8
	Size: 0x83
	Parameters: 7
	Flags: None
*/
function function_14646786(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	self thread namespace_bdde9225::function_bca12b73("pstfx_world_construction");
	self function_921a1574(0, "evt_glitch_start", self.var_722885f3);
}

/*
	Name: function_b699155b
	Namespace: namespace_c550ee23
	Checksum: 0x74D35E5A
	Offset: 0x1568
	Size: 0x121
	Parameters: 7
	Flags: None
*/
function function_b699155b(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	var_4cdb1cac = function_893e786e();
	foreach(var_dc9468d in var_4cdb1cac)
	{
		if(isdefined(var_dc9468d) && function_316422d1(self.var_722885f3, var_dc9468d.var_722885f3) <= 5000 * 5000)
		{
			function_bda346a(var_dc9468d, 0);
		}
	}
}

