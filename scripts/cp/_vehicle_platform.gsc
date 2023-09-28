#using scripts\codescripts\struct;
#using scripts\shared\flag_shared;
#using scripts\shared\fx_shared;
#using scripts\shared\sound_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;

#namespace namespace_fa0d90fd;

/*
	Name: init
	Namespace: namespace_fa0d90fd
	Checksum: 0xF2694C3E
	Offset: 0x2B0
	Size: 0x6FB
	Parameters: 2
	Flags: None
*/
function init(var_e6d08de, var_87b2bbe5)
{
	if(!level flag::get("first_player_spawned"))
	{
		wait(0.05);
	}
	self.var_950bb2b2 = var_e6d08de;
	self.var_3a0cae84 = 0;
	self.var_6c951b00 = GetEnt(self.var_950bb2b2 + "_vehicle", "targetname");
	if(!isdefined(self.var_6c951b00))
	{
		self.var_6c951b00 = GetEnt(self.var_950bb2b2 + "_vehicle_vh", "targetname");
	}
	self.var_6c951b00.team = "spectator";
	self.var_6c951b00 SetMovingPlatformEnabled(1);
	/#
		Assert(isdefined(self.var_6c951b00), "Dev Block strings are not supported" + self.var_950bb2b2 + "Dev Block strings are not supported");
	#/
	self.var_1a144436 = GetEntArray(self.var_950bb2b2, "targetname");
	foreach(var_4efa37e7 in self.var_1a144436)
	{
		var_4efa37e7 EnableLinkTo();
		var_4efa37e7 LinkTo(self.var_6c951b00);
		if(var_4efa37e7.classname == "script_brushmodel")
		{
			/#
				Assert(!isdefined(self.var_86d0e1a0), "Dev Block strings are not supported" + self.var_950bb2b2);
			#/
			self.var_86d0e1a0 = var_4efa37e7;
		}
	}
	/#
		Assert(isdefined(self.var_86d0e1a0), "Dev Block strings are not supported" + self.var_950bb2b2);
	#/
	self.var_86d0e1a0 SetMovingPlatformEnabled(1);
	self.var_bfd6a2f9 = spawn("script_origin", self.var_86d0e1a0.origin);
	self.var_bfd6a2f9 LinkTo(self.var_86d0e1a0);
	self.var_6265e5b9 = GetEnt(self.var_950bb2b2 + "_weakpoint", "targetname");
	if(isdefined(self.var_6265e5b9))
	{
		self.var_6265e5b9 EnableLinkTo();
		self.var_6265e5b9 LinkTo(self.var_86d0e1a0);
		self thread function_797a14ff();
	}
	self function_99848f4e(var_87b2bbe5);
	var_6518a90a = GetEntArray(var_e6d08de, "target");
	foreach(var_6518a90a in var_6518a90a)
	{
		if(var_6518a90a.classname == "script_model" || var_6518a90a.classname == "script_brushmodel")
		{
			switch_trigger = GetEnt(var_6518a90a.targetname, "target");
			self thread trigger_think(switch_trigger);
			continue;
		}
		self thread trigger_think(var_6518a90a);
	}
	var_1ceefaa7 = GetEntArray(self.var_86d0e1a0.target, "targetname");
	var_2adc1705 = struct::get_array(self.var_86d0e1a0.target, "targetname");
	platform_targets = ArrayCombine(var_1ceefaa7, var_2adc1705, 1, 0);
	foreach(var_d5b66a0 in platform_targets)
	{
		if(!isdefined(var_d5b66a0.script_noteworthy))
		{
			break;
		}
		switch(var_d5b66a0.script_noteworthy)
		{
			case "audio_point":
			{
				self thread function_dbec37e0(var_d5b66a0, "start_" + self.var_950bb2b2 + "_klaxon", "stop_" + self.var_950bb2b2 + "_klaxon");
				break;
			}
			case "elevator_door":
			{
				self thread function_9cdfa1cb(var_d5b66a0);
				break;
			}
			case "elevator_klaxon_speaker":
			{
				self thread function_dbec37e0(var_d5b66a0, "vehicle_platform_" + self.var_950bb2b2 + "_move", "stop_" + self.var_950bb2b2 + "_movement_sound");
				break;
			}
		}
	}
}

