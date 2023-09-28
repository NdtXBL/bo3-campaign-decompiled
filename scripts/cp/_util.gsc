#using scripts\cp\_oed;
#using scripts\cp\_skipto;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\cp\gametypes\coop;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\load_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\math_shared;
#using scripts\shared\sound_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\string_shared;
#using scripts\shared\util_shared;

#namespace util;

/*
	Name: add_gametype
	Namespace: util
	Checksum: 0xDF2C10B4
	Offset: 0x580
	Size: 0xB
	Parameters: 1
	Flags: None
*/
function add_gametype(gt)
{
}

/*
	Name: error
	Namespace: util
	Checksum: 0x4BA8D9B0
	Offset: 0x598
	Size: 0x73
	Parameters: 1
	Flags: None
*/
function error(msg)
{
	/#
		println("Dev Block strings are not supported", msg);
		wait(0.05);
		if(GetDvarString("Dev Block strings are not supported") != "Dev Block strings are not supported")
		{
			/#
				ASSERTMSG("Dev Block strings are not supported");
			#/
		}
	#/
}

/*
	Name: warning
	Namespace: util
	Checksum: 0x4FC3A6D6
	Offset: 0x618
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function warning(msg)
{
	/#
		println("Dev Block strings are not supported" + msg);
	#/
}

/*
	Name: within_fov
	Namespace: util
	Checksum: 0x5A5DD738
	Offset: 0x658
	Size: 0xA1
	Parameters: 4
	Flags: None
*/
function within_fov(start_origin, start_angles, end_origin, fov)
{
	normal = VectorNormalize(end_origin - start_origin);
	FORWARD = AnglesToForward(start_angles);
	dot = VectorDot(FORWARD, normal);
	return dot >= fov;
}

/*
	Name: get_player_height
	Namespace: util
	Checksum: 0xD017B532
	Offset: 0x708
	Size: 0x9
	Parameters: 0
	Flags: None
*/
function get_player_height()
{
	return 70;
}

/*
	Name: IsBulletImpactMOD
	Namespace: util
	Checksum: 0xC661D7F
	Offset: 0x720
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function IsBulletImpactMOD(sMeansOfDeath)
{
	return IsSubStr(sMeansOfDeath, "BULLET") || sMeansOfDeath == "MOD_HEAD_SHOT";
}

/*
	Name: waitRespawnButton
	Namespace: util
	Checksum: 0xF9A05FB7
	Offset: 0x768
	Size: 0x3F
	Parameters: 0
	Flags: None
*/
function waitRespawnButton()
{
	self endon("disconnect");
	self endon("end_respawn");
	while(self useButtonPressed() != 1)
	{
		wait(0.05);
	}
}

/*
	Name: setLowerMessage
	Namespace: util
	Checksum: 0x8947017D
	Offset: 0x7B0
	Size: 0x1FF
	Parameters: 3
	Flags: None
*/
function setLowerMessage(text, time, combineMessageAndTimer)
{
	if(!isdefined(self.lowerMessage))
	{
		return;
	}
	if(isdefined(self.lowerMessageOverride) && text != &"")
	{
		text = self.lowerMessageOverride;
		time = undefined;
	}
	self notify("lower_message_set");
	self.lowerMessage setText(text);
	if(isdefined(time) && time > 0)
	{
		if(!isdefined(combineMessageAndTimer) || !combineMessageAndTimer)
		{
			self.lowerTimer.label = &"";
		}
		else
		{
			self.lowerMessage setText("");
			self.lowerTimer.label = text;
		}
		self.lowerTimer setTimer(time);
	}
	else
	{
		self.lowerTimer setText("");
		self.lowerTimer.label = &"";
	}
	if(self IsSplitscreen())
	{
		self.lowerMessage.fontscale = 1.4;
	}
	self.lowerMessage fadeOverTime(0.05);
	self.lowerMessage.alpha = 1;
	self.lowerTimer fadeOverTime(0.05);
	self.lowerTimer.alpha = 1;
}

/*
	Name: setLowerMessageValue
	Namespace: util
	Checksum: 0x8FD7C138
	Offset: 0x9B8
	Size: 0x227
	Parameters: 3
	Flags: None
*/
function setLowerMessageValue(text, value, combineMessage)
{
	if(!isdefined(self.lowerMessage))
	{
		return;
	}
	if(isdefined(self.lowerMessageOverride) && text != &"")
	{
		text = self.lowerMessageOverride;
		time = undefined;
	}
	self notify("lower_message_set");
	if(!isdefined(combineMessage) || !combineMessage)
	{
		self.lowerMessage setText(text);
	}
	else
	{
		self.lowerMessage setText("");
	}
	if(isdefined(value) && value > 0)
	{
		if(!isdefined(combineMessage) || !combineMessage)
		{
			self.lowerTimer.label = &"";
		}
		else
		{
			self.lowerTimer.label = text;
		}
		self.lowerTimer setValue(value);
	}
	else
	{
		self.lowerTimer setText("");
		self.lowerTimer.label = &"";
	}
	if(self IsSplitscreen())
	{
		self.lowerMessage.fontscale = 1.4;
	}
	self.lowerMessage fadeOverTime(0.05);
	self.lowerMessage.alpha = 1;
	self.lowerTimer fadeOverTime(0.05);
	self.lowerTimer.alpha = 1;
}

/*
	Name: clearLowerMessage
	Namespace: util
	Checksum: 0x5394B20A
	Offset: 0xBE8
	Size: 0xF3
	Parameters: 1
	Flags: None
*/
function clearLowerMessage(fadetime)
{
	if(!isdefined(self.lowerMessage))
	{
		return;
	}
	self notify("lower_message_set");
	if(!isdefined(fadetime) || fadetime == 0)
	{
		setLowerMessage(&"");
	}
	else
	{
		self endon("disconnect");
		self endon("lower_message_set");
		self.lowerMessage fadeOverTime(fadetime);
		self.lowerMessage.alpha = 0;
		self.lowerTimer fadeOverTime(fadetime);
		self.lowerTimer.alpha = 0;
		wait(fadetime);
		self setLowerMessage("");
	}
}

/*
	Name: printOnTeam
	Namespace: util
	Checksum: 0xC07FC4CE
	Offset: 0xCE8
	Size: 0xD5
	Parameters: 2
	Flags: None
*/
function printOnTeam(text, team)
{
	/#
		Assert(isdefined(level.players));
	#/
	for(i = 0; i < level.players.size; i++)
	{
		player = level.players[i];
		if(isdefined(player.pers["team"]) && player.pers["team"] == team)
		{
			player iprintln(text);
		}
	}
}

/*
	Name: printBoldOnTeam
	Namespace: util
	Checksum: 0x2080CF4B
	Offset: 0xDC8
	Size: 0xD5
	Parameters: 2
	Flags: None
*/
function printBoldOnTeam(text, team)
{
	/#
		Assert(isdefined(level.players));
	#/
	for(i = 0; i < level.players.size; i++)
	{
		player = level.players[i];
		if(isdefined(player.pers["team"]) && player.pers["team"] == team)
		{
			player IPrintLnBold(text);
		}
	}
}

