#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_hazard;
#using scripts\cp\_load;
#using scripts\cp\_util;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\doors_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\math_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\util_shared;
#using scripts\shared\visionset_mgr_shared;

#namespace namespace_cba4cc55;

/*
	Name: function_588a8011
	Namespace: namespace_cba4cc55
	Checksum: 0xF656144A
	Offset: 0x3E0
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_588a8011()
{
	self endon("death");
	/#
		Assert(isdefined(self.target), "Dev Block strings are not supported" + self.origin + "Dev Block strings are not supported");
	#/
	var_598dabc3 = GetEntArray(self.target, "targetname");
	self waittill("trigger");
	self util::script_wait();
	Array::thread_all(var_598dabc3, &function_2c2e94d1);
}

/*
	Name: function_2c2e94d1
	Namespace: namespace_cba4cc55
	Checksum: 0x1CB32DF2
	Offset: 0x4A0
	Size: 0x215
	Parameters: 0
	Flags: None
*/
function function_2c2e94d1()
{
	self util::script_wait();
	time = 0.5;
	if(isdefined(self.script_float))
	{
		time = self.script_float;
	}
	if(!isdefined(self.script_string))
	{
		self.script_string = "move";
	}
	switch(self.script_string)
	{
		case "rotate":
		{
			if(isdefined(self.script_angles))
			{
				self RotateTo(self.script_angles, time, 0, 0);
			}
			else if(isdefined(self.script_int))
			{
				self RotateYaw(self.script_int, time, 0, 0);
			}
			break;
		}
		case "move":
		case default:
		{
			self SetMovingPlatformEnabled(1);
			if(isdefined(self.script_vector))
			{
				vector = self.script_vector;
				if(time >= 0.5)
				{
					self moveto(self.origin + self.script_vector, time, time * 0.25, time * 0.25);
				}
				else
				{
					self moveto(self.origin + self.script_vector, time);
				}
			}
			else if(isdefined(self.script_int))
			{
				self MoveZ(self.script_int, time, 0, 0);
			}
			wait(time);
			self SetMovingPlatformEnabled(0);
			break;
		}
	}
}

/*
	Name: function_f20239
	Namespace: namespace_cba4cc55
	Checksum: 0xCD27B823
	Offset: 0x6C0
	Size: 0x173
	Parameters: 1
	Flags: None
*/
function function_f20239(n_range)
{
	if(!isdefined(n_range))
	{
		n_range = 256;
	}
	self endon("death");
	self endon("hash_5906526");
	var_175d1224 = self.angles;
	var_f1b873af = (270, 90, 180);
	while(isdefined(self))
	{
		e_player = ArrayGetClosest(self.origin, level.players, n_range);
		if(!isdefined(e_player))
		{
			if(self.angles != var_175d1224)
			{
				self RotateTo(var_175d1224, 1);
			}
			wait(1);
			continue;
		}
		v_to_player = VectorToAngles(e_player.origin - self.origin);
		var_d9f1bf1e = (0, v_to_player[1], 0) + var_f1b873af;
		self RotateTo(var_d9f1bf1e, 0.5);
		self waittill("rotatedone");
	}
}

/*
	Name: function_359855
	Namespace: namespace_cba4cc55
	Checksum: 0xE7F08BE1
	Offset: 0x840
	Size: 0xFF
	Parameters: 1
	Flags: None
*/
function function_359855(n_range)
{
	if(!isdefined(n_range))
	{
		n_range = 512;
	}
	self endon("death");
	self endon("hash_5906526");
	while(1)
	{
		e_player = ArrayGetClosest(self.origin, level.players, n_range);
		if(!isdefined(e_player))
		{
			if(isdefined(self.var_960fdad0))
			{
				self.var_960fdad0 = undefined;
				self LookAtEntity();
			}
		}
		else if(!isdefined(self.var_960fdad0) || self.var_960fdad0 != e_player)
		{
			self.var_960fdad0 = e_player;
			self LookAtEntity(self.var_960fdad0);
		}
		wait(1);
	}
}

