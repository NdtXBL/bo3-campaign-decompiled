#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_sing_biodomes;
#using scripts\cp\cp_mi_sing_biodomes_util;
#using scripts\cp\cp_mi_sing_biodomes_warehouse;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\fx_shared;
#using scripts\shared\laststand_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\math_shared;
#using scripts\shared\objpoints_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\system_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;

#namespace namespace_36171bd3;

/*
	Name: __init__sytem__
	Namespace: namespace_36171bd3
	Checksum: 0xDBCE5098
	Offset: 0xAD8
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__sytem__()
{
	system::register("squad_control", &__init__, undefined, undefined);
}

/*
	Name: __init__
	Namespace: namespace_36171bd3
	Checksum: 0x935B7C6A
	Offset: 0xB18
	Size: 0x19B
	Parameters: 0
	Flags: None
*/
function __init__()
{
	for(i = 0; i < 4; i++)
	{
		var_b9f5e594 = "keyline_outline_p" + i;
		clientfield::register("actor", var_b9f5e594, 1, 2, "int");
		clientfield::register("vehicle", var_b9f5e594, 1, 2, "int");
		clientfield::register("scriptmover", var_b9f5e594, 1, 3, "int");
	}
	for(i = 0; i < 4; i++)
	{
		var_b9f5e594 = "squad_indicator_p" + i;
		clientfield::register("actor", var_b9f5e594, 1, 1, "int");
	}
	clientfield::register("actor", "robot_camo_shader", 1, 3, "int");
	level.var_641fcd9c = [];
	level.var_a6fbf51b = 0;
	callback::on_disconnect(&on_player_disconnect);
}

/*
	Name: on_player_disconnect
	Namespace: namespace_36171bd3
	Checksum: 0x8AB08B17
	Offset: 0xCC0
	Size: 0xC9
	Parameters: 0
	Flags: None
*/
function on_player_disconnect()
{
	self function_bf7e3cbb();
	if(isdefined(self.var_6884cce4))
	{
		self.var_6884cce4 function_ac28ba8e();
	}
	if(isdefined(self.a_robots))
	{
		for(i = 0; i < self.a_robots.size; i++)
		{
			self.a_robots[i] util::stop_magic_bullet_shield();
			self.a_robots[i] kill();
		}
	}
	self notify("hash_f4ef75a1");
}

/*
	Name: function_4c7ed3de
	Namespace: namespace_36171bd3
	Checksum: 0x6D4A870F
	Offset: 0xD98
	Size: 0xAB
	Parameters: 1
	Flags: None
*/
function function_4c7ed3de(var_a6fbf51b)
{
	if(!isdefined(var_a6fbf51b))
	{
		var_a6fbf51b = 0;
	}
	self.var_3a11451c = 0;
	self.a_targets = [];
	self.var_38f7500 = [];
	level.var_a6fbf51b = var_a6fbf51b;
	self thread squad_init();
	self thread function_2a739664();
	self thread function_5e815292();
	self thread function_e666eb85();
}

/*
	Name: function_e56e9d7d
	Namespace: namespace_36171bd3
	Checksum: 0x5D852FA8
	Offset: 0xE50
	Size: 0xC1
	Parameters: 1
	Flags: None
*/
function function_e56e9d7d(var_641fcd9c)
{
	level.var_38f7500 = [];
	level.var_a6fbf51b = 0;
	foreach(var_f6c5842 in var_641fcd9c)
	{
		if(isalive(var_f6c5842))
		{
			level function_66e5311c(var_f6c5842);
		}
	}
}

/*
	Name: function_e666eb85
	Namespace: namespace_36171bd3
	Checksum: 0xB60447ED
	Offset: 0xF20
	Size: 0x199
	Parameters: 0
	Flags: None
*/
function function_e666eb85()
{
	self endon("death");
	self waittill("hash_f4ef75a1");
	wait(0.5);
	foreach(var_f6c5842 in self.a_robots)
	{
		if(isdefined(var_f6c5842))
		{
			var_f6c5842 thread function_14ec2d71();
			var_f6c5842 thread function_6142019a(self, 0);
		}
	}
	self.a_robots = [];
	a_e_targets = GetAITeamArray("axis");
	foreach(e_target in a_e_targets)
	{
		if(isdefined(e_target.var_6884cce4))
		{
			e_target.var_6884cce4 function_ac28ba8e();
		}
	}
}

/*
	Name: function_5e815292
	Namespace: namespace_36171bd3
	Checksum: 0x2876EF44
	Offset: 0x10C8
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_5e815292()
{
	self endon("death");
	self endon("hash_f4ef75a1");
	if(level.var_a6fbf51b)
	{
		self thread function_e74c1cd1();
		self thread function_2a32bf5e();
		self thread function_475fb2a8();
	}
}

/*
	Name: function_bd439085
	Namespace: namespace_36171bd3
	Checksum: 0x8ABA8FE8
	Offset: 0x1140
	Size: 0x1AD
	Parameters: 1
	Flags: None
*/
function function_bd439085(player)
{
	self endon("death");
	player endon("death");
	player endon("hash_f4ef75a1");
	wait(RandomFloatRange(1, 3));
	var_66eaa556 = player function_16ecda76(self);
	self.var_40148675 = player function_16ecda76(self);
	self ai::set_behavior_attribute("escort_position", self.var_40148675);
	while(1)
	{
		if(self ai::get_behavior_attribute("move_mode") === "escort" && self.var_24cf4025)
		{
			self.var_40148675 = player function_16ecda76(self);
			var_860823ab = DistanceSquared(self.var_40148675, var_66eaa556);
			if(var_860823ab > 2500)
			{
				var_66eaa556 = self.var_40148675;
				self ClearForcedGoal();
				self ai::set_behavior_attribute("escort_position", self.var_40148675);
			}
		}
		wait(2);
	}
}

/*
	Name: function_2d3a8177
	Namespace: namespace_36171bd3
	Checksum: 0xF47B981A
	Offset: 0x12F8
	Size: 0xE7
	Parameters: 1
	Flags: None
*/
function function_2d3a8177(player)
{
	self endon("death");
	player endon("hash_f4ef75a1");
	while(1)
	{
		wait(5);
		if(self ai::get_behavior_attribute("move_mode") === "escort" && self.var_24cf4025)
		{
			v_pos = GetClosestPointOnNavMesh(player.origin, 120, 32);
			if(isdefined(v_pos))
			{
				self SetGoal(v_pos);
			}
			else
			{
				self SetGoal(player.origin);
			}
		}
	}
}

/*
	Name: function_16ecda76
	Namespace: namespace_36171bd3
	Checksum: 0x7F0F3701
	Offset: 0x13E8
	Size: 0x67
	Parameters: 1
	Flags: None
*/
function function_16ecda76(e_robot)
{
	var_98c6afec = util::PositionQuery_PointArray(self.origin, 64, 200, 16, 16, 32);
	if(var_98c6afec.size)
	{
		return var_98c6afec[0];
	}
	else
	{
		return self.origin;
	}
}

