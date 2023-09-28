#using scripts\codescripts\struct;
#using scripts\cp\_skipto;
#using scripts\shared\array_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\sound_shared;
#using scripts\shared\system_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;

#namespace elevator;

/*
	Name: __init__sytem__
	Namespace: elevator
	Checksum: 0x4F4648ED
	Offset: 0x2D8
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__sytem__()
{
	system::register("elevator", &__init__, undefined, undefined);
}

/*
	Name: __init__
	Namespace: elevator
	Checksum: 0x43A64FE
	Offset: 0x318
	Size: 0x39B
	Parameters: 0
	Flags: None
*/
function __init__()
{
	platform_triggers = GetEntArray("elevator_trigger", "targetname");
	if(platform_triggers.size <= 0)
	{
		return;
	}
	platform_switches = [];
	platforms_non_switched = [];
	platforms_total = [];
	trigger_target_targets = [];
	for(i = 0; i < platform_triggers.size; i++)
	{
		var_82ee4bd8 = GetEntArray(platform_triggers[i].target, "targetname");
		for(j = 0; j < var_82ee4bd8.size; j++)
		{
			if(var_82ee4bd8[j].classname == "script_brushmodel")
			{
				trigger_target = var_82ee4bd8[j];
				break;
			}
		}
		if(!isdefined(trigger_target))
		{
			/#
				ASSERTMSG("Dev Block strings are not supported" + platform_triggers[i].origin);
			#/
		}
		if(isdefined(trigger_target))
		{
			trigger_target_targets = GetEntArray(trigger_target.target, "targetname");
			platforms_non_switched[platforms_non_switched.size] = trigger_target;
		}
	}
	for(i = 0; i < platform_switches.size; i++)
	{
		platform = GetEnt(platform_switches[i].target, "targetname");
		if(!isdefined(platform))
		{
			/#
				ASSERTMSG("Dev Block strings are not supported" + platform_switches[i].origin);
			#/
			continue;
		}
		counter = 0;
		for(x = 0; x < platforms_total.size; x++)
		{
			if(platform == platforms_total[x])
			{
				counter++;
			}
		}
		if(counter > 0)
		{
			continue;
			continue;
		}
		platforms_total[platforms_total.size] = platform;
	}
	for(i = 0; i < platforms_non_switched.size; i++)
	{
		counter = 0;
		for(x = 0; x < platforms_total.size; x++)
		{
			if(platforms_non_switched[i] == platforms_total[x])
			{
				counter++;
			}
		}
		if(counter > 0)
		{
			continue;
			continue;
		}
		platforms_total[platforms_total.size] = platforms_non_switched[i];
	}
	Array::thread_all(platforms_total, &define_elevator_parts, 0);
}