/*
	Name: do_in_order
	Namespace: namespace_cba4cc55
	Checksum: 0x998581EC
	Offset: 0x948
	Size: 0x77
	Parameters: 4
	Flags: None
*/
function do_in_order(func1, param1, func2, param2)
{
	if(isdefined(param1))
	{
		[[func1]](param1);
	}
	else
	{
		[[func1]]();
	}
	if(isdefined(param2))
	{
		[[func2]](param2);
	}
	else
	{
		[[func2]]();
	}
}

/*
	Name: delete_corpse
	Namespace: namespace_cba4cc55
	Checksum: 0xC677D0CA
	Offset: 0x9C8
	Size: 0xE3
	Parameters: 0
	Flags: None
*/
function delete_corpse()
{
	self notify("hash_f42cafec");
	self endon("hash_f42cafec");
	while(1)
	{
		a_bodies = GetCorpseArray();
		foreach(corpse in a_bodies)
		{
			if(isdefined(corpse))
			{
				corpse delete();
			}
		}
		wait(10);
	}
}

/*
	Name: function_36a6e271
	Namespace: namespace_cba4cc55
	Checksum: 0x28FDF9CE
	Offset: 0xAB8
	Size: 0x1CB
	Parameters: 2
	Flags: None
*/
function function_36a6e271(should_delete, a_ai)
{
	if(!isdefined(a_ai))
	{
		a_ai = [];
	}
	while(1)
	{
		var_790129b = 0;
		var_6c4dd462 = 0;
		foreach(player in level.players)
		{
			if(player istouching(self))
			{
				var_790129b++;
			}
		}
		foreach(ai in a_ai)
		{
			if(ai istouching(self))
			{
				var_6c4dd462++;
			}
		}
		if(var_790129b == level.players.size && var_6c4dd462 == a_ai.size)
		{
			if(isdefined(should_delete) && should_delete)
			{
				self util::self_delete();
			}
			break;
		}
		wait(0.1);
	}
}

/*
	Name: print3ddraw
	Namespace: namespace_cba4cc55
	Checksum: 0xEFE2795C
	Offset: 0xC90
	Size: 0x8F
	Parameters: 4
	Flags: None
*/
function print3ddraw(org, text, color, str_notify)
{
	/#
		if(isdefined(str_notify))
		{
			self endon(str_notify);
		}
		while(1)
		{
			if(isdefined(self) && isdefined(self.origin))
			{
				org = self.origin;
			}
			print3d(org, text, color);
			wait(0.05);
		}
	#/
}

/*
	Name: function_c22db411
	Namespace: namespace_cba4cc55
	Checksum: 0x1F255DC5
	Offset: 0xD28
	Size: 0x163
	Parameters: 1
	Flags: None
*/
function function_c22db411(n_level)
{
	switch(n_level)
	{
		case 1:
		{
			self ai::set_behavior_attribute("rogue_control", "forced_level_1");
			break;
		}
		case 2:
		{
			self ai::set_behavior_attribute("rogue_control", "forced_level_2");
			break;
		}
		case 3:
		{
			self ai::set_behavior_attribute("rogue_control", "forced_level_3");
			break;
		}
	}
	n_rand = RandomInt(5);
	if(n_rand == 0)
	{
		self ai::set_behavior_attribute("rogue_control_speed", "walk");
	}
	else if(n_rand == 1)
	{
		self ai::set_behavior_attribute("rogue_control_speed", "run");
	}
	else
	{
		self ai::set_behavior_attribute("rogue_control_speed", "sprint");
	}
}

/*
	Name: function_d2036e84
	Namespace: namespace_cba4cc55
	Checksum: 0x69546822
	Offset: 0xE98
	Size: 0xAB
	Parameters: 3
	Flags: None
*/
function function_d2036e84(var_ecc142a5, str_end_flag, var_bf402dd4)
{
	if(!isdefined(var_bf402dd4))
	{
		var_bf402dd4 = 1;
	}
	s_scene = struct::get(var_ecc142a5);
	s_scene thread scene::Play(level.var_2fd26037);
	level.var_2fd26037 waittill("goal");
	level flag::wait_till(str_end_flag);
	s_scene scene::stop();
}

