#using scripts\cp\_bb;
#using scripts\cp\_challenges;
#using scripts\cp\_scoreevents;
#using scripts\cp\_util;
#using scripts\cp\gametypes\_globallogic;
#using scripts\cp\gametypes\_globallogic_score;
#using scripts\cp\gametypes\_globallogic_utils;
#using scripts\cp\gametypes\_loadout;
#using scripts\cp\gametypes\_spawning;
#using scripts\cp\gametypes\_wager;
#using scripts\shared\bb_shared;
#using scripts\shared\challenges_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\math_shared;
#using scripts\shared\persistence_shared;
#using scripts\shared\rank_shared;
#using scripts\shared\scoreevents_shared;
#using scripts\shared\util_shared;

#namespace globallogic_score;

/*
	Name: updateMatchBonusScores
	Namespace: globallogic_score
	Checksum: 0xAD191013
	Offset: 0x9B8
	Size: 0x7F1
	Parameters: 1
	Flags: None
*/
function updateMatchBonusScores(winner)
{
	if(!game["timepassed"])
	{
		return;
	}
	if(!level.rankedMatch)
	{
		return;
	}
	if(level.teambased && isdefined(winner))
	{
		if(winner == "endregulation")
		{
			return;
		}
	}
	if(!level.timelimit || level.forcedEnd)
	{
		gameLength = globallogic_utils::getTimePassed() / 1000;
		gameLength = min(gameLength, 1200);
		if(level.gametype == "twar" && game["roundsplayed"] > 0)
		{
			gameLength = gameLength + level.timelimit * 60;
		}
	}
	else
	{
		gameLength = level.timelimit * 60;
	}
	if(level.teambased)
	{
		winningTeam = "tie";
		foreach(team in level.teams)
		{
			if(winner == team)
			{
				winningTeam = team;
				break;
			}
		}
		if(winningTeam != "tie")
		{
			winnerScale = 1;
			loserScale = 0.5;
		}
		else
		{
			winnerScale = 0.75;
			loserScale = 0.75;
		}
		players = level.players;
		for(i = 0; i < players.size; i++)
		{
			player = players[i];
			if(player.timePlayed["total"] < 1 || player.pers["participation"] < 1)
			{
				player thread rank::endGameUpdate();
				continue;
			}
			totalTimePlayed = player.timePlayed["total"];
			if(totalTimePlayed > gameLength)
			{
				totalTimePlayed = gameLength;
			}
			if(level.hostForcedEnd && player IsHost())
			{
				continue;
			}
			if(player.pers["score"] < 0)
			{
				continue;
			}
			spm = player rank::getSPM();
			if(winningTeam == "tie")
			{
				playerScore = Int(winnerScale * gameLength / 60 * spm * totalTimePlayed / gameLength);
				player thread giveMatchBonus("tie", playerScore);
				player.matchBonus = playerScore;
				continue;
			}
			if(isdefined(player.pers["team"]) && player.pers["team"] == winningTeam)
			{
				playerScore = Int(winnerScale * gameLength / 60 * spm * totalTimePlayed / gameLength);
				player thread giveMatchBonus("win", playerScore);
				player.matchBonus = playerScore;
				continue;
			}
			if(isdefined(player.pers["team"]) && player.pers["team"] != "spectator")
			{
				playerScore = Int(loserScale * gameLength / 60 * spm * totalTimePlayed / gameLength);
				player thread giveMatchBonus("loss", playerScore);
				player.matchBonus = playerScore;
			}
		}
		break;
	}
	if(isdefined(winner))
	{
		winnerScale = 1;
		loserScale = 0.5;
	}
	else
	{
		winnerScale = 0.75;
		loserScale = 0.75;
	}
	players = level.players;
	for(i = 0; i < players.size; i++)
	{
		player = players[i];
		if(player.timePlayed["total"] < 1 || player.pers["participation"] < 1)
		{
			player thread rank::endGameUpdate();
			continue;
		}
		totalTimePlayed = player.timePlayed["total"];
		if(totalTimePlayed > gameLength)
		{
			totalTimePlayed = gameLength;
		}
		spm = player rank::getSPM();
		isWinner = 0;
		for(pIdx = 0; pIdx < min(level.placement["all"][0].size, 3); pIdx++)
		{
			if(level.placement["all"][pIdx] != player)
			{
				continue;
			}
			isWinner = 1;
		}
		if(isWinner)
		{
			playerScore = Int(winnerScale * gameLength / 60 * spm * totalTimePlayed / gameLength);
			player thread giveMatchBonus("win", playerScore);
			player.matchBonus = playerScore;
			continue;
		}
		playerScore = Int(loserScale * gameLength / 60 * spm * totalTimePlayed / gameLength);
		player thread giveMatchBonus("loss", playerScore);
		player.matchBonus = playerScore;
	}
}

/*
	Name: giveMatchBonus
	Namespace: globallogic_score
	Checksum: 0xB0D30588
	Offset: 0x11B8
	Size: 0x7B
	Parameters: 2
	Flags: None
*/
function giveMatchBonus(scoreType, score)
{
	self endon("disconnect");
	level waittill("give_match_bonus");
	if(scoreevents::shouldAddRankXP(self))
	{
		self AddRankXPValue(scoreType, score);
	}
	self rank::endGameUpdate();
}