/*
	Name: printBoldOnTeamArg
	Namespace: util
	Checksum: 0xC2375D9
	Offset: 0xEA8
	Size: 0xDD
	Parameters: 3
	Flags: None
*/
function printBoldOnTeamArg(text, team, arg)
{
	/#
		Assert(isdefined(level.players));
	#/
	for(i = 0; i < level.players.size; i++)
	{
		player = level.players[i];
		if(isdefined(player.pers["team"]) && player.pers["team"] == team)
		{
			player IPrintLnBold(text, arg);
		}
	}
}

/*
	Name: printOnTeamArg
	Namespace: util
	Checksum: 0x8F3F64B8
	Offset: 0xF90
	Size: 0x1B
	Parameters: 3
	Flags: None
*/
function printOnTeamArg(text, team, arg)
{
}

/*
	Name: printOnPlayers
	Namespace: util
	Checksum: 0x6DD915AF
	Offset: 0xFB8
	Size: 0xED
	Parameters: 2
	Flags: None
*/
function printOnPlayers(text, team)
{
	players = level.players;
	for(i = 0; i < players.size; i++)
	{
		if(isdefined(team))
		{
			if(isdefined(players[i].pers["team"]) && players[i].pers["team"] == team)
			{
				players[i] iprintln(text);
			}
			continue;
		}
		players[i] iprintln(text);
	}
}

/*
	Name: printAndSoundOnEveryone
	Namespace: util
	Checksum: 0xF4320B79
	Offset: 0x10B0
	Size: 0x515
	Parameters: 7
	Flags: None
*/
function printAndSoundOnEveryone(team, enemyteam, printFriendly, printEnemy, soundFriendly, soundEnemy, printarg)
{
	shouldDoSounds = isdefined(soundFriendly);
	shouldDoEnemySounds = 0;
	if(isdefined(soundEnemy))
	{
		/#
			Assert(shouldDoSounds);
		#/
		shouldDoEnemySounds = 1;
	}
	if(!isdefined(printarg))
	{
		printarg = "";
	}
	if(level.Splitscreen || !shouldDoSounds)
	{
		for(i = 0; i < level.players.size; i++)
		{
			player = level.players[i];
			playerteam = player.pers["team"];
			if(isdefined(playerteam))
			{
				if(playerteam == team && isdefined(printFriendly) && printFriendly != &"")
				{
					player iprintln(printFriendly, printarg);
					continue;
				}
				if(isdefined(printEnemy) && printEnemy != &"")
				{
					if(isdefined(enemyteam) && playerteam == enemyteam)
					{
						player iprintln(printEnemy, printarg);
						continue;
					}
					if(!isdefined(enemyteam) && playerteam != team)
					{
						player iprintln(printEnemy, printarg);
					}
				}
			}
		}
		if(shouldDoSounds)
		{
			/#
				Assert(level.Splitscreen);
			#/
			level.players[0] playlocalsound(soundFriendly);
		}
		break;
	}
	/#
		Assert(shouldDoSounds);
	#/
	if(shouldDoEnemySounds)
	{
		for(i = 0; i < level.players.size; i++)
		{
			player = level.players[i];
			playerteam = player.pers["team"];
			if(isdefined(playerteam))
			{
				if(playerteam == team)
				{
					if(isdefined(printFriendly) && printFriendly != &"")
					{
						player iprintln(printFriendly, printarg);
					}
					player playlocalsound(soundFriendly);
					continue;
				}
				if(isdefined(enemyteam) && playerteam == enemyteam || (!isdefined(enemyteam) && playerteam != team))
				{
					if(isdefined(printEnemy) && printEnemy != &"")
					{
						player iprintln(printEnemy, printarg);
					}
					player playlocalsound(soundEnemy);
				}
			}
		}
		break;
	}
	for(i = 0; i < level.players.size; i++)
	{
		player = level.players[i];
		playerteam = player.pers["team"];
		if(isdefined(playerteam))
		{
			if(playerteam == team)
			{
				if(isdefined(printFriendly) && printFriendly != &"")
				{
					player iprintln(printFriendly, printarg);
				}
				player playlocalsound(soundFriendly);
				continue;
			}
			if(isdefined(printEnemy) && printEnemy != &"")
			{
				if(isdefined(enemyteam) && playerteam == enemyteam)
				{
					player iprintln(printEnemy, printarg);
					continue;
				}
				if(!isdefined(enemyteam) && playerteam != team)
				{
					player iprintln(printEnemy, printarg);
				}
			}
		}
	}
}

/*
	Name: _playLocalSound
	Namespace: util
	Checksum: 0x44B504FA
	Offset: 0x15D0
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function _playLocalSound(soundAlias)
{
	if(level.Splitscreen && !self IsHost())
	{
		return;
	}
	self playlocalsound(soundAlias);
}

/*
	Name: getOtherTeam
	Namespace: util
	Checksum: 0xE92F89DA
	Offset: 0x1628
	Size: 0x73
	Parameters: 1
	Flags: None
*/
function getOtherTeam(team)
{
	if(team == "allies")
	{
		return "axis";
	}
	else if(team == "axis")
	{
		return "allies";
	}
	else
	{
		return "allies";
	}
	/#
		ASSERTMSG("Dev Block strings are not supported" + team);
	#/
}

/*
	Name: getTeamMask
	Namespace: util
	Checksum: 0x5793426
	Offset: 0x16A8
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function getTeamMask(team)
{
	if(!level.teambased || !isdefined(team) || !isdefined(level.spawnsystem.iSPAWN_TEAMMASK[team]))
	{
		return level.spawnsystem.iSPAWN_TEAMMASK_FREE;
	}
	return level.spawnsystem.iSPAWN_TEAMMASK[team];
}

/*
	Name: getOtherTeamsMask
	Namespace: util
	Checksum: 0x7E0A6428
	Offset: 0x1718
	Size: 0xC3
	Parameters: 1
	Flags: None
*/
function getOtherTeamsMask(skip_team)
{
	mask = 0;
	foreach(team in level.teams)
	{
		if(team == skip_team)
		{
			continue;
		}
		mask = mask | getTeamMask(team);
	}
	return mask;
}

/*
	Name: plot_points
	Namespace: util
	Checksum: 0x1BE427E3
	Offset: 0x17E8
	Size: 0x125
	Parameters: 5
	Flags: None
*/
function plot_points(plotpoints, r, g, b, var_8bb7be29)
{
	if(!isdefined(r))
	{
		r = 1;
	}
	if(!isdefined(g))
	{
		g = 1;
	}
	if(!isdefined(b))
	{
		b = 1;
	}
	if(!isdefined(var_8bb7be29))
	{
		var_8bb7be29 = 1;
	}
	/#
		lastpoint = plotpoints[0];
		var_8bb7be29 = Int(var_8bb7be29);
		for(i = 1; i < plotpoints.size; i++)
		{
			line(lastpoint, plotpoints[i], (r, g, b), 1, var_8bb7be29);
			lastpoint = plotpoints[i];
		}
	#/
}

/*
	Name: getfx
	Namespace: util
	Checksum: 0x740149DF
	Offset: 0x1918
	Size: 0x4F
	Parameters: 1
	Flags: None
*/
function getfx(FX)
{
	/#
		Assert(isdefined(level._effect[FX]), "Dev Block strings are not supported" + FX + "Dev Block strings are not supported");
	#/
	return level._effect[FX];
}

