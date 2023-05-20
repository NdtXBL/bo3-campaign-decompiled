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
	Name: function_2dc19561
	Namespace: namespace_36171bd3
	Checksum: 0xDBCE5098
	Offset: 0xAD8
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("squad_control", &function_8c87d8eb, undefined, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_36171bd3
	Checksum: 0x935B7C6A
	Offset: 0xB18
	Size: 0x19B
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	for(var_c957f6b6 = 0; var_c957f6b6 < 4; var_c957f6b6++)
	{
		var_b9f5e594 = "keyline_outline_p" + var_c957f6b6;
		namespace_71e9cb84::function_50f16166("actor", var_b9f5e594, 1, 2, "int");
		namespace_71e9cb84::function_50f16166("vehicle", var_b9f5e594, 1, 2, "int");
		namespace_71e9cb84::function_50f16166("scriptmover", var_b9f5e594, 1, 3, "int");
	}
	for(var_c957f6b6 = 0; var_c957f6b6 < 4; var_c957f6b6++)
	{
		var_b9f5e594 = "squad_indicator_p" + var_c957f6b6;
		namespace_71e9cb84::function_50f16166("actor", var_b9f5e594, 1, 1, "int");
	}
	namespace_71e9cb84::function_50f16166("actor", "robot_camo_shader", 1, 3, "int");
	level.var_641fcd9c = [];
	level.var_a6fbf51b = 0;
	namespace_dabbe128::function_95670def(&function_7d27aacb);
}

