#using scripts\cp\_util;
#using scripts\shared\ai\archetype_utility;
#using scripts\shared\callbacks_shared;
#using scripts\shared\load_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace friendlyfire;

/*
	Name: __init__sytem__
	Namespace: friendlyfire
	Checksum: 0x8F431EA0
	Offset: 0x308
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__sytem__()
{
	system::register("friendlyfire", &__init__, undefined, undefined);
}

/*
	Name: __init__
	Namespace: friendlyfire
	Checksum: 0x5BCD9DAE
	Offset: 0x348
	Size: 0x10B
	Parameters: 0
	Flags: None
*/
function __init__()
{
	level.var_4d4e553d["min_participation"] = -1600;
	level.var_4d4e553d["max_participation"] = 1000;
	level.var_4d4e553d["enemy_kill_points"] = 250;
	level.var_4d4e553d["friend_kill_points"] = -600;
	level.var_4d4e553d["civ_kill_points"] = -900;
	level.var_4d4e553d["point_loss_interval"] = 0.75;
	level.var_8300d543 = 1;
	if(util::coopGame())
	{
		SetDvar("friendlyfire_enabled", "0");
	}
	if(!isdefined(level.friendlyFireDisabled))
	{
		level.friendlyFireDisabled = 0;
	}
	callback::on_connect(&init_player);
}

/*
	Name: init_player
	Namespace: friendlyfire
	Checksum: 0xB679EA8B
	Offset: 0x460
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function init_player()
{
	/#
		Assert(isdefined(self), "Dev Block strings are not supported");
	#/
	self.participation = 0;
	self thread debug_friendlyfire();
	self thread participation_point_flattenovertime();
}

/*
	Name: function_8e961e39
	Namespace: friendlyfire
	Checksum: 0x87F3E56
	Offset: 0x4C8
	Size: 0x93
	Parameters: 1
	Flags: None
*/
function function_8e961e39(msg)
{
	/#
		if(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			IPrintLnBold(msg);
		}
		if(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			println("Dev Block strings are not supported" + msg);
		}
	#/
}

