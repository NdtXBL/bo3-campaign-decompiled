#using scripts\codescripts\struct;
#using scripts\cp\gametypes\_globallogic;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace battlechatter;

/*
	Name: __init__sytem__
	Namespace: battlechatter
	Checksum: 0x46335FE9
	Offset: 0x858
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__sytem__()
{
	system::register("battlechatter", &__init__, undefined, undefined);
}

/*
	Name: __init__
	Namespace: battlechatter
	Checksum: 0x49CE9F9B
	Offset: 0x898
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function __init__()
{
	callback::on_start_gametype(&init);
	var_eee9d0c8 = function_8a06a11d();
	callback::on_ai_spawned(&function_53474d87);
}

/*
	Name: init
	Namespace: battlechatter
	Checksum: 0xB8ADF613
	Offset: 0x908
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function init()
{
	callback::on_spawned(&on_player_spawned);
	level.battlechatter_init = 1;
	level.allowbattlechatter = [];
	level.allowbattlechatter["bc"] = 1;
	level thread function_ec97233e();
}

/*
	Name: function_ec97233e
	Namespace: battlechatter
	Checksum: 0xA863678F
	Offset: 0x978
	Size: 0x137
	Parameters: 0
	Flags: None
*/
function function_ec97233e()
{
	while(1)
	{
		level waittill("ClonedEntity", clone, var_5ed0c283);
		if(isdefined(clone) && isdefined(clone.archetype))
		{
			vehiclename = clone.archetype;
			if(vehiclename == "wasp")
			{
				alias = "hijack_wasps";
			}
			else if(vehiclename == "raps")
			{
				alias = "hijack_raps";
			}
			else if(vehiclename == "quadtank")
			{
				alias = "hijack_quad";
			}
			else
			{
				alias = undefined;
			}
			var_6aa12504 = function_5c9a0c2("axis", clone);
			if(isdefined(var_6aa12504) && isdefined(alias))
			{
				level thread function_f3de557b(var_6aa12504, alias);
			}
		}
	}
}

/*
	Name: function_53474d87
	Namespace: battlechatter
	Checksum: 0x874E044C
	Offset: 0xAB8
	Size: 0x2F3
	Parameters: 0
	Flags: None
*/
function function_53474d87()
{
	self endon("disconnect");
	if(isdefined(level.var_f0ca204d) && level.var_f0ca204d)
	{
		return;
	}
	if(isVehicle(self))
	{
		return;
	}
	if(isdefined(self.archetype) && self.archetype == "zombie")
	{
		return;
	}
	if(isdefined(self.archetype) && self.archetype == "direwolf")
	{
		return;
	}
	if(!isdefined(self.voicePrefix))
	{
		self.voicePrefix = "vox_ax";
	}
	if(isdefined(self.voicePrefix) && (self.voicePrefix == "vox_hend" || self.voicePrefix == "vox_khal" || self.voicePrefix == "vox_kane" || self.voicePrefix == "vox_hall" || self.voicePrefix == "vox_mare" || self.voicePrefix == "vox_diaz"))
	{
		self.bcVoiceNumber = "";
	}
	else if(self.voicePrefix == "vox_term")
	{
		self.bcVoiceNumber = randomIntRange(0, 3);
	}
	else
	{
		self.bcVoiceNumber = randomIntRange(0, 4);
	}
	if(isdefined(self.archetype) && self.archetype == "warlord")
	{
		self thread function_c8397d24();
	}
	self.isSpeaking = 0;
	self.soundMod = "player";
	self thread function_9f9445a7();
	self thread function_5980aba1();
	self thread function_3920250c();
	if(!(isdefined(self.archetype) && self.archetype == "robot"))
	{
		self thread function_f921f5a3();
		self thread function_73f2f03f();
		if(isdefined(self.voicePrefix) && GetSubStr(self.voicePrefix, 7) == "f")
		{
			self.bcVoiceNumber = randomIntRange(0, 2);
		}
	}
	else
	{
		self thread function_897d1130();
	}
}

/*
	Name: function_c8397d24
	Namespace: battlechatter
	Checksum: 0xCFFDF2C7
	Offset: 0xDB8
	Size: 0xD7
	Parameters: 0
	Flags: None
*/
function function_c8397d24()
{
	self endon("death");
	self endon("disconnect");
	level endon("game_ended");
	while(1)
	{
		wait(randomIntRange(6, 14));
		if(isdefined(self))
		{
			var_49f3ceea = Array("action_peek", "action_moving", "enemy_contact");
			line = var_49f3ceea[randomIntRange(0, var_49f3ceea.size)];
			level thread function_f3de557b(self, line);
		}
	}
}

