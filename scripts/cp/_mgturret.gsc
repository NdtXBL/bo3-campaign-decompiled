#using scripts\codescripts\struct;

#namespace _mgturret;

/*
	Name: main
	Namespace: _mgturret
	Checksum: 0x60919566
	Offset: 0x160
	Size: 0xCD
	Parameters: 0
	Flags: None
*/
function main()
{
	if(GetDvarString("mg42") == "")
	{
		SetDvar("mgTurret", "off");
	}
	level.magic_distance = 24;
	turretInfos = GetEntArray("turretInfo", "targetname");
	for(index = 0; index < turretInfos.size; index++)
	{
		turretInfos[index] delete();
	}
}

/*
	Name: set_difficulty
	Namespace: _mgturret
	Checksum: 0xD493A9BF
	Offset: 0x238
	Size: 0x135
	Parameters: 1
	Flags: None
*/
function set_difficulty(difficulty)
{
	init_turret_difficulty_settings();
	turrets = GetEntArray("misc_turret", "classname");
	for(index = 0; index < turrets.size; index++)
	{
		if(isdefined(turrets[index].script_skilloverride))
		{
			switch(turrets[index].script_skilloverride)
			{
				case "easy":
				{
					difficulty = "easy";
					break;
				}
				case "medium":
				{
					difficulty = "medium";
					break;
				}
				case "hard":
				{
					difficulty = "hard";
					break;
				}
				case "fu":
				{
					difficulty = "fu";
					break;
				}
				case default:
				{
					continue;
				}
			}
		}
		turret_set_difficulty(turrets[index], difficulty);
	}
}

/*
	Name: init_turret_difficulty_settings
	Namespace: _mgturret
	Checksum: 0x141F6C61
	Offset: 0x378
	Size: 0x2C3
	Parameters: 0
	Flags: None
*/
function init_turret_difficulty_settings()
{
	level.mgTurretSettings["easy"]["convergenceTime"] = 2.5;
	level.mgTurretSettings["easy"]["suppressionTime"] = 3;
	level.mgTurretSettings["easy"]["accuracy"] = 0.38;
	level.mgTurretSettings["easy"]["aiSpread"] = 2;
	level.mgTurretSettings["easy"]["playerSpread"] = 0.5;
	level.mgTurretSettings["medium"]["convergenceTime"] = 1.5;
	level.mgTurretSettings["medium"]["suppressionTime"] = 3;
	level.mgTurretSettings["medium"]["accuracy"] = 0.38;
	level.mgTurretSettings["medium"]["aiSpread"] = 2;
	level.mgTurretSettings["medium"]["playerSpread"] = 0.5;
	level.mgTurretSettings["hard"]["convergenceTime"] = 0.8;
	level.mgTurretSettings["hard"]["suppressionTime"] = 3;
	level.mgTurretSettings["hard"]["accuracy"] = 0.38;
	level.mgTurretSettings["hard"]["aiSpread"] = 2;
	level.mgTurretSettings["hard"]["playerSpread"] = 0.5;
	level.mgTurretSettings["fu"]["convergenceTime"] = 0.4;
	level.mgTurretSettings["fu"]["suppressionTime"] = 3;
	level.mgTurretSettings["fu"]["accuracy"] = 0.38;
	level.mgTurretSettings["fu"]["aiSpread"] = 2;
	level.mgTurretSettings["fu"]["playerSpread"] = 0.5;
}

/*
	Name: turret_set_difficulty
	Namespace: _mgturret
	Checksum: 0xD3D6F09
	Offset: 0x648
	Size: 0xC7
	Parameters: 2
	Flags: None
*/
function turret_set_difficulty(turret, difficulty)
{
	turret.convergenceTime = level.mgTurretSettings[difficulty]["convergenceTime"];
	turret.suppressionTime = level.mgTurretSettings[difficulty]["suppressionTime"];
	turret.accuracy = level.mgTurretSettings[difficulty]["accuracy"];
	turret.aiSpread = level.mgTurretSettings[difficulty]["aiSpread"];
	turret.playerSpread = level.mgTurretSettings[difficulty]["playerSpread"];
}

/*
	Name: turret_suppression_fire
	Namespace: _mgturret
	Checksum: 0xBD8DD1E1
	Offset: 0x718
	Size: 0xC3
	Parameters: 1
	Flags: None
*/
function turret_suppression_fire(targets)
{
	self endon("death");
	self endon("stop_suppression_fire");
	if(!isdefined(self.suppresionFire))
	{
		self.suppresionFire = 1;
	}
	while(self.suppresionFire)
	{
		self SetTargetEntity(targets[RandomInt(targets.size)]);
		wait(2 + RandomFloat(2));
		continue;
		self ClearTargetEntity();
		while(!self.suppresionFire)
		{
			wait(1);
		}
	}
}

/*
	Name: burst_fire_settings
	Namespace: _mgturret
	Checksum: 0x269F47C2
	Offset: 0x7E8
	Size: 0x75
	Parameters: 1
	Flags: None
*/
function burst_fire_settings(setting)
{
	if(setting == "delay")
	{
		return 0.2;
	}
	else if(setting == "delay_range")
	{
		return 0.5;
	}
	else if(setting == "burst")
	{
		return 0.5;
	}
	else if(setting == "burst_range")
	{
		return 4;
	}
}

