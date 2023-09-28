#using scripts\codescripts\struct;
#using scripts\shared\callbacks_shared;
#using scripts\shared\system_shared;

#namespace spectating;

/*
	Name: __init__sytem__
	Namespace: spectating
	Checksum: 0x4E6CE717
	Offset: 0x110
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__sytem__()
{
	system::register("spectating", &__init__, undefined, undefined);
}

/*
	Name: __init__
	Namespace: spectating
	Checksum: 0x4FB591C1
	Offset: 0x150
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function __init__()
{
	callback::on_start_gametype(&init);
	callback::on_spawned(&set_permissions);
	callback::on_joined_team(&set_permissions_for_machine);
	callback::on_joined_spectate(&set_permissions_for_machine);
}

/*
	Name: init
	Namespace: spectating
	Checksum: 0x5A7447BE
	Offset: 0x1E0
	Size: 0x97
	Parameters: 0
	Flags: None
*/
function init()
{
	foreach(team in level.teams)
	{
		level.spectateOverride[team] = spawnstruct();
	}
}

/*
	Name: update_settings
	Namespace: spectating
	Checksum: 0x90809A61
	Offset: 0x280
	Size: 0x5D
	Parameters: 0
	Flags: None
*/
function update_settings()
{
	level endon("game_ended");
	for(index = 0; index < level.players.size; index++)
	{
		level.players[index] set_permissions();
	}
}

/*
	Name: get_splitscreen_team
	Namespace: spectating
	Checksum: 0x97B3F226
	Offset: 0x2E8
	Size: 0xCD
	Parameters: 0
	Flags: None
*/
function get_splitscreen_team()
{
	for(index = 0; index < level.players.size; index++)
	{
		if(!isdefined(level.players[index]))
		{
			continue;
		}
		if(level.players[index] == self)
		{
			continue;
		}
		if(!self IsPlayerOnSameMachine(level.players[index]))
		{
			continue;
		}
		team = level.players[index].sessionteam;
		if(team != "spectator")
		{
			return team;
		}
	}
	return self.sessionteam;
}

/*
	Name: other_local_player_still_alive
	Namespace: spectating
	Checksum: 0xA69733FC
	Offset: 0x3C0
	Size: 0xB7
	Parameters: 0
	Flags: None
*/
function other_local_player_still_alive()
{
	for(index = 0; index < level.players.size; index++)
	{
		if(!isdefined(level.players[index]))
		{
			continue;
		}
		if(level.players[index] == self)
		{
			continue;
		}
		if(!self IsPlayerOnSameMachine(level.players[index]))
		{
			continue;
		}
		if(isalive(level.players[index]))
		{
			return 1;
		}
	}
	return 0;
}

/*
	Name: allow_all_teams
	Namespace: spectating
	Checksum: 0xE4C5D591
	Offset: 0x480
	Size: 0x99
	Parameters: 1
	Flags: None
*/
function allow_all_teams(Allow)
{
	foreach(team in level.teams)
	{
		self allowSpectateTeam(team, Allow);
	}
}

/*
	Name: allow_all_teams_except
	Namespace: spectating
	Checksum: 0x131CFAE
	Offset: 0x528
	Size: 0xB1
	Parameters: 2
	Flags: None
*/
function allow_all_teams_except(skip_team, Allow)
{
	foreach(team in level.teams)
	{
		if(team == skip_team)
		{
			continue;
		}
		self allowSpectateTeam(team, Allow);
	}
}

/*
	Name: set_permissions
	Namespace: spectating
	Checksum: 0x1751078
	Offset: 0x5E8
	Size: 0x523
	Parameters: 0
	Flags: None
*/
function set_permissions()
{
	team = self.sessionteam;
	if(team == "spectator")
	{
		if(self IsSplitscreen() && !level.Splitscreen)
		{
			team = get_splitscreen_team();
		}
		if(team == "spectator")
		{
			self allow_all_teams(1);
			self allowSpectateTeam("freelook", 0);
			self allowSpectateTeam("none", 1);
			self allowSpectateTeam("localplayers", 1);
			return;
		}
	}
	spectateType = level.spectateType;
	switch(spectateType)
	{
		case 0:
		{
			self allow_all_teams(0);
			self allowSpectateTeam("freelook", 0);
			self allowSpectateTeam("none", 1);
			self allowSpectateTeam("localplayers", 0);
			break;
		}
		case 3:
		{
			if(self IsSplitscreen() && self other_local_player_still_alive())
			{
				self allow_all_teams(0);
				self allowSpectateTeam("none", 0);
				self allowSpectateTeam("freelook", 0);
				self allowSpectateTeam("localplayers", 1);
				break;
			}
		}
		case 1:
		{
			if(!level.teambased)
			{
				self allow_all_teams(1);
				self allowSpectateTeam("none", 1);
				self allowSpectateTeam("freelook", 0);
				self allowSpectateTeam("localplayers", 1);
			}
			else if(isdefined(team) && isdefined(level.teams[team]))
			{
				self allowSpectateTeam(team, 1);
				self allow_all_teams_except(team, 0);
				self allowSpectateTeam("freelook", 0);
				self allowSpectateTeam("none", 0);
				self allowSpectateTeam("localplayers", 1);
			}
			else
			{
				self allow_all_teams(0);
				self allowSpectateTeam("freelook", 0);
				self allowSpectateTeam("none", 0);
				self allowSpectateTeam("localplayers", 1);
			}
			break;
		}
		case 2:
		{
			self allow_all_teams(1);
			self allowSpectateTeam("freelook", 1);
			self allowSpectateTeam("none", 1);
			self allowSpectateTeam("localplayers", 1);
			break;
		}
	}
	if(isdefined(team) && isdefined(level.teams[team]))
	{
		if(isdefined(level.spectateOverride[team].allowFreeSpectate))
		{
			self allowSpectateTeam("freelook", 1);
		}
		if(isdefined(level.spectateOverride[team].allowEnemySpectate))
		{
			self allow_all_teams_except(team, 1);
		}
	}
}

/*
	Name: set_permissions_for_machine
	Namespace: spectating
	Checksum: 0x3CE731DE
	Offset: 0xB18
	Size: 0xDD
	Parameters: 0
	Flags: None
*/
function set_permissions_for_machine()
{
	self set_permissions();
	if(!self IsSplitscreen())
	{
		return;
	}
	for(index = 0; index < level.players.size; index++)
	{
		if(!isdefined(level.players[index]))
		{
			continue;
		}
		if(level.players[index] == self)
		{
			continue;
		}
		if(!self IsPlayerOnSameMachine(level.players[index]))
		{
			continue;
		}
		level.players[index] set_permissions();
	}
}

