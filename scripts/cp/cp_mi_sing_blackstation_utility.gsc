#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_hazard;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_util;
#using scripts\cp\cybercom\_cybercom;
#using scripts\cp\cybercom\_cybercom_gadget_firefly;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\coop;
#using scripts\shared\ai_shared;
#using scripts\shared\animation_shared;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\fx_shared;
#using scripts\shared\laststand_shared;
#using scripts\shared\math_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicleriders_shared;

#namespace namespace_79e1cd97;

/*
	Name: function_bff1a867
	Namespace: namespace_79e1cd97
	Checksum: 0x4616A35F
	Offset: 0xFA0
	Size: 0xBB
	Parameters: 1
	Flags: None
*/
function function_bff1a867(str_objective)
{
	level.var_2fd26037 = util::function_740f8516("hendricks");
	level.var_2fd26037 colors::set_force_color("b");
	level.var_2fd26037 SetThreatBiasGroup("heroes");
	skipto::teleport_ai(str_objective, level.var_2fd26037);
	level.var_2fd26037 SetGoal(level.var_2fd26037.origin, 1);
}

/*
	Name: function_da579a5d
	Namespace: namespace_79e1cd97
	Checksum: 0x728C8AB0
	Offset: 0x1068
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_da579a5d(str_objective)
{
	level.var_3d556bcd = util::function_740f8516("kane");
	level.var_3d556bcd SetThreatBiasGroup("heroes");
	skipto::teleport_ai(str_objective, level.var_3d556bcd);
}

/*
	Name: function_913d882
	Namespace: namespace_79e1cd97
	Checksum: 0xB73C51A6
	Offset: 0x10E0
	Size: 0x7F
	Parameters: 0
	Flags: None
*/
function function_913d882()
{
	self notify("hash_1fffa65c");
	self endon("death");
	self endon("hash_1fffa65c");
	while(1)
	{
		if(self IsPlayerUnderwater() && (!isdefined(self.is_underwater) && self.is_underwater))
		{
			self thread function_41018429();
		}
		wait(0.5);
	}
}

/*
	Name: function_41018429
	Namespace: namespace_79e1cd97
	Checksum: 0x16B4EA7E
	Offset: 0x1168
	Size: 0x14F
	Parameters: 0
	Flags: None
*/
function function_41018429()
{
	self notify("hash_8f1abd30");
	self endon("hash_8f1abd30");
	self endon("death");
	self.is_underwater = 1;
	self hazard::function_459e5eff("o2", 0);
	var_dd075cd2 = 1;
	e_volume = GetEnt("subway_water", "targetname");
	if(isdefined(e_volume) && self istouching(e_volume))
	{
		self thread function_c6b38f1e();
	}
	while(self IsPlayerUnderwater())
	{
		wait(1);
		var_dd075cd2 = self hazard::do_damage("o2", 5);
	}
	self hazard::function_459e5eff("o2", 1);
	self.is_underwater = 0;
}

/*
	Name: function_c6b38f1e
	Namespace: namespace_79e1cd97
	Checksum: 0xC58013BF
	Offset: 0x12C0
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_c6b38f1e()
{
	self endon("death");
	self clientfield::set_to_player("subway_water", 1);
	while(self IsPlayerUnderwater())
	{
		wait(0.05);
	}
	self clientfield::set_to_player("subway_water", 0);
}

/*
	Name: function_8f7c9f3c
	Namespace: namespace_79e1cd97
	Checksum: 0x1D47E33C
	Offset: 0x1340
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_8f7c9f3c()
{
	self function_151e32b9(0);
}

/*
	Name: function_2c33b48e
	Namespace: namespace_79e1cd97
	Checksum: 0xB0124863
	Offset: 0x1368
	Size: 0x16F
	Parameters: 0
	Flags: None
*/
function function_2c33b48e()
{
	self notify("hash_bdc2988");
	self endon("death");
	self endon("hash_bdc2988");
	self.var_eb7c5a24 = 0;
	self.var_f82cc610 = 0;
	while(1)
	{
		level flag::wait_till("objective_igc_completed");
		if(self util::use_button_held() && (self.var_ff9883fd || self.var_3f081af5) && !self.var_eb7c5a24)
		{
			self function_151e32b9(1);
			while(util::use_button_held())
			{
				wait(0.05);
			}
			while(!self useButtonPressed() && !self JumpButtonPressed() && !self SprintButtonPressed() && self.var_eb7c5a24)
			{
				wait(0.05);
			}
			if(self.var_eb7c5a24)
			{
				self function_151e32b9(0);
			}
		}
		wait(0.05);
	}
}

/*
	Name: function_ed7faf05
	Namespace: namespace_79e1cd97
	Checksum: 0x57EE40DD
	Offset: 0x14E0
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_ed7faf05()
{
	self notify("hash_bdc2988");
	self function_151e32b9(0);
}

/*
	Name: function_151e32b9
	Namespace: namespace_79e1cd97
	Checksum: 0xE6B6BF3F
	Offset: 0x1518
	Size: 0x40B
	Parameters: 1
	Flags: None
*/
function function_151e32b9(var_6ffe741b)
{
	if(isdefined(self.var_eb7c5a24) && self.var_eb7c5a24 && !var_6ffe741b)
	{
		if(isdefined(self.var_b1a4293e))
		{
			self.var_b1a4293e delete();
		}
		self AllowStand(1);
		self AllowProne(1);
		self AllowSprint(1);
		self SetStance("stand");
		if(isdefined(self GetLuiMenu("AnchorDeployed")))
		{
			self CloseLUIMenu(self GetLuiMenu("AnchorDeployed"));
		}
		self.var_eb7c5a24 = 0;
		level notify("enable_cybercom", self, 1);
		self util::hide_hint_text();
		self notify("hash_af6705ff");
	}
	else if(var_6ffe741b)
	{
		if(!self IsWallRunning() && (!isdefined(self.laststand) && self.laststand) && !self IsPlayerUnderwater() && !self isMantling())
		{
			level notify("disable_cybercom", self, 1);
			if(!self IsOnGround())
			{
				self.var_b1a4293e = spawn("script_origin", self.origin);
				self playerLinkTo(self.var_b1a4293e);
				v_ground = groundpos_ignore_water(self.origin);
				n_speed = Distance(v_ground, self.origin) * 0.002;
				self.var_b1a4293e moveto(v_ground, n_speed);
				self.var_b1a4293e waittill("movedone");
				self Unlink();
				self.var_b1a4293e delete();
			}
			if(!(isdefined(self.is_reviving_any) && self.is_reviving_any))
			{
				self thread scene::Play("cin_gen_ground_anchor_player", self);
				self waittill("hash_97a4dd11");
			}
			self.var_eb7c5a24 = 1;
			self AllowStand(0);
			self AllowProne(0);
			self AllowSprint(0);
			self.var_b1a4293e = spawn("script_origin", self.origin);
			if(!isdefined(self GetLuiMenu("AnchorDeployed")))
			{
				self OpenLUIMenu("AnchorDeployed");
			}
			self thread function_a81e2f8f();
			self thread function_c87bc7e2();
		}
	}
}

/*
	Name: function_c87bc7e2
	Namespace: namespace_79e1cd97
	Checksum: 0xE4AE1060
	Offset: 0x1930
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_c87bc7e2()
{
	self endon("death");
	self endon("hash_af6705ff");
	wait(20);
	if(self.var_eb7c5a24)
	{
		self function_151e32b9(0);
	}
}

/*
	Name: function_a81e2f8f
	Namespace: namespace_79e1cd97
	Checksum: 0x8E808815
	Offset: 0x1980
	Size: 0x20B
	Parameters: 0
	Flags: None
*/
function function_a81e2f8f()
{
	self endon("death");
	while(isdefined(self.var_b1a4293e) && (self.var_ff9883fd || self.var_3f081af5))
	{
		var_3b8c7376 = Distance2DSquared(self.origin, self.var_b1a4293e.origin);
		if(var_3b8c7376 > 3600 && var_3b8c7376 < 10000)
		{
			if(!self.var_62269fcc)
			{
				self.var_62269fcc = 1;
				self util::show_hint_text(&"CP_MI_SING_BLACKSTATION_ANCHOR_WARNRANGE", 1);
			}
		}
		else if(var_3b8c7376 > 10000 && var_3b8c7376 <= 22500)
		{
			if(!self.var_62269fcc)
			{
				self.var_62269fcc = 1;
				self util::show_hint_text(&"CP_MI_SING_BLACKSTATION_ANCHOR_OUTRANGE", 1);
			}
		}
		else if(var_3b8c7376 > 22500)
		{
			if(self.var_eb7c5a24)
			{
				self.var_62269fcc = 0;
				self function_151e32b9(0);
			}
		}
		else
		{
			self.var_62269fcc = 0;
			self util::hide_hint_text();
		}
		if(!isdefined(self.hint_menu_handle))
		{
			self.var_62269fcc = 0;
		}
		util::wait_network_frame();
	}
	if(isdefined(self GetLuiMenu("AnchorDeployed")))
	{
		self CloseLUIMenu(self GetLuiMenu("AnchorDeployed"));
	}
	self util::hide_hint_text();
}

/*
	Name: function_12398a8b
	Namespace: namespace_79e1cd97
	Checksum: 0xE168E6BB
	Offset: 0x1B98
	Size: 0x8B
	Parameters: 1
	Flags: None
*/
function function_12398a8b(a_ents)
{
	self endon("death");
	var_b1a4293e = a_ents["spike"];
	self waittill("hash_97a4dd11");
	if(isdefined(var_b1a4293e))
	{
		wait(0.1);
		while(isdefined(self.var_eb7c5a24) && self.var_eb7c5a24)
		{
			wait(0.1);
		}
		var_b1a4293e delete();
	}
}

/*
	Name: function_3ceb3ad7
	Namespace: namespace_79e1cd97
	Checksum: 0xA0954E5F
	Offset: 0x1C30
	Size: 0x119
	Parameters: 0
	Flags: None
*/
function function_3ceb3ad7()
{
	foreach(player in level.activePlayers)
	{
		player util::show_hint_text(&"CP_MI_SING_BLACKSTATION_USE_ANCHOR_FULL");
	}
	wait(4);
	foreach(player in level.activePlayers)
	{
		player util::show_hint_text(&"CP_MI_SING_BLACKSTATION_ANCHOR_AREA");
	}
}