/*
	Name: squad_init
	Namespace: namespace_36171bd3
	Checksum: 0x30E88B51
	Offset: 0x1458
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function squad_init()
{
	str_name = self.playerName;
	for(i = 0; i < self.a_robots.size; i++)
	{
		level function_66e5311c(self.a_robots[i], self);
	}
	self thread function_ba565c66();
	self thread function_bd7db313();
}

/*
	Name: function_66e5311c
	Namespace: namespace_36171bd3
	Checksum: 0x6E826869
	Offset: 0x14F8
	Size: 0x32F
	Parameters: 2
	Flags: None
*/
function function_66e5311c(var_f6c5842, player)
{
	var_f6c5842.var_9c0d91a = 0;
	var_f6c5842.var_24cf4025 = 1;
	var_f6c5842.var_99ebba13 = 0;
	var_f6c5842.str_action = "Standard";
	var_f6c5842.var_6648858 = 0;
	var_f6c5842.goalRadius = 200;
	var_f6c5842.attackerAccuracy = 1;
	var_f6c5842.minWalkDistance = 600;
	var_f6c5842 ai::set_behavior_attribute("supports_super_sprint", 1);
	if(GetDvarInt("tu1_biodomesSquadControlRobotMelee", 1))
	{
		var_f6c5842 ai::set_behavior_attribute("can_be_meleed", 1);
	}
	else
	{
		var_f6c5842 ai::set_behavior_attribute("can_be_meleed", 0);
	}
	if(level.var_a6fbf51b && isPlayer(player))
	{
		var_f6c5842 thread function_ba02c8e3(player);
		var_f6c5842 thread function_bd439085(player);
		var_f6c5842 thread function_2d3a8177(player);
		var_f6c5842 function_6142019a(player, 1);
		var_f6c5842 ai::set_behavior_attribute("move_mode", "escort");
		player.var_e6b3078d = player GetEntityNumber();
	}
	else
	{
		var_f6c5842 thread function_e21506ba();
		if(level flag::get("warehouse_warlord_friendly_goal"))
		{
			e_goal_volume = GetEnt("warehouse_warlord_friendly_volume", "targetname");
			var_f6c5842 SetGoal(e_goal_volume, 1);
		}
		else
		{
			var_f6c5842 ai::set_behavior_attribute("move_mode", "normal");
			var_f6c5842 colors::set_force_color("c");
		}
		var_f6c5842 function_eb13b9c0();
	}
	Array::add(level.var_641fcd9c, var_f6c5842, 0);
	if(level.var_b06e31c0)
	{
		var_f6c5842.overrideActorDamage = &function_f0bf9ac3;
	}
}

/*
	Name: function_eb13b9c0
	Namespace: namespace_36171bd3
	Checksum: 0x876E1EC4
	Offset: 0x1830
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_eb13b9c0()
{
	self clientfield::set("cybercom_setiffname", 2);
}

/*
	Name: function_5a0dc838
	Namespace: namespace_36171bd3
	Checksum: 0x81964910
	Offset: 0x1860
	Size: 0x14B
	Parameters: 1
	Flags: None
*/
function function_5a0dc838(player)
{
	self endon("death");
	player endon("hash_f4ef75a1");
	self endon("hash_f383a3b8");
	if(level.var_a6fbf51b)
	{
		return;
	}
	while(1)
	{
		wait(randomIntRange(6, 12));
		n_chance = RandomFloatRange(0, 1);
		if(n_chance >= 0.5 && !self.var_6648858 && self.var_24cf4025)
		{
			self thread function_ee0e002(1, player);
			self ai::set_behavior_attribute("move_mode", "rusher");
			self.perfectaim = 1;
			wait(10);
			self ai::set_behavior_attribute("move_mode", "escort");
			self thread function_ee0e002(0, player);
			self.perfectaim = 0;
		}
	}
}

/*
	Name: function_5d158aaf
	Namespace: namespace_36171bd3
	Checksum: 0xE46134A9
	Offset: 0x19B8
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_5d158aaf()
{
	self endon("death");
	self clientfield::set("robot_camo_shader", 1);
	self playsound("gdt_camo_suit_on");
	self.ignoreme = 1;
	self.var_6648858 = 1;
	wait(randomIntRange(3, 6));
	self clientfield::set("robot_camo_shader", 0);
	self playsound("gdt_camo_suit_off");
	self.ignoreme = 0;
	self.var_6648858 = 0;
}

/*
	Name: function_2a739664
	Namespace: namespace_36171bd3
	Checksum: 0x19D2130A
	Offset: 0x1A98
	Size: 0x81B
	Parameters: 0
	Flags: None
*/
function function_2a739664()
{
	if(!level.var_a6fbf51b)
	{
		return;
	}
	self.var_e6b3078d = self GetEntityNumber();
	str_name = self.playerName;
	if(self.var_e6b3078d == 0)
	{
		objectives::set("robot_name_1", self.a_robots[0]);
		objectives::function_3703618d("robot_name_1", "robot1", str_name + "-" + 0);
		self.a_robots[0] thread function_b5d8eeb6("robot_name_1", self);
		self.a_robots[0] thread function_acd9c248("robot_name_1", self);
		if(self.a_robots.size > 1)
		{
			objectives::set("robot_name_2", self.a_robots[1]);
			objectives::function_3703618d("robot_name_2", "robot2", str_name + "-" + 1);
			self.a_robots[1] thread function_b5d8eeb6("robot_name_2", self);
			self.a_robots[1] thread function_acd9c248("robot_name_2", self);
		}
		if(self.a_robots.size > 2)
		{
			objectives::set("robot_name_3", self.a_robots[2]);
			objectives::function_3703618d("robot_name_3", "robot3", str_name + "-" + 2);
			self.a_robots[2] thread function_b5d8eeb6("robot_name_3", self);
			self.a_robots[2] thread function_acd9c248("robot_name_3", self);
		}
		if(self.a_robots.size > 3)
		{
			objectives::set("robot_name_4", self.a_robots[3]);
			objectives::function_3703618d("robot_name_4", "robot4", str_name + "-" + 3);
			self.a_robots[3] thread function_b5d8eeb6("robot_name_4", self);
			self.a_robots[3] thread function_acd9c248("robot_name_4", self);
		}
	}
	else if(self.var_e6b3078d == 1)
	{
		objectives::set("robot_name_5", self.a_robots[0]);
		objectives::function_3703618d("robot_name_5", "robot5", str_name + "-" + 0);
		self.a_robots[0] thread function_b5d8eeb6("robot_name_5", self);
		self.a_robots[0] thread function_acd9c248("robot_name_5", self);
		objectives::set("robot_name_6", self.a_robots[1]);
		objectives::function_3703618d("robot_name_6", "robot6", str_name + "-" + 1);
		self.a_robots[1] thread function_b5d8eeb6("robot_name_6", self);
		self.a_robots[1] thread function_acd9c248("robot_name_6", self);
		if(self.a_robots.size > 2)
		{
			objectives::set("robot_name_7", self.a_robots[2]);
			objectives::function_3703618d("robot_name_7", "robot7", str_name + "-" + 2);
			self.a_robots[2] thread function_b5d8eeb6("robot_name_7", self);
			self.a_robots[2] thread function_acd9c248("robot_name_7", self);
		}
	}
	else if(self.var_e6b3078d == 2)
	{
		objectives::set("robot_name_8", self.a_robots[0]);
		objectives::function_3703618d("robot_name_8", "robot8", str_name + "-" + 0);
		self.a_robots[0] thread function_b5d8eeb6("robot_name_8", self);
		self.a_robots[0] thread function_acd9c248("robot_name_8", self);
		objectives::set("robot_name_9", self.a_robots[1]);
		objectives::function_3703618d("robot_name_9", "robot9", str_name + "-" + 1);
		self.a_robots[1] thread function_b5d8eeb6("robot_name_9", self);
		self.a_robots[1] thread function_acd9c248("robot_name_9", self);
	}
	else
	{
		objectives::set("robot_name_10", self.a_robots[0]);
		objectives::function_3703618d("robot_name_10", "robot10", str_name + "-" + 0);
		self.a_robots[0] thread function_b5d8eeb6("robot_name_10", self);
		self.a_robots[0] thread function_acd9c248("robot_name_10", self);
		objectives::set("robot_name_11", self.a_robots[1]);
		objectives::function_3703618d("robot_name_11", "robot11", str_name + "-" + 1);
		self.a_robots[1] thread function_b5d8eeb6("robot_name_11", self);
		self.a_robots[1] thread function_acd9c248("robot_name_11", self);
	}
}

/*
	Name: function_acd9c248
	Namespace: namespace_36171bd3
	Checksum: 0xF047475A
	Offset: 0x22C0
	Size: 0x43
	Parameters: 2
	Flags: None
*/
function function_acd9c248(var_376507c0, e_player)
{
	self endon("death");
	e_player waittill("hash_f4ef75a1");
	objectives::complete(var_376507c0, self);
}

/*
	Name: function_b5d8eeb6
	Namespace: namespace_36171bd3
	Checksum: 0x38B3DD64
	Offset: 0x2310
	Size: 0x5B
	Parameters: 2
	Flags: None
*/
function function_b5d8eeb6(var_376507c0, e_player)
{
	e_player endon("hash_f4ef75a1");
	self waittill("death");
	objectives::complete(var_376507c0, self);
	self function_6142019a(e_player, 0);
}