/*
	Name: function_7d27aacb
	Namespace: namespace_36171bd3
	Checksum: 0x8AB08B17
	Offset: 0xCC0
	Size: 0xC9
	Parameters: 0
	Flags: None
*/
function function_7d27aacb()
{
	self function_bf7e3cbb();
	if(isdefined(self.var_6884cce4))
	{
		self.var_6884cce4 function_ac28ba8e();
	}
	if(isdefined(self.var_61a19dc6))
	{
		for(var_c957f6b6 = 0; var_c957f6b6 < self.var_61a19dc6.size; var_c957f6b6++)
		{
			self.var_61a19dc6[var_c957f6b6] namespace_82b91a51::function_4b741fdc();
			self.var_61a19dc6[var_c957f6b6] function_2992720d();
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
	self.var_d3f6be49 = [];
	self.var_38f7500 = [];
	level.var_a6fbf51b = var_a6fbf51b;
	self thread function_9df45aa();
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
		if(function_5b49d38c(var_f6c5842))
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
	self endon("hash_128f8789");
	self waittill("hash_f4ef75a1");
	wait(0.5);
	foreach(var_f6c5842 in self.var_61a19dc6)
	{
		if(isdefined(var_f6c5842))
		{
			var_f6c5842 thread function_14ec2d71();
			var_f6c5842 thread function_6142019a(self, 0);
		}
	}
	self.var_61a19dc6 = [];
	var_1534914d = function_b8494651("axis");
	foreach(var_377a9c22 in var_1534914d)
	{
		if(isdefined(var_377a9c22.var_6884cce4))
		{
			var_377a9c22.var_6884cce4 function_ac28ba8e();
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
	self endon("hash_128f8789");
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
function function_bd439085(var_5dc5e20a)
{
	self endon("hash_128f8789");
	var_5dc5e20a endon("hash_128f8789");
	var_5dc5e20a endon("hash_f4ef75a1");
	wait(function_72a94f05(1, 3));
	var_66eaa556 = var_5dc5e20a function_16ecda76(self);
	self.var_40148675 = var_5dc5e20a function_16ecda76(self);
	self namespace_d84e54db::function_ceb883cd("escort_position", self.var_40148675);
	while(1)
	{
		if(self namespace_d84e54db::function_a0a4c1f1("move_mode") === "escort" && self.var_24cf4025)
		{
			self.var_40148675 = var_5dc5e20a function_16ecda76(self);
			var_860823ab = function_cb3d1c9b(self.var_40148675, var_66eaa556);
			if(var_860823ab > 2500)
			{
				var_66eaa556 = self.var_40148675;
				self function_e11ce512();
				self namespace_d84e54db::function_ceb883cd("escort_position", self.var_40148675);
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
function function_2d3a8177(var_5dc5e20a)
{
	self endon("hash_128f8789");
	var_5dc5e20a endon("hash_f4ef75a1");
	while(1)
	{
		wait(5);
		if(self namespace_d84e54db::function_a0a4c1f1("move_mode") === "escort" && self.var_24cf4025)
		{
			var_c55dcd82 = function_eed6dab7(var_5dc5e20a.var_722885f3, 120, 32);
			if(isdefined(var_c55dcd82))
			{
				self function_169cc712(var_c55dcd82);
			}
			else
			{
				self function_169cc712(var_5dc5e20a.var_722885f3);
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
function function_16ecda76(var_6104a93b)
{
	var_98c6afec = namespace_82b91a51::function_ee78923e(self.var_722885f3, 64, 200, 16, 16, 32);
	if(var_98c6afec.size)
	{
		return var_98c6afec[0];
	}
	else
	{
		return self.var_722885f3;
	}
}

/*
	Name: function_9df45aa
	Namespace: namespace_36171bd3
	Checksum: 0x30E88B51
	Offset: 0x1458
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_9df45aa()
{
	var_cbb15570 = self.var_b3d32c97;
	for(var_c957f6b6 = 0; var_c957f6b6 < self.var_61a19dc6.size; var_c957f6b6++)
	{
		level function_66e5311c(self.var_61a19dc6[var_c957f6b6], self);
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
function function_66e5311c(var_f6c5842, var_5dc5e20a)
{
	var_f6c5842.var_9c0d91a = 0;
	var_f6c5842.var_24cf4025 = 1;
	var_f6c5842.var_99ebba13 = 0;
	var_f6c5842.var_b60a0e4b = "Standard";
	var_f6c5842.var_6648858 = 0;
	var_f6c5842.var_7dfaf62 = 200;
	var_f6c5842.var_2a48f7ab = 1;
	var_f6c5842.var_fcf1d4cd = 600;
	var_f6c5842 namespace_d84e54db::function_ceb883cd("supports_super_sprint", 1);
	if(function_4bd0142f("tu1_biodomesSquadControlRobotMelee", 1))
	{
		var_f6c5842 namespace_d84e54db::function_ceb883cd("can_be_meleed", 1);
	}
	else
	{
		var_f6c5842 namespace_d84e54db::function_ceb883cd("can_be_meleed", 0);
	}
	if(level.var_a6fbf51b && function_65f192a6(var_5dc5e20a))
	{
		var_f6c5842 thread function_ba02c8e3(var_5dc5e20a);
		var_f6c5842 thread function_bd439085(var_5dc5e20a);
		var_f6c5842 thread function_2d3a8177(var_5dc5e20a);
		var_f6c5842 function_6142019a(var_5dc5e20a, 1);
		var_f6c5842 namespace_d84e54db::function_ceb883cd("move_mode", "escort");
		var_5dc5e20a.var_e6b3078d = var_5dc5e20a function_c7f3ce11();
	}
	else
	{
		var_f6c5842 thread function_e21506ba();
		if(level namespace_ad23e503::function_7922262b("warehouse_warlord_friendly_goal"))
		{
			var_ab891f49 = function_6ada35ba("warehouse_warlord_friendly_volume", "targetname");
			var_f6c5842 function_169cc712(var_ab891f49, 1);
		}
		else
		{
			var_f6c5842 namespace_d84e54db::function_ceb883cd("move_mode", "normal");
			var_f6c5842 namespace_6f7b2095::function_1b497663("c");
		}
		var_f6c5842 function_eb13b9c0();
	}
	namespace_84970cc4::function_69554b3e(level.var_641fcd9c, var_f6c5842, 0);
	if(level.var_b06e31c0)
	{
		var_f6c5842.var_44a68a57 = &function_f0bf9ac3;
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
	self namespace_71e9cb84::function_74d6b22f("cybercom_setiffname", 2);
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
function function_5a0dc838(var_5dc5e20a)
{
	self endon("hash_128f8789");
	var_5dc5e20a endon("hash_f4ef75a1");
	self endon("hash_f383a3b8");
	if(level.var_a6fbf51b)
	{
		return;
	}
	while(1)
	{
		wait(function_dc99997a(6, 12));
		var_10fcb680 = function_72a94f05(0, 1);
		if(var_10fcb680 >= 0.5 && !self.var_6648858 && self.var_24cf4025)
		{
			self thread function_ee0e002(1, var_5dc5e20a);
			self namespace_d84e54db::function_ceb883cd("move_mode", "rusher");
			self.var_5ed2f6d3 = 1;
			wait(10);
			self namespace_d84e54db::function_ceb883cd("move_mode", "escort");
			self thread function_ee0e002(0, var_5dc5e20a);
			self.var_5ed2f6d3 = 0;
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
	self endon("hash_128f8789");
	self namespace_71e9cb84::function_74d6b22f("robot_camo_shader", 1);
	self function_921a1574("gdt_camo_suit_on");
	self.var_255b9315 = 1;
	self.var_6648858 = 1;
	wait(function_dc99997a(3, 6));
	self namespace_71e9cb84::function_74d6b22f("robot_camo_shader", 0);
	self function_921a1574("gdt_camo_suit_off");
	self.var_255b9315 = 0;
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
	self.var_e6b3078d = self function_c7f3ce11();
	var_cbb15570 = self.var_b3d32c97;
	if(self.var_e6b3078d == 0)
	{
		namespace_d0ef8521::function_74d6b22f("robot_name_1", self.var_61a19dc6[0]);
		namespace_d0ef8521::function_3703618d("robot_name_1", "robot1", var_cbb15570 + "-" + 0);
		self.var_61a19dc6[0] thread function_b5d8eeb6("robot_name_1", self);
		self.var_61a19dc6[0] thread function_acd9c248("robot_name_1", self);
		if(self.var_61a19dc6.size > 1)
		{
			namespace_d0ef8521::function_74d6b22f("robot_name_2", self.var_61a19dc6[1]);
			namespace_d0ef8521::function_3703618d("robot_name_2", "robot2", var_cbb15570 + "-" + 1);
			self.var_61a19dc6[1] thread function_b5d8eeb6("robot_name_2", self);
			self.var_61a19dc6[1] thread function_acd9c248("robot_name_2", self);
		}
		if(self.var_61a19dc6.size > 2)
		{
			namespace_d0ef8521::function_74d6b22f("robot_name_3", self.var_61a19dc6[2]);
			namespace_d0ef8521::function_3703618d("robot_name_3", "robot3", var_cbb15570 + "-" + 2);
			self.var_61a19dc6[2] thread function_b5d8eeb6("robot_name_3", self);
			self.var_61a19dc6[2] thread function_acd9c248("robot_name_3", self);
		}
		if(self.var_61a19dc6.size > 3)
		{
			namespace_d0ef8521::function_74d6b22f("robot_name_4", self.var_61a19dc6[3]);
			namespace_d0ef8521::function_3703618d("robot_name_4", "robot4", var_cbb15570 + "-" + 3);
			self.var_61a19dc6[3] thread function_b5d8eeb6("robot_name_4", self);
			self.var_61a19dc6[3] thread function_acd9c248("robot_name_4", self);
		}
	}
	else if(self.var_e6b3078d == 1)
	{
		namespace_d0ef8521::function_74d6b22f("robot_name_5", self.var_61a19dc6[0]);
		namespace_d0ef8521::function_3703618d("robot_name_5", "robot5", var_cbb15570 + "-" + 0);
		self.var_61a19dc6[0] thread function_b5d8eeb6("robot_name_5", self);
		self.var_61a19dc6[0] thread function_acd9c248("robot_name_5", self);
		namespace_d0ef8521::function_74d6b22f("robot_name_6", self.var_61a19dc6[1]);
		namespace_d0ef8521::function_3703618d("robot_name_6", "robot6", var_cbb15570 + "-" + 1);
		self.var_61a19dc6[1] thread function_b5d8eeb6("robot_name_6", self);
		self.var_61a19dc6[1] thread function_acd9c248("robot_name_6", self);
		if(self.var_61a19dc6.size > 2)
		{
			namespace_d0ef8521::function_74d6b22f("robot_name_7", self.var_61a19dc6[2]);
			namespace_d0ef8521::function_3703618d("robot_name_7", "robot7", var_cbb15570 + "-" + 2);
			self.var_61a19dc6[2] thread function_b5d8eeb6("robot_name_7", self);
			self.var_61a19dc6[2] thread function_acd9c248("robot_name_7", self);
		}
	}
	else if(self.var_e6b3078d == 2)
	{
		namespace_d0ef8521::function_74d6b22f("robot_name_8", self.var_61a19dc6[0]);
		namespace_d0ef8521::function_3703618d("robot_name_8", "robot8", var_cbb15570 + "-" + 0);
		self.var_61a19dc6[0] thread function_b5d8eeb6("robot_name_8", self);
		self.var_61a19dc6[0] thread function_acd9c248("robot_name_8", self);
		namespace_d0ef8521::function_74d6b22f("robot_name_9", self.var_61a19dc6[1]);
		namespace_d0ef8521::function_3703618d("robot_name_9", "robot9", var_cbb15570 + "-" + 1);
		self.var_61a19dc6[1] thread function_b5d8eeb6("robot_name_9", self);
		self.var_61a19dc6[1] thread function_acd9c248("robot_name_9", self);
	}
	else
	{
		namespace_d0ef8521::function_74d6b22f("robot_name_10", self.var_61a19dc6[0]);
		namespace_d0ef8521::function_3703618d("robot_name_10", "robot10", var_cbb15570 + "-" + 0);
		self.var_61a19dc6[0] thread function_b5d8eeb6("robot_name_10", self);
		self.var_61a19dc6[0] thread function_acd9c248("robot_name_10", self);
		namespace_d0ef8521::function_74d6b22f("robot_name_11", self.var_61a19dc6[1]);
		namespace_d0ef8521::function_3703618d("robot_name_11", "robot11", var_cbb15570 + "-" + 1);
		self.var_61a19dc6[1] thread function_b5d8eeb6("robot_name_11", self);
		self.var_61a19dc6[1] thread function_acd9c248("robot_name_11", self);
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
function function_acd9c248(var_376507c0, var_6bfe1586)
{
	self endon("hash_128f8789");
	var_6bfe1586 waittill("hash_f4ef75a1");
	namespace_d0ef8521::function_31cd1834(var_376507c0, self);
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
function function_b5d8eeb6(var_376507c0, var_6bfe1586)
{
	var_6bfe1586 endon("hash_f4ef75a1");
	self waittill("hash_128f8789");
	namespace_d0ef8521::function_31cd1834(var_376507c0, self);
	self function_6142019a(var_6bfe1586, 0);
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
	self endon("hash_643a7daf");
	self endon("hash_f4ef75a1");
	while(1)
	{
		if(!self namespace_564407fb::function_38a9aff8())
		{
			var_1534914d = function_b8494651("axis");
			for(var_c957f6b6 = 0; var_c957f6b6 < var_1534914d.size; var_c957f6b6++)
			{
				var_ccd4343c = function_316422d1(self.var_722885f3, var_1534914d[var_c957f6b6].var_722885f3);
				if(self namespace_82b91a51::function_d61b846f(var_1534914d[var_c957f6b6].var_722885f3, 0.95, 0, self) && self function_87e955a4(var_1534914d[var_c957f6b6] function_501eb072(), var_1534914d[var_c957f6b6]) && function_5b49d38c(var_1534914d[var_c957f6b6]) && var_ccd4343c < 5760000)
				{
					if(isdefined(var_1534914d[var_c957f6b6].var_2ddc2ef9) && !var_1534914d[var_c957f6b6].var_2ddc2ef9 && isdefined(var_1534914d[var_c957f6b6].var_38c1e4c8) && !var_1534914d[var_c957f6b6].var_38c1e4c8)
					{
						var_1534914d[var_c957f6b6] thread function_e228c18a(1, self);
						var_1534914d[var_c957f6b6].var_2ddc2ef9 = 1;
					}
					continue;
				}
				if(function_5b49d38c(var_1534914d[var_c957f6b6]) && isdefined(var_1534914d[var_c957f6b6].var_38c1e4c8) && !var_1534914d[var_c957f6b6].var_38c1e4c8)
				{
					var_1534914d[var_c957f6b6] thread function_14ec2d71(self);
					var_1534914d[var_c957f6b6].var_2ddc2ef9 = 0;
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
	self endon("hash_128f8789");
	self endon("hash_f4ef75a1");
	if(!isdefined(self.var_7ac3be1c))
	{
		self.var_7ac3be1c = 0;
	}
	if(!self.var_7ac3be1c && isdefined(self.var_b1a0e508))
	{
		self.var_7ac3be1c = 1;
		self namespace_ce7c3ed5::function_5f70476c(self.var_b1a0e508, "Scanline");
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
	self endon("hash_643a7daf");
	self endon("hash_f4ef75a1");
	var_b0f96d4f = 1600;
	var_3e671a1 = 10;
	while(1)
	{
		if(!self namespace_564407fb::function_38a9aff8())
		{
			if(self function_8ba29281())
			{
				var_c4fe4fc7 = function_bc7ce905(self function_89c87c9c());
				var_a0d5568b = self function_501eb072();
				var_e1ba3e74 = var_a0d5568b + var_c4fe4fc7 * var_b0f96d4f;
				var_84323b2d = function_e1dc201c(var_a0d5568b, var_e1ba3e74, 0, self)["position"];
				var_c55dcd82 = function_c66bcbfb(var_84323b2d) + VectorScale((0, 0, 1), 5);
				var_8e4b278 = function_eed6dab7(var_c55dcd82, 100, 32);
				var_3bad6c78 = 0;
				while(self function_8ba29281())
				{
					var_3bad6c78++;
					if(var_3bad6c78 > 2)
					{
						/#
							level namespace_82b91a51::function_a9c39c8b(self.var_722885f3 + VectorScale((0, 0, 1), 32), var_c55dcd82, (0, 0.25, 1), 0.25, undefined, 1);
							var_c4fe4fc7 = function_bc7ce905(self function_89c87c9c());
							var_a0d5568b = self function_501eb072();
							var_e1ba3e74 = var_a0d5568b + var_c4fe4fc7 * var_b0f96d4f;
							var_84323b2d = function_e1dc201c(var_a0d5568b, var_e1ba3e74, 0, self)["Dev Block strings are not supported"];
							var_c55dcd82 = function_c66bcbfb(var_84323b2d) + VectorScale((0, 0, 1), 5);
							var_8e4b278 = function_eed6dab7(var_c55dcd82, 100, 32);
						#/
					}
					if(var_3bad6c78 >= var_3e671a1)
					{
						var_3bad6c78 = var_3e671a1;
					}
					wait(0.05);
				}
				self thread namespace_27a45d31::function_7aa89143();
				if(var_3bad6c78 >= var_3e671a1)
				{
					self function_5ab070f9(var_8e4b278);
					self function_b8862210("evt_robocommand_assign_task", self);
					continue;
				}
				self function_b8862210("evt_robocommand_assign_task", self);
				self function_cbb9d101();
				self function_c90831e1();
				self function_99f62595(var_8e4b278);
				while(self function_8ba29281())
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
		var_72237359 = namespace_82b91a51::function_ee78923e(var_8e4b278, 16, 240, 70, 64, 40);
		if(isdefined(var_72237359) && var_72237359.size >= self.var_61a19dc6.size)
		{
			if(isdefined(self.var_6884cce4))
			{
				self.var_6884cce4 function_ac28ba8e();
			}
			foreach(var_cd69a81f in self.var_61a19dc6)
			{
				var_cd69a81f function_6142019a(self, 0);
			}
			self.var_61a19dc6 = function_57efbe1(self.var_61a19dc6, self.var_722885f3);
			var_2ceb0dbc = [];
			for(var_c957f6b6 = 0; var_c957f6b6 < self.var_61a19dc6.size; var_c957f6b6++)
			{
				if(self.var_61a19dc6[var_c957f6b6].var_24cf4025)
				{
					var_ea15b761 = "remove_waypoint_p" + self function_c7f3ce11() + "_robot" + var_c957f6b6;
					var_2ceb0dbc[var_c957f6b6] = level namespace_5753664b::function_43718187("squad_waypoint_base", var_72237359[var_c957f6b6] + VectorScale((0, 0, 1), 4), VectorScale((-1, 0, 0), 90), var_ea15b761, 0, undefined, 1);
					var_2ceb0dbc[var_c957f6b6] function_8c1f7070();
					var_2ceb0dbc[var_c957f6b6] function_858ac43f(self);
					self.var_61a19dc6[var_c957f6b6] notify("hash_9f0b9b03");
					self.var_61a19dc6[var_c957f6b6].var_9c0d91a = 1;
					self.var_61a19dc6[var_c957f6b6].var_b60a0e4b = "Moving";
					self.var_61a19dc6[var_c957f6b6] notify("hash_975a394f");
					self.var_61a19dc6[var_c957f6b6] namespace_6f7b2095::function_54bdb053();
					self.var_61a19dc6[var_c957f6b6] function_dec5be9a();
					self.var_61a19dc6[var_c957f6b6] namespace_d84e54db::function_ceb883cd("move_mode", "normal");
					self.var_61a19dc6[var_c957f6b6] function_169cc712(var_72237359[var_c957f6b6], 1);
					self.var_61a19dc6[var_c957f6b6] thread function_1214aaea();
					self thread function_68efcbc3(self.var_61a19dc6[var_c957f6b6], var_ea15b761);
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
	var_71d7943b = self function_c7f3ce11();
	if(isdefined(self.var_61a19dc6))
	{
		for(var_c957f6b6 = 0; var_c957f6b6 < self.var_61a19dc6.size; var_c957f6b6++)
		{
			var_ea15b761 = "remove_waypoint_p" + var_71d7943b + "_robot" + var_c957f6b6;
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
		for(var_c957f6b6 = 0; var_c957f6b6 < self.var_38f7500.size; var_c957f6b6++)
		{
			if(isdefined(self.var_38f7500[var_c957f6b6]) && isdefined(self.var_38f7500[var_c957f6b6].var_6884cce4))
			{
				self.var_38f7500[var_c957f6b6] notify("hash_3fc1574");
				self.var_38f7500[var_c957f6b6].var_6884cce4 function_ac28ba8e();
			}
		}
		self.var_3a11451c = 0;
	}
	if(self.var_d3f6be49.size)
	{
		foreach(var_f6c5842 in self.var_61a19dc6)
		{
			if(var_f6c5842.var_99ebba13)
			{
				var_f6c5842 notify("hash_606e31a3");
				var_f6c5842.var_b60a0e4b = "Standard";
				var_f6c5842 notify("hash_975a394f");
				var_f6c5842.var_99ebba13 = 0;
				var_f6c5842 function_dec5be9a();
			}
		}
		for(var_c957f6b6 = 0; var_c957f6b6 < self.var_d3f6be49.size; var_c957f6b6++)
		{
			if(function_5b49d38c(self.var_d3f6be49[var_c957f6b6]))
			{
				self.var_d3f6be49[var_c957f6b6].var_38c1e4c8 = 0;
				self.var_d3f6be49[var_c957f6b6] function_14ec2d71(self);
			}
		}
		self.var_d3f6be49 = [];
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
	for(var_c957f6b6 = 0; var_c957f6b6 < self.var_38f7500.size; var_c957f6b6++)
	{
		if(isdefined(self.var_38f7500[var_c957f6b6]))
		{
			var_ccd4343c = function_316422d1(self.var_722885f3, self.var_38f7500[var_c957f6b6].var_722885f3);
			if(!self.var_38f7500[var_c957f6b6].var_9145aecb && var_ccd4343c < 5760000)
			{
				if(self namespace_82b91a51::function_d61b846f(self.var_38f7500[var_c957f6b6].var_722885f3, 0.9, 0, self))
				{
					if(self.var_61a19dc6.size >= self.var_38f7500[var_c957f6b6].var_9c452877)
					{
						self.var_38f7500[var_c957f6b6].var_9145aecb = 1;
						self.var_3a11451c = 1;
						var_64e85e6d = [];
						if(self.var_38f7500[var_c957f6b6].var_caae374e == "turret_hall")
						{
							var_64e85e6d = function_41f575c3(level.var_641fcd9c);
						}
						else
						{
							var_e4660bfb = function_41f575c3(level.var_641fcd9c);
							while(1)
							{
								var_66cec90b = function_e7bdc1a1(self.var_38f7500[var_c957f6b6].var_722885f3, var_e4660bfb);
								function_81403b2f(var_e4660bfb, var_66cec90b);
								if(var_66cec90b.var_24cf4025)
								{
									var_66cec90b.var_24cf4025 = 0;
									namespace_84970cc4::function_69554b3e(var_64e85e6d, var_66cec90b);
									if(var_64e85e6d.size > 1)
									{
										break;
									}
								}
								if(!var_e4660bfb.size)
								{
									function_2e4b8c78("NOT ENOUGH ROBOTS");
									self.var_38f7500[var_c957f6b6].var_9145aecb = 0;
									self.var_3a11451c = 0;
									var_64e85e6d = [];
									break;
								}
								wait(0.05);
							}
							var_e4660bfb = [];
						}
						if(var_64e85e6d.size)
						{
							self thread function_eaccc8a9(var_64e85e6d, self.var_38f7500[var_c957f6b6]);
						}
						break;
						continue;
					}
					function_2e4b8c78(self.var_b3d32c97 + " DOES NOT HAVE ENOUGH ROBOTS");
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
	var_526a0aed = function_6ada35ba(var_e6c12a6e, "script_noteworthy");
	var_526a0aed endon("hash_128f8789");
	wait(var_4639e1cf);
	for(var_c957f6b6 = 0; var_c957f6b6 < level.var_38f7500.size; var_c957f6b6++)
	{
		if(level.var_38f7500[var_c957f6b6] === var_526a0aed && !level.var_38f7500[var_c957f6b6].var_9145aecb)
		{
			while(level.var_641fcd9c.size < level.var_38f7500[var_c957f6b6].var_9c452877)
			{
				level notify("hash_725ff4d9");
				wait(0.05);
			}
			if(level.var_641fcd9c.size >= level.var_38f7500[var_c957f6b6].var_9c452877)
			{
				level.var_38f7500[var_c957f6b6].var_9145aecb = 1;
				var_64e85e6d = [];
				var_e4660bfb = function_41f575c3(level.var_641fcd9c);
				while(1)
				{
					var_66cec90b = function_e7bdc1a1(level.var_38f7500[var_c957f6b6].var_722885f3, var_e4660bfb);
					function_81403b2f(var_e4660bfb, var_66cec90b);
					if(function_5b49d38c(var_66cec90b) && var_66cec90b.var_24cf4025 && !var_66cec90b.var_fb4b537b)
					{
						var_66cec90b.var_24cf4025 = 0;
						var_66cec90b namespace_82b91a51::function_958c7633();
						namespace_84970cc4::function_69554b3e(var_64e85e6d, var_66cec90b);
						if(var_64e85e6d.size > 1)
						{
							break;
						}
					}
					if(!var_e4660bfb.size)
					{
						level.var_38f7500[var_c957f6b6].var_9145aecb = 0;
						var_64e85e6d = [];
						break;
					}
					wait(0.05);
				}
				var_e4660bfb = [];
				if(var_64e85e6d.size)
				{
					level thread function_eaccc8a9(var_64e85e6d, level.var_38f7500[var_c957f6b6]);
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
	var_1534914d = function_b8494651("axis");
	if(!self.var_3a11451c)
	{
		for(var_c957f6b6 = 0; var_c957f6b6 < var_1534914d.size; var_c957f6b6++)
		{
			var_ccd4343c = function_316422d1(self.var_722885f3, var_1534914d[var_c957f6b6].var_722885f3);
			if(self namespace_82b91a51::function_d61b846f(var_1534914d[var_c957f6b6].var_722885f3, 0.95, 0, self) && self function_87e955a4(var_1534914d[var_c957f6b6] function_501eb072(), var_1534914d[var_c957f6b6]) && function_5b49d38c(var_1534914d[var_c957f6b6]) && var_ccd4343c < 5760000)
			{
				if(!isdefined(var_1534914d[var_c957f6b6].var_9145aecb))
				{
					if(!isdefined(self.var_d3f6be49))
					{
						self.var_d3f6be49 = [];
					}
					else if(!function_6e2770d8(self.var_d3f6be49))
					{
						self.var_d3f6be49 = function_84970cc4(self.var_d3f6be49);
					}
					self.var_d3f6be49[self.var_d3f6be49.size] = var_1534914d[var_c957f6b6];
					self thread function_b5bd9226(var_1534914d[var_c957f6b6], "target");
					self thread function_570ccae9(var_1534914d[var_c957f6b6]);
				}
			}
		}
	}
	else if(self.var_d3f6be49.size)
	{
		foreach(var_f6c5842 in self.var_61a19dc6)
		{
			if(function_5b49d38c(var_f6c5842) && var_f6c5842.var_24cf4025)
			{
				self thread function_32091ff6(var_f6c5842);
			}
		}
	}
	else
	{
		self function_5ab070f9(var_8e4b278);
		self function_b8862210("evt_robocommand_assign_task", self);
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
	self endon("hash_128f8789");
	wait(function_72a94f05(0.4, 1.2));
	if(isdefined(self))
	{
		self function_921a1574("evt_robocommand_acknowledge");
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
	self endon("hash_643a7daf");
	self endon("hash_3b704051");
	if(isdefined(self.var_3459b224))
	{
		self function_2b74b70a(self.var_3459b224);
		self.var_3459b224 = undefined;
	}
	self.var_3459b224 = self function_2f6b6a4c("SquadInvalidPosMenu");
	wait(2);
	self function_2b74b70a(self.var_3459b224);
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
	self endon("hash_643a7daf");
	self endon("hash_f4ef75a1");
	while(1)
	{
		var_5f76c18b = 48;
		var_d59f2b65 = 400;
		var_ec020d8 = 48;
		if(isdefined(self.var_995495f2) && self.var_995495f2)
		{
			var_5f76c18b = 24;
			var_d59f2b65 = 82;
			var_ec020d8 = 0;
		}
		var_3aa9c6b0 = function_eed6dab7(self.var_722885f3, 82, 32);
		if(isdefined(var_3aa9c6b0))
		{
			var_72237359 = namespace_82b91a51::function_ee78923e(var_3aa9c6b0, var_5f76c18b, var_d59f2b65, var_ec020d8, 100, 48);
			if(var_72237359.size >= self.var_61a19dc6.size)
			{
				self.var_61a19dc6 = function_57efbe1(self.var_61a19dc6, self.var_722885f3);
				for(var_c957f6b6 = 0; var_c957f6b6 < self.var_61a19dc6.size; var_c957f6b6++)
				{
					if(function_316422d1(self.var_722885f3, self.var_61a19dc6[var_c957f6b6].var_722885f3) > 40000)
					{
						if(!self.var_61a19dc6[var_c957f6b6].var_9c0d91a && !self.var_61a19dc6[var_c957f6b6].var_99ebba13 && self.var_61a19dc6[var_c957f6b6].var_24cf4025)
						{
							self.var_61a19dc6[var_c957f6b6] function_169cc712(var_72237359[var_c957f6b6], 1);
							wait(function_72a94f05(0.1, 0.3));
						}
					}
				}
			}
			else
			{
				var_cfd95255 = [];
				for(var_c957f6b6 = 0; var_c957f6b6 < self.var_61a19dc6.size; var_c957f6b6++)
				{
					if(function_316422d1(self.var_722885f3, self.var_61a19dc6[var_c957f6b6].var_722885f3) > 40000)
					{
						if(!self.var_61a19dc6[var_c957f6b6].var_9c0d91a && !self.var_61a19dc6[var_c957f6b6].var_99ebba13 && self.var_61a19dc6[var_c957f6b6].var_24cf4025)
						{
							var_cfd95255[var_c957f6b6] = function_eed6dab7(self.var_722885f3 + (var_c957f6b6 * 50, var_c957f6b6 * 50, 0), 82, 32);
							if(isdefined(var_cfd95255[var_c957f6b6]))
							{
								self.var_61a19dc6[var_c957f6b6] function_169cc712(var_cfd95255[var_c957f6b6], 1);
								wait(function_72a94f05(0.1, 0.3));
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
	self endon("hash_643a7daf");
	self endon("hash_f4ef75a1");
	while(1)
	{
		self waittill("hash_5cc39b7a");
		for(var_c957f6b6 = 0; var_c957f6b6 < self.var_61a19dc6.size; var_c957f6b6++)
		{
			if(function_5b49d38c(self.var_61a19dc6[var_c957f6b6]))
			{
				self.var_61a19dc6[var_c957f6b6] notify("hash_606e31a3");
				self.var_61a19dc6[var_c957f6b6].var_99ebba13 = 0;
				self.var_61a19dc6[var_c957f6b6].var_9c0d91a = 0;
				self.var_61a19dc6[var_c957f6b6].var_b60a0e4b = "Standard";
				self.var_61a19dc6[var_c957f6b6] notify("hash_975a394f");
			}
		}
		wait(0.5);
		if(self.var_d3f6be49.size)
		{
			foreach(var_377a9c22 in self.var_d3f6be49)
			{
				if(function_5b49d38c(var_377a9c22))
				{
					var_377a9c22 thread function_14ec2d71(self);
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
	self endon("hash_128f8789");
	self endon("hash_9f0b9b03");
	var_946e0cd4 = self namespace_82b91a51::function_9fcf3cd8(20, "goal");
	if(var_946e0cd4 == "goal")
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
	self endon("hash_643a7daf");
	self endon("hash_f4ef75a1");
	var_f6c5842 endon("hash_9f0b9b03");
	var_f6c5842 endon("hash_128f8789");
	var_946e0cd4 = var_f6c5842 namespace_82b91a51::function_9fcf3cd8(20, "goal");
	level notify(var_ea15b761);
	var_f6c5842 function_6142019a(self, 1);
	if(var_946e0cd4 == "goal")
	{
		wait(3);
	}
	var_f6c5842 namespace_d84e54db::function_ceb883cd("move_mode", "escort");
	var_f6c5842.var_9c0d91a = 0;
	var_f6c5842.var_b60a0e4b = "Standard";
	var_f6c5842 notify("hash_975a394f");
}

/*
	Name: function_b5bd9226
	Namespace: namespace_36171bd3
	Checksum: 0xAB13F583
	Offset: 0x42F8
	Size: 0x7F
	Parameters: 2
	Flags: None
*/
function function_b5bd9226(var_377a9c22, var_376507c0)
{
	var_377a9c22 endon("hash_128f8789");
	var_377a9c22 endon("hash_3fc1574");
	var_377a9c22 function_14ec2d71(self);
	wait(0.05);
	var_377a9c22 function_e228c18a(2, self);
	var_377a9c22.var_38c1e4c8 = 1;
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
function function_b2e2e2e2(var_377a9c22, var_376507c0)
{
	var_377a9c22.var_6884cce4 = function_fe46cd6(var_376507c0, var_377a9c22 function_c7f3ce11(), var_377a9c22.var_722885f3 + VectorScale((0, 0, 1), 72));
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
function function_570ccae9(var_ea49a5c9)
{
	var_ea49a5c9 waittill("hash_128f8789");
	if(isdefined(var_ea49a5c9) && isdefined(self.var_d3f6be49) && function_7f41c8e7(self.var_d3f6be49, var_ea49a5c9))
	{
		function_81403b2f(self.var_d3f6be49, var_ea49a5c9);
	}
	if(isdefined(var_ea49a5c9))
	{
		var_ea49a5c9 function_14ec2d71();
	}
	if(isdefined(var_ea49a5c9.var_6884cce4))
	{
		var_ea49a5c9.var_6884cce4 function_ac28ba8e();
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
	else if(!function_6e2770d8(self.var_38f7500))
	{
		self.var_38f7500 = function_84970cc4(self.var_38f7500);
	}
	self.var_38f7500[self.var_38f7500.size] = var_da565296;
	switch(var_da565296.var_caae374e)
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
		if(function_5b49d38c(var_f6c5842) && !var_f6c5842.var_fb4b537b)
		{
			if(var_da565296.var_caae374e == "floor_collapse")
			{
				var_f6c5842 namespace_d84e54db::function_ceb883cd("move_mode", "rambo");
			}
			else
			{
				var_f6c5842 namespace_d84e54db::function_ceb883cd("move_mode", "normal");
			}
			var_f6c5842 namespace_82b91a51::function_958c7633();
			var_f6c5842.var_24cf4025 = 0;
			var_f6c5842 namespace_d84e54db::function_3c155012();
			var_f6c5842.var_501514b8 = 1;
			var_f6c5842 notify("hash_606e31a3");
			var_f6c5842 notify("hash_f383a3b8");
			var_f6c5842.var_b60a0e4b = "Interacting";
			var_f6c5842 notify("hash_975a394f");
			continue;
		}
		return;
	}
	switch(var_da565296.var_caae374e)
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
	var_f6c5842 endon("hash_128f8789");
	var_f6c5842 endon("hash_606e31a3");
	self endon("hash_f4ef75a1");
	self endon("hash_643a7daf");
	var_5f76c18b = 60;
	var_d59f2b65 = 200;
	var_f6c5842.var_7dfaf62 = 1024;
	var_f6c5842 namespace_d84e54db::function_ceb883cd("move_mode", "rusher");
	var_f6c5842 thread function_ee0e002(1, self);
	for(var_c957f6b6 = 0; var_c957f6b6 < self.var_d3f6be49.size; var_c957f6b6++)
	{
		self.var_d3f6be49[var_c957f6b6].var_d29e35d1 = 0;
		if(function_5b49d38c(self.var_d3f6be49[var_c957f6b6]))
		{
			if(self.var_d3f6be49[var_c957f6b6].var_312ffe43 === "spawner_enemy_54i_human_warlord_minigun")
			{
				continue;
			}
			var_a690d72c = function_eed6dab7(self.var_d3f6be49[var_c957f6b6].var_722885f3, 64, 16);
			if(isdefined(var_a690d72c))
			{
				var_72237359 = namespace_82b91a51::function_ee78923e(var_a690d72c, var_5f76c18b, var_d59f2b65, 70, 32, var_f6c5842);
				if(var_72237359.size >= self.var_61a19dc6.size)
				{
					var_ce2a583d = function_69c2f683(self.var_722885f3[2] - var_72237359[var_c957f6b6][2]);
					if(var_ce2a583d < 160 && function_cb3d1c9b(self.var_722885f3, var_72237359[var_c957f6b6]) < 1048576)
					{
						var_f6c5842 function_169cc712(var_72237359[var_c957f6b6], 1);
					}
					if(function_8d0347b8(self.var_d3f6be49[var_c957f6b6]))
					{
						var_f6c5842 thread namespace_d84e54db::function_d104c596("kill_within_time", self.var_d3f6be49[var_c957f6b6], undefined, 0.05, 100);
					}
					else
					{
						var_f6c5842 thread namespace_d84e54db::function_d104c596("shoot_until_target_dead", self.var_d3f6be49[var_c957f6b6], undefined, 0.05, 100);
					}
				}
				else
				{
					var_f6c5842 namespace_d84e54db::function_ceb883cd("move_mode", "normal");
					if(function_8d0347b8(self.var_d3f6be49[var_c957f6b6]))
					{
						var_f6c5842 thread namespace_d84e54db::function_d104c596("kill_within_time", self.var_d3f6be49[var_c957f6b6], undefined, 0.05, 100);
					}
					else
					{
						var_f6c5842 thread namespace_d84e54db::function_d104c596("shoot_until_target_dead", self.var_d3f6be49[var_c957f6b6], undefined, 0.05, 100);
					}
				}
			}
			else if(function_8d0347b8(self.var_d3f6be49[var_c957f6b6]))
			{
				var_f6c5842 thread namespace_d84e54db::function_d104c596("kill_within_time", self.var_d3f6be49[var_c957f6b6], undefined, 0.05, 100);
			}
			else
			{
				var_f6c5842 thread namespace_d84e54db::function_d104c596("shoot_until_target_dead", self.var_d3f6be49[var_c957f6b6], undefined, 0.05, 100);
			}
			self.var_d3f6be49[var_c957f6b6].var_d29e35d1 = 1;
			var_f6c5842.var_99ebba13 = 1;
			var_f6c5842.var_b60a0e4b = "Attacking";
			var_f6c5842 notify("hash_975a394f");
			/#
				level namespace_82b91a51::function_a9c39c8b(var_f6c5842.var_722885f3 + VectorScale((0, 0, 1), 64), self.var_d3f6be49[var_c957f6b6].var_722885f3 + VectorScale((0, 0, 1), 64), (1, 0, 0), 0.1, undefined, 3);
			#/
			var_f6c5842 thread function_1214aaea();
		}
	}
	while(self.var_d3f6be49.size)
	{
		wait(0.05);
	}
	var_f6c5842 function_e11ce512();
	var_f6c5842 thread function_ee0e002(0, self);
	var_f6c5842 namespace_d84e54db::function_ceb883cd("move_mode", "escort");
	var_f6c5842.var_99ebba13 = 0;
	var_f6c5842.var_b60a0e4b = "Standard";
	var_f6c5842 notify("hash_975a394f");
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
	if(function_7f41c8e7(self.var_38f7500, var_da565296))
	{
		function_81403b2f(self.var_38f7500, var_da565296);
	}
	level thread function_4b9a48da(var_64e85e6d, "turret1_dead");
	level thread function_2b79dc3e();
	if(isdefined(var_da565296) && !level namespace_ad23e503::function_7922262b("turret1_dead"))
	{
		if(function_5b49d38c(var_da565296))
		{
			if(var_da565296 function_e7353088() === "allies")
			{
				level namespace_ad23e503::function_74d6b22f("turret1_dead");
				return;
			}
			level thread namespace_cc27597::function_c35e6aab("cin_bio_03_02_market_vign_targetkill_robot01", var_64e85e6d[0]);
			level thread namespace_cc27597::function_c35e6aab("cin_bio_03_02_market_vign_targetkill_robot02", var_64e85e6d[1]);
			level namespace_82b91a51::function_6959d3ef(var_64e85e6d[0], "goal", var_64e85e6d[1], "goal");
			level thread namespace_cc27597::function_43718187("scene_turret1", "targetname", var_64e85e6d);
			var_da565296 namespace_82b91a51::function_958c7633();
			level namespace_82b91a51::function_c9aa1ff("floor_fall", 10);
			var_80951788 = function_6ada35ba("vendor_shop_turret_destroyed", "targetname");
			if(isdefined(var_80951788))
			{
				var_80951788 function_dc8c8404();
			}
			level thread namespace_cc27597::function_43718187("p7_fxanim_cp_biodomes_turret_collapse_bundle");
			var_eaa951c2 = function_6ada35ba("turret_collapse", "targetname");
			if(isdefined(var_da565296) && isdefined(var_eaa951c2))
			{
				var_da565296 function_37f7858a(var_eaa951c2, "turret_jnt");
				namespace_5753664b::function_43718187("ceiling_collapse", var_da565296.var_722885f3);
				function_5e09918e("cp_biodomes_markets1_turret_collapse_rumble", var_da565296.var_722885f3);
			}
			level notify("hash_62a94152");
			if(function_5b49d38c(var_da565296))
			{
				var_da565296 namespace_82b91a51::function_4b741fdc();
				var_da565296 function_2992720d();
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
	level namespace_ad23e503::function_1ab5ebec("turret1_dead");
	level namespace_cc27597::function_fcf56ab5("cin_bio_03_02_market_vign_targetkill_robot01");
	level namespace_cc27597::function_fcf56ab5("cin_bio_03_02_market_vign_targetkill_robot02");
	level namespace_cc27597::function_fcf56ab5("scene_turret1", "targetname");
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
function function_ee0e002(var_e33a0786, var_5dc5e20a)
{
	self endon("hash_128f8789");
	return;
	self namespace_71e9cb84::function_74d6b22f("robot_camo_shader", 2);
	wait(1);
	self namespace_71e9cb84::function_74d6b22f("robot_camo_shader", var_e33a0786);
	if(var_e33a0786 == 1)
	{
		self namespace_d84e54db::function_c9e45d52(1);
		self.var_6648858 = 1;
		self thread function_87862943(var_5dc5e20a);
		self function_921a1574("gdt_camo_suit_on");
	}
	else
	{
		self namespace_d84e54db::function_c9e45d52(0);
		self.var_6648858 = 0;
		self notify("hash_8b094b58");
		self function_921a1574("gdt_camo_suit_off");
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
	self endon("hash_128f8789");
	self endon("hash_f4ef75a1");
	if(level.var_a6fbf51b && isdefined(self.var_a8fcd329))
	{
		self function_3a9588ea(self.var_a8fcd329, "squad_camo_amount", var_7cdd1744);
		var_a3b661c9 = &"CP_MI_SING_BIODOMES_ROBOT_CAMO_ENERGY";
		self function_3a9588ea(self.var_a8fcd329, "squad_camo_text", var_a3b661c9);
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
	self endon("hash_128f8789");
	self.var_6c93934a = 500;
	var_c9f0947a = function_b6b79a0(self.var_6c93934a / 500 * 100);
	while(1)
	{
		if(level.var_31aefea8 == "objective_cloudmountain" && level.var_a6fbf51b)
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
			var_c9f0947a = function_b6b79a0(self.var_6c93934a / 500 * 100);
			self thread function_8c6434be(var_c9f0947a);
		}
		for(var_c957f6b6 = 0; var_c957f6b6 < self.var_61a19dc6.size; var_c957f6b6++)
		{
			if(isdefined(self.var_61a19dc6[var_c957f6b6].var_6050ab17))
			{
				var_506b336f = 5;
				break;
				continue;
			}
			var_506b336f = 0.5;
		}
		wait(var_506b336f);
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
function function_87862943(var_5dc5e20a)
{
	self endon("hash_8b094b58");
	self endon("hash_128f8789");
	var_5dc5e20a endon("hash_128f8789");
	if(var_5dc5e20a.var_6c93934a >= 10)
	{
		var_5dc5e20a.var_6c93934a = var_5dc5e20a.var_6c93934a - 10;
		var_c9f0947a = function_b6b79a0(var_5dc5e20a.var_6c93934a / 500 * 100);
		var_5dc5e20a thread function_8c6434be(var_c9f0947a);
		while(var_5dc5e20a.var_6c93934a >= 0)
		{
			wait(3);
			var_5dc5e20a.var_6c93934a = var_5dc5e20a.var_6c93934a - 5;
			if(var_5dc5e20a.var_6c93934a < 0)
			{
				var_5dc5e20a.var_6c93934a = 0;
				self function_ee0e002(0, var_5dc5e20a);
			}
			var_c9f0947a = function_b6b79a0(var_5dc5e20a.var_6c93934a / 500 * 100);
			var_5dc5e20a thread function_8c6434be(var_c9f0947a);
		}
	}
	else
	{
		self thread function_ee0e002(0, var_5dc5e20a);
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
function function_4b9a48da(var_64e85e6d, var_4ac85f5f)
{
	level namespace_ad23e503::function_1ab5ebec(var_4ac85f5f);
	wait(0.5);
	foreach(var_f6c5842 in var_64e85e6d)
	{
		if(function_5b49d38c(var_f6c5842))
		{
			var_f6c5842 thread namespace_82b91a51::function_67520c6a(10, "death", &namespace_82b91a51::function_4b741fdc);
			var_f6c5842.var_7dfaf62 = 1024;
			var_f6c5842.var_501514b8 = 0;
			var_f6c5842 namespace_d84e54db::function_b4f5e3b9(0);
			var_f6c5842 namespace_d84e54db::function_8d86e3af();
			var_f6c5842.var_24cf4025 = 1;
			var_f6c5842.var_b691b9cf = undefined;
			var_f6c5842.var_b60a0e4b = "Standard";
			var_f6c5842 notify("hash_975a394f");
			var_f6c5842 function_e11ce512();
			var_f6c5842 namespace_d84e54db::function_ceb883cd("move_mode", "normal");
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
function function_cd484af8(var_2188bf75, var_d3f6be49, var_aa686173)
{
	self endon("hash_128f8789");
	level endon(var_aa686173);
	var_946e0cd4 = self namespace_82b91a51::function_9fcf3cd8(15, "goal");
	if(var_946e0cd4 != "goal")
	{
		self function_169cc712(self.var_722885f3, 1);
		self waittill("hash_41d1aaf0");
		self function_9869ab67(var_2188bf75);
		self function_169cc712(var_2188bf75, 1);
	}
	if(function_6e2770d8(var_d3f6be49))
	{
		function_57efbe1(var_d3f6be49, self.var_722885f3);
		for(var_c957f6b6 = 0; var_c957f6b6 < var_d3f6be49.size; var_c957f6b6++)
		{
			if(function_5b49d38c(var_d3f6be49[var_c957f6b6]))
			{
				self thread namespace_d84e54db::function_d104c596("normal", var_d3f6be49[var_c957f6b6], undefined, 3);
				wait(3);
				if(function_5b49d38c(var_d3f6be49[var_c957f6b6]))
				{
					var_d3f6be49[var_c957f6b6] function_2992720d();
				}
			}
		}
	}
	else if(function_5b49d38c(var_d3f6be49))
	{
		self thread namespace_d84e54db::function_d104c596("shoot_until_target_dead", var_d3f6be49);
		self waittill("hash_7a868ba5");
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
	if(function_7f41c8e7(self.var_38f7500, var_da565296))
	{
		function_81403b2f(self.var_38f7500, var_da565296);
	}
	level.var_2fd26037 namespace_6f7b2095::function_54bdb053();
	level.var_2fd26037 notify("hash_93bef291");
	level thread function_4b9a48da(var_64e85e6d, "back_door_opened");
	level thread namespace_cc27597::function_c35e6aab("cin_bio_06_01_backdoor_vign_open_hendricks", level.var_2fd26037);
	level thread namespace_cc27597::function_c35e6aab("cin_bio_06_01_backdoor_vign_open_robot01", var_64e85e6d[0]);
	level thread namespace_cc27597::function_c35e6aab("cin_bio_06_01_backdoor_vign_open_robot02", var_64e85e6d[1]);
	var_8060ff07 = function_84970cc4(level.var_2fd26037, var_64e85e6d[0], var_64e85e6d[1]);
	level namespace_82b91a51::function_4573206(15, &namespace_84970cc4::function_1ab5ebec, var_8060ff07, "goal");
	level thread function_69aa351a();
	level namespace_cc27597::function_43718187("scene_warehouse_door", "targetname");
	level namespace_ad23e503::function_74d6b22f("back_door_opened");
	level notify("hash_c4c41a9");
	if(isdefined(var_da565296))
	{
		var_da565296 function_dc8c8404();
	}
	var_64e85e6d = [];
	level namespace_ad23e503::function_1ab5ebec("objective_warehouse_completed");
	level thread namespace_cc27597::function_fcf56ab5("scene_warehouse_door", "targetname");
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
function function_f5b04e6(var_af4078ec)
{
	self endon("hash_128f8789");
	self function_169cc712(var_af4078ec, 1);
	self namespace_82b91a51::function_9fcf3cd8(20, "goal");
	self function_e11ce512();
	self.var_7dfaf62 = 4;
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
	var_b06d4473 = function_6ada35ba("back_door_player_clip", "targetname");
	var_b06d4473 function_dc8c8404();
	var_60f8f46f = function_6ada35ba("back_door_full_clip", "targetname");
	var_60f8f46f function_dc8c8404();
	var_bee08349 = function_6ada35ba("back_door_no_pen_clip", "targetname");
	var_bee08349 function_dc8c8404();
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
function function_32fa03b2(var_506b336f, var_4ac85f5f)
{
	level endon(var_4ac85f5f);
	wait(var_506b336f);
	level namespace_ad23e503::function_74d6b22f(var_4ac85f5f);
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
function function_ccf72d08(var_61a19dc6, var_4ac85f5f)
{
	level endon(var_4ac85f5f);
	namespace_84970cc4::function_1ab5ebec(var_61a19dc6, "goal");
	level namespace_ad23e503::function_74d6b22f(var_4ac85f5f);
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
	self endon("hash_643a7daf");
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
	self waittill("hash_128f8789");
	function_81403b2f(level.var_641fcd9c, self);
	var_3eac426f = function_dc99997a(8, 15);
	level namespace_82b91a51::function_c9aa1ff("spawn_friendly_robot", var_3eac426f);
	var_63cc825f = 0;
	while(var_63cc825f == 0)
	{
		if(!level namespace_ad23e503::function_7922262b("back_door_opened"))
		{
			var_96336215 = function_99201f25("friendly_robot_reinforcement", "targetname");
			var_d5b88441 = [];
			foreach(var_2f06d687 in var_96336215)
			{
				if(level.var_996e05eb === var_2f06d687.var_caae374e)
				{
					namespace_84970cc4::function_69554b3e(var_d5b88441, var_2f06d687, 0);
				}
			}
			if(var_d5b88441.size)
			{
				var_6bafcc3 = function_e7bdc1a1(level.var_2395e945[0].var_722885f3, var_d5b88441);
			}
			else
			{
				var_6bafcc3 = function_e7bdc1a1(level.var_2395e945[0].var_722885f3, var_96336215);
			}
			if(isdefined(var_6bafcc3))
			{
				var_19ec51f9 = namespace_2f06d687::function_7387a40a(var_6bafcc3);
				if(isdefined(var_19ec51f9) && function_5b49d38c(var_19ec51f9))
				{
					level function_66e5311c(var_19ec51f9);
					var_19ec51f9.var_3a90f16b = function_b6b79a0(var_19ec51f9.var_3a90f16b * 0.75);
					var_19ec51f9.var_7884b12d = var_19ec51f9.var_3a90f16b;
					var_19ec51f9.var_dc2b3ec4 = var_19ec51f9.var_3a90f16b;
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
function function_ba02c8e3(var_5dc5e20a)
{
	self waittill("hash_128f8789");
	function_81403b2f(var_5dc5e20a.var_61a19dc6, self);
	function_81403b2f(level.var_641fcd9c, self);
	if(var_5dc5e20a.var_61a19dc6.size <= 0)
	{
		var_5dc5e20a notify("hash_3484dc92");
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
function function_fe46cd6(var_c0adf81f, var_95acca4a, var_c55dcd82, var_27c4935)
{
	if(!isdefined(var_27c4935))
	{
		var_27c4935 = (0, 0, 0);
	}
	switch(var_c0adf81f)
	{
		case "target":
		{
			var_5cbd0572 = "waypoint_targetneutral";
			break;
		}
		case "task":
		{
			var_5cbd0572 = "waypoint_captureneutral";
			break;
		}
		case "goto":
		{
			var_5cbd0572 = "waypoint_circle_arrow_green";
			break;
		}
		case default:
		{
			/#
				namespace_33b293fd::function_94739542("Dev Block strings are not supported" + var_c0adf81f + "Dev Block strings are not supported");
			#/
			break;
		}
	}
	var_95ea7549 = namespace_46413591::function_f7f12a75(var_95acca4a, var_c55dcd82 + var_27c4935, "all", var_5cbd0572, 0.75, 0.25);
	var_95ea7549 function_26b3bd1e(0, var_5cbd0572);
	return var_95ea7549;
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
	namespace_46413591::function_dc8c8404(self);
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
function function_f0bf9ac3(var_51e6a548, var_3a212fd7, var_f9a179ed, var_bf827987, var_ba36487d, var_dfcc01fd, var_88482219, var_e8bb43ee, var_a77ad8eb, var_ae725cb8, var_a5cf2304, var_5d7e7ac2)
{
	if(isdefined(var_3a212fd7) && function_65f192a6(var_3a212fd7))
	{
		if(var_ba36487d == "MOD_GRENADE" || var_ba36487d == "MOD_GRENADE_SPLASH" || var_ba36487d == "MOD_EXPLOSIVE" || var_ba36487d == "MOD_EXPLOSIVE_SPLASH" || var_ba36487d == "MOD_PROJECTILE" || var_ba36487d == "MOD_PROJECTILE_SPLASH")
		{
			return function_b6b79a0(var_f9a179ed);
		}
		else
		{
			var_f9a179ed = 0;
		}
	}
	return function_b6b79a0(var_f9a179ed);
}

/*
	Name: function_c66bcbfb
	Namespace: namespace_36171bd3
	Checksum: 0x9830BDC
	Offset: 0x6620
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_c66bcbfb(var_722885f3)
{
	return function_cbc4f0b(var_722885f3, var_722885f3 + VectorScale((0, 0, -1), 100000), 0, undefined, 1)["position"];
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
	return "keyline_outline_p" + self function_c7f3ce11();
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
	return "squad_indicator_p" + self function_c7f3ce11();
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
function function_6142019a(var_6bfe1586, var_7071a6ab)
{
	self endon("hash_128f8789");
	var_2807366f = var_6bfe1586 function_4b7cb57c();
	self namespace_71e9cb84::function_74d6b22f(var_2807366f, var_7071a6ab);
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
function function_e228c18a(var_5c592caf, var_6bfe1586, var_199c44c9)
{
	self endon("hash_128f8789");
	if(!isdefined(self.var_c3f3d0ef))
	{
		self.var_c3f3d0ef = [];
	}
	var_5ddef2e5 = function_3f10449f();
	if(isdefined(var_6bfe1586))
	{
		var_5ddef2e5 = function_84970cc4(var_6bfe1586);
		var_6bfe1586 endon("hash_643a7daf");
	}
	foreach(var_5dc5e20a in var_5ddef2e5)
	{
		var_2807366f = var_5dc5e20a function_a2bb4ee8();
		self namespace_71e9cb84::function_74d6b22f(var_2807366f, var_5c592caf);
		namespace_84970cc4::function_69554b3e(self.var_c3f3d0ef, var_6bfe1586, 0);
	}
	self function_fef374cd();
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
	self waittill("hash_128f8789");
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
function function_14ec2d71(var_6bfe1586)
{
	var_5ddef2e5 = function_3f10449f();
	if(isdefined(var_6bfe1586))
	{
		var_5ddef2e5 = function_84970cc4(var_6bfe1586);
	}
	if(!isdefined(self.var_c3f3d0ef))
	{
		self.var_c3f3d0ef = [];
	}
	foreach(var_5dc5e20a in var_5ddef2e5)
	{
		var_2807366f = var_5dc5e20a function_a2bb4ee8();
		self namespace_71e9cb84::function_74d6b22f(var_2807366f, 0);
		function_81403b2f(self.var_c3f3d0ef, var_5dc5e20a, 0);
	}
	if(isdefined(self.var_c3f3d0ef) && self.var_c3f3d0ef.size == 0)
	{
		self function_26f6def7();
	}
}