/*
	Name: set_dvar_if_unset
	Namespace: util
	Checksum: 0x69002AD8
	Offset: 0x1970
	Size: 0x91
	Parameters: 3
	Flags: None
*/
function set_dvar_if_unset(dvar, value, reset)
{
	if(!isdefined(reset))
	{
		reset = 0;
	}
	if(reset || GetDvarString(dvar) == "")
	{
		SetDvar(dvar, value);
		return value;
	}
	return GetDvarString(dvar);
}

/*
	Name: set_dvar_float_if_unset
	Namespace: util
	Checksum: 0x469F7BDA
	Offset: 0x1A10
	Size: 0x89
	Parameters: 3
	Flags: None
*/
function set_dvar_float_if_unset(dvar, value, reset)
{
	if(!isdefined(reset))
	{
		reset = 0;
	}
	if(reset || GetDvarString(dvar) == "")
	{
		SetDvar(dvar, value);
	}
	return GetDvarFloat(dvar);
}

/*
	Name: set_dvar_int_if_unset
	Namespace: util
	Checksum: 0x5CC43A58
	Offset: 0x1AA8
	Size: 0xA1
	Parameters: 3
	Flags: None
*/
function set_dvar_int_if_unset(dvar, value, reset)
{
	if(!isdefined(reset))
	{
		reset = 0;
	}
	if(reset || GetDvarString(dvar) == "")
	{
		SetDvar(dvar, value);
		return Int(value);
	}
	return GetDvarInt(dvar);
}

/*
	Name: add_trigger_to_ent
	Namespace: util
	Checksum: 0xD159A055
	Offset: 0x1B58
	Size: 0x59
	Parameters: 1
	Flags: None
*/
function add_trigger_to_ent(ent)
{
	if(!isdefined(ent._triggers))
	{
		ent._triggers = [];
	}
	ent._triggers[self GetEntityNumber()] = 1;
}

/*
	Name: remove_trigger_from_ent
	Namespace: util
	Checksum: 0x3AB1DF54
	Offset: 0x1BC0
	Size: 0x79
	Parameters: 1
	Flags: None
*/
function remove_trigger_from_ent(ent)
{
	if(!isdefined(ent))
	{
		return;
	}
	if(!isdefined(ent._triggers))
	{
		return;
	}
	if(!isdefined(ent._triggers[self GetEntityNumber()]))
	{
		return;
	}
	ent._triggers[self GetEntityNumber()] = 0;
}

/*
	Name: ent_already_in_trigger
	Namespace: util
	Checksum: 0x20D53B0F
	Offset: 0x1C48
	Size: 0x6F
	Parameters: 1
	Flags: None
*/
function ent_already_in_trigger(trig)
{
	if(!isdefined(self._triggers))
	{
		return 0;
	}
	if(!isdefined(self._triggers[trig GetEntityNumber()]))
	{
		return 0;
	}
	if(!self._triggers[trig GetEntityNumber()])
	{
		return 0;
	}
	return 1;
}

/*
	Name: trigger_thread_death_monitor
	Namespace: util
	Checksum: 0x97F36F82
	Offset: 0x1CC0
	Size: 0x43
	Parameters: 2
	Flags: None
*/
function trigger_thread_death_monitor(ent, ender)
{
	ent waittill("death");
	self endon(ender);
	self remove_trigger_from_ent(ent);
}

/*
	Name: trigger_thread
	Namespace: util
	Checksum: 0x7358CBDD
	Offset: 0x1D10
	Size: 0x1A5
	Parameters: 3
	Flags: None
*/
function trigger_thread(ent, on_enter_payload, on_exit_payload)
{
	ent endon("entityshutdown");
	ent endon("death");
	if(ent ent_already_in_trigger(self))
	{
		return;
	}
	self add_trigger_to_ent(ent);
	ender = "end_trig_death_monitor" + self GetEntityNumber() + " " + ent GetEntityNumber();
	self thread trigger_thread_death_monitor(ent, ender);
	endon_condition = "leave_trigger_" + self GetEntityNumber();
	if(isdefined(on_enter_payload))
	{
		self thread [[on_enter_payload]](ent, endon_condition);
	}
	while(isdefined(ent) && ent istouching(self))
	{
		wait(0.01);
	}
	ent notify(endon_condition);
	if(isdefined(ent) && isdefined(on_exit_payload))
	{
		self thread [[on_exit_payload]](ent);
	}
	if(isdefined(ent))
	{
		self remove_trigger_from_ent(ent);
	}
	self notify(ender);
}

/*
	Name: isStrStart
	Namespace: util
	Checksum: 0x73F82EDD
	Offset: 0x1EC0
	Size: 0x37
	Parameters: 2
	Flags: None
*/
function isStrStart(string1, subStr)
{
	return GetSubStr(string1, 0, subStr.size) == subStr;
}

/*
	Name: isKillStreaksEnabled
	Namespace: util
	Checksum: 0xCB1C7A40
	Offset: 0x1F00
	Size: 0x15
	Parameters: 0
	Flags: None
*/
function isKillStreaksEnabled()
{
	return isdefined(level.killstreaksenabled) && level.killstreaksenabled;
}

/*
	Name: setUsingRemote
	Namespace: util
	Checksum: 0x41B8C145
	Offset: 0x1F20
	Size: 0x81
	Parameters: 1
	Flags: None
*/
function setUsingRemote(remoteName)
{
	if(isdefined(self.carryIcon))
	{
		self.carryIcon.alpha = 0;
	}
	/#
		Assert(!self isUsingRemote());
	#/
	self.usingRemote = remoteName;
	self disableOffhandWeapons();
	self notify("using_remote");
}

/*
	Name: getRemoteName
	Namespace: util
	Checksum: 0x3B09E591
	Offset: 0x1FB0
	Size: 0x31
	Parameters: 0
	Flags: None
*/
function getRemoteName()
{
	/#
		Assert(self isUsingRemote());
	#/
	return self.usingRemote;
}

/*
	Name: setObjectiveText
	Namespace: util
	Checksum: 0x3EB3B383
	Offset: 0x1FF0
	Size: 0x31
	Parameters: 2
	Flags: None
*/
function setObjectiveText(team, text)
{
	game["strings"]["objective_" + team] = text;
}

/*
	Name: setObjectiveScoreText
	Namespace: util
	Checksum: 0x8AF14CEC
	Offset: 0x2030
	Size: 0x31
	Parameters: 2
	Flags: None
*/
function setObjectiveScoreText(team, text)
{
	game["strings"]["objective_score_" + team] = text;
}

/*
	Name: setObjectiveHintText
	Namespace: util
	Checksum: 0x721EC063
	Offset: 0x2070
	Size: 0x31
	Parameters: 2
	Flags: None
*/
function setObjectiveHintText(team, text)
{
	game["strings"]["objective_hint_" + team] = text;
}