/*
	Name: function_2a32bf5e
	Namespace: namespace_36171bd3
	Checksum: 0xF908494C
	Offset: 0x2378
	Size: 0x287
	Parameters: 0
	Flags: None
*/
function function_2a32bf5e()
{
	self endon("disconnect");
	self endon("hash_f4ef75a1");
	while(1)
	{
		if(!self laststand::player_is_in_laststand())
		{
			a_e_targets = GetAITeamArray("axis");
			for(i = 0; i < a_e_targets.size; i++)
			{
				n_dist = Distance2DSquared(self.origin, a_e_targets[i].origin);
				if(self util::is_player_looking_at(a_e_targets[i].origin, 0.95, 0, self) && self SightConeTrace(a_e_targets[i] GetEye(), a_e_targets[i]) && isalive(a_e_targets[i]) && n_dist < 5760000)
				{
					if(isdefined(a_e_targets[i].var_2ddc2ef9) && !a_e_targets[i].var_2ddc2ef9 && isdefined(a_e_targets[i].var_38c1e4c8) && !a_e_targets[i].var_38c1e4c8)
					{
						a_e_targets[i] thread function_e228c18a(1, self);
						a_e_targets[i].var_2ddc2ef9 = 1;
					}
					continue;
				}
				if(isalive(a_e_targets[i]) && isdefined(a_e_targets[i].var_38c1e4c8) && !a_e_targets[i].var_38c1e4c8)
				{
					a_e_targets[i] thread function_14ec2d71(self);
					a_e_targets[i].var_2ddc2ef9 = 0;
				}
			}
		}
		wait(3);
	}
}

/*
	Name: function_944c781c
	Namespace: namespace_36171bd3
	Checksum: 0x98118F74
	Offset: 0x2608
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_944c781c()
{
	self endon("death");
	self endon("hash_f4ef75a1");
	if(!isdefined(self.var_7ac3be1c))
	{
		self.var_7ac3be1c = 0;
	}
	if(!self.var_7ac3be1c && isdefined(self.var_b1a0e508))
	{
		self.var_7ac3be1c = 1;
		self LUI::play_animation(self.var_b1a0e508, "Scanline");
		wait(2);
		self.var_7ac3be1c = 0;
	}
}

/*
	Name: function_e74c1cd1
	Namespace: namespace_36171bd3
	Checksum: 0xB0A46A40
	Offset: 0x26A0
	Size: 0x3F7
	Parameters: 0
	Flags: None
*/
function function_e74c1cd1()
{
	self endon("disconnect");
	self endon("hash_f4ef75a1");
	var_b0f96d4f = 1600;
	n_count = 10;
	while(1)
	{
		if(!self laststand::player_is_in_laststand())
		{
			if(self ActionSlotOneButtonPressed())
			{
				v_direction = AnglesToForward(self getPlayerAngles());
				v_eye = self GetEye();
				v_trace_pos = v_eye + v_direction * var_b0f96d4f;
				var_84323b2d = bullettrace(v_eye, v_trace_pos, 0, self)["position"];
				v_pos = groundpos_ignore_water(var_84323b2d) + VectorScale((0, 0, 1), 5);
				var_8e4b278 = GetClosestPointOnNavMesh(v_pos, 100, 32);
				var_3bad6c78 = 0;
				while(self ActionSlotOneButtonPressed())
				{
					var_3bad6c78++;
					if(var_3bad6c78 > 2)
					{
						/#
							level util::debug_line(self.origin + VectorScale((0, 0, 1), 32), v_pos, (0, 0.25, 1), 0.25, undefined, 1);
							v_direction = AnglesToForward(self getPlayerAngles());
							v_eye = self GetEye();
							v_trace_pos = v_eye + v_direction * var_b0f96d4f;
							var_84323b2d = bullettrace(v_eye, v_trace_pos, 0, self)["Dev Block strings are not supported"];
							v_pos = groundpos_ignore_water(var_84323b2d) + VectorScale((0, 0, 1), 5);
							var_8e4b278 = GetClosestPointOnNavMesh(v_pos, 100, 32);
						#/
					}
					if(var_3bad6c78 >= n_count)
					{
						var_3bad6c78 = n_count;
					}
					wait(0.05);
				}
				self thread namespace_27a45d31::function_7aa89143();
				if(var_3bad6c78 >= n_count)
				{
					self function_5ab070f9(var_8e4b278);
					self playsoundtoplayer("evt_robocommand_assign_task", self);
					continue;
				}
				self playsoundtoplayer("evt_robocommand_assign_task", self);
				self function_cbb9d101();
				self function_c90831e1();
				self function_99f62595(var_8e4b278);
				while(self ActionSlotOneButtonPressed())
				{
					wait(0.05);
				}
			}
		}
		wait(0.05);
	}
}

/*
	Name: function_5ab070f9
	Namespace: namespace_36171bd3
	Checksum: 0xEA6CD20E
	Offset: 0x2AA0
	Size: 0x433
	Parameters: 1
	Flags: None
*/
function function_5ab070f9(var_8e4b278)
{
	self endon("hash_f4ef75a1");
	if(isdefined(var_8e4b278))
	{
		self thread function_bf7e3cbb();
		var_72237359 = util::PositionQuery_PointArray(var_8e4b278, 16, 240, 70, 64, 40);
		if(isdefined(var_72237359) && var_72237359.size >= self.a_robots.size)
		{
			if(isdefined(self.var_6884cce4))
			{
				self.var_6884cce4 function_ac28ba8e();
			}
			foreach(robot in self.a_robots)
			{
				robot function_6142019a(self, 0);
			}
			self.a_robots = ArraySortClosest(self.a_robots, self.origin);
			var_2ceb0dbc = [];
			for(i = 0; i < self.a_robots.size; i++)
			{
				if(self.a_robots[i].var_24cf4025)
				{
					var_ea15b761 = "remove_waypoint_p" + self GetEntityNumber() + "_robot" + i;
					var_2ceb0dbc[i] = level FX::Play("squad_waypoint_base", var_72237359[i] + VectorScale((0, 0, 1), 4), VectorScale((-1, 0, 0), 90), var_ea15b761, 0, undefined, 1);
					var_2ceb0dbc[i] SetInvisibleToAll();
					var_2ceb0dbc[i] SetVisibleToPlayer(self);
					self.a_robots[i] notify("moving");
					self.a_robots[i].var_9c0d91a = 1;
					self.a_robots[i].str_action = "Moving";
					self.a_robots[i] notify("ACTION");
					self.a_robots[i] colors::disable();
					self.a_robots[i] clearentitytarget();
					self.a_robots[i] ai::set_behavior_attribute("move_mode", "normal");
					self.a_robots[i] SetGoal(var_72237359[i], 1);
					self.a_robots[i] thread function_1214aaea();
					self thread function_68efcbc3(self.a_robots[i], var_ea15b761);
				}
			}
		}
		else
		{
			self notify("hash_3b704051");
			self thread function_a5f1ef25();
		}
	}
	else
	{
		self notify("hash_3b704051");
		self thread function_a5f1ef25();
	}
}

/*
	Name: function_bf7e3cbb
	Namespace: namespace_36171bd3
	Checksum: 0x5DD851C8
	Offset: 0x2EE0
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_bf7e3cbb()
{
	n_player = self GetEntityNumber();
	if(isdefined(self.a_robots))
	{
		for(i = 0; i < self.a_robots.size; i++)
		{
			var_ea15b761 = "remove_waypoint_p" + n_player + "_robot" + i;
			level notify(var_ea15b761);
		}
	}
}

/*
	Name: function_cbb9d101
	Namespace: namespace_36171bd3
	Checksum: 0x38BCF4BE
	Offset: 0x2F80
	Size: 0x227
	Parameters: 0
	Flags: None
*/
function function_cbb9d101()
{
	if(self.var_3a11451c)
	{
		for(i = 0; i < self.var_38f7500.size; i++)
		{
			if(isdefined(self.var_38f7500[i]) && isdefined(self.var_38f7500[i].var_6884cce4))
			{
				self.var_38f7500[i] notify("end");
				self.var_38f7500[i].var_6884cce4 function_ac28ba8e();
			}
		}
		self.var_3a11451c = 0;
	}
	if(self.a_targets.size)
	{
		foreach(var_f6c5842 in self.a_robots)
		{
			if(var_f6c5842.var_99ebba13)
			{
				var_f6c5842 notify("stop_shooting");
				var_f6c5842.str_action = "Standard";
				var_f6c5842 notify("ACTION");
				var_f6c5842.var_99ebba13 = 0;
				var_f6c5842 clearentitytarget();
			}
		}
		for(i = 0; i < self.a_targets.size; i++)
		{
			if(isalive(self.a_targets[i]))
			{
				self.a_targets[i].var_38c1e4c8 = 0;
				self.a_targets[i] function_14ec2d71(self);
			}
		}
		self.a_targets = [];
	}
}

