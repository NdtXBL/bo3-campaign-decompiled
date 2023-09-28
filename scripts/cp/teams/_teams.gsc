#using scripts\codescripts\struct;
#using scripts\cp\_util;
#using scripts\cp\gametypes\_globallogic_ui;
#using scripts\cp\gametypes\_spectating;
#using scripts\shared\callbacks_shared;
#using scripts\shared\persistence_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace teams;

/*
	Name: __init__sytem__
	Namespace: teams
	Checksum: 0xD34417CA
	Offset: 0x2D8
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__sytem__()
{
	system::register("teams", &__init__, undefined, undefined);
}

/*
	Name: __init__
	Namespace: teams
	Checksum: 0xAFE4D79
	Offset: 0x318
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function __init__()
{
	callback::on_start_gametype(&init);
	level.getEnemyTeam = &getEnemyTeam;
}

/*
	Name: init
	Namespace: teams
	Checksum: 0xF4D87849
	Offset: 0x360
	Size: 0x223
	Parameters: 0
	Flags: None
*/
function init()
{
	game["strings"]["autobalance"] = &"MP_AUTOBALANCE_NOW";
	if(GetDvarString("scr_teambalance") == "")
	{
		SetDvar("scr_teambalance", "0");
	}
	level.teambalance = GetDvarInt("scr_teambalance");
	level.teambalancetimer = 0;
	if(GetDvarString("scr_timeplayedcap") == "")
	{
		SetDvar("scr_timeplayedcap", "1800");
	}
	level.timeplayedcap = Int(GetDvarInt("scr_timeplayedcap"));
	level.freeplayers = [];
	if(level.teambased)
	{
		level.alliesplayers = [];
		level.axisplayers = [];
		callback::on_connect(&on_player_connect);
		callback::on_joined_team(&on_joined_team);
		callback::on_joined_spectate(&on_joined_spectators);
		level thread update_balance_dvar();
		wait(0.15);
		level thread update_player_times();
	}
	else
	{
		callback::on_connect(&on_free_player_connect);
		wait(0.15);
		level thread update_player_times();
	}
}

/*
	Name: on_player_connect
	Namespace: teams
	Checksum: 0xDC65AB83
	Offset: 0x590
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function on_player_connect()
{
	self thread track_played_time();
}

/*
	Name: on_free_player_connect
	Namespace: teams
	Checksum: 0x3CDDBD8E
	Offset: 0x5B8
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function on_free_player_connect()
{
	self thread track_free_played_time();
}

/*
	Name: on_joined_team
	Namespace: teams
	Checksum: 0xCA5BBFCB
	Offset: 0x5E0
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function on_joined_team()
{
	/#
		println("Dev Block strings are not supported" + self.pers["Dev Block strings are not supported"]);
	#/
	self update_time();
}

/*
	Name: on_joined_spectators
	Namespace: teams
	Checksum: 0x3A6C880A
	Offset: 0x638
	Size: 0x13
	Parameters: 0
	Flags: None
*/
function on_joined_spectators()
{
	self.pers["teamTime"] = undefined;
}

/*
	Name: track_played_time
	Namespace: teams
	Checksum: 0x71F33AD3
	Offset: 0x658
	Size: 0x223
	Parameters: 0
	Flags: None
*/
function track_played_time()
{
	self endon("disconnect");
	self endon("hash_a9de32eb");
	foreach(team in level.teams)
	{
		self.timePlayed[team] = 0;
	}
	self.timePlayed["free"] = 0;
	self.timePlayed["other"] = 0;
	self.timePlayed["alive"] = 0;
	if(!isdefined(self.timePlayed["total"]) || (!level.gametype == "twar" && 0 < game["roundsplayed"] && 0 < self.timePlayed["total"]))
	{
		self.timePlayed["total"] = 0;
	}
	while(level.inPrematchPeriod)
	{
		wait(0.05);
	}
	while(game["state"] == "playing")
	{
		if(isdefined(level.teams[self.sessionteam]))
		{
			self.timePlayed[self.sessionteam]++;
			self.timePlayed["total"]++;
			if(isalive(self))
			{
				self.timePlayed["alive"]++;
			}
		}
		else if(self.sessionteam == "spectator")
		{
			self.timePlayed["other"]++;
		}
		wait(1);
	}
}