/*
	Name: function_9f9445a7
	Namespace: battlechatter
	Checksum: 0x9DB3B3DD
	Offset: 0xE98
	Size: 0xD7D
	Parameters: 0
	Flags: None
*/
function function_9f9445a7()
{
	self endon("death");
	self endon("disconnect");
	level endon("game_ended");
	while(1)
	{
		self waittill("bhtn_action_notify", notify_string);
		switch(notify_string)
		{
			case "pain":
			{
				if(!(isdefined(self.archetype) && self.archetype == "robot"))
				{
					level thread function_f3de557b(self, "exert_pain");
				}
				break;
			}
			case "concussiveReact":
			{
				if(!(isdefined(self.archetype) && self.archetype == "robot"))
				{
					level thread function_f3de557b(self, "exert_cough", undefined, undefined, 1);
				}
				break;
			}
			case "enemyKill":
			{
				if(!isdefined(self.archetype) && self.archetype == "robot" && (!isdefined(self.voicePrefix) && (self.voicePrefix == "vox_germ" || self.voicePrefix == "vox_usa")))
				{
					if(randomIntRange(0, 100) <= 50)
					{
						level thread function_f3de557b(self, "enemy_kill");
					}
				}
				break;
			}
			case "meleeKill":
			{
				if(!isdefined(self.archetype) && self.archetype == "robot" && (!isdefined(self.voicePrefix) && (self.voicePrefix == "vox_germ" || self.voicePrefix == "vox_usa")))
				{
					if(randomIntRange(0, 100) <= 50)
					{
						level thread function_f3de557b(self, "melee_kill");
					}
				}
				break;
			}
			case "asp_incoming":
			case "hounds_incoming":
			case "manticore_incoming":
			case "orthrus_incoming":
			case "raps_incoming":
			case "robots_incoming":
			case "talon_incoming":
			case "technical_incoming":
			{
				if(!isdefined(self.archetype) && self.archetype == "robot" && (!isdefined(self.voicePrefix) && (self.voicePrefix == "vox_germ" || self.voicePrefix == "vox_usa")))
				{
					level thread function_f3de557b(self, notify_string);
				}
				break;
			}
			case "electrocute":
			case "pukeStart":
			{
				if(!(isdefined(self.archetype) && self.archetype == "robot"))
				{
					level thread function_f3de557b(self, "exert_electrocution", undefined, undefined, 1);
				}
				break;
			}
			case "puke":
			{
				if(!(isdefined(self.archetype) && self.archetype == "robot"))
				{
					level thread function_f3de557b(self, "exert_sonic", undefined, undefined, 1);
				}
				break;
			}
			case "scream":
			{
				if(!(isdefined(self.archetype) && self.archetype == "robot"))
				{
					level thread function_f3de557b(self, "exert_scream");
				}
				break;
			}
			case "scriptedRobotvox":
			{
				if(isdefined(self.archetype) && self.archetype == "robot")
				{
					level thread function_f3de557b(self, "action_intocover");
				}
				break;
			}
			case "reload":
			{
				if(randomIntRange(0, 100) <= 20)
				{
					level thread function_f3de557b(self, "action_reloading", 1);
				}
				break;
			}
			case "enemycontact":
			{
				self thread function_bf2c3663();
				break;
			}
			case "cover_shoot":
			{
				if(randomIntRange(0, 100) <= 10)
				{
					level thread function_f3de557b(self, "enemy_contact");
				}
				break;
			}
			case "cover_stance":
			{
				if(randomIntRange(0, 100) <= 45)
				{
					level thread function_f3de557b(self, "action_intocover");
				}
				break;
			}
			case "charge":
			{
				if(!(isdefined(self.archetype) && self.archetype == "robot"))
				{
					if(!(isdefined(self.voicePrefix) && (self.voicePrefix == "vox_hend" || self.voicePrefix == "vox_khal" || self.voicePrefix == "vox_kane" || self.voicePrefix == "vox_hall" || self.voicePrefix == "vox_mare" || self.voicePrefix == "vox_diaz")))
					{
						soundAlias = "vox_generic_exert_charge_male";
						if(isdefined(self.voicePrefix) && GetSubStr(self.voicePrefix, 7) == "f")
						{
							soundAlias = "vox_generic_exert_charge_female";
						}
						self thread function_81d8fcf2(soundAlias, 1);
					}
					else
					{
						level thread function_f3de557b(self, "exert_charge");
					}
				}
				break;
			}
			case "attack_melee":
			{
				if(!(isdefined(self.archetype) && self.archetype == "robot"))
				{
					if(!(isdefined(self.voicePrefix) && (self.voicePrefix == "vox_hend" || self.voicePrefix == "vox_khal" || self.voicePrefix == "vox_kane" || self.voicePrefix == "vox_hall" || self.voicePrefix == "vox_mare" || self.voicePrefix == "vox_diaz")))
					{
						soundAlias = "vox_generic_exert_melee_male";
						if(isdefined(self.voicePrefix) && GetSubStr(self.voicePrefix, 7) == "f")
						{
							soundAlias = "vox_generic_exert_melee_female";
						}
						self thread function_81d8fcf2(soundAlias, 1);
					}
					else
					{
						level thread function_f3de557b(self, "exert_melee");
					}
				}
				break;
			}
			case "blindfire":
			{
				level thread function_f3de557b(self, "action_blindfire");
				break;
			}
			case "flanked":
			{
				level thread function_f3de557b(self, "action_flanked");
				break;
			}
			case "peek":
			case "scan":
			{
				if(randomIntRange(0, 100) <= 25)
				{
					level thread function_f3de557b(self, "action_peek");
				}
				break;
			}
			case "exposed":
			{
				level thread function_f3de557b(self, "action_exposed");
				break;
			}
			case "taking_cover":
			{
				if(randomIntRange(0, 100) <= 75)
				{
					level thread function_f3de557b(self, "action_intocover");
				}
				break;
			}
			case "moving_up":
			{
				if(randomIntRange(0, 100) <= 6)
				{
					level thread function_f3de557b(self, "action_moving");
				}
				break;
			}
			case "rbCharge":
			case "rbCrawler":
			case "rbPhalanx":
			case "rbTakeover":
			{
				level thread function_f3de557b(self, "action_exposed");
				break;
			}
			case "rbJuke":
			{
				if(randomIntRange(0, 100) <= 30)
				{
					level thread function_f3de557b(self, "action_moving");
				}
				break;
			}
			case "firefly_swarm":
			{
				if(randomIntRange(0, 100) <= 50)
				{
					level thread function_f3de557b(self, "firefly_response");
				}
				if(randomIntRange(0, 100) <= 50)
				{
					var_c4d1d000 = function_5c9a0c2("allies", self);
					if(isdefined(var_c4d1d000))
					{
						level util::delay(1, undefined, &function_f3de557b, var_c4d1d000, "firefly_response");
					}
				}
				break;
			}
			case "firefly_explode":
			{
				if(randomIntRange(0, 100) <= 50)
				{
					teammate = function_c0d9abd6(self);
					if(isdefined(teammate))
					{
						level thread function_f3de557b(teammate, "firefly_explode");
					}
				}
				break;
			}
			case "fireflyAttack":
			{
				level thread function_f3de557b(self, "exert_firefly", undefined, undefined, 1);
				break;
			}
			case "fireflyAttackUpg":
			{
				level thread function_f3de557b(self, "exert_firefly_burning", undefined, undefined, 1);
				break;
			}
			case "rapidstrike":
			{
				level thread function_f3de557b(self, "rapidstrike_response");
				break;
			}
			case "warlord_angry":
			case "warlord_juke":
			{
				var_49f3ceea = Array("action_peek", "action_moving", "enemy_contact");
				line = var_49f3ceea[randomIntRange(0, var_49f3ceea.size)];
				level thread function_f3de557b(self, line);
				break;
			}
			case "reactImmolation":
			{
				level thread function_f3de557b(self, "exert_immolation", undefined, undefined, 1);
				break;
			}
			case "reactImmolationLong":
			{
				level thread function_f3de557b(self, "exert_immolation", undefined, undefined, 1);
				break;
			}
			case "reactSensory":
			{
				level thread function_f3de557b(self, "exert_screaming", undefined, undefined, 1);
				break;
			}
			case "weaponmalfunction":
			{
				level thread function_f3de557b(self, "exert_malfunction", undefined, undefined, 1);
				break;
			}
			case "reactExosuit":
			{
				level thread function_f3de557b(self, "exert_breakdown", undefined, undefined, 1);
				break;
			}
			case "reactMisdirection":
			{
				break;
			}
			case "reactBodyBlow":
			{
				level thread function_f3de557b(self, "exert_body_blow", undefined, undefined, 1);
				break;
			}
			case default:
			{
				break;
			}
		}
	}
}