/*
	Name: function_4cc0ffc1
	Namespace: namespace_fa0d90fd
	Checksum: 0x2F0B3889
	Offset: 0x9B8
	Size: 0x3F
	Parameters: 3
	Flags: None
*/
function function_4cc0ffc1(func_start, var_8e84437a, arg)
{
	self.var_542aaa76 = func_start;
	self.var_453a7636 = var_8e84437a;
	self.var_b94c1eb = arg;
}

/*
	Name: function_9bc3d62a
	Namespace: namespace_fa0d90fd
	Checksum: 0xC200CC2
	Offset: 0xA00
	Size: 0x9
	Parameters: 0
	Flags: None
*/
function function_9bc3d62a()
{
	return self.var_6c951b00;
}

/*
	Name: function_845aae7f
	Namespace: namespace_fa0d90fd
	Checksum: 0x189D109F
	Offset: 0xA18
	Size: 0x6F
	Parameters: 1
	Flags: None
*/
function function_845aae7f(var_87b2bbe5)
{
	nd_start = GetVehicleNode(var_87b2bbe5, "targetname");
	/#
		Assert(isdefined(self.var_e0473e16), "Dev Block strings are not supported" + var_87b2bbe5);
	#/
	self.var_e0473e16 = nd_start;
}

/*
	Name: function_797a14ff
	Namespace: namespace_fa0d90fd
	Checksum: 0x32CBE6B
	Offset: 0xA90
	Size: 0x1B3
	Parameters: 0
	Flags: None
*/
function function_797a14ff()
{
	self.var_6265e5b9 SetCanDamage(1);
	self.var_6265e5b9.health = 100;
	self.var_6265e5b9 waittill("death");
	self.var_3a0cae84 = 1;
	self thread FX::Play("mobile_shop_fall_explosion", self.var_6c951b00.origin, (0, 0, 0));
	wait(0.3);
	self thread FX::Play("mobile_shop_fall_explosion", self.var_6c951b00.origin - VectorScale((0, 1, 0), 200), (0, 0, 0));
	self.var_6265e5b9 Hide();
	a_ai = GetAIArray(self.var_950bb2b2, "groupname");
	foreach(ai in a_ai)
	{
		ai kill();
	}
	self.var_6c951b00 vehicle::pause_path();
}

/*
	Name: trigger_think
	Namespace: namespace_fa0d90fd
	Checksum: 0xDBF18498
	Offset: 0xC50
	Size: 0x1DF
	Parameters: 1
	Flags: None
*/
function trigger_think(e_trigger)
{
	e_trigger endon("death");
	level endon(self.var_950bb2b2 + "_disabled");
	var_2c96ba3c = self.var_e0473e16;
	while(1)
	{
		e_trigger trigger::wait_till();
		level notify("start_" + self.var_950bb2b2 + "_klaxon");
		level notify("close_" + self.var_950bb2b2 + "_doors");
		if(isdefined(e_trigger.script_wait))
		{
			wait(e_trigger.script_wait);
		}
		else
		{
			wait(2);
		}
		if(self.var_e0473e16 != var_2c96ba3c)
		{
			var_e00aef4b = 1;
		}
		self.var_bfd6a2f9 playsound("veh_" + self.var_950bb2b2 + "_start");
		self.var_bfd6a2f9 PlayLoopSound("veh_" + self.var_950bb2b2 + "_loop", 0.5);
		self thread function_d96bbc47(var_e00aef4b);
		self.var_6c951b00 waittill("reached_end_node");
		self.var_bfd6a2f9 playsound("veh_" + self.var_950bb2b2 + "_stop");
		self.var_bfd6a2f9 StopLoopSound(0.5);
		function_c721cb49();
	}
}

/*
	Name: function_99848f4e
	Namespace: namespace_fa0d90fd
	Checksum: 0x823473B9
	Offset: 0xE38
	Size: 0x83
	Parameters: 1
	Flags: None
*/
function function_99848f4e(var_87b2bbe5)
{
	self.var_e0473e16 = GetVehicleNode(var_87b2bbe5, "targetname");
	/#
		Assert(isdefined(self.var_e0473e16), "Dev Block strings are not supported" + var_87b2bbe5);
	#/
	self.var_6c951b00 vehicle::get_on_path(self.var_e0473e16);
}