/*
	Name: getObjectiveText
	Namespace: util
	Checksum: 0xBE40CBD0
	Offset: 0x20B0
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function getObjectiveText(team)
{
	return game["strings"]["objective_" + team];
}

/*
	Name: getObjectiveScoreText
	Namespace: util
	Checksum: 0x2BD94D9D
	Offset: 0x20E0
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function getObjectiveScoreText(team)
{
	return game["strings"]["objective_score_" + team];
}

/*
	Name: getObjectiveHintText
	Namespace: util
	Checksum: 0x4E56EA
	Offset: 0x2110
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function getObjectiveHintText(team)
{
	return game["strings"]["objective_hint_" + team];
}

/*
	Name: registerRoundSwitch
	Namespace: util
	Checksum: 0x2FD99B1D
	Offset: 0x2140
	Size: 0x63
	Parameters: 2
	Flags: None
*/
function registerRoundSwitch(minValue, maxValue)
{
	level.roundSwitch = math::clamp(GetGametypeSetting("roundSwitch"), minValue, maxValue);
	level.roundSwitchMin = minValue;
	level.roundSwitchMax = maxValue;
}

/*
	Name: registerRoundLimit
	Namespace: util
	Checksum: 0xFD035CB3
	Offset: 0x21B0
	Size: 0x63
	Parameters: 2
	Flags: None
*/
function registerRoundLimit(minValue, maxValue)
{
	level.roundLimit = math::clamp(GetGametypeSetting("roundLimit"), minValue, maxValue);
	level.roundLimitMin = minValue;
	level.roundLimitMax = maxValue;
}

/*
	Name: registerRoundWinLimit
	Namespace: util
	Checksum: 0xB70797AD
	Offset: 0x2220
	Size: 0x63
	Parameters: 2
	Flags: None
*/
function registerRoundWinLimit(minValue, maxValue)
{
	level.roundWinLimit = math::clamp(GetGametypeSetting("roundWinLimit"), minValue, maxValue);
	level.roundWinLimitMin = minValue;
	level.roundWinLimitMax = maxValue;
}

/*
	Name: registerScoreLimit
	Namespace: util
	Checksum: 0xC487F20
	Offset: 0x2290
	Size: 0x83
	Parameters: 2
	Flags: None
*/
function registerScoreLimit(minValue, maxValue)
{
	level.scoreLimit = math::clamp(GetGametypeSetting("scoreLimit"), minValue, maxValue);
	level.scoreLimitMin = minValue;
	level.scoreLimitMax = maxValue;
	SetDvar("ui_scorelimit", level.scoreLimit);
}

/*
	Name: registerTimeLimit
	Namespace: util
	Checksum: 0x67B07D14
	Offset: 0x2320
	Size: 0x83
	Parameters: 2
	Flags: None
*/
function registerTimeLimit(minValue, maxValue)
{
	level.timelimit = math::clamp(GetGametypeSetting("timeLimit"), minValue, maxValue);
	level.timeLimitMin = minValue;
	level.timeLimitMax = maxValue;
	SetDvar("ui_timelimit", level.timelimit);
}

/*
	Name: registerNumLives
	Namespace: util
	Checksum: 0x70E37891
	Offset: 0x23B0
	Size: 0x63
	Parameters: 2
	Flags: None
*/
function registerNumLives(minValue, maxValue)
{
	level.numLives = math::clamp(GetGametypeSetting("playerNumLives"), minValue, maxValue);
	level.numLivesMin = minValue;
	level.numLivesMax = maxValue;
}

/*
	Name: getPlayerFromClientNum
	Namespace: util
	Checksum: 0x8F0FFC76
	Offset: 0x2420
	Size: 0x7D
	Parameters: 1
	Flags: None
*/
function getPlayerFromClientNum(clientNum)
{
	if(clientNum < 0)
	{
		return undefined;
	}
	for(i = 0; i < level.players.size; i++)
	{
		if(level.players[i] GetEntityNumber() == clientNum)
		{
			return level.players[i];
		}
	}
	return undefined;
}

/*
	Name: isPressBuild
	Namespace: util
	Checksum: 0xECFC0627
	Offset: 0x24A8
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function isPressBuild()
{
	buildType = GetDvarString("buildType");
	if(isdefined(buildType) && buildType == "press")
	{
		return 1;
	}
	return 0;
}

/*
	Name: isFlashbanged
	Namespace: util
	Checksum: 0xFD5BC1A0
	Offset: 0x2500
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function isFlashbanged()
{
	return isdefined(self.flashEndTime) && GetTime() < self.flashEndTime;
}

/*
	Name: function_d9c13489
	Namespace: util
	Checksum: 0x3460CF7E
	Offset: 0x2528
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_d9c13489()
{
	time = GetTime();
	if(isdefined(self.stunned) && self.stunned)
	{
		return 1;
	}
	if(self isFlashbanged())
	{
		return 1;
	}
	if(isdefined(self.stun_fx))
	{
		return 1;
	}
	if(isdefined(self.lastStunnedTime) && self.lastStunnedTime + 5000 > time)
	{
		return 1;
	}
	if(isdefined(self.concussionEndTime) && self.concussionEndTime > time)
	{
		return 1;
	}
	return 0;
}

/*
	Name: DoMaxDamage
	Namespace: util
	Checksum: 0x5F65E78A
	Offset: 0x25E0
	Size: 0xBB
	Parameters: 5
	Flags: None
*/
function DoMaxDamage(origin, attacker, inflictor, headshot, mod)
{
	if(isdefined(self.damagedToDeath) && self.damagedToDeath)
	{
		return;
	}
	if(isdefined(self.maxhealth))
	{
		damage = self.maxhealth + 1;
	}
	else
	{
		damage = self.health + 1;
	}
	self.damagedToDeath = 1;
	self DoDamage(damage, origin, attacker, inflictor, headshot, mod);
}

/*
	Name: self_delete
	Namespace: util
	Checksum: 0x9EE18FBF
	Offset: 0x26A8
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function self_delete()
{
	if(isdefined(self))
	{
		self delete();
	}
}

/*
	Name: screen_message_create
	Namespace: util
	Checksum: 0x4F7A454C
	Offset: 0x26D8
	Size: 0x52B
	Parameters: 5
	Flags: None
*/
function screen_message_create(string_message_1, string_message_2, string_message_3, n_offset_y, n_time)
{
	level notify("screen_message_create");
	level endon("screen_message_create");
	if(isdefined(level.missionfailed) && level.missionfailed)
	{
		return;
	}
	if(GetDvarInt("hud_missionFailed") == 1)
	{
		return;
	}
	if(!isdefined(n_offset_y))
	{
		n_offset_y = 0;
	}
	if(!isdefined(level._screen_message_1))
	{
		level._screen_message_1 = NewHudElem();
		level._screen_message_1.elemType = "font";
		level._screen_message_1.font = "objective";
		level._screen_message_1.fontscale = 1.8;
		level._screen_message_1.horzAlign = "center";
		level._screen_message_1.vertAlign = "middle";
		level._screen_message_1.alignX = "center";
		level._screen_message_1.alignY = "middle";
		level._screen_message_1.y = -60 + n_offset_y;
		level._screen_message_1.sort = 2;
		level._screen_message_1.color = (1, 1, 1);
		level._screen_message_1.alpha = 1;
		level._screen_message_1.hidewheninmenu = 1;
	}
	level._screen_message_1 setText(string_message_1);
	if(isdefined(string_message_2))
	{
		if(!isdefined(level._screen_message_2))
		{
			level._screen_message_2 = NewHudElem();
			level._screen_message_2.elemType = "font";
			level._screen_message_2.font = "objective";
			level._screen_message_2.fontscale = 1.8;
			level._screen_message_2.horzAlign = "center";
			level._screen_message_2.vertAlign = "middle";
			level._screen_message_2.alignX = "center";
			level._screen_message_2.alignY = "middle";
			level._screen_message_2.y = -33 + n_offset_y;
			level._screen_message_2.sort = 2;
			level._screen_message_2.color = (1, 1, 1);
			level._screen_message_2.alpha = 1;
			level._screen_message_2.hidewheninmenu = 1;
		}
		level._screen_message_2 setText(string_message_2);
	}
	else if(isdefined(level._screen_message_2))
	{
		level._screen_message_2 destroy();
	}
	if(isdefined(string_message_3))
	{
		if(!isdefined(level._screen_message_3))
		{
			level._screen_message_3 = NewHudElem();
			level._screen_message_3.elemType = "font";
			level._screen_message_3.font = "objective";
			level._screen_message_3.fontscale = 1.8;
			level._screen_message_3.horzAlign = "center";
			level._screen_message_3.vertAlign = "middle";
			level._screen_message_3.alignX = "center";
			level._screen_message_3.alignY = "middle";
			level._screen_message_3.y = -6 + n_offset_y;
			level._screen_message_3.sort = 2;
			level._screen_message_3.color = (1, 1, 1);
			level._screen_message_3.alpha = 1;
			level._screen_message_3.hidewheninmenu = 1;
		}
		level._screen_message_3 setText(string_message_3);
	}
	else if(isdefined(level._screen_message_3))
	{
		level._screen_message_3 destroy();
	}
	if(isdefined(n_time) && n_time > 0)
	{
		wait(n_time);
		screen_message_delete();
	}
}