/*
	Name: function_72b35612
	Namespace: namespace_79e1cd97
	Checksum: 0x99FB12D2
	Offset: 0x1D58
	Size: 0x119
	Parameters: 0
	Flags: None
*/
function function_72b35612()
{
	foreach(player in level.activePlayers)
	{
		if(!isdefined(player.var_22246212))
		{
			player.var_22246212 = 0;
		}
		if(isdefined(player.var_f3d107c2) && player.var_f3d107c2)
		{
			if(player.var_22246212 < 2)
			{
				player.var_22246212++;
				player.var_f3d107c2 = 0;
				player util::show_hint_text(&"CP_MI_SING_BLACKSTATION_USE_ANCHOR");
			}
		}
	}
}

/*
	Name: function_f2e7ba4b
	Namespace: namespace_79e1cd97
	Checksum: 0xF4DAE49F
	Offset: 0x1E80
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_f2e7ba4b()
{
	var_3be169e6 = GetEnt("anchor_intro_wind", "targetname");
	var_3be169e6 trigger::wait_till();
	self thread function_61a28877(var_3be169e6);
	self thread function_3b881872(var_3be169e6);
}

/*
	Name: function_61a28877
	Namespace: namespace_79e1cd97
	Checksum: 0x14185E51
	Offset: 0x1F00
	Size: 0x1AB
	Parameters: 1
	Flags: None
*/
function function_61a28877(var_473cf959)
{
	self notify("hash_afb0e5d8");
	self endon("hash_afb0e5d8");
	self endon("disconnect");
	var_473cf959 endon("death");
	self.var_ff9883fd = 0;
	while(!level flag::get("breached"))
	{
		while(self istouching(var_473cf959))
		{
			self.var_ff9883fd = 1;
			self AllowSprint(0);
			if(!(isdefined(var_473cf959.var_d956869f) && var_473cf959.var_d956869f))
			{
				self setMoveSpeedScale(0.7);
				if(self.var_eb7c5a24)
				{
					self PlayRumbleOnEntity("bs_wind_rumble_low");
				}
				else
				{
					self PlayRumbleOnEntity("bs_wind_rumble");
				}
			}
			else
			{
				self setMoveSpeedScale(0.5);
			}
			wait(0.05);
		}
		self AllowSprint(1);
		self setMoveSpeedScale(1);
		self.var_ff9883fd = 0;
		wait(0.05);
	}
}

/*
	Name: function_3b881872
	Namespace: namespace_79e1cd97
	Checksum: 0x11D843D5
	Offset: 0x20B8
	Size: 0x177
	Parameters: 1
	Flags: None
*/
function function_3b881872(var_473cf959)
{
	self notify("hash_27db3d49");
	self endon("hash_27db3d49");
	self endon("disconnect");
	var_473cf959 endon("death");
	self.var_1ecf7ddf = 0;
	while(!level flag::get("breached"))
	{
		while(self istouching(var_473cf959))
		{
			if(!(isdefined(var_473cf959.var_f6362118) && var_473cf959.var_f6362118))
			{
				if(self.var_1ecf7ddf != 1)
				{
					self.var_1ecf7ddf = 1;
					self clientfield::set_to_player("sndWindSystem", 1);
				}
			}
			else if(self.var_1ecf7ddf != 2)
			{
				self.var_1ecf7ddf = 2;
				self clientfield::set_to_player("sndWindSystem", 2);
			}
			wait(0.05);
		}
		if(self.var_1ecf7ddf != 0)
		{
			self.var_1ecf7ddf = 0;
			self clientfield::set_to_player("sndWindSystem", 0);
		}
		wait(0.05);
	}
}

/*
	Name: function_3c6fc4cb
	Namespace: namespace_79e1cd97
	Checksum: 0x2E3F40B5
	Offset: 0x2238
	Size: 0x347
	Parameters: 0
	Flags: None
*/
function function_3c6fc4cb()
{
	self endon("death");
	while(1)
	{
		level flag::wait_till("allow_wind_gust");
		level exploder::exploder("fx_expl_debris_high_winds");
		level thread function_e56ec11d(self);
		n_time = RandomFloatRange(3, 4);
		foreach(player in level.activePlayers)
		{
			if(isdefined(player.var_ff9883fd) && player.var_ff9883fd)
			{
				if(!isdefined(player.var_ce01d699))
				{
					player.var_ce01d699 = 0;
				}
				if(!player.var_ce01d699)
				{
					player.var_ce01d699 = 1;
					player util::show_hint_text(&"CP_MI_SING_BLACKSTATION_USE_ANCHOR");
				}
				player thread function_4d386bf("WeatherWarning", "kill_weather");
				player thread function_c86ecb59(n_time);
			}
		}
		wait(n_time);
		level exploder::stop_exploder("fx_expl_debris_high_winds");
		level flag::set("kill_weather");
		self.var_d956869f = 0;
		self.var_f6362118 = 0;
		level thread function_72b35612();
		foreach(player in level.activePlayers)
		{
			if(player.var_eb7c5a24 && (isdefined(player.var_ff9883fd) && player.var_ff9883fd))
			{
				player function_151e32b9(0);
			}
		}
		n_timeout = RandomFloatRange(5.5, 8.5);
		level flag::wait_till_clear_timeout(n_timeout, "allow_wind_gust");
	}
}

/*
	Name: function_c86ecb59
	Namespace: namespace_79e1cd97
	Checksum: 0x44DE1C7C
	Offset: 0x2588
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function function_c86ecb59(n_time)
{
	self endon("death");
	wait(1);
	self clientfield::set_to_player("wind_blur", 1);
	wait(n_time);
	self clientfield::set_to_player("wind_blur", 0);
}

/*
	Name: function_e56ec11d
	Namespace: namespace_79e1cd97
	Checksum: 0x4DBF65A9
	Offset: 0x25F8
	Size: 0x387
	Parameters: 1
	Flags: None
*/
function function_e56ec11d(var_473cf959)
{
	level flag::clear("kill_weather");
	level endon("hash_4f4e78f4");
	var_473cf959 endon("death");
	var_73e585a1 = struct::get(var_473cf959.target);
	level notify("hash_5dd3aa3a");
	var_473cf959.var_f6362118 = 1;
	util::waittill_notify_or_timeout("end_gust_warning", 1);
	while(1)
	{
		foreach(player in level.players)
		{
			if(player istouching(var_473cf959))
			{
				if(!isdefined(player GetLuiMenu("WeatherWarning")))
				{
					player thread function_4d386bf("WeatherWarning", "kill_weather");
				}
				v_dir = AnglesToForward((0, var_73e585a1.angles[1], 0));
				n_push_strength = 250;
				var_473cf959.var_d956869f = 1;
				if(!player.var_4cfe7265 && (!isdefined(player.laststand) && player.laststand))
				{
					if(!player.var_eb7c5a24)
					{
						player SetVelocity(v_dir * n_push_strength);
						player.var_f3d107c2 = 1;
					}
					else if(isdefined(player.var_b1a4293e))
					{
						var_3b8c7376 = Distance2DSquared(player.origin, player.var_b1a4293e.origin);
						if(Distance2DSquared(player.origin, player.var_b1a4293e.origin) > 10000)
						{
							player SetVelocity(v_dir * n_push_strength);
						}
					}
				}
				if(player.var_eb7c5a24)
				{
					player PlayRumbleOnEntity("bs_gust_rumble_low");
					continue;
				}
				player PlayRumbleOnEntity("bs_gust_rumble");
			}
		}
		wait(0.05);
	}
}

/*
	Name: function_3a563d3
	Namespace: namespace_79e1cd97
	Checksum: 0x27CB4021
	Offset: 0x2988
	Size: 0x185
	Parameters: 0
	Flags: None
*/
function function_3a563d3()
{
	level endon("hash_88ddfb38");
	var_5abaf1e2 = struct::get("debris_junk_fling");
	var_d7d9d1b0 = struct::get("debris_junk_move");
	level thread function_f9ecd375();
	while(1)
	{
		level waittill("hash_5dd3aa3a");
		wait(1.5);
		foreach(player in level.activePlayers)
		{
			e_debris = spawn("script_model", var_5abaf1e2.origin);
			e_debris function_e82b5091();
			e_debris SetPlayerCollision(0);
			if(isdefined(player))
			{
				player function_ec10a9e7(e_debris);
			}
		}
	}
}

/*
	Name: function_f9ecd375
	Namespace: namespace_79e1cd97
	Checksum: 0x54A49335
	Offset: 0x2B18
	Size: 0x129
	Parameters: 0
	Flags: None
*/
function function_f9ecd375()
{
	trigger::wait_till("trigger_hendricks_anchor_done");
	level thread scene::Play("p7_fxanim_cp_blackstation_boatroom_bundle");
	wait(2.5);
	var_c6dce143 = struct::get("objective_port_assault_ai");
	foreach(player in level.activePlayers)
	{
		if(Distance2DSquared(player.origin, var_c6dce143.origin) <= 640000)
		{
			player PlayRumbleOnEntity("cp_blackstation_shelter_rumble");
		}
	}
}

/*
	Name: function_e7bf1516
	Namespace: namespace_79e1cd97
	Checksum: 0x45331E04
	Offset: 0x2C50
	Size: 0x3F
	Parameters: 0
	Flags: None
*/
function function_e7bf1516()
{
	level endon("hash_88ddfb38");
	while(1)
	{
		level waittill("hash_5dd3aa3a");
		level thread function_59c54810();
	}
}

/*
	Name: function_59c54810
	Namespace: namespace_79e1cd97
	Checksum: 0xC0CDF85E
	Offset: 0x2C98
	Size: 0x1D5
	Parameters: 0
	Flags: None
*/
function function_59c54810()
{
	var_a35aa0b0 = struct::get_array("debris_random_start");
	var_64dd962c = Array("p7_debris_junkyard_scrap_pile_01", "p7_debris_junkyard_scrap_pile_02", "p7_debris_junkyard_scrap_pile_03", "p7_debris_concrete_rubble_lg_03", "p7_debris_metal_scrap_01", "p7_debris_ibeam_dmg", "p7_sin_wall_metal_slats", "p7_toilet_bathroom_open");
	for(i = 0; i < randomIntRange(10, 16); i++)
	{
		e_debris = spawn("script_model", var_a35aa0b0[RandomInt(var_a35aa0b0.size)].origin);
		e_debris SetModel(var_64dd962c[RandomInt(var_64dd962c.size)]);
		if(RandomInt(2) == 0)
		{
			e_debris PlayLoopSound("evt_debris_rando_looper");
		}
		else
		{
			e_debris PlayLoopSound("evt_debris_metal_looper");
		}
		wait(RandomFloatRange(0.1, 0.5));
		e_debris thread function_95e08db9();
	}
}