/*
	Name: function_423cfae8
	Namespace: namespace_cba4cc55
	Checksum: 0x1EE48AA4
	Offset: 0xF50
	Size: 0x139
	Parameters: 2
	Flags: None
*/
function function_423cfae8(str_name, str_state)
{
	var_ae75b4be = struct::get_array(str_name, "targetname");
	if(isdefined(var_ae75b4be) && var_ae75b4be.size > 0)
	{
		foreach(s_door in var_ae75b4be)
		{
			if(str_state === "open")
			{
				unlock();
				open();
				continue;
			}
			close();
			Lock();
		}
	}
}

/*
	Name: function_c2ee574f
	Namespace: namespace_cba4cc55
	Checksum: 0xDF332340
	Offset: 0x1098
	Size: 0xE3
	Parameters: 2
	Flags: None
*/
function function_c2ee574f(var_ff608bc9, n_time)
{
	self playsound("evt_door_close_start");
	self PlayLoopSound("evt_door_close_loop", 0.5);
	self moveto(self.origin + var_ff608bc9, n_time, n_time * 0.1, n_time * 0.25);
	self waittill("movedone");
	self playsound("evt_door_close_stop");
	self StopLoopSound(0.4);
}

/*
	Name: function_aef08215
	Namespace: namespace_cba4cc55
	Checksum: 0xCEE734E1
	Offset: 0x1188
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_aef08215()
{
	level endon("hash_c9e53487");
	self waittill("trigger", e_player);
	level Quake(0.2, 2, self.origin, 5000);
}

/*
	Name: Quake
	Namespace: namespace_cba4cc55
	Checksum: 0x934C2773
	Offset: 0x11E8
	Size: 0x34B
	Parameters: 7
	Flags: None
*/
function Quake(n_mag, n_duration, v_org, n_range, var_77e1f19f, var_cab96061, str_rumble)
{
	if(!isdefined(n_range))
	{
		n_range = 5000;
	}
	if(!isdefined(var_77e1f19f))
	{
		var_77e1f19f = 1;
	}
	if(!isdefined(var_cab96061))
	{
		var_cab96061 = var_77e1f19f + 2;
	}
	if(!isdefined(str_rumble))
	{
		str_rumble = "cp_sgen_flood_earthquake_rumble";
	}
	e_player = Array::random(level.players);
	v_pos = math::random_vector(1700);
	PlayRumbleOnPosition(str_rumble, e_player.origin + v_pos);
	Earthquake(n_mag, n_duration, v_org, n_range);
	if(n_mag >= 3)
	{
		foreach(player in level.players)
		{
			player notify("hash_c468597b");
			visionset_mgr::activate("overlay", "earthquake_blur", player, 0.25);
			player util::delay(n_duration + 3, "new_quake", &visionset_mgr::deactivate, "overlay", "earthquake_blur", player);
			player shellshock("tankblast_mp", RandomFloatRange(var_77e1f19f, var_cab96061));
		}
	}
	v_angles = (RandomInt(360), RandomInt(360), RandomInt(360));
	v_forward = AnglesToForward(v_angles);
	n_range = RandomFloatRange(500, 1000);
	v_location = e_player.origin + v_forward * n_range;
	playsoundatposition("evt_base_explo_deep", v_location);
}

/*
	Name: function_d455824c
	Namespace: namespace_cba4cc55
	Checksum: 0xD19FE14C
	Offset: 0x1540
	Size: 0xAD
	Parameters: 0
	Flags: None
*/
function function_d455824c()
{
	v_origin = (0, 0, 0);
	foreach(player in level.players)
	{
		v_origin = v_origin + player.origin;
	}
	return v_origin / level.players.size;
}

