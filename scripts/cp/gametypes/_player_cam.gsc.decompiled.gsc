#using scripts\cp\_util;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\math_shared;
#using scripts\shared\util_shared;

#namespace namespace_5f11fb0b;

/*
	Name: function_d290ebfa
	Namespace: namespace_5f11fb0b
	Checksum: 0x42E2F60A
	Offset: 0x568
	Size: 0x93
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_d290ebfa()
{
	namespace_71e9cb84::function_50f16166("toplayer", "player_cam_blur", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "player_cam_bubbles", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "player_cam_fire", 1, 1, "int");
}

/*
	Name: function_8e835895
	Namespace: namespace_5f11fb0b
	Checksum: 0xF50DF5CB
	Offset: 0x608
	Size: 0x3BB
	Parameters: 9
	Flags: None
*/
function function_8e835895(var_51e6a548, var_a0ad4f34, var_f9a179ed, var_ba36487d, var_dfcc01fd, var_e8bb43ee, var_a77ad8eb, var_a5cf2304, var_b2e5f7d2)
{
	self endon("hash_643a7daf");
	if(function_4bd0142f("test_cam") > 0)
	{
		var_9368ba0c = function_4bd0142f("test_cam");
		if(var_9368ba0c == 1)
		{
			var_ba36487d = "MOD_BULLET";
		}
		else if(var_9368ba0c == 2)
		{
			var_ba36487d = "MOD_EXPLOSIVE";
		}
		else if(var_9368ba0c == 3)
		{
			var_ba36487d = "MOD_BURNED";
		}
		else if(var_9368ba0c == 4)
		{
			var_ba36487d = "MOD_DROWN";
		}
		else if(var_9368ba0c == 5)
		{
			self thread function_fd6ad16(var_51e6a548, var_a0ad4f34, var_f9a179ed, var_dfcc01fd, var_e8bb43ee, var_a77ad8eb);
			return;
		}
	}
	if(var_ba36487d === "MOD_EXPLOSIVE" || var_ba36487d === "MOD_PROJECTILE" || var_ba36487d === "MOD_PROJECTILE_SPLASH" || var_ba36487d === "MOD_GRENADE" || var_ba36487d === "MOD_GRENADE_SPLASH")
	{
		self thread function_7a3707a6(var_51e6a548, var_a0ad4f34, var_f9a179ed, var_dfcc01fd, var_e8bb43ee, var_a77ad8eb);
	}
	else if(var_ba36487d === "MOD_BULLET" || var_ba36487d === "MOD_RIFLE_BULLET" || var_ba36487d === "MOD_PISTOL_BULLET")
	{
		self thread function_f05a5931(var_51e6a548, var_a0ad4f34, var_f9a179ed, var_dfcc01fd, var_e8bb43ee, var_a77ad8eb);
	}
	else if(var_ba36487d === "MOD_BURNED")
	{
		self thread function_1c006469(var_51e6a548, var_a0ad4f34, var_f9a179ed, var_dfcc01fd, var_e8bb43ee, var_a77ad8eb);
	}
	else if(var_ba36487d === "MOD_DROWN")
	{
		self thread function_514913aa(var_51e6a548, var_a0ad4f34, var_f9a179ed, var_dfcc01fd, var_e8bb43ee, var_a77ad8eb);
	}
	else if(isdefined(var_a0ad4f34) && var_a0ad4f34.var_e6e9b8de == "trigger_hurt" && isdefined(var_a0ad4f34.var_caae374e) && var_a0ad4f34.var_caae374e == "fall_death")
	{
		self thread function_fd6ad16(var_51e6a548, var_a0ad4f34, var_f9a179ed, var_dfcc01fd, var_e8bb43ee, var_a77ad8eb);
	}
	else if(var_ba36487d === "MOD_MELEE" || var_ba36487d === "MOD_MELEE_WEAPON_BUTT")
	{
		self thread function_6e880b57(var_51e6a548, var_a0ad4f34, var_f9a179ed, var_dfcc01fd, var_e8bb43ee, var_a77ad8eb);
	}
	else
	{
		self thread function_1e43c03b(var_51e6a548, var_a0ad4f34, var_f9a179ed, var_dfcc01fd, undefined, var_a77ad8eb);
	}
}