/*
	Name: function_cb28102c
	Namespace: namespace_79e1cd97
	Checksum: 0x915D73AA
	Offset: 0x2E78
	Size: 0x403
	Parameters: 0
	Flags: None
*/
function function_cb28102c()
{
	var_baae3b1d = GetEntArray("debris_stage_1", "targetname");
	foreach(var_4804abd in var_baae3b1d)
	{
		var_4804abd thread function_8efe7a7();
	}
	trigger::wait_till("trigger_stage_1");
	foreach(var_4804abd in var_baae3b1d)
	{
		var_4804abd thread function_88a9ee8a();
		var_4804abd thread function_f5cdc056();
		var_4804abd thread function_2d329cdb();
	}
	var_d68e5742 = GetEnt("debris_fridge", "targetname");
	var_e0b0b586 = GetEntArray("debris_stage_2", "targetname");
	ArrayInsert(var_e0b0b586, var_d68e5742, 0);
	foreach(var_2a82c526 in var_e0b0b586)
	{
		var_2a82c526 thread function_8efe7a7();
	}
	trigger::wait_till("trigger_stage_2");
	level waittill("hash_5dd3aa3a");
	wait(1.7);
	foreach(var_2a82c526 in var_e0b0b586)
	{
		var_2a82c526 thread function_88a9ee8a();
		var_2a82c526 thread function_f5cdc056();
		var_2a82c526 thread function_2d329cdb();
	}
	var_6b05f5fd = GetEnt("debris_tree", "targetname");
	var_6b05f5fd thread function_8efe7a7();
	trigger::wait_till("trigger_stage_3");
	level waittill("hash_5dd3aa3a");
	wait(1.7);
	var_6b05f5fd thread function_88a9ee8a();
	var_6b05f5fd thread function_f5cdc056();
	var_6b05f5fd thread function_2d329cdb();
}

/*
	Name: function_8efe7a7
	Namespace: namespace_79e1cd97
	Checksum: 0x5A3C07F2
	Offset: 0x3288
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function function_8efe7a7()
{
	self endon("death");
	self endon("launch");
	while(1)
	{
		self MoveY(1, 0.05);
		self RotatePitch(1, 0.05);
		self waittill("movedone");
		self MoveY(-1, 0.05);
		self RotatePitch(-1, 0.05);
		self waittill("movedone");
	}
}

/*
	Name: function_88a9ee8a
	Namespace: namespace_79e1cd97
	Checksum: 0x89438986
	Offset: 0x3358
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_88a9ee8a()
{
	self notify("launch");
	self moveto(self.origin + VectorScale((0, 1, 0), 200), 0.5);
	self waittill("movedone");
	self moveto(self.origin + (0, 6000, 1200), 8);
	self waittill("movedone");
	self delete();
}

/*
	Name: function_95e08db9
	Namespace: namespace_79e1cd97
	Checksum: 0x2B206069
	Offset: 0x3400
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_95e08db9()
{
	self MoveZ(240, 0.1);
	self waittill("movedone");
	self thread function_f5cdc056();
	self thread function_2d329cdb();
	self moveto(self.origin + (0, 6000, randomIntRange(20, 60)), 4);
	self waittill("movedone");
	self delete();
}

/*
	Name: function_ec10a9e7
	Namespace: namespace_79e1cd97
	Checksum: 0x31F65012
	Offset: 0x34C8
	Size: 0xF3
	Parameters: 1
	Flags: None
*/
function function_ec10a9e7(e_debris)
{
	self endon("disconnect");
	e_debris thread function_f5cdc056();
	e_debris thread function_2d329cdb();
	e_debris MoveZ(240, 0.1);
	e_debris waittill("movedone");
	e_debris moveto(self.origin + (RandomInt(100), 1000, randomIntRange(80, 100)), 3);
	e_debris waittill("movedone");
	e_debris delete();
}

/*
	Name: function_f5cdc056
	Namespace: namespace_79e1cd97
	Checksum: 0x798681D3
	Offset: 0x35C8
	Size: 0x3F
	Parameters: 0
	Flags: None
*/
function function_f5cdc056()
{
	self endon("death");
	while(1)
	{
		self RotateRoll(-90, 0.3);
		wait(0.25);
	}
}

/*
	Name: function_e82b5091
	Namespace: namespace_79e1cd97
	Checksum: 0x48F1AE58
	Offset: 0x3610
	Size: 0x1DB
	Parameters: 0
	Flags: None
*/
function function_e82b5091()
{
	n_rand = RandomInt(7);
	switch(n_rand)
	{
		case 0:
		{
			var_ac791ba4 = "p7_bucket_plastic_5_gal_blue";
			self PlayLoopSound("evt_debris_rando_looper");
			break;
		}
		case 1:
		{
			var_ac791ba4 = "p7_sin_wall_metal_slats";
			self PlayLoopSound("evt_debris_metal_looper");
			break;
		}
		case 2:
		{
			var_ac791ba4 = "p7_debris_metal_scrap_01";
			self PlayLoopSound("evt_debris_metal_looper");
			break;
		}
		case 3:
		{
			var_ac791ba4 = "p7_water_container_plastic_large_distressed";
			self PlayLoopSound("evt_debris_metal_special_looper");
			break;
		}
		case 4:
		{
			var_ac791ba4 = "p7_light_spotlight_generator_02";
			self PlayLoopSound("evt_debris_metal_special_looper");
			break;
		}
		case 5:
		{
			var_ac791ba4 = "p7_foliage_treetrunk_fallen_01";
			self PlayLoopSound("evt_debris_tree_looper");
			break;
		}
		case 6:
		{
			var_ac791ba4 = "p7_debris_drywall_chunks_corner_01";
			self PlayLoopSound("evt_debris_rando_looper");
			break;
		}
	}
	self SetModel(var_ac791ba4);
}

/*
	Name: function_378fdd41
	Namespace: namespace_79e1cd97
	Checksum: 0xF4F55334
	Offset: 0x37F8
	Size: 0x67
	Parameters: 0
	Flags: None
*/
function function_378fdd41()
{
	self endon("death");
	while(1)
	{
		self MoveZ(3, 0.1);
		wait(0.05);
		self MoveZ(-3, 0.1);
		wait(0.05);
	}
}

/*
	Name: function_2d329cdb
	Namespace: namespace_79e1cd97
	Checksum: 0x339296D4
	Offset: 0x3868
	Size: 0x173
	Parameters: 0
	Flags: None
*/
function function_2d329cdb()
{
	self endon("death");
	self endon("stop_moving");
	var_21ba9ea1 = 1600;
	while(1)
	{
		foreach(player in level.players)
		{
			if(DistanceSquared(self.origin, player GetCentroid()) < var_21ba9ea1)
			{
				player DoDamage(player.health / 8, self.origin, undefined, undefined, undefined, "MOD_FALLING");
				player shellshock("default", 1.5);
				player PlayRumbleOnEntity("artillery_rumble");
				break;
			}
		}
		wait(0.05);
	}
}

/*
	Name: groundpos_ignore_water
	Namespace: namespace_79e1cd97
	Checksum: 0xB0A85948
	Offset: 0x39E8
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function groundpos_ignore_water(origin)
{
	return GroundTrace(origin, origin + VectorScale((0, 0, -1), 100000), 0, undefined, 1)["position"];
}

/*
	Name: function_4d386bf
	Namespace: namespace_79e1cd97
	Checksum: 0x455E228A
	Offset: 0x3A38
	Size: 0xF9
	Parameters: 3
	Flags: None
*/
function function_4d386bf(str_menu, str_flag, str_notify)
{
	self endon("death");
	if(!isdefined(self GetLuiMenu(str_menu)))
	{
		warning = self OpenLUIMenu(str_menu);
		self thread function_c4626d1d();
	}
	if(isdefined(str_notify))
	{
		self util::waittill_any_timeout(3, str_notify);
	}
	else
	{
		util::waittill_any_ents(level, str_flag, self, "player_bleedout");
	}
	if(isdefined(warning))
	{
		self CloseLUIMenu(warning);
		self notify("hash_72181299");
	}
}

/*
	Name: function_c4626d1d
	Namespace: namespace_79e1cd97
	Checksum: 0xDC3530C3
	Offset: 0x3B40
	Size: 0x47
	Parameters: 0
	Flags: None
*/
function function_c4626d1d()
{
	self endon("death");
	self endon("hash_72181299");
	while(1)
	{
		self playlocalsound("uin_weather_warning");
		wait(0.25);
	}
}

/*
	Name: function_43367596
	Namespace: namespace_79e1cd97
	Checksum: 0xC700D002
	Offset: 0x3B90
	Size: 0x135
	Parameters: 3
	Flags: None
*/
function function_43367596(var_e3459cd7, str_flag, str_endon)
{
	self thread function_cdf3d127();
	while(1)
	{
		level waittill(var_e3459cd7);
		if(level.var_2fd26037 istouching(self) && !level.var_2fd26037.var_f005c227)
		{
			level.var_2fd26037 scene::Play("cin_gen_ground_anchor_start", level.var_2fd26037);
			level.var_2fd26037 thread scene::Play("cin_gen_ground_anchor_idle", level.var_2fd26037);
			wait(0.5);
			level flag::wait_till(str_flag);
			level.var_2fd26037 scene::Play("cin_gen_ground_anchor_end", level.var_2fd26037);
		}
		if(level flag::get(str_endon))
		{
			break;
		}
	}
}

/*
	Name: function_cdf3d127
	Namespace: namespace_79e1cd97
	Checksum: 0xBB24D594
	Offset: 0x3CD0
	Size: 0xBF
	Parameters: 0
	Flags: None
*/
function function_cdf3d127()
{
	level endon("hash_4561e3f");
	var_e63023e3 = GetEnt(self.targetname + "_hero_safety", "script_noteworthy");
	if(!isdefined(var_e63023e3))
	{
		return;
	}
	while(1)
	{
		while(level.var_2fd26037 istouching(var_e63023e3))
		{
			level.var_2fd26037.var_f005c227 = 1;
			wait(0.05);
		}
		level.var_2fd26037.var_f005c227 = 0;
		wait(0.05);
	}
}