/*
	Name: function_c90831e1
	Namespace: namespace_36171bd3
	Checksum: 0x461549FE
	Offset: 0x31B0
	Size: 0x32D
	Parameters: 0
	Flags: None
*/
function function_c90831e1()
{
	for(i = 0; i < self.var_38f7500.size; i++)
	{
		if(isdefined(self.var_38f7500[i]))
		{
			n_dist = Distance2DSquared(self.origin, self.var_38f7500[i].origin);
			if(!self.var_38f7500[i].var_9145aecb && n_dist < 5760000)
			{
				if(self util::is_player_looking_at(self.var_38f7500[i].origin, 0.9, 0, self))
				{
					if(self.a_robots.size >= self.var_38f7500[i].var_9c452877)
					{
						self.var_38f7500[i].var_9145aecb = 1;
						self.var_3a11451c = 1;
						var_64e85e6d = [];
						if(self.var_38f7500[i].script_noteworthy == "turret_hall")
						{
							var_64e85e6d = ArrayCopy(level.var_641fcd9c);
						}
						else
						{
							a_temp = ArrayCopy(level.var_641fcd9c);
							while(1)
							{
								ai_closest = ArrayGetClosest(self.var_38f7500[i].origin, a_temp);
								ArrayRemoveValue(a_temp, ai_closest);
								if(ai_closest.var_24cf4025)
								{
									ai_closest.var_24cf4025 = 0;
									Array::add(var_64e85e6d, ai_closest);
									if(var_64e85e6d.size > 1)
									{
										break;
									}
								}
								if(!a_temp.size)
								{
									IPrintLnBold("NOT ENOUGH ROBOTS");
									self.var_38f7500[i].var_9145aecb = 0;
									self.var_3a11451c = 0;
									var_64e85e6d = [];
									break;
								}
								wait(0.05);
							}
							a_temp = [];
						}
						if(var_64e85e6d.size)
						{
							self thread function_eaccc8a9(var_64e85e6d, self.var_38f7500[i]);
						}
						break;
						continue;
					}
					IPrintLnBold(self.playerName + " DOES NOT HAVE ENOUGH ROBOTS");
				}
			}
		}
	}
}

/*
	Name: function_9c52a47e
	Namespace: namespace_36171bd3
	Checksum: 0x16905639
	Offset: 0x34E8
	Size: 0x2E9
	Parameters: 2
	Flags: None
*/
function function_9c52a47e(var_e6c12a6e, var_4639e1cf)
{
	if(!isdefined(var_4639e1cf))
	{
		var_4639e1cf = 0;
	}
	if(level.var_a6fbf51b)
	{
		return;
	}
	var_526a0aed = GetEnt(var_e6c12a6e, "script_noteworthy");
	var_526a0aed endon("death");
	wait(var_4639e1cf);
	for(i = 0; i < level.var_38f7500.size; i++)
	{
		if(level.var_38f7500[i] === var_526a0aed && !level.var_38f7500[i].var_9145aecb)
		{
			while(level.var_641fcd9c.size < level.var_38f7500[i].var_9c452877)
			{
				level notify("hash_725ff4d9");
				wait(0.05);
			}
			if(level.var_641fcd9c.size >= level.var_38f7500[i].var_9c452877)
			{
				level.var_38f7500[i].var_9145aecb = 1;
				var_64e85e6d = [];
				a_temp = ArrayCopy(level.var_641fcd9c);
				while(1)
				{
					ai_closest = ArrayGetClosest(level.var_38f7500[i].origin, a_temp);
					ArrayRemoveValue(a_temp, ai_closest);
					if(isalive(ai_closest) && ai_closest.var_24cf4025 && !ai_closest.isCrawler)
					{
						ai_closest.var_24cf4025 = 0;
						ai_closest util::magic_bullet_shield();
						Array::add(var_64e85e6d, ai_closest);
						if(var_64e85e6d.size > 1)
						{
							break;
						}
					}
					if(!a_temp.size)
					{
						level.var_38f7500[i].var_9145aecb = 0;
						var_64e85e6d = [];
						break;
					}
					wait(0.05);
				}
				a_temp = [];
				if(var_64e85e6d.size)
				{
					level thread function_eaccc8a9(var_64e85e6d, level.var_38f7500[i]);
				}
				break;
			}
		}
	}
}

/*
	Name: function_99f62595
	Namespace: namespace_36171bd3
	Checksum: 0xB82E9812
	Offset: 0x37E0
	Size: 0x2FB
	Parameters: 1
	Flags: None
*/
function function_99f62595(var_8e4b278)
{
	a_e_targets = GetAITeamArray("axis");
	if(!self.var_3a11451c)
	{
		for(i = 0; i < a_e_targets.size; i++)
		{
			n_dist = Distance2DSquared(self.origin, a_e_targets[i].origin);
			if(self util::is_player_looking_at(a_e_targets[i].origin, 0.95, 0, self) && self SightConeTrace(a_e_targets[i] GetEye(), a_e_targets[i]) && isalive(a_e_targets[i]) && n_dist < 5760000)
			{
				if(!isdefined(a_e_targets[i].var_9145aecb))
				{
					if(!isdefined(self.a_targets))
					{
						self.a_targets = [];
					}
					else if(!IsArray(self.a_targets))
					{
						self.a_targets = Array(self.a_targets);
					}
					self.a_targets[self.a_targets.size] = a_e_targets[i];
					self thread mark_target(a_e_targets[i], "target");
					self thread function_570ccae9(a_e_targets[i]);
				}
			}
		}
	}
	else if(self.a_targets.size)
	{
		foreach(var_f6c5842 in self.a_robots)
		{
			if(isalive(var_f6c5842) && var_f6c5842.var_24cf4025)
			{
				self thread function_32091ff6(var_f6c5842);
			}
		}
	}
	else
	{
		self function_5ab070f9(var_8e4b278);
		self playsoundtoplayer("evt_robocommand_assign_task", self);
	}
}

/*
	Name: function_1214aaea
	Namespace: namespace_36171bd3
	Checksum: 0x6908C59D
	Offset: 0x3AE8
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_1214aaea()
{
	self endon("death");
	wait(RandomFloatRange(0.4, 1.2));
	if(isdefined(self))
	{
		self playsound("evt_robocommand_acknowledge");
	}
}

/*
	Name: function_a5f1ef25
	Namespace: namespace_36171bd3
	Checksum: 0x6B1F88A6
	Offset: 0x3B48
	Size: 0x9D
	Parameters: 0
	Flags: None
*/
function function_a5f1ef25()
{
	self endon("disconnect");
	self endon("hash_3b704051");
	if(isdefined(self.var_3459b224))
	{
		self CloseLUIMenu(self.var_3459b224);
		self.var_3459b224 = undefined;
	}
	self.var_3459b224 = self OpenLUIMenu("SquadInvalidPosMenu");
	wait(2);
	self CloseLUIMenu(self.var_3459b224);
	self.var_3459b224 = undefined;
}