/*
	Name: function_812435e3
	Namespace: namespace_5f11fb0b
	Checksum: 0xF6CDC568
	Offset: 0x9D0
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_812435e3()
{
	self endon("hash_643a7daf");
	self thread namespace_82b91a51::function_67cfce72("Press USE button to watch KillCam", undefined, undefined, 200, 10000);
	wait(3);
	self thread namespace_82b91a51::function_79f9f98d();
}

/*
	Name: function_6eb06d8d
	Namespace: namespace_5f11fb0b
	Checksum: 0x4BDE5EC
	Offset: 0xA28
	Size: 0xB3
	Parameters: 2
	Flags: None
*/
function function_6eb06d8d(var_17210226, var_9aa5d89)
{
	var_982bfcf2 = 10;
	var_e363b850 = var_982bfcf2 * 2;
	var_c8bc3f0a = (-1 * var_982bfcf2, -1 * var_982bfcf2, 0);
	var_8b6f854 = (var_982bfcf2, var_982bfcf2, var_e363b850);
	var_a52faa04 = function_fafcd7f7(var_17210226, var_9aa5d89, var_c8bc3f0a, var_8b6f854, self);
	return var_a52faa04;
}

/*
	Name: function_b1d0850f
	Namespace: namespace_5f11fb0b
	Checksum: 0xE46B84A8
	Offset: 0xAE8
	Size: 0x43
	Parameters: 2
	Flags: None
*/
function function_b1d0850f(var_17210226, var_9aa5d89)
{
	var_a52faa04 = function_6eb06d8d(var_17210226, var_9aa5d89);
	return var_a52faa04["position"];
}

/*
	Name: function_e2d94882
	Namespace: namespace_5f11fb0b
	Checksum: 0xB35B7462
	Offset: 0xB38
	Size: 0x55
	Parameters: 2
	Flags: None
*/
function function_e2d94882(var_17210226, var_9aa5d89)
{
	var_a52faa04 = function_6eb06d8d(var_17210226, var_9aa5d89);
	if(var_a52faa04["fraction"] < 1)
	{
		return 0;
	}
	return 1;
}

/*
	Name: function_3df17f41
	Namespace: namespace_5f11fb0b
	Checksum: 0xC800EAD1
	Offset: 0xB98
	Size: 0x31
	Parameters: 1
	Flags: None
*/
function function_3df17f41(var_c7b6e8e4)
{
	return function_e2d94882(var_c7b6e8e4, var_c7b6e8e4 + VectorScale((0, 0, -1), 500));
}

