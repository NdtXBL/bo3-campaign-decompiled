#using scripts\cp\_bb;
#using scripts\cp\_challenges;
#using scripts\cp\_decoy;
#using scripts\cp\_gameadvertisement;
#using scripts\cp\_gamerep;
#using scripts\cp\_laststand;
#using scripts\cp\_load;
#using scripts\cp\_rat;
#using scripts\cp\_util;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_deathicons;
#using scripts\cp\gametypes\_dev;
#using scripts\cp\gametypes\_friendicons;
#using scripts\cp\gametypes\_globallogic_defaults;
#using scripts\cp\gametypes\_globallogic_player;
#using scripts\cp\gametypes\_globallogic_score;
#using scripts\cp\gametypes\_globallogic_spawn;
#using scripts\cp\gametypes\_globallogic_ui;
#using scripts\cp\gametypes\_globallogic_utils;
#using scripts\cp\gametypes\_healthoverlay;
#using scripts\cp\gametypes\_loadout;
#using scripts\cp\gametypes\_menus;
#using scripts\cp\gametypes\_save;
#using scripts\cp\gametypes\_scoreboard;
#using scripts\cp\gametypes\_serversettings;
#using scripts\cp\gametypes\_shellshock;
#using scripts\cp\gametypes\_spawnlogic;
#using scripts\cp\gametypes\_spectating;
#using scripts\cp\gametypes\_wager;
#using scripts\cp\gametypes\_weapon_utils;
#using scripts\cp\gametypes\_weapons;
#using scripts\cp\teams\_teams;
#using scripts\shared\_burnplayer;
#using scripts\shared\bb_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\challenges_shared;
#using scripts\shared\damagefeedback_shared;
#using scripts\shared\demo_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\hostmigration_shared;
#using scripts\shared\hud_message_shared;
#using scripts\shared\hud_shared;
#using scripts\shared\hud_util_shared;
#using scripts\shared\laststand_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\math_shared;
#using scripts\shared\music_shared;
#using scripts\shared\objpoints_shared;
#using scripts\shared\persistence_shared;
#using scripts\shared\player_shared;
#using scripts\shared\simple_hostmigration;
#using scripts\shared\tweakables_shared;
#using scripts\shared\util_shared;
#using scripts\shared\weapons\_weapons;
#using scripts\shared\weapons_shared;

#namespace globallogic;

/*
	Name: init
	Namespace: globallogic
	Checksum: 0x294C0BAB
	Offset: 0x17B0
	Size: 0x803
	Parameters: 0
	Flags: None
*/
function init()
{
	level.Splitscreen = IsSplitscreen();
	level.xenon = GetDvarString("xenonGame") == "true";
	level.ps3 = GetDvarString("ps3Game") == "true";
	level.wiiu = GetDvarString("wiiuGame") == "true";
	level.orbis = GetDvarString("orbisGame") == "true";
	level.durango = GetDvarString("durangoGame") == "true";
	level.onlineGame = SessionModeIsOnlineGame();
	level.systemLink = SessionModeIsSystemlink();
	level.console = level.xenon || level.ps3 || level.wiiu || level.orbis || level.durango;
	level.rankedMatch = GameModeIsUsingXP();
	level.leagueMatch = 0;
	level.arenaMatch = 0;
	level.contractsEnabled = !GetGametypeSetting("disableContracts");
	level.contractsEnabled = 0;
	/#
		if(GetDvarInt("Dev Block strings are not supported") == 1)
		{
			level.rankedMatch = 1;
		}
	#/
	level.script = ToLower(GetDvarString("mapname"));
	level.gametype = ToLower(GetDvarString("g_gametype"));
	level.teambased = 0;
	level.teamCount = GetGametypeSetting("teamCount");
	level.multiTeam = level.teamCount > 2;
	level.var_71739519 = level.teamCount + 1;
	if(2 == level.var_71739519)
	{
		level.var_73ce26f0 = "axis";
	}
	else
	{
		level.var_73ce26f0 = "team" + level.var_71739519;
	}
	level.teams = [];
	level.teamIndex = [];
	level.var_f9f79134 = [];
	teamCount = level.teamCount;
	level.var_f9f79134["allies"] = "allies";
	level.teams["allies"] = "allies";
	level.teams["axis"] = "axis";
	level.teamIndex["neutral"] = 0;
	level.teamIndex["allies"] = 1;
	level.teamIndex["axis"] = 2;
	for(teamIndex = 3; teamIndex <= teamCount; teamIndex++)
	{
		level.teams["team" + teamIndex] = "team" + teamIndex;
		level.teamIndex["team" + teamIndex] = teamIndex;
	}
	level.overrideTeamScore = 0;
	level.overridePlayerScore = 0;
	level.displayHalftimeText = 0;
	level.displayRoundEndText = 1;
	level.endGameOnScoreLimit = 1;
	level.endGameOnTimeLimit = 1;
	level.cumulativeRoundScores = 1;
	level.scoreRoundWinBased = 0;
	level.resetPlayerScoreEveryRound = 0;
	level.gameForfeited = 0;
	level.forceAutoAssign = 0;
	level.halftimeType = "halftime";
	level.halftimeSubCaption = &"MP_SWITCHING_SIDES_CAPS";
	level.lastStatusTime = 0;
	level.wasWinning = [];
	level.lastSlowProcessFrame = 0;
	level.placement = [];
	foreach(team in level.teams)
	{
		level.placement[team] = [];
	}
	level.placement["all"] = [];
	level.postRoundTime = 7;
	level.inOvertime = 0;
	level.var_d59daf8 = 1;
	level.defaultOffenseRadius = 560;
	level.dropTeam = GetDvarInt("sv_maxclients");
	globallogic_ui::init();
	registerDvars();
	loadout::initPerkDvars();
	level.oldschool = GetDvarInt("scr_oldschool") == 1;
	if(level.oldschool)
	{
		/#
			print("Dev Block strings are not supported");
		#/
		SetDvar("jump_height", 64);
		SetDvar("jump_slowdownEnable", 0);
		SetDvar("bg_fallDamageMinHeight", 256);
		SetDvar("bg_fallDamageMaxHeight", 512);
		SetDvar("player_clipSizeMultiplier", 2);
	}
	precache_mp_leaderboards();
	if(!isdefined(game["tiebreaker"]))
	{
		game["tiebreaker"] = 0;
	}
	thread gameadvertisement::init();
	thread gamerep::init();
	level.disableChallenges = 0;
	if(level.leagueMatch || GetDvarInt("scr_disableChallenges") > 0)
	{
		level.disableChallenges = 1;
	}
	level.disableStatTracking = GetDvarInt("scr_disableStatTracking") > 0;
	level thread SetupCallbacks();
	level.playersDrivingVehiclesBecomeInvulnerable = 1;
	level.figure_out_attacker = &globallogic_player::figureOutAttacker;
	level.figure_out_friendly_fire = &globallogic_player::figureOutFriendlyFire;
	level.get_base_weapon_param = &weapon_utils::getBaseWeaponParam;
}

/*
	Name: registerDvars
	Namespace: globallogic
	Checksum: 0x88871CCB
	Offset: 0x1FC0
	Size: 0x2A3
	Parameters: 0
	Flags: None
*/
function registerDvars()
{
	if(GetDvarString("scr_oldschool") == "")
	{
		SetDvar("scr_oldschool", "0");
	}
	if(GetDvarString("ui_guncycle") == "")
	{
		SetDvar("ui_guncycle", 0);
	}
	if(GetDvarString("ui_weapon_tiers") == "")
	{
		SetDvar("ui_weapon_tiers", 0);
	}
	SetDvar("ui_text_endreason", "");
	SetMatchFlag("bomb_timer", 0);
	if(GetDvarString("scr_vehicle_damage_scalar") == "")
	{
		SetDvar("scr_vehicle_damage_scalar", "1");
	}
	level.vehicleDamageScalar = GetDvarFloat("scr_vehicle_damage_scalar");
	level.fire_audio_repeat_duration = GetDvarInt("fire_audio_repeat_duration");
	level.fire_audio_random_max_duration = GetDvarInt("fire_audio_random_max_duration");
	teamName = getcustomteamname(level.teamIndex["allies"]);
	if(isdefined(teamName))
	{
		SetDvar("g_customTeamName_Allies", teamName);
	}
	else
	{
		SetDvar("g_customTeamName_Allies", "");
	}
	teamName = getcustomteamname(level.teamIndex["axis"]);
	if(isdefined(teamName))
	{
		SetDvar("g_customTeamName_Axis", teamName);
	}
	else
	{
		SetDvar("g_customTeamName_Axis", "");
	}
}

