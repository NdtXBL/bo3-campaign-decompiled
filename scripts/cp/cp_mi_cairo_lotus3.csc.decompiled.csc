#using scripts\cp\_load;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_cairo_lotus3_fx;
#using scripts\cp\cp_mi_cairo_lotus3_patch_c;
#using scripts\cp\cp_mi_cairo_lotus3_sound;
#using scripts\cp\lotus_util;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\util_shared;

#namespace namespace_3ed8ca4b;

/*
	Name: function_d290ebfa
	Namespace: namespace_3ed8ca4b
	Checksum: 0xFBCDFED1
	Offset: 0x5D8
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	namespace_82b91a51::function_57b966c8(&function_71f88fc, 4);
	function_2ea898a8();
	namespace_f2fdb334::function_d290ebfa();
	namespace_85d8a9eb::function_d290ebfa();
	namespace_d7916d65::function_d290ebfa();
	namespace_82b91a51::function_44333182(0);
	namespace_59c714e6::function_7403e82b();
}

/*
	Name: function_2ea898a8
	Namespace: namespace_3ed8ca4b
	Checksum: 0xF5EB5CC9
	Offset: 0x678
	Size: 0x28B
	Parameters: 0
	Flags: None
*/
function function_2ea898a8()
{
	namespace_71e9cb84::function_50f16166("toplayer", "sand_fx", 1, 1, "int", &function_9a25841f, 0, 0);
	namespace_71e9cb84::function_50f16166("vehicle", "boss_left_outer_fx", 1, 1, "int", &function_9f0a1f48, 0, 0);
	namespace_71e9cb84::function_50f16166("vehicle", "boss_left_inner_fx", 1, 1, "int", &function_260a2497, 0, 0);
	namespace_71e9cb84::function_50f16166("vehicle", "boss_right_inner_fx", 1, 1, "int", &function_4be69226, 0, 0);
	namespace_71e9cb84::function_50f16166("vehicle", "boss_right_outer_fx", 1, 1, "int", &function_47274359, 0, 0);
	namespace_71e9cb84::function_50f16166("vehicle", "gunship_rumble_off", 1, 1, "int", &function_307fd74a, 0, 0);
	namespace_71e9cb84::function_50f16166("vehicle", "play_raps_trail_fx", 1, 1, "int", &function_66f3947f, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "t2a_paper_burst", 1, 1, "int", &function_1be9086e, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "city_sky", 1, 1, "int", &function_3b5052db, 0, 0);
}

/*
	Name: function_3b5052db
	Namespace: namespace_3ed8ca4b
	Checksum: 0x32F794DD
	Offset: 0x910
	Size: 0x10F
	Parameters: 7
	Flags: None
*/
function function_3b5052db(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		var_80120d96 = 0.1;
		var_d31d40b5 = 4;
		var_2fbcffed = 0.6;
		var_baa794af = var_2fbcffed - var_80120d96;
		var_15dfe09e = var_d31d40b5 / 0.05;
		var_363e9b28 = var_baa794af / var_15dfe09e;
		while(var_80120d96 < var_2fbcffed)
		{
			var_80120d96 = var_80120d96 + var_363e9b28;
			function_aa332733("r_skyTransition", var_80120d96);
			wait(0.05);
		}
	}
}

/*
	Name: function_1be9086e
	Namespace: namespace_3ed8ca4b
	Checksum: 0x69438896
	Offset: 0xA28
	Size: 0x63
	Parameters: 7
	Flags: None
*/
function function_1be9086e(var_6575414d, var_d5fa7963, var_3a04fa7e, var_3a8c4f80, var_406ad39b, var_2807366f, var_f9aa8824)
{
	if(var_3a04fa7e)
	{
		level namespace_cc27597::function_43718187("p7_fxanim_gp_trash_paper_burst_out_01_bundle");
	}
}

/*
	Name: function_9a25841f
	Namespace: namespace_3ed8ca4b
	Checksum: 0xC0B0248D
	Offset: 0xA98
	Size: 0xA3
	Parameters: 7
	Flags: None
*/
function function_9a25841f(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		self thread function_a3af9e95(var_ec74b091);
	}
	else
	{
		self notify("hash_614dea17");
		if(isdefined(self.var_ac46de76))
		{
			function_28573e36(var_ec74b091, self.var_ac46de76, 1);
		}
	}
}

/*
	Name: function_a3af9e95
	Namespace: namespace_3ed8ca4b
	Checksum: 0x31C028A
	Offset: 0xB48
	Size: 0x97
	Parameters: 1
	Flags: None
*/
function function_a3af9e95(var_ec74b091)
{
	self endon("hash_643a7daf");
	self endon("hash_d5da096");
	self endon("hash_614dea17");
	while(1)
	{
		var_a0d5568b = self function_501eb072();
		self.var_ac46de76 = function_fd4ba5e1(var_ec74b091, level.var_c1aa5253["player_sand"], var_a0d5568b);
		wait(0.1);
	}
}