/*
	Name: function_a527e6f9
	Namespace: namespace_cba4cc55
	Checksum: 0xD2F2FE2F
	Offset: 0x15F8
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_a527e6f9()
{
	self.script_accuracy = 0.2;
	self.health = 100;
	self.skipdeath = 1;
	self ASMSetAnimationRate(0.7);
	self clientfield::set("robot_bubbles", 1);
}

/*
	Name: function_6d1a2a8d
	Namespace: namespace_cba4cc55
	Checksum: 0x55593771
	Offset: 0x1670
	Size: 0xD9
	Parameters: 2
	Flags: None
*/
function function_6d1a2a8d(str_name, var_1ba2b2a5)
{
	var_ac33ad59 = struct::get_array("cp_coop_spawn", "targetname");
	foreach(var_7aeac9c6 in var_ac33ad59)
	{
		if(var_7aeac9c6.script_objective === str_name)
		{
			var_7aeac9c6.script_objective = var_1ba2b2a5;
		}
	}
}

/*
	Name: function_ceda7454
	Namespace: namespace_cba4cc55
	Checksum: 0x5521EADB
	Offset: 0x1758
	Size: 0x67
	Parameters: 0
	Flags: None
*/
function function_ceda7454()
{
	if(isai(self))
	{
		self ForceTeleport(self.origin + level.var_c490ab3b, self.angles);
	}
	else
	{
		self.origin = self.origin + level.var_c490ab3b;
	}
}

/*
	Name: function_9cb9697d
	Namespace: namespace_cba4cc55
	Checksum: 0x9827C40C
	Offset: 0x17C8
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_9cb9697d(str_scene)
{
	if(scene::is_active(str_scene))
	{
		scene::stop(str_scene);
	}
}

/*
	Name: player_stick
	Namespace: namespace_cba4cc55
	Checksum: 0x4BBDA627
	Offset: 0x1810
	Size: 0x123
	Parameters: 5
	Flags: None
*/
function player_stick(b_look, n_clamp_right, n_clamp_left, n_clamp_top, n_clamp_bottom)
{
	if(!isdefined(b_look))
	{
		b_look = 0;
	}
	self.m_link = spawn("script_model", self.origin);
	self.m_link.angles = self.angles;
	self.m_link SetModel("tag_origin");
	self AllowSprint(0);
	if(b_look)
	{
		self PlayerLinkToDelta(self.m_link, "tag_origin", 1, n_clamp_right, n_clamp_left, n_clamp_top, n_clamp_bottom, 1);
	}
	else
	{
		self PlayerLinkToAbsolute(self.m_link, "tag_origin");
	}
}

/*
	Name: player_unstick
	Namespace: namespace_cba4cc55
	Checksum: 0xD1E9FC39
	Offset: 0x1940
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function player_unstick()
{
	if(isdefined(self.m_link))
	{
		self.m_link delete();
		self AllowSprint(1);
	}
}

/*
	Name: round_up_to_ten
	Namespace: namespace_cba4cc55
	Checksum: 0x6F5CC564
	Offset: 0x1990
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function round_up_to_ten(n_value)
{
	var_ee3cd374 = n_value - n_value % 10;
	if(var_ee3cd374 < n_value)
	{
		var_ee3cd374 = var_ee3cd374 + 10;
	}
	return var_ee3cd374;
}

/*
	Name: add_notetrack_custom_function
	Namespace: namespace_cba4cc55
	Checksum: 0xFB4B8F22
	Offset: 0x19E8
	Size: 0xDD
	Parameters: 4
	Flags: None
*/
function add_notetrack_custom_function(str_anim, str_notetrack, func_callback, is_loop)
{
	if(self != level)
	{
		self endon("death");
	}
	level flagsys::wait_till(str_anim + "_playing");
	do
	{
		str_notify = self util::waittill_any_return(str_notetrack, str_anim + "_playing");
		if(str_notify == str_notetrack)
		{
			self thread [[func_callback]]();
		}
	}
	while(!(isdefined(is_loop) && is_loop && level flagsys::get(str_anim + "_playing")));
}