/*
	Name: define_elevator_parts
	Namespace: elevator
	Checksum: 0xA0FAE4CB
	Offset: 0x6C0
	Size: 0x583
	Parameters: 0
	Flags: None
*/
function define_elevator_parts()
{
	self SetMovingPlatformEnabled(1);
	audio_points = [];
	klaxon_speakers = [];
	var_de4bc4e1 = [];
	platform_start = undefined;
	platform = self;
	platform_name = platform.targetname;
	platform.at_start = 1;
	platform_triggers = [];
	targets_platform = GetEntArray(platform_name, "target");
	var_e5dd7f78 = 0;
	for(i = 0; i < targets_platform.size; i++)
	{
		if(targets_platform[i].classname == "script_model" || targets_platform[i].classname == "script_brushmodel")
		{
			switch_trigger = GetEnt(targets_platform[i].targetname, "target");
			platform_triggers[platform_triggers.size] = switch_trigger;
			continue;
		}
		platform_triggers[platform_triggers.size] = targets_platform[i];
	}
	platform_targets_Ents = GetEntArray(platform.target, "targetname");
	platform_targets_Structs = struct::get_array(platform.target, "targetname");
	platform_targets = ArrayCombine(platform_targets_Ents, platform_targets_Structs, 1, 0);
	if(platform_targets.size <= 0)
	{
		/#
			ASSERTMSG("Dev Block strings are not supported" + platform.origin);
		#/
	}
	if(isdefined(platform_targets))
	{
		for(i = 0; i < platform_targets.size; i++)
		{
			if(isdefined(platform_targets[i].script_noteworthy))
			{
				if(platform_targets[i].script_noteworthy == "audio_point")
				{
					audio_points[audio_points.size] = platform_targets[i];
				}
				if(platform_targets[i].script_noteworthy == "elevator_door")
				{
					var_de4bc4e1[var_de4bc4e1.size] = platform_targets[i];
				}
				if(platform_targets[i].script_noteworthy == "elevator_klaxon_speaker")
				{
					klaxon_speakers[klaxon_speakers.size] = platform_targets[i];
				}
				if(platform_targets[i].script_noteworthy == "platform_start")
				{
					platform_start = function_dbaa007d(platform_targets[i]);
				}
			}
		}
	}
	else if(!isdefined(platform_start))
	{
		/#
			ASSERTMSG("Dev Block strings are not supported" + platform.origin);
		#/
	}
	if(isdefined(var_de4bc4e1) && var_de4bc4e1.size > 0)
	{
		Array::thread_all(var_de4bc4e1, &function_9cdfa1cb, platform_name, platform);
	}
	if(isdefined(klaxon_speakers) && klaxon_speakers.size > 0)
	{
		Array::thread_all(klaxon_speakers, &elevator_looping_sounds, "elevator_" + platform_name + "_move", "stop_" + platform_name + "_movement_sound");
	}
	if(isdefined(audio_points) && audio_points.size > 0)
	{
		Array::thread_all(audio_points, &elevator_looping_sounds, "start_" + platform_name + "_klaxon", "stop_" + platform_name + "_klaxon");
	}
	Array::thread_all(platform_triggers, &trigger_think, platform_name);
	platform.var_be2ea7e9 = spawn("script_origin", self.origin);
	platform.var_be2ea7e9 LinkTo(self);
	platform thread move_platform(platform_start, platform_name, var_e5dd7f78);
}

/*
	Name: function_dbaa007d
	Namespace: elevator
	Checksum: 0x3494398D
	Offset: 0xC50
	Size: 0x133
	Parameters: 1
	Flags: None
*/
function function_dbaa007d(s_start_point)
{
	var_190bcb6b = s_start_point;
	if(isdefined(var_190bcb6b.script_objective))
	{
		world flag::wait_till("skipto_player_connected");
		waittillframeend;
		if(level flag::get(var_190bcb6b.script_objective + "_completed"))
		{
			while(1)
			{
				if(isdefined(var_190bcb6b.target))
				{
					var_190bcb6b = struct::get(var_190bcb6b.target, "targetname");
				}
				else
				{
					break;
				}
				if(isdefined(var_190bcb6b.script_objective))
				{
					if(var_190bcb6b.script_objective == level.var_c0e97bd)
					{
						break;
					}
				}
			}
		}
	}
	if(isdefined(var_190bcb6b.script_wait))
	{
		var_e5dd7f78 = var_190bcb6b.script_wait;
	}
	return var_190bcb6b;
}

/*
	Name: trigger_think
	Namespace: elevator
	Checksum: 0x6A123ABA
	Offset: 0xD90
	Size: 0x14F
	Parameters: 1
	Flags: None
*/
function trigger_think(platform_name)
{
	self endon("death");
	level endon(platform_name + "_disabled");
	if(isdefined(level.heroes) && isdefined(self.script_string) && self.script_string == "all_heroes")
	{
		self thread function_5eba01bd(platform_name);
	}
	while(1)
	{
		self trigger::wait_till();
		level notify("start_" + platform_name + "_klaxon");
		level notify("close_" + platform_name + "_doors");
		if(isdefined(self.script_wait))
		{
			wait(self.script_wait);
		}
		else
		{
			wait(2);
		}
		level notify("elevator_" + platform_name + "_move");
		level waittill("elevator_" + platform_name + "_stop");
		level notify("stop_" + platform_name + "_klaxon");
		level notify("open_" + platform_name + "_doors");
	}
}