/*
	Name: getHighestScoringPlayer
	Namespace: globallogic_score
	Checksum: 0xB7D5858C
	Offset: 0x1240
	Size: 0x139
	Parameters: 0
	Flags: None
*/
function getHighestScoringPlayer()
{
	players = level.players;
	winner = undefined;
	tie = 0;
	for(i = 0; i < players.size; i++)
	{
		if(!isdefined(players[i].pointstowin))
		{
			continue;
		}
		if(players[i].pointstowin < 1)
		{
			continue;
		}
		if(!isdefined(winner) || players[i].pointstowin > winner.pointstowin)
		{
			winner = players[i];
			tie = 0;
			continue;
		}
		if(players[i].pointstowin == winner.pointstowin)
		{
			tie = 1;
		}
	}
	if(tie || !isdefined(winner))
	{
		return undefined;
	}
	else
	{
		return winner;
	}
}

/*
	Name: resetScoreChain
	Namespace: globallogic_score
	Checksum: 0x8F60D7A3
	Offset: 0x1388
	Size: 0x27
	Parameters: 0
	Flags: None
*/
function resetScoreChain()
{
	self notify("reset_score_chain");
	self.scoreChain = 0;
	self.rankUpdateTotal = 0;
}

/*
	Name: scoreChainTimer
	Namespace: globallogic_score
	Checksum: 0x57456112
	Offset: 0x13B8
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function scoreChainTimer()
{
	self notify("score_chain_timer");
	self endon("reset_score_chain");
	self endon("score_chain_timer");
	self endon("death");
	self endon("disconnect");
	wait(20);
	self thread resetScoreChain();
}

/*
	Name: roundToNearestFive
	Namespace: globallogic_score
	Checksum: 0x23E16688
	Offset: 0x1420
	Size: 0x53
	Parameters: 1
	Flags: None
*/
function roundToNearestFive(score)
{
	rounding = score % 5;
	if(rounding <= 2)
	{
		return score - rounding;
	}
	else
	{
		return score + 5 - rounding;
	}
}

/*
	Name: givePlayerScore
	Namespace: globallogic_score
	Checksum: 0xF94D9FFD
	Offset: 0x1480
	Size: 0x30B
	Parameters: 4
	Flags: None
*/
function givePlayerScore(event, player, victim, descValue)
{
	scoreDiff = 0;
	if(level.overridePlayerScore)
	{
		return 0;
	}
	PixBeginEvent("level.onPlayerScore");
	score = player.pers["score"];
	[[level.onPlayerScore]](event, player, victim);
	newScore = player.pers["score"];
	PixEndEvent();
	player bb::add_to_stat("score", newScore - score);
	if(score == newScore)
	{
		return 0;
	}
	PixBeginEvent("givePlayerScore");
	recordPlayerStats(player, "score", newScore);
	scoreDiff = newScore - score;
	challengesEnabled = !level.disableChallenges;
	player AddPlayerStatWithGameType("score", scoreDiff);
	if(challengesEnabled)
	{
		player AddPlayerStat("CAREER_SCORE", scoreDiff);
	}
	if(level.hardcoreMode)
	{
		player AddPlayerStat("SCORE_HC", scoreDiff);
		if(challengesEnabled)
		{
			player AddPlayerStat("CAREER_SCORE_HC", scoreDiff);
		}
	}
	if(level.multiTeam)
	{
		player AddPlayerStat("SCORE_MULTITEAM", scoreDiff);
		if(challengesEnabled)
		{
			player AddPlayerStat("CAREER_SCORE_MULTITEAM", scoreDiff);
		}
	}
	if(!level.disableStatTracking && isdefined(player.pers["lastHighestScore"]) && newScore > player.pers["lastHighestScore"])
	{
		player SetDStat("HighestStats", "highest_score", newScore);
	}
	player persistence::add_recent_stat(0, 0, "score", scoreDiff);
	PixEndEvent();
	player notify("score_event", scoreDiff);
	return scoreDiff;
}

/*
	Name: default_onPlayerScore
	Namespace: globallogic_score
	Checksum: 0x9BCEDA13
	Offset: 0x1798
	Size: 0xB3
	Parameters: 3
	Flags: None
*/
function default_onPlayerScore(event, player, victim)
{
	score = rank::getScoreInfoValue(event);
	/#
		Assert(isdefined(score));
	#/
	if(level.wagerMatch)
	{
		player thread rank::updateRankScoreHUD(score);
	}
	_setPlayerScore(player, player.pers["score"] + score);
}

/*
	Name: _setPlayerScore
	Namespace: globallogic_score
	Checksum: 0xE0162BDB
	Offset: 0x1858
	Size: 0xFB
	Parameters: 2
	Flags: None
*/
function _setPlayerScore(player, score)
{
	if(score == player.pers["score"])
	{
		return;
	}
	if(!level.rankedMatch)
	{
		player thread rank::updateRankScoreHUD(score - player.pers["score"]);
	}
	player.pers["score"] = score;
	player.score = player.pers["score"];
	recordPlayerStats(player, "score", player.pers["score"]);
	if(level.wagerMatch)
	{
		player thread wager::player_scored();
	}
}

/*
	Name: _getPlayerScore
	Namespace: globallogic_score
	Checksum: 0x9FFDA43
	Offset: 0x1960
	Size: 0x1F
	Parameters: 1
	Flags: None
*/
function _getPlayerScore(player)
{
	return player.pers["score"];
}