/*
	Name: set_speed
	Namespace: namespace_fa0d90fd
	Checksum: 0x2DE689C9
	Offset: 0xEC8
	Size: 0x33
	Parameters: 2
	Flags: None
*/
function set_speed(n_new_speed, n_accel_time)
{
	self.var_6c951b00 vehicle::set_speed(n_new_speed, n_accel_time);
}

/*
	Name: function_d96bbc47
	Namespace: namespace_fa0d90fd
	Checksum: 0x4EF48531
	Offset: 0xF08
	Size: 0xDF
	Parameters: 1
	Flags: None
*/
function function_d96bbc47(var_e00aef4b)
{
	if(self.var_3a0cae84)
	{
		return;
	}
	if(isdefined(var_e00aef4b) && var_e00aef4b)
	{
		self.var_6c951b00 vehicle::get_on_and_go_path(self.var_e0473e16);
	}
	else
	{
		self.var_6c951b00 vehicle::go_path();
	}
	level notify("vehicle_platform_" + self.var_950bb2b2 + "_move");
	if(isdefined(self.var_542aaa76))
	{
		if(isdefined(self.var_b94c1eb))
		{
			self.var_86d0e1a0 thread [[self.var_542aaa76]](self.var_b94c1eb);
		}
		else
		{
			self.var_86d0e1a0 thread [[self.var_542aaa76]]();
		}
	}
}

/*
	Name: function_c721cb49
	Namespace: namespace_fa0d90fd
	Checksum: 0x3CFF240C
	Offset: 0xFF0
	Size: 0x157
	Parameters: 0
	Flags: None
*/
function function_c721cb49()
{
	level notify("vehicle_platform_" + self.var_950bb2b2 + "_stop");
	level notify("stop_" + self.var_950bb2b2 + "_movement_sound");
	level notify("stop_" + self.var_950bb2b2 + "_klaxon");
	level notify("open_" + self.var_950bb2b2 + "_doors");
	if(isdefined(self.script_sound))
	{
		self.var_bfd6a2f9 playsound(level.scr_sound[self.script_sound]);
	}
	if(isdefined(level.scr_sound) && isdefined(level.scr_sound["elevator_end"]))
	{
		self.var_bfd6a2f9 playsound(level.scr_sound["elevator_end"]);
	}
	if(isdefined(self.var_453a7636))
	{
		if(isdefined(self.var_b94c1eb))
		{
			self.var_86d0e1a0 thread [[self.var_453a7636]](self.var_b94c1eb);
		}
		else
		{
			self.var_86d0e1a0 thread [[self.var_453a7636]]();
		}
	}
}

/*
	Name: function_dbec37e0
	Namespace: namespace_fa0d90fd
	Checksum: 0xA83FFB59
	Offset: 0x1150
	Size: 0x73
	Parameters: 3
	Flags: None
*/
function function_dbec37e0(var_228ae8b0, notify_play, notify_stop)
{
	level waittill(notify_play);
	if(isdefined(var_228ae8b0.script_sound))
	{
		var_228ae8b0 thread sound::loop_in_space(level.scr_sound[var_228ae8b0.script_sound], var_228ae8b0.origin, notify_stop);
	}
}

/*
	Name: function_9cdfa1cb
	Namespace: namespace_fa0d90fd
	Checksum: 0xD3198204
	Offset: 0x11D0
	Size: 0x313
	Parameters: 1
	Flags: None
*/
function function_9cdfa1cb(var_d5b66a0)
{
	var_3ac8d80f = struct::get(var_d5b66a0.target, "targetname");
	/#
		Assert(isdefined(var_3ac8d80f), "Dev Block strings are not supported" + var_d5b66a0.origin);
	#/
	/#
		Assert(isdefined(var_3ac8d80f.target), "Dev Block strings are not supported" + var_d5b66a0.origin);
	#/
	var_f0bc435f = struct::get(var_3ac8d80f.target, "targetname");
	/#
		Assert(isdefined(var_f0bc435f), "Dev Block strings are not supported" + var_d5b66a0.origin);
	#/
	if(isdefined(var_3ac8d80f.script_float))
	{
	}
	else
	{
	}
	var_73345118 = 1;
	if(isdefined(var_f0bc435f.script_float))
	{
	}
	else
	{
	}
	var_ef73127f = 1;
	var_b1d2ef55 = 0;
	if(isdefined(var_f0bc435f.script_noteworthy) && var_f0bc435f.script_noteworthy == "stay_closed")
	{
		var_b1d2ef55 = 1;
	}
	var_d5b66a0.origin = var_3ac8d80f.origin;
	var_d5b66a0.angles = var_3ac8d80f.angles;
	var_26dfbb14 = var_f0bc435f.origin - var_d5b66a0.origin;
	var_ebf964d9 = var_f0bc435f.angles - var_d5b66a0.angles;
	var_9a35a990 = var_d5b66a0.origin - var_f0bc435f.origin;
	var_35a4cf2b = var_d5b66a0.angles - var_f0bc435f.angles;
	self thread function_f8655445(var_d5b66a0, "close_", var_26dfbb14, var_ebf964d9, var_ef73127f);
	if(!var_b1d2ef55)
	{
		self thread function_f8655445(var_d5b66a0, "open_", var_9a35a990, var_35a4cf2b, var_73345118);
	}
}