/*
	Name: function_73f2f03f
	Namespace: battlechatter
	Checksum: 0xCE7DFC51
	Offset: 0x1C20
	Size: 0x67
	Parameters: 0
	Flags: None
*/
function function_73f2f03f()
{
	self endon("death");
	self endon("disconnect");
	level endon("game_ended");
	while(1)
	{
		self waittill("hash_2605e152", alias_suffix);
		level thread function_f3de557b(self, alias_suffix);
	}
}

/*
	Name: function_bf2c3663
	Namespace: battlechatter
	Checksum: 0x484CC03E
	Offset: 0x1C90
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_bf2c3663()
{
	self endon("death");
	self endon("disconnect");
	if(randomIntRange(0, 100) <= 35)
	{
		if(!(isdefined(level.var_bf2c3663) && level.var_bf2c3663))
		{
			level thread function_f3de557b(self, "enemy_contact");
			level thread function_23b803bd();
		}
	}
}

/*
	Name: function_23b803bd
	Namespace: battlechatter
	Checksum: 0x93B2F612
	Offset: 0x1D20
	Size: 0x1F
	Parameters: 0
	Flags: None
*/
function function_23b803bd()
{
	level.var_bf2c3663 = 1;
	wait(15);
	level.var_bf2c3663 = 0;
}