/*
	Name: function_5646c025
	Namespace: namespace_36171bd3
	Checksum: 0x996E4DA0
	Offset: 0x3BF0
	Size: 0x3BB
	Parameters: 0
	Flags: None
*/
function function_5646c025()
{
	self endon("disconnect");
	self endon("hash_f4ef75a1");
	while(1)
	{
		n_min_dist = 48;
		n_max_dist = 400;
		var_ec020d8 = 48;
		if(isdefined(self.var_995495f2) && self.var_995495f2)
		{
			n_min_dist = 24;
			n_max_dist = 82;
			var_ec020d8 = 0;
		}
		v_player_pos = GetClosestPointOnNavMesh(self.origin, 82, 32);
		if(isdefined(v_player_pos))
		{
			var_72237359 = util::PositionQuery_PointArray(v_player_pos, n_min_dist, n_max_dist, var_ec020d8, 100, 48);
			if(var_72237359.size >= self.a_robots.size)
			{
				self.a_robots = ArraySortClosest(self.a_robots, self.origin);
				for(i = 0; i < self.a_robots.size; i++)
				{
					if(Distance2DSquared(self.origin, self.a_robots[i].origin) > 40000)
					{
						if(!self.a_robots[i].var_9c0d91a && !self.a_robots[i].var_99ebba13 && self.a_robots[i].var_24cf4025)
						{
							self.a_robots[i] SetGoal(var_72237359[i], 1);
							wait(RandomFloatRange(0.1, 0.3));
						}
					}
				}
			}
			else
			{
				var_cfd95255 = [];
				for(i = 0; i < self.a_robots.size; i++)
				{
					if(Distance2DSquared(self.origin, self.a_robots[i].origin) > 40000)
					{
						if(!self.a_robots[i].var_9c0d91a && !self.a_robots[i].var_99ebba13 && self.a_robots[i].var_24cf4025)
						{
							var_cfd95255[i] = GetClosestPointOnNavMesh(self.origin + (i * 50, i * 50, 0), 82, 32);
							if(isdefined(var_cfd95255[i]))
							{
								self.a_robots[i] SetGoal(var_cfd95255[i], 1);
								wait(RandomFloatRange(0.1, 0.3));
							}
						}
					}
				}
				var_cfd95255 = undefined;
			}
		}
		wait(0.1);
	}
}

/*
	Name: function_475fb2a8
	Namespace: namespace_36171bd3
	Checksum: 0x2E315892
	Offset: 0x3FB8
	Size: 0x1BD
	Parameters: 0
	Flags: None
*/
function function_475fb2a8()
{
	self endon("disconnect");
	self endon("hash_f4ef75a1");
	while(1)
	{
		self waittill("player_downed");
		for(i = 0; i < self.a_robots.size; i++)
		{
			if(isalive(self.a_robots[i]))
			{
				self.a_robots[i] notify("stop_shooting");
				self.a_robots[i].var_99ebba13 = 0;
				self.a_robots[i].var_9c0d91a = 0;
				self.a_robots[i].str_action = "Standard";
				self.a_robots[i] notify("ACTION");
			}
		}
		wait(0.5);
		if(self.a_targets.size)
		{
			foreach(e_target in self.a_targets)
			{
				if(isalive(e_target))
				{
					e_target thread function_14ec2d71(self);
				}
			}
		}
	}
}

/*
	Name: function_3902f06d
	Namespace: namespace_36171bd3
	Checksum: 0x51FFA04F
	Offset: 0x4180
	Size: 0x67
	Parameters: 0
	Flags: None
*/
function function_3902f06d()
{
	self endon("death");
	self endon("moving");
	str_msg = self util::waittill_any_timeout(20, "goal");
	if(str_msg == "goal")
	{
		wait(3);
	}
	self.var_9c0d91a = 0;
}

/*
	Name: function_68efcbc3
	Namespace: namespace_36171bd3
	Checksum: 0x161C1117
	Offset: 0x41F0
	Size: 0xFF
	Parameters: 2
	Flags: None
*/
function function_68efcbc3(var_f6c5842, var_ea15b761)
{
	self endon("disconnect");
	self endon("hash_f4ef75a1");
	var_f6c5842 endon("moving");
	var_f6c5842 endon("death");
	str_msg = var_f6c5842 util::waittill_any_timeout(20, "goal");
	level notify(var_ea15b761);
	var_f6c5842 function_6142019a(self, 1);
	if(str_msg == "goal")
	{
		wait(3);
	}
	var_f6c5842 ai::set_behavior_attribute("move_mode", "escort");
	var_f6c5842.var_9c0d91a = 0;
	var_f6c5842.str_action = "Standard";
	var_f6c5842 notify("ACTION");
}

/*
	Name: mark_target
	Namespace: namespace_36171bd3
	Checksum: 0xAB13F583
	Offset: 0x42F8
	Size: 0x7F
	Parameters: 2
	Flags: None
*/
function mark_target(e_target, var_376507c0)
{
	e_target endon("death");
	e_target endon("end");
	e_target function_14ec2d71(self);
	wait(0.05);
	e_target function_e228c18a(2, self);
	e_target.var_38c1e4c8 = 1;
}

/*
	Name: function_b2e2e2e2
	Namespace: namespace_36171bd3
	Checksum: 0xF4DC9808
	Offset: 0x4380
	Size: 0x67
	Parameters: 2
	Flags: None
*/
function function_b2e2e2e2(e_target, var_376507c0)
{
	e_target.var_6884cce4 = function_fe46cd6(var_376507c0, e_target GetEntityNumber(), e_target.origin + VectorScale((0, 0, 1), 72));
}

/*
	Name: function_570ccae9
	Namespace: namespace_36171bd3
	Checksum: 0x6EC06644
	Offset: 0x43F0
	Size: 0xBB
	Parameters: 1
	Flags: None
*/
function function_570ccae9(ai_target)
{
	ai_target waittill("death");
	if(isdefined(ai_target) && isdefined(self.a_targets) && IsInArray(self.a_targets, ai_target))
	{
		ArrayRemoveValue(self.a_targets, ai_target);
	}
	if(isdefined(ai_target))
	{
		ai_target function_14ec2d71();
	}
	if(isdefined(ai_target.var_6884cce4))
	{
		ai_target.var_6884cce4 function_ac28ba8e();
	}
}

/*
	Name: function_bb612155
	Namespace: namespace_36171bd3
	Checksum: 0x6F806A74
	Offset: 0x44B8
	Size: 0x101
	Parameters: 1
	Flags: None
*/
function function_bb612155(var_da565296)
{
	var_da565296.var_9145aecb = 0;
	if(!isdefined(self.var_38f7500))
	{
		self.var_38f7500 = [];
	}
	else if(!IsArray(self.var_38f7500))
	{
		self.var_38f7500 = Array(self.var_38f7500);
	}
	self.var_38f7500[self.var_38f7500.size] = var_da565296;
	switch(var_da565296.script_noteworthy)
	{
		case "pry_door":
		{
			var_da565296.var_9c452877 = 2;
			break;
		}
		case "floor_collapse":
		{
			var_da565296.var_9c452877 = 2;
			break;
		}
		case "turret_hall":
		{
			var_da565296.var_9c452877 = 1;
			break;
		}
	}
}

/*
	Name: function_eaccc8a9
	Namespace: namespace_36171bd3
	Checksum: 0x974517D3
	Offset: 0x45C8
	Size: 0x225
	Parameters: 2
	Flags: None
*/
function function_eaccc8a9(var_64e85e6d, var_da565296)
{
	foreach(var_f6c5842 in var_64e85e6d)
	{
		if(isalive(var_f6c5842) && !var_f6c5842.isCrawler)
		{
			if(var_da565296.script_noteworthy == "floor_collapse")
			{
				var_f6c5842 ai::set_behavior_attribute("move_mode", "rambo");
			}
			else
			{
				var_f6c5842 ai::set_behavior_attribute("move_mode", "normal");
			}
			var_f6c5842 util::magic_bullet_shield();
			var_f6c5842.var_24cf4025 = 0;
			var_f6c5842 ai::disable_pain();
			var_f6c5842.ignoreSuppression = 1;
			var_f6c5842 notify("stop_shooting");
			var_f6c5842 notify("hash_f383a3b8");
			var_f6c5842.str_action = "Interacting";
			var_f6c5842 notify("ACTION");
			continue;
		}
		return;
	}
	switch(var_da565296.script_noteworthy)
	{
		case "pry_door":
		{
			self thread function_fa1babcf(var_64e85e6d, var_da565296);
			break;
		}
		case "floor_collapse":
		{
			self thread function_62a18690(var_64e85e6d, var_da565296);
			break;
		}
	}
}