/*
	Name: playTop3Sounds
	Namespace: globallogic_score
	Checksum: 0x92DCD2F4
	Offset: 0x1988
	Size: 0x175
	Parameters: 0
	Flags: None
*/
function playTop3Sounds()
{
	wait(0.05);
	globallogic::updatePlacement();
	for(i = 0; i < level.placement["all"].size; i++)
	{
		prevScorePlace = level.placement["all"][i].prevScorePlace;
		if(!isdefined(prevScorePlace))
		{
			prevScorePlace = 1;
		}
		currentScorePlace = i + 1;
		for(j = i - 1; j >= 0; j--)
		{
			if(level.placement["all"][i].score == level.placement["all"][j].score)
			{
				currentScorePlace--;
			}
		}
		wasInTheMoney = prevScorePlace <= 3;
		isInTheMoney = currentScorePlace <= 3;
		level.placement["all"][i].prevScorePlace = currentScorePlace;
	}
}

/*
	Name: setPointsToWin
	Namespace: globallogic_score
	Checksum: 0x3E8CAB36
	Offset: 0x1B08
	Size: 0x9B
	Parameters: 1
	Flags: None
*/
function setPointsToWin(points)
{
	self.pers["pointstowin"] = math::clamp(points, 0, 65000);
	self.pointstowin = self.pers["pointstowin"];
	self thread globallogic::checkScoreLimit();
	self thread globallogic::checkPlayerScoreLimitSoon();
	level thread playTop3Sounds();
}

/*
	Name: givePointsToWin
	Namespace: globallogic_score
	Checksum: 0xA13C53D1
	Offset: 0x1BB0
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function givePointsToWin(points)
{
	self setPointsToWin(self.pers["pointstowin"] + points);
}

/*
	Name: giveTeamScore
	Namespace: globallogic_score
	Checksum: 0x91BD1334
	Offset: 0x1BF8
	Size: 0x123
	Parameters: 4
	Flags: None
*/
function giveTeamScore(event, team, player, victim)
{
	if(level.overrideTeamScore)
	{
		return;
	}
	PixBeginEvent("level.onTeamScore");
	teamScore = game["teamScores"][team];
	[[level.onTeamScore]](event, team);
	PixEndEvent();
	newScore = game["teamScores"][team];
	bbPrint("mpteamscores", "gametime %d event %s team %d diff %d score %d", GetTime(), event, team, newScore - teamScore, newScore);
	if(teamScore == newScore)
	{
		return;
	}
	updateTeamScores(team);
	thread globallogic::checkScoreLimit();
}

/*
	Name: giveTeamScoreForObjective_DelayPostProcessing
	Namespace: globallogic_score
	Checksum: 0x61A33D6F
	Offset: 0x1D28
	Size: 0x93
	Parameters: 2
	Flags: None
*/
function giveTeamScoreForObjective_DelayPostProcessing(team, score)
{
	teamScore = game["teamScores"][team];
	onTeamScore_IncrementScore(score, team);
	newScore = game["teamScores"][team];
	if(teamScore == newScore)
	{
		return;
	}
	updateTeamScores(team);
}

/*
	Name: postProcessTeamScores
	Namespace: globallogic_score
	Checksum: 0xD4AA1010
	Offset: 0x1DC8
	Size: 0xA3
	Parameters: 1
	Flags: None
*/
function postProcessTeamScores(teams)
{
	foreach(team in teams)
	{
		OnTeamScore_PostProcess(team);
	}
	thread globallogic::checkScoreLimit();
}

/*
	Name: giveTeamScoreForObjective
	Namespace: globallogic_score
	Checksum: 0xCFB22F95
	Offset: 0x1E78
	Size: 0xBB
	Parameters: 2
	Flags: None
*/
function giveTeamScoreForObjective(team, score)
{
	if(!isdefined(level.teams[team]))
	{
		return;
	}
	teamScore = game["teamScores"][team];
	onTeamScore(score, team);
	newScore = game["teamScores"][team];
	if(teamScore == newScore)
	{
		return;
	}
	updateTeamScores(team);
	thread globallogic::checkScoreLimit();
}

/*
	Name: _setTeamScore
	Namespace: globallogic_score
	Checksum: 0x897E89D4
	Offset: 0x1F40
	Size: 0x8B
	Parameters: 2
	Flags: None
*/
function _setTeamScore(team, teamScore)
{
	if(teamScore == game["teamScores"][team])
	{
		return;
	}
	game["teamScores"][team] = math::clamp(teamScore, 0, 1000000);
	updateTeamScores(team);
	thread globallogic::checkScoreLimit();
}

/*
	Name: resetTeamScores
	Namespace: globallogic_score
	Checksum: 0x7B63756D
	Offset: 0x1FD8
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function resetTeamScores()
{
	if(level.scoreRoundWinBased || util::isFirstRound())
	{
		foreach(team in level.teams)
		{
			game["teamScores"][team] = 0;
		}
	}
	updateAllTeamScores();
}

/*
	Name: resetAllScores
	Namespace: globallogic_score
	Checksum: 0xBADEEF00
	Offset: 0x20A0
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function resetAllScores()
{
	resetTeamScores();
	resetPlayerScores();
}

/*
	Name: resetPlayerScores
	Namespace: globallogic_score
	Checksum: 0xED4FA3FD
	Offset: 0x20D0
	Size: 0xA5
	Parameters: 0
	Flags: None
*/
function resetPlayerScores()
{
	players = level.players;
	winner = undefined;
	tie = 0;
	for(i = 0; i < players.size; i++)
	{
		if(isdefined(players[i].pers["score"]))
		{
			_setPlayerScore(players[i], 0);
		}
	}
}