/*
	Name: function_d3e22b53
	Namespace: namespace_79e1cd97
	Checksum: 0x16104E96
	Offset: 0x3D98
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_d3e22b53(var_473cf959)
{
	var_473cf959 thread function_98fd2a69();
	var_473cf959 thread function_43367596("surge_warning", "kill_surge", "surge_done");
	var_473cf959 thread function_e7121462();
}

/*
	Name: function_4a8c1765
	Namespace: namespace_79e1cd97
	Checksum: 0x1A6C16F8
	Offset: 0x3E10
	Size: 0xB5
	Parameters: 1
	Flags: None
*/
function function_4a8c1765(a_triggers)
{
	b_touched = 0;
	foreach(trigger in a_triggers)
	{
		if(self istouching(trigger))
		{
			b_touched = 1;
			continue;
		}
	}
	return b_touched;
}

/*
	Name: function_98fd2a69
	Namespace: namespace_79e1cd97
	Checksum: 0xB8B3EE86
	Offset: 0x3ED0
	Size: 0xA7
	Parameters: 0
	Flags: None
*/
function function_98fd2a69()
{
	self endon("death");
	while(1)
	{
		level flag::set("surging_inward");
		level thread function_252086f2(self);
		wait(1.5);
		level flag::wait_till_clear("surging_inward");
		self.var_f52921cf = 0;
		wait(RandomFloatRange(5.5, 6.5));
	}
}

/*
	Name: function_b0c5c886
	Namespace: namespace_79e1cd97
	Checksum: 0xD5BD8611
	Offset: 0x3F80
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_b0c5c886()
{
	level endon("hash_7a88d2cd");
	level clientfield::set("water_level", 1);
}

/*
	Name: function_3c57957
	Namespace: namespace_79e1cd97
	Checksum: 0x5F67FA4D
	Offset: 0x3FB8
	Size: 0x147
	Parameters: 3
	Flags: None
*/
function function_3c57957(t_start, var_64dd962c, str_endon)
{
	var_e7610d59 = "p7_fxanim_cp_blackstation_" + t_start.script_string + "_bundle";
	level scene::add_scene_func(var_e7610d59, &function_8fbe0681, "play", str_endon, var_64dd962c, t_start);
	if(isdefined(var_64dd962c))
	{
		Array::thread_all(var_64dd962c, &function_c1eab89b, t_start);
	}
	level flag::wait_till("surging_inward");
	while(!level flag::get(str_endon))
	{
		level scene::Play(t_start.targetname);
		t_start notify("hash_856e667");
		level flag::wait_till_clear("surging_inward");
	}
}

/*
	Name: function_8fbe0681
	Namespace: namespace_79e1cd97
	Checksum: 0xF3D4F7C5
	Offset: 0x4108
	Size: 0x34B
	Parameters: 4
	Flags: None
*/
function function_8fbe0681(a_ents, str_endon, var_64dd962c, t_start)
{
	var_e7610d59 = t_start.script_string;
	var_32cdba86 = a_ents[var_e7610d59];
	e_debris = a_ents[var_e7610d59 + "_debris"];
	e_debris thread function_1168d325(t_start);
	str_joint = "wave_trigger_jnt";
	t_start EnableLinkTo();
	t_start.origin = var_32cdba86 GetTagOrigin(str_joint);
	t_start LinkTo(var_32cdba86, str_joint, (0, 120, -35), VectorScale((0, -1, 0), 90));
	level flag::set("surge_active");
	foreach(player in level.players)
	{
		t_start thread function_32d3b286(player);
		t_start thread function_81a3b4e0(player);
	}
	t_start thread function_c1972ac();
	t_start thread function_9ea9bed();
	wait(0.05);
	var_32cdba86 clientfield::set("water_disturbance", 1);
	t_start waittill("hash_856e667");
	var_32cdba86 notify(self.scriptbundlename);
	level notify(t_start.script_noteworthy);
	level flag::set("end_surge");
	if(self.scriptbundlename == "p7_fxanim_cp_blackstation_wave_01_bundle")
	{
		level flag::set("cover_switch");
	}
	level flag::clear("surging_inward");
	level flag::clear("surge_active");
	level flag::clear("end_surge");
	var_32cdba86 StopAnimScripted();
	var_32cdba86 clientfield::set("water_disturbance", 0);
}

/*
	Name: function_1168d325
	Namespace: namespace_79e1cd97
	Checksum: 0x10C75D10
	Offset: 0x4460
	Size: 0x10D
	Parameters: 1
	Flags: None
*/
function function_1168d325(t_start)
{
	var_b7926b3a = t_start.script_float;
	for(x = 1; x <= var_b7926b3a; x++)
	{
		if(x < 10)
		{
			str_bone_name = "debris_0" + x + "_jnt";
		}
		else
		{
			str_bone_name = "debris_" + x + "_jnt";
		}
		n_chance = randomIntRange(0, 100);
		if(n_chance > 33)
		{
			self HidePart(str_bone_name);
			continue;
		}
		self ShowPart(str_bone_name);
	}
}

/*
	Name: function_81a3b4e0
	Namespace: namespace_79e1cd97
	Checksum: 0x89214913
	Offset: 0x4578
	Size: 0x133
	Parameters: 1
	Flags: None
*/
function function_81a3b4e0(player)
{
	self endon("death");
	self endon("hash_4735ec09");
	level endon("hash_6f645037");
	player endon("death");
	while(Distance2DSquared(self.origin, player.origin) > 490000)
	{
		wait(0.1);
	}
	if(player.var_f82cc610 && !isdefined(player GetLuiMenu("SurgeWarning")))
	{
		player thread function_8b5bccf1("SurgeWarning");
	}
	else
	{
		wait(0.05);
		if(!isdefined(player GetLuiMenu("SurgeWarning")))
		{
			player thread function_8b5bccf1("SurgeWarning");
		}
	}
	while(!player.var_f82cc610)
	{
	}
}

/*
	Name: function_8b5bccf1
	Namespace: namespace_79e1cd97
	Checksum: 0x92834C95
	Offset: 0x46B8
	Size: 0x83
	Parameters: 1
	Flags: None
*/
function function_8b5bccf1(str_menu)
{
	if(!isdefined(self.var_25f6f033))
	{
		self.var_25f6f033 = 0;
	}
	if(!self.var_25f6f033)
	{
		self.var_25f6f033 = 1;
		self util::show_hint_text(&"CP_MI_SING_BLACKSTATION_USE_ANCHOR");
	}
	self thread function_4d386bf(str_menu, "end_surge", "stop_surge");
}

/*
	Name: function_9ea9bed
	Namespace: namespace_79e1cd97
	Checksum: 0x86A8083C
	Offset: 0x4748
	Size: 0xC7
	Parameters: 0
	Flags: None
*/
function function_9ea9bed()
{
	self endon("death");
	level endon(self.script_noteworthy);
	while(1)
	{
		self waittill("trigger", var_480743);
		if(isalive(var_480743) && var_480743.team == "axis" && (isdefined(var_480743.var_284432c3) && !var_480743.var_284432c3))
		{
			var_480743.var_284432c3 = 1;
			var_480743 thread function_3de3b792(self);
		}
	}
}

/*
	Name: function_3de3b792
	Namespace: namespace_79e1cd97
	Checksum: 0xBC5F4EFE
	Offset: 0x4818
	Size: 0x93
	Parameters: 1
	Flags: None
*/
function function_3de3b792(var_12377408)
{
	self endon("death");
	v_dir = VectorNormalize(self.origin - var_12377408.origin);
	self StartRagdoll();
	self LaunchRagdoll(v_dir * 75);
	self kill();
}

/*
	Name: function_c1eab89b
	Namespace: namespace_79e1cd97
	Checksum: 0xB63AEB28
	Offset: 0x48B8
	Size: 0x31B
	Parameters: 1
	Flags: None
*/
function function_c1eab89b(var_12377408)
{
	self endon("death");
	var_12377408 endon("death");
	var_b097e0fd = 0.012;
	n_offset = 180;
	if(isdefined(self.target))
	{
		while(!self istouching(var_12377408))
		{
			wait(0.1);
		}
		s_goal = struct::get(self.target);
		n_speed = Distance(s_goal.origin, self.origin) * var_b097e0fd;
		self clientfield::increment("water_splash_lrg");
		self playsound("evt_surge_impact_debris");
		self moveto(s_goal.origin, n_speed);
		self RotateTo(s_goal.angles, n_speed);
		self waittill("movedone");
		level flag::wait_till_clear("surging_inward");
		while(isdefined(s_goal.target))
		{
			s_goal = struct::get(s_goal.target);
			level flag::wait_till("surging_inward");
			while(!self istouching(var_12377408))
			{
				wait(0.1);
			}
			n_speed = Distance(s_goal.origin, self.origin) * var_b097e0fd;
			self clientfield::increment("water_splash_lrg");
			self moveto(s_goal.origin, n_speed);
			self RotateTo(s_goal.angles, n_speed);
			self waittill("movedone");
			if(isdefined(s_goal.target))
			{
				level flag::wait_till_clear("surging_inward");
			}
		}
	}
	self thread function_d1bc8584();
	self thread function_43990014(var_12377408);
}

/*
	Name: function_43990014
	Namespace: namespace_79e1cd97
	Checksum: 0x18CC671F
	Offset: 0x4BE0
	Size: 0xB7
	Parameters: 1
	Flags: None
*/
function function_43990014(var_12377408)
{
	self endon("death");
	var_12377408 endon("death");
	while(1)
	{
		level flag::wait_till("surging_inward");
		while(!self istouching(var_12377408))
		{
			wait(0.1);
		}
		self clientfield::increment("water_splash_lrg");
		level flag::wait_till_clear("surging_inward");
	}
}