/*
	Name: function_5980aba1
	Namespace: battlechatter
	Checksum: 0x366E049D
	Offset: 0x1D48
	Size: 0xF7
	Parameters: 0
	Flags: None
*/
function function_5980aba1()
{
	self endon("death");
	self endon("disconnect");
	while(1)
	{
		self waittill("grenade_fire", grenade, weapon);
		if(weapon.name == "frag_grenade" || weapon.name == "frag_grenade_invisible")
		{
			if(randomIntRange(0, 100) <= 80 && !isPlayer(self))
			{
				level thread function_f3de557b(self, "grenade_toss");
			}
			level thread function_e94dcde5(self, grenade);
		}
	}
}

/*
	Name: function_e94dcde5
	Namespace: battlechatter
	Checksum: 0x688AE3FC
	Offset: 0x1E48
	Size: 0xF3
	Parameters: 2
	Flags: None
*/
function function_e94dcde5(thrower, grenade)
{
	if(randomIntRange(0, 100) <= 95)
	{
		wait(1);
		if(!isdefined(thrower) || !isdefined(grenade))
		{
			return;
		}
		team = "axis";
		if(isdefined(thrower.team) && team == thrower.team)
		{
			team = "allies";
		}
		ai = function_5c9a0c2(team, grenade);
		if(isdefined(ai))
		{
			level thread function_f3de557b(ai, "grenade_incoming", 1);
		}
	}
}