/*
	Name: updateTeamScores
	Namespace: globallogic_score
	Checksum: 0x2031AE4C
	Offset: 0x2180
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function updateTeamScores(team)
{
	setTeamScore(team, game["teamScores"][team]);
	level thread globallogic::checkTeamScoreLimitSoon(team);
}

/*
	Name: updateAllTeamScores
	Namespace: globallogic_score
	Checksum: 0x9714EFB6
	Offset: 0x21D8
	Size: 0x89
	Parameters: 0
	Flags: None
*/
function updateAllTeamScores()
{
	foreach(team in level.teams)
	{
		updateTeamScores(team);
	}
}

/*
	Name: _getTeamScore
	Namespace: globallogic_score
	Checksum: 0x237FD4D1
	Offset: 0x2270
	Size: 0x1B
	Parameters: 1
	Flags: None
*/
function _getTeamScore(team)
{
	return game["teamScores"][team];
}

/*
	Name: getHighestTeamScoreTeam
	Namespace: globallogic_score
	Checksum: 0x51614EA2
	Offset: 0x2298
	Size: 0xF5
	Parameters: 0
	Flags: None
*/
function getHighestTeamScoreTeam()
{
	score = 0;
	winning_teams = [];
	foreach(team in level.teams)
	{
		team_score = game["teamScores"][team];
		if(team_score > score)
		{
			score = team_score;
			winning_teams = [];
		}
		if(team_score == score)
		{
			winning_teams[team] = team;
		}
	}
	return winning_teams;
}

/*
	Name: areTeamArraysEqual
	Namespace: globallogic_score
	Checksum: 0x48FB0629
	Offset: 0x2398
	Size: 0xAF
	Parameters: 2
	Flags: None
*/
function areTeamArraysEqual(teamsA, teamsB)
{
	if(teamsA.size != teamsB.size)
	{
		return 0;
	}
	foreach(team in teamsA)
	{
		if(!isdefined(teamsB[team]))
		{
			return 0;
		}
	}
	return 1;
}

/*
	Name: onTeamScore
	Namespace: globallogic_score
	Checksum: 0x3A9F0DD5
	Offset: 0x2450
	Size: 0x43
	Parameters: 2
	Flags: None
*/
function onTeamScore(score, team)
{
	onTeamScore_IncrementScore(score, team);
	OnTeamScore_PostProcess(team);
}

/*
	Name: onTeamScore_IncrementScore
	Namespace: globallogic_score
	Checksum: 0x272C69B8
	Offset: 0x24A0
	Size: 0xB1
	Parameters: 2
	Flags: None
*/
function onTeamScore_IncrementScore(score, team)
{
	game["teamScores"][team] = game["teamScores"][team] + score;
	if(game["teamScores"][team] < 0)
	{
		game["teamScores"][team] = 0;
	}
	if(level.scoreLimit && game["teamScores"][team] > level.scoreLimit)
	{
		game["teamScores"][team] = level.scoreLimit;
	}
}

/*
	Name: OnTeamScore_PostProcess
	Namespace: globallogic_score
	Checksum: 0x9A72E19D
	Offset: 0x2560
	Size: 0x207
	Parameters: 1
	Flags: None
*/
function OnTeamScore_PostProcess(team)
{
	if(level.Splitscreen)
	{
		return;
	}
	if(level.scoreLimit == 1)
	{
		return;
	}
	isWinning = getHighestTeamScoreTeam();
	if(isWinning.size == 0)
	{
		return;
	}
	if(GetTime() - level.lastStatusTime < 5000)
	{
		return;
	}
	if(areTeamArraysEqual(isWinning, level.wasWinning))
	{
		return;
	}
	if(isWinning.size == 1)
	{
		level.lastStatusTime = GetTime();
		foreach(team in isWinning)
		{
			if(isdefined(level.wasWinning[team]))
			{
				if(level.wasWinning.size == 1)
				{
					continue;
				}
			}
		}
	}
	else
	{
		return;
	}
	if(level.wasWinning.size == 1)
	{
		foreach(team in level.wasWinning)
		{
			if(isdefined(isWinning[team]))
			{
				if(isWinning.size == 1)
				{
					continue;
				}
				if(level.wasWinning.size > 1)
				{
					continue;
				}
			}
		}
	}
	level.wasWinning = isWinning;
}

/*
	Name: default_onTeamScore
	Namespace: globallogic_score
	Checksum: 0xBD492797
	Offset: 0x2770
	Size: 0x6B
	Parameters: 2
	Flags: None
*/
function default_onTeamScore(event, team)
{
	score = rank::getScoreInfoValue(event);
	/#
		Assert(isdefined(score));
	#/
	onTeamScore(score, team);
}

/*
	Name: initPersStat
	Namespace: globallogic_score
	Checksum: 0x270C706C
	Offset: 0x27E8
	Size: 0x8B
	Parameters: 2
	Flags: None
*/
function initPersStat(dataName, record_stats)
{
	if(!isdefined(self.pers[dataName]))
	{
		self.pers[dataName] = 0;
	}
	if(!isdefined(record_stats) || record_stats == 1)
	{
		recordPlayerStats(self, dataName, Int(self.pers[dataName]));
	}
}

/*
	Name: getPersStat
	Namespace: globallogic_score
	Checksum: 0x5921CD07
	Offset: 0x2880
	Size: 0x17
	Parameters: 1
	Flags: None
*/
function getPersStat(dataName)
{
	return self.pers[dataName];
}