/*
	Name: function_f8655445
	Namespace: namespace_fa0d90fd
	Checksum: 0xC849C83C
	Offset: 0x14F0
	Size: 0x117
	Parameters: 5
	Flags: None
*/
function function_f8655445(var_d5b66a0, direction, var_8e4b278, v_angles, n_time)
{
	level endon(self.var_950bb2b2 + "_disabled");
	var_d5b66a0 LinkTo(self.var_86d0e1a0);
	while(1)
	{
		level waittill(direction + self.var_950bb2b2 + "_doors");
		var_d5b66a0 Unlink();
		var_d5b66a0 moveto(var_d5b66a0.origin + var_8e4b278, n_time);
		var_d5b66a0 RotateTo(var_d5b66a0.angles + v_angles, n_time);
		wait(n_time);
		var_d5b66a0 LinkTo(self.var_86d0e1a0);
	}
}

/*
	Name: function_9b385ca5
	Namespace: namespace_fa0d90fd
	Checksum: 0x99EC1590
	Offset: 0x1610
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_9b385ca5()
{
}

/*
	Name: function_5fba2032
	Namespace: namespace_fa0d90fd
	Checksum: 0x99EC1590
	Offset: 0x1620
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_5fba2032()
{
}

#namespace namespace_7206ad77;

/*
	Name: function_fa0d90fd
	Namespace: namespace_7206ad77
	Checksum: 0xC5379E9F
	Offset: 0x1630
	Size: 0x2F5
	Parameters: 0
	Flags: 6
*/
function private autoexec function_fa0d90fd()
{
	classes.var_fa0d90fd[0] = spawnstruct();
	classes.var_fa0d90fd[0].__vtable[1606033458] = &namespace_fa0d90fd::function_5fba2032;
	classes.var_fa0d90fd[0].__vtable[-1690805083] = &namespace_fa0d90fd::function_9b385ca5;
	classes.var_fa0d90fd[0].__vtable[-127577019] = &namespace_fa0d90fd::function_f8655445;
	classes.var_fa0d90fd[0].__vtable[-1663065653] = &namespace_fa0d90fd::function_9cdfa1cb;
	classes.var_fa0d90fd[0].__vtable[-605276192] = &namespace_fa0d90fd::function_dbec37e0;
	classes.var_fa0d90fd[0].__vtable[-954086583] = &namespace_fa0d90fd::function_c721cb49;
	classes.var_fa0d90fd[0].__vtable[-647250873] = &namespace_fa0d90fd::function_d96bbc47;
	classes.var_fa0d90fd[0].__vtable[-792690861] = &namespace_fa0d90fd::set_speed;
	classes.var_fa0d90fd[0].__vtable[-1719365810] = &namespace_fa0d90fd::function_99848f4e;
	classes.var_fa0d90fd[0].__vtable[-1293965406] = &namespace_fa0d90fd::trigger_think;
	classes.var_fa0d90fd[0].__vtable[2038043903] = &namespace_fa0d90fd::function_797a14ff;
	classes.var_fa0d90fd[0].__vtable[-2074431873] = &namespace_fa0d90fd::function_845aae7f;
	classes.var_fa0d90fd[0].__vtable[-1681664470] = &namespace_fa0d90fd::function_9bc3d62a;
	classes.var_fa0d90fd[0].__vtable[1287716801] = &namespace_fa0d90fd::function_4cc0ffc1;
	classes.var_fa0d90fd[0].__vtable[-1017222485] = &namespace_fa0d90fd::init;
}

