#using scripts\cp\_util;
#using scripts\shared\flag_shared;
#using scripts\shared\hud_util_shared;
#using scripts\shared\scoreevents_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace namespace_4cb2c123;

/*
	Name: __init__sytem__
	Namespace: namespace_4cb2c123
	Checksum: 0x2DF759D0
	Offset: 0x180
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__sytem__()
{
	system::register("pda_hack", &__init__, undefined, undefined);
}

/*
	Name: __init__
	Namespace: namespace_4cb2c123
	Checksum: 0x99EC1590
	Offset: 0x1C0
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function __init__()
{
}

#namespace namespace_d86d3a6;

/*
	Name: function_9b385ca5
	Namespace: namespace_d86d3a6
	Checksum: 0xEFC64391
	Offset: 0x1D0
	Size: 0x7F
	Parameters: 0
	Flags: None
*/
function function_9b385ca5()
{
	self.var_6ba6041f = 1;
	self.var_f6ed93ab = 0;
	self.var_4d9e1d20 = 0;
	self.var_63f3839a = 2;
	self.var_e9a4f350 = 72;
	self.var_b347a23 = 128;
	self.var_69e7c65d = &function_fd069dd4;
	self.var_724f1b05 = 0;
	self.var_eaee6a02 = "axis";
}

/*
	Name: function_5fba2032
	Namespace: namespace_d86d3a6
	Checksum: 0xF9B0C4B0
	Offset: 0x258
	Size: 0x13
	Parameters: 0
	Flags: None
*/
function function_5fba2032()
{
	clean_up();
}

/*
	Name: function_808cd5de
	Namespace: namespace_d86d3a6
	Checksum: 0xDF0F4703
	Offset: 0x278
	Size: 0x193
	Parameters: 5
	Flags: None
*/
function function_808cd5de(v_origin, str_hint_string, v_angles, var_a65e7c1a, var_5152e048)
{
	/#
		Assert(isdefined(v_origin), "Dev Block strings are not supported");
	#/
	if(!isdefined(v_angles))
	{
		v_angles = (0, 0, 0);
	}
	self.var_82559c86 = str_hint_string;
	self.var_1fa07047 = var_a65e7c1a;
	self.var_95115064 = var_5152e048;
	self.var_a2d77bbb = function_4336408f(v_origin, self.var_e9a4f350, self.var_b347a23, self.var_82559c86);
	self.var_a2d77bbb.angles = v_angles;
	self.var_c7295a83 = spawn("script_model", v_origin);
	self.var_c7295a83 SetModel("");
	self.var_c7295a83 notsolid();
	/#
		Assert(!self.var_f6ed93ab, "Dev Block strings are not supported");
	#/
	self.var_f6ed93ab = 1;
	enable_hacking();
	self thread function_341b7c41();
}

/*
	Name: function_57511b5b
	Namespace: namespace_d86d3a6
	Checksum: 0x4DD10459
	Offset: 0x418
	Size: 0x17
	Parameters: 1
	Flags: None
*/
function function_57511b5b(n_time)
{
	self.var_63f3839a = n_time;
}

/*
	Name: enable_hacking
	Namespace: namespace_d86d3a6
	Checksum: 0x198D3C44
	Offset: 0x438
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function enable_hacking()
{
	if(self.var_f6ed93ab)
	{
		if(self.var_eaee6a02 != "allies")
		{
			self.var_a2d77bbb setHintString(self.var_82559c86);
			self.var_a2d77bbb SetHintLowPriority(1);
			if(!self.var_4d9e1d20)
			{
				self thread function_341b7c41();
			}
		}
		else
		{
			self.var_a2d77bbb setHintString("");
			self.var_a2d77bbb SetHintLowPriority(1);
		}
	}
}

/*
	Name: disable_hacking
	Namespace: namespace_d86d3a6
	Checksum: 0xE5FD5D41
	Offset: 0x510
	Size: 0x67
	Parameters: 0
	Flags: None
*/
function disable_hacking()
{
	if(self.var_f6ed93ab)
	{
		self notify("hash_76b803d9");
		self.var_a2d77bbb setHintString("");
		self.var_a2d77bbb SetHintLowPriority(1);
		self.var_4d9e1d20 = 0;
	}
}