/*
	Name: incPersStat
	Namespace: globallogic_score
	Checksum: 0x541FF97F
	Offset: 0x28A0
	Size: 0xEB
	Parameters: 4
	Flags: None
*/
function incPersStat(dataName, increment, record_stats, includeGametype)
{
	PixBeginEvent("incPersStat");
	self.pers[dataName] = self.pers[dataName] + increment;
	if(isdefined(includeGametype) && includeGametype)
	{
		self AddPlayerStatWithGameType(dataName, increment);
	}
	else
	{
		self AddPlayerStat(dataName, increment);
	}
	if(!isdefined(record_stats) || record_stats == 1)
	{
		self thread threadedRecordPlayerStats(dataName);
	}
	PixEndEvent();
}

/*
	Name: threadedRecordPlayerStats
	Namespace: globallogic_score
	Checksum: 0x847B5AF8
	Offset: 0x2998
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function threadedRecordPlayerStats(dataName)
{
	self endon("disconnect");
	waittillframeend;
	recordPlayerStats(self, dataName, self.pers[dataName]);
}

/*
	Name: updateWinStats
	Namespace: globallogic_score
	Checksum: 0x8ED52756
	Offset: 0x29E0
	Size: 0x233
	Parameters: 1
	Flags: None
*/
function updateWinStats(winner)
{
	winner AddPlayerStatWithGameType("losses", -1);
	winner AddPlayerStatWithGameType("wins", 1);
	if(level.hardcoreMode)
	{
		winner AddPlayerStat("wins_HC", 1);
	}
	if(level.multiTeam)
	{
		winner AddPlayerStat("wins_MULTITEAM", 1);
	}
	winner UpdateStatRatio("wlratio", "wins", "losses");
	restoreWinStreaks(winner);
	winner AddPlayerStatWithGameType("cur_win_streak", 1);
	winner notify("win");
	cur_gamemode_win_streak = winner persistence::stat_get_with_gametype("cur_win_streak");
	gamemode_win_streak = winner persistence::stat_get_with_gametype("win_streak");
	cur_win_streak = winner GetDStat("playerstatslist", "cur_win_streak", "StatValue");
	if(!level.disableStatTracking && cur_win_streak > winner GetDStat("HighestStats", "win_streak"))
	{
		winner SetDStat("HighestStats", "win_streak", cur_win_streak);
	}
	if(cur_gamemode_win_streak > gamemode_win_streak)
	{
		winner persistence::stat_set_with_gametype("win_streak", cur_gamemode_win_streak);
	}
}

/*
	Name: updateLossStats
	Namespace: globallogic_score
	Checksum: 0x786B76D3
	Offset: 0x2C20
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function updateLossStats(loser)
{
	loser AddPlayerStatWithGameType("losses", 1);
	loser UpdateStatRatio("wlratio", "wins", "losses");
	loser notify("loss");
}

/*
	Name: updateTieStats
	Namespace: globallogic_score
	Checksum: 0x745F448A
	Offset: 0x2C98
	Size: 0xC3
	Parameters: 1
	Flags: None
*/
function updateTieStats(loser)
{
	loser AddPlayerStatWithGameType("losses", -1);
	loser AddPlayerStatWithGameType("ties", 1);
	loser UpdateStatRatio("wlratio", "wins", "losses");
	if(!level.disableStatTracking)
	{
		loser SetDStat("playerstatslist", "cur_win_streak", "StatValue", 0);
	}
	loser notify("tie");
}

/*
	Name: updateWinLossStats
	Namespace: globallogic_score
	Checksum: 0xE32AEBC0
	Offset: 0x2D68
	Size: 0x365
	Parameters: 1
	Flags: None
*/
function updateWinLossStats(winner)
{
	if(!util::wasLastRound() && !level.hostForcedEnd)
	{
		return;
	}
	players = level.players;
	if(!isdefined(winner) || (isdefined(winner) && !isPlayer(winner) && winner == "tie"))
	{
		for(i = 0; i < players.size; i++)
		{
			if(!isdefined(players[i].pers["team"]))
			{
				continue;
			}
			if(level.hostForcedEnd && players[i] IsHost())
			{
				continue;
			}
			updateTieStats(players[i]);
		}
		break;
	}
	if(isPlayer(winner))
	{
		if(level.hostForcedEnd && winner IsHost())
		{
			return;
		}
		updateWinStats(winner);
		if(!level.teambased)
		{
			placement = level.placement["all"];
			topThreePlayers = min(3, placement.size);
			for(index = 1; index < topThreePlayers; index++)
			{
				nextTopPlayer = placement[index];
				updateWinStats(nextTopPlayer);
			}
		}
		break;
	}
	for(i = 0; i < players.size; i++)
	{
		if(!isdefined(players[i].pers["team"]))
		{
			continue;
		}
		if(level.hostForcedEnd && players[i] IsHost())
		{
			continue;
		}
		if(winner == "tie")
		{
			updateTieStats(players[i]);
			continue;
		}
		if(players[i].pers["team"] == winner)
		{
			updateWinStats(players[i]);
			continue;
		}
		if(!level.disableStatTracking)
		{
			players[i] SetDStat("playerstatslist", "cur_win_streak", "StatValue", 0);
		}
	}
}

/*
	Name: backupAndClearWinStreaks
	Namespace: globallogic_score
	Checksum: 0x43637901
	Offset: 0x30D8
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function backupAndClearWinStreaks()
{
	self.pers["winStreak"] = self GetDStat("playerstatslist", "cur_win_streak", "StatValue");
	if(!level.disableStatTracking)
	{
		self SetDStat("playerstatslist", "cur_win_streak", "StatValue", 0);
	}
	self.pers["winStreakForGametype"] = persistence::stat_get_with_gametype("cur_win_streak");
	self persistence::stat_set_with_gametype("cur_win_streak", 0);
}

/*
	Name: restoreWinStreaks
	Namespace: globallogic_score
	Checksum: 0x8FF4054E
	Offset: 0x31B0
	Size: 0x83
	Parameters: 1
	Flags: None
*/
function restoreWinStreaks(winner)
{
	if(!level.disableStatTracking)
	{
		winner SetDStat("playerstatslist", "cur_win_streak", "StatValue", winner.pers["winStreak"]);
	}
	winner persistence::stat_set_with_gametype("cur_win_streak", winner.pers["winStreakForGametype"]);
}