/*
	Name: function_c003e53f
	Namespace: namespace_5f11fb0b
	Checksum: 0x7D4A3F96
	Offset: 0xBD8
	Size: 0x97B
	Parameters: 11
	Flags: None
*/
function function_c003e53f(var_e8bb43ee, var_f120d111, var_f40ed68d, var_9aadeff9, var_933bfc9b, var_67ca400f, var_f06dc6a2, var_b633f381, var_a4c9ad31, var_213955be, var_956c7382)
{
	self endon("hash_643a7daf");
	self endon("hash_d3468831");
	var_2ea3ec65 = function_4bd0142f("movecamera_epsilon", 2);
	var_122df1b2 = self function_52d99059();
	var_c7b6e8e4 = var_122df1b2;
	var_6ab6f4fd = self function_89c87c9c();
	var_6ab6f4fd = (0, function_64dbcbf2(var_6ab6f4fd[1]), function_64dbcbf2(var_6ab6f4fd[2]));
	var_d79411c9 = function_bc7ce905(var_6ab6f4fd);
	var_9b0373e4 = var_c7b6e8e4 + var_d79411c9;
	if(isdefined(var_e8bb43ee))
	{
		var_e8bb43ee = var_e8bb43ee * -1;
		var_544bbb55 = function_bdcdc423(var_e8bb43ee);
	}
	else
	{
		var_e8bb43ee = (var_d79411c9[0], var_d79411c9[1], var_d79411c9[2]);
		var_544bbb55 = function_bdcdc423(var_e8bb43ee);
		var_e8bb43ee = (var_d79411c9[0], var_d79411c9[1], -1);
		var_e8bb43ee = function_f679a325(var_e8bb43ee);
	}
	if(isdefined(var_a4c9ad31))
	{
		var_544bbb55 = function_bdcdc423(var_a4c9ad31);
	}
	if(!isdefined(var_f06dc6a2))
	{
		var_f06dc6a2 = function_64dbcbf2(var_544bbb55[0]);
	}
	if(!isdefined(var_b633f381))
	{
		var_b633f381 = function_64dbcbf2(var_544bbb55[2]);
	}
	var_544bbb55 = (var_f06dc6a2, function_64dbcbf2(var_544bbb55[1]), var_b633f381);
	var_6ab6f4fd = (function_64dbcbf2(var_544bbb55[0]), function_64dbcbf2(var_544bbb55[1]), function_3dfa27b4(var_544bbb55[2]));
	if(isdefined(var_f40ed68d) && var_e8bb43ee[0] != 0)
	{
		var_505f8faa = 0;
	}
	else
	{
		var_f40ed68d = 0;
		var_933bfc9b = 0;
		var_505f8faa = 1;
	}
	if(isdefined(var_9aadeff9) && var_e8bb43ee[2] != 0)
	{
		var_582dff76 = 0;
	}
	else
	{
		var_9aadeff9 = 0;
		var_67ca400f = 0;
		var_582dff76 = 1;
	}
	var_7ac385d2 = (var_e8bb43ee[0], var_e8bb43ee[1], 0);
	var_7ac385d2 = function_f679a325(var_7ac385d2);
	while(!(isdefined(var_505f8faa) && var_505f8faa && (isdefined(var_582dff76) && var_582dff76)))
	{
		if(!(isdefined(var_505f8faa) && var_505f8faa))
		{
			var_e79cd0f2 = VectorScale(var_7ac385d2, var_933bfc9b);
			var_cdbed540 = function_73b84f4d(var_e79cd0f2);
			var_206341c9 = var_c7b6e8e4 - var_122df1b2;
			var_3b8e30c5 = function_73b84f4d((var_206341c9[0], var_206341c9[1], 0));
			if(var_3b8e30c5 + var_cdbed540 >= var_f40ed68d)
			{
				var_cdbed540 = var_f40ed68d - var_3b8e30c5;
				var_505f8faa = 1;
			}
			var_9aa5d89 = var_c7b6e8e4 - VectorScale(var_7ac385d2, var_cdbed540);
			var_381dd463 = var_c7b6e8e4 - VectorScale(var_7ac385d2, var_cdbed540 + var_2ea3ec65);
			if(function_e2d94882(var_c7b6e8e4, var_381dd463))
			{
				var_c7b6e8e4 = var_9aa5d89;
			}
			else
			{
				var_505f8faa = 1;
			}
		}
		if(!(isdefined(var_582dff76) && var_582dff76))
		{
			var_553c9550 = var_67ca400f;
			var_6775da6e = function_69c2f683(var_122df1b2[2] - var_c7b6e8e4[2]);
			if(var_6775da6e + var_553c9550 >= var_9aadeff9)
			{
				var_553c9550 = var_9aadeff9 - var_6775da6e;
				var_582dff76 = 1;
			}
			var_9aa5d89 = (var_c7b6e8e4[0], var_c7b6e8e4[1], var_c7b6e8e4[2] - var_553c9550);
			var_381dd463 = (var_c7b6e8e4[0], var_c7b6e8e4[1], var_c7b6e8e4[2] - var_553c9550 - var_2ea3ec65);
			if(function_e2d94882(var_c7b6e8e4, var_381dd463))
			{
				var_c7b6e8e4 = var_9aa5d89;
			}
			else
			{
				var_582dff76 = 1;
			}
		}
	}
	if(!function_e2d94882(var_122df1b2, var_c7b6e8e4))
	{
		var_c7b6e8e4 = function_b1d0850f(var_122df1b2, var_c7b6e8e4);
	}
	self function_7198d073(1);
	var_3df17f41 = function_3df17f41(var_c7b6e8e4);
	if(isdefined(var_213955be) && var_213955be || (!isdefined(var_3df17f41) && var_3df17f41))
	{
		if(var_f120d111 > 0)
		{
			self function_d2f3e35b(var_f120d111, 1);
			self function_9df5cf69(var_c7b6e8e4, var_6ab6f4fd);
			wait(var_f120d111);
		}
		else
		{
			thread function_a0c37dda(var_c7b6e8e4, var_6ab6f4fd, var_956c7382);
		}
	}
	if(isdefined(var_3df17f41) && var_3df17f41)
	{
		var_fc0b6c3a = self function_1439c75a()[2];
		var_2fedf129 = function_73b84f4d(var_c7b6e8e4 - var_122df1b2);
		var_e25845de = var_2fedf129 * var_f120d111;
		var_fc0b6c3a = function_aaeec8c5(var_fc0b6c3a, var_e25845de);
		var_c0917add = function_4bd0142f("move_max_falling_height", -2000);
		var_1f7dab73 = function_4bd0142f("move_min_falling_speed", 500);
		var_b63780dc = function_b1d0850f(var_c7b6e8e4, var_c7b6e8e4 + (0, 0, var_c0917add));
		var_ce9f61c5 = function_73b84f4d(var_b63780dc - var_c7b6e8e4);
		var_3be21125 = (-88, function_64dbcbf2(var_6ab6f4fd[1]), 0);
		var_d46b4656 = function_aaeec8c5(var_fc0b6c3a, var_1f7dab73);
		var_1c64d606 = var_ce9f61c5 / var_d46b4656;
		self function_9df5cf69(var_b63780dc, var_3be21125);
		self function_d2f3e35b(var_1c64d606, 1);
		wait(var_1c64d606);
		function_956c7382(var_b63780dc);
	}
}

