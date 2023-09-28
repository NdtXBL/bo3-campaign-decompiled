#using scripts\codescripts\struct;
#using scripts\cp\_util;
#using scripts\cp\gametypes\_dev_class;
#using scripts\cp\gametypes\_globallogic;
#using scripts\cp\gametypes\_globallogic_score;
#using scripts\cp\gametypes\_globallogic_utils;
#using scripts\shared\array_shared;
#using scripts\shared\bots\_bot;
#using scripts\shared\callbacks_shared;
#using scripts\shared\dev_shared;
#using scripts\shared\hud_message_shared;
#using scripts\shared\rank_shared;
#using scripts\shared\sound_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace dev;

/*
	Name: __init__sytem__
	Namespace: dev
	Checksum: 0xE20E768C
	Offset: 0x268
	Size: 0x3B
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__sytem__()
{
	/#
		system::register("Dev Block strings are not supported", &__init__, undefined, "Dev Block strings are not supported");
	#/
}

/*
	Name: __init__
	Namespace: dev
	Checksum: 0x9270C289
	Offset: 0x2B0
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function __init__()
{
	/#
		callback::on_start_gametype(&init);
	#/
}

/*
	Name: init
	Namespace: dev
	Checksum: 0x2209A918
	Offset: 0x2E8
	Size: 0x35F
	Parameters: 0
	Flags: None
*/
function init()
{
	/#
		if(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
		}
		if(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
		}
		if(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
		}
		if(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
		}
		thread testscriptruntimeerror();
		thread testDvars();
		thread devHeliPathDebugDraw();
		thread devStrafeRunPathDebugDraw();
		SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
		SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
		SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
		thread equipment_dev_gui();
		thread grenade_dev_gui();
		SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
		level.dem_spawns = [];
		if(level.gametype == "Dev Block strings are not supported")
		{
			extra_spawns = [];
			extra_spawns[0] = "Dev Block strings are not supported";
			extra_spawns[1] = "Dev Block strings are not supported";
			extra_spawns[2] = "Dev Block strings are not supported";
			extra_spawns[3] = "Dev Block strings are not supported";
			for(i = 0; i < extra_spawns.size; i++)
			{
				points = GetEntArray(extra_spawns[i], "Dev Block strings are not supported");
				if(isdefined(points) && points.size > 0)
				{
					level.dem_spawns = ArrayCombine(level.dem_spawns, points, 1, 0);
				}
			}
		}
		callback::on_connect(&on_player_connect);
		for(;;)
		{
			updateDevSettings();
			wait(0.5);
		}
	#/
}

/*
	Name: on_player_connect
	Namespace: dev
	Checksum: 0x1E134AD4
	Offset: 0x650
	Size: 0x7
	Parameters: 0
	Flags: None
*/
function on_player_connect()
{
	/#
	#/
}

/*
	Name: warpAllToHost
	Namespace: dev
	Checksum: 0xB3CFE920
	Offset: 0x660
	Size: 0x53
	Parameters: 1
	Flags: None
*/
function warpAllToHost(team)
{
	/#
		host = util::getHostPlayer();
		function_93f46504(team, host.name);
	#/
}

/*
	Name: function_93f46504
	Namespace: dev
	Checksum: 0x734ABC16
	Offset: 0x6C0
	Size: 0x373
	Parameters: 2
	Flags: None
*/
function function_93f46504(team, player)
{
	/#
		players = GetPlayers();
		target = undefined;
		for(i = 0; i < players.size; i++)
		{
			if(players[i].name == player)
			{
				target = players[i];
				break;
			}
		}
		if(isdefined(target))
		{
			origin = target.origin;
			nodes = GetNodesInRadius(origin, 128, 32, 128, "Dev Block strings are not supported");
			angles = target getPlayerAngles();
			yaw = (0, angles[1], 0);
			FORWARD = AnglesToForward(yaw);
			spawn_origin = origin + FORWARD * 128 + VectorScale((0, 0, 1), 16);
			if(!BulletTracePassed(target GetEye(), spawn_origin, 0, target))
			{
				spawn_origin = undefined;
			}
			for(i = 0; i < players.size; i++)
			{
				if(players[i] == target)
				{
					continue;
				}
				if(isdefined(team))
				{
					if(StrStartsWith(team, "Dev Block strings are not supported") && target.team == players[i].team)
					{
						continue;
					}
					if(StrStartsWith(team, "Dev Block strings are not supported") && target.team != players[i].team)
					{
						continue;
					}
				}
				if(isdefined(spawn_origin))
				{
					players[i] SetOrigin(spawn_origin);
					continue;
				}
				if(nodes.size > 0)
				{
					node = Array::random(nodes);
					players[i] SetOrigin(node.origin);
					continue;
				}
				players[i] SetOrigin(origin);
			}
		}
		SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
	#/
}