/*
	Name: function_3920250c
	Namespace: battlechatter
	Checksum: 0x995F7D5
	Offset: 0x1F48
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_3920250c()
{
	self endon("death");
	self endon("disconnect");
	self endon("sticky_explode");
	while(1)
	{
		self waittill("grenade_stuck", grenade);
		if(isdefined(grenade))
		{
			grenade.stuckToPlayer = self;
		}
		if(isalive(self))
		{
			level thread function_f3de557b(self, "grenade_sticky");
		}
		break;
	}
}

/*
	Name: function_897d1130
	Namespace: battlechatter
	Checksum: 0x6DDA1D1C
	Offset: 0x1FF8
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_897d1130()
{
	self endon("disconnect");
	self waittill("death", attacker, meansOfDeath);
	if(isdefined(attacker) && !isPlayer(attacker))
	{
		if(meansOfDeath == "MOD_MELEE")
		{
			attacker notify("bhtn_action_notify", "meleeKill");
		}
		else
		{
			attacker notify("bhtn_action_notify", "enemyKill");
		}
	}
}

/*
	Name: function_f921f5a3
	Namespace: battlechatter
	Checksum: 0xD0B1A4F0
	Offset: 0x20A0
	Size: 0x38B
	Parameters: 0
	Flags: None
*/
function function_f921f5a3()
{
	self endon("disconnect");
	self waittill("death", attacker, meansOfDeath);
	if(isdefined(self))
	{
		var_e11fac68 = isdefined(meansOfDeath) && meansOfDeath == "MOD_MELEE_ASSASSINATE";
		if(isdefined(self.archetype) && self.archetype == "warlord")
		{
			self playsound("chr_warlord_death");
		}
		if(!isdefined(self.var_801fa77c) && self.var_801fa77c && !var_e11fac68 && isdefined(attacker))
		{
			if(meansOfDeath == "MOD_ELECTROCUTED")
			{
				soundAlias = self.voicePrefix + self.bcVoiceNumber + "_" + "exert_electrocution";
			}
			else if(meansOfDeath == "MOD_BURNED")
			{
				soundAlias = self.voicePrefix + self.bcVoiceNumber + "_" + "exert_firefly_burning";
			}
			else
			{
				soundAlias = self.voicePrefix + self.bcVoiceNumber + "_" + "exert_death";
			}
			self thread function_81d8fcf2(soundAlias, 1);
		}
		if(isdefined(self.var_77b7027b) && self.var_77b7027b && isdefined(attacker) && !isPlayer(attacker))
		{
			level thread function_f3de557b(attacker, "sniper_kill");
			return;
		}
		if(isdefined(attacker) && !isPlayer(attacker))
		{
			if(meansOfDeath == "MOD_MELEE")
			{
				attacker notify("bhtn_action_notify", "meleeKill");
			}
			else
			{
				attacker notify("bhtn_action_notify", "enemyKill");
			}
		}
		sniper = isdefined(attacker) && isdefined(attacker.scoreType) && attacker.scoreType == "_sniper";
		if(!var_e11fac68 && (sniper || randomIntRange(0, 100) <= 35))
		{
			var_538c3884 = function_c0d9abd6(self);
			if(isdefined(var_538c3884) && (!isdefined(var_538c3884.var_801fa77c) && var_538c3884.var_801fa77c))
			{
				if(sniper)
				{
					attacker.var_77b7027b = 1;
					level thread function_f3de557b(var_538c3884, "sniper_threat");
				}
				else
				{
					level thread function_f3de557b(var_538c3884, "friendly_down");
				}
			}
		}
	}
}

/*
	Name: function_bf5d6349
	Namespace: battlechatter
	Checksum: 0x506C278F
	Offset: 0x2438
	Size: 0xC3
	Parameters: 2
	Flags: None
*/
function function_bf5d6349(object, type)
{
	wait(RandomFloatRange(0.1, 0.4));
	ai = function_5c9a0c2("both", object, 500);
	if(isdefined(ai))
	{
		if(type == "car")
		{
			level thread function_f3de557b(ai, "destructible_car");
		}
		else
		{
			level thread function_f3de557b(ai, "destructible_barrel");
		}
	}
}

/*
	Name: function_66309b54
	Namespace: battlechatter
	Checksum: 0x80159F15
	Offset: 0x2508
	Size: 0x4B1
	Parameters: 0
	Flags: None
*/
function function_66309b54()
{
	level endon("unloaded");
	self endon("death_or_disconnect");
	self endon("hash_f8c5dd60");
	if(!isdefined(level.var_218d7320))
	{
		level.var_218d7320 = 0;
		enemies = GetAITeamArray("axis", "team3");
		level.var_90fd62cb = Array();
		foreach(enemy in enemies)
		{
			if(isdefined(enemy.archetype) && enemy.archetype == "robot")
			{
				Array::add(level.var_90fd62cb, enemy, 0);
			}
		}
	}
	while(1)
	{
		wait(1);
		t = GetTime();
		if(t > level.var_218d7320 + 1000)
		{
			level.var_218d7320 = t;
			enemies = GetAITeamArray("axis", "team3");
			Array::remove_dead(level.var_90fd62cb);
			Array::remove_undefined(level.var_90fd62cb);
			foreach(enemy in enemies)
			{
				if(isdefined(enemy.archetype) && enemy.archetype == "robot")
				{
					Array::add(level.var_90fd62cb, enemy, 0);
				}
			}
		}
		else if(level.var_90fd62cb.size <= 0)
		{
			break;
		}
		played_sound = 0;
		foreach(robot in level.var_90fd62cb)
		{
			if(!isdefined(robot))
			{
				continue;
			}
			if(DistanceSquared(robot.origin, self.origin) < 90000)
			{
				if(isdefined(robot.current_scene))
				{
					continue;
				}
				if(isdefined(robot.health) && robot.health <= 0)
				{
					continue;
				}
				if(isdefined(level.scenes) && level.scenes.size >= 1)
				{
					continue;
				}
				yaw = self GetYawToSpot(robot.origin);
				diff = self.origin[2] - robot.origin[2];
				if(yaw < -95 || yaw > 95 && Abs(diff) < 200)
				{
					robot playsound("chr_robot_behind");
					played_sound = 1;
					break;
				}
			}
		}
		if(played_sound)
		{
			wait(5);
		}
	}
}