/*
	Name: screen_message_delete
	Namespace: util
	Checksum: 0x2397AB4D
	Offset: 0x2C10
	Size: 0x93
	Parameters: 1
	Flags: None
*/
function screen_message_delete(delay)
{
	if(isdefined(delay))
	{
		wait(delay);
	}
	if(isdefined(level._screen_message_1))
	{
		level._screen_message_1 destroy();
	}
	if(isdefined(level._screen_message_2))
	{
		level._screen_message_2 destroy();
	}
	if(isdefined(level._screen_message_3))
	{
		level._screen_message_3 destroy();
	}
}

/*
	Name: function_67cfce72
	Namespace: util
	Checksum: 0xCE784FE7
	Offset: 0x2CB0
	Size: 0x54B
	Parameters: 5
	Flags: None
*/
function function_67cfce72(string_message_1, string_message_2, string_message_3, n_offset_y, n_time)
{
	self notify("screen_message_create");
	self endon("screen_message_create");
	self endon("death");
	if(isdefined(level.missionfailed) && level.missionfailed)
	{
		return;
	}
	if(GetDvarInt("hud_missionFailed") == 1)
	{
		return;
	}
	if(!isdefined(n_offset_y))
	{
		n_offset_y = 0;
	}
	if(!isdefined(self._screen_message_1))
	{
		self._screen_message_1 = newClientHudElem(self);
		self._screen_message_1.elemType = "font";
		self._screen_message_1.font = "objective";
		self._screen_message_1.fontscale = 1.8;
		self._screen_message_1.horzAlign = "center";
		self._screen_message_1.vertAlign = "middle";
		self._screen_message_1.alignX = "center";
		self._screen_message_1.alignY = "middle";
		self._screen_message_1.y = -60 + n_offset_y;
		self._screen_message_1.sort = 2;
		self._screen_message_1.color = (1, 1, 1);
		self._screen_message_1.alpha = 1;
		self._screen_message_1.hidewheninmenu = 1;
	}
	self._screen_message_1 setText(string_message_1);
	if(isdefined(string_message_2))
	{
		if(!isdefined(self._screen_message_2))
		{
			self._screen_message_2 = newClientHudElem(self);
			self._screen_message_2.elemType = "font";
			self._screen_message_2.font = "objective";
			self._screen_message_2.fontscale = 1.8;
			self._screen_message_2.horzAlign = "center";
			self._screen_message_2.vertAlign = "middle";
			self._screen_message_2.alignX = "center";
			self._screen_message_2.alignY = "middle";
			self._screen_message_2.y = -33 + n_offset_y;
			self._screen_message_2.sort = 2;
			self._screen_message_2.color = (1, 1, 1);
			self._screen_message_2.alpha = 1;
			self._screen_message_2.hidewheninmenu = 1;
		}
		self._screen_message_2 setText(string_message_2);
	}
	else if(isdefined(self._screen_message_2))
	{
		self._screen_message_2 destroy();
	}
	if(isdefined(string_message_3))
	{
		if(!isdefined(self._screen_message_3))
		{
			self._screen_message_3 = newClientHudElem(self);
			self._screen_message_3.elemType = "font";
			self._screen_message_3.font = "objective";
			self._screen_message_3.fontscale = 1.8;
			self._screen_message_3.horzAlign = "center";
			self._screen_message_3.vertAlign = "middle";
			self._screen_message_3.alignX = "center";
			self._screen_message_3.alignY = "middle";
			self._screen_message_3.y = -6 + n_offset_y;
			self._screen_message_3.sort = 2;
			self._screen_message_3.color = (1, 1, 1);
			self._screen_message_3.alpha = 1;
			self._screen_message_3.hidewheninmenu = 1;
		}
		self._screen_message_3 setText(string_message_3);
	}
	else if(isdefined(self._screen_message_3))
	{
		self._screen_message_3 destroy();
	}
	if(isdefined(n_time) && n_time > 0)
	{
		wait(n_time);
		self function_79f9f98d();
	}
}

/*
	Name: function_79f9f98d
	Namespace: util
	Checksum: 0x2FA20BAD
	Offset: 0x3208
	Size: 0x9B
	Parameters: 1
	Flags: None
*/
function function_79f9f98d(delay)
{
	self endon("death");
	if(isdefined(delay))
	{
		wait(delay);
	}
	if(isdefined(self._screen_message_1))
	{
		self._screen_message_1 destroy();
	}
	if(isdefined(self._screen_message_2))
	{
		self._screen_message_2 destroy();
	}
	if(isdefined(self._screen_message_3))
	{
		self._screen_message_3 destroy();
	}
}

/*
	Name: screen_fade_out
	Namespace: util
	Checksum: 0xEDF6A533
	Offset: 0x32B0
	Size: 0x3B
	Parameters: 3
	Flags: None
*/
function screen_fade_out(n_time, str_shader, str_menu_id)
{
	level LUI::screen_fade_out(n_time, str_shader, str_menu_id);
}

/*
	Name: screen_fade_in
	Namespace: util
	Checksum: 0x5EE4EE3B
	Offset: 0x32F8
	Size: 0x3B
	Parameters: 3
	Flags: None
*/
function screen_fade_in(n_time, str_shader, str_menu_id)
{
	level LUI::screen_fade_in(n_time, str_shader, str_menu_id);
}

/*
	Name: screen_fade_to_alpha_with_blur
	Namespace: util
	Checksum: 0x9EDB253F
	Offset: 0x3340
	Size: 0x121
	Parameters: 4
	Flags: None
*/
function screen_fade_to_alpha_with_blur(n_alpha, n_fade_time, n_blur, str_shader)
{
	/#
		Assert(isdefined(n_alpha), "Dev Block strings are not supported");
	#/
	/#
		Assert(isPlayer(self), "Dev Block strings are not supported");
	#/
	level notify("_screen_fade");
	level endon("_screen_fade");
	hud_fade = get_fade_hud(str_shader);
	hud_fade fadeOverTime(n_fade_time);
	hud_fade.alpha = n_alpha;
	if(isdefined(n_blur) && n_blur >= 0)
	{
		self setblur(n_blur, n_fade_time);
	}
	wait(n_fade_time);
}