/*
	Name: function_d1bc8584
	Namespace: namespace_79e1cd97
	Checksum: 0x78DD5729
	Offset: 0x4CA0
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_d1bc8584()
{
	self endon("death");
	if(isdefined(self.script_int))
	{
		str_scene = "p7_fxanim_cp_blackstation_cars_rocking_0" + self.script_int + "_bundle";
		level thread scene::Play(str_scene);
	}
}

/*
	Name: function_98c7a42
	Namespace: namespace_79e1cd97
	Checksum: 0x2BA9FE1C
	Offset: 0x4D08
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_98c7a42()
{
	if(isdefined(self.modelscale))
	{
		self SetScale(self.modelscale);
	}
}

/*
	Name: function_c1972ac
	Namespace: namespace_79e1cd97
	Checksum: 0xCD9ACE91
	Offset: 0x4D40
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_c1972ac()
{
	self endon("death");
	level endon(self.script_noteworthy);
	level endon("hash_407abab8");
	while(1)
	{
		while(Distance2DSquared(self.origin, level.var_2fd26037.origin) > 722500)
		{
			wait(0.05);
		}
		self thread function_2403047c();
		break;
	}
}

/*
	Name: function_2403047c
	Namespace: namespace_79e1cd97
	Checksum: 0x87CB8A7C
	Offset: 0x4DD8
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_2403047c()
{
	level endon("hash_407abab8");
	level flag::clear("kill_surge");
	level notify("hash_81a3b4e0");
	while(isdefined(self) && level.var_2fd26037 istouching(self))
	{
		wait(0.05);
	}
	level flag::set("kill_surge");
}

/*
	Name: function_32d3b286
	Namespace: namespace_79e1cd97
	Checksum: 0xB51D6C1A
	Offset: 0x4E70
	Size: 0x11B
	Parameters: 1
	Flags: None
*/
function function_32d3b286(player)
{
	self endon("death");
	self endon("hash_4735ec09");
	level endon(self.script_noteworthy);
	player endon("death");
	while(1)
	{
		self waittill("trigger", var_4a36ffac);
		if(var_4a36ffac == player && !player.var_1cd4d4e6)
		{
			player.var_1cd4d4e6 = 1;
			player thread function_b8c35195(self);
			player thread function_c61ca0be(self);
			player thread function_adade905(self);
			player thread function_6b6e7b58(self);
			player playsound("evt_surge_impact");
			break;
		}
	}
}

/*
	Name: function_6b6e7b58
	Namespace: namespace_79e1cd97
	Checksum: 0xF4AD21E9
	Offset: 0x4F98
	Size: 0x73
	Parameters: 1
	Flags: None
*/
function function_6b6e7b58(var_12377408)
{
	self endon("death");
	while(self istouching(var_12377408))
	{
		util::wait_network_frame();
	}
	wait(0.5);
	if(self.var_eb7c5a24)
	{
		self function_151e32b9(0);
	}
}

/*
	Name: function_b8c35195
	Namespace: namespace_79e1cd97
	Checksum: 0x651B15E1
	Offset: 0x5018
	Size: 0xE3
	Parameters: 1
	Flags: None
*/
function function_b8c35195(var_12377408)
{
	self endon("death");
	self clientfield::set_to_player("wave_hit", 1);
	self clientfield::set_to_player("wind_blur", 1);
	while(isdefined(var_12377408) && self istouching(var_12377408))
	{
		wait(0.05);
	}
	self.var_1cd4d4e6 = 0;
	if(isdefined(var_12377408))
	{
		var_12377408 notify("hash_4735ec09");
	}
	self clientfield::set_to_player("wave_hit", 0);
	self clientfield::set_to_player("wind_blur", 0);
}

/*
	Name: function_adade905
	Namespace: namespace_79e1cd97
	Checksum: 0x2E8D057D
	Offset: 0x5108
	Size: 0x97
	Parameters: 1
	Flags: None
*/
function function_adade905(t_wave)
{
	level endon("hash_6f645037");
	self endon("death");
	self endon("hash_6cda3f32");
	t_wave endon("hash_4735ec09");
	Earthquake(0.5, 2, self.origin, 100);
	while(1)
	{
		self PlayRumbleOnEntity("damage_heavy");
		wait(0.1);
	}
}

/*
	Name: function_c61ca0be
	Namespace: namespace_79e1cd97
	Checksum: 0x20E33826
	Offset: 0x51A8
	Size: 0x19B
	Parameters: 1
	Flags: None
*/
function function_c61ca0be(t_wave)
{
	level endon("hash_6f645037");
	self endon("death");
	self endon("hash_6cda3f32");
	t_wave endon("hash_4735ec09");
	n_push_strength = 200;
	v_dir = AnglesToForward(VectorScale((0, 1, 0), 90));
	while(1)
	{
		if(!self.var_4cfe7265 && !self.var_eb7c5a24 && (!isdefined(self.laststand) && self.laststand))
		{
			self SetVelocity(v_dir * n_push_strength);
		}
		else if(isdefined(self.var_b1a4293e))
		{
			var_3b8c7376 = Distance2DSquared(self.origin, self.var_b1a4293e.origin);
			if(Distance2DSquared(self.origin, self.var_b1a4293e.origin) > 10000)
			{
				self SetVelocity(v_dir * n_push_strength);
			}
		}
		if(!self.var_f82cc610)
		{
			self notify("hash_6cda3f32");
			self util::hide_hint_text();
			break;
		}
		wait(0.05);
	}
}

/*
	Name: function_252086f2
	Namespace: namespace_79e1cd97
	Checksum: 0x3110F39C
	Offset: 0x5350
	Size: 0xF7
	Parameters: 1
	Flags: None
*/
function function_252086f2(var_473cf959)
{
	level endon("hash_6f645037");
	var_473cf959 endon("death");
	while(1)
	{
		foreach(player in level.players)
		{
			if(player istouching(var_473cf959))
			{
				player.var_f82cc610 = 1;
				var_473cf959.var_f52921cf = 1;
			}
		}
		wait(0.05);
	}
}

/*
	Name: function_55221935
	Namespace: namespace_79e1cd97
	Checksum: 0x1641F503
	Offset: 0x5450
	Size: 0x337
	Parameters: 0
	Flags: None
*/
function function_55221935()
{
	self notify("hash_8af17fe2");
	self endon("hash_8af17fe2");
	self endon("death");
	var_473cf959 = GetEnt("port_assault_low_surge", "targetname");
	var_473cf959 endon("death");
	self.var_3f081af5 = 0;
	while(1)
	{
		while(self istouching(var_473cf959))
		{
			self.var_3f081af5 = 1;
			self.var_f82cc610 = 1;
			self AllowProne(0);
			self AllowSprint(0);
			if(!(isdefined(var_473cf959.var_f52921cf) && var_473cf959.var_f52921cf))
			{
				switch(var_473cf959.script_string)
				{
					case "high":
					{
						self setMoveSpeedScale(0.7);
						break;
					}
					case default:
					{
						self setMoveSpeedScale(0.9);
						break;
					}
				}
				break;
			}
			switch(var_473cf959.script_string)
			{
				case "high":
				{
					self setMoveSpeedScale(0.5);
					break;
				}
				case default:
				{
					self setMoveSpeedScale(0.7);
					break;
				}
			}
			wait(0.05);
		}
		var_e59bb0e8 = GetEntArray(var_473cf959.script_noteworthy, "script_noteworthy");
		var_77bf815f = 0;
		foreach(trigger in var_e59bb0e8)
		{
			if(self istouching(trigger))
			{
				var_77bf815f = 1;
			}
		}
		if(!var_77bf815f)
		{
			self setMoveSpeedScale(1);
			self AllowProne(1);
			self AllowSprint(1);
			self.var_3f081af5 = 0;
			self.var_f82cc610 = 0;
		}
		wait(0.05);
	}
}

/*
	Name: function_e7121462
	Namespace: namespace_79e1cd97
	Checksum: 0x3F3F8F35
	Offset: 0x5790
	Size: 0x87
	Parameters: 0
	Flags: None
*/
function function_e7121462()
{
	self endon("death");
	while(1)
	{
		while(level.var_2fd26037 istouching(self))
		{
			level.var_2fd26037 ASMSetAnimationRate(0.9);
			wait(0.1);
		}
		level.var_2fd26037 ASMSetAnimationRate(1);
		wait(0.1);
	}
}

/*
	Name: function_2a18b01f
	Namespace: namespace_79e1cd97
	Checksum: 0xB90D3E42
	Offset: 0x5820
	Size: 0x169
	Parameters: 0
	Flags: None
*/
function function_2a18b01f()
{
	var_1c4b4b63 = GetEntArray("pier_wave_left", "script_noteworthy");
	var_d8a504d6 = GetEntArray("pier_wave_right", "script_noteworthy");
	var_f6a86bdd = ArrayCombine(var_1c4b4b63, var_d8a504d6, 0, 0);
	foreach(wave in var_f6a86bdd)
	{
		wave ghost();
		t_wave = GetEnt(wave.target, "targetname");
		t_wave EnableLinkTo();
		t_wave LinkTo(wave);
	}
}

/*
	Name: function_9ad97cf7
	Namespace: namespace_79e1cd97
	Checksum: 0x6247E897
	Offset: 0x5998
	Size: 0xA9
	Parameters: 0
	Flags: None
*/
function function_9ad97cf7()
{
	level flag::wait_till("all_players_spawned");
	foreach(player in level.players)
	{
		player thread function_f99affa5();
	}
}

/*
	Name: function_f99affa5
	Namespace: namespace_79e1cd97
	Checksum: 0x15560A37
	Offset: 0x5A50
	Size: 0x6D
	Parameters: 0
	Flags: None
*/
function function_f99affa5()
{
	var_8ad4cf96 = GetEntArray("trigger_pier_safe", "targetname");
	for(i = 0; i < var_8ad4cf96.size; i++)
	{
		self thread function_fab6808c();
	}
}

/*
	Name: function_fab6808c
	Namespace: namespace_79e1cd97
	Checksum: 0xA890E404
	Offset: 0x5AC8
	Size: 0x7F
	Parameters: 0
	Flags: None
*/
function function_fab6808c()
{
	self endon("death");
	while(1)
	{
		self waittill("trigger", player);
		if(isPlayer(player))
		{
			self.var_4cfe7265 = 1;
			player notify("safezone_trigger");
			self thread function_34e20912(player);
		}
	}
}

/*
	Name: function_34e20912
	Namespace: namespace_79e1cd97
	Checksum: 0x71F16EDA
	Offset: 0x5B50
	Size: 0x5F
	Parameters: 1
	Flags: None
*/
function function_34e20912(player)
{
	player endon("death");
	player endon("safezone_trigger");
	while(1)
	{
		if(!player istouching(self))
		{
			self.var_4cfe7265 = 0;
			break;
		}
		wait(0.05);
	}
}