/*
	Name: GetYawToSpot
	Namespace: battlechatter
	Checksum: 0xBAD40E49
	Offset: 0x29C8
	Size: 0x73
	Parameters: 1
	Flags: None
*/
function GetYawToSpot(spot)
{
	pos = spot;
	yaw = self.angles[1] - GetYaw(pos);
	yaw = AngleClamp180(yaw);
	return yaw;
}

/*
	Name: GetYaw
	Namespace: battlechatter
	Checksum: 0x6B19C29C
	Offset: 0x2A48
	Size: 0x41
	Parameters: 1
	Flags: None
*/
function GetYaw(org)
{
	angles = VectorToAngles(org - self.origin);
	return angles[1];
}

/*
	Name: function_f3de557b
	Namespace: battlechatter
	Checksum: 0x4BCD9115
	Offset: 0x2A98
	Size: 0x16B
	Parameters: 5
	Flags: None
*/
function function_f3de557b(ai, line, var_25c2125b, category, var_9d50be70)
{
	if(!isdefined(ai))
	{
		return;
	}
	ai endon("death");
	ai endon("disconnect");
	response = undefined;
	if(isdefined(var_25c2125b))
	{
		response = line + "_response";
	}
	if(!isdefined(ai.voicePrefix) || !isdefined(ai.bcVoiceNumber))
	{
		return;
	}
	if(isdefined(ai.archetype) && ai.archetype == "robot")
	{
		soundAlias = ai.voicePrefix + ai.bcVoiceNumber + "_" + "chatter";
	}
	else
	{
		soundAlias = ai.voicePrefix + ai.bcVoiceNumber + "_" + line;
	}
	ai thread function_81d8fcf2(soundAlias, var_9d50be70, response, category);
}

/*
	Name: function_81d8fcf2
	Namespace: battlechatter
	Checksum: 0x418DE78F
	Offset: 0x2C10
	Size: 0x21B
	Parameters: 4
	Flags: None
*/
function function_81d8fcf2(soundAlias, var_9d50be70, response, category)
{
	if(!isdefined(soundAlias))
	{
		return;
	}
	if(!isdefined(var_9d50be70))
	{
		var_9d50be70 = 0;
	}
	if(self function_710804d(category) && (!isdefined(self.isSpeaking) && self.isSpeaking || var_9d50be70))
	{
		if(!isdefined(self.enemy) && !var_9d50be70)
		{
			return;
		}
		function_20dcacc5();
		if(!isdefined(self))
		{
			return;
		}
		if(isdefined(self.isTalking) && self.isTalking)
		{
			return;
		}
		if(isdefined(self.isSpeaking) && self.isSpeaking)
		{
			self notify("bc_interrupt");
		}
		if(isalive(self))
		{
			self PlaySoundOnTag(soundAlias, "J_neck");
		}
		else
		{
			self playsound(soundAlias);
		}
		self thread wait_playback_time(soundAlias);
		result = self util::waittill_any_return(soundAlias, "death", "disconnect", "bc_interrupt");
		if(result == soundAlias)
		{
			if(isdefined(response))
			{
				ai = function_c0d9abd6(self);
				if(isdefined(ai))
				{
					level thread function_f3de557b(ai, response);
				}
			}
		}
		else if(isdefined(self))
		{
			self stopSound(soundAlias);
		}
	}
}

/*
	Name: function_20dcacc5
	Namespace: battlechatter
	Checksum: 0x8115231E
	Offset: 0x2E38
	Size: 0x4F
	Parameters: 0
	Flags: None
*/
function function_20dcacc5()
{
	if(!isdefined(level.var_769cc2b1))
	{
		level thread function_1af43712();
	}
	while(level.var_769cc2b1 != 0)
	{
		util::wait_network_frame();
	}
	level.var_769cc2b1++;
}

/*
	Name: function_1af43712
	Namespace: battlechatter
	Checksum: 0xFC78A1DC
	Offset: 0x2E90
	Size: 0x2F
	Parameters: 0
	Flags: None
*/
function function_1af43712()
{
	while(1)
	{
		level.var_769cc2b1 = 0;
		util::wait_network_frame();
	}
}

