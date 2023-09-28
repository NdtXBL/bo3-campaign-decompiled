#using scripts\cp\gametypes\_save;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\stealth_actor;
#using scripts\shared\stealth_aware;
#using scripts\shared\stealth_debug;
#using scripts\shared\stealth_level;
#using scripts\shared\stealth_player;
#using scripts\shared\stealth_vehicle;
#using scripts\shared\system_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;

#namespace stealth;

/*
	Name: __init__sytem__
	Namespace: stealth
	Checksum: 0x5AFA4435
	Offset: 0x2E8
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__sytem__()
{
	system::register("stealth", &__init__, undefined, undefined);
}

/*
	Name: __init__
	Namespace: stealth
	Checksum: 0xE79E9038
	Offset: 0x328
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function __init__()
{
	init_client_field_callback_funcs();
	/#
		namespace_e449108e::init();
	#/
}

/*
	Name: init_client_field_callback_funcs
	Namespace: stealth
	Checksum: 0xA2D5E7DF
	Offset: 0x360
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function init_client_field_callback_funcs()
{
	clientfield::register("toplayer", "stealth_sighting", 1, 2, "int");
	clientfield::register("toplayer", "stealth_alerted", 1, 1, "int");
}

/*
	Name: init
	Namespace: stealth
	Checksum: 0x78AFA389
	Offset: 0x3D0
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function init()
{
	level agent_init();
	function_26f24c93(0);
}

/*
	Name: reset
	Namespace: stealth
	Checksum: 0x4FE0527C
	Offset: 0x410
	Size: 0xFB
	Parameters: 0
	Flags: None
*/
function reset()
{
	/#
		Assert(isdefined(self));
	#/
	if(!isdefined(self.stealth))
	{
		return;
	}
	if(isdefined(self.stealth.Agents))
	{
		foreach(Agent in self.stealth.Agents)
		{
			if(!isdefined(Agent))
			{
				continue;
			}
			if(Agent == self)
			{
				continue;
			}
			Agent function_e8434f94();
		}
	}
	self function_e8434f94();
}

/*
	Name: stop
	Namespace: stealth
	Checksum: 0x6E4C5C02
	Offset: 0x518
	Size: 0x125
	Parameters: 0
	Flags: None
*/
function stop()
{
	/#
		Assert(isdefined(self));
	#/
	if(!isdefined(self.stealth))
	{
		return;
	}
	self notify("hash_94ff6d85");
	if(isdefined(self.stealth.Agents))
	{
		foreach(Agent in self.stealth.Agents)
		{
			if(!isdefined(Agent))
			{
				continue;
			}
			if(Agent == self)
			{
				continue;
			}
			Agent notify("hash_94ff6d85");
			Agent function_7aa44f83();
		}
	}
	self function_7aa44f83();
	self.stealth = undefined;
}

/*
	Name: function_ca3d344
	Namespace: stealth
	Checksum: 0x471FABDC
	Offset: 0x648
	Size: 0xB5
	Parameters: 1
	Flags: None
*/
function function_ca3d344(object)
{
	if(isdefined(level.stealth))
	{
		if(!isdefined(level.stealth.Agents))
		{
			level.stealth.Agents = [];
		}
		for(i = 0; !isdefined(level.stealth.Agents[i]); i++)
		{
			level.stealth.Agents[i] = object;
			return;
			continue;
			if(level.stealth.Agents[i] == object)
			{
				return;
			}
		}
	}
}

/*
	Name: agent_init
	Namespace: stealth
	Checksum: 0xCD7962FF
	Offset: 0x708
	Size: 0x103
	Parameters: 0
	Flags: None
*/
function agent_init()
{
	object = self;
	if(!isdefined(object) || isdefined(object.stealth))
	{
		return 0;
	}
	if(isPlayer(object))
	{
		object namespace_10443be6::init();
	}
	else if(IsActor(object))
	{
		object namespace_aec89ff8::init();
	}
	else if(isVehicle(object))
	{
		object namespace_594759f3::init();
	}
	else if(object == level)
	{
		object namespace_ad45a419::init();
	}
	function_ca3d344(object);
}

/*
	Name: function_7aa44f83
	Namespace: stealth
	Checksum: 0x76AC27C
	Offset: 0x818
	Size: 0xD5
	Parameters: 0
	Flags: None
*/
function function_7aa44f83()
{
	object = self;
	if(!isdefined(object))
	{
		return 0;
	}
	if(isPlayer(object))
	{
		return object namespace_10443be6::stop();
	}
	if(IsActor(object))
	{
		return object namespace_aec89ff8::stop();
	}
	if(isVehicle(object))
	{
		return object namespace_594759f3::stop();
	}
	if(object == level)
	{
		return object namespace_ad45a419::stop();
	}
	return 0;
}