/*
	Name: function_9f0a1f48
	Namespace: namespace_3ed8ca4b
	Checksum: 0x99173A04
	Offset: 0xBE8
	Size: 0x8B
	Parameters: 7
	Flags: None
*/
function function_9f0a1f48(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	self endon("hash_643a7daf");
	self endon("hash_d5da096");
	if(var_9193c732)
	{
		function_da6acfd2(var_ec74b091, level.var_c1aa5253["gunship_fan_damage"], self, "tag_target_fan_left_outer");
	}
}

/*
	Name: function_260a2497
	Namespace: namespace_3ed8ca4b
	Checksum: 0x42BD247F
	Offset: 0xC80
	Size: 0x8B
	Parameters: 7
	Flags: None
*/
function function_260a2497(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	self endon("hash_643a7daf");
	self endon("hash_d5da096");
	if(var_9193c732)
	{
		function_da6acfd2(var_ec74b091, level.var_c1aa5253["gunship_fan_damage"], self, "tag_target_fan_left_inner");
	}
}

/*
	Name: function_4be69226
	Namespace: namespace_3ed8ca4b
	Checksum: 0xD479815B
	Offset: 0xD18
	Size: 0x8B
	Parameters: 7
	Flags: None
*/
function function_4be69226(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	self endon("hash_643a7daf");
	self endon("hash_d5da096");
	if(var_9193c732)
	{
		function_da6acfd2(var_ec74b091, level.var_c1aa5253["gunship_fan_damage"], self, "tag_target_fan_right_inner");
	}
}

/*
	Name: function_47274359
	Namespace: namespace_3ed8ca4b
	Checksum: 0x18EC038C
	Offset: 0xDB0
	Size: 0x8B
	Parameters: 7
	Flags: None
*/
function function_47274359(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	self endon("hash_643a7daf");
	self endon("hash_d5da096");
	if(var_9193c732)
	{
		function_da6acfd2(var_ec74b091, level.var_c1aa5253["gunship_fan_damage"], self, "tag_target_fan_right_outer");
	}
}

/*
	Name: function_307fd74a
	Namespace: namespace_3ed8ca4b
	Checksum: 0x8E38F3A6
	Offset: 0xE48
	Size: 0x73
	Parameters: 7
	Flags: None
*/
function function_307fd74a(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	self endon("hash_643a7daf");
	self endon("hash_d5da096");
	if(var_9193c732)
	{
		self.var_7bd6ee55 = 0;
	}
	else
	{
		self.var_7bd6ee55 = 1;
	}
}

/*
	Name: function_66f3947f
	Namespace: namespace_3ed8ca4b
	Checksum: 0x8CE68183
	Offset: 0xEC8
	Size: 0xB3
	Parameters: 7
	Flags: None
*/
function function_66f3947f(var_6575414d, var_d5fa7963, var_3a04fa7e, var_3a8c4f80, var_406ad39b, var_2807366f, var_f9aa8824)
{
	self endon("hash_643a7daf");
	self endon("hash_d5da096");
	if(var_3a04fa7e)
	{
		self.var_9fa8c7a2 = function_da6acfd2(var_6575414d, "vehicle/fx_gunship_raps_trail", self, "tag_origin");
	}
	else if(isdefined(self.var_9fa8c7a2))
	{
		function_d555a113(var_6575414d, self.var_9fa8c7a2);
	}
}

/*
	Name: function_71f88fc
	Namespace: namespace_3ed8ca4b
	Checksum: 0xF2EB55B8
	Offset: 0xF88
	Size: 0x219
	Parameters: 1
	Flags: None
*/
function function_71f88fc(var_4bc288a0)
{
	switch(var_4bc288a0)
	{
		case 1:
		{
			function_71c4474e("cin_lot_09_01_pursuit_1st_switch_end");
			break;
		}
		case 2:
		{
			function_71c4474e("cin_lot_11_tower2ascent_3rd_sh010");
			function_71c4474e("cin_lot_11_tower2ascent_3rd_sh020");
			function_71c4474e("cin_lot_11_tower2ascent_3rd_sh030");
			function_71c4474e("cin_lot_11_tower2ascent_3rd_sh040");
			function_71c4474e("cin_lot_11_tower2ascent_3rd_sh050");
			function_71c4474e("cin_lot_11_tower2ascent_3rd_sh060");
			function_71c4474e("cin_lot_11_tower2ascent_3rd_sh070");
			function_71c4474e("cin_lot_11_tower2ascent_3rd_sh080");
			function_71c4474e("cin_lot_11_tower2ascent_3rd_sh090");
			function_71c4474e("cin_lot_11_tower2ascent_3rd_sh100");
			function_71c4474e("cin_lot_11_tower2ascent_3rd_sh110");
			function_71c4474e("cin_lot_11_tower2ascent_3rd_sh120");
			break;
		}
		case 3:
		{
			function_71c4474e("cin_lot_15_taylorintro_3rd_sh010");
			function_71c4474e("cin_lot_15_taylorintro_3rd_sh020");
			function_71c4474e("cin_lot_15_taylorintro_3rd_sh030");
			function_71c4474e("cin_lot_15_taylorintro_3rd_sh040");
			function_71c4474e("cin_lot_15_taylorintro_3rd_sh050");
			function_71c4474e("cin_lot_15_taylorintro_3rd_sh060");
			break;
		}
		case default:
		{
			break;
		}
	}
}