/*
	Name: function_32091ff6
	Namespace: namespace_36171bd3
	Checksum: 0xE4BB093A
	Offset: 0x47F8
	Size: 0x5D7
	Parameters: 1
	Flags: None
*/
function function_32091ff6(var_f6c5842)
{
	var_f6c5842 endon("death");
	var_f6c5842 endon("stop_shooting");
	self endon("hash_f4ef75a1");
	self endon("disconnect");
	n_min_dist = 60;
	n_max_dist = 200;
	var_f6c5842.goalRadius = 1024;
	var_f6c5842 ai::set_behavior_attribute("move_mode", "rusher");
	var_f6c5842 thread function_ee0e002(1, self);
	for(i = 0; i < self.a_targets.size; i++)
	{
		self.a_targets[i].var_d29e35d1 = 0;
		if(isalive(self.a_targets[i]))
		{
			if(self.a_targets[i].aitype === "spawner_enemy_54i_human_warlord_minigun")
			{
				continue;
			}
			v_target_pos = GetClosestPointOnNavMesh(self.a_targets[i].origin, 64, 16);
			if(isdefined(v_target_pos))
			{
				var_72237359 = util::PositionQuery_PointArray(v_target_pos, n_min_dist, n_max_dist, 70, 32, var_f6c5842);
				if(var_72237359.size >= self.a_robots.size)
				{
					n_height_diff = Abs(self.origin[2] - var_72237359[i][2]);
					if(n_height_diff < 160 && DistanceSquared(self.origin, var_72237359[i]) < 1048576)
					{
						var_f6c5842 SetGoal(var_72237359[i], 1);
					}
					if(IsActor(self.a_targets[i]))
					{
						var_f6c5842 thread ai::shoot_at_target("kill_within_time", self.a_targets[i], undefined, 0.05, 100);
					}
					else
					{
						var_f6c5842 thread ai::shoot_at_target("shoot_until_target_dead", self.a_targets[i], undefined, 0.05, 100);
					}
				}
				else
				{
					var_f6c5842 ai::set_behavior_attribute("move_mode", "normal");
					if(IsActor(self.a_targets[i]))
					{
						var_f6c5842 thread ai::shoot_at_target("kill_within_time", self.a_targets[i], undefined, 0.05, 100);
					}
					else
					{
						var_f6c5842 thread ai::shoot_at_target("shoot_until_target_dead", self.a_targets[i], undefined, 0.05, 100);
					}
				}
			}
			else if(IsActor(self.a_targets[i]))
			{
				var_f6c5842 thread ai::shoot_at_target("kill_within_time", self.a_targets[i], undefined, 0.05, 100);
			}
			else
			{
				var_f6c5842 thread ai::shoot_at_target("shoot_until_target_dead", self.a_targets[i], undefined, 0.05, 100);
			}
			self.a_targets[i].var_d29e35d1 = 1;
			var_f6c5842.var_99ebba13 = 1;
			var_f6c5842.str_action = "Attacking";
			var_f6c5842 notify("ACTION");
			/#
				level util::debug_line(var_f6c5842.origin + VectorScale((0, 0, 1), 64), self.a_targets[i].origin + VectorScale((0, 0, 1), 64), (1, 0, 0), 0.1, undefined, 3);
			#/
			var_f6c5842 thread function_1214aaea();
		}
	}
	while(self.a_targets.size)
	{
		wait(0.05);
	}
	var_f6c5842 ClearForcedGoal();
	var_f6c5842 thread function_ee0e002(0, self);
	var_f6c5842 ai::set_behavior_attribute("move_mode", "escort");
	var_f6c5842.var_99ebba13 = 0;
	var_f6c5842.str_action = "Standard";
	var_f6c5842 notify("ACTION");
}

/*
	Name: function_62a18690
	Namespace: namespace_36171bd3
	Checksum: 0x58F2D575
	Offset: 0x4DD8
	Size: 0x373
	Parameters: 2
	Flags: None
*/
function function_62a18690(var_64e85e6d, var_da565296)
{
	level endon("hash_c791a545");
	if(IsInArray(self.var_38f7500, var_da565296))
	{
		ArrayRemoveValue(self.var_38f7500, var_da565296);
	}
	level thread function_4b9a48da(var_64e85e6d, "turret1_dead");
	level thread function_2b79dc3e();
	if(isdefined(var_da565296) && !level flag::get("turret1_dead"))
	{
		if(isalive(var_da565296))
		{
			if(var_da565296 getteam() === "allies")
			{
				level flag::set("turret1_dead");
				return;
			}
			level thread scene::init("cin_bio_03_02_market_vign_targetkill_robot01", var_64e85e6d[0]);
			level thread scene::init("cin_bio_03_02_market_vign_targetkill_robot02", var_64e85e6d[1]);
			level util::waittill_multiple_ents(var_64e85e6d[0], "goal", var_64e85e6d[1], "goal");
			level thread scene::Play("scene_turret1", "targetname", var_64e85e6d);
			var_da565296 util::magic_bullet_shield();
			level util::waittill_notify_or_timeout("floor_fall", 10);
			var_80951788 = GetEnt("vendor_shop_turret_destroyed", "targetname");
			if(isdefined(var_80951788))
			{
				var_80951788 delete();
			}
			level thread scene::Play("p7_fxanim_cp_biodomes_turret_collapse_bundle");
			var_eaa951c2 = GetEnt("turret_collapse", "targetname");
			if(isdefined(var_da565296) && isdefined(var_eaa951c2))
			{
				var_da565296 LinkTo(var_eaa951c2, "turret_jnt");
				FX::Play("ceiling_collapse", var_da565296.origin);
				PlayRumbleOnPosition("cp_biodomes_markets1_turret_collapse_rumble", var_da565296.origin);
			}
			level notify("hash_62a94152");
			if(isalive(var_da565296))
			{
				var_da565296 util::stop_magic_bullet_shield();
				var_da565296 kill();
			}
		}
	}
}

/*
	Name: function_2b79dc3e
	Namespace: namespace_36171bd3
	Checksum: 0xAFD6CEFF
	Offset: 0x5158
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_2b79dc3e()
{
	level endon("hash_62a94152");
	level flag::wait_till("turret1_dead");
	level scene::stop("cin_bio_03_02_market_vign_targetkill_robot01");
	level scene::stop("cin_bio_03_02_market_vign_targetkill_robot02");
	level scene::stop("scene_turret1", "targetname");
}

/*
	Name: function_ee0e002
	Namespace: namespace_36171bd3
	Checksum: 0xDAFB5869
	Offset: 0x51F8
	Size: 0x12B
	Parameters: 2
	Flags: None
*/
function function_ee0e002(var_e33a0786, player)
{
	self endon("death");
	return;
	self clientfield::set("robot_camo_shader", 2);
	wait(1);
	self clientfield::set("robot_camo_shader", var_e33a0786);
	if(var_e33a0786 == 1)
	{
		self ai::set_ignoreme(1);
		self.var_6648858 = 1;
		self thread function_87862943(player);
		self playsound("gdt_camo_suit_on");
	}
	else
	{
		self ai::set_ignoreme(0);
		self.var_6648858 = 0;
		self notify("hash_8b094b58");
		self playsound("gdt_camo_suit_off");
	}
}

/*
	Name: function_8c6434be
	Namespace: namespace_36171bd3
	Checksum: 0xA3F7DC30
	Offset: 0x5330
	Size: 0xA3
	Parameters: 1
	Flags: None
*/
function function_8c6434be(var_7cdd1744)
{
	self endon("death");
	self endon("hash_f4ef75a1");
	if(level.var_a6fbf51b && isdefined(self.var_a8fcd329))
	{
		self SetLUIMenuData(self.var_a8fcd329, "squad_camo_amount", var_7cdd1744);
		var_a3b661c9 = &"CP_MI_SING_BIODOMES_ROBOT_CAMO_ENERGY";
		self SetLUIMenuData(self.var_a8fcd329, "squad_camo_text", var_a3b661c9);
	}
}