/*
	Name: debug_friendlyfire
	Namespace: friendlyfire
	Checksum: 0xE91B0691
	Offset: 0x568
	Size: 0xCE7
	Parameters: 0
	Flags: None
*/
function debug_friendlyfire()
{
	self endon("hash_cca1b1b9");
	/#
		self endon("disconnect");
		if(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
		}
		if(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
		}
		var_a4c398c5 = level.var_4d4e553d["Dev Block strings are not supported"] - level.var_4d4e553d["Dev Block strings are not supported"];
		var_db33b685 = 520;
		var_97e29ff = 620;
		ypos = 130;
		bar_width = var_97e29ff - var_db33b685;
		friendly_fire = NewDebugHudElem();
		friendly_fire.fontscale = 3;
		friendly_fire.alignX = "Dev Block strings are not supported";
		friendly_fire.alignY = "Dev Block strings are not supported";
		friendly_fire.x = var_97e29ff - bar_width * level.var_4d4e553d["Dev Block strings are not supported"] / var_a4c398c5 - Log(self.participation) * friendly_fire.fontscale;
		friendly_fire.y = 100;
		friendly_fire.alpha = 1;
		var_9234aec3 = NewDebugHudElem();
		var_9234aec3.fontscale = 1.5;
		var_9234aec3.alignX = "Dev Block strings are not supported";
		var_9234aec3.alignY = "Dev Block strings are not supported";
		var_9234aec3.x = var_db33b685 - ceil(max(Log(Abs(level.var_4d4e553d["Dev Block strings are not supported"])) / Log(10), 0)) - 2 + self.participation < 0 * friendly_fire.fontscale;
		var_9234aec3.y = ypos;
		var_9234aec3.alpha = 1;
		var_9234aec3 setValue(level.var_4d4e553d["Dev Block strings are not supported"]);
		var_edb99954 = NewDebugHudElem();
		var_edb99954.fontscale = 1.5;
		var_edb99954.alignX = "Dev Block strings are not supported";
		var_edb99954.alignY = "Dev Block strings are not supported";
		var_edb99954.x = var_97e29ff + 2 * ceil(max(Log(Abs(level.var_4d4e553d["Dev Block strings are not supported"])) / Log(10), 0)) + 2.5 + self.participation < 0 * friendly_fire.fontscale;
		var_edb99954.y = ypos;
		var_edb99954.alpha = 1;
		var_edb99954 setValue(level.var_4d4e553d["Dev Block strings are not supported"]);
		var_4327ab81 = newClientHudElem(self);
		var_4327ab81.alignX = "Dev Block strings are not supported";
		var_4327ab81.alignY = "Dev Block strings are not supported";
		var_4327ab81.x = var_97e29ff;
		var_4327ab81.y = ypos;
		var_4327ab81.sort = 1;
		var_4327ab81.alpha = 1;
		var_4327ab81.foreground = 1;
		var_4327ab81.color = VectorScale((1, 1, 1), 0.4);
		var_4327ab81 SetShader("Dev Block strings are not supported", bar_width, 9);
		debug_health_bar = newClientHudElem(self);
		debug_health_bar.alignX = "Dev Block strings are not supported";
		debug_health_bar.alignY = "Dev Block strings are not supported";
		debug_health_bar.x = 620;
		debug_health_bar.y = ypos;
		debug_health_bar.sort = 4;
		debug_health_bar.alpha = 1;
		debug_health_bar.foreground = 1;
		debug_health_bar.color = VectorScale((0, 0, 1), 0.9);
		debug_health_bar SetShader("Dev Block strings are not supported", 4, 15);
		var_4c91c06 = newClientHudElem(self);
		var_4c91c06.alignX = "Dev Block strings are not supported";
		var_4c91c06.alignY = "Dev Block strings are not supported";
		var_4c91c06.x = var_db33b685;
		var_4c91c06.y = ypos;
		var_4c91c06.sort = 2;
		var_4c91c06.alpha = 1;
		var_4c91c06.foreground = 1;
		var_4c91c06 SetShader("Dev Block strings are not supported", 4, 21);
		var_8ff245f7 = newClientHudElem(self);
		var_8ff245f7.alignX = "Dev Block strings are not supported";
		var_8ff245f7.alignY = "Dev Block strings are not supported";
		var_8ff245f7.x = var_97e29ff;
		var_8ff245f7.y = ypos;
		var_8ff245f7.sort = 2;
		var_8ff245f7.alpha = 1;
		var_8ff245f7.foreground = 1;
		var_8ff245f7 SetShader("Dev Block strings are not supported", 4, 21);
		var_d2572fe4 = newClientHudElem(self);
		var_d2572fe4.alignX = "Dev Block strings are not supported";
		var_d2572fe4.alignY = "Dev Block strings are not supported";
		var_d2572fe4.x = var_db33b685 + level.var_4d4e553d["Dev Block strings are not supported"] * -1 / var_a4c398c5 * bar_width;
		var_d2572fe4.y = ypos + 9;
		var_d2572fe4.sort = 2;
		var_d2572fe4.alpha = 1;
		var_d2572fe4.foreground = 1;
		var_d2572fe4 SetShader("Dev Block strings are not supported", 4, 4);
		var_5c31876e = newClientHudElem(self);
		var_5c31876e.alignX = "Dev Block strings are not supported";
		var_5c31876e.alignY = "Dev Block strings are not supported";
		var_5c31876e.x = var_db33b685 + level.var_4d4e553d["Dev Block strings are not supported"] * -1 / var_a4c398c5 * bar_width;
		var_5c31876e.y = ypos - 9;
		var_5c31876e.sort = 2;
		var_5c31876e.alpha = 1;
		var_5c31876e.foreground = 1;
		var_5c31876e SetShader("Dev Block strings are not supported", 4, 4);
		while(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			friendly_fire.alpha = 1;
			var_9234aec3.alpha = 1;
			var_edb99954.alpha = 1;
			var_4327ab81.alpha = 1;
			debug_health_bar.alpha = 1;
			var_4c91c06.alpha = 1;
			var_8ff245f7.alpha = 1;
			var_d2572fe4.alpha = 1;
			var_5c31876e.alpha = 1;
			continue;
			friendly_fire.alpha = 0;
			var_9234aec3.alpha = 0;
			var_edb99954.alpha = 0;
			var_4327ab81.alpha = 0;
			debug_health_bar.alpha = 0;
			var_4c91c06.alpha = 0;
			var_8ff245f7.alpha = 0;
			var_d2572fe4.alpha = 0;
			var_5c31876e.alpha = 0;
			xpos = level.var_4d4e553d["Dev Block strings are not supported"] - self.participation / var_a4c398c5 * bar_width;
			debug_health_bar.x = var_97e29ff - xpos;
			friendly_fire setValue(self.participation);
			friendly_fire.x = var_97e29ff - bar_width * level.var_4d4e553d["Dev Block strings are not supported"] / var_a4c398c5 + ceil(max(Log(Abs(self.participation)) / Log(10), 0)) + 1 + self.participation < 0 * friendly_fire.fontscale * 2;
			wait(0.25);
		}
	#/
}