/*
	Name: function_956c7382
	Namespace: namespace_5f11fb0b
	Checksum: 0x2C93FDAB
	Offset: 0x1560
	Size: 0xB3
	Parameters: 1
	Flags: None
*/
function function_956c7382(var_c7b6e8e4)
{
	var_ceb19c17 = function_f3087faa("dc_quake_scale", 0.4);
	var_1b0dac7b = function_f3087faa("dc_quake_duration", 0.1);
	var_450561c5 = function_f3087faa("dc_quake_radius", 5);
	function_9cf04c2e(var_ceb19c17, var_1b0dac7b, var_c7b6e8e4, var_450561c5);
}

/*
	Name: function_a0c37dda
	Namespace: namespace_5f11fb0b
	Checksum: 0x9E2CF7A3
	Offset: 0x1620
	Size: 0x12B
	Parameters: 3
	Flags: None
*/
function function_a0c37dda(var_c7b6e8e4, var_6ab6f4fd, var_956c7382)
{
	self endon("hash_643a7daf");
	var_12327db5 = function_f3087faa("dc_drop_length", 10);
	var_43c0c3c7 = var_c7b6e8e4 + (0, 0, var_12327db5);
	self function_9df5cf69(var_43c0c3c7, var_6ab6f4fd);
	wait(0.05);
	var_2e0ea125 = function_f3087faa("dc_drop_quickly_tween_time", 0.1);
	self function_9df5cf69(var_c7b6e8e4, var_6ab6f4fd);
	self function_d2f3e35b(var_2e0ea125, 1);
	wait(var_2e0ea125);
	if(isdefined(var_956c7382) && var_956c7382)
	{
		function_956c7382(var_c7b6e8e4);
	}
}

/*
	Name: function_22196132
	Namespace: namespace_5f11fb0b
	Checksum: 0x951206BC
	Offset: 0x1758
	Size: 0x5D
	Parameters: 0
	Flags: None
*/
function function_22196132()
{
	var_42bd74de = function_5f9a4869(self function_1439c75a(), function_298b8148(self.var_6ab6f4fd));
	if(var_42bd74de > 0)
	{
		return 1;
	}
	return -1;
}

/*
	Name: function_f05a5931
	Namespace: namespace_5f11fb0b
	Checksum: 0xC88EB523
	Offset: 0x17C0
	Size: 0x1BD
	Parameters: 6
	Flags: None
*/
function function_f05a5931(var_51e6a548, var_a0ad4f34, var_f9a179ed, var_dfcc01fd, var_e8bb43ee, var_a77ad8eb)
{
	self endon("hash_643a7daf");
	self namespace_71e9cb84::function_e9c3870b("player_cam_blur", 1);
	var_67ca400f = function_f3087faa("cam_bullet_position_z_speed", 20);
	var_933bfc9b = function_f3087faa("cam_bullet_position_f_speed", 20);
	var_9aadeff9 = function_f3087faa("cam_bullet_max_z_length", 50);
	var_f40ed68d = function_f3087faa("cam_bullet_max_f_length", 50);
	var_1031303c = function_f3087faa("cam_bullet_end_wait", 2.75);
	var_cad75d7e = self function_22196132();
	thread function_c003e53f(var_e8bb43ee, 0, var_f40ed68d, var_9aadeff9, var_933bfc9b, var_67ca400f, undefined, 60 * var_cad75d7e, undefined, undefined, 1);
	self function_e2af603e("damage_heavy");
	wait(var_1031303c);
	self notify("hash_d3468831");
}