/*
	Name: wave_manager
	Namespace: namespace_79e1cd97
	Checksum: 0x2889CC0B
	Offset: 0x5BB8
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function wave_manager()
{
	self endon("death");
	while(1)
	{
		wait(RandomFloatRange(3.5, 4.5));
		level thread function_cf51be1b(self);
		self.var_5963798b = 0;
	}
}

/*
	Name: function_cf51be1b
	Namespace: namespace_79e1cd97
	Checksum: 0xC4D7A7BE
	Offset: 0x5C20
	Size: 0x497
	Parameters: 1
	Flags: None
*/
function function_cf51be1b(var_473cf959)
{
	level flag::clear("kill_wave");
	level endon("hash_a0a82373");
	var_473cf959 endon("death");
	level notify("hash_9a604c47");
	wait(1);
	var_1c4b4b63 = GetEntArray("pier_wave_left", "script_noteworthy");
	var_d8a504d6 = GetEntArray("pier_wave_right", "script_noteworthy");
	var_f6a86bdd = ArrayCombine(var_1c4b4b63, var_d8a504d6, 0, 0);
	var_32cdba86 = var_f6a86bdd[randomIntRange(0, var_f6a86bdd.size)];
	var_fcc4e588 = struct::get(var_32cdba86.target, "targetname");
	t_wave = GetEnt(var_32cdba86.target, "targetname");
	var_32cdba86 playsound("evt_wave_dist");
	t_wave playsound("evt_wave_splash");
	Array::thread_all(GetEntArray("wave_fodder", "script_noteworthy"), &function_d2607594, t_wave, var_fcc4e588);
	foreach(player in level.players)
	{
		player thread function_486381ce(t_wave);
	}
	t_wave thread function_e5633001();
	level thread move_wave(var_32cdba86);
	while(1)
	{
		foreach(player in level.players)
		{
			if(player istouching(t_wave))
			{
				if(!isdefined(player GetLuiMenu("WaveWarning")))
				{
					player thread function_4d386bf("WaveWarning", "kill_wave");
				}
				v_dir = AnglesToForward((0, var_fcc4e588.angles[1], 0));
				n_push_strength = 250;
				t_wave.var_5963798b = 1;
				if(!player.var_4cfe7265 && !player.var_eb7c5a24)
				{
					player SetVelocity(v_dir * n_push_strength);
				}
				if(player.var_eb7c5a24)
				{
					player PlayRumbleOnEntity("bs_wave_anchored");
					continue;
				}
				player PlayRumbleOnEntity("bs_wave");
			}
		}
		wait(0.05);
	}
}

/*
	Name: function_d2607594
	Namespace: namespace_79e1cd97
	Checksum: 0xF4AF62AF
	Offset: 0x60C0
	Size: 0x107
	Parameters: 2
	Flags: None
*/
function function_d2607594(t_wave, var_fcc4e588)
{
	self endon("death");
	t_wave endon("death");
	level endon("hash_a0a82373");
	while(1)
	{
		if(self istouching(t_wave))
		{
			v_dir = VectorNormalize(self.origin - (var_fcc4e588.origin[0], self.origin[1], var_fcc4e588.origin[2]));
			self StartRagdoll();
			self LaunchRagdoll(v_dir * 100);
			self kill();
		}
		wait(0.05);
	}
}

/*
	Name: move_wave
	Namespace: namespace_79e1cd97
	Checksum: 0xCAFA6539
	Offset: 0x61D0
	Size: 0x28B
	Parameters: 1
	Flags: None
*/
function move_wave(var_32cdba86)
{
	var_fcc4e588 = struct::get(var_32cdba86.target, "targetname");
	var_32cdba86.t_wave = GetEnt(var_32cdba86.target, "targetname");
	var_32cdba86.origin = var_fcc4e588.origin;
	var_32cdba86.angles = var_fcc4e588.angles;
	if(var_32cdba86.script_noteworthy == "pier_wave_left")
	{
		n_dist = -450;
	}
	else
	{
		n_dist = 450;
	}
	var_32cdba86 moveto(var_32cdba86.origin + VectorScale((0, 0, 1), 150), 0.1);
	var_32cdba86 waittill("movedone");
	var_32cdba86 moveto(var_32cdba86.origin + (n_dist, 0, 150), 2.5);
	foreach(player in level.players)
	{
		var_32cdba86 thread function_bccf1e12(player);
	}
	var_32cdba86 thread function_4083c129();
	var_32cdba86 waittill("movedone");
	var_32cdba86 moveto(var_32cdba86.origin + (n_dist, 0, -150), 0.5);
	var_32cdba86 waittill("movedone");
	var_32cdba86 notify("hash_1144b7ed");
	level flag::set("kill_wave");
}

/*
	Name: function_bccf1e12
	Namespace: namespace_79e1cd97
	Checksum: 0x736AF07F
	Offset: 0x6468
	Size: 0xEF
	Parameters: 1
	Flags: None
*/
function function_bccf1e12(player)
{
	player endon("death");
	self endon("hash_1144b7ed");
	player.var_b7677aee = 0;
	while(1)
	{
		self.t_wave waittill("trigger", var_4a36ffac);
		if(var_4a36ffac == player && !player.var_b7677aee)
		{
			var_cbf4698a = player.attackerAccuracy;
			player.attackerAccuracy = 0;
			player.var_b7677aee = 1;
			self waittill("movedone");
			player.attackerAccuracy = var_cbf4698a;
			player.var_b7677aee = 0;
		}
	}
}

/*
	Name: function_486381ce
	Namespace: namespace_79e1cd97
	Checksum: 0xA755B7CA
	Offset: 0x6560
	Size: 0x8F
	Parameters: 1
	Flags: None
*/
function function_486381ce(var_473cf959)
{
	self endon("death");
	var_473cf959 endon("death");
	level endon("hash_4f4e78f4");
	self.var_5963798b = 0;
	while(1)
	{
		while(self istouching(var_473cf959))
		{
			self.var_5963798b = 1;
			wait(0.05);
		}
		self.var_5963798b = 0;
		wait(0.05);
	}
}

/*
	Name: function_e5633001
	Namespace: namespace_79e1cd97
	Checksum: 0xFADF8B6C
	Offset: 0x65F8
	Size: 0x9F
	Parameters: 0
	Flags: None
*/
function function_e5633001()
{
	self endon("death");
	level endon("hash_4f4e78f4");
	while(1)
	{
		self waittill("trigger", var_480743);
		if(isalive(var_480743) && var_480743.team == "axis" && !isdefined(var_480743.var_284432c3))
		{
			self function_9cf489b(var_480743);
		}
	}
}

/*
	Name: function_9cf489b
	Namespace: namespace_79e1cd97
	Checksum: 0x45FD0E5C
	Offset: 0x66A0
	Size: 0x1BB
	Parameters: 1
	Flags: None
*/
function function_9cf489b(var_480743)
{
	self endon("death");
	var_480743 endon("death");
	var_480743.var_284432c3 = 1;
	var_201cd90f = var_480743.angles[1];
	if(var_201cd90f >= 0 && var_201cd90f <= 180)
	{
		if(self.script_noteworthy == "pier_wave_left_trigger")
		{
			var_94edb8e1 = -100;
			var_480743 thread scene::Play("cin_bla_06_02_vign_wave_swept_left", var_480743);
		}
		else
		{
			var_94edb8e1 = 100;
			var_480743 thread scene::Play("cin_bla_06_02_vign_wave_swept_right", var_480743);
		}
	}
	else if(self.script_noteworthy == "pier_wave_left_trigger")
	{
		var_94edb8e1 = -100;
		var_480743 thread scene::Play("cin_bla_06_02_vign_wave_swept_right", var_480743);
	}
	else
	{
		var_94edb8e1 = 100;
		var_480743 thread scene::Play("cin_bla_06_02_vign_wave_swept_left", var_480743);
	}
	var_480743 waittill("hash_25476af1");
	var_480743 StartRagdoll();
	var_480743 LaunchRagdoll((0, 100, 40));
	var_480743 kill();
}

/*
	Name: function_d01267bd
	Namespace: namespace_79e1cd97
	Checksum: 0x84209868
	Offset: 0x6868
	Size: 0x133
	Parameters: 3
	Flags: None
*/
function function_d01267bd(var_2e939094, n_delay, str_endon)
{
	if(!isdefined(var_2e939094))
	{
		var_2e939094 = 1;
	}
	if(!isdefined(n_delay))
	{
		n_delay = 1;
	}
	self endon("death");
	if(isdefined(str_endon))
	{
		level endon(str_endon);
	}
	n_guys = 0;
	while(n_guys < var_2e939094)
	{
		ai_gunner = self vehicle::get_rider("gunner1");
		if(isalive(ai_gunner))
		{
			ai_gunner waittill("death");
		}
		else
		{
			ai_gunner = function_392ca6eb(self);
			if(isalive(ai_gunner))
			{
				ai_gunner vehicle::get_in(self, "gunner1", 0);
				n_guys++;
			}
		}
		wait(n_delay);
	}
}

/*
	Name: function_392ca6eb
	Namespace: namespace_79e1cd97
	Checksum: 0xB7B7D45E
	Offset: 0x69A8
	Size: 0x6F
	Parameters: 1
	Flags: None
*/
function function_392ca6eb(vh_truck)
{
	a_ai_enemies = GetAIArchetypeArray("human", "axis");
	a_ai_gunners = ArraySortClosest(a_ai_enemies, vh_truck.origin);
	return a_ai_gunners[0];
}

/*
	Name: function_fae23684
	Namespace: namespace_79e1cd97
	Checksum: 0x49CBBA78
	Offset: 0x6A20
	Size: 0x7B
	Parameters: 1
	Flags: None
*/
function function_fae23684(str_pos)
{
	ai_rider = self vehicle::get_rider(str_pos);
	if(isdefined(ai_rider))
	{
		ai_rider vehicle::get_out();
		ai_rider util::stop_magic_bullet_shield();
		ai_rider.noCybercom = 0;
	}
}

/*
	Name: function_c262adca
	Namespace: namespace_79e1cd97
	Checksum: 0xD1D4E3D0
	Offset: 0x6AA8
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_c262adca()
{
	self endon("death");
	while(!isdefined(self vehicle::get_rider("driver")))
	{
		wait(0.1);
	}
	ai_driver = self vehicle::get_rider("driver");
	if(isalive(ai_driver))
	{
		ai_driver.noCybercom = 1;
		ai_driver util::magic_bullet_shield();
	}
}

/*
	Name: function_4083c129
	Namespace: namespace_79e1cd97
	Checksum: 0x8872340F
	Offset: 0x6B58
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_4083c129()
{
	self.e_fx = util::spawn_model("tag_origin", self.origin);
	self.e_fx LinkTo(self);
	self.e_fx FX::Play("wave_pier", self.e_fx.origin + VectorScale((0, 0, -1), 32), undefined, 2, 1);
	self waittill("movedone");
	if(isdefined(self.e_fx))
	{
		self.e_fx delete();
	}
}

/*
	Name: function_90db9f9c
	Namespace: namespace_79e1cd97
	Checksum: 0x42051A9B
	Offset: 0x6C20
	Size: 0xC1
	Parameters: 0
	Flags: None
*/
function function_90db9f9c()
{
	a_corpses = GetEntArray("immortal_police_station_corpse", "targetname");
	foreach(var_fe80b161 in a_corpses)
	{
		var_fe80b161 thread scene::Play(var_fe80b161.script_noteworthy, var_fe80b161);
	}
}

