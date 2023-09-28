#using scripts\codescripts\struct;
#using scripts\cp\_util;
#using scripts\cp\gametypes\_globallogic;
#using scripts\cp\gametypes\_globallogic_score;
#using scripts\cp\gametypes\_globallogic_utils;
#using scripts\cp\gametypes\_spawnlogic;
#using scripts\shared\math_shared;
#using scripts\shared\rank_shared;

#namespace globallogic_defaults;

/*
	Name: getWinningTeamFromLoser
	Namespace: globallogic_defaults
	Checksum: 0x1D8E98FB
	Offset: 0x2D8
	Size: 0x31
	Parameters: 1
	Flags: None
*/
function getWinningTeamFromLoser(losing_team)
{
	if(level.multiTeam)
	{
		return "tie";
	}
	return util::getOtherTeam(losing_team);
}

/*
	Name: default_onForfeit
	Namespace: globallogic_defaults
	Checksum: 0xEC77D729
	Offset: 0x318
	Size: 0x323
	Parameters: 1
	Flags: None
*/
function default_onForfeit(team)
{
	level.gameForfeited = 1;
	level notify("forfeit in progress");
	level endon("forfeit in progress");
	level endon("abort forfeit");
	forfeit_delay = 20;
	announcement(game["strings"]["opponent_forfeiting_in"], forfeit_delay, 0);
	wait(10);
	announcement(game["strings"]["opponent_forfeiting_in"], 10, 0);
	wait(10);
	endReason = &"";
	if(level.multiTeam)
	{
		SetDvar("ui_text_endreason", game["strings"]["other_teams_forfeited"]);
		endReason = game["strings"]["other_teams_forfeited"];
		winner = team;
	}
	else if(!isdefined(team))
	{
		SetDvar("ui_text_endreason", game["strings"]["players_forfeited"]);
		endReason = game["strings"]["players_forfeited"];
		winner = level.players[0];
	}
	else if(isdefined(level.teams[team]))
	{
		endReason = game["strings"][team + "_forfeited"];
		SetDvar("ui_text_endreason", endReason);
		winner = getWinningTeamFromLoser(team);
	}
	else
	{
		Assert(isdefined(team), "Dev Block strings are not supported");
		/#
			Assert(0, "Dev Block strings are not supported" + team + "Dev Block strings are not supported");
		#/
		winner = "tie";
	}
	/#
	#/
	level.forcedEnd = 1;
	/#
		if(isPlayer(winner))
		{
			print("Dev Block strings are not supported" + winner getXuid() + "Dev Block strings are not supported" + winner.name + "Dev Block strings are not supported");
		}
		else
		{
			globallogic_utils::logTeamWinString("Dev Block strings are not supported", winner);
		}
	#/
	thread globallogic::endGame(winner, endReason);
}

/*
	Name: default_onDeadEvent
	Namespace: globallogic_defaults
	Checksum: 0x8248F09F
	Offset: 0x648
	Size: 0xC3
	Parameters: 1
	Flags: None
*/
function default_onDeadEvent(team)
{
	if(team == "all")
	{
		winner = level.var_73ce26f0;
		globallogic_utils::logTeamWinString("team eliminated", winner);
		thread globallogic::endGame(winner, &"SM_ALL_PLAYERS_KILLED");
	}
	else
	{
		winner = getWinningTeamFromLoser(team);
		globallogic_utils::logTeamWinString("team eliminated", winner);
		thread globallogic::endGame(winner, &"SM_ALL_PLAYERS_KILLED");
	}
}

/*
	Name: default_onLastTeamAliveEvent
	Namespace: globallogic_defaults
	Checksum: 0xB17C3EAF
	Offset: 0x718
	Size: 0x183
	Parameters: 1
	Flags: None
*/
function default_onLastTeamAliveEvent(team)
{
	if(isdefined(level.teams[team]))
	{
		eliminatedString = game["strings"]["enemies_eliminated"];
		iprintln(eliminatedString);
		SetDvar("ui_text_endreason", eliminatedString);
		winner = globallogic::determineTeamWinnerByGameStat("teamScores");
		globallogic_utils::logTeamWinString("team eliminated", winner);
		thread globallogic::endGame(winner, eliminatedString);
	}
	else
	{
		SetDvar("ui_text_endreason", game["strings"]["tie"]);
		globallogic_utils::logTeamWinString("tie");
		if(level.teambased)
		{
			thread globallogic::endGame("tie", game["strings"]["tie"]);
		}
		else
		{
			thread globallogic::endGame(undefined, game["strings"]["tie"]);
		}
	}
}