/*
	Name: function_bd7db313
	Namespace: namespace_36171bd3
	Checksum: 0xBDE4C875
	Offset: 0x53E0
	Size: 0x17F
	Parameters: 0
	Flags: None
*/
function function_bd7db313()
{
	self endon("death");
	self.var_6c93934a = 500;
	var_c9f0947a = Int(self.var_6c93934a / 500 * 100);
	while(1)
	{
		if(level.skipto_point == "objective_cloudmountain" && level.var_a6fbf51b)
		{
			break;
		}
		if(self.var_6c93934a < 500)
		{
			self.var_6c93934a = self.var_6c93934a + 20;
			if(self.var_6c93934a > 500)
			{
				self.var_6c93934a = 500;
			}
			var_c9f0947a = Int(self.var_6c93934a / 500 * 100);
			self thread function_8c6434be(var_c9f0947a);
		}
		for(i = 0; i < self.a_robots.size; i++)
		{
			if(isdefined(self.a_robots[i].enemy))
			{
				n_wait = 5;
				break;
				continue;
			}
			n_wait = 0.5;
		}
		wait(n_wait);
	}
}

/*
	Name: function_87862943
	Namespace: namespace_36171bd3
	Checksum: 0x4FE8DDF
	Offset: 0x5568
	Size: 0x1A3
	Parameters: 1
	Flags: None
*/
function function_87862943(player)
{
	self endon("hash_8b094b58");
	self endon("death");
	player endon("death");
	if(player.var_6c93934a >= 10)
	{
		player.var_6c93934a = player.var_6c93934a - 10;
		var_c9f0947a = Int(player.var_6c93934a / 500 * 100);
		player thread function_8c6434be(var_c9f0947a);
		while(player.var_6c93934a >= 0)
		{
			wait(3);
			player.var_6c93934a = player.var_6c93934a - 5;
			if(player.var_6c93934a < 0)
			{
				player.var_6c93934a = 0;
				self function_ee0e002(0, player);
			}
			var_c9f0947a = Int(player.var_6c93934a / 500 * 100);
			player thread function_8c6434be(var_c9f0947a);
		}
	}
	else
	{
		self thread function_ee0e002(0, player);
	}
}

/*
	Name: function_4b9a48da
	Namespace: namespace_36171bd3
	Checksum: 0xBFC6001E
	Offset: 0x5718
	Size: 0x1D1
	Parameters: 2
	Flags: None
*/
function function_4b9a48da(var_64e85e6d, str_flag)
{
	level flag::wait_till(str_flag);
	wait(0.5);
	foreach(var_f6c5842 in var_64e85e6d)
	{
		if(isalive(var_f6c5842))
		{
			var_f6c5842 thread util::delay(10, "death", &util::stop_magic_bullet_shield);
			var_f6c5842.goalRadius = 1024;
			var_f6c5842.ignoreSuppression = 0;
			var_f6c5842 ai::set_ignoreall(0);
			var_f6c5842 ai::enable_pain();
			var_f6c5842.var_24cf4025 = 1;
			var_f6c5842.animName = undefined;
			var_f6c5842.str_action = "Standard";
			var_f6c5842 notify("ACTION");
			var_f6c5842 ClearForcedGoal();
			var_f6c5842 ai::set_behavior_attribute("move_mode", "normal");
		}
	}
	var_64e85e6d = [];
}

/*
	Name: function_cd484af8
	Namespace: namespace_36171bd3
	Checksum: 0x8524F5D5
	Offset: 0x58F8
	Size: 0x20F
	Parameters: 3
	Flags: None
*/
function function_cd484af8(v_goal, a_targets, str_endon)
{
	self endon("death");
	level endon(str_endon);
	str_msg = self util::waittill_any_timeout(15, "goal");
	if(str_msg != "goal")
	{
		self SetGoal(self.origin, 1);
		self waittill("goal");
		self ForceTeleport(v_goal);
		self SetGoal(v_goal, 1);
	}
	if(IsArray(a_targets))
	{
		ArraySortClosest(a_targets, self.origin);
		for(i = 0; i < a_targets.size; i++)
		{
			if(isalive(a_targets[i]))
			{
				self thread ai::shoot_at_target("normal", a_targets[i], undefined, 3);
				wait(3);
				if(isalive(a_targets[i]))
				{
					a_targets[i] kill();
				}
			}
		}
	}
	else if(isalive(a_targets))
	{
		self thread ai::shoot_at_target("shoot_until_target_dead", a_targets);
		self waittill("stop_shoot_at_target");
	}
}

/*
	Name: function_fa1babcf
	Namespace: namespace_36171bd3
	Checksum: 0xF00B356D
	Offset: 0x5B10
	Size: 0x263
	Parameters: 2
	Flags: None
*/
function function_fa1babcf(var_64e85e6d, var_da565296)
{
	if(IsInArray(self.var_38f7500, var_da565296))
	{
		ArrayRemoveValue(self.var_38f7500, var_da565296);
	}
	level.var_2fd26037 colors::disable();
	level.var_2fd26037 notify("stop_following");
	level thread function_4b9a48da(var_64e85e6d, "back_door_opened");
	level thread scene::init("cin_bio_06_01_backdoor_vign_open_hendricks", level.var_2fd26037);
	level thread scene::init("cin_bio_06_01_backdoor_vign_open_robot01", var_64e85e6d[0]);
	level thread scene::init("cin_bio_06_01_backdoor_vign_open_robot02", var_64e85e6d[1]);
	a_actors = Array(level.var_2fd26037, var_64e85e6d[0], var_64e85e6d[1]);
	level util::timeout(15, &Array::wait_till, a_actors, "goal");
	level thread function_69aa351a();
	level scene::Play("scene_warehouse_door", "targetname");
	level flag::set("back_door_opened");
	level notify("open");
	if(isdefined(var_da565296))
	{
		var_da565296 delete();
	}
	var_64e85e6d = [];
	level flag::wait_till("objective_warehouse_completed");
	level thread scene::stop("scene_warehouse_door", "targetname");
}

/*
	Name: function_f5b04e6
	Namespace: namespace_36171bd3
	Checksum: 0x4152EE5D
	Offset: 0x5D80
	Size: 0x83
	Parameters: 1
	Flags: None
*/
function function_f5b04e6(nd_pos)
{
	self endon("death");
	self SetGoal(nd_pos, 1);
	self util::waittill_any_timeout(20, "goal");
	self ClearForcedGoal();
	self.goalRadius = 4;
	self.var_f54278fd = 1;
}

/*
	Name: function_69aa351a
	Namespace: namespace_36171bd3
	Checksum: 0x7132DABD
	Offset: 0x5E10
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_69aa351a()
{
	level waittill("hash_f2423fe9");
	var_b06d4473 = GetEnt("back_door_player_clip", "targetname");
	var_b06d4473 delete();
	var_60f8f46f = GetEnt("back_door_full_clip", "targetname");
	var_60f8f46f delete();
	var_bee08349 = GetEnt("back_door_no_pen_clip", "targetname");
	var_bee08349 delete();
}

/*
	Name: function_32fa03b2
	Namespace: namespace_36171bd3
	Checksum: 0x76C14E8
	Offset: 0x5EF0
	Size: 0x3B
	Parameters: 2
	Flags: None
*/
function function_32fa03b2(n_wait, str_flag)
{
	level endon(str_flag);
	wait(n_wait);
	level flag::set(str_flag);
}

/*
	Name: function_ccf72d08
	Namespace: namespace_36171bd3
	Checksum: 0xCE970286
	Offset: 0x5F38
	Size: 0x53
	Parameters: 2
	Flags: None
*/
function function_ccf72d08(a_robots, str_flag)
{
	level endon(str_flag);
	Array::wait_till(a_robots, "goal");
	level flag::set(str_flag);
}

/*
	Name: function_ba565c66
	Namespace: namespace_36171bd3
	Checksum: 0x9995846D
	Offset: 0x5F98
	Size: 0x41
	Parameters: 0
	Flags: None
*/
function function_ba565c66()
{
	self endon("disconnect");
	self endon("hash_f4ef75a1");
	if(level.var_a6fbf51b)
	{
		self waittill("hash_3484dc92");
		self notify("hash_f4ef75a1");
	}
}