/*
	Name: incKillstreakTracker
	Namespace: globallogic_score
	Checksum: 0xEB8F5327
	Offset: 0x3240
	Size: 0x71
	Parameters: 1
	Flags: None
*/
function incKillstreakTracker(weapon)
{
	self endon("disconnect");
	waittillframeend;
	if(weapon.name == "artillery")
	{
		self.pers["artillery_kills"]++;
	}
	if(weapon.name == "dog_bite")
	{
		self.pers["dog_kills"]++;
	}
}

/*
	Name: trackAttackerKill
	Namespace: globallogic_score
	Checksum: 0x216623F7
	Offset: 0x32C0
	Size: 0x42B
	Parameters: 5
	Flags: None
*/
function trackAttackerKill(name, rank, XP, prestige, xuid)
{
	self endon("disconnect");
	attacker = self;
	waittillframeend;
	PixBeginEvent("trackAttackerKill");
	if(!isdefined(attacker.pers["killed_players"][name]))
	{
		attacker.pers["killed_players"][name] = 0;
	}
	if(!isdefined(attacker.killedPlayersCurrent[name]))
	{
		attacker.killedPlayersCurrent[name] = 0;
	}
	if(!isdefined(attacker.pers["nemesis_tracking"][name]))
	{
		attacker.pers["nemesis_tracking"][name] = 0;
	}
	attacker.pers["killed_players"][name]++;
	attacker.killedPlayersCurrent[name]++;
	attacker.pers["nemesis_tracking"][name] = attacker.pers["nemesis_tracking"][name] + 1;
	if(attacker.pers["nemesis_name"] == name)
	{
		attacker challenges::killedNemesis();
	}
	if(attacker.pers["nemesis_name"] == "" || attacker.pers["nemesis_tracking"][name] > attacker.pers["nemesis_tracking"][attacker.pers["nemesis_name"]])
	{
		attacker.pers["nemesis_name"] = name;
		attacker.pers["nemesis_rank"] = rank;
		attacker.pers["nemesis_rankIcon"] = prestige;
		attacker.pers["nemesis_xp"] = XP;
		attacker.pers["nemesis_xuid"] = xuid;
	}
	else if(isdefined(attacker.pers["nemesis_name"]) && attacker.pers["nemesis_name"] == name)
	{
		attacker.pers["nemesis_rank"] = rank;
		attacker.pers["nemesis_xp"] = XP;
	}
	if(!isdefined(attacker.lastKilledVictim) || !isdefined(attacker.lastKilledVictimCount))
	{
		attacker.lastKilledVictim = name;
		attacker.lastKilledVictimCount = 0;
	}
	if(attacker.lastKilledVictim == name)
	{
		attacker.lastKilledVictimCount++;
		if(attacker.lastKilledVictimCount >= 5)
		{
			attacker.lastKilledVictimCount = 0;
			attacker AddPlayerStat("streaker", 1);
		}
	}
	else
	{
		attacker.lastKilledVictim = name;
		attacker.lastKilledVictimCount = 1;
	}
	PixEndEvent();
}

/*
	Name: trackAttackeeDeath
	Namespace: globallogic_score
	Checksum: 0xB7C94182
	Offset: 0x36F8
	Size: 0x263
	Parameters: 5
	Flags: None
*/
function trackAttackeeDeath(attackerName, rank, XP, prestige, xuid)
{
	self endon("disconnect");
	waittillframeend;
	PixBeginEvent("trackAttackeeDeath");
	if(!isdefined(self.pers["killed_by"][attackerName]))
	{
		self.pers["killed_by"][attackerName] = 0;
	}
	self.pers["killed_by"][attackerName]++;
	if(!isdefined(self.pers["nemesis_tracking"][attackerName]))
	{
		self.pers["nemesis_tracking"][attackerName] = 0;
	}
	self.pers["nemesis_tracking"][attackerName] = self.pers["nemesis_tracking"][attackerName] + 1.5;
	if(self.pers["nemesis_name"] == "" || self.pers["nemesis_tracking"][attackerName] > self.pers["nemesis_tracking"][self.pers["nemesis_name"]])
	{
		self.pers["nemesis_name"] = attackerName;
		self.pers["nemesis_rank"] = rank;
		self.pers["nemesis_rankIcon"] = prestige;
		self.pers["nemesis_xp"] = XP;
		self.pers["nemesis_xuid"] = xuid;
	}
	else if(isdefined(self.pers["nemesis_name"]) && self.pers["nemesis_name"] == attackerName)
	{
		self.pers["nemesis_rank"] = rank;
		self.pers["nemesis_xp"] = XP;
	}
	PixEndEvent();
}

/*
	Name: default_isKillBoosting
	Namespace: globallogic_score
	Checksum: 0xFE7FC4D0
	Offset: 0x3968
	Size: 0x5
	Parameters: 0
	Flags: None
*/
function default_isKillBoosting()
{
	return 0;
}