/*
	Name: function_5eba01bd
	Namespace: elevator
	Checksum: 0x486CA50C
	Offset: 0xEE8
	Size: 0x137
	Parameters: 1
	Flags: None
*/
function function_5eba01bd(platform_name)
{
	level endon("elevator_" + platform_name + "_move");
	level endon(platform_name + "_disabled");
	var_d93a8d4d = 0;
	wait(1);
	while(1)
	{
		var_d93a8d4d = 1;
		foreach(hero in level.heroes)
		{
			var_d93a8d4d = var_d93a8d4d & hero istouching(self);
		}
		if(var_d93a8d4d)
		{
			self TriggerEnable(1);
		}
		else
		{
			self TriggerEnable(0);
		}
		wait(0.2);
	}
}

/*
	Name: elevator_looping_sounds
	Namespace: elevator
	Checksum: 0xCD5F0557
	Offset: 0x1028
	Size: 0x5B
	Parameters: 2
	Flags: None
*/
function elevator_looping_sounds(notify_play, notify_stop)
{
	level waittill(notify_play);
	if(isdefined(self.script_sound))
	{
		self thread sound::loop_in_space(level.scr_sound[self.script_sound], self.origin, notify_stop);
	}
}

/*
	Name: function_9cdfa1cb
	Namespace: elevator
	Checksum: 0x3AD3CADF
	Offset: 0x1090
	Size: 0x2D3
	Parameters: 2
	Flags: None
*/
function function_9cdfa1cb(platform_name, platform)
{
	var_3ac8d80f = struct::get(self.target, "targetname");
	if(!isdefined(var_3ac8d80f))
	{
		/#
			ASSERTMSG("Dev Block strings are not supported" + self.origin);
		#/
	}
	if(isdefined(var_3ac8d80f.target))
	{
		var_f0bc435f = struct::get(var_3ac8d80f.target, "targetname");
	}
	if(!isdefined(var_f0bc435f))
	{
		/#
			ASSERTMSG("Dev Block strings are not supported" + self.origin);
		#/
	}
	if(isdefined(var_3ac8d80f.script_float))
	{
		var_73345118 = var_3ac8d80f.script_float;
	}
	else
	{
		var_73345118 = 1;
	}
	if(isdefined(var_f0bc435f.script_float))
	{
		var_ef73127f = var_f0bc435f.script_float;
	}
	else
	{
		var_ef73127f = 1;
	}
	var_b1d2ef55 = 0;
	if(isdefined(var_f0bc435f.script_noteworthy) && var_f0bc435f.script_noteworthy == "stay_closed")
	{
		var_b1d2ef55 = 1;
	}
	self.origin = var_3ac8d80f.origin;
	self.angles = var_3ac8d80f.angles;
	var_26dfbb14 = var_f0bc435f.origin - self.origin;
	var_ebf964d9 = var_f0bc435f.angles - self.angles;
	var_9a35a990 = self.origin - var_f0bc435f.origin;
	var_35a4cf2b = self.angles - var_f0bc435f.angles;
	self thread function_f8655445(platform_name, "close_", platform, var_26dfbb14, var_ebf964d9, var_ef73127f);
	if(!var_b1d2ef55)
	{
		self thread function_f8655445(platform_name, "open_", platform, var_9a35a990, var_35a4cf2b, var_73345118);
	}
}

/*
	Name: function_f8655445
	Namespace: elevator
	Checksum: 0x10D2AFF0
	Offset: 0x1370
	Size: 0x107
	Parameters: 6
	Flags: None
*/
function function_f8655445(platform_name, direction, platform, var_8e4b278, v_angles, n_time)
{
	level endon(platform_name + "_disabled");
	self LinkTo(platform);
	while(1)
	{
		level waittill(direction + platform_name + "_doors");
		self Unlink();
		self moveto(self.origin + var_8e4b278, n_time);
		self RotateTo(self.angles + v_angles, n_time);
		wait(n_time);
		self LinkTo(platform);
	}
}