/*
	Name: screen_fade_to_alpha
	Namespace: util
	Checksum: 0xF4C007B7
	Offset: 0x3470
	Size: 0x3B
	Parameters: 3
	Flags: None
*/
function screen_fade_to_alpha(n_alpha, n_fade_time, str_shader)
{
	screen_fade_to_alpha_with_blur(n_alpha, n_fade_time, 0, str_shader);
}

/*
	Name: get_fade_hud
	Namespace: util
	Checksum: 0x5A34BA90
	Offset: 0x34B8
	Size: 0xF9
	Parameters: 1
	Flags: None
*/
function get_fade_hud(str_shader)
{
	if(!isdefined(str_shader))
	{
		str_shader = "black";
	}
	if(!isdefined(level.fade_hud))
	{
		level.fade_hud = NewHudElem();
		level.fade_hud.x = 0;
		level.fade_hud.y = 0;
		level.fade_hud.horzAlign = "fullscreen";
		level.fade_hud.vertAlign = "fullscreen";
		level.fade_hud.sort = 0;
		level.fade_hud.alpha = 0;
	}
	level.fade_hud SetShader(str_shader, 640, 480);
	return level.fade_hud;
}

/*
	Name: missionFailedWrapper
	Namespace: util
	Checksum: 0x4A67E5CF
	Offset: 0x35C0
	Size: 0x153
	Parameters: 9
	Flags: None
*/
function missionFailedWrapper(var_49d9e5c0, fail_hint, shader, iWidth, iHeight, fDelay, x, y, b_count_as_death)
{
	if(!isdefined(b_count_as_death))
	{
		b_count_as_death = 1;
	}
	if(level.missionfailed)
	{
		return;
	}
	if(isdefined(level.nextmission))
	{
		return;
	}
	if(GetDvarString("failure_disabled") == "1")
	{
		return;
	}
	screen_message_delete();
	if(isdefined(fail_hint))
	{
		SetDvar("ui_deadquote", fail_hint);
	}
	if(isdefined(shader))
	{
		GetPlayers()[0] thread load::special_death_indicator_hudelement(shader, iWidth, iHeight, fDelay, x, y);
	}
	level.missionfailed = 1;
	level thread coop::function_5ed5738a(var_49d9e5c0, fail_hint);
}

/*
	Name: missionfailedwrapper_nodeath
	Namespace: util
	Checksum: 0x5F9CED22
	Offset: 0x3720
	Size: 0x7B
	Parameters: 8
	Flags: None
*/
function missionfailedwrapper_nodeath(var_49d9e5c0, fail_hint, shader, iWidth, iHeight, fDelay, x, y)
{
	missionFailedWrapper(var_49d9e5c0, fail_hint, shader, iWidth, iHeight, fDelay, x, y, 0);
}

/*
	Name: helper_message
	Namespace: util
	Checksum: 0x1AE7F975
	Offset: 0x37A8
	Size: 0x13D
	Parameters: 3
	Flags: None
*/
function helper_message(message, delay, str_abort_flag)
{
	level notify("kill_helper_message");
	level endon("kill_helper_message");
	function_2ffd5725();
	level.helper_message = message;
	screen_message_create(message);
	if(!isdefined(delay))
	{
		delay = 5;
	}
	start_time = GetTime();
	while(1)
	{
		time = GetTime();
		DT = time - start_time / 1000;
		if(DT >= delay)
		{
			break;
		}
		if(isdefined(str_abort_flag) && level flag::get(str_abort_flag) == 1)
		{
			break;
		}
		wait(0.01);
	}
	if(isdefined(level.helper_message))
	{
		screen_message_delete();
	}
	level.helper_message = undefined;
}

/*
	Name: function_2ffd5725
	Namespace: util
	Checksum: 0x8DDA742B
	Offset: 0x38F0
	Size: 0x2D
	Parameters: 0
	Flags: None
*/
function function_2ffd5725()
{
	if(isdefined(level.helper_message))
	{
		screen_message_delete();
	}
	level.helper_message = undefined;
}

/*
	Name: show_hit_marker
	Namespace: util
	Checksum: 0xBB3AE274
	Offset: 0x3928
	Size: 0x87
	Parameters: 0
	Flags: None
*/
function show_hit_marker()
{
	if(isdefined(self) && isdefined(self.hud_damagefeedback))
	{
		self.hud_damagefeedback SetShader("damage_feedback", 24, 48);
		self.hud_damagefeedback.alpha = 1;
		self.hud_damagefeedback fadeOverTime(1);
		self.hud_damagefeedback.alpha = 0;
	}
}

/*
	Name: init_hero
	Namespace: util
	Checksum: 0x87CDF04C
	Offset: 0x39B8
	Size: 0x2F7
	Parameters: 8
	Flags: None
*/
function init_hero(name, func_init, arg1, arg2, arg3, arg4, arg5, var_58061bcf)
{
	if(!isdefined(var_58061bcf))
	{
		var_58061bcf = 1;
	}
	if(!isdefined(level.heroes))
	{
		level.heroes = [];
	}
	name = ToLower(name);
	ai_hero = GetEnt(name + "_ai", "targetname", 1);
	if(!isalive(ai_hero))
	{
		ai_hero = GetEnt(name, "targetname", 1);
		if(!isalive(ai_hero))
		{
			spawner = GetEnt(name, "targetname");
			if(!(isdefined(spawner.Spawning) && spawner.Spawning))
			{
				spawner.count++;
				ai_hero = spawner::simple_spawn_single(spawner);
				/#
					Assert(isdefined(ai_hero), "Dev Block strings are not supported" + name + "Dev Block strings are not supported");
				#/
				spawner notify("hero_spawned", ai_hero);
			}
			else
			{
				spawner waittill("hero_spawned", ai_hero);
			}
		}
	}
	level.heroes[name] = ai_hero;
	ai_hero.animName = name;
	ai_hero.is_hero = 1;
	ai_hero.var_52229333 = 1;
	ai_hero function_7c9f312b(1);
	ai_hero magic_bullet_shield();
	ai_hero thread function_9d597adf(name);
	if(isdefined(func_init))
	{
		single_thread(ai_hero, func_init, arg1, arg2, arg3, arg4, arg5);
	}
	if(isdefined(level.var_9b4e3779))
	{
		ai_hero [[level.var_9b4e3779]]();
	}
	if(var_58061bcf)
	{
		ai_hero thread namespace_16f9ecd3::function_b3ce91e0();
	}
	return ai_hero;
}

/*
	Name: init_heroes
	Namespace: util
	Checksum: 0x47B4BC7D
	Offset: 0x3CB8
	Size: 0x141
	Parameters: 7
	Flags: None
*/
function init_heroes(a_hero_names, func, arg1, arg2, arg3, arg4, arg5)
{
	a_heroes = [];
	foreach(str_hero in a_hero_names)
	{
		if(!isdefined(a_heroes))
		{
			a_heroes = [];
		}
		else if(!IsArray(a_heroes))
		{
			a_heroes = Array(a_heroes);
		}
		a_heroes[a_heroes.size] = init_hero(str_hero, func, arg1, arg2, arg3, arg4, arg5);
	}
	return a_heroes;
}