/*
	Name: function_6778ea09
	Namespace: namespace_79e1cd97
	Checksum: 0x79D5128C
	Offset: 0x6CF0
	Size: 0x1B3
	Parameters: 1
	Flags: None
*/
function function_6778ea09(var_d7636298)
{
	switch(var_d7636298)
	{
		case "none":
		{
			var_4d33888e = 0;
			break;
		}
		case "light_se":
		{
			var_4d33888e = 1;
			break;
		}
		case "med_se":
		{
			var_4d33888e = 2;
			break;
		}
		case "drench_se":
		{
			var_4d33888e = 3;
			break;
		}
		case "light_ne":
		{
			var_4d33888e = 4;
			break;
		}
		case "med_ne":
		{
			var_4d33888e = 5;
			break;
		}
		case "drench_ne":
		{
			var_4d33888e = 6;
			break;
		}
	}
	if(self == level)
	{
		foreach(player in level.players)
		{
			player.var_1b3b1022 = 1;
			player clientfield::set_to_player("player_rain", var_4d33888e);
		}
	}
	else if(isPlayer(self))
	{
		self.var_1b3b1022 = 1;
		self clientfield::set_to_player("player_rain", var_4d33888e);
	}
}

/*
	Name: function_c2d8b452
	Namespace: namespace_79e1cd97
	Checksum: 0x3BFFF747
	Offset: 0x6EB0
	Size: 0xEF
	Parameters: 2
	Flags: None
*/
function function_c2d8b452(str_exploder, str_endon)
{
	level endon(str_endon);
	while(1)
	{
		for(i = 0; i < 5; i++)
		{
			level exploder::exploder(str_exploder);
			wait(0.05);
			level exploder::stop_exploder(str_exploder);
			wait(0.05);
		}
		playsoundatposition("amb_2d_thunder_hits", (0, 0, 0));
		level exploder::exploder_duration(str_exploder, 1);
		wait(RandomFloatRange(8, 11.5));
	}
}

/*
	Name: function_bd1bfce2
	Namespace: namespace_79e1cd97
	Checksum: 0xA61E9893
	Offset: 0x6FA8
	Size: 0x13F
	Parameters: 5
	Flags: None
*/
function function_bd1bfce2(var_4afc7733, var_d8f507f8, var_fef78261, var_6908bd27, str_endon)
{
	level endon(str_endon);
	while(1)
	{
		exploder::exploder(var_4afc7733);
		level thread function_5bf870a4(var_6908bd27);
		wait(RandomFloatRange(0.05, 0.11));
		exploder::exploder(var_d8f507f8);
		level thread function_5bf870a4(var_6908bd27);
		wait(RandomFloatRange(0.11, 0.25));
		if(math::cointoss())
		{
			exploder::exploder(var_fef78261);
			level thread function_5bf870a4(var_6908bd27);
		}
		wait(RandomFloatRange(0.7, 3));
	}
}

/*
	Name: function_5bf870a4
	Namespace: namespace_79e1cd97
	Checksum: 0xB6779369
	Offset: 0x70F0
	Size: 0x99
	Parameters: 1
	Flags: None
*/
function function_5bf870a4(var_6908bd27)
{
	foreach(player in level.activePlayers)
	{
		player clientfield::set_to_player("toggle_ukko", var_6908bd27);
	}
}

/*
	Name: function_d1dc735f
	Namespace: namespace_79e1cd97
	Checksum: 0x23A0262A
	Offset: 0x7198
	Size: 0x19B
	Parameters: 0
	Flags: None
*/
function function_d1dc735f()
{
	level thread function_3ceb3ad7();
	foreach(player in level.activePlayers)
	{
		player thread function_2c33b48e();
	}
	level.var_2fd26037 colors::disable();
	level.var_2fd26037 ai::set_behavior_attribute("move_mode", "rambo");
	level.var_2fd26037 ai::set_behavior_attribute("can_melee", 0);
	level thread scene::Play("cin_bla_05_01_debristraversal_vign_useanchor_start");
	level waittill("hash_153898ed");
	level flag::set("hendricks_debris_traversal_ready");
	level.var_2fd26037 ai::set_behavior_attribute("move_mode", "normal");
	level.var_2fd26037 ai::set_behavior_attribute("can_melee", 1);
}

/*
	Name: function_ef275fb3
	Namespace: namespace_79e1cd97
	Checksum: 0x45D1E0C6
	Offset: 0x7340
	Size: 0x5F
	Parameters: 0
	Flags: None
*/
function function_ef275fb3()
{
	self endon("death");
	while(1)
	{
		self waittill("missile_fire", e_proj);
		if(isdefined(e_proj))
		{
			e_proj thread function_eef51bcb(e_proj, self);
		}
		wait(0.05);
	}
}

/*
	Name: function_eef51bcb
	Namespace: namespace_79e1cd97
	Checksum: 0x3E5E116E
	Offset: 0x73A8
	Size: 0x11B
	Parameters: 2
	Flags: None
*/
function function_eef51bcb(e_proj, e_shooter)
{
	self endon("death");
	e_target = e_shooter.enemy;
	n_dist = DistanceSquared(e_shooter.origin, e_target.origin);
	var_c003c84d = GetEnt("wind_target", "targetname");
	while(isdefined(e_proj))
	{
		if(isdefined(e_target) && DistanceSquared(e_proj.origin, e_target.origin) < 0.5 * n_dist)
		{
			e_proj Missile_SetTarget(var_c003c84d);
			break;
		}
		wait(0.05);
	}
}

/*
	Name: function_33942907
	Namespace: namespace_79e1cd97
	Checksum: 0x4537294D
	Offset: 0x74D0
	Size: 0x21D
	Parameters: 0
	Flags: None
*/
function function_33942907()
{
	level notify("hash_affb79f4");
	level endon("hash_affb79f4");
	while(1)
	{
		if(isdefined(level.heroes) && level.heroes.size > 0)
		{
			foreach(e_hero in level.heroes)
			{
				if(e_hero function_30dbc9bf())
				{
					e_hero.allowbattlechatter["bc"] = 1;
					continue;
				}
				e_hero.allowbattlechatter["bc"] = 0;
			}
		}
		a_ai = GetAITeamArray("axis");
		var_39e0fee4 = 0;
		if(isdefined(a_ai) && a_ai.size > 0)
		{
			foreach(ai in a_ai)
			{
				if(ai function_30dbc9bf())
				{
					var_39e0fee4 = 1;
				}
			}
		}
		else if(var_39e0fee4)
		{
			battlechatter::function_d9f49fba(1);
		}
		else
		{
			battlechatter::function_d9f49fba(0);
		}
		wait(1);
	}
}

/*
	Name: function_704add6a
	Namespace: namespace_79e1cd97
	Checksum: 0x1343BB83
	Offset: 0x76F8
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_704add6a()
{
	level notify("hash_affb79f4");
	if(isdefined(level.heroes) && level.heroes.size > 0)
	{
		foreach(e_hero in level.heroes)
		{
			e_hero.allowbattlechatter["bc"] = 1;
		}
	}
	battlechatter::function_d9f49fba(1);
}

/*
	Name: function_30dbc9bf
	Namespace: namespace_79e1cd97
	Checksum: 0xF03FB272
	Offset: 0x77D8
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_30dbc9bf()
{
	return isdefined(self) && isalive(self) && (!isdefined(self.current_scene) && !isdefined(self._o_scene)) && (!isdefined(self.ignoreme) && self.ignoreme && (!isdefined(self.ignoreall) && self.ignoreall));
}

/*
	Name: dynamic_run_speed
	Namespace: namespace_79e1cd97
	Checksum: 0x1A1108F2
	Offset: 0x7858
	Size: 0x293
	Parameters: 2
	Flags: None
*/
function dynamic_run_speed(var_c047ec73, var_3b15866b)
{
	if(!isdefined(var_c047ec73))
	{
		var_c047ec73 = 250;
	}
	if(!isdefined(var_3b15866b))
	{
		var_3b15866b = var_c047ec73 * 0.5;
	}
	self notify("start_dynamic_run_speed");
	self endon("death");
	self endon("start_dynamic_run_speed");
	self endon("stop_dynamic_run_speed");
	self thread stop_dynamic_run_speed();
	while(1)
	{
		wait(0.05);
		if(!isdefined(self.goalpos))
		{
			continue;
		}
		v_goal = self.goalpos;
		e_player = ArrayGetClosest(v_goal, level.players);
		e_closest = ArrayGetClosest(v_goal, Array(e_player, self));
		n_dist = Distance2DSquared(self.origin, e_player.origin);
		is_behind = isPlayer(e_closest);
		if(n_dist < var_3b15866b * var_3b15866b || is_behind)
		{
			self ai::set_behavior_attribute("cqb", 0);
			self ai::set_behavior_attribute("sprint", 1);
			continue;
		}
		else if(n_dist < var_c047ec73 * var_c047ec73)
		{
			self ai::set_behavior_attribute("cqb", 0);
			self ai::set_behavior_attribute("sprint", 0);
			continue;
		}
		else if(n_dist > var_c047ec73 * var_c047ec73 * 1.25)
		{
			self ai::set_behavior_attribute("cqb", 1);
			self ai::set_behavior_attribute("sprint", 0);
			continue;
		}
	}
}

/*
	Name: stop_dynamic_run_speed
	Namespace: namespace_79e1cd97
	Checksum: 0xF552E86
	Offset: 0x7AF8
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function stop_dynamic_run_speed()
{
	self endon("start_dynamic_run_speed");
	self endon("death");
	self waittill("stop_dynamic_run_speed");
	self ai::set_behavior_attribute("cqb", 0);
	self ai::set_behavior_attribute("sprint", 0);
}

/*
	Name: function_746a2da4
	Namespace: namespace_79e1cd97
	Checksum: 0x57BE1AB7
	Offset: 0x7B68
	Size: 0x2B
	Parameters: 2
	Flags: None
*/
function function_746a2da4(a_ents, var_54f8120e)
{
	util::function_93831e79(var_54f8120e);
}