/*
	Name: function_e21506ba
	Namespace: namespace_36171bd3
	Checksum: 0xBFE4F63B
	Offset: 0x5FE8
	Size: 0x30B
	Parameters: 0
	Flags: None
*/
function function_e21506ba()
{
	level endon("hash_b38d1391");
	level endon("hash_a68d9993");
	self waittill("death");
	ArrayRemoveValue(level.var_641fcd9c, self);
	n_timer = randomIntRange(8, 15);
	level util::waittill_notify_or_timeout("spawn_friendly_robot", n_timer);
	var_63cc825f = 0;
	while(var_63cc825f == 0)
	{
		if(!level flag::get("back_door_opened"))
		{
			var_96336215 = GetEntArray("friendly_robot_reinforcement", "targetname");
			var_d5b88441 = [];
			foreach(spawner in var_96336215)
			{
				if(level.var_996e05eb === spawner.script_noteworthy)
				{
					Array::add(var_d5b88441, spawner, 0);
				}
			}
			if(var_d5b88441.size)
			{
				var_6bafcc3 = ArrayGetClosest(level.players[0].origin, var_d5b88441);
			}
			else
			{
				var_6bafcc3 = ArrayGetClosest(level.players[0].origin, var_96336215);
			}
			if(isdefined(var_6bafcc3))
			{
				var_19ec51f9 = spawner::simple_spawn_single(var_6bafcc3);
				if(isdefined(var_19ec51f9) && isalive(var_19ec51f9))
				{
					level function_66e5311c(var_19ec51f9);
					var_19ec51f9.health = Int(var_19ec51f9.health * 0.75);
					var_19ec51f9.var_7884b12d = var_19ec51f9.health;
					var_19ec51f9.start_health = var_19ec51f9.health;
					var_63cc825f = 1;
				}
				else
				{
					wait(3);
				}
			}
		}
		else
		{
			break;
		}
	}
}

/*
	Name: function_ba02c8e3
	Namespace: namespace_36171bd3
	Checksum: 0x98C52F6A
	Offset: 0x6300
	Size: 0x7B
	Parameters: 1
	Flags: None
*/
function function_ba02c8e3(player)
{
	self waittill("death");
	ArrayRemoveValue(player.a_robots, self);
	ArrayRemoveValue(level.var_641fcd9c, self);
	if(player.a_robots.size <= 0)
	{
		player notify("hash_3484dc92");
	}
}

/*
	Name: function_fe46cd6
	Namespace: namespace_36171bd3
	Checksum: 0x261CA854
	Offset: 0x6388
	Size: 0x13F
	Parameters: 4
	Flags: None
*/
function function_fe46cd6(str_obj_type, var_95acca4a, v_pos, v_offset)
{
	if(!isdefined(v_offset))
	{
		v_offset = (0, 0, 0);
	}
	switch(str_obj_type)
	{
		case "target":
		{
			str_shader = "waypoint_targetneutral";
			break;
		}
		case "task":
		{
			str_shader = "waypoint_captureneutral";
			break;
		}
		case "goto":
		{
			str_shader = "waypoint_circle_arrow_green";
			break;
		}
		case default:
		{
			/#
				ASSERTMSG("Dev Block strings are not supported" + str_obj_type + "Dev Block strings are not supported");
			#/
			break;
		}
	}
	nextObjPoint = objPoints::create(var_95acca4a, v_pos + v_offset, "all", str_shader, 0.75, 0.25);
	nextObjPoint setWaypoint(0, str_shader);
	return nextObjPoint;
}

/*
	Name: function_ac28ba8e
	Namespace: namespace_36171bd3
	Checksum: 0xFEB75AF
	Offset: 0x64D0
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_ac28ba8e()
{
	objPoints::delete(self);
}

/*
	Name: function_f0bf9ac3
	Namespace: namespace_36171bd3
	Checksum: 0x3567D891
	Offset: 0x64F8
	Size: 0x119
	Parameters: 12
	Flags: None
*/
function function_f0bf9ac3(eInflictor, eAttacker, iDamage, iDFlags, sMeansOfDeath, weapon, vPoint, vDir, sHitLoc, modelIndex, psOffsetTime, bonename)
{
	if(isdefined(eAttacker) && isPlayer(eAttacker))
	{
		if(sMeansOfDeath == "MOD_GRENADE" || sMeansOfDeath == "MOD_GRENADE_SPLASH" || sMeansOfDeath == "MOD_EXPLOSIVE" || sMeansOfDeath == "MOD_EXPLOSIVE_SPLASH" || sMeansOfDeath == "MOD_PROJECTILE" || sMeansOfDeath == "MOD_PROJECTILE_SPLASH")
		{
			return Int(iDamage);
		}
		else
		{
			iDamage = 0;
		}
	}
	return Int(iDamage);
}

/*
	Name: groundpos_ignore_water
	Namespace: namespace_36171bd3
	Checksum: 0x9830BDC
	Offset: 0x6620
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function groundpos_ignore_water(origin)
{
	return GroundTrace(origin, origin + VectorScale((0, 0, -1), 100000), 0, undefined, 1)["position"];
}

/*
	Name: function_a2bb4ee8
	Namespace: namespace_36171bd3
	Checksum: 0xCCF1796B
	Offset: 0x6670
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_a2bb4ee8()
{
	return "keyline_outline_p" + self GetEntityNumber();
}

/*
	Name: function_4b7cb57c
	Namespace: namespace_36171bd3
	Checksum: 0xD6CF72E3
	Offset: 0x6698
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_4b7cb57c()
{
	return "squad_indicator_p" + self GetEntityNumber();
}

/*
	Name: function_6142019a
	Namespace: namespace_36171bd3
	Checksum: 0xC6CB332B
	Offset: 0x66C0
	Size: 0x5B
	Parameters: 2
	Flags: None
*/
function function_6142019a(e_player, var_7071a6ab)
{
	self endon("death");
	str_field = e_player function_4b7cb57c();
	self clientfield::set(str_field, var_7071a6ab);
}

/*
	Name: function_e228c18a
	Namespace: namespace_36171bd3
	Checksum: 0x526D1505
	Offset: 0x6728
	Size: 0x18B
	Parameters: 3
	Flags: None
*/
function function_e228c18a(var_5c592caf, e_player, var_199c44c9)
{
	self endon("death");
	if(!isdefined(self.var_c3f3d0ef))
	{
		self.var_c3f3d0ef = [];
	}
	a_players = GetPlayers();
	if(isdefined(e_player))
	{
		a_players = Array(e_player);
		e_player endon("disconnect");
	}
	foreach(player in a_players)
	{
		str_field = player function_a2bb4ee8();
		self clientfield::set(str_field, var_5c592caf);
		Array::add(self.var_c3f3d0ef, e_player, 0);
	}
	self SetForceNoCull();
	self thread function_cccc1954();
}

/*
	Name: function_cccc1954
	Namespace: namespace_36171bd3
	Checksum: 0xBD7A02B1
	Offset: 0x68C0
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_cccc1954()
{
	self notify("hash_cccc1954");
	self endon("hash_cccc1954");
	self waittill("death");
	if(isdefined(self))
	{
		self thread function_14ec2d71();
	}
}

/*
	Name: function_14ec2d71
	Namespace: namespace_36171bd3
	Checksum: 0xD7D206AF
	Offset: 0x6918
	Size: 0x163
	Parameters: 1
	Flags: None
*/
function function_14ec2d71(e_player)
{
	a_players = GetPlayers();
	if(isdefined(e_player))
	{
		a_players = Array(e_player);
	}
	if(!isdefined(self.var_c3f3d0ef))
	{
		self.var_c3f3d0ef = [];
	}
	foreach(player in a_players)
	{
		str_field = player function_a2bb4ee8();
		self clientfield::set(str_field, 0);
		ArrayRemoveValue(self.var_c3f3d0ef, player, 0);
	}
	if(isdefined(self.var_c3f3d0ef) && self.var_c3f3d0ef.size == 0)
	{
		self RemoveForceNoCull();
	}
}