/*
	Name: function_e8434f94
	Namespace: stealth
	Checksum: 0x9C994A1B
	Offset: 0x8F8
	Size: 0xD5
	Parameters: 0
	Flags: None
*/
function function_e8434f94()
{
	object = self;
	if(!isdefined(object))
	{
		return 0;
	}
	if(isPlayer(object))
	{
		return object namespace_10443be6::reset();
	}
	if(IsActor(object))
	{
		return object namespace_aec89ff8::reset();
	}
	if(isVehicle(object))
	{
		return object namespace_594759f3::reset();
	}
	if(object == level)
	{
		return object namespace_ad45a419::reset();
	}
	return 0;
}

/*
	Name: function_2cfe5148
	Namespace: stealth
	Checksum: 0x6B40A2F6
	Offset: 0x9D8
	Size: 0x47
	Parameters: 1
	Flags: None
*/
function function_2cfe5148(entity)
{
	if(!isdefined(entity))
	{
		return 0;
	}
	if(!isdefined(entity.team))
	{
		return 0;
	}
	return entity.team != self.team;
}

/*
	Name: enemy_team
	Namespace: stealth
	Checksum: 0xAB16C39E
	Offset: 0xA28
	Size: 0x61
	Parameters: 0
	Flags: None
*/
function enemy_team()
{
	/#
		Assert(isdefined(self.team));
	#/
	switch(self.team)
	{
		case "allies":
		{
			return "axis";
		}
		case "axis":
		{
			return "allies";
		}
	}
	return "allies";
}

/*
	Name: can_see
	Namespace: stealth
	Checksum: 0xDFED3E49
	Offset: 0xA98
	Size: 0x8B
	Parameters: 1
	Flags: None
*/
function can_see(entity)
{
	if(IsActor(self))
	{
		return self cansee(entity);
	}
	else
	{
		return SightTracePassed(self.origin + VectorScale((0, 0, 1), 30), entity.origin + VectorScale((0, 0, 1), 30), 0, undefined);
	}
}

/*
	Name: function_b889e36b
	Namespace: stealth
	Checksum: 0xC9481490
	Offset: 0xB30
	Size: 0x3D
	Parameters: 2
	Flags: None
*/
function function_b889e36b(var_15c70cbd, var_3bc98726)
{
	return level.stealth.var_21c68c49[var_15c70cbd] - level.stealth.var_21c68c49[var_3bc98726];
}

/*
	Name: function_8ab6cff5
	Namespace: stealth
	Checksum: 0xA373E532
	Offset: 0xB78
	Size: 0x81
	Parameters: 1
	Flags: None
*/
function function_8ab6cff5(waitfor)
{
	self notify("level_wait_notify_" + waitfor);
	self endon("level_wait_notify_" + waitfor);
	if(isPlayer(self))
	{
		self endon("disconnect");
	}
	else
	{
		self endon("death");
	}
	self endon("hash_94ff6d85");
	level waittill(waitfor);
	self notify(waitfor);
}

/*
	Name: function_713eb2a1
	Namespace: stealth
	Checksum: 0x877A49B9
	Offset: 0xC08
	Size: 0xBF
	Parameters: 0
	Flags: None
*/
function function_713eb2a1()
{
	/#
		Assert(isPlayer(self));
	#/
	w_weapon = self GetCurrentWeapon();
	var_52aedb43 = self GetWeaponAmmoClip(w_weapon);
	var_aa7dd041 = self GetWeaponAmmoStock(w_weapon);
	return var_52aedb43 < w_weapon.clipSize && var_aa7dd041 > 0;
}

/*
	Name: function_38ce0dd0
	Namespace: stealth
	Checksum: 0x4F2FBFDB
	Offset: 0xCD0
	Size: 0x249
	Parameters: 2
	Flags: None
*/
function function_38ce0dd0(Distance, fov)
{
	level.stealth.enemies[self.team] = Array::remove_dead(level.stealth.enemies[self.team]);
	enemies = ArraySort(level.stealth.enemies[self.team], self.origin, 20, Distance);
	var_455f44e3 = cos(fov);
	eyePos = self.origin;
	var_41c8d4a0 = self.angles;
	if(isPlayer(self))
	{
		eyePos = self GetEye();
		var_41c8d4a0 = self getPlayerAngles();
	}
	else if(IsActor(self))
	{
		eyePos = self GetTagOrigin("TAG_EYE");
		var_41c8d4a0 = self GetTagAngles("TAG_EYE");
	}
	foreach(enemy in enemies)
	{
		if(util::within_fov(eyePos, var_41c8d4a0, enemy.origin + VectorScale((0, 0, 1), 30), var_455f44e3))
		{
			return enemy;
		}
	}
}