/*
	Name: function_6e880b57
	Namespace: namespace_5f11fb0b
	Checksum: 0xEF110DB8
	Offset: 0x1988
	Size: 0x1B5
	Parameters: 6
	Flags: None
*/
function function_6e880b57(var_51e6a548, var_a0ad4f34, var_f9a179ed, var_dfcc01fd, var_e8bb43ee, var_a77ad8eb)
{
	self endon("hash_643a7daf");
	self namespace_71e9cb84::function_e9c3870b("player_cam_blur", 1);
	var_67ca400f = function_f3087faa("cam_bullet_position_z_speed", 20);
	var_933bfc9b = function_f3087faa("cam_bullet_position_f_speed", 20);
	var_9aadeff9 = function_f3087faa("cam_bullet_max_z_length", 50);
	var_f40ed68d = function_f3087faa("cam_bullet_max_f_length", 50);
	var_1031303c = function_f3087faa("cam_bullet_end_wait", 2.75);
	var_cad75d7e = self function_22196132();
	self function_e2af603e("damage_heavy");
	thread function_c003e53f(var_e8bb43ee, 0, var_f40ed68d, var_9aadeff9, var_933bfc9b, var_67ca400f, undefined, 60 * var_cad75d7e);
	wait(var_1031303c);
	self notify("hash_d3468831");
}

/*
	Name: function_1e43c03b
	Namespace: namespace_5f11fb0b
	Checksum: 0x52EE63A5
	Offset: 0x1B48
	Size: 0x1BD
	Parameters: 6
	Flags: None
*/
function function_1e43c03b(var_51e6a548, var_a0ad4f34, var_f9a179ed, var_dfcc01fd, var_e8bb43ee, var_a77ad8eb)
{
	self endon("hash_643a7daf");
	self namespace_71e9cb84::function_e9c3870b("player_cam_blur", 1);
	var_cad75d7e = self function_22196132();
	var_67ca400f = function_f3087faa("cam_bullet_position_z_speed", 8);
	var_933bfc9b = function_f3087faa("cam_bullet_position_f_speed", 10);
	var_9aadeff9 = function_f3087faa("cam_bullet_max_z_length", 50);
	var_f40ed68d = function_f3087faa("cam_bullet_max_f_length", 50);
	var_1031303c = function_f3087faa("cam_bullet_end_wait", 2.75);
	thread function_c003e53f(undefined, 0, var_f40ed68d, var_9aadeff9, var_933bfc9b, var_67ca400f, undefined, 60 * var_cad75d7e, undefined, undefined, 1);
	self function_e2af603e("damage_heavy");
	wait(var_1031303c);
	self notify("hash_d3468831");
}

/*
	Name: function_7a3707a6
	Namespace: namespace_5f11fb0b
	Checksum: 0x8C81E933
	Offset: 0x1D10
	Size: 0x32D
	Parameters: 6
	Flags: None
*/
function function_7a3707a6(var_51e6a548, var_a0ad4f34, var_f9a179ed, var_dfcc01fd, var_e8bb43ee, var_a77ad8eb)
{
	self endon("hash_643a7daf");
	self namespace_71e9cb84::function_e9c3870b("player_cam_blur", 1);
	var_67ca400f = function_f3087faa("cam_explosion_position_z_speed", 8);
	var_933bfc9b = function_f3087faa("cam_explosion_position_f_speed", 10);
	var_9aadeff9 = function_f3087faa("cam_explosion_max_z_length", 50);
	var_f40ed68d = function_f3087faa("cam_explosion_max_f_length", 100);
	var_91ba348e = function_f3087faa("cam_explosion_shake_vector_max", 1);
	var_a4c9ad31 = undefined;
	if(isdefined(var_a0ad4f34) && var_a0ad4f34 != self)
	{
		var_7ec6acc8 = var_a0ad4f34 function_34452442() + var_a0ad4f34 function_47d277bc() * 0.5;
		var_a4c9ad31 = var_7ec6acc8 - self.var_722885f3;
		var_a4c9ad31 = function_f679a325(var_a4c9ad31);
	}
	var_45918a20 = function_f3087faa("cam_explosion_fade_value", 0);
	var_638a5f4a = function_f3087faa("cam_explosion_first_fade_time", 0.4);
	var_4c824c0e = function_f3087faa("cam_explosion_second_fade_time", 0.4);
	var_c746fbe7 = function_f3087faa("cam_explosion_first_wait", 0.8);
	var_30ffabcb = function_f3087faa("cam_explosion_second_wait", 2);
	var_cad75d7e = self function_22196132();
	thread function_c003e53f(var_e8bb43ee, 0, var_f40ed68d, var_9aadeff9, var_933bfc9b, var_67ca400f, undefined, 60 * var_cad75d7e, var_a4c9ad31, undefined, 1);
	self function_e2af603e("damage_heavy");
	wait(var_30ffabcb);
	self notify("hash_d3468831");
}

