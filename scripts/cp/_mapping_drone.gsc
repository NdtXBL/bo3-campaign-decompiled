#using scripts\codescripts\struct;
#using scripts\cp\_skipto;
#using scripts\cp\_util;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\math_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;

#namespace namespace_2afd69a;

/*
	Name: spawn_drone
	Namespace: namespace_2afd69a
	Checksum: 0xFEA59928
	Offset: 0x248
	Size: 0x17F
	Parameters: 2
	Flags: None
*/
function spawn_drone(str_start_node, b_active)
{
	if(!isdefined(b_active))
	{
		b_active = 1;
	}
	level.var_ea764859 = vehicle::simple_spawn_single("mapping_drone");
	level.var_ea764859.animName = "mapping_drone";
	level.var_ea764859 SetCanDamage(0);
	level.var_ea764859 notsolid();
	level.var_ea764859 SetHoverParams(20, 5, 10);
	level.var_ea764859.DrivePath = 1;
	if(!b_active)
	{
		level.var_ea764859 vehicle::lights_off();
		level.var_ea764859 vehicle::toggle_sounds(0);
	}
	if(isdefined(str_start_node))
	{
		nd_start = GetVehicleNode(str_start_node, "targetname");
		level.var_ea764859.origin = nd_start.origin;
		level.var_ea764859.angles = nd_start.angles;
	}
}

/*
	Name: follow_path
	Namespace: namespace_2afd69a
	Checksum: 0x218D5D8C
	Offset: 0x3D0
	Size: 0x103
	Parameters: 3
	Flags: None
*/
function follow_path(str_start_node, str_flag, var_178571be)
{
	if(isdefined(str_flag) && !level flag::get(str_flag))
	{
		nd_start = GetVehicleNode(str_start_node, "targetname");
		self SetVehGoalPos(nd_start.origin, 1);
		level flag::wait_till(str_flag);
		self ClearVehGoalPos();
	}
	if(isdefined(var_178571be))
	{
		self thread [[var_178571be]]();
	}
	self thread function_fb6d201d();
	self vehicle::get_on_and_go_path(str_start_node);
}

/*
	Name: function_6a8adcf6
	Namespace: namespace_2afd69a
	Checksum: 0x9C0E144F
	Offset: 0x4E0
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_6a8adcf6(n_speed)
{
	self.var_764bad40 = n_speed;
	self SetSpeed(self.var_764bad40, 35, 35);
}

/*
	Name: function_2dde6e87
	Namespace: namespace_2afd69a
	Checksum: 0x162D9E4C
	Offset: 0x528
	Size: 0xD
	Parameters: 0
	Flags: None
*/
function function_2dde6e87()
{
	self.var_764bad40 = undefined;
}

/*
	Name: function_74191a2
	Namespace: namespace_2afd69a
	Checksum: 0xEAD26998
	Offset: 0x540
	Size: 0x53
	Parameters: 1
	Flags: None
*/
function function_74191a2(var_e3262ea5)
{
	if(!isdefined(var_e3262ea5))
	{
		var_e3262ea5 = 1;
	}
	if(var_e3262ea5)
	{
		self vehicle::lights_off();
	}
	else
	{
		self vehicle::lights_on();
	}
}

/*
	Name: function_fb6d201d
	Namespace: namespace_2afd69a
	Checksum: 0x6A7A756C
	Offset: 0x5A0
	Size: 0x467
	Parameters: 0
	Flags: None
*/
function function_fb6d201d()
{
	self endon("hash_c4902f95");
	self endon("reached_end_node");
	var_c119f9f1 = cos(89);
	/#
		self thread function_3c36d48d();
	#/
	self.n_speed = 0;
	while(1)
	{
		if(isdefined(self.var_764bad40))
		{
			self.n_speed = self.var_764bad40;
			self SetSpeed(self.var_764bad40, 35, 35);
			wait(0.05);
			continue;
		}
		var_11d57f72 = 10000;
		n_closest_dist_sq = 9000000;
		var_60a5e1bc = 0;
		var_a8dc514 = 0;
		var_8ac2b1f9 = 0;
		foreach(player in level.players)
		{
			if(!isalive(player))
			{
				continue;
			}
			n_height_offset = player.origin[2] + 72 - self.origin[2];
			n_dist_sq = DistanceSquared(player.origin, self.origin);
			if(n_height_offset < var_11d57f72)
			{
				var_11d57f72 = n_height_offset;
			}
			if(n_dist_sq < n_closest_dist_sq)
			{
				n_closest_dist_sq = n_dist_sq;
			}
			if(var_11d57f72 < 152 * -1)
			{
				var_a8dc514 = 1;
				continue;
			}
			if(Abs(n_height_offset) < 96)
			{
				if(util::within_fov(self.origin, self.angles, player.origin, var_c119f9f1))
				{
					var_60a5e1bc = 1;
				}
			}
		}
		if(!var_a8dc514 && !var_60a5e1bc && n_closest_dist_sq > 2250000)
		{
			var_8ac2b1f9 = 1;
		}
		if(!var_8ac2b1f9)
		{
			if(var_a8dc514)
			{
				self.n_speed = 35;
			}
			else if(n_closest_dist_sq <= 562500 || var_60a5e1bc)
			{
				self.n_speed = 25;
			}
			else
			{
				self.n_speed = 5;
			}
			if(level flag::get("drone_scanning"))
			{
				self vehicle::resume_path();
				level flag::clear("drone_scanning");
			}
		}
		else
		{
			self.n_speed = 0;
			self vehicle::pause_path();
			if(!level flag::get("drone_scanning"))
			{
				self thread function_517ced56(60, 90, 15, 50);
			}
		}
		self SetSpeed(self.n_speed, 35, 35);
		wait(0.05);
	}
}