/*
	Name: get_closest_player
	Namespace: stealth
	Checksum: 0x96615B99
	Offset: 0xF28
	Size: 0x97
	Parameters: 2
	Flags: None
*/
function get_closest_player(v_origin, maxdist)
{
	var_d47e142e = GetPlayers();
	var_d47e142e = ArraySortClosest(var_d47e142e, v_origin, 1, 0, maxdist);
	if(isdefined(var_d47e142e) && var_d47e142e.size > 0 && isalive(var_d47e142e[0]))
	{
		return var_d47e142e[0];
	}
}

/*
	Name: function_b7ff7c00
	Namespace: stealth
	Checksum: 0x208DDACD
	Offset: 0xFC8
	Size: 0x10B
	Parameters: 1
	Flags: None
*/
function function_b7ff7c00(var_12131b3c)
{
	if(!isdefined(level.stealth))
	{
		level.stealth = spawnstruct();
	}
	if(!isdefined(level.stealth.var_b7ff7c00))
	{
		level.stealth.var_b7ff7c00 = [];
		level.stealth.var_b7ff7c00["unaware"] = VectorScale((1, 1, 1), 0.5);
		level.stealth.var_b7ff7c00["low_alert"] = (1, 1, 0);
		level.stealth.var_b7ff7c00["high_alert"] = (1, 0.5, 0);
		level.stealth.var_b7ff7c00["combat"] = (1, 0, 0);
	}
	return level.stealth.var_b7ff7c00[var_12131b3c];
}

/*
	Name: function_437e9eec
	Namespace: stealth
	Checksum: 0xA6907D65
	Offset: 0x10E0
	Size: 0x6F
	Parameters: 1
	Flags: None
*/
function function_437e9eec(entity)
{
	if(!isdefined(entity))
	{
		return 0;
	}
	if(!isdefined(entity._o_scene))
	{
		return 0;
	}
	if(!isdefined(entity._o_scene._str_state))
	{
		return 0;
	}
	return entity._o_scene._str_state == "play";
}

/*
	Name: function_76c2ffe4
	Namespace: stealth
	Checksum: 0xF42AEFFC
	Offset: 0x1158
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function function_76c2ffe4(State)
{
	level.stealth.var_bc3590e4 = 1;
	function_e0319e51(State);
}

/*
	Name: function_862e861f
	Namespace: stealth
	Checksum: 0x80508AEB
	Offset: 0x1198
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_862e861f(fade_time)
{
	level.stealth.var_bc3590e4 = 0;
	level.stealth.music_state = "none";
	function_dd351c71(fade_time);
}

/*
	Name: function_dd351c71
	Namespace: stealth
	Checksum: 0xF2CF7D32
	Offset: 0x11F0
	Size: 0xB1
	Parameters: 1
	Flags: None
*/
function function_dd351c71(fade_time)
{
	if(isdefined(level.stealth.music_ent))
	{
		foreach(ent in level.stealth.music_ent)
		{
			ent StopLoopSound(fade_time);
		}
	}
}

/*
	Name: function_8bb61d8e
	Namespace: stealth
	Checksum: 0x629CD4F4
	Offset: 0x12B0
	Size: 0x7D
	Parameters: 2
	Flags: None
*/
function function_8bb61d8e(var_12131b3c, var_414c0762)
{
	if(!isdefined(level.stealth))
	{
		level.stealth = spawnstruct();
	}
	if(!isdefined(level.stealth.music))
	{
		level.stealth.music = [];
	}
	level.stealth.music[var_12131b3c] = var_414c0762;
}

/*
	Name: function_e0319e51
	Namespace: stealth
	Checksum: 0xC0CEDF7B
	Offset: 0x1338
	Size: 0x93
	Parameters: 1
	Flags: None
*/
function function_e0319e51(var_12131b3c)
{
	return;
	if(isdefined(level.stealth.music_state) && level.stealth.music_state == var_12131b3c)
	{
		return;
	}
	if(isdefined(level.stealth.var_bc3590e4) && !level.stealth.var_bc3590e4)
	{
		return;
	}
	level.stealth.music_state = var_12131b3c;
	thread function_f8aaae39(1);
}