/*
	Name: fade_in
	Namespace: namespace_cba4cc55
	Checksum: 0x447689A9
	Offset: 0x1AD0
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function fade_in()
{
	Array::thread_all(level.players, &util::screen_fade_to_alpha, 0, 0.5);
}

/*
	Name: fade_out
	Namespace: namespace_cba4cc55
	Checksum: 0x438B8FFD
	Offset: 0x1B18
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function fade_out()
{
	Array::thread_all(level.players, &util::screen_fade_to_alpha, 1, 0.5);
}

/*
	Name: function_cb1e4146
	Namespace: namespace_cba4cc55
	Checksum: 0x8327AA49
	Offset: 0x1B60
	Size: 0x3B
	Parameters: 2
	Flags: None
*/
function function_cb1e4146(str_scene, var_54f8120e)
{
	level waittill(str_scene + "_done");
	util::function_93831e79(var_54f8120e);
}

/*
	Name: function_411dc61b
	Namespace: namespace_cba4cc55
	Checksum: 0xC46E378C
	Offset: 0x1BA8
	Size: 0xAF
	Parameters: 2
	Flags: None
*/
function function_411dc61b(var_a8a66403, var_df47d27)
{
	n_num = var_a8a66403 - var_df47d27;
	foreach(e_player in level.players)
	{
		n_num = n_num + var_df47d27;
	}
	return n_num;
}

/*
	Name: function_705fac33
	Namespace: namespace_cba4cc55
	Checksum: 0x876CEC4F
	Offset: 0x1C60
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_705fac33()
{
	level.var_d7c2e2b0 = level.gametypeSpawnWaiter;
	level.gametypeSpawnWaiter = &function_fad7287a;
}

/*
	Name: function_45953c88
	Namespace: namespace_cba4cc55
	Checksum: 0x10A275E
	Offset: 0x1C98
	Size: 0x41
	Parameters: 0
	Flags: None
*/
function function_45953c88()
{
	/#
		Assert(isdefined(level.var_d7c2e2b0));
	#/
	level.gametypeSpawnWaiter = level.var_d7c2e2b0;
	level notify("hash_e9a8e69c");
}

/*
	Name: function_fad7287a
	Namespace: namespace_cba4cc55
	Checksum: 0x2AEDE328
	Offset: 0x1CE8
	Size: 0x2F
	Parameters: 0
	Flags: None
*/
function function_fad7287a()
{
	level util::waittill_either("objective_changed", "hotjoin_enabled");
	return 1;
}

/*
	Name: function_3d026c12
	Namespace: namespace_cba4cc55
	Checksum: 0xE1CDECC7
	Offset: 0x1D20
	Size: 0xB9
	Parameters: 0
	Flags: None
*/
function function_3d026c12()
{
	foreach(e_player in level.players)
	{
		e_player FreezeControls(0);
		e_player util::show_hud(1);
		e_player enableWeapons();
	}
}

/*
	Name: refill_ammo
	Namespace: namespace_cba4cc55
	Checksum: 0x789D6943
	Offset: 0x1DE8
	Size: 0xD9
	Parameters: 0
	Flags: None
*/
function refill_ammo()
{
	var_8ea4a872 = self GetWeaponsList();
	foreach(w_weapon in var_8ea4a872)
	{
		self giveMaxAmmo(w_weapon);
		self SetWeaponAmmoClip(w_weapon, w_weapon.clipSize);
	}
}

/*
	Name: function_c8849158
	Namespace: namespace_cba4cc55
	Checksum: 0xAF54D07
	Offset: 0x1ED0
	Size: 0x213
	Parameters: 2
	Flags: None
*/
function function_c8849158(n_dist, n_delay)
{
	self endon("death");
	b_can_delete = 0;
	if(self flagsys::get("scriptedanim"))
	{
		self flagsys::wait_till_clear("scriptedanim");
	}
	if(isdefined(n_delay))
	{
		wait(n_delay);
	}
	while(!b_can_delete)
	{
		wait(1);
		foreach(player in level.players)
		{
			if(isVehicle(self))
			{
				var_911c6902 = self VehCanSee(player);
			}
			else if(IsActor(self))
			{
				var_911c6902 = self cansee(player);
			}
			else
			{
				ASSERTMSG("Dev Block strings are not supported");
				return;
			}
			/#
			#/
			if(!var_911c6902 && Distance(self.origin, player.origin) > n_dist && player util::is_player_looking_at(self.origin, undefined, 0) == 0)
			{
				b_can_delete = 1;
			}
		}
	}
	self delete();
}