/*
	Name: giveKillStats
	Namespace: globallogic_score
	Checksum: 0x516D742E
	Offset: 0x3978
	Size: 0xA0B
	Parameters: 3
	Flags: None
*/
function giveKillStats(sMeansOfDeath, weapon, eVictim)
{
	self endon("disconnect");
	waittillframeend;
	if(level.rankedMatch && self [[level.isKillBoosting]]())
	{
		/#
			self IPrintLnBold("Dev Block strings are not supported");
		#/
		return;
	}
	PixBeginEvent("giveKillStats");
	self incPersStat("kills", 1, 1, 1);
	self.kills = self getPersStat("kills");
	self UpdateStatRatio("kdratio", "kills", "deaths");
	attacker = self;
	if(sMeansOfDeath == "MOD_HEAD_SHOT")
	{
		attacker thread incPersStat("headshots", 1, 1, 0);
		attacker.headshots = attacker.pers["headshots"];
		if(isdefined(eVictim) && isPlayer(eVictim))
		{
			eVictim RecordKillModifier("headshot");
		}
	}
	if(isdefined(eVictim.var_b3b49b95))
	{
		if(eVictim.var_b3b49b95 + 2000 >= GetTime())
		{
			self addweaponstat(GetWeapon("flash_grenade"), "CombatRecordStat", 1);
		}
	}
	if(isdefined(eVictim.var_63fb6c7d))
	{
		if(eVictim.var_63fb6c7d + 2000 >= GetTime())
		{
			self addweaponstat(GetWeapon("proximity_grenade"), "CombatRecordStat", 1);
		}
	}
	if(isdefined(eVictim.var_4d6fef21))
	{
		if(eVictim.var_4d6fef21 + 2000 >= GetTime())
		{
			self addweaponstat(GetWeapon("emp_grenade"), "CombatRecordStat", 1);
		}
	}
	if(isdefined(eVictim.var_7097b5af))
	{
		if(eVictim.var_7097b5af + 2000 >= GetTime())
		{
			function_28c6cf9e(GetItemIndexFromRef("cybercom_ravagecore"));
		}
	}
	if(isdefined(weapon))
	{
		weaponPickedUp = 0;
		if(isdefined(attacker.pickedUpWeapons) && isdefined(attacker.pickedUpWeapons[weapon]))
		{
			weaponPickedUp = 1;
		}
		attacker addweaponstat(weapon, "kills", 1, attacker.class_num, weaponPickedUp, undefined, attacker.primaryLoadoutGunSmithVariantIndex, attacker.secondaryLoadoutGunSmithVariantIndex);
		if(sMeansOfDeath == "MOD_HEAD_SHOT")
		{
			attacker addweaponstat(weapon, "headshots", 1, attacker.class_num, weaponPickedUp, undefined, attacker.primaryLoadoutGunSmithVariantIndex, attacker.secondaryLoadoutGunSmithVariantIndex);
		}
		if(weapon.name == "launcher_standard_df" || weapon.name == "launcher_standard")
		{
			if(weapon.name == "launcher_standard_df")
			{
				weapon = GetWeapon("launcher_standard");
			}
			else
			{
				weapon = GetWeapon("launcher_standard_df");
			}
			attacker addweaponstat(weapon, "kills", 1, attacker.class_num, weaponPickedUp, undefined, attacker.primaryLoadoutGunSmithVariantIndex, attacker.secondaryLoadoutGunSmithVariantIndex);
			if(sMeansOfDeath == "MOD_HEAD_SHOT")
			{
				attacker addweaponstat(weapon, "headshots", 1, attacker.class_num, weaponPickedUp, undefined, attacker.primaryLoadoutGunSmithVariantIndex, attacker.secondaryLoadoutGunSmithVariantIndex);
			}
		}
	}
	if(isPlayer(attacker))
	{
		itemIndex = undefined;
		if(weapon.name == "gadget_firefly_swarm" || weapon.name == "gadget_firefly_swarm_upgraded")
		{
			itemIndex = GetItemIndexFromRef("cybercom_fireflyswarm");
		}
		else if(weapon.name == "hero_gravityspikes_cybercom" || weapon.name == "hero_gravityspikes_cybercom_upgraded")
		{
			itemIndex = GetItemIndexFromRef("cybercom_concussive");
		}
		else if(weapon.name == "gadget_unstoppable_force" || weapon.name == "gadget_unstoppable_force_upgraded")
		{
			itemIndex = GetItemIndexFromRef("cybercom_unstoppableforce");
		}
		else if(weapon.name == "gadget_es_strike")
		{
			itemIndex = GetItemIndexFromRef("cybercom_es_strike");
		}
		else if(weapon.name == "amws_gun_turret_player" || weapon.name == "hunter_main_turret_player" || weapon.name == "hunter_side_turret_player" || weapon.name == "pamws_gun_turret_player" || weapon.name == "quadtank_side_turret_player" || weapon.name == "siegebot_gun_turret_player" || weapon.name == "wasp_main_turret_player" || weapon.name == "amws_launcher_turret_player" || weapon.name == "hunter_rocket_turret_player" || weapon.name == "pamws_launcher_turret_player" || weapon.name == "quadtank_main_turret_player" || weapon.name == "rocket_wasp_launcher_turret_player" || weapon.name == "siegebot_launcher_turret_player")
		{
			itemIndex = GetItemIndexFromRef("cybercom_hijack");
		}
		function_28c6cf9e(itemIndex);
		if(isdefined(attacker.active_camo) && attacker.active_camo)
		{
			function_28c6cf9e(GetItemIndexFromRef("cybercom_camo"));
		}
		if(isdefined(eVictim.enemy) && isdefined(eVictim.enemy.var_e42818a3) && eVictim.enemy.var_e42818a3)
		{
			function_28c6cf9e(GetItemIndexFromRef("cybercom_misdirection"));
		}
		if(attacker flagsys::get("gadget_overdrive_on"))
		{
			function_28c6cf9e(GetItemIndexFromRef("cybercom_overdrive"));
		}
		if(isdefined(eVictim.var_d90f9ddb) && eVictim.var_d90f9ddb)
		{
			function_28c6cf9e(GetItemIndexFromRef("cybercom_smokescreen"));
		}
	}
	PixEndEvent();
}