/*
	Name: update_player_times
	Namespace: teams
	Checksum: 0x6D0C53C5
	Offset: 0x888
	Size: 0xE7
	Parameters: 0
	Flags: None
*/
function update_player_times()
{
	varWait = 10;
	nextToUpdate = 0;
	for(;;)
	{
		varWait = varWait - 1;
		nextToUpdate++;
		if(nextToUpdate >= level.players.size)
		{
			nextToUpdate = 0;
			if(varWait > 0)
			{
				wait(varWait);
			}
			varWait = 10;
		}
		if(isdefined(level.players[nextToUpdate]))
		{
			level.players[nextToUpdate] update_played_time();
			level.players[nextToUpdate] persistence::check_contract_expirations();
		}
		wait(1);
	}
}

/*
	Name: update_played_time
	Namespace: teams
	Checksum: 0xC3111A0D
	Offset: 0x978
	Size: 0x381
	Parameters: 0
	Flags: None
*/
function update_played_time()
{
	PixBeginEvent("updatePlayedTime");
	foreach(team in level.teams)
	{
		if(self.timePlayed[team])
		{
			self AddPlayerStat("time_played_" + team, Int(min(self.timePlayed[team], level.timeplayedcap)));
			self AddPlayerStatWithGameType("time_played_total", Int(min(self.timePlayed[team], level.timeplayedcap)));
		}
	}
	if(self.timePlayed["other"])
	{
		self AddPlayerStat("time_played_other", Int(min(self.timePlayed["other"], level.timeplayedcap)));
		self AddPlayerStatWithGameType("time_played_total", Int(min(self.timePlayed["other"], level.timeplayedcap)));
	}
	if(self.timePlayed["alive"])
	{
		timeAlive = Int(min(self.timePlayed["alive"], level.timeplayedcap));
		self persistence::increment_contract_times(timeAlive);
		self AddPlayerStat("time_played_alive", timeAlive);
	}
	PixEndEvent();
	if(game["state"] == "postgame")
	{
		return;
	}
	foreach(team in level.teams)
	{
		self.timePlayed[team] = 0;
	}
	self.timePlayed["other"] = 0;
	self.timePlayed["alive"] = 0;
}

/*
	Name: update_time
	Namespace: teams
	Checksum: 0xF88E0480
	Offset: 0xD08
	Size: 0x31
	Parameters: 0
	Flags: None
*/
function update_time()
{
	if(game["state"] != "playing")
	{
		return;
	}
	self.pers["teamTime"] = GetTime();
}

/*
	Name: update_balance_dvar
	Namespace: teams
	Checksum: 0x37726B91
	Offset: 0xD48
	Size: 0xCD
	Parameters: 0
	Flags: None
*/
function update_balance_dvar()
{
	for(;;)
	{
		teambalance = GetDvarInt("scr_teambalance");
		if(level.teambalance != teambalance)
		{
			level.teambalance = GetDvarInt("scr_teambalance");
		}
		timeplayedcap = GetDvarInt("scr_timeplayedcap");
		if(level.timeplayedcap != timeplayedcap)
		{
			level.timeplayedcap = Int(GetDvarInt("scr_timeplayedcap"));
		}
		wait(1);
	}
}

/*
	Name: change
	Namespace: teams
	Checksum: 0x1181ABF1
	Offset: 0xE20
	Size: 0x169
	Parameters: 1
	Flags: None
*/
function change(team)
{
	if(self.sessionstate != "dead")
	{
		self.switching_teams = 1;
		self.switchedTeamsResetGadgets = 1;
		self.joining_team = team;
		self.leaving_team = self.pers["team"];
		self suicide();
	}
	self.pers["team"] = team;
	self.team = team;
	self.pers["weapon"] = undefined;
	self.pers["spawnweapon"] = undefined;
	self.pers["savedmodel"] = undefined;
	self.pers["teamTime"] = undefined;
	self.sessionteam = self.pers["team"];
	self globallogic_ui::updateObjectiveText();
	self spectating::set_permissions();
	self SetClientScriptMainMenu(game["menu_start_menu"]);
	self openMenu(game["menu_start_menu"]);
	self notify("end_respawn");
}