/*
	Name: function_fd069dd4
	Namespace: namespace_d86d3a6
	Checksum: 0x3C8995CA
	Offset: 0x580
	Size: 0xB7
	Parameters: 1
	Flags: None
*/
function function_fd069dd4(e_triggerer)
{
	self notify("hash_fd069dd4");
	self.var_eaee6a02 = "allies";
	self.var_a2d77bbb setHintString("");
	self.var_a2d77bbb SetHintLowPriority(1);
	if(isdefined(self.var_95115064))
	{
		var_5152e048 = self.var_95115064;
	}
	else
	{
		var_5152e048 = self;
	}
	if(isdefined(self.var_1fa07047))
	{
		var_5152e048 [[self.var_1fa07047]]();
	}
}

/*
	Name: function_ce55f4fa
	Namespace: namespace_d86d3a6
	Checksum: 0x7A93950C
	Offset: 0x640
	Size: 0xF
	Parameters: 0
	Flags: None
*/
function function_ce55f4fa()
{
	self waittill("hash_fd069dd4");
}

/*
	Name: function_341b7c41
	Namespace: namespace_d86d3a6
	Checksum: 0xD41B1DB0
	Offset: 0x658
	Size: 0x557
	Parameters: 0
	Flags: None
*/
function function_341b7c41()
{
	self endon("hash_fd069dd4");
	self endon("hash_76b803d9");
	self.var_a2d77bbb endon("death");
	self.var_4d9e1d20 = 1;
	self.var_a2d77bbb setHintString("");
	self.var_a2d77bbb SetHintLowPriority(1);
	while(1)
	{
		self.var_a2d77bbb waittill("trigger", e_triggerer);
		if(!self.var_6ba6041f)
		{
			continue;
		}
		if(!e_triggerer util::is_player_looking_at(self.var_a2d77bbb.origin, 0.75, 0))
		{
			self.var_a2d77bbb setHintString("");
			self.var_a2d77bbb SetHintLowPriority(1);
			continue;
		}
		self.var_a2d77bbb setHintString(self.var_82559c86);
		self.var_a2d77bbb SetHintLowPriority(1);
		if(!e_triggerer useButtonPressed())
		{
			continue;
		}
		foreach(player in level.players)
		{
			if(player != e_triggerer)
			{
				self.var_a2d77bbb function_cb2c15eb(player, "");
			}
		}
		level.primaryProgressBarX = 0;
		level.primaryProgressBarY = 110;
		level.primaryProgressBarHeight = 8;
		level.primaryProgressBarWidth = 120;
		level.primaryProgressBarY_ss = 280;
		e_triggerer function_e1c61785(self.var_a2d77bbb);
		wait(0.8);
		n_start_time = 0;
		var_319ed91d = self.var_63f3839a;
		if(self.var_724f1b05)
		{
			if(isdefined(level.var_fdfac3e5))
			{
				var_319ed91d = var_319ed91d * level.var_fdfac3e5;
			}
		}
		var_ee46aab4 = self.var_e9a4f350 * self.var_e9a4f350;
		var_98d5021b = Distance2DSquared(e_triggerer.origin, self.var_a2d77bbb.origin);
		if(var_98d5021b > var_ee46aab4)
		{
			var_ee46aab4 = var_98d5021b;
		}
		b_looking = 1;
		while(n_start_time < var_319ed91d && e_triggerer useButtonPressed() && var_98d5021b <= var_ee46aab4 && b_looking)
		{
			n_start_time = n_start_time + 0.05;
			if(!isdefined(self.var_3ac7294a))
			{
				self.var_3ac7294a = e_triggerer hud::createPrimaryProgressBar();
				self.var_3ac7294a thread function_62faa634(var_319ed91d);
			}
			wait(0.05);
			var_98d5021b = Distance2DSquared(e_triggerer.origin, self.var_a2d77bbb.origin);
			var_af239af9 = e_triggerer util::is_player_looking_at(self.var_a2d77bbb.origin, 0.75, 0);
		}
		if(isdefined(self.var_3ac7294a))
		{
			self.var_3ac7294a notify("hash_bd3246ef");
			self.var_3ac7294a hud::destroyElem();
		}
		e_triggerer function_f7d58490();
		if(n_start_time >= var_319ed91d)
		{
			if(self.var_724f1b05)
			{
				if(!isdefined(level.var_fdfac3e5))
				{
					level.var_fdfac3e5 = 1;
				}
				level.var_fdfac3e5 = level.var_fdfac3e5 + 0.2;
			}
			self thread [[self.var_69e7c65d]](e_triggerer);
		}
		while(e_triggerer useButtonPressed())
		{
			wait(0.1);
		}
	}
}