/*
	Name: function_1c006469
	Namespace: namespace_5f11fb0b
	Checksum: 0xE8175737
	Offset: 0x2048
	Size: 0x195
	Parameters: 6
	Flags: None
*/
function function_1c006469(var_51e6a548, var_a0ad4f34, var_f9a179ed, var_dfcc01fd, var_e8bb43ee, var_a77ad8eb)
{
	self endon("hash_643a7daf");
	self namespace_71e9cb84::function_e9c3870b("player_cam_fire", 1);
	var_6ab6f4fd = self function_89c87c9c();
	var_d79411c9 = function_bc7ce905(var_6ab6f4fd);
	var_9aadeff9 = function_f3087faa("cam_explosion_max_z_length", 50);
	var_67ca400f = function_f3087faa("cam_explosion_position_z_speed", 10);
	var_cad75d7e = self function_22196132();
	thread function_c003e53f(undefined, 0.2, 0, var_9aadeff9, 0, var_67ca400f, undefined, 50 * var_cad75d7e, var_d79411c9);
	wait(2);
	self.var_3c94a047 = 1;
	self thread namespace_ce7c3ed5::function_3f0b2996(1, 1, 0, "white", 0);
	wait(1);
	self notify("hash_d3468831");
}

/*
	Name: function_514913aa
	Namespace: namespace_5f11fb0b
	Checksum: 0x40A51DEB
	Offset: 0x21E8
	Size: 0x179
	Parameters: 6
	Flags: None
*/
function function_514913aa(var_51e6a548, var_a0ad4f34, var_f9a179ed, var_dfcc01fd, var_e8bb43ee, var_a77ad8eb)
{
	self endon("hash_643a7daf");
	self namespace_71e9cb84::function_e9c3870b("player_cam_bubbles", 1);
	var_6ab6f4fd = self function_89c87c9c();
	var_d79411c9 = function_bc7ce905(var_6ab6f4fd);
	var_9aadeff9 = function_f3087faa("cam_explosion_max_z_length", 50);
	var_67ca400f = function_f3087faa("cam_explosion_position_z_speed", 10);
	thread function_c003e53f(undefined, 3, 0, var_9aadeff9, 0, var_67ca400f, undefined, undefined, var_d79411c9);
	var_253910ca = function_f3087faa("cam_bubbles_wait", 3);
	wait(var_253910ca);
	self namespace_71e9cb84::function_e9c3870b("player_cam_bubbles", 0);
	self notify("hash_d3468831");
}

/*
	Name: function_fd6ad16
	Namespace: namespace_5f11fb0b
	Checksum: 0xA01DCA14
	Offset: 0x2370
	Size: 0x14D
	Parameters: 6
	Flags: None
*/
function function_fd6ad16(var_51e6a548, var_a0ad4f34, var_f9a179ed, var_dfcc01fd, var_e8bb43ee, var_a77ad8eb)
{
	self endon("hash_643a7daf");
	var_67ca400f = function_f3087faa("cam_fall_position_z_speed", 500);
	var_933bfc9b = function_f3087faa("cam_fall_position_f_speed", 0);
	var_9aadeff9 = function_f3087faa("cam_fall_max_z_length", 500);
	var_f40ed68d = function_f3087faa("cam_fall_max_f_length", 0);
	var_1031303c = function_f3087faa("cam_fall_end_wait", 2);
	thread function_c003e53f(undefined, 1, undefined, var_9aadeff9, 0, var_67ca400f, -88, 1, undefined, 1, 1);
	wait(var_1031303c);
	self notify("hash_d3468831");
}