/*
	Name: blank
	Namespace: globallogic
	Checksum: 0xC89B9EFF
	Offset: 0x2270
	Size: 0x53
	Parameters: 10
	Flags: None
*/
function blank(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
{
}

/*
	Name: SetupCallbacks
	Namespace: globallogic
	Checksum: 0x34EE0813
	Offset: 0x22D0
	Size: 0x423
	Parameters: 0
	Flags: None
*/
function SetupCallbacks()
{
	level.spawnPlayer = &globallogic_spawn::spawnPlayer;
	level.spawnPlayerPrediction = &blank;
	level.spawnClient = &globallogic_spawn::spawnClient;
	level.spawnSpectator = &globallogic_spawn::spawnSpectator;
	level.spawnIntermission = &globallogic_spawn::spawnIntermission;
	level.scoreOnGivePlayerScore = &globallogic_score::givePlayerScore;
	level.onPlayerScore = &globallogic_score::default_onPlayerScore;
	level.onTeamScore = &globallogic_score::default_onTeamScore;
	level.waveSpawnTimer = &waveSpawnTimer;
	level.spawnMessage = &globallogic_spawn::default_spawnMessage;
	level.onSpawnPlayer = &blank;
	level.onSpawnPlayerUnified = &blank;
	level.onSpawnSpectator = &globallogic_defaults::default_onSpawnSpectator;
	level.onSpawnIntermission = &globallogic_defaults::default_onSpawnIntermission;
	level.onRespawnDelay = &blank;
	level.onForfeit = &globallogic_defaults::default_onForfeit;
	level.onTimeLimit = &globallogic_defaults::default_onTimeLimit;
	level.onScoreLimit = &globallogic_defaults::default_onScoreLimit;
	level.onAliveCountChange = &globallogic_defaults::default_onAliveCountChange;
	level.onDeadEvent = &globallogic_defaults::default_onDeadEvent;
	level.onOneLeftEvent = &globallogic_defaults::default_onOneLeftEvent;
	level.giveTeamScore = &globallogic_score::giveTeamScore;
	level.onLastTeamAliveEvent = &globallogic_defaults::default_onLastTeamAliveEvent;
	level.var_f8e2a6ea = &globallogic_defaults::function_e4443d68;
	level.getTimePassed = &globallogic_utils::getTimePassed;
	level.getTimeLimit = &globallogic_defaults::default_getTimeLimit;
	level.getTeamKillPenalty = &globallogic_defaults::default_getTeamKillPenalty;
	level.getTeamKillScore = &globallogic_defaults::default_getTeamKillScore;
	level.isKillBoosting = &globallogic_score::default_isKillBoosting;
	level._setTeamScore = &globallogic_score::_setTeamScore;
	level._setPlayerScore = &globallogic_score::_setPlayerScore;
	level._getTeamScore = &globallogic_score::_getTeamScore;
	level._getPlayerScore = &globallogic_score::_getPlayerScore;
	level.onPrecacheGameType = &blank;
	level.onStartGameType = &blank;
	level.onPlayerConnect = &blank;
	level.onPlayerDisconnect = &blank;
	level.onPlayerDamage = &blank;
	level.onPlayerKilled = &blank;
	level.onPlayerKilledExtraUnthreadedCBs = [];
	level.setMatchScoreHUDElemForTeam = &hud_message::setMatchScoreHUDElemForTeam;
	level.onEndGame = &blank;
	level.onRoundEndGame = &globallogic_defaults::default_onRoundEndGame;
	level.onMedalAwarded = &blank;
	globallogic_ui::SetupCallbacks();
}

/*
	Name: precache_mp_leaderboards
	Namespace: globallogic
	Checksum: 0x5918F82A
	Offset: 0x2700
	Size: 0x21B
	Parameters: 0
	Flags: None
*/
function precache_mp_leaderboards()
{
	if(SessionModeIsZombiesGame())
	{
		return;
	}
	if(!level.rankedMatch)
	{
		return;
	}
	if(isdefined(level.var_e2c19907) && level.var_e2c19907)
	{
		return;
	}
	mapname = GetDvarString("mapname");
	globalLeaderboards = "LB_MP_GB_XPPRESTIGE LB_MP_GB_SCORE LB_MP_GB_KDRATIO LB_MP_GB_KILLS LB_MP_GB_WINS LB_MP_GB_DEATHS LB_MP_GB_XPMAXPERGAME LB_MP_GB_TACTICALINSERTS LB_MP_GB_TACTICALINSERTSKILLS LB_MP_GB_PRESTIGEXP LB_MP_GB_HEADSHOTS LB_MP_GB_WEAPONS_PRIMARY LB_MP_GB_WEAPONS_SECONDARY";
	careerLeaderboard = "";
	switch(level.gametype)
	{
		case "gun":
		case "oic":
		case "sas":
		case "shrp":
		{
			break;
		}
		case default:
		{
			careerLeaderboard = " LB_MP_GB_SCOREPERMINUTE";
			break;
		}
	}
	gamemodeLeaderboard = " LB_MP_GM_" + level.gametype;
	var_bdf3824c = " LB_MP_GM_" + level.gametype + "_EXT";
	var_58eaf806 = "";
	var_49e2032b = "";
	hardcoreMode = GetGametypeSetting("hardcoreMode");
	if(isdefined(hardcoreMode) && hardcoreMode)
	{
		var_58eaf806 = gamemodeLeaderboard + "_HC";
		var_49e2032b = var_bdf3824c + "_HC";
	}
	mapLeaderboard = " LB_MP_MAP_" + GetSubStr(mapname, 3, mapname.size);
	precacheLeaderboards(globalLeaderboards + careerLeaderboard + gamemodeLeaderboard + var_bdf3824c + var_58eaf806 + var_49e2032b + mapLeaderboard);
}

/*
	Name: compareTeamByGameStat
	Namespace: globallogic
	Checksum: 0xBE5BE4F
	Offset: 0x2928
	Size: 0xE5
	Parameters: 4
	Flags: None
*/
function compareTeamByGameStat(gameStat, teamA, teamB, previous_winner_score)
{
	winner = undefined;
	if(teamA == "tie")
	{
		winner = "tie";
		if(previous_winner_score < game[gameStat][teamB])
		{
			winner = teamB;
		}
	}
	else if(game[gameStat][teamA] == game[gameStat][teamB])
	{
		winner = "tie";
	}
	else if(game[gameStat][teamB] > game[gameStat][teamA])
	{
		winner = teamB;
	}
	else
	{
		winner = teamA;
	}
	return winner;
}

/*
	Name: determineTeamWinnerByGameStat
	Namespace: globallogic
	Checksum: 0xA97D1D27
	Offset: 0x2A18
	Size: 0xE1
	Parameters: 1
	Flags: None
*/
function determineTeamWinnerByGameStat(gameStat)
{
	teamKeys = getArrayKeys(level.teams);
	winner = teamKeys[0];
	previous_winner_score = game[gameStat][winner];
	for(teamIndex = 1; teamIndex < teamKeys.size; teamIndex++)
	{
		winner = compareTeamByGameStat(gameStat, winner, teamKeys[teamIndex], previous_winner_score);
		if(winner != "tie")
		{
			previous_winner_score = game[gameStat][winner];
		}
	}
	return winner;
}

/*
	Name: compareTeamByTeamScore
	Namespace: globallogic
	Checksum: 0xEF7DAAE8
	Offset: 0x2B08
	Size: 0xED
	Parameters: 3
	Flags: None
*/
function compareTeamByTeamScore(teamA, teamB, previous_winner_score)
{
	winner = undefined;
	teamBScore = [[level._getTeamScore]](teamB);
	if(teamA == "tie")
	{
		winner = "tie";
		if(previous_winner_score < teamBScore)
		{
			winner = teamB;
		}
		return winner;
	}
	teamAScore = [[level._getTeamScore]](teamA);
	if(teamBScore == teamAScore)
	{
		winner = "tie";
	}
	else if(teamBScore > teamAScore)
	{
		winner = teamB;
	}
	else
	{
		winner = teamA;
	}
	return winner;
}

/*
	Name: determineTeamWinnerByTeamScore
	Namespace: globallogic
	Checksum: 0x69648BC9
	Offset: 0x2C00
	Size: 0xDD
	Parameters: 0
	Flags: None
*/
function determineTeamWinnerByTeamScore()
{
	teamKeys = getArrayKeys(level.teams);
	winner = teamKeys[0];
	previous_winner_score = [[level._getTeamScore]](winner);
	for(teamIndex = 1; teamIndex < teamKeys.size; teamIndex++)
	{
		winner = compareTeamByTeamScore(winner, teamKeys[teamIndex], previous_winner_score);
		if(winner != "tie")
		{
			previous_winner_score = [[level._getTeamScore]](winner);
		}
	}
	return winner;
}

/*
	Name: forceEnd
	Namespace: globallogic
	Checksum: 0x173ECA5C
	Offset: 0x2CE8
	Size: 0x1CB
	Parameters: 1
	Flags: None
*/
function forceEnd(hostsucks)
{
	level.var_9260e896 = undefined;
	level.var_a07e59c6 = undefined;
	level.var_1a145538 = undefined;
	if(!isdefined(hostsucks))
	{
		hostsucks = 0;
	}
	if(level.hostForcedEnd || level.forcedEnd)
	{
		return;
	}
	winner = undefined;
	if(level.teambased)
	{
		winner = determineTeamWinnerByGameStat("teamScores");
		globallogic_utils::logTeamWinString("host ended game", winner);
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
	level.forcedEnd = 1;
	level.hostForcedEnd = 1;
	if(hostsucks)
	{
		endString = &"MP_HOST_SUCKS";
	}
	else if(level.Splitscreen)
	{
		endString = &"MP_ENDED_GAME";
	}
	else
	{
		endString = &"MP_HOST_ENDED_GAME";
	}
	SetMatchFlag("disableIngameMenu", 1);
	SetDvar("ui_text_endreason", endString);
	thread endGame(winner, endString);
}

/*
	Name: killserverPc
	Namespace: globallogic
	Checksum: 0xB84D1779
	Offset: 0x2EC0
	Size: 0x14B
	Parameters: 0
	Flags: None
*/
function killserverPc()
{
	if(level.hostForcedEnd || level.forcedEnd)
	{
		return;
	}
	winner = undefined;
	if(level.teambased)
	{
		winner = determineTeamWinnerByGameStat("teamScores");
		globallogic_utils::logTeamWinString("host ended game", winner);
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
	level.forcedEnd = 1;
	level.hostForcedEnd = 1;
	level.killserver = 1;
	endString = &"MP_HOST_ENDED_GAME";
	/#
		println("Dev Block strings are not supported");
	#/
	thread endGame(winner, endString);
}

/*
	Name: atLeastTwoTeams
	Namespace: globallogic
	Checksum: 0xF279230B
	Offset: 0x3018
	Size: 0xB5
	Parameters: 0
	Flags: None
*/
function atLeastTwoTeams()
{
	valid_count = 0;
	foreach(team in level.teams)
	{
		if(level.playerCount[team] != 0)
		{
			valid_count++;
		}
	}
	if(valid_count < 2)
	{
		return 0;
	}
	return 1;
}

/*
	Name: checkIfTeamForfeits
	Namespace: globallogic
	Checksum: 0x84EC4BEF
	Offset: 0x30D8
	Size: 0x59
	Parameters: 1
	Flags: None
*/
function checkIfTeamForfeits(team)
{
	if(!game["everExisted"][team])
	{
		return 0;
	}
	if(level.playerCount[team] < 1 && util::totalPlayerCount() > 0)
	{
		return 1;
	}
	return 0;
}

/*
	Name: checkForForfeit
	Namespace: globallogic
	Checksum: 0x31CC68AC
	Offset: 0x3140
	Size: 0x123
	Parameters: 0
	Flags: None
*/
function checkForForfeit()
{
	forfeit_count = 0;
	valid_team = undefined;
	foreach(team in level.teams)
	{
		if(checkIfTeamForfeits(team))
		{
			forfeit_count++;
			if(!level.multiTeam)
			{
				thread [[level.onForfeit]](team);
				return 1;
			}
			continue;
		}
		valid_team = team;
	}
	if(level.multiTeam && forfeit_count == level.teams.size - 1)
	{
		thread [[level.onForfeit]](valid_team);
		return 1;
	}
	return 0;
}

/*
	Name: doSpawnQueueUpdates
	Namespace: globallogic
	Checksum: 0x11E627EE
	Offset: 0x3270
	Size: 0x99
	Parameters: 0
	Flags: None
*/
function doSpawnQueueUpdates()
{
	foreach(team in level.teams)
	{
		if(level.spawnQueueModified[team])
		{
			[[level.onAliveCountChange]](team);
		}
	}
}

/*
	Name: isTeamAllDead
	Namespace: globallogic
	Checksum: 0x31D17981
	Offset: 0x3318
	Size: 0x3D
	Parameters: 1
	Flags: None
*/
function isTeamAllDead(team)
{
	return level.everExisted[team] && !level.aliveCount[team] && !level.playerLives[team];
}

/*
	Name: areAllTeamsDead
	Namespace: globallogic
	Checksum: 0x4EAD2525
	Offset: 0x3360
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function areAllTeamsDead()
{
	foreach(team in level.teams)
	{
		if(!isTeamAllDead(team))
		{
			return 0;
		}
	}
	return 1;
}

/*
	Name: getLastTeamAlive
	Namespace: globallogic
	Checksum: 0xF2C56CFF
	Offset: 0x3400
	Size: 0x105
	Parameters: 0
	Flags: None
*/
function getLastTeamAlive()
{
	count = 0;
	everExistedCount = 0;
	aliveTeam = undefined;
	foreach(team in level.teams)
	{
		if(level.everExisted[team])
		{
			if(!isTeamAllDead(team))
			{
				aliveTeam = team;
				count++;
			}
			everExistedCount++;
		}
	}
	if(everExistedCount > 1 && count == 1)
	{
		return aliveTeam;
	}
	return undefined;
}

/*
	Name: doDeadEventUpdates
	Namespace: globallogic
	Checksum: 0xFE3E7A7E
	Offset: 0x3510
	Size: 0x1A3
	Parameters: 0
	Flags: None
*/
function doDeadEventUpdates()
{
	if(level.teambased)
	{
		if(areAllTeamsDead())
		{
			[[level.onDeadEvent]]("all");
			return 1;
		}
		if(!isdefined(level.onDeadEvent))
		{
			lastTeamAlive = getLastTeamAlive();
			if(isdefined(lastTeamAlive))
			{
				[[level.onLastTeamAliveEvent]](lastTeamAlive);
				return 1;
			}
			break;
		}
		foreach(team in level.teams)
		{
			if(isTeamAllDead(team))
			{
				[[level.onDeadEvent]](team);
				return 1;
			}
		}
	}
	else if(totalAliveCount() == 0 && totalPlayerLives() == 0 && level.maxPlayerCount > 1)
	{
		[[level.onDeadEvent]]("all");
		return 1;
	}
	return 0;
}

/*
	Name: isOnlyOneLeftAliveOnTeam
	Namespace: globallogic
	Checksum: 0x97DADFB5
	Offset: 0x36C0
	Size: 0x4D
	Parameters: 1
	Flags: None
*/
function isOnlyOneLeftAliveOnTeam(team)
{
	return level.lastAliveCount[team] > 1 && level.aliveCount[team] == 1 && level.playerLives[team] == 1;
}

/*
	Name: doOneLeftEventUpdates
	Namespace: globallogic
	Checksum: 0x629E97DD
	Offset: 0x3718
	Size: 0x11B
	Parameters: 0
	Flags: None
*/
function doOneLeftEventUpdates()
{
	if(level.teambased)
	{
		foreach(team in level.teams)
		{
			if(isOnlyOneLeftAliveOnTeam(team))
			{
				[[level.onOneLeftEvent]](team);
				return 1;
			}
		}
	}
	else if(totalAliveCount() == 1 && totalPlayerLives() == 1 && level.maxPlayerCount > 1)
	{
		[[level.onOneLeftEvent]]("all");
		return 1;
	}
	return 0;
}

/*
	Name: function_3e0aac29
	Namespace: globallogic
	Checksum: 0x3735117B
	Offset: 0x3840
	Size: 0x35
	Parameters: 1
	Flags: None
*/
function function_3e0aac29(team)
{
	return level.everExisted[team] && level.aliveCount[team] == level.lastStandCount[team];
}

/*
	Name: function_c1a6930
	Namespace: globallogic
	Checksum: 0x338AD468
	Offset: 0x3880
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_c1a6930()
{
	foreach(team in level.teams)
	{
		if(!function_3e0aac29(team))
		{
			return 0;
		}
	}
	return 1;
}

/*
	Name: function_3eec45b4
	Namespace: globallogic
	Checksum: 0x3758906B
	Offset: 0x3920
	Size: 0x16B
	Parameters: 0
	Flags: None
*/
function function_3eec45b4()
{
	if(!isdefined(level.var_f8e2a6ea))
	{
		return;
	}
	if(level.teambased)
	{
		if(function_c1a6930())
		{
			[[level.var_f8e2a6ea]]("all");
			return 1;
		}
		foreach(team in level.teams)
		{
			if(function_3e0aac29(team))
			{
				[[level.var_f8e2a6ea]](team);
				return 1;
			}
		}
	}
	else
	{
		var_2ebe0111 = function_5eacd238();
		if(var_2ebe0111 > 0 && totalAliveCount() == var_2ebe0111 && level.maxPlayerCount > 1)
		{
			[[level.var_f8e2a6ea]]("all");
			return 1;
		}
	}
	return 0;
}

/*
	Name: updateGameEvents
	Namespace: globallogic
	Checksum: 0x64426AF
	Offset: 0x3A98
	Size: 0x1F7
	Parameters: 0
	Flags: None
*/
function updateGameEvents()
{
	/#
		if(GetDvarInt("Dev Block strings are not supported") == 1)
		{
			return;
		}
	#/
	if(level.rankedMatch || level.wagerMatch || level.leagueMatch && !level.inGracePeriod)
	{
		if(level.teambased)
		{
			if(!level.gameForfeited)
			{
				if(game["state"] == "playing" && checkForForfeit())
				{
					return;
				}
			}
			else if(atLeastTwoTeams())
			{
				level.gameForfeited = 0;
				level notify("abort forfeit");
			}
		}
		else if(!level.gameForfeited)
		{
			if(util::totalPlayerCount() == 1 && level.maxPlayerCount > 1)
			{
				thread [[level.onForfeit]]();
				return;
			}
		}
		else if(util::totalPlayerCount() > 1)
		{
			level.gameForfeited = 0;
			level notify("abort forfeit");
		}
	}
	if(!level.playerQueuedRespawn && !level.numLives && !level.inOvertime)
	{
		return;
	}
	if(level.inGracePeriod)
	{
		return;
	}
	if(level.playerQueuedRespawn)
	{
		doSpawnQueueUpdates();
	}
	if(doDeadEventUpdates())
	{
		return;
	}
	if(doOneLeftEventUpdates())
	{
		return;
	}
	if(function_3eec45b4())
	{
		return;
	}
}

/*
	Name: matchStartTimer
	Namespace: globallogic
	Checksum: 0xEC424636
	Offset: 0x3C98
	Size: 0x383
	Parameters: 0
	Flags: None
*/
function matchStartTimer()
{
	matchStartText = hud::createServerFontString("objective", 1.5);
	matchStartText hud::setPoint("CENTER", "CENTER", 0, -40);
	matchStartText.sort = 1001;
	matchStartText setText(game["strings"]["waiting_for_teams"]);
	matchStartText.foreground = 0;
	matchStartText.hidewheninmenu = 1;
	waitForPlayers();
	matchStartText setText(game["strings"]["match_starting_in"]);
	matchStartTimer = hud::createServerFontString("big", 2.2);
	matchStartTimer hud::setPoint("CENTER", "CENTER", 0, 0);
	matchStartTimer.sort = 1001;
	matchStartTimer.color = (1, 1, 0);
	matchStartTimer.foreground = 0;
	matchStartTimer.hidewheninmenu = 1;
	matchStartTimer hud::font_pulse_init();
	countTime = Int(level.prematchPeriod);
	if(countTime >= 2)
	{
		while(countTime > 0 && !level.gameEnded)
		{
			matchStartTimer setValue(countTime);
			matchStartTimer thread hud::font_pulse(level);
			if(countTime == 2)
			{
				visionSetNaked(GetDvarString("mapname"), 3);
			}
			countTime--;
			foreach(player in level.players)
			{
				player playlocalsound("uin_start_count_down");
			}
			wait(1);
		}
	}
	else
	{
		visionSetNaked(GetDvarString("mapname"), 1);
	}
	matchStartTimer hud::destroyElem();
	matchStartText hud::destroyElem();
}

/*
	Name: matchStartTimerSkip
	Namespace: globallogic
	Checksum: 0xDAA84BA5
	Offset: 0x4028
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function matchStartTimerSkip()
{
	visionSetNaked(GetDvarString("mapname"), 0);
}

/*
	Name: notifyTeamWaveSpawn
	Namespace: globallogic
	Checksum: 0x7BDD2D09
	Offset: 0x4068
	Size: 0x75
	Parameters: 2
	Flags: None
*/
function notifyTeamWaveSpawn(team, time)
{
	if(time - level.lastWave[team] > level.waveDelay[team] * 1000)
	{
		level notify("wave_respawn_" + team);
		level.lastWave[team] = time;
		level.wavePlayerSpawnIndex[team] = 0;
	}
}

/*
	Name: waveSpawnTimer
	Namespace: globallogic
	Checksum: 0x642E5475
	Offset: 0x40E8
	Size: 0xCF
	Parameters: 0
	Flags: None
*/
function waveSpawnTimer()
{
	level endon("game_ended");
	while(game["state"] == "playing")
	{
		time = GetTime();
		foreach(team in level.teams)
		{
			notifyTeamWaveSpawn(team, time);
		}
		wait(0.05);
	}
}

/*
	Name: hostIdledOut
	Namespace: globallogic
	Checksum: 0x656A7C3B
	Offset: 0x41C0
	Size: 0xA1
	Parameters: 0
	Flags: None
*/
function hostIdledOut()
{
	hostPlayer = util::getHostPlayer();
	/#
		if(GetDvarInt("Dev Block strings are not supported") == 1 || GetDvarInt("Dev Block strings are not supported") == 1)
		{
			return 0;
		}
	#/
	if(isdefined(hostPlayer) && !hostPlayer.hasSpawned && !isdefined(hostPlayer.selectedClass))
	{
		return 1;
	}
	return 0;
}

/*
	Name: IncrementMatchCompletionStat
	Namespace: globallogic
	Checksum: 0x87179DD4
	Offset: 0x4270
	Size: 0x53
	Parameters: 3
	Flags: None
*/
function IncrementMatchCompletionStat(gamemode, playedOrHosted, stat)
{
	self AddDStat("gameHistory", gamemode, "modeHistory", playedOrHosted, stat, 1);
}

/*
	Name: SetMatchCompletionStat
	Namespace: globallogic
	Checksum: 0xD86BC911
	Offset: 0x42D0
	Size: 0x53
	Parameters: 3
	Flags: None
*/
function SetMatchCompletionStat(gamemode, playedOrHosted, stat)
{
	self SetDStat("gameHistory", gamemode, "modeHistory", playedOrHosted, stat, 1);
}

/*
	Name: getTeamScoreRatio
	Namespace: globallogic
	Checksum: 0x75C899C6
	Offset: 0x4330
	Size: 0x169
	Parameters: 0
	Flags: None
*/
function getTeamScoreRatio()
{
	playerteam = self.pers["team"];
	score = getTeamScore(playerteam);
	otherTeamScore = 0;
	foreach(team in level.teams)
	{
		if(team == playerteam)
		{
			continue;
		}
		otherTeamScore = otherTeamScore + getTeamScore(team);
	}
	if(level.teams.size > 1)
	{
		otherTeamScore = otherTeamScore / level.teams.size - 1;
	}
	if(otherTeamScore != 0)
	{
		return float(score) / float(otherTeamScore);
	}
	return score;
}

/*
	Name: getHighestScore
	Namespace: globallogic
	Checksum: 0x599E2635
	Offset: 0x44A8
	Size: 0x8D
	Parameters: 0
	Flags: None
*/
function getHighestScore()
{
	highestScore = -999999999;
	for(index = 0; index < level.players.size; index++)
	{
		player = level.players[index];
		if(player.score > highestScore)
		{
			highestScore = player.score;
		}
	}
	return highestScore;
}

/*
	Name: getNextHighestScore
	Namespace: globallogic
	Checksum: 0xA7489011
	Offset: 0x4540
	Size: 0xB1
	Parameters: 1
	Flags: None
*/
function getNextHighestScore(score)
{
	highestScore = -999999999;
	for(index = 0; index < level.players.size; index++)
	{
		player = level.players[index];
		if(player.score >= score)
		{
			continue;
		}
		if(player.score > highestScore)
		{
			highestScore = player.score;
		}
	}
	return highestScore;
}

/*
	Name: sendAfterActionReport
	Namespace: globallogic
	Checksum: 0xEF8F83CF
	Offset: 0x4600
	Size: 0x8B5
	Parameters: 1
	Flags: None
*/
function sendAfterActionReport(winner)
{
	/#
		if(GetDvarInt("Dev Block strings are not supported") == 1)
		{
			return;
		}
	#/
	for(index = 0; index < level.players.size; index++)
	{
		player = level.players[index];
		spread = player.kills - player.deaths;
		if(player.pers["cur_kill_streak"] > player.pers["best_kill_streak"])
		{
			player.pers["best_kill_streak"] = player.pers["cur_kill_streak"];
		}
		if(level.rankedMatch)
		{
			player persistence::set_after_action_report_stat("privateMatch", 0);
		}
		else
		{
			player persistence::set_after_action_report_stat("privateMatch", 1);
		}
		player persistence::set_after_action_report_stat("demoFileID", getDemoFileID());
		if(isdefined(winner) && winner == player.pers["team"])
		{
			player persistence::set_after_action_report_stat("matchWon", 1);
		}
		else
		{
			player persistence::set_after_action_report_stat("matchWon", 0);
		}
		var_a4ad5434 = 0;
		var_1e9fcf9e = 0;
		var_94d83f9f = 0;
		for(index = 0; index < level.players.size; index++)
		{
			player persistence::set_after_action_report_player_stat(index, "isActive", 1);
			player persistence::set_after_action_report_player_stat(index, "name", level.players[index].name);
			player persistence::set_after_action_report_player_stat(index, "xuid", level.players[index] getXuid());
			player persistence::set_after_action_report_player_stat(index, "prvRank", Int(level.players[index].pers["rank"]));
			player persistence::set_after_action_report_player_stat(index, "curRank", level.players[index] GetDStat("playerstatslist", "rank", "StatValue"));
			player persistence::set_after_action_report_player_stat(index, "prvXP", Int(level.players[index].pers["rankxp"]));
			player persistence::set_after_action_report_player_stat(index, "curXP", Int(level.players[index] GetDStat("playerstatslist", "rankxp", "StatValue")));
			player persistence::set_after_action_report_player_stat(index, "deaths", level.players[index].deaths);
			player persistence::set_after_action_report_player_stat(index, "kills", level.players[index].kills);
			if(level.players[index].kills > level.players[var_94d83f9f].kills)
			{
				var_94d83f9f = index;
			}
			player persistence::set_after_action_report_player_stat(index, "assists", level.players[index].assists);
			if(level.players[index].assists > level.players[var_1e9fcf9e].assists)
			{
				var_1e9fcf9e = index;
			}
			player persistence::set_after_action_report_player_stat(index, "revives", level.players[index].revives);
			if(level.players[index].revives > level.players[var_a4ad5434].revives)
			{
				var_a4ad5434 = index;
			}
		}
		for(index = 0; index < level.players.size; index++)
		{
			player persistence::set_after_action_report_player_medal(index, 0, var_94d83f9f);
			player persistence::set_after_action_report_player_medal(index, 1, var_1e9fcf9e);
			player persistence::set_after_action_report_player_medal(index, 2, var_a4ad5434);
		}
		teamScoreRatio = player getTeamScoreRatio();
		scoreboardPosition = getPlacementForPlayer(player);
		if(scoreboardPosition < 0)
		{
			scoreboardPosition = level.players.size;
		}
		player GameHistoryFinishMatch(4, player.kills, player.deaths, player.score, scoreboardPosition, teamScoreRatio);
		placement = level.placement["all"];
		for(otherPlayerIndex = 0; otherPlayerIndex < placement.size; otherPlayerIndex++)
		{
			if(level.placement["all"][otherPlayerIndex] == player)
			{
				recordPlayerStats(player, "position", otherPlayerIndex);
			}
		}
		player persistence::set_after_action_report_stat("valid", 1);
		player persistence::set_after_action_report_stat("viewed", 0);
		if(isdefined(player.pers["matchesPlayedStatsTracked"]))
		{
			gamemode = util::GetCurrentGameMode();
			player IncrementMatchCompletionStat(gamemode, "played", "completed");
			if(isdefined(player.pers["matchesHostedStatsTracked"]))
			{
				player IncrementMatchCompletionStat(gamemode, "hosted", "completed");
				player.pers["matchesHostedStatsTracked"] = undefined;
			}
			player.pers["matchesPlayedStatsTracked"] = undefined;
		}
	}
}

/*
	Name: gameHistoryPlayerKicked
	Namespace: globallogic
	Checksum: 0x1A2DF35C
	Offset: 0x4EC0
	Size: 0x1C9
	Parameters: 0
	Flags: None
*/
function gameHistoryPlayerKicked()
{
	teamScoreRatio = self getTeamScoreRatio();
	scoreboardPosition = getPlacementForPlayer(self);
	if(scoreboardPosition < 0)
	{
		scoreboardPosition = level.players.size;
	}
	/#
		/#
			Assert(isdefined(self.kills));
		#/
		/#
			Assert(isdefined(self.deaths));
		#/
		/#
			Assert(isdefined(self.score));
		#/
		/#
			Assert(isdefined(scoreboardPosition));
		#/
		/#
			Assert(isdefined(teamScoreRatio));
		#/
	#/
	self GameHistoryFinishMatch(2, self.kills, self.deaths, self.score, scoreboardPosition, teamScoreRatio);
	if(isdefined(self.pers["matchesPlayedStatsTracked"]))
	{
		gamemode = util::GetCurrentGameMode();
		self IncrementMatchCompletionStat(gamemode, "played", "kicked");
		self.pers["matchesPlayedStatsTracked"] = undefined;
	}
	UploadStats(self);
	wait(1);
}

/*
	Name: gameHistoryPlayerQuit
	Namespace: globallogic
	Checksum: 0x53D11759
	Offset: 0x5098
	Size: 0x193
	Parameters: 0
	Flags: None
*/
function gameHistoryPlayerQuit()
{
	teamScoreRatio = self getTeamScoreRatio();
	scoreboardPosition = getPlacementForPlayer(self);
	if(scoreboardPosition < 0)
	{
		scoreboardPosition = level.players.size;
	}
	self GameHistoryFinishMatch(3, self.kills, self.deaths, self.score, scoreboardPosition, teamScoreRatio);
	if(isdefined(self.pers["matchesPlayedStatsTracked"]))
	{
		gamemode = util::GetCurrentGameMode();
		self IncrementMatchCompletionStat(gamemode, "played", "quit");
		if(isdefined(self.pers["matchesHostedStatsTracked"]))
		{
			self IncrementMatchCompletionStat(gamemode, "hosted", "quit");
			self.pers["matchesHostedStatsTracked"] = undefined;
		}
		self.pers["matchesPlayedStatsTracked"] = undefined;
	}
	UploadStats(self);
	if(!self IsHost())
	{
		wait(1);
	}
}

/*
	Name: displayRoundEnd
	Namespace: globallogic
	Checksum: 0x313257F9
	Offset: 0x5238
	Size: 0x2A3
	Parameters: 2
	Flags: None
*/
function displayRoundEnd(winner, endReasonText)
{
	if(level.displayRoundEndText)
	{
		if(level.teambased)
		{
			if(winner == "tie")
			{
				demo::gameResultBookmark("round_result", level.teamIndex["neutral"], level.teamIndex["neutral"]);
			}
			else
			{
				demo::gameResultBookmark("round_result", level.teamIndex[winner], level.teamIndex["neutral"]);
			}
		}
		SetMatchFlag("cg_drawSpectatorMessages", 0);
		players = level.players;
		for(index = 0; index < players.size; index++)
		{
			player = players[index];
			if(!util::wasLastRound())
			{
				player notify("round_ended");
			}
			if(!isdefined(player.pers["team"]))
			{
				player [[level.spawnIntermission]](1);
				continue;
			}
			if(level.wagerMatch)
			{
				if(level.teambased)
				{
					player thread [[level.onTeamWagerOutcomeNotify]](winner, 1, endReasonText);
				}
				else
				{
					player thread [[level.onWagerOutcomeNotify]](winner, endReasonText);
				}
			}
			else if(level.teambased)
			{
				player thread [[level.onTeamOutcomeNotify]](winner, 1, endReasonText);
			}
			else
			{
				player thread [[level.onOutcomeNotify]](winner, 1, endReasonText);
			}
			player util::show_hud(0);
			player setClientUIVisibilityFlag("g_compassShowEnemies", 0);
		}
	}
	else if(util::wasLastRound())
	{
		roundEndWait(level.roundEndDelay, 0);
	}
	else
	{
		roundEndWait(level.roundEndDelay, 1);
	}
}

/*
	Name: displayRoundSwitch
	Namespace: globallogic
	Checksum: 0x5783E69D
	Offset: 0x54E8
	Size: 0x22B
	Parameters: 2
	Flags: None
*/
function displayRoundSwitch(winner, endReasonText)
{
	switchType = level.halftimeType;
	if(switchType == "halftime")
	{
		if(isdefined(level.nextRoundIsOvertime) && level.nextRoundIsOvertime)
		{
			switchType = "overtime";
		}
		else if(level.roundLimit)
		{
			if(game["roundsplayed"] * 2 == level.roundLimit)
			{
				switchType = "halftime";
			}
			else
			{
				switchType = "intermission";
			}
		}
		else if(level.scoreLimit)
		{
			if(game["roundsplayed"] == level.scoreLimit - 1)
			{
				switchType = "halftime";
			}
			else
			{
				switchType = "intermission";
			}
		}
		else
		{
			switchType = "intermission";
		}
	}
	SetMatchTalkFlag("EveryoneHearsEveryone", 1);
	players = level.players;
	for(index = 0; index < players.size; index++)
	{
		player = players[index];
		if(!isdefined(player.pers["team"]))
		{
			player [[level.spawnIntermission]](1);
			continue;
		}
		if(level.wagerMatch)
		{
			player thread [[level.onTeamWagerOutcomeNotify]](switchType, 1, level.halftimeSubCaption);
		}
		else
		{
			player thread [[level.onTeamOutcomeNotify]](switchType, 0, level.halftimeSubCaption);
		}
		player util::show_hud(0);
	}
	roundEndWait(level.halftimeRoundEndDelay, 0);
}

/*
	Name: displayGameEnd
	Namespace: globallogic
	Checksum: 0x1B7544AC
	Offset: 0x5720
	Size: 0x2E3
	Parameters: 3
	Flags: None
*/
function displayGameEnd(winner, endReasonText, var_b091fbbb)
{
	SetMatchTalkFlag("EveryoneHearsEveryone", 1);
	SetMatchFlag("cg_drawSpectatorMessages", 0);
	if(level.teambased)
	{
		if(winner == "tie")
		{
			demo::gameResultBookmark("game_result", level.teamIndex["neutral"], level.teamIndex["neutral"]);
		}
		else
		{
			demo::gameResultBookmark("game_result", level.teamIndex[winner], level.teamIndex["neutral"]);
		}
	}
	players = level.players;
	for(index = 0; index < players.size; index++)
	{
		player = players[index];
		if(!isdefined(player.pers["team"]))
		{
			player [[level.spawnIntermission]](1);
			continue;
		}
		if(level.teambased)
		{
			if(isdefined(level.onTeamOutcomeNotify))
			{
				player thread [[level.onTeamOutcomeNotify]](winner, 0, endReasonText);
			}
		}
		else if(isdefined(level.onOutcomeNotify))
		{
			player thread [[level.onOutcomeNotify]](winner, 0, endReasonText);
		}
		player util::show_hud(0);
		player setClientUIVisibilityFlag("g_compassShowEnemies", 0);
	}
	if(level.teambased)
	{
		players = level.players;
		for(index = 0; index < players.size; index++)
		{
			player = players[index];
			team = player.pers["team"];
		}
	}
	else if(isdefined(level.var_78a27045))
	{
		level thread [[level.var_78a27045]](winner, endReasonText, var_b091fbbb);
	}
	bbPrint("global_session_epilogs", "reason %s", endReasonText);
	roundEndWait(level.postRoundTime, 1);
}

/*
	Name: getEndReasonText
	Namespace: globallogic
	Checksum: 0x5FD324F5
	Offset: 0x5A10
	Size: 0xCF
	Parameters: 0
	Flags: None
*/
function getEndReasonText()
{
	if(isdefined(level.endReasonText))
	{
		return level.endReasonText;
	}
	if(util::hitRoundLimit() || util::hitRoundWinLimit())
	{
		return game["strings"]["round_limit_reached"];
	}
	else if(util::hitScoreLimit())
	{
		return game["strings"]["score_limit_reached"];
	}
	if(level.forcedEnd)
	{
		if(level.hostForcedEnd)
		{
			return &"MP_HOST_ENDED_GAME";
		}
		else
		{
			return &"MP_ENDED_GAME";
		}
	}
	return game["strings"]["time_limit_reached"];
}

/*
	Name: resetOutcomeForAllPlayers
	Namespace: globallogic
	Checksum: 0xA0BBFDB8
	Offset: 0x5AE8
	Size: 0x69
	Parameters: 0
	Flags: None
*/
function resetOutcomeForAllPlayers()
{
	players = level.players;
	for(index = 0; index < players.size; index++)
	{
		player = players[index];
		player notify("reset_outcome");
	}
}

/*
	Name: startNextRound
	Namespace: globallogic
	Checksum: 0x5D81E6BA
	Offset: 0x5B60
	Size: 0x25B
	Parameters: 2
	Flags: None
*/
function startNextRound(winner, endReasonText)
{
	if(!util::isOneRound())
	{
		displayRoundEnd(winner, endReasonText);
		globallogic_utils::executePostRoundEvents();
		if(!util::wasLastRound())
		{
			if(checkRoundSwitch())
			{
				displayRoundSwitch(winner, endReasonText);
			}
			if(isdefined(level.nextRoundIsOvertime) && level.nextRoundIsOvertime)
			{
				if(!isdefined(game["overtime_round"]))
				{
					game["overtime_round"] = 1;
				}
				else
				{
					game["overtime_round"]++;
				}
			}
			SetMatchTalkFlag("DeadChatWithDead", level.voip.deadChatWithDead);
			SetMatchTalkFlag("DeadChatWithTeam", level.voip.deadChatWithTeam);
			SetMatchTalkFlag("DeadHearTeamLiving", level.voip.deadHearTeamLiving);
			SetMatchTalkFlag("DeadHearAllLiving", level.voip.deadHearAllLiving);
			SetMatchTalkFlag("EveryoneHearsEveryone", level.voip.everyoneHearsEveryone);
			SetMatchTalkFlag("DeadHearKiller", level.voip.deadHearKiller);
			SetMatchTalkFlag("KillersHearVictim", level.voip.killersHearVictim);
			game["state"] = "playing";
			level.allowbattlechatter["bc"] = GetGametypeSetting("allowBattleChatter");
			map_restart(1);
			return 1;
		}
	}
	return 0;
}

/*
	Name: setTopPlayerStats
	Namespace: globallogic
	Checksum: 0xDB32B331
	Offset: 0x5DC8
	Size: 0x341
	Parameters: 0
	Flags: None
*/
function setTopPlayerStats()
{
	if(level.rankedMatch || level.wagerMatch)
	{
		placement = level.placement["all"];
		topThreePlayers = min(3, placement.size);
		for(index = 0; index < topThreePlayers; index++)
		{
			if(level.placement["all"][index].score)
			{
				if(!index)
				{
					level.placement["all"][index] AddPlayerStatWithGameType("TOPPLAYER", 1);
					level.placement["all"][index] notify("topplayer");
				}
				else
				{
					level.placement["all"][index] notify("nottopplayer");
				}
				level.placement["all"][index] AddPlayerStatWithGameType("TOP3", 1);
				level.placement["all"][index] AddPlayerStat("TOP3ANY", 1);
				if(level.hardcoreMode)
				{
					level.placement["all"][index] AddPlayerStat("TOP3ANY_HC", 1);
				}
				if(level.multiTeam)
				{
					level.placement["all"][index] AddPlayerStat("TOP3ANY_MULTITEAM", 1);
				}
				level.placement["all"][index] notify("top3");
			}
		}
		for(index = 3; index < placement.size; index++)
		{
			level.placement["all"][index] notify("nottop3");
			level.placement["all"][index] notify("nottopplayer");
		}
		if(level.teambased)
		{
			foreach(team in level.teams)
			{
				setTopTeamStats(team);
			}
		}
	}
}

/*
	Name: setTopTeamStats
	Namespace: globallogic
	Checksum: 0xC4B6BD4F
	Offset: 0x6118
	Size: 0x175
	Parameters: 1
	Flags: None
*/
function setTopTeamStats(team)
{
	placementTeam = level.placement[team];
	topThreeTeamPlayers = min(3, placementTeam.size);
	if(placementTeam.size < 5)
	{
		return;
	}
	for(index = 0; index < topThreeTeamPlayers; index++)
	{
		if(placementTeam[index].score)
		{
			placementTeam[index] AddPlayerStat("TOP3TEAM", 1);
			placementTeam[index] AddPlayerStat("TOP3ANY", 1);
			if(level.hardcoreMode)
			{
				placementTeam[index] AddPlayerStat("TOP3ANY_HC", 1);
			}
			if(level.multiTeam)
			{
				placementTeam[index] AddPlayerStat("TOP3ANY_MULTITEAM", 1);
			}
			placementTeam[index] AddPlayerStatWithGameType("TOP3TEAM", 1);
		}
	}
}

/*
	Name: getGameLength
	Namespace: globallogic
	Checksum: 0x83EA325B
	Offset: 0x6298
	Size: 0x79
	Parameters: 0
	Flags: None
*/
function getGameLength()
{
	if(!level.timelimit || level.forcedEnd)
	{
		gameLength = globallogic_utils::getTimePassed() / 1000;
		gameLength = min(gameLength, 1200);
	}
	else
	{
		gameLength = level.timelimit * 60;
	}
	return gameLength;
}

/*
	Name: function_f8e35b5
	Namespace: globallogic
	Checksum: 0x93534FEC
	Offset: 0x6320
	Size: 0x6D
	Parameters: 1
	Flags: None
*/
function function_f8e35b5(winner)
{
	players = level.players;
	for(index = 0; index < players.size; index++)
	{
		globallogic_player::function_be51e5e1(players[index], winner);
	}
}

/*
	Name: endGame
	Namespace: globallogic
	Checksum: 0x7987EF4E
	Offset: 0x6398
	Size: 0x9A3
	Parameters: 3
	Flags: None
*/
function endGame(winner, endReasonText, var_b091fbbb)
{
	if(game["state"] == "postgame" || level.gameEnded)
	{
		return;
	}
	if(isdefined(level.onEndGame))
	{
		[[level.onEndGame]](winner);
	}
	if(!isdefined(level.disableOutroVisionSet) || level.disableOutroVisionSet == 0)
	{
		visionSetNaked("mpOutro", 2);
	}
	SetMatchFlag("cg_drawSpectatorMessages", 0);
	SetMatchFlag("game_ended", 1);
	game["state"] = "postgame";
	level.gameEndTime = GetTime();
	level.gameEnded = 1;
	SetDvar("g_gameEnded", 1);
	level.inGracePeriod = 0;
	level notify("game_ended");
	level.allowbattlechatter = [];
	foreach(team in level.teams)
	{
		game["lastroundscore"][team] = getTeamScore(team);
	}
	if(!isdefined(game["overtime_round"]) || util::wasLastRound())
	{
		game["roundsplayed"]++;
		game["roundwinner"][game["roundsplayed"]] = winner;
		if(level.teambased)
		{
			game["roundswon"][winner]++;
		}
	}
	setGameEndTime(0);
	updatePlacement();
	updateRankedMatch(winner);
	players = level.players;
	newTime = GetTime();
	gameLength = getGameLength();
	SetMatchTalkFlag("EveryoneHearsEveryone", 1);
	bbGameOver = 0;
	if(util::isOneRound() || util::wasLastRound())
	{
		bbGameOver = 1;
	}
	for(index = 0; index < players.size; index++)
	{
		player = players[index];
		player globallogic_player::freezePlayerForRoundEnd();
		player thread roundEndDoF(4);
		player function_628760b4();
		player globallogic_ui::freeGameplayHudElems();
		player weapons::update_timings(newTime);
		player bbPlayerMatchEnd(gameLength, endReasonText, bbGameOver);
		if(level.rankedMatch || level.wagerMatch || level.leagueMatch && !player IsSplitscreen())
		{
			if(level.leagueMatch)
			{
				player SetDStat("AfterActionReportStats", "lobbyPopup", "leaguesummary");
				continue;
			}
			if(isdefined(player.setPromotion))
			{
				player SetDStat("AfterActionReportStats", "lobbyPopup", "promotion");
				continue;
			}
			player SetDStat("AfterActionReportStats", "lobbyPopup", "summary");
		}
	}
	music::setmusicstate("silent");
	gamerep::gameRepUpdateInformationForRound();
	thread challenges::roundEnd(winner);
	MatchRecordSetLevelDifficultyForIndex(1, level.gameskill);
	function_f8e35b5(winner);
	recordGameResult("draw");
	globallogic_player::recordActivePlayersEndGameMatchRecordStats();
	finalizeMatchRecord();
	if(startNextRound(winner, endReasonText))
	{
		return;
	}
	if(!util::isOneRound())
	{
		if(isdefined(level.onRoundEndGame))
		{
			winner = [[level.onRoundEndGame]](winner);
		}
		endReasonText = getEndReasonText();
	}
	skillUpdate(winner, level.teambased);
	recordLeagueWinner(winner);
	setTopPlayerStats();
	thread challenges::gameEnd(winner);
	level LUI::screen_fade_out(1);
	wait(0.3);
	if(!isdefined(level.skipGameEnd) || !level.skipGameEnd)
	{
		displayGameEnd(winner, endReasonText, var_b091fbbb);
	}
	if(util::isOneRound())
	{
		globallogic_utils::executePostRoundEvents();
	}
	level.intermission = 1;
	gamerep::gameRepAnalyzeAndReport();
	thread sendAfterActionReport(winner);
	SetMatchFlag("disableIngameMenu", 1);
	foreach(player in players)
	{
		player closeInGameMenu();
	}
	SetMatchTalkFlag("EveryoneHearsEveryone", 1);
	players = level.players;
	for(index = 0; index < players.size; index++)
	{
		player = players[index];
		recordPlayerStats(player, "presentAtEnd", 1);
		player notify("reset_outcome");
	}
	if(isdefined(level.endGameFunction))
	{
		level thread [[level.endGameFunction]]();
	}
	players = GetPlayers();
	for(i = 0; i < players.size; i++)
	{
		players[i] setClientUIVisibilityFlag("weapon_hud_visible", 0);
		players[i] SetClientMiniScoreboardHide(1);
	}
	level notify("sfade");
	/#
		print("Dev Block strings are not supported");
	#/
	if(isdefined(level.var_4c3d1a55))
	{
		[[level.var_4c3d1a55]]();
		level.var_4c3d1a55 = undefined;
	}
	players = GetPlayers();
	for(i = 0; i < players.size; i++)
	{
		players[i] CameraActivate(0);
	}
	exitLevel(0);
}

/*
	Name: bbPlayerMatchEnd
	Namespace: globallogic
	Checksum: 0xA339347E
	Offset: 0x6D48
	Size: 0xBF
	Parameters: 3
	Flags: None
*/
function bbPlayerMatchEnd(gameLength, endReasonString, gameOver)
{
	playerRank = getPlacementForPlayer(self);
	totalTimePlayed = 0;
	if(isdefined(self.timePlayed) && isdefined(self.timePlayed["total"]))
	{
		totalTimePlayed = self.timePlayed["total"];
		if(totalTimePlayed > gameLength)
		{
			totalTimePlayed = gameLength;
		}
	}
	xuid = self getXuid();
}

/*
	Name: roundEndWait
	Namespace: globallogic
	Checksum: 0x85D70CD0
	Offset: 0x6E10
	Size: 0x13
	Parameters: 2
	Flags: None
*/
function roundEndWait(defaultDelay, matchBonus)
{
}

/*
	Name: roundEndDoF
	Namespace: globallogic
	Checksum: 0xB39336D5
	Offset: 0x6E30
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function roundEndDoF(time)
{
	self setDepthOfField(0, 128, 512, 4000, 6, 1.8);
}

/*
	Name: checkTimeLimit
	Namespace: globallogic
	Checksum: 0xE19C1DE
	Offset: 0x6E78
	Size: 0x12F
	Parameters: 0
	Flags: None
*/
function checkTimeLimit()
{
	if(isdefined(level.timeLimitOverride) && level.timeLimitOverride)
	{
		return;
	}
	if(game["state"] != "playing")
	{
		setGameEndTime(0);
		return;
	}
	if(level.timelimit <= 0)
	{
		setGameEndTime(0);
		return;
	}
	if(level.inPrematchPeriod)
	{
		setGameEndTime(0);
		return;
	}
	if(level.timerStopped)
	{
		setGameEndTime(0);
		return;
	}
	if(!isdefined(level.startTime))
	{
		return;
	}
	timeLeft = globallogic_utils::getTimeRemaining();
	setGameEndTime(GetTime() + Int(timeLeft));
	if(timeLeft > 0)
	{
		return;
	}
	[[level.onTimeLimit]]();
}

/*
	Name: allTeamsUnderScoreLimit
	Namespace: globallogic
	Checksum: 0xD2D1A752
	Offset: 0x6FB0
	Size: 0x99
	Parameters: 0
	Flags: None
*/
function allTeamsUnderScoreLimit()
{
	foreach(team in level.teams)
	{
		if(game["teamScores"][team] >= level.scoreLimit)
		{
			return 0;
		}
	}
	return 1;
}

/*
	Name: checkScoreLimit
	Namespace: globallogic
	Checksum: 0x2FED31
	Offset: 0x7058
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function checkScoreLimit()
{
	if(game["state"] != "playing")
	{
		return 0;
	}
	if(level.scoreLimit <= 0)
	{
		return 0;
	}
	if(level.teambased)
	{
		if(allTeamsUnderScoreLimit())
		{
			return 0;
		}
	}
	else if(!isPlayer(self))
	{
		return 0;
	}
	if(self.pointstowin < level.scoreLimit)
	{
		return 0;
	}
	[[level.onScoreLimit]]();
}

/*
	Name: updateGametypeDvars
	Namespace: globallogic
	Checksum: 0x1078E133
	Offset: 0x7108
	Size: 0x20D
	Parameters: 0
	Flags: None
*/
function updateGametypeDvars()
{
	level endon("game_ended");
	while(game["state"] == "playing")
	{
		roundLimit = math::clamp(GetGametypeSetting("roundLimit"), level.roundLimitMin, level.roundLimitMax);
		if(roundLimit != level.roundLimit)
		{
			level.roundLimit = roundLimit;
			level notify("update_roundlimit");
		}
		timelimit = [[level.getTimeLimit]]();
		if(timelimit != level.timelimit)
		{
			level.timelimit = timelimit;
			SetDvar("ui_timelimit", level.timelimit);
			level notify("update_timelimit");
		}
		thread checkTimeLimit();
		scoreLimit = math::clamp(GetGametypeSetting("scoreLimit"), level.scoreLimitMin, level.scoreLimitMax);
		if(scoreLimit != level.scoreLimit)
		{
			level.scoreLimit = scoreLimit;
			SetDvar("ui_scorelimit", level.scoreLimit);
			level notify("update_scorelimit");
		}
		thread checkScoreLimit();
		if(isdefined(level.startTime))
		{
			remaining_time = globallogic_utils::getTimeRemaining();
			if(isdefined(remaining_time) && remaining_time < 3000)
			{
				wait(0.1);
				continue;
			}
		}
		wait(1);
	}
}

/*
	Name: removeDisconnectedPlayerFromPlacement
	Namespace: globallogic
	Checksum: 0x1AD228A6
	Offset: 0x7320
	Size: 0x1D5
	Parameters: 0
	Flags: None
*/
function removeDisconnectedPlayerFromPlacement()
{
	offset = 0;
	numPlayers = level.placement["all"].size;
	found = 0;
	for(i = 0; i < numPlayers; i++)
	{
		if(level.placement["all"][i] == self)
		{
			found = 1;
		}
		if(found)
		{
			level.placement["all"][i] = level.placement["all"][i + 1];
		}
	}
	if(!found)
	{
		return;
	}
	level.placement["all"][numPlayers - 1] = undefined;
	/#
		Assert(level.placement["Dev Block strings are not supported"].size == numPlayers - 1);
	#/
	/#
		globallogic_utils::assertProperPlacement();
	#/
	updateTeamPlacement();
	if(level.teambased)
	{
		return;
	}
	numPlayers = level.placement["all"].size;
	for(i = 0; i < numPlayers; i++)
	{
		player = level.placement["all"][i];
		player notify("update_outcome");
	}
}

/*
	Name: updatePlacement
	Namespace: globallogic
	Checksum: 0xBD7F336C
	Offset: 0x7500
	Size: 0x37B
	Parameters: 0
	Flags: None
*/
function updatePlacement()
{
	if(!level.players.size)
	{
		return;
	}
	level.placement["all"] = [];
	foreach(player in level.players)
	{
		if(!level.teambased || isdefined(level.teams[player.team]))
		{
			level.placement["all"][level.placement["all"].size] = player;
		}
	}
	placementAll = level.placement["all"];
	if(level.teambased)
	{
		for(i = 1; i < placementAll.size; i++)
		{
			player = placementAll[i];
			playerScore = player.score;
			for(j = i - 1; j >= 0 && (playerScore > placementAll[j].score || (playerScore == placementAll[j].score && player.deaths < placementAll[j].deaths)); j--)
			{
				placementAll[j + 1] = placementAll[j];
			}
			placementAll[j + 1] = player;
		}
		break;
	}
	for(i = 1; i < placementAll.size; i++)
	{
		player = placementAll[i];
		playerScore = player.pointstowin;
		for(j = i - 1; j >= 0 && (playerScore > placementAll[j].pointstowin || (playerScore == placementAll[j].pointstowin && player.deaths < placementAll[j].deaths)); j--)
		{
			placementAll[j + 1] = placementAll[j];
		}
		placementAll[j + 1] = player;
	}
	level.placement["all"] = placementAll;
	/#
		globallogic_utils::assertProperPlacement();
	#/
	updateTeamPlacement();
}

/*
	Name: updateTeamPlacement
	Namespace: globallogic
	Checksum: 0x87375B97
	Offset: 0x7888
	Size: 0x1D3
	Parameters: 0
	Flags: None
*/
function updateTeamPlacement()
{
	foreach(team in level.teams)
	{
		placement[team] = [];
	}
	placement["spectator"] = [];
	if(!level.teambased)
	{
		return;
	}
	placementAll = level.placement["all"];
	placementAllSize = placementAll.size;
	for(i = 0; i < placementAllSize; i++)
	{
		player = placementAll[i];
		team = player.pers["team"];
		placement[team][placement[team].size] = player;
	}
	foreach(team in level.teams)
	{
		level.placement[team] = placement[team];
	}
}

/*
	Name: getPlacementForPlayer
	Namespace: globallogic
	Checksum: 0x186DCFB6
	Offset: 0x7A68
	Size: 0xB1
	Parameters: 1
	Flags: None
*/
function getPlacementForPlayer(player)
{
	updatePlacement();
	playerRank = -1;
	placement = level.placement["all"];
	for(placementIndex = 0; placementIndex < placement.size; placementIndex++)
	{
		if(level.placement["all"][placementIndex] == player)
		{
			playerRank = placementIndex + 1;
			break;
		}
	}
	return playerRank;
}

/*
	Name: isTopScoringPlayer
	Namespace: globallogic
	Checksum: 0x26AF8EFC
	Offset: 0x7B28
	Size: 0x253
	Parameters: 1
	Flags: None
*/
function isTopScoringPlayer(player)
{
	topplayer = 0;
	updatePlacement();
	/#
		Assert(level.placement["Dev Block strings are not supported"].size > 0);
	#/
	if(level.placement["all"].size == 0)
	{
		return 0;
	}
	if(level.teambased)
	{
		topScore = level.placement["all"][0].score;
		for(index = 0; index < level.placement["all"].size; index++)
		{
			if(level.placement["all"][index].score == 0)
			{
				break;
			}
			if(topScore > level.placement["all"][index].score)
			{
				break;
			}
			if(self == level.placement["all"][index])
			{
				topScoringPlayer = 1;
				break;
			}
		}
		break;
	}
	topScore = level.placement["all"][0].pointstowin;
	for(index = 0; index < level.placement["all"].size; index++)
	{
		if(level.placement["all"][index].pointstowin == 0)
		{
			break;
		}
		if(topScore > level.placement["all"][index].pointstowin)
		{
			break;
		}
		if(self == level.placement["all"][index])
		{
			topplayer = 1;
			break;
		}
	}
	return topplayer;
}

/*
	Name: sortDeadPlayers
	Namespace: globallogic
	Checksum: 0xC7D7EAAB
	Offset: 0x7D88
	Size: 0x199
	Parameters: 1
	Flags: None
*/
function sortDeadPlayers(team)
{
	if(!level.playerQueuedRespawn)
	{
		return;
	}
	for(i = 1; i < level.deadPlayers[team].size; i++)
	{
		player = level.deadPlayers[team][i];
		for(j = i - 1; j >= 0 && player.deathtime < level.deadPlayers[team][j].deathtime; j--)
		{
			level.deadPlayers[team][j + 1] = level.deadPlayers[team][j];
		}
		level.deadPlayers[team][j + 1] = player;
	}
	for(i = 0; i < level.deadPlayers[team].size; i++)
	{
		if(level.deadPlayers[team][i].spawnQueueIndex != i)
		{
			level.spawnQueueModified[team] = 1;
		}
		level.deadPlayers[team][i].spawnQueueIndex = i;
	}
}

/*
	Name: totalAliveCount
	Namespace: globallogic
	Checksum: 0x744F8469
	Offset: 0x7F30
	Size: 0xA1
	Parameters: 0
	Flags: None
*/
function totalAliveCount()
{
	count = 0;
	foreach(team in level.teams)
	{
		count = count + level.aliveCount[team];
	}
	return count;
}

/*
	Name: totalPlayerLives
	Namespace: globallogic
	Checksum: 0x9CFBB13C
	Offset: 0x7FE0
	Size: 0xA1
	Parameters: 0
	Flags: None
*/
function totalPlayerLives()
{
	count = 0;
	foreach(team in level.teams)
	{
		count = count + level.playerLives[team];
	}
	return count;
}

/*
	Name: function_5eacd238
	Namespace: globallogic
	Checksum: 0x712B71A6
	Offset: 0x8090
	Size: 0xA1
	Parameters: 0
	Flags: None
*/
function function_5eacd238()
{
	count = 0;
	foreach(team in level.teams)
	{
		count = count + level.lastStandCount[team];
	}
	return count;
}

/*
	Name: initTeamVariables
	Namespace: globallogic
	Checksum: 0xC4CD44D
	Offset: 0x8140
	Size: 0x113
	Parameters: 1
	Flags: None
*/
function initTeamVariables(team)
{
	if(!isdefined(level.aliveCount))
	{
		level.aliveCount = [];
	}
	if(!isdefined(level.lastStandCount))
	{
		level.lastStandCount = [];
	}
	level.aliveCount[team] = 0;
	level.lastAliveCount[team] = 0;
	level.lastStandCount[team] = 0;
	if(!isdefined(game["everExisted"]))
	{
		game["everExisted"] = [];
	}
	if(!isdefined(game["everExisted"][team]))
	{
		game["everExisted"][team] = 0;
	}
	level.everExisted[team] = 0;
	level.waveDelay[team] = 0;
	level.lastWave[team] = 0;
	level.wavePlayerSpawnIndex[team] = 0;
	resetTeamVariables(team);
}

/*
	Name: resetTeamVariables
	Namespace: globallogic
	Checksum: 0x7D5BE72C
	Offset: 0x8260
	Size: 0xA9
	Parameters: 1
	Flags: None
*/
function resetTeamVariables(team)
{
	level.playerCount[team] = 0;
	level.lastAliveCount[team] = level.aliveCount[team];
	level.aliveCount[team] = 0;
	level.lastStandCount[team] = 0;
	level.playerLives[team] = 0;
	level.aliveplayers[team] = [];
	level.deadPlayers[team] = [];
	level.squads[team] = [];
	level.spawnQueueModified[team] = 0;
}

/*
	Name: updateTeamStatus
	Namespace: globallogic
	Checksum: 0x80FA82D2
	Offset: 0x8318
	Size: 0x3F3
	Parameters: 0
	Flags: None
*/
function updateTeamStatus()
{
	if(game["state"] == "postgame")
	{
		return;
	}
	resetTimeout();
	foreach(team in level.teams)
	{
		resetTeamVariables(team);
	}
	level.activePlayers = [];
	players = level.players;
	for(i = 0; i < players.size; i++)
	{
		player = players[i];
		if(!isdefined(player) && level.Splitscreen)
		{
			continue;
		}
		team = player.team;
		playerclass = player.curClass;
		if(team != "spectator" && (isdefined(playerclass) && playerclass != ""))
		{
			level.playerCount[team]++;
			if(player.sessionstate == "playing")
			{
				level.aliveCount[team]++;
				level.playerLives[team]++;
				player.spawnQueueIndex = -1;
				if(isalive(player))
				{
					level.aliveplayers[team][level.aliveplayers[team].size] = player;
					level.activePlayers[level.activePlayers.size] = player;
					if(isdefined(player.laststand) && player.laststand)
					{
						level.lastStandCount[team]++;
					}
				}
				else
				{
					level.deadPlayers[team][level.deadPlayers[team].size] = player;
				}
				continue;
			}
			level.deadPlayers[team][level.deadPlayers[team].size] = player;
			if(player globallogic_spawn::maySpawn())
			{
				level.playerLives[team]++;
			}
		}
	}
	totalAlive = totalAliveCount();
	if(totalAlive > level.maxPlayerCount)
	{
		level.maxPlayerCount = totalAlive;
	}
	foreach(team in level.teams)
	{
		if(level.aliveCount[team])
		{
			game["everExisted"][team] = 1;
			level.everExisted[team] = 1;
		}
		sortDeadPlayers(team);
	}
	level updateGameEvents();
}

/*
	Name: checkTeamScoreLimitSoon
	Namespace: globallogic
	Checksum: 0x7A5EC269
	Offset: 0x8718
	Size: 0xB1
	Parameters: 1
	Flags: None
*/
function checkTeamScoreLimitSoon(team)
{
	/#
		Assert(isdefined(team));
	#/
	if(level.scoreLimit <= 0)
	{
		return;
	}
	if(!level.teambased)
	{
		return;
	}
	if(globallogic_utils::getTimePassed() < 60000)
	{
		return;
	}
	timeLeft = globallogic_utils::getEstimatedTimeUntilScoreLimit(team);
	if(timeLeft < 1)
	{
		level notify("match_ending_soon", "score");
	}
}

/*
	Name: checkPlayerScoreLimitSoon
	Namespace: globallogic
	Checksum: 0x85C4DEB6
	Offset: 0x87D8
	Size: 0xA9
	Parameters: 0
	Flags: None
*/
function checkPlayerScoreLimitSoon()
{
	/#
		Assert(isPlayer(self));
	#/
	if(level.scoreLimit <= 0)
	{
		return;
	}
	if(level.teambased)
	{
		return;
	}
	if(globallogic_utils::getTimePassed() < 60000)
	{
		return;
	}
	timeLeft = globallogic_utils::getEstimatedTimeUntilScoreLimit(undefined);
	if(timeLeft < 1)
	{
		level notify("match_ending_soon", "score");
	}
}

/*
	Name: timeLimitClock
	Namespace: globallogic
	Checksum: 0xBD358753
	Offset: 0x8890
	Size: 0x29B
	Parameters: 0
	Flags: None
*/
function timeLimitClock()
{
	level endon("game_ended");
	wait(0.05);
	clockObject = spawn("script_origin", (0, 0, 0));
	while(game["state"] == "playing")
	{
		if(!level.timerStopped && level.timelimit)
		{
			timeLeft = globallogic_utils::getTimeRemaining() / 1000;
			timeLeftInt = Int(timeLeft + 0.5);
			if(timeLeftInt == 601)
			{
				util::clientNotify("notify_10");
			}
			if(timeLeftInt == 301)
			{
				util::clientNotify("notify_5");
			}
			if(timeLeftInt == 60)
			{
				util::clientNotify("notify_1");
			}
			if(timeLeftInt == 12)
			{
				util::clientNotify("notify_count");
			}
			if(timeLeftInt >= 40 && timeLeftInt <= 60)
			{
				level notify("match_ending_soon", "time");
			}
			if(timeLeftInt >= 30 && timeLeftInt <= 40)
			{
				level notify("match_ending_pretty_soon", "time");
			}
			if(timeLeftInt <= 32)
			{
				level notify("match_ending_vox");
			}
			if(timeLeftInt <= 10 || (timeLeftInt <= 30 && timeLeftInt % 2 == 0))
			{
				level notify("match_ending_very_soon", "time");
				if(timeLeftInt == 0)
				{
					break;
				}
				clockObject playsound("mpl_ui_timer_countdown");
			}
			if(timeLeft - floor(timeLeft) >= 0.05)
			{
				wait(timeLeft - floor(timeLeft));
			}
		}
		wait(1);
	}
}

/*
	Name: timeLimitClock_Intermission
	Namespace: globallogic
	Checksum: 0xF8E8C6B3
	Offset: 0x8B38
	Size: 0xAF
	Parameters: 1
	Flags: None
*/
function timeLimitClock_Intermission(waitTime)
{
	setGameEndTime(GetTime() + Int(waitTime * 1000));
	clockObject = spawn("script_origin", (0, 0, 0));
	if(waitTime >= 10)
	{
		wait(waitTime - 10);
	}
	for(;;)
	{
		clockObject playsound("mpl_ui_timer_countdown");
		wait(1);
	}
}

/*
	Name: function_59b8efe0
	Namespace: globallogic
	Checksum: 0x18E2A8E4
	Offset: 0x8BF0
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_59b8efe0()
{
	level endon("game_ended");
	while(1)
	{
		for(i = 0; i < level.players.size; i++)
		{
			player = level.players[i];
			if(isalive(player))
			{
				RecordBreadcrumbDataForPlayer(player, undefined);
			}
		}
		wait(15);
	}
}

/*
	Name: startGame
	Namespace: globallogic
	Checksum: 0x2514E735
	Offset: 0x8C98
	Size: 0x1FB
	Parameters: 0
	Flags: None
*/
function startGame()
{
	thread globallogic_utils::gameTimer();
	level.timerStopped = 0;
	SetMatchTalkFlag("DeadChatWithDead", level.voip.deadChatWithDead);
	SetMatchTalkFlag("DeadChatWithTeam", level.voip.deadChatWithTeam);
	SetMatchTalkFlag("DeadHearTeamLiving", level.voip.deadHearTeamLiving);
	SetMatchTalkFlag("DeadHearAllLiving", level.voip.deadHearAllLiving);
	SetMatchTalkFlag("EveryoneHearsEveryone", level.voip.everyoneHearsEveryone);
	SetMatchTalkFlag("DeadHearKiller", level.voip.deadHearKiller);
	SetMatchTalkFlag("KillersHearVictim", level.voip.killersHearVictim);
	if(isdefined(level.custom_prematch_period))
	{
		[[level.custom_prematch_period]]();
	}
	else
	{
		prematchPeriod();
	}
	level notify("prematch_over");
	thread timeLimitClock();
	thread gracePeriod();
	thread watchMatchEndingSoon();
	recordMatchBegin();
	if(!(isdefined(level.is_safehouse) && level.is_safehouse))
	{
		thread function_59b8efe0();
		thread bb::recordBlackBoxBreadcrumbData("cpbreadcrumb");
	}
}

/*
	Name: waitForPlayers
	Namespace: globallogic
	Checksum: 0xDA0FC671
	Offset: 0x8EA0
	Size: 0x5F
	Parameters: 0
	Flags: None
*/
function waitForPlayers()
{
	startTime = GetTime();
	while(getnumconnectedplayers() < 1)
	{
		wait(0.05);
		if(GetTime() - startTime > 120000)
		{
			exitLevel(0);
		}
	}
}

/*
	Name: prematchPeriod
	Namespace: globallogic
	Checksum: 0x589B1795
	Offset: 0x8F08
	Size: 0x135
	Parameters: 0
	Flags: None
*/
function prematchPeriod()
{
	SetMatchFlag("hud_hardcore", level.hardcoreMode);
	level endon("game_ended");
	if(level.prematchPeriod > 0)
	{
		thread matchStartTimer();
		waitForPlayers();
		wait(level.prematchPeriod);
	}
	else
	{
		matchStartTimerSkip();
		wait(0.05);
	}
	level.inPrematchPeriod = 0;
	for(index = 0; index < level.players.size; index++)
	{
		level.players[index] util::freeze_player_controls(0);
		level.players[index] enableWeapons();
	}
	wager::prematch_period();
	if(game["state"] != "playing")
	{
		return;
	}
}

/*
	Name: gracePeriod
	Namespace: globallogic
	Checksum: 0xA7736049
	Offset: 0x9048
	Size: 0x14B
	Parameters: 0
	Flags: None
*/
function gracePeriod()
{
	level endon("game_ended");
	if(isdefined(level.gracePeriodFunc))
	{
		[[level.gracePeriodFunc]]();
	}
	else
	{
		wait(level.gracePeriod);
	}
	level notify("grace_period_ending");
	wait(0.05);
	level.inGracePeriod = 0;
	if(game["state"] != "playing")
	{
		return;
	}
	if(level.numLives)
	{
		players = level.players;
		for(i = 0; i < players.size; i++)
		{
			player = players[i];
			if(!player.hasSpawned && player.sessionteam != "spectator" && !isalive(player))
			{
				player.statusicon = "hud_status_dead";
			}
		}
	}
	updateTeamStatus();
}

/*
	Name: watchMatchEndingSoon
	Namespace: globallogic
	Checksum: 0x32D8BA44
	Offset: 0x91A0
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function watchMatchEndingSoon()
{
	SetDvar("xblive_matchEndingSoon", 0);
	level waittill("match_ending_soon", reason);
	SetDvar("xblive_matchEndingSoon", 1);
}

/*
	Name: anyTeamHasWaveDelay
	Namespace: globallogic
	Checksum: 0x9D336D38
	Offset: 0x9200
	Size: 0x8D
	Parameters: 0
	Flags: None
*/
function anyTeamHasWaveDelay()
{
	foreach(team in level.teams)
	{
		if(level.waveDelay[team])
		{
			return 1;
		}
	}
	return 0;
}

/*
	Name: Callback_StartGameType
	Namespace: globallogic
	Checksum: 0xFB4E82E5
	Offset: 0x9298
	Size: 0x150B
	Parameters: 0
	Flags: None
*/
function Callback_StartGameType()
{
	level.prematchPeriod = 0;
	level.intermission = 0;
	SetMatchFlag("cg_drawSpectatorMessages", 1);
	SetMatchFlag("game_ended", 0);
	if(!isdefined(game["gamestarted"]))
	{
		if(!isdefined(game["allies"]))
		{
			game["allies"] = "seals";
		}
		if(!isdefined(game["axis"]))
		{
			game["axis"] = "pmc";
		}
		if(!isdefined(game["attackers"]))
		{
			game["attackers"] = "allies";
		}
		if(!isdefined(game["defenders"]))
		{
			game["defenders"] = "axis";
		}
		/#
			Assert(game["Dev Block strings are not supported"] != game["Dev Block strings are not supported"]);
		#/
		foreach(team in level.teams)
		{
			if(!isdefined(game[team]))
			{
				game[team] = "pmc";
			}
		}
		if(!isdefined(game["state"]))
		{
			game["state"] = "playing";
		}
		SetDvar("cg_thirdPersonAngle", 354);
		game["strings"]["press_to_spawn"] = &"PLATFORM_PRESS_TO_SPAWN";
		if(level.teambased)
		{
			game["strings"]["waiting_for_teams"] = &"MP_WAITING_FOR_TEAMS";
			game["strings"]["opponent_forfeiting_in"] = &"MP_OPPONENT_FORFEITING_IN";
		}
		else
		{
			game["strings"]["waiting_for_teams"] = &"MP_WAITING_FOR_PLAYERS";
			game["strings"]["opponent_forfeiting_in"] = &"MP_OPPONENT_FORFEITING_IN";
		}
		game["strings"]["match_starting_in"] = &"MP_MATCH_STARTING_IN";
		game["strings"]["spawn_next_round"] = &"COOP_SPAWN_NEXT_ROUND";
		game["strings"]["waiting_to_spawn"] = &"MP_WAITING_TO_SPAWN";
		game["strings"]["waiting_to_spawn_ss"] = &"MP_WAITING_TO_SPAWN_SS";
		game["strings"]["you_will_spawn"] = &"MP_YOU_WILL_RESPAWN";
		game["strings"]["match_starting"] = &"MP_MATCH_STARTING";
		game["strings"]["change_class"] = &"MP_CHANGE_CLASS_NEXT_SPAWN";
		game["strings"]["last_stand"] = &"MPUI_LAST_STAND";
		game["strings"]["cowards_way"] = &"PLATFORM_COWARDS_WAY_OUT";
		game["strings"]["tie"] = &"MP_MATCH_TIE";
		game["strings"]["round_draw"] = &"MP_ROUND_DRAW";
		game["strings"]["enemies_eliminated"] = &"MP_ENEMIES_ELIMINATED";
		game["strings"]["score_limit_reached"] = &"MP_SCORE_LIMIT_REACHED";
		game["strings"]["round_limit_reached"] = &"MP_ROUND_LIMIT_REACHED";
		game["strings"]["time_limit_reached"] = &"MP_TIME_LIMIT_REACHED";
		game["strings"]["players_forfeited"] = &"MP_PLAYERS_FORFEITED";
		game["strings"]["other_teams_forfeited"] = &"MP_OTHER_TEAMS_FORFEITED";
		[[level.onPrecacheGameType]]();
		game["gamestarted"] = 1;
		game["totalKills"] = 0;
		foreach(team in level.teams)
		{
			game["teamScores"][team] = 0;
			game["totalKillsTeam"][team] = 0;
		}
		level.prematchPeriod = GetGametypeSetting("prematchperiod");
		if(GetDvarInt("xblive_clanmatch") != 0)
		{
			foreach(team in level.teams)
			{
				game["icons"][team] = "composite_emblem_team_axis";
			}
			game["icons"]["allies"] = "composite_emblem_team_allies";
			game["icons"]["axis"] = "composite_emblem_team_axis";
		}
	}
	else if(!level.Splitscreen)
	{
		level.prematchPeriod = GetGametypeSetting("preroundperiod");
	}
	if(!isdefined(game["timepassed"]))
	{
		game["timepassed"] = 0;
	}
	if(!isdefined(game["roundsplayed"]))
	{
		game["roundsplayed"] = 0;
	}
	SetRoundsPlayed(game["roundsplayed"]);
	if(isdefined(game["overtime_round"]))
	{
		SetMatchFlag("overtime", 1);
	}
	else
	{
		SetMatchFlag("overtime", 0);
	}
	if(!isdefined(game["roundwinner"]))
	{
		game["roundwinner"] = [];
	}
	if(!isdefined(game["lastroundscore"]))
	{
		game["lastroundscore"] = [];
	}
	if(!isdefined(game["roundswon"]))
	{
		game["roundswon"] = [];
	}
	if(!isdefined(game["roundswon"]["tie"]))
	{
		game["roundswon"]["tie"] = 0;
	}
	foreach(team in level.teams)
	{
		if(!isdefined(game["roundswon"][team]))
		{
			game["roundswon"][team] = 0;
		}
		level.teamSpawnPoints[team] = [];
		level.spawn_point_team_class_names[team] = [];
	}
	level.skipVote = 0;
	level.gameEnded = 0;
	SetDvar("g_gameEnded", 0);
	level.objIDStart = 0;
	level.forcedEnd = 0;
	level.hostForcedEnd = 0;
	level.hardcoreMode = GetGametypeSetting("hardcoreMode");
	if(level.hardcoreMode)
	{
		/#
			print("Dev Block strings are not supported");
		#/
		if(!isdefined(level.friendlyFireDelayTime))
		{
			level.friendlyFireDelayTime = 0;
		}
	}
	if(GetDvarString("scr_max_rank") == "")
	{
		SetDvar("scr_max_rank", "0");
	}
	level.rankCap = GetDvarInt("scr_max_rank");
	if(GetDvarString("scr_min_prestige") == "")
	{
		SetDvar("scr_min_prestige", "0");
	}
	level.minPrestige = GetDvarInt("scr_min_prestige");
	level.useStartSpawns = 1;
	level.cumulativeRoundScores = GetGametypeSetting("cumulativeRoundScores");
	level.allowHitMarkers = GetGametypeSetting("allowhitmarkers");
	level.playerQueuedRespawn = GetGametypeSetting("playerQueuedRespawn");
	level.playerForceRespawn = GetGametypeSetting("playerForceRespawn");
	level.roundStartExplosiveDelay = GetGametypeSetting("roundStartExplosiveDelay");
	level.roundStartKillstreakDelay = GetGametypeSetting("roundStartKillstreakDelay");
	level.perksEnabled = GetGametypeSetting("perksEnabled");
	level.disableAttachments = GetGametypeSetting("disableAttachments");
	level.disableTacInsert = GetGametypeSetting("disableTacInsert");
	level.disableCAC = GetGametypeSetting("disableCAC");
	if(!isdefined(level.disableClassSelection))
	{
		level.disableClassSelection = GetGametypeSetting("disableClassSelection");
	}
	level.disableWeaponDrop = GetGametypeSetting("disableweapondrop");
	level.onlyHeadShots = GetGametypeSetting("onlyHeadshots");
	level.minimumAllowedTeamKills = GetGametypeSetting("teamKillPunishCount") - 1;
	level.teamKillReducedPenalty = GetGametypeSetting("teamKillReducedPenalty");
	level.teamKillPointLoss = GetGametypeSetting("teamKillPointLoss");
	level.teamKillSpawnDelay = GetGametypeSetting("teamKillSpawnDelay");
	level.deathPointLoss = GetGametypeSetting("deathPointLoss");
	level.leaderBonus = GetGametypeSetting("leaderBonus");
	level.forceradar = GetGametypeSetting("forceRadar");
	level.playerSprintTime = GetGametypeSetting("playerSprintTime");
	level.bulletDamageScalar = GetGametypeSetting("bulletDamageScalar");
	level.playerMaxHealth = GetGametypeSetting("playerMaxHealth");
	level.playerHealthRegenTime = GetGametypeSetting("playerHealthRegenTime");
	level.playerRespawnDelay = GetGametypeSetting("playerRespawnDelay");
	level.playerObjectiveHeldRespawnDelay = GetGametypeSetting("playerObjectiveHeldRespawnDelay");
	level.waveRespawnDelay = GetGametypeSetting("waveRespawnDelay");
	level.suicideSpawnDelay = GetGametypeSetting("spawnsuicidepenalty");
	level.teamKilledSpawnDelay = GetGametypeSetting("spawnteamkilledpenalty");
	level.maxSuicidesBeforeKick = GetGametypeSetting("maxsuicidesbeforekick");
	level.spectateType = GetGametypeSetting("spectateType");
	level.voip = spawnstruct();
	level.voip.deadChatWithDead = GetGametypeSetting("voipDeadChatWithDead");
	level.voip.deadChatWithTeam = GetGametypeSetting("voipDeadChatWithTeam");
	level.voip.deadHearAllLiving = GetGametypeSetting("voipDeadHearAllLiving");
	level.voip.deadHearTeamLiving = GetGametypeSetting("voipDeadHearTeamLiving");
	level.voip.everyoneHearsEveryone = GetGametypeSetting("voipEveryoneHearsEveryone");
	level.voip.deadHearKiller = GetGametypeSetting("voipDeadHearKiller");
	level.voip.killersHearVictim = GetGametypeSetting("voipKillersHearVictim");
	gameobjects::main();
	callback::callback("hash_cc62acca");
	foreach(team in level.teams)
	{
		initTeamVariables(team);
	}
	level.maxPlayerCount = 0;
	level.activePlayers = [];
	level.allowAnnouncer = GetGametypeSetting("allowAnnouncer");
	if(!isdefined(level.timelimit))
	{
		util::registerTimeLimit(1, 1440);
	}
	if(!isdefined(level.scoreLimit))
	{
		util::registerScoreLimit(1, 500);
	}
	if(!isdefined(level.roundLimit))
	{
		util::registerRoundLimit(0, 10);
	}
	if(!isdefined(level.roundWinLimit))
	{
		util::registerRoundWinLimit(0, 10);
	}
	globallogic_utils::registerPostRoundEvent(&wager::post_round_side_bet);
	waveDelay = level.waveRespawnDelay;
	if(waveDelay)
	{
		foreach(team in level.teams)
		{
			level.waveDelay[team] = waveDelay;
			level.lastWave[team] = 0;
		}
		level thread [[level.waveSpawnTimer]]();
	}
	level.inPrematchPeriod = 1;
	if(level.prematchPeriod > 2)
	{
		level.prematchPeriod = level.prematchPeriod + RandomFloat(4) - 2;
	}
	if(level.numLives || anyTeamHasWaveDelay() || level.playerQueuedRespawn)
	{
		level.gracePeriod = 1500;
	}
	else
	{
		level.gracePeriod = 1500;
	}
	level.inGracePeriod = 1;
	level.roundEndDelay = 5;
	level.halftimeRoundEndDelay = 3;
	globallogic_score::updateAllTeamScores();
	level.killstreaksenabled = 1;
	if(GetDvarString("scr_game_rankenabled") == "")
	{
		SetDvar("scr_game_rankenabled", 1);
	}
	level.rankEnabled = GetDvarInt("scr_game_rankenabled");
	if(GetDvarString("scr_game_medalsenabled") == "")
	{
		SetDvar("scr_game_medalsenabled", 1);
	}
	level.medalsEnabled = GetDvarInt("scr_game_medalsenabled");
	if(level.hardcoreMode && level.rankedMatch && GetDvarString("scr_game_friendlyFireDelay") == "")
	{
		SetDvar("scr_game_friendlyFireDelay", 1);
	}
	level.friendlyFireDelay = GetDvarInt("scr_game_friendlyFireDelay");
	[[level.onStartGameType]]();
	if(GetDvarInt("custom_killstreak_mode") == 1)
	{
		level.killstreaksenabled = 0;
	}
	if(isdefined(level.gameskill))
	{
		MatchRecordSetLevelDifficultyForIndex(0, level.gameskill);
	}
	thread startGame();
	level thread updateGametypeDvars();
	level thread simple_hostmigration::UpdateHostMigrationData();
	/#
		if(GetDvarInt("Dev Block strings are not supported") == 1)
		{
			level.skipGameEnd = 1;
			level.roundLimit = 1;
			wait(1);
			thread forceEnd(0);
		}
		if(GetDvarInt("Dev Block strings are not supported") == 1)
		{
			thread ForceDebugHostMigration();
		}
	#/
}

/*
	Name: ForceDebugHostMigration
	Namespace: globallogic
	Checksum: 0x6DAC059C
	Offset: 0xA7B0
	Size: 0x4F
	Parameters: 0
	Flags: None
*/
function ForceDebugHostMigration()
{
	/#
		while(1)
		{
			hostmigration::waitTillHostMigrationDone();
			wait(60);
			starthostmigration();
			hostmigration::waitTillHostMigrationDone();
		}
	#/
}

/*
	Name: registerFriendlyFireDelay
	Namespace: globallogic
	Checksum: 0x634D1BDA
	Offset: 0xA808
	Size: 0x10B
	Parameters: 4
	Flags: None
*/
function registerFriendlyFireDelay(dvarString, defaultValue, minValue, maxValue)
{
	dvarString = "scr_" + dvarString + "_friendlyFireDelayTime";
	if(GetDvarString(dvarString) == "")
	{
		SetDvar(dvarString, defaultValue);
	}
	if(GetDvarInt(dvarString) > maxValue)
	{
		SetDvar(dvarString, maxValue);
	}
	else if(GetDvarInt(dvarString) < minValue)
	{
		SetDvar(dvarString, minValue);
	}
	level.friendlyFireDelayTime = GetDvarInt(dvarString);
}

/*
	Name: checkRoundSwitch
	Namespace: globallogic
	Checksum: 0x5A5E1360
	Offset: 0xA920
	Size: 0x8F
	Parameters: 0
	Flags: None
*/
function checkRoundSwitch()
{
	if(!isdefined(level.roundSwitch) || !level.roundSwitch)
	{
		return 0;
	}
	if(!isdefined(level.onRoundSwitch))
	{
		return 0;
	}
	/#
		Assert(game["Dev Block strings are not supported"] > 0);
	#/
	if(game["roundsplayed"] % level.roundSwitch == 0)
	{
		[[level.onRoundSwitch]]();
		return 1;
	}
	return 0;
}

/*
	Name: listenForGameEnd
	Namespace: globallogic
	Checksum: 0x39069411
	Offset: 0xA9B8
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function listenForGameEnd()
{
	self endon("hash_ae13f274");
	self waittill("host_sucks_end_game");
	level.skipVote = 1;
	if(!level.gameEnded)
	{
		level thread forceEnd(1);
	}
}

/*
	Name: getKillStreaks
	Namespace: globallogic
	Checksum: 0x6E9C3BE6
	Offset: 0xAA10
	Size: 0x10B
	Parameters: 1
	Flags: None
*/
function getKillStreaks(player)
{
	for(killstreakNum = 0; killstreakNum < level.maxKillstreaks; killstreakNum++)
	{
		killstreak[killstreakNum] = "killstreak_null";
	}
	if(isPlayer(player) && !level.oldschool && level.disableClassSelection != 1 && isdefined(player.killstreak))
	{
		currentKillstreak = 0;
		for(killstreakNum = 0; killstreakNum < level.maxKillstreaks; killstreakNum++)
		{
			if(isdefined(player.killstreak[killstreakNum]))
			{
				killstreak[currentKillstreak] = player.killstreak[killstreakNum];
				currentKillstreak++;
			}
		}
	}
	return killstreak;
}

/*
	Name: updateRankedMatch
	Namespace: globallogic
	Checksum: 0x43D67CDF
	Offset: 0xAB28
	Size: 0xBB
	Parameters: 1
	Flags: None
*/
function updateRankedMatch(winner)
{
	if(level.rankedMatch)
	{
		if(hostIdledOut())
		{
			level.hostForcedEnd = 1;
			/#
				print("Dev Block strings are not supported");
			#/
			endLobby();
		}
	}
	if(!level.wagerMatch && !SessionModeIsZombiesGame() && (!isdefined(level.var_f0ca204d) && level.var_f0ca204d))
	{
		globallogic_score::updateMatchBonusScores(winner);
	}
}