/*
	Name: function_b4bcebce
	Namespace: globallogic_defaults
	Checksum: 0x1C661E8A
	Offset: 0x8A8
	Size: 0xD
	Parameters: 1
	Flags: None
*/
function function_b4bcebce(team)
{
	return 0;
}

/*
	Name: function_e6761e5b
	Namespace: globallogic_defaults
	Checksum: 0x4D3D9222
	Offset: 0x8C0
	Size: 0xAD
	Parameters: 1
	Flags: None
*/
function function_e6761e5b(team)
{
	if(function_b4bcebce(team))
	{
		return 1;
	}
	if(level.playerCount[team] == 1 && level.aliveCount[team] == 1)
	{
		/#
			Assert(level.aliveplayers[team].size == 1);
		#/
		if(level.aliveplayers[team][0].lives > 0)
		{
			return 1;
		}
	}
	return 0;
}

/*
	Name: function_e4443d68
	Namespace: globallogic_defaults
	Checksum: 0xD888D4D
	Offset: 0x978
	Size: 0x93
	Parameters: 1
	Flags: None
*/
function function_e4443d68(team)
{
	if(function_e6761e5b(team))
	{
		return;
	}
	if(team == "all")
	{
		thread globallogic::endGame(level.var_73ce26f0, &"SM_ALL_PLAYERS_KILLED");
	}
	else
	{
		thread globallogic::endGame(util::getOtherTeam(team), &"SM_ALL_PLAYERS_KILLED");
	}
}

/*
	Name: default_onAliveCountChange
	Namespace: globallogic_defaults
	Checksum: 0x8B5C3696
	Offset: 0xA18
	Size: 0xB
	Parameters: 1
	Flags: None
*/
function default_onAliveCountChange(team)
{
}

/*
	Name: default_onRoundEndGame
	Namespace: globallogic_defaults
	Checksum: 0x302553B9
	Offset: 0xA30
	Size: 0xF
	Parameters: 1
	Flags: None
*/
function default_onRoundEndGame(winner)
{
	return winner;
}

/*
	Name: default_onOneLeftEvent
	Namespace: globallogic_defaults
	Checksum: 0x4DE415D7
	Offset: 0xA48
	Size: 0x153
	Parameters: 1
	Flags: None
*/
function default_onOneLeftEvent(team)
{
	if(!level.teambased)
	{
		winner = globallogic_score::getHighestScoringPlayer();
		/#
			if(isdefined(winner))
			{
				print("Dev Block strings are not supported" + winner.name);
			}
			else
			{
				print("Dev Block strings are not supported");
			}
		#/
		thread globallogic::endGame(winner, &"MP_ENEMIES_ELIMINATED");
		break;
	}
	for(index = 0; index < level.players.size; index++)
	{
		player = level.players[index];
		if(!isalive(player))
		{
			continue;
		}
		if(!isdefined(player.pers["team"]) || player.pers["team"] != team)
		{
			continue;
		}
	}
}

/*
	Name: default_onTimeLimit
	Namespace: globallogic_defaults
	Checksum: 0x482C3A2B
	Offset: 0xBA8
	Size: 0x123
	Parameters: 0
	Flags: None
*/
function default_onTimeLimit()
{
	winner = undefined;
	if(level.teambased)
	{
		winner = globallogic::determineTeamWinnerByGameStat("teamScores");
		globallogic_utils::logTeamWinString("time limit", winner);
	}
	else
	{
		winner = globallogic_score::getHighestScoringPlayer();
		/#
			if(isdefined(winner))
			{
				print("Dev Block strings are not supported" + winner.name);
			}
			else
			{
				print("Dev Block strings are not supported");
			}
		#/
	}
	SetDvar("ui_text_endreason", game["strings"]["time_limit_reached"]);
	thread globallogic::endGame(winner, game["strings"]["time_limit_reached"]);
}