/*
	Name: function_710804d
	Namespace: battlechatter
	Checksum: 0xA3BE1CC8
	Offset: 0x2EC8
	Size: 0x95
	Parameters: 1
	Flags: None
*/
function function_710804d(str_category)
{
	if(!isdefined(str_category))
	{
		str_category = "bc";
	}
	if(isdefined(level.allowbattlechatter) && (!isdefined(level.allowbattlechatter[str_category]) && level.allowbattlechatter[str_category]))
	{
		return 0;
	}
	if(isdefined(self.allowbattlechatter) && (!isdefined(self.allowbattlechatter[str_category]) && self.allowbattlechatter[str_category]))
	{
		return 0;
	}
	return 1;
}

/*
	Name: on_player_spawned
	Namespace: battlechatter
	Checksum: 0x9705872B
	Offset: 0x2F68
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function on_player_spawned()
{
	self endon("disconnect");
	self.soundMod = "player";
	self.var_9fcbfcc0 = 0;
	self.var_54d33b1a = 1;
	self.isSpeaking = 0;
	self thread pain_vox();
	self thread function_5980aba1();
	self thread function_66309b54();
	self thread function_a19a4a61();
	self thread function_a01d72bd();
}

/*
	Name: function_a19a4a61
	Namespace: battlechatter
	Checksum: 0x3964D763
	Offset: 0x3030
	Size: 0x81
	Parameters: 0
	Flags: None
*/
function function_a19a4a61()
{
	self endon("death");
	self endon("disconnect");
	level endon("game_ended");
	while(1)
	{
		self waittill("bhtn_action_notify", notify_string);
		switch(notify_string)
		{
			case "firefly_deploy":
			{
				break;
			}
			case "firefly_end":
			{
				break;
			}
			case default:
			{
				break;
			}
		}
	}
}

/*
	Name: function_e6d1a282
	Namespace: battlechatter
	Checksum: 0xEBB7A07C
	Offset: 0x30C0
	Size: 0xA3
	Parameters: 1
	Flags: None
*/
function function_e6d1a282(suffix)
{
	soundAlias = "vox_plyr_" + suffix;
	if(self function_710804d() && (!isdefined(self.isTalking) && self.isTalking) && (!isdefined(self.isSpeaking) && self.isSpeaking))
	{
		self playsoundtoplayer(soundAlias, self);
		self thread wait_playback_time(soundAlias);
	}
}

/*
	Name: pain_vox
	Namespace: battlechatter
	Checksum: 0x25938FE3
	Offset: 0x3170
	Size: 0xFF
	Parameters: 0
	Flags: None
*/
function pain_vox()
{
	self endon("death");
	self endon("disconnect");
	while(1)
	{
		self waittill("snd_pain_player", meansOfDeath);
		if(randomIntRange(0, 100) <= 100)
		{
			if(isalive(self))
			{
				if(meansOfDeath == "MOD_DROWN")
				{
					soundAlias = "chr_swimming_drown";
					self.var_9fcbfcc0 = 1;
					if(self.var_54d33b1a)
					{
						self thread function_7c4151cc();
					}
				}
				soundAlias = "vox_plyr_exert_pain";
				self thread function_81d8fcf2(soundAlias, 1);
			}
		}
		wait(0.5);
	}
}

/*
	Name: function_7c4151cc
	Namespace: battlechatter
	Checksum: 0xA6CCC3FA
	Offset: 0x3278
	Size: 0xBF
	Parameters: 0
	Flags: None
*/
function function_7c4151cc()
{
	self endon("death");
	self endon("disconnect");
	self endon("hash_d1d64fcc");
	level endon("game_ended");
	self.var_54d33b1a = 0;
	while(1)
	{
		if(!self IsPlayerUnderwater() && self.var_9fcbfcc0)
		{
			self.var_9fcbfcc0 = 0;
			self.var_54d33b1a = 1;
			self thread function_81d8fcf2("vox_pm1_gas_gasp", 1);
			self notify("hash_d1d64fcc");
		}
		wait(0.5);
	}
}

/*
	Name: function_a01d72bd
	Namespace: battlechatter
	Checksum: 0xA05D64ED
	Offset: 0x3340
	Size: 0x57
	Parameters: 0
	Flags: None
*/
function function_a01d72bd()
{
	self endon("death");
	self endon("disconnect");
	level endon("game_ended");
	while(1)
	{
		self waittill("hash_60028448");
		self thread function_7e9c7abd();
	}
}

/*
	Name: function_7e9c7abd
	Namespace: battlechatter
	Checksum: 0x9E652FE
	Offset: 0x33A0
	Size: 0x67
	Parameters: 0
	Flags: None
*/
function function_7e9c7abd()
{
	self endon("hash_60028448");
	wait(2);
	if(isdefined(self))
	{
		ai = level function_5c9a0c2("axis", self, 700);
		if(isdefined(ai))
		{
			ai notify("bhtn_action_notify", "rapidstrike");
		}
	}
}