/*
	Name: function_b74e3e5b
	Namespace: friendlyfire
	Checksum: 0x6A1C25F3
	Offset: 0x1258
	Size: 0x3D
	Parameters: 1
	Flags: None
*/
function function_b74e3e5b(entity)
{
	if(entity.archetype == "warlord_soldier")
	{
		return entity.shieldHealth <= 0;
	}
	return 0;
}

/*
	Name: friendly_fire_callback
	Namespace: friendlyfire
	Checksum: 0x3DD72D5A
	Offset: 0x12A0
	Size: 0x5A3
	Parameters: 4
	Flags: None
*/
function friendly_fire_callback(entity, damage, attacker, method)
{
	if(!isdefined(entity))
	{
		return;
	}
	if(!isdefined(entity.team))
	{
		entity.team = "allies";
	}
	if(!isdefined(entity))
	{
		return;
	}
	var_c288fcaa = function_b74e3e5b(entity);
	if(entity.health <= 0)
	{
		if(!var_c288fcaa)
		{
			return;
		}
	}
	if(level.friendlyFireDisabled)
	{
		return;
	}
	if(isdefined(entity.NoFriendlyfire) && entity.NoFriendlyfire)
	{
		return;
	}
	if(!isdefined(attacker))
	{
		return;
	}
	bPlayersDamage = 0;
	if(isPlayer(attacker))
	{
		bPlayersDamage = 1;
	}
	else if(isdefined(attacker.classname) && attacker.classname == "script_vehicle")
	{
		owner = attacker GetVehicleOwner();
		if(isdefined(owner))
		{
			if(isPlayer(owner))
			{
				if(!isdefined(owner.friendlyfire_attacker_not_vehicle_owner))
				{
					bPlayersDamage = 1;
					attacker = owner;
				}
			}
		}
	}
	if(!bPlayersDamage)
	{
		return;
	}
	same_team = entity.team == attacker.team;
	if(attacker.team == "allies")
	{
		if(entity.team == "neutral" && (!isdefined(level.ignoreNeutralFriendlyFire) && level.ignoreNeutralFriendlyFire))
		{
			same_team = 1;
		}
	}
	if(entity.team != "neutral" || (entity.team == "neutral" && (!isdefined(level.ignoreNeutralFriendlyFire) && level.ignoreNeutralFriendlyFire)))
	{
		attacker.last_hit_team = entity.team;
	}
	killed = damage >= entity.health || var_c288fcaa;
	if(!entity.allowdeath)
	{
		killed = 0;
	}
	if(!same_team)
	{
		if(killed)
		{
			attacker.participation = attacker.participation + level.var_4d4e553d["enemy_kill_points"];
			attacker participation_point_cap();
			function_8e961e39("Enemy killed: +" + level.var_4d4e553d["enemy_kill_points"]);
		}
		return;
	}
	if(isdefined(entity.no_friendly_fire_penalty))
	{
		return;
	}
	if(killed)
	{
		if(entity.team == "neutral")
		{
			level notify("player_killed_civ");
			attacker.participation = attacker.participation + level.var_4d4e553d["civ_kill_points"];
			function_8e961e39("Civilian killed: -" + 0 - level.var_4d4e553d["civ_kill_points"]);
		}
		else if(isdefined(entity) && isdefined(entity.ff_kill_penalty))
		{
			attacker.participation = attacker.participation + entity.ff_kill_penalty;
			function_8e961e39("Friendly killed with custom penalty: -" + 0 - entity.ff_kill_penalty);
		}
		else
		{
			attacker.participation = attacker.participation + level.var_4d4e553d["friend_kill_points"];
			function_8e961e39("Friendly killed: -" + 0 - level.var_4d4e553d["friend_kill_points"]);
		}
	}
	else
	{
		attacker.participation = attacker.participation - damage;
		function_8e961e39("Friendly hurt: -" + damage);
	}
	attacker participation_point_cap();
	if(check_grenade(entity, method) && savecommit_afterGrenade())
	{
		return;
	}
	attacker friendly_fire_checkpoints();
}

/*
	Name: friendly_fire_think
	Namespace: friendlyfire
	Checksum: 0x30087AFE
	Offset: 0x1850
	Size: 0x60F
	Parameters: 1
	Flags: None
*/
function friendly_fire_think()
{
System.Exception: Function contains invalid operation code
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮..ctor(ScriptExport , ScriptBase )
}