/*
	Name: function_e1c61785
	Namespace: namespace_d86d3a6
	Checksum: 0x521E01B5
	Offset: 0xBB8
	Size: 0x173
	Parameters: 1
	Flags: None
*/
function function_e1c61785(trigger)
{
	var_3ac7dd05 = trigger.origin + VectorNormalize(AnglesToForward(trigger.angles)) * 50;
	var_7c5a58b9 = bullettrace(var_3ac7dd05, var_3ac7dd05 - VectorScale((0, 0, 1), 100), 0, undefined)["position"];
	var_921dacdc = (0, VectorToAngles(VectorScale(AnglesToForward(trigger.angles), -1))[1], 0);
	self.var_246c72d1 = spawn("script_origin", var_7c5a58b9);
	self.var_246c72d1.angles = var_921dacdc;
	self playerLinkTo(self.var_246c72d1, undefined, 0, 0, 0, 0, 0);
	self DisableWeapons();
}

/*
	Name: function_f7d58490
	Namespace: namespace_d86d3a6
	Checksum: 0xE9339F6B
	Offset: 0xD38
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_f7d58490()
{
	if(isdefined(self) && isdefined(self.var_246c72d1))
	{
		self Unlink();
		self.var_246c72d1 delete();
		self enableWeapons();
	}
}

/*
	Name: function_62faa634
	Namespace: namespace_d86d3a6
	Checksum: 0x6AB3A10C
	Offset: 0xDA0
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_62faa634(var_cbc69bae)
{
	self endon("hash_bd3246ef");
	self hud::updateBar(0.01, 1 / var_cbc69bae);
}

/*
	Name: function_4336408f
	Namespace: namespace_d86d3a6
	Checksum: 0x6F1C2CFE
	Offset: 0xDE8
	Size: 0x167
	Parameters: 4
	Flags: None
*/
function function_4336408f(v_origin, n_radius, n_height, str_hint)
{
	/#
		Assert(isdefined(v_origin), "Dev Block strings are not supported");
	#/
	/#
		Assert(isdefined(n_radius), "Dev Block strings are not supported");
	#/
	/#
		Assert(isdefined(n_height), "Dev Block strings are not supported");
	#/
	e_trigger = spawn("trigger_radius", v_origin, 0, n_radius, n_height);
	e_trigger TriggerIgnoreTeam();
	e_trigger SetVisibleToAll();
	e_trigger SetTeamForTrigger("none");
	e_trigger setcursorhint("HINT_NOICON");
	if(isdefined(str_hint))
	{
		e_trigger setHintString(str_hint);
	}
	return e_trigger;
}

/*
	Name: clean_up
	Namespace: namespace_d86d3a6
	Checksum: 0xA83BF92C
	Offset: 0xF58
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function clean_up()
{
	if(isdefined(self.var_a2d77bbb))
	{
		self.var_a2d77bbb delete();
	}
}

#namespace namespace_4cb2c123;

/*
	Name: function_d86d3a6
	Namespace: namespace_4cb2c123
	Checksum: 0xD600D653
	Offset: 0xF90
	Size: 0x2C5
	Parameters: 0
	Flags: 6
*/
function private autoexec function_d86d3a6()
{
	classes.var_d86d3a6[0] = spawnstruct();
	classes.var_d86d3a6[0].__vtable[1124446108] = &namespace_d86d3a6::clean_up;
	classes.var_d86d3a6[0].__vtable[1127628943] = &namespace_d86d3a6::function_4336408f;
	classes.var_d86d3a6[0].__vtable[1660593716] = &namespace_d86d3a6::function_62faa634;
	classes.var_d86d3a6[0].__vtable[-137001840] = &namespace_d86d3a6::function_f7d58490;
	classes.var_d86d3a6[0].__vtable[-507111547] = &namespace_d86d3a6::function_e1c61785;
	classes.var_d86d3a6[0].__vtable[874216513] = &namespace_d86d3a6::function_341b7c41;
	classes.var_d86d3a6[0].__vtable[-833227526] = &namespace_d86d3a6::function_ce55f4fa;
	classes.var_d86d3a6[0].__vtable[-49898028] = &namespace_d86d3a6::function_fd069dd4;
	classes.var_d86d3a6[0].__vtable[912020471] = &namespace_d86d3a6::disable_hacking;
	classes.var_d86d3a6[0].__vtable[1694450976] = &namespace_d86d3a6::enable_hacking;
	classes.var_d86d3a6[0].__vtable[1464933211] = &namespace_d86d3a6::function_57511b5b;
	classes.var_d86d3a6[0].__vtable[-2138253858] = &namespace_d86d3a6::function_808cd5de;
	classes.var_d86d3a6[0].__vtable[1606033458] = &namespace_d86d3a6::function_5fba2032;
	classes.var_d86d3a6[0].__vtable[-1690805083] = &namespace_d86d3a6::function_9b385ca5;
}