/*
	Name: move_platform
	Namespace: elevator
	Checksum: 0x3C8BD5EC
	Offset: 0x1480
	Size: 0x503
	Parameters: 3
	Flags: None
*/
function move_platform(platform_start, platform_name, var_e5dd7f78)
{
	level endon(platform_name + "_disabled");
	move_path = [];
	var_95fa47b1 = 0;
	if(isdefined(platform_start.script_objective))
	{
		self.origin = platform_start.origin;
		self.angles = platform_start.angles;
	}
	self.platform_name = platform_name;
	if(!isdefined(move_path))
	{
		move_path = [];
	}
	else if(!IsArray(move_path))
	{
		move_path = Array(move_path);
	}
	move_path[move_path.size] = platform_start;
	if(isdefined(platform_start.target))
	{
		platform_start_first_target = struct::get(platform_start.target, "targetname");
	}
	if(!isdefined(platform_start_first_target))
	{
		return;
	}
	path = 1;
	pstruct = platform_start;
	while(path)
	{
		if(isdefined(pstruct.target))
		{
			pstruct = struct::get(pstruct.target, "targetname");
			if(isdefined(pstruct) && move_path[0] != pstruct)
			{
				if(!isdefined(move_path))
				{
					move_path = [];
				}
				else if(!IsArray(move_path))
				{
					move_path = Array(move_path);
				}
				move_path[move_path.size] = pstruct;
			}
			else
			{
				var_95fa47b1 = 1;
				path = 0;
			}
		}
		else
		{
			path = 0;
		}
	}
	while(1)
	{
		level waittill("elevator_" + platform_name + "_move");
		wait(var_e5dd7f78);
		if(isdefined(level.scr_sound) && isdefined(level.scr_sound["elevator_start"]))
		{
			self playsound(level.scr_sound["elevator_start"]);
		}
		self playsound("veh_" + platform_name + "_start");
		self.var_be2ea7e9 PlayLoopSound("veh_" + platform_name + "_loop", 0.5);
		speed = -1;
		do
		{
			for(i = 0; i < move_path.size; i++)
			{
				org = move_path[i];
				if(!isdefined(org))
				{
					continue;
				}
				if(self.origin != org.origin)
				{
					speed = get_speed(org, speed);
					time = Distance(self.origin, org.origin) / speed;
					if(time <= 0)
					{
					}
					else
					{
					}
					time = time;
					self moveto(org.origin, time, time / 2, time / 2);
					self RotateTo(org.angles, time, time * 0.5, time * 0.5);
					self waittill("movedone");
				}
				function_8a110bd3(org, platform_name);
			}
		}
		while(!(isdefined(var_95fa47b1) && var_95fa47b1));
		stop();
		move_path = Array::reverse(move_path);
		self.at_start = !self.at_start;
	}
}

/*
	Name: stop
	Namespace: elevator
	Checksum: 0xE495A923
	Offset: 0x1990
	Size: 0x12B
	Parameters: 0
	Flags: None
*/
function stop()
{
	level notify("elevator_" + self.platform_name + "_stop");
	level notify("stop_" + self.platform_name + "_movement_sound");
	self.origin = self.origin;
	self.angles = self.angles;
	if(isdefined(self.script_sound))
	{
		self playsound(level.scr_sound[self.script_sound]);
	}
	self.var_be2ea7e9 StopLoopSound(0.5);
	self playsound("veh_" + self.platform_name + "_stop");
	if(isdefined(level.scr_sound) && isdefined(level.scr_sound["elevator_end"]))
	{
		self playsound(level.scr_sound["elevator_end"]);
	}
}

/*
	Name: function_8a110bd3
	Namespace: elevator
	Checksum: 0x56B1C6C8
	Offset: 0x1AC8
	Size: 0x123
	Parameters: 2
	Flags: None
*/
function function_8a110bd3(node, platform_name)
{
	if(isdefined(node.script_notify))
	{
		level notify(node.script_notify);
		self notify(node.script_notify);
	}
	if(isdefined(node.script_waittill))
	{
		level util::waittill_any_ents_two(level, node.script_waittill, self, node.script_waittill);
	}
	if(isdefined(node.script_wait))
	{
		self playsound("veh_" + platform_name + "_dc");
		wait(node.script_wait);
		level notify("elevator_" + self.platform_name + "_script_wait_done");
		self notify("elevator_" + self.platform_name + "_script_wait_done");
	}
}

/*
	Name: get_speed
	Namespace: elevator
	Checksum: 0x1954EDD1
	Offset: 0x1BF8
	Size: 0x53
	Parameters: 2
	Flags: None
*/
function get_speed(path_point, speed)
{
	if(speed <= 0)
	{
		speed = 100;
	}
	if(isdefined(path_point.speed))
	{
		speed = path_point.speed;
	}
	return speed;
}