/*
	Name: function_28c6cf9e
	Namespace: globallogic_score
	Checksum: 0x837E9E53
	Offset: 0x4390
	Size: 0x53
	Parameters: 1
	Flags: None
*/
function function_28c6cf9e(itemIndex)
{
	if(isdefined(itemIndex))
	{
		self AddDStat("ItemStats", itemIndex, "stats", "kills", "statValue", 1);
	}
}

/*
	Name: incTotalKills
	Namespace: globallogic_score
	Checksum: 0x6F84E06C
	Offset: 0x43F0
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function incTotalKills(team)
{
	if(level.teambased && isdefined(level.teams[team]))
	{
		game["totalKillsTeam"][team]++;
	}
	game["totalKills"]++;
}

/*
	Name: setInflictorStat
	Namespace: globallogic_score
	Checksum: 0x2EDD3C55
	Offset: 0x4448
	Size: 0x193
	Parameters: 3
	Flags: None
*/
function setInflictorStat(eInflictor, eAttacker, weapon)
{
	if(!isdefined(eAttacker))
	{
		return;
	}
	if(!isdefined(eInflictor))
	{
		eAttacker addweaponstat(weapon, "hits", 1);
		return;
	}
	if(!isdefined(eInflictor.playerAffectedArray))
	{
		eInflictor.playerAffectedArray = [];
	}
	foundNewPlayer = 1;
	for(i = 0; i < eInflictor.playerAffectedArray.size; i++)
	{
		if(eInflictor.playerAffectedArray[i] == self)
		{
			foundNewPlayer = 0;
			break;
		}
	}
	if(foundNewPlayer)
	{
		eInflictor.playerAffectedArray[eInflictor.playerAffectedArray.size] = self;
		if(weapon.name == "concussion_grenade" || weapon.name == "tabun_gas")
		{
			eAttacker addweaponstat(weapon, "used", 1);
		}
		eAttacker addweaponstat(weapon, "hits", 1);
	}
}

/*
	Name: processShieldAssist
	Namespace: globallogic_score
	Checksum: 0x61651588
	Offset: 0x45E8
	Size: 0x10B
	Parameters: 1
	Flags: None
*/
function processShieldAssist(killedplayer)
{
	self endon("disconnect");
	killedplayer endon("disconnect");
	wait(0.05);
	util::WaitTillSlowProcessAllowed();
	if(!isdefined(level.teams[self.pers["team"]]))
	{
		return;
	}
	if(self.pers["team"] == killedplayer.pers["team"])
	{
		return;
	}
	if(!level.teambased)
	{
		return;
	}
	self incPersStat("assists", 1, 1, 1);
	self.assists = self getPersStat("assists");
	scoreevents::processScoreEvent("shield_assist", self, killedplayer, "riotshield");
}

/*
	Name: processAssist
	Namespace: globallogic_score
	Checksum: 0x3FC4CDDA
	Offset: 0x4700
	Size: 0x20B
	Parameters: 4
	Flags: None
*/
function processAssist(var_bd0f13b, damagedone, weapon, assist_level)
{
	self endon("disconnect");
	var_bd0f13b endon("disconnect");
	wait(0.05);
	util::WaitTillSlowProcessAllowed();
	if(!isdefined(level.teams[self.team]))
	{
		return;
	}
	if(isdefined(var_bd0f13b) && isdefined(var_bd0f13b.team) && self.team == var_bd0f13b.team)
	{
		return;
	}
	if(!level.teambased)
	{
		return;
	}
	if(!isdefined(assist_level))
	{
		assist_level = "assist";
	}
	assist_level_value = Int(ceil(damagedone / 25));
	if(assist_level_value < 1)
	{
		assist_level_value = 1;
	}
	else if(assist_level_value > 3)
	{
		assist_level_value = 3;
	}
	assist_level = assist_level + "_" + assist_level_value * 25;
	self incPersStat("assists", 1, 1, 1);
	self.assists = self getPersStat("assists");
	if(isdefined(weapon))
	{
		self addweaponstat(weapon, "assists", 1);
	}
	self challenges::assisted();
	scoreevents::processScoreEvent(assist_level, self, var_bd0f13b, weapon);
}

/*
	Name: xpRateThread
	Namespace: globallogic_score
	Checksum: 0x574E664D
	Offset: 0x4918
	Size: 0xD7
	Parameters: 0
	Flags: None
*/
function xpRateThread()
{
	/#
		self endon("death");
		self endon("disconnect");
		level endon("game_ended");
		while(level.inPrematchPeriod)
		{
			wait(0.05);
		}
		for(;;)
		{
			wait(5);
			if(isdefined(level.teams[level.players[0].pers["Dev Block strings are not supported"]]))
			{
				self rank::giveRankXP("Dev Block strings are not supported", Int(min(GetDvarInt("Dev Block strings are not supported"), 50)));
			}
		}
	#/
}