/*
	Name: function_da77906f
	Namespace: namespace_79e1cd97
	Checksum: 0xA47C13A1
	Offset: 0x7BA0
	Size: 0x139
	Parameters: 2
	Flags: None
*/
function function_da77906f(a_ents, str_state)
{
	if(!isdefined(a_ents))
	{
		a_ents = [];
	}
	else if(!IsArray(a_ents))
	{
		a_ents = Array(a_ents);
	}
	foreach(e_ent in a_ents)
	{
		if(e_ent.SPAWNFLAGS & 1)
		{
			if(str_state === "connect")
			{
				e_ent connectpaths();
				continue;
			}
			if(str_state === "disconnect")
			{
				e_ent disconnectpaths(2, 0);
			}
		}
	}
}

/*
	Name: cleanup_ai
	Namespace: namespace_79e1cd97
	Checksum: 0x27986C94
	Offset: 0x7CE8
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function cleanup_ai()
{
	Array::run_all(GetAITeamArray("axis"), &delete);
}

/*
	Name: function_7aa1381
	Namespace: namespace_79e1cd97
	Checksum: 0x4BD619C1
	Offset: 0x7D30
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_7aa1381()
{
	self endon("death");
	self util::show_hint_text(&"COOP_EQUIP_MICROMISSILE");
	n_timeout = 0;
	while(self GetCurrentWeapon() != GetWeapon("micromissile_launcher") && n_timeout <= 10)
	{
		n_timeout = n_timeout + 0.1;
		wait(0.1);
	}
	if(self GetCurrentWeapon() == GetWeapon("micromissile_launcher"))
	{
		self.var_f44af1ef = 1;
	}
	self util::hide_hint_text();
}

/*
	Name: function_2292647e
	Namespace: namespace_79e1cd97
	Checksum: 0x79EFC614
	Offset: 0x7E30
	Size: 0xDD
	Parameters: 0
	Flags: None
*/
function function_2292647e()
{
	self endon("death");
	self endon("weapon_change");
	n_timeout = 0;
	while(!self AdsButtonPressed() && n_timeout >= 10)
	{
		n_timeout = n_timeout + 0.05;
		wait(0.05);
	}
	wait(2);
	if(isdefined(self GetLuiMenu("MissileLauncherHint")))
	{
		self CloseLUIMenu(self GetLuiMenu("MissileLauncherHint"));
		self.var_fca564e8 = 1;
		self notify("hash_242a99a3");
	}
}

/*
	Name: function_dd4b4942
	Namespace: namespace_79e1cd97
	Checksum: 0x362D22BD
	Offset: 0x7F18
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_dd4b4942()
{
	self endon("death");
	self endon("hash_242a99a3");
	self waittill("weapon_change");
	if(isdefined(self GetLuiMenu("MissileLauncherHint")))
	{
		self CloseLUIMenu(self GetLuiMenu("MissileLauncherHint"));
	}
}

/*
	Name: function_76b75dc7
	Namespace: namespace_79e1cd97
	Checksum: 0xDFEF7507
	Offset: 0x7F98
	Size: 0xD7
	Parameters: 3
	Flags: None
*/
function function_76b75dc7(str_endon, var_cca258db, var_ab7d99d)
{
	if(!isdefined(var_cca258db))
	{
		var_cca258db = 12;
	}
	if(!isdefined(var_ab7d99d))
	{
		var_ab7d99d = 200;
	}
	level endon(str_endon);
	self endon("death");
	while(1)
	{
		self waittill("trigger", player);
		player thread function_ed7faf05();
		if(!player.var_32939eb7)
		{
			player.var_32939eb7 = 1;
			player thread function_7b145e0b(self, str_endon, var_cca258db, var_ab7d99d);
		}
	}
}

/*
	Name: function_7b145e0b
	Namespace: namespace_79e1cd97
	Checksum: 0xF3851C77
	Offset: 0x8078
	Size: 0x37B
	Parameters: 4
	Flags: None
*/
function function_7b145e0b(t_water, str_endon, var_cca258db, var_ab7d99d)
{
	self endon("death");
	level endon(str_endon);
	t_water endon("death");
	if(self laststand::player_is_in_laststand())
	{
		self.var_116f2fb8 = 1;
	}
	e_linkto = util::spawn_model("tag_origin", self.origin, self.angles);
	self PlayerLinkToDelta(e_linkto, "tag_origin", 1, 45, 45, 45, 45);
	self clientfield::set_to_player("player_water_swept", 1);
	e_linkto thread scene::Play("cin_blackstation_24_01_ride_vign_body_player_flail", self);
	e_linkto moveto((e_linkto.origin[0], e_linkto.origin[1], var_cca258db), 0.3);
	e_linkto waittill("movedone");
	s_pos = struct::get(t_water.target);
	n_dist = Distance(e_linkto.origin, s_pos.origin);
	n_time = n_dist / var_ab7d99d;
	e_linkto thread function_49510c4b(3);
	e_linkto moveto((s_pos.origin[0], s_pos.origin[1], var_cca258db), n_time);
	e_linkto waittill("movedone");
	e_linkto moveto(s_pos.origin, 1);
	e_linkto waittill("movedone");
	e_linkto scene::stop("cin_blackstation_24_01_ride_vign_body_player_flail");
	self Unlink();
	self.var_32939eb7 = 0;
	self clientfield::set_to_player("player_water_swept", 0);
	util::wait_network_frame();
	self SetPlayerAngles(s_pos.angles);
	e_linkto delete();
	self thread function_2c33b48e();
	if(self.var_116f2fb8)
	{
		self.var_116f2fb8 = 0;
		self DoDamage(self.health, self.origin);
	}
}

/*
	Name: function_49510c4b
	Namespace: namespace_79e1cd97
	Checksum: 0x93513290
	Offset: 0x8400
	Size: 0x47
	Parameters: 1
	Flags: None
*/
function function_49510c4b(n_rate)
{
	self endon("death");
	while(1)
	{
		self RotateYaw(-180, n_rate);
		wait(0.9);
	}
}

/*
	Name: function_d70754a2
	Namespace: namespace_79e1cd97
	Checksum: 0x641DAA87
	Offset: 0x8450
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_d70754a2()
{
	objectives::set("cp_level_blackstation_qzone");
	objectives::set("cp_level_blackstation_intercept");
	objectives::set("cp_level_blackstation_goto_docks");
	objectives::set("cp_level_blackstation_neutralize");
	objectives::complete("cp_level_blackstation_neutralize");
}

/*
	Name: function_5d4fc658
	Namespace: namespace_79e1cd97
	Checksum: 0x7B8C0CEE
	Offset: 0x84D8
	Size: 0x161
	Parameters: 0
	Flags: None
*/
function function_5d4fc658()
{
	var_5db4d3e4 = GetEntArray("qzone_civilian_body", "targetname");
	foreach(e_corpse in var_5db4d3e4)
	{
		e_corpse thread scene::Play(e_corpse.script_noteworthy, e_corpse);
	}
	level flag::wait_till("tanker_go");
	foreach(e_corpse in var_5db4d3e4)
	{
		if(isdefined(e_corpse))
		{
			e_corpse delete();
		}
	}
}

/*
	Name: function_4f96504c
	Namespace: namespace_79e1cd97
	Checksum: 0x9D8AF911
	Offset: 0x8648
	Size: 0x101
	Parameters: 1
	Flags: None
*/
function function_4f96504c(ai_target)
{
	type = self cybercom::function_5e3d3aa();
	var_1eba5cf1 = VectorToAngles(ai_target.origin - self.origin);
	var_1eba5cf1 = (0, var_1eba5cf1[1], 0);
	self AnimScripted("ai_cybercom_anim", self.origin, var_1eba5cf1, "ai_base_rifle_" + type + "_exposed_cybercom_activate", "normal", undefined, undefined, 0.3, 0.3);
	self cybercom::function_f8669cbf(0);
	self waittillmatch("hash_39fa7e38");
}

/*
	Name: function_dccf6ccc
	Namespace: namespace_79e1cd97
	Checksum: 0x305EE62
	Offset: 0x8758
	Size: 0x1CF
	Parameters: 0
	Flags: None
*/
function function_dccf6ccc()
{
	self endon("hash_d60979de");
	while(1)
	{
		wait(RandomFloatRange(5, 7));
		if(isdefined(self.enemy) && !isdefined(self.enemy.current_scene) && !isdefined(self.enemy._o_scene) && self.enemy.archetype != "warlord")
		{
			ai_target = self.enemy;
			if(isalive(ai_target) && !self IsPlayingAnimScripted())
			{
				if(ai_target.archetype == "human")
				{
					var_3e2155a7 = "cybercom_immolation";
				}
				else if(math::cointoss())
				{
					var_3e2155a7 = "cybercom_servoshortout";
				}
				else
				{
					var_3e2155a7 = "cybercom_immolation";
				}
				self ai::set_ignoreall(1);
				self function_4f96504c(ai_target);
				if(isalive(ai_target))
				{
					self thread cybercom::function_d240e350(var_3e2155a7, ai_target, 0, 1);
				}
				self ai::set_ignoreall(0);
			}
		}
	}
}

/*
	Name: function_d870e0
	Namespace: namespace_79e1cd97
	Checksum: 0xAF75F464
	Offset: 0x8930
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_d870e0(str_trigger)
{
	self endon("death");
	trigger::wait_till(str_trigger, "targetname", self);
	self thread coop::function_e9f7384d();
}

/*
	Name: function_46dd77b0
	Namespace: namespace_79e1cd97
	Checksum: 0xAE1A498A
	Offset: 0x8988
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_46dd77b0()
{
	level endon("hash_e2a9cc43");
	level flag::wait_till("hendricks_debris_traversal_ready");
	wait(5);
	level.var_2fd26037 dialog::say("hend_hurry_it_up_we_need_0");
	wait(6);
	level.var_2fd26037 dialog::say("hend_what_are_you_waiting_6");
	wait(7);
	level.var_2fd26037 dialog::say("hend_we_d_better_get_movi_0");
}

/*
	Name: function_70aaf37b
	Namespace: namespace_79e1cd97
	Checksum: 0xE0FA11A
	Offset: 0x8A38
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_70aaf37b(b_active)
{
	var_4c225fa1 = GetEnt("hotel_blocker", "targetname");
	if(b_active)
	{
		var_4c225fa1 solid();
	}
	else
	{
		var_4c225fa1 notsolid();
	}
}