/*
	Name: wait_playback_time
	Namespace: battlechatter
	Checksum: 0x5F424B52
	Offset: 0x3410
	Size: 0xA7
	Parameters: 2
	Flags: None
*/
function wait_playback_time(soundAlias, timeout)
{
	self endon("death");
	self endon("disconnect");
	playbackTime = soundgetplaybacktime(soundAlias);
	self.isSpeaking = 1;
	if(playbackTime >= 0)
	{
		waitTime = playbackTime * 0.001;
		wait(waitTime);
	}
	else
	{
		wait(1);
	}
	self notify(soundAlias);
	self.isSpeaking = 0;
}

/*
	Name: function_c0d9abd6
	Namespace: battlechatter
	Checksum: 0xDDF5BE60
	Offset: 0x34C0
	Size: 0x37D
	Parameters: 2
	Flags: None
*/
function function_c0d9abd6(var_77415466, maxdist)
{
	if(isdefined(var_77415466))
	{
		aiArray = GetAITeamArray(var_77415466.team);
		aiArray = ArraySort(aiArray, var_77415466.origin);
		if(!isdefined(maxdist))
		{
			maxdist = 1000;
		}
		foreach(dude in aiArray)
		{
			if(!isdefined(var_77415466))
			{
				return undefined;
			}
			if(!isdefined(dude) || !isalive(dude) || !isdefined(dude.bcVoiceNumber))
			{
				continue;
			}
			if(dude == var_77415466)
			{
				continue;
			}
			if(isVehicle(dude))
			{
				continue;
			}
			if(isdefined(dude.archetype) && dude.archetype == "robot")
			{
				continue;
			}
			if(!isdefined(dude.voicePrefix) && (dude.voicePrefix == "vox_hend" || dude.voicePrefix == "vox_khal" || dude.voicePrefix == "vox_kane" || dude.voicePrefix == "vox_hall" || dude.voicePrefix == "vox_mare" || dude.voicePrefix == "vox_diaz") && (!isdefined(var_77415466.voicePrefix) && (var_77415466.voicePrefix == "vox_hend" || var_77415466.voicePrefix == "vox_khal" || var_77415466.voicePrefix == "vox_kane" || var_77415466.voicePrefix == "vox_hall" || var_77415466.voicePrefix == "vox_mare" || var_77415466.voicePrefix == "vox_diaz")))
			{
				if(dude.bcVoiceNumber == var_77415466.bcVoiceNumber)
				{
					continue;
				}
			}
			if(Distance(var_77415466.origin, dude.origin) > maxdist)
			{
				continue;
			}
			return dude;
		}
	}
	return undefined;
}

/*
	Name: function_5c9a0c2
	Namespace: battlechatter
	Checksum: 0xF3730A1A
	Offset: 0x3848
	Size: 0x215
	Parameters: 3
	Flags: None
*/
function function_5c9a0c2(team, object, maxdist)
{
	if(!isdefined(object))
	{
		return;
	}
	if(team == "both")
	{
		aiArray = GetAITeamArray("axis", "allies");
	}
	else
	{
		aiArray = GetAITeamArray(team);
	}
	aiArray = ArraySort(aiArray, object.origin);
	if(!isdefined(maxdist))
	{
		maxdist = 1000;
	}
	foreach(dude in aiArray)
	{
		if(!isdefined(dude) || !isalive(dude))
		{
			continue;
		}
		if(isVehicle(dude))
		{
			continue;
		}
		if(isdefined(dude.archetype) && dude.archetype == "robot")
		{
			continue;
		}
		if(!isdefined(dude.voicePrefix) || !isdefined(dude.bcVoiceNumber))
		{
			continue;
		}
		if(Distance(dude.origin, object.origin) > maxdist)
		{
			continue;
		}
		return dude;
	}
	return undefined;
}

/*
	Name: function_d9f49fba
	Namespace: battlechatter
	Checksum: 0xB9E6B090
	Offset: 0x3A68
	Size: 0x65
	Parameters: 2
	Flags: None
*/
function function_d9f49fba(b_allow, str_category)
{
	if(!isdefined(str_category))
	{
		str_category = "bc";
	}
	/#
		Assert(isdefined(b_allow), "Dev Block strings are not supported");
	#/
	level.allowbattlechatter[str_category] = b_allow;
}