/*
	Name: burst_fire
	Namespace: _mgturret
	Checksum: 0x6BA2AF35
	Offset: 0x868
	Size: 0x249
	Parameters: 2
	Flags: None
*/
function burst_fire(turret, manual_target)
{
	turret endon("death");
	turret endon("stopfiring");
	self endon("stop_using_built_in_burst_fire");
	if(isdefined(turret.script_delay_min))
	{
		turret_delay = turret.script_delay_min;
	}
	else
	{
		turret_delay = burst_fire_settings("delay");
	}
	if(isdefined(turret.script_delay_max))
	{
		turret_delay_range = turret.script_delay_max - turret_delay;
	}
	else
	{
		turret_delay_range = burst_fire_settings("delay_range");
	}
	if(isdefined(turret.script_burst_min))
	{
		turret_burst = turret.script_burst_min;
	}
	else
	{
		turret_burst = burst_fire_settings("burst");
	}
	if(isdefined(turret.script_burst_max))
	{
		turret_burst_range = turret.script_burst_max - turret_burst;
		continue;
	}
	turret_burst_range = burst_fire_settings("burst_range");
	while(1)
	{
		turret StartFiring();
		if(isdefined(manual_target))
		{
			turret thread random_spread(manual_target);
		}
		turret do_shoot();
		wait(turret_burst + RandomFloat(turret_burst_range));
		turret StopShootTurret();
		turret stopfiring();
		wait(turret_delay + RandomFloat(turret_delay_range));
	}
}

/*
	Name: burst_fire_unmanned
	Namespace: _mgturret
	Checksum: 0x70F31A76
	Offset: 0xAC0
	Size: 0x37B
	Parameters: 0
	Flags: None
*/
function burst_fire_unmanned()
{
	self notify("stop_burst_fire_unmanned");
	self endon("stop_burst_fire_unmanned");
	self endon("death");
	self endon("remote_start");
	level endon("game_ended");
	if(isdefined(self.controlled) && self.controlled)
	{
		return;
	}
	if(isdefined(self.script_delay_min))
	{
		turret_delay = self.script_delay_min;
	}
	else
	{
		turret_delay = burst_fire_settings("delay");
	}
	if(isdefined(self.script_delay_max))
	{
		turret_delay_range = self.script_delay_max - turret_delay;
	}
	else
	{
		turret_delay_range = burst_fire_settings("delay_range");
	}
	if(isdefined(self.script_burst_min))
	{
		turret_burst = self.script_burst_min;
	}
	else
	{
		turret_burst = burst_fire_settings("burst");
	}
	if(isdefined(self.script_burst_max))
	{
		turret_burst_range = self.script_burst_max - turret_burst;
	}
	else
	{
		turret_burst_range = burst_fire_settings("burst_range");
	}
	pauseUntilTime = GetTime();
	turretState = "start";
	self.script_shooting = 0;
	while(isdefined(self.manual_targets))
	{
		self ClearTargetEntity();
		self SetTargetEntity(self.manual_targets[RandomInt(self.manual_targets.size)]);
		duration = pauseUntilTime - GetTime() * 0.001;
		if(self IsFiringTurret() && duration <= 0)
		{
			if(turretState != "fire")
			{
				turretState = "fire";
				self playsound("mpl_turret_alert");
				self thread do_shoot();
				self.script_shooting = 1;
			}
			duration = turret_burst + RandomFloat(turret_burst_range);
			self thread turret_timer(duration);
			self waittill("turretstatechange");
			self.script_shooting = 0;
			duration = turret_delay + RandomFloat(turret_delay_range);
			pauseUntilTime = GetTime() + Int(duration * 1000);
		}
		else if(turretState != "aim")
		{
			turretState = "aim";
		}
		self thread turret_timer(duration);
		self waittill("turretstatechange");
	}
}

/*
	Name: do_shoot
	Namespace: _mgturret
	Checksum: 0x4696E277
	Offset: 0xE48
	Size: 0x37
	Parameters: 0
	Flags: None
*/
function do_shoot()
{
	self endon("death");
	self endon("turretstatechange");
	for(;;)
	{
		self ShootTurret();
		wait(0.112);
	}
}

/*
	Name: turret_timer
	Namespace: _mgturret
	Checksum: 0x97AE7E68
	Offset: 0xE88
	Size: 0x41
	Parameters: 1
	Flags: None
*/
function turret_timer(duration)
{
	if(duration <= 0)
	{
		return;
	}
	self endon("turretstatechange");
	wait(duration);
	if(isdefined(self))
	{
		self notify("turretstatechange");
	}
}

/*
	Name: random_spread
	Namespace: _mgturret
	Checksum: 0x3CEA46FB
	Offset: 0xED8
	Size: 0x13B
	Parameters: 1
	Flags: None
*/
function random_spread(ent)
{
	self endon("death");
	self notify("stop random_spread");
	self endon("stop random_spread");
	self endon("stopfiring");
	self SetTargetEntity(ent);
	self.manual_target = ent;
	while(1)
	{
		if(isPlayer(ent))
		{
			ent.origin = self.manual_target GetOrigin();
		}
		else
		{
			ent.origin = self.manual_target.origin;
		}
		ent.origin = ent.origin + (20 - RandomFloat(40), 20 - RandomFloat(40), 20 - RandomFloat(60));
		wait(0.2);
	}
}