/*
	Name: updateDevSettingsZm
	Namespace: dev
	Checksum: 0xBBF0471C
	Offset: 0xA40
	Size: 0x453
	Parameters: 0
	Flags: None
*/
function updateDevSettingsZm()
{
	/#
		if(level.players.size > 0)
		{
			if(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported")
			{
				if(!isdefined(level.streamDumpTeamIndex))
				{
					level.streamDumpTeamIndex = 0;
				}
				else
				{
					level.streamDumpTeamIndex++;
				}
				numPoints = 0;
				Spawnpoints = [];
				location = level.scr_zm_map_start_location;
				if(location == "Dev Block strings are not supported" || location == "Dev Block strings are not supported" && isdefined(level.default_start_location))
				{
					location = level.default_start_location;
				}
				match_string = level.scr_zm_ui_gametype + "Dev Block strings are not supported" + location;
				if(level.streamDumpTeamIndex < level.teams.size)
				{
					structs = struct::get_array("Dev Block strings are not supported", "Dev Block strings are not supported");
					if(isdefined(structs))
					{
						foreach(struct in structs)
						{
							if(isdefined(struct.script_string))
							{
								tokens = StrTok(struct.script_string, "Dev Block strings are not supported");
								foreach(token in tokens)
								{
									if(token == match_string)
									{
										Spawnpoints[Spawnpoints.size] = struct;
									}
								}
							}
						}
					}
					else if(!isdefined(Spawnpoints) || Spawnpoints.size == 0)
					{
						Spawnpoints = struct::get_array("Dev Block strings are not supported", "Dev Block strings are not supported");
					}
					if(isdefined(Spawnpoints))
					{
						numPoints = Spawnpoints.size;
					}
				}
				if(numPoints == 0)
				{
					SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
					level.streamDumpTeamIndex = -1;
				}
				else
				{
					averageOrigin = (0, 0, 0);
					averageAngles = (0, 0, 0);
					foreach(spawnpoint in Spawnpoints)
					{
						averageOrigin = averageOrigin + spawnpoint.origin / numPoints;
						averageAngles = averageAngles + spawnpoint.angles / numPoints;
					}
					level.players[0] SetPlayerAngles(averageAngles);
					level.players[0] SetOrigin(averageOrigin);
					wait(0.05);
					SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
				}
			}
		}
	#/
}

/*
	Name: updateDevSettings
	Namespace: dev
	Checksum: 0x71897E1C
	Offset: 0xEA0
	Size: 0x18BD
	Parameters: 0
	Flags: None
*/
function updateDevSettings()
{
	/#
		show_spawns = GetDvarInt("Dev Block strings are not supported");
		show_start_spawns = GetDvarInt("Dev Block strings are not supported");
		player = util::getHostPlayer();
		updateMinimapSetting();
		if(level.players.size > 0)
		{
			if(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported")
			{
				warpAllToHost();
			}
			else if(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported")
			{
				warpAllToHost(GetDvarString("Dev Block strings are not supported"));
			}
			else if(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported")
			{
				warpAllToHost(GetDvarString("Dev Block strings are not supported"));
			}
			else if(StrStartsWith(GetDvarString("Dev Block strings are not supported"), "Dev Block strings are not supported"))
			{
				name = GetSubStr(GetDvarString("Dev Block strings are not supported"), 8);
				function_93f46504(GetDvarString("Dev Block strings are not supported"), name);
			}
			else if(StrStartsWith(GetDvarString("Dev Block strings are not supported"), "Dev Block strings are not supported"))
			{
				name = GetSubStr(GetDvarString("Dev Block strings are not supported"), 11);
				function_93f46504(GetDvarString("Dev Block strings are not supported"), name);
			}
			else if(StrStartsWith(GetDvarString("Dev Block strings are not supported"), "Dev Block strings are not supported"))
			{
				name = GetSubStr(GetDvarString("Dev Block strings are not supported"), 4);
				function_93f46504(undefined, name);
			}
			else if(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported")
			{
				players = GetPlayers();
				SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
				if(!isdefined(level.devgui_start_spawn_index))
				{
					level.devgui_start_spawn_index = 0;
				}
				player = util::getHostPlayer();
				spawns = level.spawn_start[player.pers["Dev Block strings are not supported"]];
				if(!isdefined(spawns) || spawns.size <= 0)
				{
					return;
				}
				for(i = 0; i < players.size; i++)
				{
					players[i] SetOrigin(spawns[level.devgui_start_spawn_index].origin);
					players[i] SetPlayerAngles(spawns[level.devgui_start_spawn_index].angles);
				}
				level.devgui_start_spawn_index++;
				if(level.devgui_start_spawn_index >= spawns.size)
				{
					level.devgui_start_spawn_index = 0;
				}
			}
			else if(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported")
			{
				players = GetPlayers();
				SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
				if(!isdefined(level.devgui_start_spawn_index))
				{
					level.devgui_start_spawn_index = 0;
				}
				player = util::getHostPlayer();
				spawns = level.spawn_start[player.pers["Dev Block strings are not supported"]];
				if(!isdefined(spawns) || spawns.size <= 0)
				{
					return;
				}
				for(i = 0; i < players.size; i++)
				{
					players[i] SetOrigin(spawns[level.devgui_start_spawn_index].origin);
					players[i] SetPlayerAngles(spawns[level.devgui_start_spawn_index].angles);
				}
				level.devgui_start_spawn_index--;
				if(level.devgui_start_spawn_index < 0)
				{
					level.devgui_start_spawn_index = spawns.size - 1;
				}
			}
			else if(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported")
			{
				players = GetPlayers();
				SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
				spawns = level.Spawnpoints;
				spawns = ArrayCombine(spawns, level.dem_spawns, 1, 0);
				if(!isdefined(level.devgui_spawn_index))
				{
					level.devgui_spawn_index = 0;
				}
				else
				{
					level.devgui_spawn_index++;
					if(level.devgui_spawn_index >= spawns.size)
					{
						level.devgui_spawn_index = 0;
					}
				}
				if(!isdefined(spawns) || spawns.size <= 0)
				{
					return;
				}
				for(i = 0; i < players.size; i++)
				{
					players[i] SetOrigin(spawns[level.devgui_spawn_index].origin);
					players[i] SetPlayerAngles(spawns[level.devgui_spawn_index].angles);
				}
			}
			else if(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported")
			{
				players = GetPlayers();
				SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
				spawns = level.Spawnpoints;
				spawns = ArrayCombine(spawns, level.dem_spawns, 1, 0);
				if(!isdefined(level.devgui_spawn_index))
				{
					level.devgui_spawn_index = 0;
				}
				else
				{
					level.devgui_spawn_index--;
					if(level.devgui_spawn_index < 0)
					{
						level.devgui_spawn_index = spawns.size - 1;
					}
				}
				if(!isdefined(spawns) || spawns.size <= 0)
				{
					return;
				}
				for(i = 0; i < players.size; i++)
				{
					players[i] SetOrigin(spawns[level.devgui_spawn_index].origin);
					players[i] SetPlayerAngles(spawns[level.devgui_spawn_index].angles);
				}
			}
			else if(GetDvarString("Dev Block strings are not supported") != "Dev Block strings are not supported")
			{
				player = util::getHostPlayer();
				if(!isdefined(player.devgui_spawn_active))
				{
					player.devgui_spawn_active = 0;
				}
				if(!player.devgui_spawn_active)
				{
					iprintln("Dev Block strings are not supported");
					iprintln("Dev Block strings are not supported");
					player.devgui_spawn_active = 1;
					player thread devgui_spawn_think();
				}
				else
				{
					player notify("devgui_spawn_think");
					player.devgui_spawn_active = 0;
					player SetActionSlot(3, "Dev Block strings are not supported");
				}
				SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
			}
			else if(GetDvarString("Dev Block strings are not supported") != "Dev Block strings are not supported")
			{
				players = GetPlayers();
				if(!isdefined(level.devgui_unlimited_ammo))
				{
					level.devgui_unlimited_ammo = 1;
				}
				else
				{
					level.devgui_unlimited_ammo = !level.devgui_unlimited_ammo;
				}
				if(level.devgui_unlimited_ammo)
				{
					iprintln("Dev Block strings are not supported");
				}
				else
				{
					iprintln("Dev Block strings are not supported");
				}
				for(i = 0; i < players.size; i++)
				{
					if(level.devgui_unlimited_ammo)
					{
						players[i] thread devgui_unlimited_ammo();
						continue;
					}
					players[i] notify("devgui_unlimited_ammo");
				}
				SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
			}
			else if(GetDvarString("Dev Block strings are not supported") != "Dev Block strings are not supported")
			{
				SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
			}
			else if(GetDvarString("Dev Block strings are not supported") != "Dev Block strings are not supported")
			{
				players = GetPlayers();
				for(i = 0; i < players.size; i++)
				{
					player = players[i];
					weapons = player GetWeaponsList();
					ArrayRemoveValue(weapons, level.weaponBaseMelee);
					for(j = 0; j < weapons.size; j++)
					{
						if(weapons[j] == level.weaponNone)
						{
							continue;
						}
						player SetWeaponAmmoStock(weapons[j], 0);
						player SetWeaponAmmoClip(weapons[j], 0);
					}
				}
				SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
			}
			else if(GetDvarString("Dev Block strings are not supported") != "Dev Block strings are not supported")
			{
				players = GetPlayers();
				for(i = 0; i < players.size; i++)
				{
					player = players[i];
					if(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported")
					{
						player setEMPJammed(0);
						continue;
					}
					player setEMPJammed(1);
				}
				SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
			}
			if(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported")
			{
				if(!isdefined(level.streamDumpTeamIndex))
				{
					level.streamDumpTeamIndex = 0;
				}
				else
				{
					level.streamDumpTeamIndex++;
				}
				numPoints = 0;
				if(level.streamDumpTeamIndex < level.teams.size)
				{
					teamName = getArrayKeys(level.teams)[level.streamDumpTeamIndex];
					if(isdefined(level.spawn_start[teamName]))
					{
						numPoints = level.spawn_start[teamName].size;
					}
				}
				if(numPoints == 0)
				{
					SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
					level.streamDumpTeamIndex = -1;
				}
				else
				{
					averageOrigin = (0, 0, 0);
					averageAngles = (0, 0, 0);
					foreach(spawnpoint in level.spawn_start[teamName])
					{
						averageOrigin = averageOrigin + spawnpoint.origin / numPoints;
						averageAngles = averageAngles + spawnpoint.angles / numPoints;
					}
					level.players[0] SetPlayerAngles(averageAngles);
					level.players[0] SetOrigin(averageOrigin);
					wait(0.05);
					SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
				}
			}
		}
		if(GetDvarString("Dev Block strings are not supported") != "Dev Block strings are not supported")
		{
			event = GetDvarString("Dev Block strings are not supported");
			player = util::getHostPlayer();
			FORWARD = AnglesToForward(player.angles);
			right = AnglesToRight(player.angles);
			if(event == "Dev Block strings are not supported")
			{
				player DoDamage(1, player.origin + FORWARD);
			}
			else if(event == "Dev Block strings are not supported")
			{
				player DoDamage(1, player.origin - FORWARD);
			}
			else if(event == "Dev Block strings are not supported")
			{
				player DoDamage(1, player.origin - right);
			}
			else if(event == "Dev Block strings are not supported")
			{
				player DoDamage(1, player.origin + right);
			}
			SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
		}
		if(GetDvarString("Dev Block strings are not supported") != "Dev Block strings are not supported")
		{
			perk = GetDvarString("Dev Block strings are not supported");
			for(i = 0; i < level.players.size; i++)
			{
				level.players[i] unsetPerk(perk);
				level.players[i].extraPerks[perk] = undefined;
			}
			SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
		}
		if(GetDvarString("Dev Block strings are not supported") != "Dev Block strings are not supported")
		{
			nameTokens = StrTok(GetDvarString("Dev Block strings are not supported"), "Dev Block strings are not supported");
			if(nameTokens.size > 1)
			{
				thread xKillsY(nameTokens[0], nameTokens[1]);
			}
			SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
		}
		if(GetDvarString("Dev Block strings are not supported") != "Dev Block strings are not supported")
		{
			player.pers["Dev Block strings are not supported"] = 0;
			player.pers["Dev Block strings are not supported"] = 0;
			newRank = min(GetDvarInt("Dev Block strings are not supported"), 54);
			newRank = max(newRank, 1);
			SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
			lastXp = 0;
			for(index = 0; index <= newRank; index++)
			{
				newXp = rank::getRankInfoMinXP(index);
				player thread rank::giveRankXP("Dev Block strings are not supported", newXp - lastXp);
				lastXp = newXp;
				wait(0.25);
				self notify("cancel_notify");
			}
		}
		else if(GetDvarString("Dev Block strings are not supported") != "Dev Block strings are not supported")
		{
			player thread rank::giveRankXP("Dev Block strings are not supported", GetDvarInt("Dev Block strings are not supported"), 1);
			SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
		}
		if(GetDvarString("Dev Block strings are not supported") != "Dev Block strings are not supported")
		{
			for(i = 0; i < level.players.size; i++)
			{
				level.players[i] hud_message::oldNotifyMessage(GetDvarString("Dev Block strings are not supported"), GetDvarString("Dev Block strings are not supported"), game["Dev Block strings are not supported"]["Dev Block strings are not supported"]);
			}
			announcement(GetDvarString("Dev Block strings are not supported"), 0);
			SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
		}
		if(GetDvarString("Dev Block strings are not supported") != "Dev Block strings are not supported")
		{
			ents = GetEntArray();
			level.entArray = [];
			level.entCounts = [];
			level.entGroups = [];
			for(index = 0; index < ents.size; index++)
			{
				classname = ents[index].classname;
				if(!IsSubStr(classname, "Dev Block strings are not supported"))
				{
					curEnt = ents[index];
					level.entArray[level.entArray.size] = curEnt;
					if(!isdefined(level.entCounts[classname]))
					{
						level.entCounts[classname] = 0;
					}
					level.entCounts[classname]++;
					if(!isdefined(level.entGroups[classname]))
					{
						level.entGroups[classname] = [];
					}
					level.entGroups[classname][level.entGroups[classname].size] = curEnt;
				}
			}
		}
	#/
}

/*
	Name: devgui_spawn_think
	Namespace: dev
	Checksum: 0xA345A04F
	Offset: 0x2768
	Size: 0x18B
	Parameters: 0
	Flags: None
*/
function devgui_spawn_think()
{
	/#
		self notify("devgui_spawn_think");
		self endon("devgui_spawn_think");
		self endon("disconnect");
		DPAD_LEFT = 0;
		DPAD_RIGHT = 0;
		for(;;)
		{
			self SetActionSlot(3, "Dev Block strings are not supported");
			self SetActionSlot(4, "Dev Block strings are not supported");
			if(!DPAD_LEFT && self buttonpressed("Dev Block strings are not supported"))
			{
				SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
				DPAD_LEFT = 1;
			}
			else if(!self buttonpressed("Dev Block strings are not supported"))
			{
				DPAD_LEFT = 0;
			}
			if(!DPAD_RIGHT && self buttonpressed("Dev Block strings are not supported"))
			{
				SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
				DPAD_RIGHT = 1;
			}
			else if(!self buttonpressed("Dev Block strings are not supported"))
			{
				DPAD_RIGHT = 0;
			}
			wait(0.05);
		}
	#/
}

/*
	Name: devgui_unlimited_ammo
	Namespace: dev
	Checksum: 0x563F228F
	Offset: 0x2900
	Size: 0x149
	Parameters: 0
	Flags: None
*/
function devgui_unlimited_ammo()
{
	/#
		self notify("devgui_unlimited_ammo");
		self endon("devgui_unlimited_ammo");
		self endon("disconnect");
		for(;;)
		{
			wait(1);
			primary_weapons = self GetWeaponsListPrimaries();
			offhand_weapons_and_alts = Array::exclude(self GetWeaponsList(1), primary_weapons);
			weapons = ArrayCombine(primary_weapons, offhand_weapons_and_alts, 0, 0);
			ArrayRemoveValue(weapons, level.weaponBaseMelee);
			for(i = 0; i < weapons.size; i++)
			{
				weapon = weapons[i];
				if(weapon == level.weaponNone)
				{
					continue;
				}
				self giveMaxAmmo(weapon);
			}
		}
	#/
}

/*
	Name: devgui_health_debug
	Namespace: dev
	Checksum: 0x95250B68
	Offset: 0x2A58
	Size: 0x317
	Parameters: 0
	Flags: None
*/
function devgui_health_debug()
{
	/#
		self notify("devgui_health_debug");
		self endon("devgui_health_debug");
		self endon("disconnect");
		x = 80;
		y = 40;
		self.debug_health_bar = newClientHudElem(self);
		self.debug_health_bar.x = x + 80;
		self.debug_health_bar.y = y + 2;
		self.debug_health_bar.alignX = "Dev Block strings are not supported";
		self.debug_health_bar.alignY = "Dev Block strings are not supported";
		self.debug_health_bar.horzAlign = "Dev Block strings are not supported";
		self.debug_health_bar.vertAlign = "Dev Block strings are not supported";
		self.debug_health_bar.alpha = 1;
		self.debug_health_bar.foreground = 1;
		self.debug_health_bar SetShader("Dev Block strings are not supported", 1, 8);
		self.debug_health_text = newClientHudElem(self);
		self.debug_health_text.x = x + 80;
		self.debug_health_text.y = y;
		self.debug_health_text.alignX = "Dev Block strings are not supported";
		self.debug_health_text.alignY = "Dev Block strings are not supported";
		self.debug_health_text.horzAlign = "Dev Block strings are not supported";
		self.debug_health_text.vertAlign = "Dev Block strings are not supported";
		self.debug_health_text.alpha = 1;
		self.debug_health_text.fontscale = 1;
		self.debug_health_text.foreground = 1;
		if(!isdefined(self.maxhealth) || self.maxhealth <= 0)
		{
			self.maxhealth = 100;
		}
		for(;;)
		{
			wait(0.05);
			width = self.health / self.maxhealth * 300;
			width = Int(max(width, 1));
			self.debug_health_bar SetShader("Dev Block strings are not supported", width, 8);
			self.debug_health_text setValue(self.health);
		}
	#/
}

/*
	Name: giveExtraPerks
	Namespace: dev
	Checksum: 0xC7FA43D0
	Offset: 0x2D78
	Size: 0xC5
	Parameters: 0
	Flags: None
*/
function giveExtraPerks()
{
	/#
		if(!isdefined(self.extraPerks))
		{
			return;
		}
		PERKS = getArrayKeys(self.extraPerks);
		for(i = 0; i < PERKS.size; i++)
		{
			/#
				println("Dev Block strings are not supported" + self.name + "Dev Block strings are not supported" + PERKS[i] + "Dev Block strings are not supported");
			#/
			self setPerk(PERKS[i]);
		}
	#/
}

/*
	Name: xKillsY
	Namespace: dev
	Checksum: 0x1C9D1429
	Offset: 0x2E48
	Size: 0x14B
	Parameters: 2
	Flags: None
*/
function xKillsY(attackerName, victimName)
{
	/#
		attacker = undefined;
		victim = undefined;
		for(index = 0; index < level.players.size; index++)
		{
			if(level.players[index].name == attackerName)
			{
				attacker = level.players[index];
				continue;
			}
			if(level.players[index].name == victimName)
			{
				victim = level.players[index];
			}
		}
		if(!isalive(attacker) || !isalive(victim))
		{
			return;
		}
		victim thread [[level.callbackPlayerDamage]](attacker, attacker, 1000, 0, "Dev Block strings are not supported", level.weaponNone, (0, 0, 0), (0, 0, 0), "Dev Block strings are not supported", (0, 0, 0), 0, 0, (1, 0, 0));
	#/
}

/*
	Name: testscriptruntimeerrorassert
	Namespace: dev
	Checksum: 0xB430D3B
	Offset: 0x2FA0
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function testscriptruntimeerrorassert()
{
	/#
		wait(1);
		/#
			Assert(0);
		#/
	#/
}

/*
	Name: testscriptruntimeerror2
	Namespace: dev
	Checksum: 0x495F3EC9
	Offset: 0x2FD0
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function testscriptruntimeerror2()
{
	/#
		myundefined = "Dev Block strings are not supported";
		if(myundefined == 1)
		{
			println("Dev Block strings are not supported");
		}
	#/
}

/*
	Name: testscriptruntimeerror1
	Namespace: dev
	Checksum: 0x8F9B8D47
	Offset: 0x3020
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function testscriptruntimeerror1()
{
	/#
		testscriptruntimeerror2();
	#/
}

/*
	Name: testscriptruntimeerror
	Namespace: dev
	Checksum: 0xA55889D4
	Offset: 0x3048
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function testscriptruntimeerror()
{
	/#
		wait(5);
		while(GetDvarString("Dev Block strings are not supported") != "Dev Block strings are not supported")
		{
			break;
			wait(1);
		}
		myerror = GetDvarString("Dev Block strings are not supported");
		SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
		if(myerror == "Dev Block strings are not supported")
		{
			testscriptruntimeerrorassert();
		}
		else
		{
			testscriptruntimeerror1();
		}
		thread testscriptruntimeerror();
	#/
}

/*
	Name: testDvars
	Namespace: dev
	Checksum: 0xD7D2BB8F
	Offset: 0x3120
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function testDvars()
{
	/#
		wait(5);
		while(GetDvarString("Dev Block strings are not supported") != "Dev Block strings are not supported")
		{
			break;
			wait(1);
		}
		tokens = StrTok(GetDvarString("Dev Block strings are not supported"), "Dev Block strings are not supported");
		dvarName = tokens[0];
		dvarValue = tokens[1];
		SetDvar(dvarName, dvarValue);
		SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
		thread testDvars();
	#/
}

/*
	Name: showOneSpawnPoint
	Namespace: dev
	Checksum: 0x8E440970
	Offset: 0x3220
	Size: 0x58D
	Parameters: 5
	Flags: None
*/
function showOneSpawnPoint(spawn_point, color, notification, height, print)
{
	/#
		if(!isdefined(height) || height <= 0)
		{
			height = util::get_player_height();
		}
		if(!isdefined(print))
		{
			print = spawn_point.classname;
		}
		center = spawn_point.origin;
		FORWARD = AnglesToForward(spawn_point.angles);
		right = AnglesToRight(spawn_point.angles);
		FORWARD = VectorScale(FORWARD, 16);
		right = VectorScale(right, 16);
		a = center + FORWARD - right;
		b = center + FORWARD + right;
		c = center - FORWARD + right;
		d = center - FORWARD - right;
		thread lineUntilNotified(a, b, color, 0, notification);
		thread lineUntilNotified(b, c, color, 0, notification);
		thread lineUntilNotified(c, d, color, 0, notification);
		thread lineUntilNotified(d, a, color, 0, notification);
		thread lineUntilNotified(a, a + (0, 0, height), color, 0, notification);
		thread lineUntilNotified(b, b + (0, 0, height), color, 0, notification);
		thread lineUntilNotified(c, c + (0, 0, height), color, 0, notification);
		thread lineUntilNotified(d, d + (0, 0, height), color, 0, notification);
		a = a + (0, 0, height);
		b = b + (0, 0, height);
		c = c + (0, 0, height);
		d = d + (0, 0, height);
		thread lineUntilNotified(a, b, color, 0, notification);
		thread lineUntilNotified(b, c, color, 0, notification);
		thread lineUntilNotified(c, d, color, 0, notification);
		thread lineUntilNotified(d, a, color, 0, notification);
		center = center + (0, 0, height / 2);
		arrow_forward = AnglesToForward(spawn_point.angles);
		arrowhead_forward = AnglesToForward(spawn_point.angles);
		arrowhead_right = AnglesToRight(spawn_point.angles);
		arrow_forward = VectorScale(arrow_forward, 32);
		arrowhead_forward = VectorScale(arrowhead_forward, 24);
		arrowhead_right = VectorScale(arrowhead_right, 8);
		a = center + arrow_forward;
		b = center + arrowhead_forward - arrowhead_right;
		c = center + arrowhead_forward + arrowhead_right;
		thread lineUntilNotified(center, a, color, 0, notification);
		thread lineUntilNotified(a, b, color, 0, notification);
		thread lineUntilNotified(a, c, color, 0, notification);
		thread print3DUntilNotified(spawn_point.origin + (0, 0, height), print, color, 1, 1, notification);
		return;
	#/
}

/*
	Name: print3DUntilNotified
	Namespace: dev
	Checksum: 0xE04B8C8F
	Offset: 0x37B8
	Size: 0x6F
	Parameters: 6
	Flags: None
*/
function print3DUntilNotified(origin, text, color, alpha, scale, notification)
{
	/#
		level endon(notification);
		for(;;)
		{
			print3d(origin, text, color, alpha, scale);
			wait(0.05);
		}
	#/
}

/*
	Name: lineUntilNotified
	Namespace: dev
	Checksum: 0x4FBD31A7
	Offset: 0x3830
	Size: 0x67
	Parameters: 5
	Flags: None
*/
function lineUntilNotified(start, end, color, depthTest, notification)
{
	/#
		level endon(notification);
		for(;;)
		{
			line(start, end, color, depthTest);
			wait(0.05);
		}
	#/
}

/*
	Name: dvar_turned_on
	Namespace: dev
	Checksum: 0x96D21C6B
	Offset: 0x38A0
	Size: 0x29
	Parameters: 1
	Flags: None
*/
function dvar_turned_on(VAL)
{
	/#
		if(VAL <= 0)
		{
			return 0;
		}
		else
		{
			return 1;
		}
	#/
}

/*
	Name: new_hud
	Namespace: dev
	Checksum: 0x6C24969E
	Offset: 0x38D8
	Size: 0xC1
	Parameters: 5
	Flags: None
*/
function new_hud(hud_name, msg, x, y, scale)
{
	/#
		if(!isdefined(level.hud_array))
		{
			level.hud_array = [];
		}
		if(!isdefined(level.hud_array[hud_name]))
		{
			level.hud_array[hud_name] = [];
		}
		hud = set_hudelem(msg, x, y, scale);
		level.hud_array[hud_name][level.hud_array[hud_name].size] = hud;
		return hud;
	#/
}

/*
	Name: set_hudelem
	Namespace: dev
	Checksum: 0x706AD4FA
	Offset: 0x39A8
	Size: 0x1A1
	Parameters: 7
	Flags: None
*/
function set_hudelem(text, x, y, scale, alpha, sort, debug_hudelem)
{
	/#
		/#
			if(!isdefined(alpha))
			{
				alpha = 1;
			}
			if(!isdefined(scale))
			{
				scale = 1;
			}
			if(!isdefined(sort))
			{
				sort = 20;
			}
			hud = NewDebugHudElem();
			hud.debug_hudelem = 1;
			hud.location = 0;
			hud.alignX = "Dev Block strings are not supported";
			hud.alignY = "Dev Block strings are not supported";
			hud.foreground = 1;
			hud.fontscale = scale;
			hud.sort = sort;
			hud.alpha = alpha;
			hud.x = x;
			hud.y = y;
			hud.og_scale = scale;
			if(isdefined(text))
			{
				hud setText(text);
			}
			return hud;
		#/
	#/
}

/*
	Name: getAttachmentChangeModifierButton
	Namespace: dev
	Checksum: 0x32172257
	Offset: 0x3B58
	Size: 0xF
	Parameters: 0
	Flags: None
*/
function getAttachmentChangeModifierButton()
{
	/#
		return "Dev Block strings are not supported";
	#/
}

/*
	Name: watchAttachmentChange
	Namespace: dev
	Checksum: 0xC2E840B
	Offset: 0x3B70
	Size: 0x3AB
	Parameters: 0
	Flags: None
*/
function watchAttachmentChange()
{
	/#
		self endon("disconnect");
		clientNum = self GetEntityNumber();
		if(clientNum != 0)
		{
			return;
		}
		DPAD_LEFT = 0;
		DPAD_RIGHT = 0;
		DPAD_UP = 0;
		DPAD_DOWN = 0;
		lstick_down = 0;
		dpad_modifier_button = getAttachmentChangeModifierButton();
		while(self buttonpressed(dpad_modifier_button))
		{
			if(!DPAD_LEFT && self buttonpressed("Dev Block strings are not supported"))
			{
				self giveweaponnextattachment("Dev Block strings are not supported");
				DPAD_LEFT = 1;
				self thread print_weapon_name();
			}
			if(!DPAD_RIGHT && self buttonpressed("Dev Block strings are not supported"))
			{
				self giveweaponnextattachment("Dev Block strings are not supported");
				DPAD_RIGHT = 1;
				self thread print_weapon_name();
			}
			if(!DPAD_UP && self buttonpressed("Dev Block strings are not supported"))
			{
				self giveweaponnextattachment("Dev Block strings are not supported");
				DPAD_UP = 1;
				self thread print_weapon_name();
			}
			if(!DPAD_DOWN && self buttonpressed("Dev Block strings are not supported"))
			{
				self giveweaponnextattachment("Dev Block strings are not supported");
				DPAD_DOWN = 1;
				self thread print_weapon_name();
			}
			if(!lstick_down && self buttonpressed("Dev Block strings are not supported"))
			{
				self giveweaponnextattachment("Dev Block strings are not supported");
				lstick_down = 1;
				self thread print_weapon_name();
			}
			if(!self buttonpressed("Dev Block strings are not supported"))
			{
				DPAD_LEFT = 0;
			}
			if(!self buttonpressed("Dev Block strings are not supported"))
			{
				DPAD_RIGHT = 0;
			}
			if(!self buttonpressed("Dev Block strings are not supported"))
			{
				DPAD_UP = 0;
			}
			if(!self buttonpressed("Dev Block strings are not supported"))
			{
				DPAD_DOWN = 0;
			}
			if(!self buttonpressed("Dev Block strings are not supported"))
			{
				lstick_down = 0;
			}
			wait(0.05);
		}
	#/
}

/*
	Name: print_weapon_name
	Namespace: dev
	Checksum: 0x602EB61A
	Offset: 0x3F28
	Size: 0x11B
	Parameters: 0
	Flags: None
*/
function print_weapon_name()
{
	/#
		self notify("print_weapon_name");
		self endon("print_weapon_name");
		wait(0.2);
		if(self IsSwitchingWeapons())
		{
			self waittill("weapon_change_complete", weapon);
			fail_safe = 0;
			while(weapon == level.weaponNone)
			{
				self waittill("weapon_change_complete", weapon);
				wait(0.05);
				fail_safe++;
				if(fail_safe > 120)
				{
					break;
				}
			}
		}
		else
		{
			weapon = self GetCurrentWeapon();
		}
		printWeaponName = GetDvarInt("Dev Block strings are not supported", 1);
		if(printWeaponName)
		{
			IPrintLnBold(weapon.name);
		}
	#/
}

/*
	Name: set_equipment_list
	Namespace: dev
	Checksum: 0xD6345BA
	Offset: 0x4050
	Size: 0x189
	Parameters: 0
	Flags: None
*/
function set_equipment_list()
{
	/#
		if(isdefined(level.dev_equipment))
		{
			return;
		}
		level.dev_equipment = [];
		level.dev_equipment[1] = GetWeapon("Dev Block strings are not supported");
		level.dev_equipment[2] = GetWeapon("Dev Block strings are not supported");
		level.dev_equipment[3] = GetWeapon("Dev Block strings are not supported");
		level.dev_equipment[4] = GetWeapon("Dev Block strings are not supported");
		level.dev_equipment[5] = GetWeapon("Dev Block strings are not supported");
		level.dev_equipment[6] = GetWeapon("Dev Block strings are not supported");
		level.dev_equipment[7] = GetWeapon("Dev Block strings are not supported");
		level.dev_equipment[8] = GetWeapon("Dev Block strings are not supported");
		level.dev_equipment[9] = GetWeapon("Dev Block strings are not supported");
	#/
}

/*
	Name: set_grenade_list
	Namespace: dev
	Checksum: 0xDFCE22F0
	Offset: 0x41E8
	Size: 0x1B1
	Parameters: 0
	Flags: None
*/
function set_grenade_list()
{
	/#
		if(isdefined(level.dev_grenade))
		{
			return;
		}
		level.dev_grenade = [];
		level.dev_grenade[1] = GetWeapon("Dev Block strings are not supported");
		level.dev_grenade[2] = GetWeapon("Dev Block strings are not supported");
		level.dev_grenade[3] = GetWeapon("Dev Block strings are not supported");
		level.dev_grenade[4] = GetWeapon("Dev Block strings are not supported");
		level.dev_grenade[5] = GetWeapon("Dev Block strings are not supported");
		level.dev_grenade[6] = GetWeapon("Dev Block strings are not supported");
		level.dev_grenade[7] = GetWeapon("Dev Block strings are not supported");
		level.dev_grenade[8] = GetWeapon("Dev Block strings are not supported");
		level.dev_grenade[9] = GetWeapon("Dev Block strings are not supported");
		level.dev_grenade[10] = GetWeapon("Dev Block strings are not supported");
	#/
}

/*
	Name: take_all_grenades_and_equipment
	Namespace: dev
	Checksum: 0xFDA9360F
	Offset: 0x43A8
	Size: 0xB5
	Parameters: 1
	Flags: None
*/
function take_all_grenades_and_equipment(player)
{
	/#
		for(i = 0; i < level.dev_equipment.size; i++)
		{
			player TakeWeapon(level.dev_equipment[i + 1]);
		}
		for(i = 0; i < level.dev_grenade.size; i++)
		{
			player TakeWeapon(level.dev_grenade[i + 1]);
		}
	#/
}

/*
	Name: equipment_dev_gui
	Namespace: dev
	Checksum: 0xD8F24030
	Offset: 0x4468
	Size: 0x127
	Parameters: 0
	Flags: None
*/
function equipment_dev_gui()
{
	/#
		set_equipment_list();
		set_grenade_list();
		SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
		while(1)
		{
			wait(0.5);
			devgui_int = GetDvarInt("Dev Block strings are not supported");
			if(devgui_int != 0)
			{
				for(i = 0; i < level.players.size; i++)
				{
					take_all_grenades_and_equipment(level.players[i]);
					level.players[i] GiveWeapon(level.dev_equipment[devgui_int]);
				}
				SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
			}
		}
	#/
}

/*
	Name: grenade_dev_gui
	Namespace: dev
	Checksum: 0x3EA2D3AF
	Offset: 0x4598
	Size: 0x127
	Parameters: 0
	Flags: None
*/
function grenade_dev_gui()
{
	/#
		set_equipment_list();
		set_grenade_list();
		SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
		while(1)
		{
			wait(0.5);
			devgui_int = GetDvarInt("Dev Block strings are not supported");
			if(devgui_int != 0)
			{
				for(i = 0; i < level.players.size; i++)
				{
					take_all_grenades_and_equipment(level.players[i]);
					level.players[i] GiveWeapon(level.dev_grenade[devgui_int]);
				}
				SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
			}
		}
	#/
}

/*
	Name: devStrafeRunPathDebugDraw
	Namespace: dev
	Checksum: 0x35D27DCA
	Offset: 0x46C8
	Size: 0x499
	Parameters: 0
	Flags: None
*/
function devStrafeRunPathDebugDraw()
{
	/#
		white = (1, 1, 1);
		red = (1, 0, 0);
		green = (0, 1, 0);
		blue = (0, 0, 1);
		violet = (0.4, 0, 0.6);
		maxDrawTime = 10;
		drawTime = maxDrawTime;
		originTextOffset = VectorScale((0, 0, -1), 50);
		endonmsg = "Dev Block strings are not supported";
		while(1)
		{
			if(GetDvarInt("Dev Block strings are not supported") > 0)
			{
				nodes = [];
				end = 0;
				node = GetVehicleNode("Dev Block strings are not supported", "Dev Block strings are not supported");
				if(!isdefined(node))
				{
					println("Dev Block strings are not supported");
					SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
					continue;
				}
				while(isdefined(node.target))
				{
					new_node = GetVehicleNode(node.target, "Dev Block strings are not supported");
					foreach(n in nodes)
					{
						if(n == new_node)
						{
							end = 1;
						}
					}
					textscale = 30;
					if(drawTime == maxDrawTime)
					{
						node thread drawPathSegment(new_node, violet, violet, 1, textscale, originTextOffset, drawTime, endonmsg);
					}
					if(isdefined(node.script_noteworthy))
					{
						textscale = 10;
						switch(node.script_noteworthy)
						{
							case "Dev Block strings are not supported":
							{
								textColor = green;
								textAlpha = 1;
								break;
							}
							case "Dev Block strings are not supported":
							{
								textColor = red;
								textAlpha = 1;
								break;
							}
							case "Dev Block strings are not supported":
							{
								textColor = white;
								textAlpha = 1;
								break;
							}
						}
						switch(node.script_noteworthy)
						{
							case "Dev Block strings are not supported":
							case "Dev Block strings are not supported":
							case "Dev Block strings are not supported":
							{
								sides = 10;
								radius = 100;
								if(drawTime == maxDrawTime)
								{
									sphere(node.origin, radius, textColor, textAlpha, 1, sides, drawTime * 1000);
								}
								node drawOriginLines();
								node drawNoteWorthyText(textColor, textAlpha, textscale);
								break;
							}
						}
					}
					if(end)
					{
						break;
					}
					nodes[nodes.size] = new_node;
					node = new_node;
				}
				drawTime = drawTime - 0.05;
				if(drawTime < 0)
				{
					drawTime = maxDrawTime;
				}
				wait(0.05);
			}
			else
			{
				wait(1);
			}
		}
	#/
}

/*
	Name: devHeliPathDebugDraw
	Namespace: dev
	Checksum: 0x5A438BFA
	Offset: 0x4B70
	Size: 0x3BF
	Parameters: 0
	Flags: None
*/
function devHeliPathDebugDraw()
{
	/#
		white = (1, 1, 1);
		red = (1, 0, 0);
		green = (0, 1, 0);
		blue = (0, 0, 1);
		textColor = white;
		textAlpha = 1;
		textscale = 1;
		maxDrawTime = 10;
		drawTime = maxDrawTime;
		originTextOffset = VectorScale((0, 0, -1), 50);
		endonmsg = "Dev Block strings are not supported";
		while(1)
		{
			if(GetDvarInt("Dev Block strings are not supported") > 0)
			{
				script_origins = GetEntArray("Dev Block strings are not supported", "Dev Block strings are not supported");
				foreach(ent in script_origins)
				{
					if(isdefined(ent.targetname))
					{
						switch(ent.targetname)
						{
							case "Dev Block strings are not supported":
							{
								textColor = blue;
								textAlpha = 1;
								textscale = 3;
								break;
							}
							case "Dev Block strings are not supported":
							{
								textColor = green;
								textAlpha = 1;
								textscale = 3;
								break;
							}
							case "Dev Block strings are not supported":
							{
								textColor = red;
								textAlpha = 1;
								textscale = 3;
								break;
							}
							case "Dev Block strings are not supported":
							{
								textColor = white;
								textAlpha = 1;
								textscale = 3;
								break;
							}
						}
						switch(ent.targetname)
						{
							case "Dev Block strings are not supported":
							case "Dev Block strings are not supported":
							case "Dev Block strings are not supported":
							case "Dev Block strings are not supported":
							{
								if(drawTime == maxDrawTime)
								{
									ent thread drawPath(textColor, white, textAlpha, textscale, originTextOffset, drawTime, endonmsg);
								}
								ent drawOriginLines();
								ent drawTargetNameText(textColor, textAlpha, textscale);
								ent drawOriginText(textColor, textAlpha, textscale, originTextOffset);
								break;
							}
						}
					}
				}
				drawTime = drawTime - 0.05;
				if(drawTime < 0)
				{
					drawTime = maxDrawTime;
				}
			}
			if(GetDvarInt("Dev Block strings are not supported") == 0)
			{
				level notify(endonmsg);
				drawTime = maxDrawTime;
				wait(1);
			}
			wait(0.05);
		}
	#/
}

/*
	Name: drawOriginLines
	Namespace: dev
	Checksum: 0xEDD3418F
	Offset: 0x4F38
	Size: 0x113
	Parameters: 0
	Flags: None
*/
function drawOriginLines()
{
	/#
		red = (1, 0, 0);
		green = (0, 1, 0);
		blue = (0, 0, 1);
		line(self.origin, self.origin + AnglesToForward(self.angles) * 10, red);
		line(self.origin, self.origin + AnglesToRight(self.angles) * 10, green);
		line(self.origin, self.origin + anglesToUp(self.angles) * 10, blue);
	#/
}

/*
	Name: drawTargetNameText
	Namespace: dev
	Checksum: 0x1969D55
	Offset: 0x5058
	Size: 0x73
	Parameters: 4
	Flags: None
*/
function drawTargetNameText(textColor, textAlpha, textscale, textoffset)
{
	/#
		if(!isdefined(textoffset))
		{
			textoffset = (0, 0, 0);
		}
		print3d(self.origin + textoffset, self.targetname, textColor, textAlpha, textscale);
	#/
}

/*
	Name: drawNoteWorthyText
	Namespace: dev
	Checksum: 0xB62B37CC
	Offset: 0x50D8
	Size: 0x73
	Parameters: 4
	Flags: None
*/
function drawNoteWorthyText(textColor, textAlpha, textscale, textoffset)
{
	/#
		if(!isdefined(textoffset))
		{
			textoffset = (0, 0, 0);
		}
		print3d(self.origin + textoffset, self.script_noteworthy, textColor, textAlpha, textscale);
	#/
}

/*
	Name: drawOriginText
	Namespace: dev
	Checksum: 0x2163031B
	Offset: 0x5158
	Size: 0xC3
	Parameters: 4
	Flags: None
*/
function drawOriginText(textColor, textAlpha, textscale, textoffset)
{
	/#
		if(!isdefined(textoffset))
		{
			textoffset = (0, 0, 0);
		}
		originString = "Dev Block strings are not supported" + self.origin[0] + "Dev Block strings are not supported" + self.origin[1] + "Dev Block strings are not supported" + self.origin[2] + "Dev Block strings are not supported";
		print3d(self.origin + textoffset, originString, textColor, textAlpha, textscale);
	#/
}

/*
	Name: drawSpeedAccelText
	Namespace: dev
	Checksum: 0x9F3838D7
	Offset: 0x5228
	Size: 0xDB
	Parameters: 4
	Flags: None
*/
function drawSpeedAccelText(textColor, textAlpha, textscale, textoffset)
{
	/#
		if(isdefined(self.script_airspeed))
		{
			print3d(self.origin + (0, 0, textoffset[2] * 2), "Dev Block strings are not supported" + self.script_airspeed, textColor, textAlpha, textscale);
		}
		if(isdefined(self.script_accel))
		{
			print3d(self.origin + (0, 0, textoffset[2] * 3), "Dev Block strings are not supported" + self.script_accel, textColor, textAlpha, textscale);
		}
	#/
}

/*
	Name: drawPath
	Namespace: dev
	Checksum: 0x8A673EFB
	Offset: 0x5310
	Size: 0x153
	Parameters: 7
	Flags: None
*/
function drawPath(lineColor, textColor, textAlpha, textscale, textoffset, drawTime, endonmsg)
{
	/#
		level endon(endonmsg);
		ent = self;
		entFirstTarget = ent.targetname;
		while(isdefined(ent.target))
		{
			entTarget = GetEnt(ent.target, "Dev Block strings are not supported");
			ent thread drawPathSegment(entTarget, lineColor, textColor, textAlpha, textscale, textoffset, drawTime, endonmsg);
			if(ent.targetname == "Dev Block strings are not supported")
			{
				entFirstTarget = ent.target;
			}
			else if(ent.target == entFirstTarget)
			{
				break;
			}
			ent = entTarget;
			wait(0.05);
		}
	#/
}

/*
	Name: drawPathSegment
	Namespace: dev
	Checksum: 0x31BFE0B9
	Offset: 0x5470
	Size: 0x123
	Parameters: 8
	Flags: None
*/
function drawPathSegment(entTarget, lineColor, textColor, textAlpha, textscale, textoffset, drawTime, endonmsg)
{
	/#
		level endon(endonmsg);
		while(drawTime > 0)
		{
			if(isdefined(self.targetname) && self.targetname == "Dev Block strings are not supported")
			{
				print3d(self.origin + textoffset, self.targetname, textColor, textAlpha, textscale);
			}
			line(self.origin, entTarget.origin, lineColor);
			self drawSpeedAccelText(textColor, textAlpha, textscale, textoffset);
			drawTime = drawTime - 0.05;
			wait(0.05);
		}
	#/
}

/*
	Name: get_lookat_origin
	Namespace: dev
	Checksum: 0xACEE10D5
	Offset: 0x55A0
	Size: 0xC5
	Parameters: 1
	Flags: None
*/
function get_lookat_origin(player)
{
	/#
		angles = player getPlayerAngles();
		FORWARD = AnglesToForward(angles);
		dir = VectorScale(FORWARD, 8000);
		eye = player GetEye();
		trace = bullettrace(eye, eye + dir, 0, undefined);
		return trace["Dev Block strings are not supported"];
	#/
}

/*
	Name: draw_pathnode
	Namespace: dev
	Checksum: 0x90F6F6A8
	Offset: 0x5670
	Size: 0x73
	Parameters: 2
	Flags: None
*/
function draw_pathnode(node, color)
{
	/#
		if(!isdefined(color))
		{
			color = (1, 0, 1);
		}
		box(node.origin, VectorScale((-1, -1, 0), 16), VectorScale((1, 1, 1), 16), 0, color, 1, 0, 1);
	#/
}

/*
	Name: draw_pathnode_think
	Namespace: dev
	Checksum: 0xAE81BC87
	Offset: 0x56F0
	Size: 0x47
	Parameters: 2
	Flags: None
*/
function draw_pathnode_think(node, color)
{
	/#
		level endon("draw_pathnode_stop");
		for(;;)
		{
			draw_pathnode(node, color);
			wait(0.05);
		}
	#/
}

/*
	Name: draw_pathnodes_stop
	Namespace: dev
	Checksum: 0x5A16418B
	Offset: 0x5740
	Size: 0x19
	Parameters: 0
	Flags: None
*/
function draw_pathnodes_stop()
{
	/#
		wait(5);
		level notify("draw_pathnode_stop");
	#/
}

/*
	Name: node_get
	Namespace: dev
	Checksum: 0xDDCCDFDB
	Offset: 0x5768
	Size: 0x11F
	Parameters: 1
	Flags: None
*/
function node_get(player)
{
	/#
		for(;;)
		{
			wait(0.05);
			origin = get_lookat_origin(player);
			node = GetNearestNode(origin);
			if(!isdefined(node))
			{
				continue;
			}
			if(player buttonpressed("Dev Block strings are not supported"))
			{
				return node;
			}
			else if(player buttonpressed("Dev Block strings are not supported"))
			{
				return undefined;
			}
			if(node.type == "Dev Block strings are not supported")
			{
				draw_pathnode(node, (1, 0, 1));
				continue;
			}
			draw_pathnode(node, (0.85, 0.85, 0.1));
		}
	#/
}

/*
	Name: dev_get_node_pair
	Namespace: dev
	Checksum: 0xE203DB97
	Offset: 0x5890
	Size: 0x1A7
	Parameters: 0
	Flags: None
*/
function dev_get_node_pair()
{
	/#
		player = util::getHostPlayer();
		start = undefined;
		while(!isdefined(start))
		{
			start = node_get(player);
			if(player buttonpressed("Dev Block strings are not supported"))
			{
				level notify("draw_pathnode_stop");
				return undefined;
			}
		}
		level thread draw_pathnode_think(start, (0, 1, 0));
		while(player buttonpressed("Dev Block strings are not supported"))
		{
			wait(0.05);
		}
		end = undefined;
		while(!isdefined(end))
		{
			end = node_get(player);
			if(player buttonpressed("Dev Block strings are not supported"))
			{
				level notify("draw_pathnode_stop");
				return undefined;
			}
		}
		level thread draw_pathnode_think(end, (0, 1, 0));
		level thread draw_pathnodes_stop();
		Array = [];
		Array[0] = start;
		Array[1] = end;
		return Array;
	#/
}

/*
	Name: draw_point
	Namespace: dev
	Checksum: 0x5FE65E0E
	Offset: 0x5A40
	Size: 0x5B
	Parameters: 2
	Flags: None
*/
function draw_point(origin, color)
{
	/#
		if(!isdefined(color))
		{
			color = (1, 0, 1);
		}
		sphere(origin, 16, color, 0.25, 0, 16, 1);
	#/
}

/*
	Name: function_7a7785fc
	Namespace: dev
	Checksum: 0xDF6AFAD9
	Offset: 0x5AA8
	Size: 0x9F
	Parameters: 1
	Flags: None
*/
function function_7a7785fc(player)
{
	/#
		for(;;)
		{
			wait(0.05);
			origin = get_lookat_origin(player);
			if(player buttonpressed("Dev Block strings are not supported"))
			{
				return origin;
			}
			else if(player buttonpressed("Dev Block strings are not supported"))
			{
				return undefined;
			}
			draw_point(origin, (1, 0, 1));
		}
	#/
}

/*
	Name: function_2258c623
	Namespace: dev
	Checksum: 0x53BB7461
	Offset: 0x5B50
	Size: 0x11F
	Parameters: 0
	Flags: None
*/
function function_2258c623()
{
	/#
		player = util::getHostPlayer();
		start = undefined;
		points = [];
		while(!isdefined(start))
		{
			start = function_7a7785fc(player);
			if(!isdefined(start))
			{
				return points;
			}
		}
		while(player buttonpressed("Dev Block strings are not supported"))
		{
			wait(0.05);
		}
		end = undefined;
		while(!isdefined(end))
		{
			end = function_7a7785fc(player);
			if(!isdefined(end))
			{
				return points;
			}
		}
		points[0] = start;
		points[1] = end;
		return points;
	#/
}