/*
	Name: count_players
	Namespace: teams
	Checksum: 0xA4DE2AED
	Offset: 0xF98
	Size: 0x16F
	Parameters: 0
	Flags: None
*/
function count_players()
{
	players = level.players;
	playerCounts = [];
	foreach(team in level.teams)
	{
		playerCounts[team] = 0;
	}
	foreach(player in level.players)
	{
		if(player == self)
		{
			continue;
		}
		team = player.pers["team"];
		if(isdefined(team) && isdefined(level.teams[team]))
		{
			playerCounts[team]++;
		}
	}
	return playerCounts;
}

/*
	Name: track_free_played_time
	Namespace: teams
	Checksum: 0x99BFA1BF
	Offset: 0x1110
	Size: 0x19F
	Parameters: 0
	Flags: None
*/
function track_free_played_time()
{
	self endon("disconnect");
	foreach(team in level.teams)
	{
		self.timePlayed[team] = 0;
	}
	self.timePlayed["other"] = 0;
	self.timePlayed["total"] = 0;
	self.timePlayed["alive"] = 0;
	while(game["state"] == "playing")
	{
		team = self.pers["team"];
		if(isdefined(team) && isdefined(level.teams[team]) && self.sessionteam != "spectator")
		{
			self.timePlayed[team]++;
			self.timePlayed["total"]++;
			if(isalive(self))
			{
				self.timePlayed["alive"]++;
			}
		}
		else
		{
			self.timePlayed["other"]++;
		}
		wait(1);
	}
}

/*
	Name: set_player_model
	Namespace: teams
	Checksum: 0xCE01BF65
	Offset: 0x12B8
	Size: 0x73
	Parameters: 2
	Flags: None
*/
function set_player_model(team, weapon)
{
	self DetachAll();
	self setMoveSpeedScale(1);
	self SetSprintDuration(4);
	self SetSprintCooldown(0);
}

/*
	Name: get_flag_model
	Namespace: teams
	Checksum: 0x9B518BCF
	Offset: 0x1338
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function get_flag_model(teamRef)
{
	/#
		Assert(isdefined(game["Dev Block strings are not supported"]));
	#/
	/#
		Assert(isdefined(game["Dev Block strings are not supported"][teamRef]));
	#/
	return game["flagmodels"][teamRef];
}

/*
	Name: get_flag_carry_model
	Namespace: teams
	Checksum: 0x2E219FD
	Offset: 0x13B0
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function get_flag_carry_model(teamRef)
{
	/#
		Assert(isdefined(game["Dev Block strings are not supported"]));
	#/
	/#
		Assert(isdefined(game["Dev Block strings are not supported"][teamRef]));
	#/
	return game["carry_flagmodels"][teamRef];
}

/*
	Name: function_3370313c
	Namespace: teams
	Checksum: 0xD80F8B81
	Offset: 0x1428
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_3370313c(teamRef)
{
	/#
		Assert(isdefined(game["Dev Block strings are not supported"]));
	#/
	/#
		Assert(isdefined(game["Dev Block strings are not supported"][teamRef]));
	#/
	return game["carry_icon"][teamRef];
}

/*
	Name: getEnemyTeam
	Namespace: teams
	Checksum: 0x18C46D3F
	Offset: 0x14A0
	Size: 0xB9
	Parameters: 1
	Flags: None
*/
function getEnemyTeam(player_team)
{
	foreach(team in level.teams)
	{
		if(team == player_team)
		{
			continue;
		}
		if(team == "spectator")
		{
			continue;
		}
		return team;
	}
	return util::getOtherTeam(player_team);
}