/*
	Name: function_3c36d48d
	Namespace: namespace_2afd69a
	Checksum: 0xE080B7F1
	Offset: 0xA10
	Size: 0xE9
	Parameters: 0
	Flags: None
*/
function function_3c36d48d()
{
	/#
		self endon("hash_c4902f95");
		self endon("reached_end_node");
		while(1)
		{
			wait(1);
			switch(self.n_speed)
			{
				case 35:
				{
					iprintln("Dev Block strings are not supported");
					break;
				}
				case 25:
				{
					iprintln("Dev Block strings are not supported");
					break;
				}
				case 5:
				{
					iprintln("Dev Block strings are not supported");
					break;
				}
				case default:
				{
					iprintln("Dev Block strings are not supported");
					break;
				}
			}
		}
	#/
}

/*
	Name: function_517ced56
	Namespace: namespace_2afd69a
	Checksum: 0xFE7F8847
	Offset: 0xB08
	Size: 0x203
	Parameters: 4
	Flags: None
*/
function function_517ced56(var_d3dc91f3, var_c6f8c0e6, var_6813d241, var_2e2d306e)
{
	if(!isdefined(var_d3dc91f3))
	{
		var_d3dc91f3 = 90;
	}
	if(!isdefined(var_c6f8c0e6))
	{
		var_c6f8c0e6 = 90;
	}
	if(!isdefined(var_6813d241))
	{
		var_6813d241 = 10;
	}
	if(!isdefined(var_2e2d306e))
	{
		var_2e2d306e = 30;
	}
	level flag::set("drone_scanning");
	var_84ced1da = spawn("script_origin", self.origin);
	var_84ced1da.angles = self.angles;
	self LinkTo(var_84ced1da);
	var_1337ab43 = self.angles;
	while(level flag::get("drone_scanning"))
	{
		var_5721da1 = (RandomFloatRange(var_6813d241 * -1, var_2e2d306e), RandomFloatRange(var_d3dc91f3 * -1, var_c6f8c0e6), 0);
		var_e6df4d78 = var_1337ab43 + var_5721da1;
		var_84ced1da RotateTo(var_e6df4d78, 0.5, 0.2, 0.2);
		var_84ced1da waittill("rotatedone");
		wait(RandomFloatRange(1, 2));
	}
	var_84ced1da delete();
}

/*
	Name: function_4f6daa65
	Namespace: namespace_2afd69a
	Checksum: 0xCB3FE5E2
	Offset: 0xD18
	Size: 0x1BB
	Parameters: 1
	Flags: None
*/
function function_4f6daa65(b_on)
{
	if(!isdefined(b_on))
	{
		b_on = 1;
	}
	if(b_on)
	{
		self clientfield::set("extra_cam_ent", 1);
		foreach(player in level.activePlayers)
		{
			player.var_5b63852a = player OpenLUIMenu("drone_pip");
		}
	}
	else
	{
		foreach(player in level.activePlayers)
		{
			if(isdefined(player.var_5b63852a))
			{
				player thread function_dbc35f5e(player.var_5b63852a, 1.25);
				player.var_5b63852a = undefined;
			}
		}
		self clientfield::set("extra_cam_ent", 0);
	}
}

/*
	Name: function_dbc35f5e
	Namespace: namespace_2afd69a
	Checksum: 0x4F0FF879
	Offset: 0xEE0
	Size: 0x5B
	Parameters: 2
	Flags: Private
*/
function private function_dbc35f5e(menuHandle, delay)
{
	self SetLUIMenuData(menuHandle, "close_current_menu", 1);
	wait(delay);
	self CloseLUIMenu(menuHandle);
}