/*
	Name: friendly_fire_checkpoints
	Namespace: friendlyfire
	Checksum: 0x3FCA0FB4
	Offset: 0x1E68
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function friendly_fire_checkpoints()
{
	if(self.participation <= level.var_4d4e553d["min_participation"])
	{
		self thread missionfail();
	}
}

/*
	Name: check_grenade
	Namespace: friendlyfire
	Checksum: 0xCF582966
	Offset: 0x1EA8
	Size: 0x99
	Parameters: 2
	Flags: None
*/
function check_grenade(entity, method)
{
	if(!isdefined(entity))
	{
		return 0;
	}
	wasGrenade = 0;
	if(isdefined(entity.damageWeapon) && entity.damageWeapon.name == "none")
	{
		wasGrenade = 1;
	}
	if(isdefined(method) && method == "MOD_GRENADE_SPLASH")
	{
		wasGrenade = 1;
	}
	return wasGrenade;
}

/*
	Name: savecommit_afterGrenade
	Namespace: friendlyfire
	Checksum: 0x707086BB
	Offset: 0x1F50
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function savecommit_afterGrenade()
{
	currentTime = GetTime();
	if(currentTime < 4500)
	{
		/#
			println("Dev Block strings are not supported");
		#/
		return 1;
	}
	return 0;
}

/*
	Name: participation_point_cap
	Namespace: friendlyfire
	Checksum: 0x84E6F7E5
	Offset: 0x1FA0
	Size: 0x9F
	Parameters: 0
	Flags: None
*/
function participation_point_cap()
{
	if(!isdefined(self.participation))
	{
		/#
			ASSERTMSG("Dev Block strings are not supported");
		#/
		return;
	}
	if(self.participation > level.var_4d4e553d["max_participation"])
	{
		self.participation = level.var_4d4e553d["max_participation"];
	}
	if(self.participation < level.var_4d4e553d["min_participation"])
	{
		self.participation = level.var_4d4e553d["min_participation"];
	}
}

/*
	Name: participation_point_flattenovertime
	Namespace: friendlyfire
	Checksum: 0xBF157873
	Offset: 0x2048
	Size: 0x65
	Parameters: 0
	Flags: None
*/
function participation_point_flattenovertime()
{
	level endon("friendly_fire_terminate");
	self endon("disconnect");
	while(self.participation > 0)
	{
		self.participation--;
		continue;
		if(self.participation < 0)
		{
			self.participation++;
		}
		wait(level.var_4d4e553d["point_loss_interval"]);
	}
}

/*
	Name: TurnBackOn
	Namespace: friendlyfire
	Checksum: 0x51D81F6D
	Offset: 0x20B8
	Size: 0xF
	Parameters: 0
	Flags: None
*/
function TurnBackOn()
{
	level.friendlyFireDisabled = 0;
}

/*
	Name: turnoff
	Namespace: friendlyfire
	Checksum: 0x1265AA88
	Offset: 0x20D0
	Size: 0xF
	Parameters: 0
	Flags: None
*/
function turnoff()
{
	level.friendlyFireDisabled = 1;
}

/*
	Name: missionfail
	Namespace: friendlyfire
	Checksum: 0xC7FD51FF
	Offset: 0x20E8
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function missionfail()
{
	self endon("death");
	level endon("mine death");
	self.participation = 0;
	self.lives = 0;
	if(self.last_hit_team === "neutral")
	{
		util::missionfailedwrapper_nodeath(&"SCRIPT_MISSIONFAIL_KILLTEAM_NEUTRAL", &"SCRIPT_MISSIONFAIL_WATCH_FIRE");
	}
	else
	{
		util::missionfailedwrapper_nodeath(&"SCRIPT_MISSIONFAIL_KILLTEAM_AMERICAN", &"SCRIPT_MISSIONFAIL_WATCH_FIRE");
	}
}

/*
	Name: notifyDamage
	Namespace: friendlyfire
	Checksum: 0x58AD3D55
	Offset: 0x2180
	Size: 0x7B
	Parameters: 1
	Flags: None
*/
function notifyDamage()
{
System.Exception: Function contains invalid operation code
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮..ctor(ScriptExport , ScriptBase )
}

/*
	Name: notifyDamageNotDone
	Namespace: friendlyfire
	Checksum: 0xD2F3D1C0
	Offset: 0x2208
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function notifyDamageNotDone()
{
System.Exception: Function contains invalid operation code
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮..ctor(ScriptExport , ScriptBase )
}

/*
	Name: notifyDeath
	Namespace: friendlyfire
	Checksum: 0x37A32E72
	Offset: 0x2280
	Size: 0x5B
	Parameters: 1
	Flags: None
*/
function notifyDeath(entity)
{
	level endon("mission failed");
	entity waittill("death", attacker, method);
	entity notify("friendlyfire_notify", -1, attacker, undefined, undefined, method);
}