/*
	Name: function_f8aaae39
	Namespace: stealth
	Checksum: 0x6469BB2D
	Offset: 0x13D8
	Size: 0x251
	Parameters: 1
	Flags: None
*/
function function_f8aaae39(delay)
{
	if(!isdefined(level.stealth.music_ent))
	{
		if(!isdefined(level.stealth.music_ent))
		{
			level.stealth.music_ent = [];
		}
		level.stealth.music_ent["unaware"] = spawn("script_origin", (0, 0, 0));
		level.stealth.music_ent["low_alert"] = spawn("script_origin", (0, 0, 0));
		level.stealth.music_ent["high_alert"] = spawn("script_origin", (0, 0, 0));
		level.stealth.music_ent["combat"] = spawn("script_origin", (0, 0, 0));
	}
	State = level.stealth.music_state;
	wait(delay);
	if(State == level.stealth.music_state)
	{
		foreach(ent in level.stealth.music_ent)
		{
			if(State == key && isdefined(level.stealth.music[key]))
			{
				ent PlayLoopSound(level.stealth.music[key], 1);
				continue;
			}
			ent StopLoopSound(3);
		}
	}
}

/*
	Name: function_26f24c93
	Namespace: stealth
	Checksum: 0x36B27617
	Offset: 0x1638
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function function_26f24c93(b_enabled)
{
	if(isdefined(level.stealth))
	{
		level.stealth.vo_callouts = b_enabled;
	}
	else if(isdefined(b_enabled) && b_enabled)
	{
		/#
			Assert(0, "Dev Block strings are not supported");
		#/
	}
}

/*
	Name: function_9aa26b41
	Namespace: stealth
	Checksum: 0x5FDD6BFC
	Offset: 0x16A8
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_9aa26b41()
{
	level thread function_762607ad();
}

/*
	Name: function_762607ad
	Namespace: stealth
	Checksum: 0xDC155143
	Offset: 0x16D0
	Size: 0x291
	Parameters: 0
	Flags: Private
*/
function private function_762607ad()
{
	level notify("hash_762607ad");
	level endon("hash_762607ad");
	level endon("save_restore");
	level endon("hash_94ff6d85");
	secondsWaited = 0;
	while(secondsWaited < 10)
	{
		var_62de14e3 = level namespace_ad45a419::enabled() && (level flag::get("stealth_alert") || level flag::get("stealth_combat") || level flag::get("stealth_discovered"));
		if(!var_62de14e3)
		{
			enemies = GetAITeamArray("axis");
			for(i = 0; i < enemies.size && !var_62de14e3; i++)
			{
				enemy = enemies[i];
				if(!isdefined(enemy) || isalive(enemy))
				{
					break;
				}
				if(!enemy namespace_80045451::enabled())
				{
					break;
				}
				foreach(player in level.activePlayers)
				{
					if(enemy function_99ada8a(player) > 0)
					{
						var_62de14e3 = 1;
					}
				}
			}
		}
		else if(!var_62de14e3)
		{
			var_62de14e3 = !function_fd413bf3();
		}
		if(var_62de14e3)
		{
			wait(1);
			secondsWaited++;
			continue;
		}
		else
		{
			savegame::function_fb150717();
			return;
		}
	}
}

/*
	Name: function_fd413bf3
	Namespace: stealth
	Checksum: 0xF43EF3AA
	Offset: 0x1970
	Size: 0xCB
	Parameters: 0
	Flags: Private
*/
function private function_fd413bf3()
{
	if(!savegame::function_147f4ca3())
	{
		return 0;
	}
	ai_enemies = GetAITeamArray("axis");
	foreach(enemy in ai_enemies)
	{
		if(!enemy function_d0a01dc8())
		{
			return 0;
		}
	}
	return 1;
}

/*
	Name: function_d0a01dc8
	Namespace: stealth
	Checksum: 0x8600DD5B
	Offset: 0x1A48
	Size: 0x95
	Parameters: 0
	Flags: Private
*/
function private function_d0a01dc8()
{
	var_e0fabc1 = self savegame::function_2808d83d();
	if(var_e0fabc1 > 1000 || var_e0fabc1 < 0)
	{
		return 1;
	}
	else if(var_e0fabc1 < 500)
	{
		return 0;
	}
	else if(IsActor(self) && self function_ed8df2f())
	{
		return 0;
	}
	return 1;
}

/*
	Name: function_ed8df2f
	Namespace: stealth
	Checksum: 0xD87F0E0C
	Offset: 0x1AE8
	Size: 0x93
	Parameters: 0
	Flags: Private
*/
function private function_ed8df2f()
{
	foreach(player in level.activePlayers)
	{
		if(self cansee(player))
		{
			return 1;
		}
	}
	return 0;
}

