#using scripts\codescripts\struct;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\math_shared;
#using scripts\shared\postfx_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace namespace_5f11fb0b;

/*
	Name: function_d290ebfa
	Namespace: namespace_5f11fb0b
	Checksum: 0xAE0096D6
	Offset: 0x200
	Size: 0xDB
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_d290ebfa()
{
	namespace_71e9cb84::function_50f16166("toplayer", "player_cam_blur", 1, 1, "int", &function_71ee942e, 0, 1);
	namespace_71e9cb84::function_50f16166("toplayer", "player_cam_bubbles", 1, 1, "int", &function_35807426, 0, 1);
	namespace_71e9cb84::function_50f16166("toplayer", "player_cam_fire", 1, 1, "int", &function_a70184f1, 0, 1);
}

/*
	Name: function_71ee942e
	Namespace: namespace_5f11fb0b
	Checksum: 0xE8A8EB94
	Offset: 0x2E8
	Size: 0xD1
	Parameters: 7
	Flags: None
*/
function function_71ee942e(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1 && !function_30ee26f7(var_ec74b091))
	{
		function_5b0553e7(var_ec74b091, 1, 0.5);
		self thread function_db5afebe(var_ec74b091);
	}
	else
	{
		function_5b0553e7(var_ec74b091, 0);
		self notify("hash_64e72e9d");
	}
}

/*
	Name: function_db5afebe
	Namespace: namespace_5f11fb0b
	Checksum: 0x9E51875
	Offset: 0x3C8
	Size: 0x87
	Parameters: 1
	Flags: None
*/
function function_db5afebe(var_ec74b091)
{
	self endon("hash_643a7daf");
	self endon("hash_64e72e9d");
	var_7233be3d = 0.5;
	while(var_7233be3d <= 1)
	{
		var_7233be3d = var_7233be3d + 0.04;
		function_5b0553e7(var_ec74b091, 1, var_7233be3d);
		wait(0.05);
	}
}

/*
	Name: function_35807426
	Namespace: namespace_5f11fb0b
	Checksum: 0x1EFE3C96
	Offset: 0x458
	Size: 0x113
	Parameters: 7
	Flags: None
*/
function function_35807426(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1 && !function_30ee26f7(var_ec74b091))
	{
		if(isdefined(self.var_ac46de76))
		{
			function_28573e36(var_ec74b091, self.var_ac46de76, 1);
		}
		self.var_ac46de76 = function_2e9c26ef(var_ec74b091, "player/fx_plyr_swim_bubbles_body", (0, 0, 0), (1, 0, 0), (0, 0, 1));
		self function_e2af603e(var_ec74b091, "damage_heavy");
	}
	else if(isdefined(self.var_ac46de76))
	{
		function_28573e36(var_ec74b091, self.var_ac46de76, 1);
	}
}

/*
	Name: function_a70184f1
	Namespace: namespace_5f11fb0b
	Checksum: 0xB7CBDF4B
	Offset: 0x578
	Size: 0x93
	Parameters: 7
	Flags: None
*/
function function_a70184f1(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1 && !function_30ee26f7(var_ec74b091))
	{
		function_1a5decb1();
	}
	else
	{
		function_7a5c3cf3();
	}
}

/*
	Name: function_1a5decb1
	Namespace: namespace_5f11fb0b
	Checksum: 0x55732AD6
	Offset: 0x618
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_1a5decb1()
{
	self endon("hash_643a7daf");
	self endon("hash_bdb63a72");
	self thread namespace_bdde9225::function_bca12b73("pstfx_burn_loop");
}

/*
	Name: function_7a5c3cf3
	Namespace: namespace_5f11fb0b
	Checksum: 0x536F65D4
	Offset: 0x658
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_7a5c3cf3()
{
	self notify("hash_bdb63a72");
	self namespace_bdde9225::function_3d1a8db5();
}