/*
	Name: default_onScoreLimit
	Namespace: globallogic_defaults
	Checksum: 0x8419719F
	Offset: 0xCD8
	Size: 0x137
	Parameters: 0
	Flags: None
*/
function default_onScoreLimit()
{
	if(!level.endGameOnScoreLimit)
	{
		return 0;
	}
	winner = undefined;
	if(level.teambased)
	{
		winner = globallogic::determineTeamWinnerByGameStat("teamScores");
		globallogic_utils::logTeamWinString("scorelimit", winner);
	}
	else
	{
		winner = globallogic_score::getHighestScoringPlayer();
		/#
			if(isdefined(winner))
			{
				print("Dev Block strings are not supported" + winner.name);
			}
			else
			{
				print("Dev Block strings are not supported");
			}
		#/
	}
	SetDvar("ui_text_endreason", game["strings"]["score_limit_reached"]);
	thread globallogic::endGame(winner, game["strings"]["score_limit_reached"]);
	return 1;
}

/*
	Name: default_onSpawnSpectator
	Namespace: globallogic_defaults
	Checksum: 0x52CBDF0E
	Offset: 0xE18
	Size: 0x1A3
	Parameters: 2
	Flags: None
*/
function default_onSpawnSpectator(origin, angles)
{
	if(isdefined(origin) && isdefined(angles))
	{
		self spawn(origin, angles);
		return;
	}
	spawnPointName = "cp_global_intermission";
	Spawnpoints = struct::get_array(spawnPointName, "targetname");
	/#
		Assert(Spawnpoints.size, "Dev Block strings are not supported" + spawnPointName + "Dev Block strings are not supported");
	#/
	spawnpoint = spawnlogic::get_spawnpoint_random(Spawnpoints);
	/#
		Assert(isdefined(spawnpoint.origin), "Dev Block strings are not supported" + spawnPointName + "Dev Block strings are not supported");
	#/
	/#
		Assert(isdefined(spawnpoint.angles), "Dev Block strings are not supported" + spawnPointName + "Dev Block strings are not supported" + spawnpoint.origin + "Dev Block strings are not supported");
	#/
	self spawn(spawnpoint.origin, spawnpoint.angles);
}

/*
	Name: default_onSpawnIntermission
	Namespace: globallogic_defaults
	Checksum: 0x239EF23E
	Offset: 0xFC8
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function default_onSpawnIntermission()
{
	spawnPointName = "cp_global_intermission";
	Spawnpoints = struct::get_array(spawnPointName, "targetname");
	spawnpoint = Spawnpoints[0];
	if(isdefined(spawnpoint))
	{
		self spawn(spawnpoint.origin, spawnpoint.angles);
	}
	else
	{
		util::error("Dev Block strings are not supported" + spawnPointName + "Dev Block strings are not supported");
	}
	/#
	#/
}

/*
	Name: default_getTimeLimit
	Namespace: globallogic_defaults
	Checksum: 0xEEEB70B4
	Offset: 0x1090
	Size: 0x39
	Parameters: 0
	Flags: None
*/
function default_getTimeLimit()
{
	return math::clamp(GetGametypeSetting("timeLimit"), level.timeLimitMin, level.timeLimitMax);
}

/*
	Name: default_getTeamKillPenalty
	Namespace: globallogic_defaults
	Checksum: 0x6C66B424
	Offset: 0x10D8
	Size: 0x71
	Parameters: 4
	Flags: None
*/
function default_getTeamKillPenalty(eInflictor, attacker, sMeansOfDeath, weapon)
{
	teamkill_penalty = 1;
	score = globallogic_score::_getPlayerScore(attacker);
	if(score == 0)
	{
		teamkill_penalty = 2;
	}
	return teamkill_penalty;
}

/*
	Name: default_getTeamKillScore
	Namespace: globallogic_defaults
	Checksum: 0xCA25ED86
	Offset: 0x1158
	Size: 0x39
	Parameters: 4
	Flags: None
*/
function default_getTeamKillScore(eInflictor, attacker, sMeansOfDeath, weapon)
{
	return rank::getScoreInfoValue("team_kill");
}