/*
	Name: function_9d597adf
	Namespace: util
	Checksum: 0x53A669F
	Offset: 0x3E08
	Size: 0x73
	Parameters: 1
	Flags: None
*/
function function_9d597adf(str_name)
{
	self endon("unmake_hero");
	self waittill("death");
	if(isdefined(self))
	{
		/#
			ASSERTMSG("Dev Block strings are not supported" + str_name + "Dev Block strings are not supported");
		#/
	}
	unmake_hero(str_name);
}

/*
	Name: unmake_hero
	Namespace: util
	Checksum: 0xE15BE440
	Offset: 0x3E88
	Size: 0xA3
	Parameters: 1
	Flags: None
*/
function unmake_hero(str_name)
{
	ai_hero = level.heroes[str_name];
	level.heroes = Array::remove_index(level.heroes, str_name, 1);
	if(isalive(ai_hero))
	{
		ai_hero function_7c9f312b(0);
		ai_hero stop_magic_bullet_shield();
		ai_hero notify("unmake_hero");
	}
}

/*
	Name: get_heroes
	Namespace: util
	Checksum: 0x6D811C4B
	Offset: 0x3F38
	Size: 0x9
	Parameters: 0
	Flags: None
*/
function get_heroes()
{
	return level.heroes;
}

/*
	Name: function_740f8516
	Namespace: util
	Checksum: 0xF3970B5B
	Offset: 0x3F50
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function function_740f8516(str_name)
{
	if(!isdefined(level.heroes))
	{
		level.heroes = [];
	}
	if(isdefined(level.heroes[str_name]))
	{
		return level.heroes[str_name];
	}
	else
	{
		return init_hero(str_name);
	}
}

/*
	Name: is_hero
	Namespace: util
	Checksum: 0xB2268FB6
	Offset: 0x3FC0
	Size: 0x15
	Parameters: 0
	Flags: None
*/
function is_hero()
{
	return isdefined(self.is_hero) && self.is_hero;
}

/*
	Name: function_286a5010
	Namespace: util
	Checksum: 0x21171010
	Offset: 0x3FE0
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_286a5010(var_314c1232)
{
	clientfield::register("world", "force_streamer", 1, GetMinBitCountForNum(var_314c1232), "int");
}

/*
	Name: clear_streamer_hint
	Namespace: util
	Checksum: 0xEEBBD199
	Offset: 0x4038
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function clear_streamer_hint()
{
	level flag::wait_till("all_players_connected");
	level clientfield::set("force_streamer", 0);
}

/*
	Name: function_d8eaed3d
	Namespace: util
	Checksum: 0xB2B3E65A
	Offset: 0x4088
	Size: 0x43
	Parameters: 2
	Flags: None
*/
function function_d8eaed3d(n_zone, var_a6cc0cd9)
{
	if(!isdefined(var_a6cc0cd9))
	{
		var_a6cc0cd9 = 1;
	}
	level thread function_c748c2d6(n_zone, var_a6cc0cd9);
}

/*
	Name: function_c748c2d6
	Namespace: util
	Checksum: 0xBBF3A563
	Offset: 0x40D8
	Size: 0x2BB
	Parameters: 2
	Flags: None
*/
function function_c748c2d6(n_zone, var_a6cc0cd9)
{
	if(!isdefined(var_a6cc0cd9))
	{
		var_a6cc0cd9 = 1;
	}
	level notify("hash_d8eaed3d");
	level endon("hash_d8eaed3d");
	/#
		Assert(n_zone > 0, "Dev Block strings are not supported");
	#/
	level flagsys::set("streamer_loading");
	level flag::wait_till("all_players_connected");
	if(var_a6cc0cd9)
	{
		level clientfield::set("force_streamer", 0);
		wait_network_frame();
	}
	level clientfield::set("force_streamer", n_zone);
	if(!isdefined(level.var_66f2e49))
	{
		level.var_66f2e49 = 1;
		/#
			level.var_66f2e49 = 0;
		#/
	}
	foreach(player in level.players)
	{
		player thread function_ba7c6f5d(n_zone);
	}
	/#
		n_timeout = GetTime() + 15000;
	#/
	Array::wait_till(level.players, "streamer" + n_zone, 15);
	level flagsys::clear("streamer_loading");
	level streamer_wait();
	/#
		if(GetTime() >= n_timeout)
		{
			PrintTopRightln("Dev Block strings are not supported" + string::rfill(GetTime(), 6, "Dev Block strings are not supported"), (1, 0, 0));
		}
		else
		{
			PrintTopRightln("Dev Block strings are not supported" + string::rfill(GetTime(), 6, "Dev Block strings are not supported"), (1, 1, 1));
		}
	#/
}

/*
	Name: function_ba7c6f5d
	Namespace: util
	Checksum: 0xE0CE45FB
	Offset: 0x43A0
	Size: 0x47
	Parameters: 1
	Flags: None
*/
function function_ba7c6f5d(n_zone)
{
	self endon("disconnect");
	level endon("hash_d8eaed3d");
	self waittillmatch("streamer");
	self notify("streamer" + n_zone, n_zone);
}

/*
	Name: function_93831e79
	Namespace: util
	Checksum: 0x39C5A6C9
	Offset: 0x43F0
	Size: 0x15D
	Parameters: 2
	Flags: None
*/
function function_93831e79(var_f3739c90, coop_sort)
{
	if(level.players.size <= 1)
	{
		return;
	}
	a_spots = skipto::function_3529c409(var_f3739c90, coop_sort);
	/#
		Assert(a_spots.size >= level.players.size - 1, "Dev Block strings are not supported");
	#/
	for(i = 0; i < level.players.size - 1; i++)
	{
		level.players[i + 1] SetOrigin(a_spots[i].origin);
		if(isdefined(a_spots[i].angles))
		{
			level.players[i + 1] delay_network_frames(2, "disconnect", &SetPlayerAngles, a_spots[i].angles);
		}
	}
}

/*
	Name: function_16c71b8
	Namespace: util
	Checksum: 0x25258FBC
	Offset: 0x4558
	Size: 0xF3
	Parameters: 1
	Flags: None
*/
function function_16c71b8(var_50ddaa73)
{
	self SetLowReady(var_50ddaa73);
	self setClientUIVisibilityFlag("weapon_hud_visible", !var_50ddaa73);
	self AllowJump(!var_50ddaa73);
	self AllowSprint(!var_50ddaa73);
	self function_7c34e9c7(!var_50ddaa73);
	if(var_50ddaa73)
	{
		self disableOffhandWeapons();
	}
	else
	{
		self EnableOffhandWeapons();
	}
	namespace_16f9ecd3::function_e234a6a6(!var_50ddaa73);
	namespace_16f9ecd3::function_fc1750c9(!var_50ddaa73);
}

/*
	Name: function_459ff829
	Namespace: util
	Checksum: 0x93E62525
	Offset: 0x4658
	Size: 0xA9
	Parameters: 0
	Flags: None
*/
function function_459ff829()
{
	foreach(corpse in GetCorpseArray())
	{
		if(function_329c21f4(corpse))
		{
			corpse delete();
		}
	}
}

/*
	Name: function_ab12ef82
	Namespace: util
	Checksum: 0x476200EA
	Offset: 0x4710
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_ab12ef82(str_flag)
{
	level.var_d83bc14d = str_flag;
	if(!flag::exists(str_flag))
	{
		level flag::init(level.var_d83bc14d);
	}
}

/*
	Name: function_ee915e11
	Namespace: util
	Checksum: 0xFFF86BED
	Offset: 0x4768
	Size: 0x17
	Parameters: 1
	Flags: None
*/
function function_ee915e11(str_flag)
{
	level.var_8f7c5cd0 = str_flag;
}

/*
	Name: function_e218424d
	Namespace: util
	Checksum: 0x4B7047F
	Offset: 0x4788
	Size: 0xBD
	Parameters: 1
	Flags: None
*/
function function_e218424d(b_state)
{
	if(!isdefined(b_state))
	{
		b_state = 1;
	}
	if(b_state)
	{
		self cybercom::function_59965309("cybercom_hijack");
		self cybercom::function_59965309("cybercom_iffoverride");
		self.var_406cec76 = 1;
	}
	else
	{
		self cybercom::function_a1f70a02("cybercom_hijack");
		self cybercom::function_a1f70a02("cybercom_iffoverride");
		self.var_406cec76 = undefined;
	}
}

/*
	Name: function_b499f765
	Namespace: util
	Checksum: 0x61AD5FC3
	Offset: 0x4850
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_b499f765()
{
	clientfield::register("toplayer", "player_cold_breath", 1, 1, "int");
	clientfield::register("actor", "ai_cold_breath", 1, 1, "counter");
}

/*
	Name: function_df6eb506
	Namespace: util
	Checksum: 0xC90EA492
	Offset: 0x48C0
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_df6eb506(var_f553b6d0)
{
	self clientfield::set_to_player("player_cold_breath", var_f553b6d0);
}

/*
	Name: function_65ba133d
	Namespace: util
	Checksum: 0x30E700B1
	Offset: 0x48F8
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_65ba133d()
{
	self endon("death");
	if(self.archetype === "human")
	{
		wait(RandomFloatRange(1, 3));
		self clientfield::increment("ai_cold_breath");
	}
}

/*
	Name: show_hint_text
	Namespace: util
	Checksum: 0xD21C31
	Offset: 0x4960
	Size: 0x183
	Parameters: 4
	Flags: None
*/
function show_hint_text(str_text_to_show, b_should_blink, str_turn_off_notify, n_display_time)
{
	if(!isdefined(b_should_blink))
	{
		b_should_blink = 0;
	}
	if(!isdefined(str_turn_off_notify))
	{
		str_turn_off_notify = "notify_turn_off_hint_text";
	}
	if(!isdefined(n_display_time))
	{
		n_display_time = 4;
	}
	self endon("hash_dbba2610");
	self endon("hint_text_removed");
	if(isdefined(self.hint_menu_handle))
	{
		hide_hint_text(0);
	}
	self.hint_menu_handle = self OpenLUIMenu("CPHintText");
	self SetLUIMenuData(self.hint_menu_handle, "hint_text_line", str_text_to_show);
	if(b_should_blink)
	{
		LUI::play_animation(self.hint_menu_handle, "blinking");
	}
	else
	{
		LUI::play_animation(self.hint_menu_handle, "display_noblink");
	}
	if(n_display_time != -1)
	{
		self thread function_d02dba1a(n_display_time);
		self thread fade_hint_text_after_time(n_display_time, str_turn_off_notify);
	}
}

/*
	Name: hide_hint_text
	Namespace: util
	Checksum: 0x90828D8F
	Offset: 0x4AF0
	Size: 0xC1
	Parameters: 1
	Flags: None
*/
function hide_hint_text(b_fade_before_hiding)
{
	if(!isdefined(b_fade_before_hiding))
	{
		b_fade_before_hiding = 1;
	}
	self endon("hint_text_removed");
	if(isdefined(self.hint_menu_handle))
	{
		if(b_fade_before_hiding)
		{
			LUI::play_animation(self.hint_menu_handle, "fadeout");
			waittill_any_timeout(0.75, "kill_hint_text", "death");
		}
		self CloseLUIMenu(self.hint_menu_handle);
		self.hint_menu_handle = undefined;
	}
	self notify("hint_text_removed");
}

/*
	Name: fade_hint_text_after_time
	Namespace: util
	Checksum: 0xD3DA1A80
	Offset: 0x4BC0
	Size: 0x73
	Parameters: 2
	Flags: None
*/
function fade_hint_text_after_time(n_display_time, str_turn_off_notify)
{
	self endon("hint_text_removed");
	self endon("death");
	self endon("kill_hint_text");
	waittill_any_timeout(n_display_time - 0.75, str_turn_off_notify);
	hide_hint_text(1);
}

/*
	Name: function_d02dba1a
	Namespace: util
	Checksum: 0x848B276D
	Offset: 0x4C40
	Size: 0x5B
	Parameters: 1
	Flags: None
*/
function function_d02dba1a(n_time)
{
	self endon("hint_text_removed");
	self endon("disconnect");
	waittill_any_timeout(n_time, "kill_hint_text", "death");
	hide_hint_text(0);
}

/*
	Name: function_964b7eb7
	Namespace: util
	Checksum: 0x34EF5289
	Offset: 0x4CA8
	Size: 0x3B
	Parameters: 2
	Flags: None
*/
function function_964b7eb7(var_7aab41df, str_message)
{
	var_7aab41df LUINotifyEvent(&"comms_event_message", 1, str_message);
}

/*
	Name: function_14518e76
	Namespace: util
	Checksum: 0xC7B9EDE3
	Offset: 0x4CF0
	Size: 0x263
	Parameters: 5
	Flags: None
*/
function function_14518e76(trigger, str_objective, var_884d30e8, var_e6ffaa89, var_87f7a2d)
{
	trigger setHintString(var_884d30e8);
	trigger setcursorhint("HINT_INTERACTIVE_PROMPT");
	if(!isdefined(var_87f7a2d))
	{
		var_87f7a2d = [];
		break;
	}
	if(!isdefined(var_87f7a2d))
	{
		var_87f7a2d = [];
	}
	else if(!IsArray(var_87f7a2d))
	{
		var_87f7a2d = Array(var_87f7a2d);
	}
	foreach(mdl in var_87f7a2d)
	{
		mdl namespace_16f9ecd3::function_e228c18a(1);
	}
	var_38c85157 = gameobjects::create_use_object("any", trigger, var_87f7a2d, (0, 0, 0), str_objective);
	var_38c85157 gameobjects::allow_use("any");
	var_38c85157 gameobjects::set_use_time(0.35);
	var_38c85157 gameobjects::set_owner_team("allies");
	var_38c85157 gameobjects::set_visible_team("any");
	var_38c85157.var_db0f901 = 0;
	var_38c85157.origin = var_38c85157.origin;
	var_38c85157.angles = var_38c85157.angles;
	if(isdefined(var_e6ffaa89))
	{
		var_38c85157.onUse = var_e6ffaa89;
	}
	return var_38c85157;
}

