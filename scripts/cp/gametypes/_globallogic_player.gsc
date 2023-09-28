#using scripts\cp\_bb;
#using scripts\cp\_challenges;
#using scripts\cp\_flashgrenades;
#using scripts\cp\_gamerep;
#using scripts\cp\_hazard;
#using scripts\cp\_laststand;
#using scripts\cp\_scoreevents;
#using scripts\cp\_skipto;
#using scripts\cp\_util;
#using scripts\cp\cybercom\_cybercom;
#using scripts\cp\cybercom\_cybercom_tactical_rig;
#using scripts\cp\cybercom\_cybercom_tactical_rig_emergencyreserve;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_globallogic;
#using scripts\cp\gametypes\_globallogic_score;
#using scripts\cp\gametypes\_globallogic_spawn;
#using scripts\cp\gametypes\_globallogic_ui;
#using scripts\cp\gametypes\_globallogic_utils;
#using scripts\cp\gametypes\_globallogic_vehicle;
#using scripts\cp\gametypes\_killcam;
#using scripts\cp\gametypes\_loadout;
#using scripts\cp\gametypes\_player_cam;
#using scripts\cp\gametypes\_save;
#using scripts\cp\gametypes\_spawning;
#using scripts\cp\gametypes\_spawnlogic;
#using scripts\cp\gametypes\_spectating;
#using scripts\cp\gametypes\_weapon_utils;
#using scripts\cp\gametypes\_weapons;
#using scripts\cp\teams\_teams;
#using scripts\shared\_burnplayer;
#using scripts\shared\abilities\_ability_power;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\challenges_shared;
#using scripts\shared\damagefeedback_shared;
#using scripts\shared\demo_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\gameskill_shared;
#using scripts\shared\hostmigration_shared;
#using scripts\shared\hud_message_shared;
#using scripts\shared\hud_util_shared;
#using scripts\shared\laststand_shared;
#using scripts\shared\math_shared;
#using scripts\shared\medals_shared;
#using scripts\shared\persistence_shared;
#using scripts\shared\rank_shared;
#using scripts\shared\scoreevents_shared;
#using scripts\shared\tweakables_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\weapons\_weapon_utils;
#using scripts\shared\weapons\_weapons;
#using scripts\shared\weapons_shared;

#namespace globallogic_player;

/*
	Name: freezePlayerForRoundEnd
	Namespace: globallogic_player
	Checksum: 0x2842F2F7
	Offset: 0x18F8
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function freezePlayerForRoundEnd()
{
	self util::clearLowerMessage();
	self closeInGameMenu();
	self util::freeze_player_controls(1);
}

/*
	Name: init_player_flags
	Namespace: globallogic_player
	Checksum: 0xA1D19E41
	Offset: 0x1950
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function init_player_flags()
{
	if(isdefined(level.var_8f7c5cd0) && !self flag::exists(level.var_8f7c5cd0))
	{
		self flag::init(level.var_8f7c5cd0);
	}
	self flag::init("initial_streamer_ready");
}

/*
	Name: function_be51e5e1
	Namespace: globallogic_player
	Checksum: 0xB3D7B0B3
	Offset: 0x19C8
	Size: 0x36B
	Parameters: 2
	Flags: None
*/
function function_be51e5e1(player, result)
{
	lpselfnum = player GetEntityNumber();
	lpXuid = player getXuid(1);
	bbPrint("global_leave", "name %s client %s xuid %s", player.name, lpselfnum, lpXuid);
	resultStr = result;
	if(isdefined(player.team) && result == player.team)
	{
		resultStr = "win";
	}
	else if(result == "allies" || result == "axis")
	{
		resultStr = "lose";
	}
	timePlayed = game["timepassed"] / 1000;
	RecordComScoreEvent("end_match", "match_id", getDemoFileID(), "game_variant", "cp", "game_mode", level.gametype, "game_playlist", "N/A", "private_match", SessionModeIsPrivate(), "game_map", GetDvarString("mapname"), "player_xuid", player getXuid(1), "player_ip", player getipaddress(), "match_kills", player.kills, "match_deaths", player.deaths, "match_score", player.score, "match_streak", player.pers["best_kill_streak"], "match_captures", player.pers["captures"], "match_defends", player.pers["defends"], "match_headshots", player.pers["headshots"], "match_longshots", player.pers["longshots"], "prestige_max", player.pers["plevel"], "level_max", player.pers["rank"], "match_result", resultStr, "season_pass_owned", player HasSeasonPass(0), "match_hits", player.shotshit, "player_gender", player GetPlayerGenderType(CurrentSessionMode()));
}

/*
	Name: function_b0d17fc2
	Namespace: globallogic_player
	Checksum: 0x32F46064
	Offset: 0x1D40
	Size: 0x7B
	Parameters: 3
	Flags: None
*/
function function_b0d17fc2(mapname, var_66db3636, var_26b0fd19)
{
	var_38fbfebf = self GetDStat("PlayerStatsByMap", mapname, var_66db3636);
	if(isdefined(var_38fbfebf))
	{
		self function_56242533(var_26b0fd19, mapname, var_38fbfebf);
	}
}

/*
	Name: function_3b38bcc7
	Namespace: globallogic_player
	Checksum: 0x69360215
	Offset: 0x1DC8
	Size: 0x7B
	Parameters: 3
	Flags: None
*/
function function_3b38bcc7(mapname, var_66db3636, var_26b0fd19)
{
	var_c1be5d83 = self GetDStat("PlayerStatsByMap", mapname, var_66db3636);
	if(isdefined(var_c1be5d83))
	{
		self function_6e2b6a0b(var_26b0fd19, mapname, var_c1be5d83);
	}
}

/*
	Name: function_6c559425
	Namespace: globallogic_player
	Checksum: 0x99C635A8
	Offset: 0x1E50
	Size: 0x259
	Parameters: 0
	Flags: None
*/
function function_6c559425()
{
	if(!SessionModeIsOnlineGame())
	{
		return;
	}
	var_5c75060b = skipto::function_23eda99c();
	foreach(mapname in var_5c75060b)
	{
		var_2b7a9536 = skipto::function_97bb1111(mapname);
		self function_3b38bcc7(mapname, "hasBeenCompleted", "completed");
		self function_3b38bcc7(var_2b7a9536, "hasBeenCompleted", "completed");
		self function_b0d17fc2(mapname, "firstTimeCompletedUTC", "firstTimeCompleted");
		self function_b0d17fc2(var_2b7a9536, "firstTimeCompletedUTC", "firstTimeCompleted");
		self function_b0d17fc2(mapname, "lastCompletedUTC", "lastTimeCompleted");
		self function_b0d17fc2(var_2b7a9536, "lastCompletedUTC", "lastTimeCompleted");
		self function_b0d17fc2(mapname, "numCompletions", "numberTimesCompleted");
		self function_b0d17fc2(var_2b7a9536, "numCompletions", "numberTimesCompleted");
		self function_3b38bcc7(mapname, "allAccoladesComplete", "allAccoladesComplete");
		self function_3b38bcc7(var_2b7a9536, "allAccoladesComplete", "allAccoladesComplete");
	}
}

/*
	Name: function_b18d61a5
	Namespace: globallogic_player
	Checksum: 0xE3119383
	Offset: 0x20B8
	Size: 0x203
	Parameters: 0
	Flags: None
*/
function function_b18d61a5()
{
	if(!SessionModeIsOnlineGame())
	{
		return;
	}
	self function_6c559425();
	var_b0af8b0a = self GetDStat("PlayerStatsList", "CAREER_TOTAL_TIME_PAUSED", "statValue");
	self function_5367705a("duration_total_paused_seconds", var_b0af8b0a);
	var_add23082 = self GetDStat("PlayerStatsList", "CAREER_TOTAL_PLAY_TIME", "statValue");
	self function_5367705a("duration_total_seconds", var_add23082);
	var_25ebea36 = self GetDStat("PlayerStatsList", "KILLS", "statValue");
	self function_5367705a("kills_Total", var_25ebea36);
	var_184f557a = self GetDStat("PlayerStatsList", "DEATHS", "statValue");
	self function_5367705a("deaths_Total", var_184f557a);
	var_ff16b041 = self GetDStat("deadOpsArcade", "totalGamesPlayed");
	self function_5367705a("deadOps_Total", var_ff16b041);
}

/*
	Name: Callback_PlayerConnect
	Namespace: globallogic_player
	Checksum: 0x23F67C8C
	Offset: 0x22C8
	Size: 0x1DD3
	Parameters: 0
	Flags: None
*/
function Callback_PlayerConnect()
{
	init_player_flags();
	thread notifyConnecting();
	self.statusicon = "hud_status_connecting";
	self waittill("begin");
	if(isdefined(level.reset_clientdvars))
	{
		self [[level.reset_clientdvars]]();
	}
	waittillframeend;
	self.statusicon = "";
	self.guid = self getGuid();
	function_4216042e();
	savegame::function_5d2cdd99();
	self function_33d9b2e3();
	self thread function_dc541b6d();
	profilelog_begintiming(4, "ship");
	level notify("connected", self);
	callback::callback("hash_eaffea17");
	if(self IsHost())
	{
		self thread globallogic::listenForGameEnd();
	}
	if(!level.Splitscreen && !isdefined(self.pers["score"]))
	{
		iprintln(&"MP_CONNECTED", self);
	}
	if(!isdefined(self.pers["score"]))
	{
		self thread persistence::adjust_recent_stats();
		self persistence::set_after_action_report_stat("valid", 0);
	}
	if(level.rankedMatch || level.wagerMatch || level.leagueMatch && !isdefined(self.pers["matchesPlayedStatsTracked"]))
	{
		gamemode = util::GetCurrentGameMode();
		self globallogic::IncrementMatchCompletionStat(gamemode, "played", "started");
		if(!isdefined(self.pers["matchesHostedStatsTracked"]) && self IsLocalToHost())
		{
			self globallogic::IncrementMatchCompletionStat(gamemode, "hosted", "started");
			self.pers["matchesHostedStatsTracked"] = 1;
		}
		self.pers["matchesPlayedStatsTracked"] = 1;
		self thread persistence::upload_stats_soon();
	}
	self gamerep::gameRepPlayerConnected();
	self.movementTracking = spawnstruct();
	self thread util::trackWallRunningDistance();
	self thread util::trackSprintDistance();
	self thread util::trackDoubleJumpDistance();
	lpselfnum = self GetEntityNumber();
	lpGuid = self getGuid();
	logPrint("J;" + lpGuid + ";" + lpselfnum + ";" + self.name + "
");
	lpXuid = self getXuid(1);
	bbPrint("global_joins", "name %s client %s xuid %s", self.name, lpselfnum, lpXuid);
	if(!SessionModeIsZombiesGame())
	{
		self util::show_hud(1);
		self setClientUIVisibilityFlag("weapon_hud_visible", 1);
	}
	if(level.forceradar == 1)
	{
		self.pers["hasRadar"] = 1;
		self.hasSpyplane = 1;
		level.activeUAVs[self GetEntityNumber()] = 1;
	}
	if(level.forceradar == 2)
	{
		self setClientUIVisibilityFlag("g_compassShowEnemies", level.forceradar);
	}
	else
	{
		self setClientUIVisibilityFlag("g_compassShowEnemies", 0);
	}
	self SetClientPlayerSprintTime(level.playerSprintTime);
	self SetClientNumLives(level.numLives);
	self.lives = level.numLives;
	/#
		self.var_6c733586 = 0;
	#/
	if(level.hardcoreMode)
	{
		self SetClientDrawTalk(3);
	}
	if(SessionModeIsZombiesGame())
	{
		self [[level.player_stats_init]]();
	}
	else
	{
		self globallogic_score::initPersStat("score");
		if(level.resetPlayerScoreEveryRound)
		{
			self.pers["score"] = 0;
		}
		self.score = self.pers["score"];
		self globallogic_score::initPersStat("pointstowin");
		if(level.scoreRoundWinBased)
		{
			self.pers["pointstowin"] = 0;
		}
		self.pointstowin = self.pers["pointstowin"];
		self globallogic_score::initPersStat("momentum", 0);
		self.momentum = self globallogic_score::getPersStat("momentum");
		self globallogic_score::initPersStat("suicides");
		self.suicides = self globallogic_score::getPersStat("suicides");
		self globallogic_score::initPersStat("headshots");
		self.headshots = self globallogic_score::getPersStat("headshots");
		self globallogic_score::initPersStat("challenges");
		self.challenges = self globallogic_score::getPersStat("challenges");
		self globallogic_score::initPersStat("kills");
		self.kills = self globallogic_score::getPersStat("kills");
		self globallogic_score::initPersStat("deaths");
		self.deaths = self globallogic_score::getPersStat("deaths");
		self globallogic_score::initPersStat("assists");
		self.assists = self globallogic_score::getPersStat("assists");
		self globallogic_score::initPersStat("incaps");
		self.var_58ef604f = self globallogic_score::getPersStat("incaps");
		self globallogic_score::initPersStat("chickens", 0);
		self.Chickens = self globallogic_score::getPersStat("chickens");
		self globallogic_score::initPersStat("revives");
		self.revives = self globallogic_score::getPersStat("revives");
		self globallogic_score::initPersStat("defends", 0);
		self.Defends = self globallogic_score::getPersStat("defends");
		self globallogic_score::initPersStat("offends", 0);
		self.offends = self globallogic_score::getPersStat("offends");
		self globallogic_score::initPersStat("plants", 0);
		self.Plants = self globallogic_score::getPersStat("plants");
		self globallogic_score::initPersStat("defuses", 0);
		self.Defuses = self globallogic_score::getPersStat("defuses");
		self globallogic_score::initPersStat("returns", 0);
		self.returns = self globallogic_score::getPersStat("returns");
		self globallogic_score::initPersStat("captures", 0);
		self.Captures = self globallogic_score::getPersStat("captures");
		self globallogic_score::initPersStat("destructions", 0);
		self.destructions = self globallogic_score::getPersStat("destructions");
		self globallogic_score::initPersStat("disables", 0);
		self.disables = self globallogic_score::getPersStat("disables");
		self globallogic_score::initPersStat("escorts", 0);
		self.escorts = self globallogic_score::getPersStat("escorts");
		self globallogic_score::initPersStat("carries", 0);
		self.carries = self globallogic_score::getPersStat("carries");
		self globallogic_score::initPersStat("throws", 0);
		self.destructions = self globallogic_score::getPersStat("throws");
		self globallogic_score::initPersStat("backstabs", 0);
		self.backstabs = self globallogic_score::getPersStat("backstabs");
		self globallogic_score::initPersStat("longshots", 0);
		self.longshots = self globallogic_score::getPersStat("longshots");
		self globallogic_score::initPersStat("survived", 0);
		self.survived = self globallogic_score::getPersStat("survived");
		self globallogic_score::initPersStat("stabs", 0);
		self.stabs = self globallogic_score::getPersStat("stabs");
		self globallogic_score::initPersStat("tomahawks", 0);
		self.tomahawks = self globallogic_score::getPersStat("tomahawks");
		self globallogic_score::initPersStat("humiliated", 0);
		self.humiliated = self globallogic_score::getPersStat("humiliated");
		self globallogic_score::initPersStat("x2score", 0);
		self.x2score = self globallogic_score::getPersStat("x2score");
		self globallogic_score::initPersStat("agrkills", 0);
		self.x2score = self globallogic_score::getPersStat("agrkills");
		self globallogic_score::initPersStat("hacks", 0);
		self.x2score = self globallogic_score::getPersStat("hacks");
		self globallogic_score::initPersStat("killsconfirmed", 0);
		self.killsconfirmed = self globallogic_score::getPersStat("killsconfirmed");
		self globallogic_score::initPersStat("killsdenied", 0);
		self.killsdenied = self globallogic_score::getPersStat("killsdenied");
		self globallogic_score::initPersStat("sessionbans", 0);
		self.sessionbans = self globallogic_score::getPersStat("sessionbans");
		self globallogic_score::initPersStat("gametypeban", 0);
		self globallogic_score::initPersStat("time_played_total", 0);
		self globallogic_score::initPersStat("time_played_alive", 0);
		self globallogic_score::initPersStat("teamkills", 0);
		self globallogic_score::initPersStat("teamkills_nostats", 0);
		self.teamKillPunish = 0;
		if(level.minimumAllowedTeamKills >= 0 && self.pers["teamkills_nostats"] > level.minimumAllowedTeamKills)
		{
			self thread reduceTeamKillsOverTime();
		}
	}
	self.killedPlayersCurrent = [];
	if(!isdefined(self.pers["best_kill_streak"]))
	{
		self.pers["killed_players"] = [];
		self.pers["killed_by"] = [];
		self.pers["nemesis_tracking"] = [];
		self.pers["artillery_kills"] = 0;
		self.pers["dog_kills"] = 0;
		self.pers["nemesis_name"] = "";
		self.pers["nemesis_rank"] = 0;
		self.pers["nemesis_rankIcon"] = 0;
		self.pers["nemesis_xp"] = 0;
		self.pers["nemesis_xuid"] = "";
		self.pers["best_kill_streak"] = 0;
	}
	if(!isdefined(self.pers["music"]))
	{
		self.pers["music"] = spawnstruct();
		self.pers["music"].spawn = 0;
		self.pers["music"].inque = 0;
		self.pers["music"].currentState = "SILENT";
		self.pers["music"].previousState = "SILENT";
		self.pers["music"].nextstate = "UNDERSCORE";
		self.pers["music"].returnState = "UNDERSCORE";
	}
	self.leaderDialogQueue = [];
	self.leaderDialogActive = 0;
	self.leaderDialogGroups = [];
	self.currentLeaderDialogGroup = "";
	self.currentLeaderDialog = "";
	self.currentLeaderDialogTime = 0;
	if(!isdefined(self.pers["cur_kill_streak"]))
	{
		self.pers["cur_kill_streak"] = 0;
	}
	if(!isdefined(self.pers["cur_total_kill_streak"]))
	{
		self.pers["cur_total_kill_streak"] = 0;
		self setplayercurrentstreak(0);
	}
	if(!isdefined(self.pers["totalKillstreakCount"]))
	{
		self.pers["totalKillstreakCount"] = 0;
	}
	if(!isdefined(self.pers["killstreaksEarnedThisKillstreak"]))
	{
		self.pers["killstreaksEarnedThisKillstreak"] = 0;
	}
	if(isdefined(level.usingScoreStreaks) && level.usingScoreStreaks && !isdefined(self.pers["killstreak_quantity"]))
	{
		self.pers["killstreak_quantity"] = [];
	}
	if(isdefined(level.usingScoreStreaks) && level.usingScoreStreaks && !isdefined(self.pers["held_killstreak_ammo_count"]))
	{
		self.pers["held_killstreak_ammo_count"] = [];
	}
	if(isdefined(level.usingScoreStreaks) && level.usingScoreStreaks && !isdefined(self.pers["held_killstreak_clip_count"]))
	{
		self.pers["held_killstreak_clip_count"] = [];
	}
	if(!isdefined(self.pers["changed_class"]))
	{
		self.pers["changed_class"] = 0;
	}
	self.lastKillTime = 0;
	self.cur_death_streak = 0;
	self disabledeathstreak();
	self.death_streak = 0;
	self.kill_streak = 0;
	self.gametype_kill_streak = 0;
	self.spawnQueueIndex = -1;
	self.deathtime = 0;
	if(level.onlineGame)
	{
		self.death_streak = self GetDStat("HighestStats", "death_streak");
		self.kill_streak = self GetDStat("HighestStats", "kill_streak");
		self.gametype_kill_streak = self persistence::stat_get_with_gametype("kill_streak");
	}
	self.lastGrenadeSuicideTime = -1;
	self.teamkillsThisRound = 0;
	if(!isdefined(level.livesDoNotReset) || !level.livesDoNotReset || !isdefined(self.pers["lives"]))
	{
		self.pers["lives"] = level.numLives;
	}
	if(!level.teambased)
	{
		self.pers["team"] = undefined;
	}
	self.hasSpawned = 0;
	self.waitingToSpawn = 0;
	self.wantSafeSpawn = 0;
	self.deathCount = 0;
	self.connectedtime = GetTime();
	self.var_247e0696 = 0;
	self.wasAliveAtMatchStart = 0;
	self.grenadesUsed = 0;
	level.players[level.players.size] = self;
	if(level.Splitscreen)
	{
		SetDvar("splitscreen_playerNum", level.players.size);
	}
	if(game["state"] == "postgame")
	{
		self.pers["needteam"] = 1;
		self.pers["team"] = "spectator";
		self.team = "spectator";
		self.sessionteam = "spectator";
		self util::show_hud(0);
		self [[level.spawnIntermission]]();
		self closeInGameMenu();
		profilelog_endtiming(4, "gs=" + game["state"] + " zom=" + SessionModeIsZombiesGame());
		return;
	}
	if(level.rankedMatch || level.wagerMatch || level.leagueMatch && !isdefined(self.pers["lossAlreadyReported"]))
	{
		if(level.leagueMatch)
		{
			self recordLeaguePreLoser();
		}
		globallogic_score::updateLossStats(self);
		self.pers["lossAlreadyReported"] = 1;
	}
	if(!isdefined(self.pers["winstreakAlreadyCleared"]))
	{
		self globallogic_score::backupAndClearWinStreaks();
		self.pers["winstreakAlreadyCleared"] = 1;
	}
	if(self IsTestClient())
	{
		self.pers["isBot"] = 1;
	}
	if(level.rankedMatch || level.leagueMatch)
	{
		self persistence::set_after_action_report_stat("demoFileID", "0");
	}
	level endon("game_ended");
	if(isdefined(level.hostMigrationTimer))
	{
		self thread hostmigration::hostMigrationTimerThink();
	}
	if(level.oldschool)
	{
		self.pers["class"] = undefined;
		self.curClass = self.pers["class"];
	}
	if(isdefined(self.pers["team"]))
	{
		self.team = self.pers["team"];
	}
	if(isdefined(self.pers["class"]))
	{
		self.curClass = self.pers["class"];
	}
	if(!isdefined(self.pers["team"]) || isdefined(self.pers["needteam"]))
	{
		self.pers["needteam"] = undefined;
		self.pers["team"] = "spectator";
		self.team = "spectator";
		self.sessionstate = "dead";
		self globallogic_ui::updateObjectiveText();
		[[level.spawnSpectator]]();
		[[level.autoassign]](0);
		if(level.rankedMatch || level.leagueMatch)
		{
			self thread globallogic_spawn::kickIfDontSpawn();
		}
		if(self.pers["team"] == "spectator")
		{
			self.sessionteam = "spectator";
			self thread spectate_player_watcher();
		}
		if(level.teambased)
		{
			self.sessionteam = self.pers["team"];
			if(!isalive(self))
			{
				self.statusicon = "hud_status_dead";
			}
			self thread spectating::set_permissions();
		}
	}
	else if(self.pers["team"] == "spectator")
	{
		self SetClientScriptMainMenu(game["menu_start_menu"]);
		[[level.spawnSpectator]]();
		self.sessionteam = "spectator";
		self.sessionstate = "spectator";
		self thread spectate_player_watcher();
	}
	else
	{
		self.sessionteam = self.pers["team"];
		self.sessionstate = "dead";
		self globallogic_ui::updateObjectiveText();
		[[level.spawnSpectator]]();
		if(globallogic_utils::isValidClass(self.pers["class"]))
		{
			self thread [[level.spawnClient]]();
		}
		else
		{
			self globallogic_ui::showMainMenuForTeam();
		}
		self thread spectating::set_permissions();
	}
	if(self.sessionteam != "spectator")
	{
		self [[level.onSpawnPlayer]](1);
	}
	profilelog_endtiming(4, "gs=" + game["state"] + " zom=" + SessionModeIsZombiesGame());
	globallogic::updateTeamStatus();
	self function_b18d61a5();
	var_e04e8527 = self GetDStat("zmCampaignData", "unlocked");
	recordPlayerStats(self, "cpzmUnlocked", var_e04e8527);
}

/*
	Name: function_33d9b2e3
	Namespace: globallogic_player
	Checksum: 0x904131A7
	Offset: 0x40A8
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_33d9b2e3()
{
	var_58ef604f = self GetDStat("PlayerStatsList", "INCAPS", "statValue");
	revives = self GetDStat("PlayerStatsList", "REVIVES", "statValue");
	self function_b26abbde("INCAPS", var_58ef604f);
	self function_b26abbde("REVIVES", revives);
}

/*
	Name: function_dc541b6d
	Namespace: globallogic_player
	Checksum: 0x574E5587
	Offset: 0x4170
	Size: 0x3AF
	Parameters: 0
	Flags: None
*/
function function_dc541b6d()
{
	self endon("disconnect");
	if(!isdefined(function_9065d6ea()))
	{
		return;
	}
	while(1)
	{
		level waittill("save_restore");
		var_7fc849de = self function_ebacf39a("INCAPS");
		if(isdefined(var_7fc849de))
		{
			/#
				Assert(var_7fc849de >= self GetDStat("Dev Block strings are not supported", "Dev Block strings are not supported", "Dev Block strings are not supported"));
			#/
			/#
				Assert(var_7fc849de >= self GetDStat("Dev Block strings are not supported", function_9065d6ea(), "Dev Block strings are not supported", "Dev Block strings are not supported"));
			#/
			self SetDStat("PlayerStatsList", "INCAPS", "statValue", var_7fc849de);
			self.var_58ef604f = var_7fc849de - self GetDStat("PlayerStatsByMap", function_9065d6ea(), "currentStats", "INCAPS");
			self.pers["incaps"] = self.var_58ef604f;
		}
		var_be0f9382 = self function_ebacf39a("REVIVES");
		if(isdefined(var_be0f9382))
		{
			/#
				Assert(var_be0f9382 >= self GetDStat("Dev Block strings are not supported", "Dev Block strings are not supported", "Dev Block strings are not supported"));
			#/
			/#
				Assert(var_be0f9382 >= self GetDStat("Dev Block strings are not supported", function_9065d6ea(), "Dev Block strings are not supported", "Dev Block strings are not supported"));
			#/
			self SetDStat("PlayerStatsList", "REVIVES", "statValue", var_be0f9382);
			self.revives = var_be0f9382 - self GetDStat("PlayerStatsByMap", function_9065d6ea(), "currentStats", "REVIVES");
			/#
				Assert(self.revives >= 0);
			#/
			self.pers["revives"] = self.revives;
		}
		var_e8695a49 = self function_ebacf39a("lives");
		if(isdefined(var_e8695a49))
		{
			self.lives = var_e8695a49;
			self function_b016cdb3("lives");
		}
		self LUINotifyEvent(&"offsite_comms_complete");
	}
}

/*
	Name: spectate_player_watcher
	Namespace: globallogic_player
	Checksum: 0x212857EE
	Offset: 0x4528
	Size: 0x23B
	Parameters: 0
	Flags: None
*/
function spectate_player_watcher()
{
	self endon("disconnect");
	if(!level.Splitscreen && !level.hardcoreMode && GetDvarInt("scr_showperksonspawn") == 1 && game["state"] != "postgame" && !isdefined(self.perkHudelem))
	{
		if(level.perksEnabled == 1)
		{
			self hud::showPerks();
		}
	}
	self.watchingActiveClient = 1;
	self.waitingForPlayersText = undefined;
	while(1)
	{
		if(self.pers["team"] != "spectator" || level.gameEnded)
		{
			self hud_message::clearShoutcasterWaitingMessage();
			self FreezeControls(0);
			self.watchingActiveClient = 0;
			break;
		}
		else
		{
			count = 0;
			for(i = 0; i < level.players.size; i++)
			{
				if(level.players[i].team != "spectator")
				{
					count++;
					break;
				}
			}
			if(count > 0)
			{
				if(!self.watchingActiveClient)
				{
					self hud_message::clearShoutcasterWaitingMessage();
					self FreezeControls(0);
				}
				self.watchingActiveClient = 1;
			}
			else if(self.watchingActiveClient)
			{
				[[level.onSpawnSpectator]]();
				self FreezeControls(1);
				self hud_message::setShoutcasterWaitingMessage();
			}
			self.watchingActiveClient = 0;
			wait(0.5);
		}
	}
}

/*
	Name: Callback_PlayerMigrated
	Namespace: globallogic_player
	Checksum: 0x55603C54
	Offset: 0x4770
	Size: 0xB9
	Parameters: 0
	Flags: None
*/
function Callback_PlayerMigrated()
{
	/#
		println("Dev Block strings are not supported" + self.name + "Dev Block strings are not supported" + GetTime());
	#/
	if(isdefined(self.connected) && self.connected)
	{
		self globallogic_ui::updateObjectiveText();
	}
	level.hostMigrationReturnedPlayerCount++;
	if(level.hostMigrationReturnedPlayerCount >= level.players.size * 2 / 3)
	{
		/#
			println("Dev Block strings are not supported");
		#/
		level notify("hostmigration_enoughplayers");
	}
}

/*
	Name: Callback_PlayerDisconnect
	Namespace: globallogic_player
	Checksum: 0x82D8C19A
	Offset: 0x4838
	Size: 0x4E3
	Parameters: 0
	Flags: None
*/
function Callback_PlayerDisconnect()
{
	profilelog_begintiming(5, "ship");
	if(game["state"] != "postgame" && !level.gameEnded)
	{
		gameLength = globallogic::getGameLength();
		self globallogic::bbPlayerMatchEnd(gameLength, "MP_PLAYER_DISCONNECT", 0);
	}
	function_4216042e();
	savegame::function_5d2cdd99();
	ArrayRemoveValue(level.players, self);
	if(level.Splitscreen)
	{
		players = level.players;
		if(players.size <= 1)
		{
			level thread globallogic::forceEnd();
		}
		SetDvar("splitscreen_playerNum", players.size);
	}
	if(isdefined(self.score) && isdefined(self.pers["team"]))
	{
		/#
			print("Dev Block strings are not supported" + self.pers["Dev Block strings are not supported"] + "Dev Block strings are not supported" + self.score);
		#/
		level.dropTeam = level.dropTeam + 1;
	}
	[[level.onPlayerDisconnect]]();
	lpselfnum = self GetEntityNumber();
	lpGuid = self getGuid();
	logPrint("Q;" + lpGuid + ";" + lpselfnum + ";" + self.name + "
");
	self gamerep::gameRepPlayerDisconnected();
	for(entry = 0; entry < level.players.size; entry++)
	{
		if(isdefined(level.players[entry].pers["killed_players"][self.name]))
		{
			level.players[entry].pers["killed_players"][self.name] = undefined;
		}
		if(isdefined(level.players[entry].killedPlayersCurrent[self.name]))
		{
			level.players[entry].killedPlayersCurrent[self.name] = undefined;
		}
		if(isdefined(level.players[entry].pers["killed_by"][self.name]))
		{
			level.players[entry].pers["killed_by"][self.name] = undefined;
		}
		if(isdefined(level.players[entry].pers["nemesis_tracking"][self.name]))
		{
			level.players[entry].pers["nemesis_tracking"][self.name] = undefined;
		}
		if(level.players[entry].pers["nemesis_name"] == self.name)
		{
			level.players[entry] chooseNextBestNemesis();
		}
	}
	function_be51e5e1(self, "disconnected");
	if(level.gameEnded)
	{
		self globallogic::removeDisconnectedPlayerFromPlacement();
	}
	globallogic::updateTeamStatus();
	profilelog_endtiming(5, "gs=" + game["state"] + " zom=" + SessionModeIsZombiesGame());
	self function_628760b4();
}

/*
	Name: Callback_PlayerMelee
	Namespace: globallogic_player
	Checksum: 0xC0B44AC5
	Offset: 0x4D28
	Size: 0xC3
	Parameters: 8
	Flags: None
*/
function Callback_PlayerMelee(eAttacker, iDamage, weapon, vOrigin, vDir, boneIndex, shieldHit, fromBehind)
{
	hit = 1;
	if(level.teambased && self.team == eAttacker.team)
	{
		if(level.friendlyfire == 0)
		{
			hit = 0;
		}
	}
	self finishMeleeHit(eAttacker, weapon, vOrigin, vDir, boneIndex, shieldHit, hit, fromBehind);
}

/*
	Name: chooseNextBestNemesis
	Namespace: globallogic_player
	Checksum: 0x10E5B686
	Offset: 0x4DF8
	Size: 0x241
	Parameters: 0
	Flags: None
*/
function chooseNextBestNemesis()
{
	nemesisArray = self.pers["nemesis_tracking"];
	nemesisArrayKeys = getArrayKeys(nemesisArray);
	nemesisAmount = 0;
	nemesisName = "";
	if(nemesisArrayKeys.size > 0)
	{
		for(i = 0; i < nemesisArrayKeys.size; i++)
		{
			nemesisArrayKey = nemesisArrayKeys[i];
			if(nemesisArray[nemesisArrayKey] > nemesisAmount)
			{
				nemesisName = nemesisArrayKey;
				nemesisAmount = nemesisArray[nemesisArrayKey];
			}
		}
	}
	self.pers["nemesis_name"] = nemesisName;
	if(nemesisName != "")
	{
		for(playerIndex = 0; playerIndex < level.players.size; playerIndex++)
		{
			if(level.players[playerIndex].name == nemesisName)
			{
				nemesisPlayer = level.players[playerIndex];
				self.pers["nemesis_rank"] = nemesisPlayer.pers["rank"];
				self.pers["nemesis_rankIcon"] = nemesisPlayer.pers["rankxp"];
				self.pers["nemesis_xp"] = nemesisPlayer.pers["prestige"];
				self.pers["nemesis_xuid"] = nemesisPlayer getXuid();
				break;
			}
		}
	}
	else
	{
		self.pers["nemesis_xuid"] = "";
	}
}

/*
	Name: custom_gamemodes_modified_damage
	Namespace: globallogic_player
	Checksum: 0x12D58A6E
	Offset: 0x5048
	Size: 0xEB
	Parameters: 7
	Flags: None
*/
function custom_gamemodes_modified_damage(victim, eAttacker, iDamage, sMeansOfDeath, weapon, eInflictor, sHitLoc)
{
	if(level.onlineGame && !SessionModeIsPrivate())
	{
		return iDamage;
	}
	if(isdefined(eAttacker) && isdefined(eAttacker.damageModifier))
	{
		iDamage = iDamage * eAttacker.damageModifier;
	}
	if(sMeansOfDeath == "MOD_PISTOL_BULLET" || sMeansOfDeath == "MOD_RIFLE_BULLET")
	{
		iDamage = Int(iDamage * level.bulletDamageScalar);
	}
	return iDamage;
}

/*
	Name: figureOutAttacker
	Namespace: globallogic_player
	Checksum: 0x30463C88
	Offset: 0x5140
	Size: 0x18F
	Parameters: 1
	Flags: None
*/
function figureOutAttacker(eAttacker)
{
	if(isdefined(eAttacker))
	{
		if(isai(eAttacker) && isdefined(eAttacker.script_owner))
		{
			team = self.team;
			if(isai(self) && isdefined(self.team))
			{
				team = self.team;
			}
			if(eAttacker.script_owner.team != team)
			{
				eAttacker = eAttacker.script_owner;
			}
		}
		if(eAttacker.classname == "script_vehicle" && isdefined(eAttacker.owner) && !IsSentient(eAttacker))
		{
			eAttacker = eAttacker.owner;
		}
		else if(eAttacker.classname == "auto_turret" && isdefined(eAttacker.owner))
		{
			eAttacker = eAttacker.owner;
		}
		if(isdefined(eAttacker.var_6319d77b))
		{
			eAttacker = eAttacker.var_6319d77b;
		}
	}
	return eAttacker;
}

/*
	Name: figureOutWeapon
	Namespace: globallogic_player
	Checksum: 0xFFDAB1D6
	Offset: 0x52D8
	Size: 0xD3
	Parameters: 2
	Flags: None
*/
function figureOutWeapon(weapon, eInflictor)
{
	if(weapon == level.weaponNone && isdefined(eInflictor))
	{
		if(isdefined(eInflictor.targetname) && eInflictor.targetname == "explodable_barrel")
		{
			weapon = GetWeapon("explodable_barrel");
		}
		else if(isdefined(eInflictor.destructible_type) && IsSubStr(eInflictor.destructible_type, "vehicle_"))
		{
			weapon = GetWeapon("destructible_car");
		}
	}
	return weapon;
}

/*
	Name: figureOutFriendlyFire
	Namespace: globallogic_player
	Checksum: 0xFD4E0E9D
	Offset: 0x53B8
	Size: 0x11
	Parameters: 1
	Flags: None
*/
function figureOutFriendlyFire(victim)
{
	return level.friendlyfire;
}

/*
	Name: isPlayerImmuneToKillstreak
	Namespace: globallogic_player
	Checksum: 0x94942CFE
	Offset: 0x53D8
	Size: 0x4D
	Parameters: 2
	Flags: None
*/
function isPlayerImmuneToKillstreak(eAttacker, weapon)
{
	if(level.hardcoreMode)
	{
		return 0;
	}
	if(!isdefined(eAttacker))
	{
		return 0;
	}
	if(self != eAttacker)
	{
		return 0;
	}
	return weapon.doNotDamageOwner;
}

/*
	Name: Callback_PlayerDamage
	Namespace: globallogic_player
	Checksum: 0xCF968BF7
	Offset: 0x5430
	Size: 0x1D8B
	Parameters: 13
	Flags: None
*/
function Callback_PlayerDamage(eInflictor, eAttacker, iDamage, iDFlags, sMeansOfDeath, weapon, vPoint, vDir, sHitLoc, vDamageOrigin, psOffsetTime, boneIndex, vSurfaceNormal)
{
	profilelog_begintiming(6, "ship");
	if(game["state"] == "postgame")
	{
		return;
	}
	if(self.sessionteam == "spectator")
	{
		return;
	}
	if(isdefined(self.canDoCombat) && !self.canDoCombat)
	{
		return;
	}
	if(self.scene_takedamage === 0)
	{
		return;
	}
	if(isdefined(self.var_b41cccf7) && self.var_b41cccf7)
	{
		return;
	}
	if(isdefined(self.b_teleport_invulnerability) && self.b_teleport_invulnerability)
	{
		return;
	}
	if(isdefined(eAttacker) && isPlayer(eAttacker) && isdefined(eAttacker.canDoCombat) && !eAttacker.canDoCombat)
	{
		return;
	}
	if(isdefined(level.hostMigrationTimer))
	{
		return;
	}
	if(sMeansOfDeath === "MOD_TRIGGER_HURT" && isdefined(eInflictor) && IsString(eInflictor.var_75dbd7))
	{
		if(eInflictor.var_75dbd7 != "none" && eInflictor.var_75dbd7 != "false")
		{
			hazard::do_damage(eInflictor.var_75dbd7, iDamage, eInflictor, self.var_8dcb3948);
			return;
		}
	}
	if(self laststand::player_is_in_laststand())
	{
		self notify("hash_b79afd4d", iDamage);
		return;
	}
	weaponName = weapon.name;
	if(weaponName == "ai_tank_drone_gun" || weaponName == "ai_tank_drone_rocket" && !level.hardcoreMode)
	{
		if(isdefined(eAttacker) && eAttacker == self)
		{
			if(isdefined(eInflictor) && isdefined(eInflictor.from_ai))
			{
				return;
			}
		}
		if(isdefined(eAttacker) && isdefined(eAttacker.owner) && eAttacker.owner == self)
		{
			return;
		}
	}
	if(weapon.isEmp)
	{
		if(self hasPerk("specialty_immuneemp"))
		{
			return;
		}
		self notify("emp_grenaded", eAttacker);
	}
	if(isdefined(self.overridePlayerDamage))
	{
		overridePlayerDamage = self.overridePlayerDamage;
	}
	else if(isdefined(level.overridePlayerDamage))
	{
		overridePlayerDamage = level.overridePlayerDamage;
	}
	if(isdefined(overridePlayerDamage))
	{
		modifiedDamage = self [[overridePlayerDamage]](eInflictor, eAttacker, iDamage, iDFlags, sMeansOfDeath, weapon, vPoint, vDir, sHitLoc, psOffsetTime, boneIndex);
		if(isdefined(modifiedDamage))
		{
			if(modifiedDamage <= 0)
			{
				return;
			}
			iDamage = modifiedDamage;
		}
	}
	/#
		Assert(isdefined(iDamage), "Dev Block strings are not supported");
	#/
	self callback::callback("hash_ab5ecf6c");
	if(isdefined(eAttacker))
	{
		iDamage = loadout::cac_modified_damage(self, eAttacker, iDamage, sMeansOfDeath, weapon, eInflictor, sHitLoc);
		if(isdefined(modifiedDamage))
		{
			if(modifiedDamage <= 0)
			{
				return;
			}
			iDamage = modifiedDamage;
		}
	}
	iDamage = custom_gamemodes_modified_damage(self, eAttacker, iDamage, sMeansOfDeath, weapon, eInflictor, sHitLoc);
	iDamage = Int(iDamage);
	self.iDFlags = iDFlags;
	self.iDFlagsTime = GetTime();
	eAttacker = figureOutAttacker(eAttacker);
	iDamage = cybercom::function_2b5f1af7(self, eAttacker, eInflictor, iDamage, weapon, sHitLoc, sMeansOfDeath);
	if(sMeansOfDeath != "MOD_FALLING")
	{
		iDamage = gameskill::adjust_damage_for_player_health(self, eAttacker, eInflictor, iDamage, weapon, sHitLoc, sMeansOfDeath);
	}
	iDamage = gameskill::adjust_melee_damage(self, eAttacker, eInflictor, iDamage, weapon, sHitLoc, sMeansOfDeath);
	iDamage = cybercom::function_5ad6b98d(eAttacker, self, iDamage);
	iDamage = Int(iDamage);
	PixBeginEvent("PlayerDamage flags/tweaks");
	if(!isdefined(vDir))
	{
		iDFlags = iDFlags | 4;
	}
	friendly = 0;
	if(self.health != self.maxhealth)
	{
		self notify("snd_pain_player", sMeansOfDeath);
	}
	if(isdefined(eInflictor) && isdefined(eInflictor.script_noteworthy))
	{
		if(eInflictor.script_noteworthy == "ragdoll_now")
		{
			sMeansOfDeath = "MOD_FALLING";
		}
		if(isdefined(level.overrideWeaponFunc))
		{
			weapon = [[level.overrideWeaponFunc]](weapon, eInflictor.script_noteworthy);
		}
	}
	if(globallogic_utils::isHeadShot(weapon, sHitLoc, sMeansOfDeath, eInflictor) && isPlayer(eAttacker))
	{
		sMeansOfDeath = "MOD_HEAD_SHOT";
	}
	if(level.onPlayerDamage != &globallogic::blank)
	{
		modifiedDamage = [[level.onPlayerDamage]](eInflictor, eAttacker, iDamage, iDFlags, sMeansOfDeath, weapon, vPoint, vDir, sHitLoc, psOffsetTime);
		if(isdefined(modifiedDamage))
		{
			if(modifiedDamage <= 0)
			{
				return;
			}
			iDamage = modifiedDamage;
		}
	}
	if(level.onlyHeadShots)
	{
		if(sMeansOfDeath == "MOD_PISTOL_BULLET" || sMeansOfDeath == "MOD_RIFLE_BULLET")
		{
			return;
		}
		else if(sMeansOfDeath == "MOD_HEAD_SHOT")
		{
			iDamage = 150;
		}
	}
	if(self player_is_occupant_invulnerable(sMeansOfDeath))
	{
		return;
	}
	if(isdefined(eAttacker) && isPlayer(eAttacker) && self.team != eAttacker.team)
	{
		self.lastAttackWeapon = weapon;
	}
	weapon = figureOutWeapon(weapon, eInflictor);
	PixEndEvent();
	if(isdefined(eAttacker) && isai(eAttacker))
	{
		if(self.team == eAttacker.team && sMeansOfDeath == "MOD_MELEE")
		{
			return;
		}
	}
	attackerIsHittingTeammate = isPlayer(eAttacker) && self util::IsEnemyPlayer(eAttacker) == 0;
	if(sHitLoc == "riotshield")
	{
		if(attackerIsHittingTeammate && level.friendlyfire == 0)
		{
			return;
		}
		if(sMeansOfDeath == "MOD_PISTOL_BULLET" || sMeansOfDeath == "MOD_RIFLE_BULLET" && !attackerIsHittingTeammate)
		{
			if(self.hasRiotShieldEquipped)
			{
				if(isPlayer(eAttacker))
				{
					eAttacker.lastAttackedShieldPlayer = self;
					eAttacker.lastAttackedShieldTime = GetTime();
				}
				previous_shield_damage = self.shieldDamageBlocked;
				self.shieldDamageBlocked = self.shieldDamageBlocked + iDamage;
				if(self.shieldDamageBlocked % 400 < previous_shield_damage % 400)
				{
					score_event = "shield_blocked_damage";
					if(self.shieldDamageBlocked > 2000)
					{
						score_event = "shield_blocked_damage_reduced";
					}
					if(isdefined(level.scoreInfo[score_event]["value"]))
					{
						self addweaponstat(level.weaponRiotshield, "score_from_blocked_damage", level.scoreInfo[score_event]["value"]);
					}
					thread scoreevents::processScoreEvent(score_event, self);
				}
			}
		}
		if(iDFlags & 32)
		{
			sHitLoc = "none";
			if(!iDFlags & 64)
			{
				iDamage = iDamage * 0;
			}
		}
		else if(iDFlags & 128)
		{
			if(isdefined(eInflictor) && isdefined(eInflictor.stuckToPlayer) && eInflictor.stuckToPlayer == self)
			{
				iDamage = 101;
			}
			sHitLoc = "none";
		}
		else
		{
			return;
		}
	}
	if(!iDFlags & 2048)
	{
		if(isdefined(eInflictor) && (sMeansOfDeath == "MOD_GAS" || loadout::isExplosiveDamage(sMeansOfDeath)))
		{
			if(eInflictor.classname == "grenade" || weaponName == "tabun_gas" && self.lastspawntime + 3500 > GetTime() && DistanceSquared(eInflictor.origin, self.lastSpawnPoint.origin) < 62500)
			{
				return;
			}
			if(self isPlayerImmuneToKillstreak(eAttacker, weapon))
			{
				return;
			}
			self.explosiveInfo = [];
			self.explosiveInfo["damageTime"] = GetTime();
			self.explosiveInfo["damageId"] = eInflictor GetEntityNumber();
			self.explosiveInfo["originalOwnerKill"] = 0;
			self.explosiveInfo["bulletPenetrationKill"] = 0;
			self.explosiveInfo["chainKill"] = 0;
			self.explosiveInfo["damageExplosiveKill"] = 0;
			self.explosiveInfo["chainKill"] = 0;
			self.explosiveInfo["cookedKill"] = 0;
			self.explosiveInfo["weapon"] = weapon;
			self.explosiveInfo["originalowner"] = eInflictor.originalowner;
			isFrag = weaponName == "frag_grenade";
			if(isdefined(eAttacker) && eAttacker != self)
			{
				if(isdefined(eAttacker) && isdefined(eInflictor.owner) && (weapon.name == "satchel_charge" || weapon.name == "claymore" || weapon.name == "bouncingbetty"))
				{
					self.explosiveInfo["originalOwnerKill"] = eInflictor.owner == self;
					self.explosiveInfo["damageExplosiveKill"] = isdefined(eInflictor.wasDamaged);
					self.explosiveInfo["chainKill"] = isdefined(eInflictor.wasChained);
					self.explosiveInfo["wasJustPlanted"] = isdefined(eInflictor.wasJustPlanted);
					self.explosiveInfo["bulletPenetrationKill"] = isdefined(eInflictor.wasDamagedFromBulletPenetration);
					self.explosiveInfo["cookedKill"] = 0;
				}
				if(isdefined(eInflictor) && isdefined(eInflictor.stuckToPlayer) && weapon.projExplosionType == "grenade")
				{
					self.explosiveInfo["stuckToPlayer"] = eInflictor.stuckToPlayer;
				}
				if(weapon.isStun)
				{
					self.lastStunnedBy = eAttacker;
					self.lastStunnedTime = self.iDFlagsTime;
				}
				if(isdefined(eAttacker.lastGrenadeSuicideTime) && eAttacker.lastGrenadeSuicideTime >= GetTime() - 50 && isFrag)
				{
					self.explosiveInfo["suicideGrenadeKill"] = 1;
				}
				else
				{
					self.explosiveInfo["suicideGrenadeKill"] = 0;
				}
			}
			if(isFrag)
			{
				self.explosiveInfo["cookedKill"] = isdefined(eInflictor.isCooked);
				self.explosiveInfo["throwbackKill"] = isdefined(eInflictor.threwBack);
			}
			if(isdefined(eAttacker) && isPlayer(eAttacker) && eAttacker != self)
			{
				self globallogic_score::setInflictorStat(eInflictor, eAttacker, weapon);
			}
		}
		if(sMeansOfDeath == "MOD_IMPACT" && isdefined(eAttacker) && isPlayer(eAttacker) && eAttacker != self)
		{
			if(weapon != level.weaponBallisticKnife)
			{
				self globallogic_score::setInflictorStat(eInflictor, eAttacker, weapon);
			}
			if(weapon.name == "hatchet" && isdefined(eInflictor))
			{
				self.explosiveInfo["projectile_bounced"] = isdefined(eInflictor.bounced);
			}
		}
		if(isPlayer(eAttacker))
		{
			eAttacker.pers["participation"]++;
		}
		prevHealthRatio = self.health / self.maxhealth;
		if(sMeansOfDeath == "MOD_PISTOL_BULLET" || sMeansOfDeath == "MOD_RIFLE_BULLET" || sMeansOfDeath == "MOD_PROJECTILE" || sMeansOfDeath == "MOD_GRENADE_SPLASH" || sMeansOfDeath == "MOD_PROJECTILE_SPLASH")
		{
			if(iDamage >= self.health && eAttacker != self && self.team != eAttacker.team)
			{
				var_535d0dae = self gameskill::player_eligible_for_death_invulnerability();
				if(var_535d0dae)
				{
					self setnormalhealth(2 / self.maxhealth);
					iDamage = 1;
				}
			}
		}
		if(weapon.parentWeaponName === "riotshield" && self != eAttacker && self.team != eAttacker.team)
		{
			Earthquake(0.25, 0.1, self.origin, 16, self);
		}
		if(level.teambased && IsSentient(eAttacker) && self != eAttacker && self.team == eAttacker.team)
		{
			pixmarker("BEGIN: PlayerDamage player");
			if(level.friendlyfire == 0)
			{
				if(weapon.forceDamageShellshockAndRumble)
				{
					self damageShellshockAndRumble(eAttacker, eInflictor, weapon, sMeansOfDeath, iDamage);
				}
				return;
			}
			else if(level.friendlyfire == 1)
			{
				if(iDamage < 1)
				{
					iDamage = 1;
				}
				if(level.friendlyFireDelay && level.friendlyFireDelayTime >= GetTime() - level.startTime - level.discardTime / 1000)
				{
					eAttacker.lastDamageWasFromEnemy = 0;
					eAttacker.friendlydamage = 1;
					eAttacker finishPlayerDamageWrapper(eInflictor, eAttacker, iDamage, iDFlags, sMeansOfDeath, weapon, vPoint, vDir, sHitLoc, vDamageOrigin, psOffsetTime, boneIndex, vSurfaceNormal);
					eAttacker.friendlydamage = undefined;
				}
				else
				{
					self.lastDamageWasFromEnemy = 0;
					self finishPlayerDamageWrapper(eInflictor, eAttacker, iDamage, iDFlags, sMeansOfDeath, weapon, vPoint, vDir, sHitLoc, vDamageOrigin, psOffsetTime, boneIndex, vSurfaceNormal);
				}
			}
			else if(level.friendlyfire == 2 && isalive(eAttacker))
			{
				iDamage = Int(iDamage * 0.5);
				if(iDamage < 1)
				{
					iDamage = 1;
				}
				eAttacker.lastDamageWasFromEnemy = 0;
				eAttacker.friendlydamage = 1;
				eAttacker finishPlayerDamageWrapper(eInflictor, eAttacker, iDamage, iDFlags, sMeansOfDeath, weapon, vPoint, vDir, sHitLoc, vDamageOrigin, psOffsetTime, boneIndex, vSurfaceNormal);
				eAttacker.friendlydamage = undefined;
			}
			else if(level.friendlyfire == 3 && isalive(eAttacker))
			{
				iDamage = Int(iDamage * 0.5);
				if(iDamage < 1)
				{
					iDamage = 1;
				}
				self.lastDamageWasFromEnemy = 0;
				eAttacker.lastDamageWasFromEnemy = 0;
				self finishPlayerDamageWrapper(eInflictor, eAttacker, iDamage, iDFlags, sMeansOfDeath, weapon, vPoint, vDir, sHitLoc, vDamageOrigin, psOffsetTime, boneIndex, vSurfaceNormal);
				eAttacker.friendlydamage = 1;
				eAttacker finishPlayerDamageWrapper(eInflictor, eAttacker, iDamage, iDFlags, sMeansOfDeath, weapon, vPoint, vDir, sHitLoc, vDamageOrigin, psOffsetTime, boneIndex, vSurfaceNormal);
				eAttacker.friendlydamage = undefined;
			}
			friendly = 1;
			pixmarker("END: PlayerDamage player");
		}
		else if(iDamage < 1)
		{
			iDamage = 1;
		}
		giveAttackerAndInflictorOwnerAssist(eAttacker, eInflictor, iDamage, sMeansOfDeath, weapon);
		if(isdefined(eAttacker))
		{
			level.lastLegitimateAttacker = eAttacker;
		}
		if(sMeansOfDeath == "MOD_GRENADE" || sMeansOfDeath == "MOD_GRENADE_SPLASH" && isdefined(eInflictor) && isdefined(eInflictor.isCooked))
		{
			self.wasCooked = GetTime();
		}
		else
		{
			self.wasCooked = undefined;
		}
		self.lastDamageWasFromEnemy = isdefined(eAttacker) && eAttacker != self;
		if(self.lastDamageWasFromEnemy)
		{
			if(isPlayer(eAttacker))
			{
				if(isdefined(eAttacker.damagedPlayers[self.clientid]) == 0)
				{
					eAttacker.damagedPlayers[self.clientid] = spawnstruct();
				}
				eAttacker.damagedPlayers[self.clientid].time = GetTime();
				eAttacker.damagedPlayers[self.clientid].entity = self;
			}
		}
		self finishPlayerDamageWrapper(eInflictor, eAttacker, iDamage, iDFlags, sMeansOfDeath, weapon, vPoint, vDir, sHitLoc, vDamageOrigin, psOffsetTime, boneIndex, vSurfaceNormal);
		if(isdefined(eAttacker) && isPlayer(eAttacker) && eAttacker != self)
		{
			if(damagefeedback::doDamageFeedback(weapon, eInflictor, iDamage, sMeansOfDeath))
			{
				if(iDamage > 0)
				{
					if(self.health > 0)
					{
						perkFeedback = doPerkFeedBack(self, weapon, sMeansOfDeath, eInflictor);
					}
					eAttacker thread damagefeedback::update(sMeansOfDeath, eInflictor, perkFeedback);
				}
			}
		}
		if(SessionModeIsCampaignZombiesGame() && isdefined(level.var_652674d2))
		{
			self [[level.var_652674d2]](weapon, eAttacker, iDamage, sMeansOfDeath);
		}
		self.hasDoneCombat = 1;
	}
	PixBeginEvent("PlayerDamage log");
	/#
		if(GetDvarInt("Dev Block strings are not supported"))
		{
			if(isdefined(eAttacker.clientid))
			{
				println("Dev Block strings are not supported" + self GetEntityNumber() + "Dev Block strings are not supported" + self.health + "Dev Block strings are not supported" + eAttacker.clientid + "Dev Block strings are not supported" + isPlayer(eInflictor) + "Dev Block strings are not supported" + iDamage + "Dev Block strings are not supported" + sHitLoc);
			}
			else
			{
				println("Dev Block strings are not supported" + self GetEntityNumber() + "Dev Block strings are not supported" + self.health + "Dev Block strings are not supported" + eAttacker GetEntityNumber() + "Dev Block strings are not supported" + isPlayer(eInflictor) + "Dev Block strings are not supported" + iDamage + "Dev Block strings are not supported" + sHitLoc);
			}
		}
	#/
	if(self.sessionstate != "dead")
	{
		lpselfnum = self GetEntityNumber();
		lpselfname = self.name;
		lpselfteam = self.team;
		lpselfGuid = self getGuid();
		lpattackerteam = "";
		var_f23089ea = self laststand::player_is_in_laststand();
		if(isPlayer(eAttacker))
		{
			lpattacknum = eAttacker GetEntityNumber();
			lpattackGuid = eAttacker getGuid();
			lpattackname = eAttacker.name;
			lpattackerteam = eAttacker.team;
		}
		else
		{
			var_90a0048 = "world";
			lpattackerteam = "world";
			lpattacknum = -1;
			lpattackGuid = "";
			lpattackname = "";
		}
		bb::logdamage(eAttacker, self, weapon, iDamage, sMeansOfDeath, sHitLoc, 0, var_f23089ea);
		logPrint("D;" + lpselfGuid + ";" + lpselfnum + ";" + lpselfteam + ";" + lpselfname + ";" + lpattackGuid + ";" + lpattacknum + ";" + lpattackerteam + ";" + lpattackname + ";" + weapon.name + ";" + iDamage + ";" + sMeansOfDeath + ";" + sHitLoc + "
");
	}
	PixEndEvent();
	profilelog_endtiming(6, "gs=" + game["state"] + " zom=" + SessionModeIsZombiesGame());
}

/*
	Name: player_is_occupant_invulnerable
	Namespace: globallogic_player
	Checksum: 0xF03A05A0
	Offset: 0x71C8
	Size: 0x73
	Parameters: 1
	Flags: None
*/
function player_is_occupant_invulnerable(sMeansOfDeath)
{
	if(self IsRemoteControlling())
	{
		return 0;
	}
	if(!isdefined(level.vehicle_drivers_are_invulnerable))
	{
		level.vehicle_drivers_are_invulnerable = 0;
	}
	invulnerable = level.vehicle_drivers_are_invulnerable && self vehicle::player_is_driver();
	return invulnerable;
}

/*
	Name: resetAttackerList
	Namespace: globallogic_player
	Checksum: 0xA6C42DE4
	Offset: 0x7248
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function resetAttackerList()
{
	self.Attackers = [];
	self.attackerData = [];
	self.attackerDamage = [];
	self.firstTimeDamaged = 0;
}

/*
	Name: doPerkFeedBack
	Namespace: globallogic_player
	Checksum: 0x9B616641
	Offset: 0x7288
	Size: 0x137
	Parameters: 4
	Flags: None
*/
function doPerkFeedBack(player, weapon, sMeansOfDeath, eInflictor)
{
	perkFeedback = undefined;
	hasTacticalMask = loadout::hasTacticalMask(player);
	hasFlakJacket = player hasPerk("specialty_flakjacket");
	isExplosiveDamage = loadout::isExplosiveDamage(sMeansOfDeath);
	isFlashOrStunDamage = weapon_utils::isFlashOrStunDamage(weapon, sMeansOfDeath);
	if(isFlashOrStunDamage && hasTacticalMask)
	{
		perkFeedback = "tacticalMask";
	}
	else if(isExplosiveDamage && hasFlakJacket && !weapon.ignoresFlakJacket && !isAIKillstreakDamage(weapon, eInflictor))
	{
		perkFeedback = "flakjacket";
	}
	return perkFeedback;
}

/*
	Name: isAIKillstreakDamage
	Namespace: globallogic_player
	Checksum: 0x84A15E51
	Offset: 0x73C8
	Size: 0x5B
	Parameters: 2
	Flags: None
*/
function isAIKillstreakDamage(weapon, eInflictor)
{
	if(weapon.isAIKillstreakDamage)
	{
		if(weapon.name != "ai_tank_drone_rocket" || isdefined(eInflictor.firedByAI))
		{
			return 1;
		}
	}
	return 0;
}

/*
	Name: finishPlayerDamageWrapper
	Namespace: globallogic_player
	Checksum: 0x9A23BEA7
	Offset: 0x7430
	Size: 0x25B
	Parameters: 13
	Flags: None
*/
function finishPlayerDamageWrapper(eInflictor, eAttacker, iDamage, iDFlags, sMeansOfDeath, weapon, vPoint, vDir, sHitLoc, vDamageOrigin, psOffsetTime, boneIndex, vSurfaceNormal)
{
	PixBeginEvent("finishPlayerDamageWrapper");
	if(!level.console && iDFlags & 8 && isPlayer(eAttacker))
	{
		/#
			println("Dev Block strings are not supported" + self GetEntityNumber() + "Dev Block strings are not supported" + self.health + "Dev Block strings are not supported" + eAttacker.clientid + "Dev Block strings are not supported" + isPlayer(eInflictor) + "Dev Block strings are not supported" + iDamage + "Dev Block strings are not supported" + sHitLoc);
		#/
		eAttacker AddPlayerStat("penetration_shots", 1);
	}
	if(GetDvarString("scr_csmode") != "")
	{
		self shellshock("damage_mp", 0.2);
	}
	self damageShellshockAndRumble(eAttacker, eInflictor, weapon, sMeansOfDeath, iDamage);
	self ability_power::power_loss_event_took_damage(eAttacker, eInflictor, weapon, sMeansOfDeath, iDamage);
	self finishPlayerDamage(eInflictor, eAttacker, iDamage, iDFlags, sMeansOfDeath, weapon, vPoint, vDir, sHitLoc, vDamageOrigin, psOffsetTime, boneIndex, vSurfaceNormal);
	PixEndEvent();
}

/*
	Name: allowedAssistWeapon
	Namespace: globallogic_player
	Checksum: 0x7F8E66A8
	Offset: 0x7698
	Size: 0xD
	Parameters: 1
	Flags: None
*/
function allowedAssistWeapon(weapon)
{
	return 0;
}

/*
	Name: PlayerKilled_Killstreaks
	Namespace: globallogic_player
	Checksum: 0x575A1958
	Offset: 0x76B0
	Size: 0x309
	Parameters: 2
	Flags: None
*/
function PlayerKilled_Killstreaks(attacker, weapon)
{
	if(!isdefined(self.switching_teams))
	{
		if(isPlayer(attacker) && level.teambased && attacker != self && self.team == attacker.team)
		{
			self.pers["cur_kill_streak"] = 0;
			self.pers["cur_total_kill_streak"] = 0;
			self.pers["totalKillstreakCount"] = 0;
			self.pers["killstreaksEarnedThisKillstreak"] = 0;
			self setplayercurrentstreak(0);
		}
		else
		{
			self globallogic_score::incPersStat("deaths", 1, 1, 1);
			self.deaths = self globallogic_score::getPersStat("deaths");
			self UpdateStatRatio("kdratio", "kills", "deaths");
			if(self.pers["cur_kill_streak"] > self.pers["best_kill_streak"])
			{
				self.pers["best_kill_streak"] = self.pers["cur_kill_streak"];
			}
			self.pers["kill_streak_before_death"] = self.pers["cur_kill_streak"];
			self.pers["cur_kill_streak"] = 0;
			self.pers["cur_total_kill_streak"] = 0;
			self.pers["totalKillstreakCount"] = 0;
			self.pers["killstreaksEarnedThisKillstreak"] = 0;
			self setplayercurrentstreak(0);
			self.cur_death_streak++;
			if(self.cur_death_streak > self.death_streak)
			{
				if(level.rankedMatch && !level.disableStatTracking)
				{
					self SetDStat("HighestStats", "death_streak", self.cur_death_streak);
				}
				self.death_streak = self.cur_death_streak;
			}
			if(self.cur_death_streak >= GetDvarInt("perk_deathStreakCountRequired"))
			{
				self enabledeathstreak();
			}
		}
	}
	else
	{
		self.pers["totalKillstreakCount"] = 0;
		self.pers["killstreaksEarnedThisKillstreak"] = 0;
	}
}

/*
	Name: PlayerKilled_WeaponStats
	Namespace: globallogic_player
	Checksum: 0xE3A9073B
	Offset: 0x79C8
	Size: 0x253
	Parameters: 6
	Flags: None
*/
function PlayerKilled_WeaponStats(attacker, weapon, sMeansOfDeath, wasInLastStand, lastWeaponBeforeDroppingIntoLastStand, inflictor)
{
	if(isPlayer(attacker) && attacker != self && (!level.teambased || (level.teambased && self.team != attacker.team)))
	{
		self addweaponstat(weapon, "deaths", 1);
		if(wasInLastStand && isdefined(lastWeaponBeforeDroppingIntoLastStand))
		{
			victim_weapon = lastWeaponBeforeDroppingIntoLastStand;
		}
		else
		{
			victim_weapon = self.lastdroppableweapon;
		}
		if(isdefined(victim_weapon))
		{
			self addweaponstat(victim_weapon, "deathsDuringUse", 1);
		}
		if(sMeansOfDeath != "MOD_FALLING")
		{
			if(weapon.name == "explosive_bolt" && isdefined(inflictor) && isdefined(inflictor.ownerWeaponAtLaunch) && inflictor.ownerAdsAtLaunch)
			{
				attacker addweaponstat(inflictor.ownerWeaponAtLaunch, "kills", 1, attacker.class_num, 0, 1);
			}
			else
			{
				attacker addweaponstat(weapon, "kills", 1, attacker.class_num);
			}
		}
		if(sMeansOfDeath == "MOD_HEAD_SHOT")
		{
			attacker addweaponstat(weapon, "headshots", 1);
		}
		if(sMeansOfDeath == "MOD_PROJECTILE")
		{
			attacker addweaponstat(weapon, "direct_hit_kills", 1);
		}
	}
}

/*
	Name: PlayerKilled_Obituary
	Namespace: globallogic_player
	Checksum: 0x7D4921C5
	Offset: 0x7C28
	Size: 0x223
	Parameters: 4
	Flags: None
*/
function PlayerKilled_Obituary(attacker, eInflictor, weapon, sMeansOfDeath)
{
	if(!isPlayer(attacker) || self util::IsEnemyPlayer(attacker) == 0)
	{
		level notify("reset_obituary_count");
		level.lastObituaryPlayerCount = 0;
		level.lastObituaryPlayer = undefined;
	}
	else if(isdefined(level.lastObituaryPlayer) && level.lastObituaryPlayer == attacker)
	{
		level.lastObituaryPlayerCount++;
	}
	else
	{
		level notify("reset_obituary_count");
		level.lastObituaryPlayer = attacker;
		level.lastObituaryPlayerCount = 1;
	}
	level thread scoreevents::decrementLastObituaryPlayerCountAfterFade();
	if(level.lastObituaryPlayerCount >= 4)
	{
		level notify("reset_obituary_count");
		level.lastObituaryPlayerCount = 0;
		level.lastObituaryPlayer = undefined;
		self thread scoreevents::uninterruptedObitFeedKills(attacker, weapon);
	}
	if(level.teambased && isdefined(attacker.pers) && self.team == attacker.team && sMeansOfDeath == "MOD_GRENADE" && level.friendlyfire == 0)
	{
		obituary(self, self, weapon, sMeansOfDeath);
		demo::bookmark("kill", GetTime(), self, self, 0, eInflictor);
	}
	else
	{
		obituary(self, attacker, weapon, sMeansOfDeath);
		demo::bookmark("kill", GetTime(), self, attacker, 0, eInflictor);
	}
}

/*
	Name: PlayerKilled_Suicide
	Namespace: globallogic_player
	Checksum: 0x657BC51D
	Offset: 0x7E58
	Size: 0x33F
	Parameters: 5
	Flags: None
*/
function PlayerKilled_Suicide(eInflictor, attacker, sMeansOfDeath, weapon, sHitLoc)
{
	awardAssists = 0;
	if(isdefined(self.switching_teams))
	{
		if(!level.teambased && (isdefined(level.teams[self.leaving_team]) && isdefined(level.teams[self.joining_team]) && level.teams[self.leaving_team] != level.teams[self.joining_team]))
		{
			playerCounts = self teams::count_players();
			playerCounts[self.leaving_team]--;
			playerCounts[self.joining_team]++;
			if(playerCounts[self.joining_team] - playerCounts[self.leaving_team] > 1)
			{
				thread scoreevents::processScoreEvent("suicide", self);
				self thread rank::giveRankXP("suicide");
				self globallogic_score::incPersStat("suicides", 1);
				self.suicides = self globallogic_score::getPersStat("suicides");
			}
		}
	}
	else
	{
		thread scoreevents::processScoreEvent("suicide", self);
		self globallogic_score::incPersStat("suicides", 1);
		self.suicides = self globallogic_score::getPersStat("suicides");
		if(sMeansOfDeath == "MOD_SUICIDE" && sHitLoc == "none" && self.throwingGrenade)
		{
			self.lastGrenadeSuicideTime = GetTime();
		}
		if(level.maxSuicidesBeforeKick > 0 && level.maxSuicidesBeforeKick <= self.suicides)
		{
			self notify("teamKillKicked");
			self SuicideKick();
		}
		awardAssists = 1;
		self.suicide = 1;
	}
	if(isdefined(self.friendlydamage))
	{
		self iprintln(&"MP_FRIENDLY_FIRE_WILL_NOT");
		if(level.teamKillPointLoss)
		{
			scoreSub = self [[level.getTeamKillScore]](eInflictor, attacker, sMeansOfDeath, weapon);
			score = globallogic_score::_getPlayerScore(attacker) - scoreSub;
			if(score < 0)
			{
				score = 0;
			}
			globallogic_score::_setPlayerScore(attacker, score);
		}
	}
	return awardAssists;
}

/*
	Name: PlayerKilled_TeamKill
	Namespace: globallogic_player
	Checksum: 0xC61CF281
	Offset: 0x81A0
	Size: 0x2BB
	Parameters: 5
	Flags: None
*/
function PlayerKilled_TeamKill(eInflictor, attacker, sMeansOfDeath, weapon, sHitLoc)
{
	thread scoreevents::processScoreEvent("team_kill", attacker);
	self.teamKilled = 1;
	if(!IgnoreTeamKills(weapon, sMeansOfDeath))
	{
		teamkill_penalty = self [[level.getTeamKillPenalty]](eInflictor, attacker, sMeansOfDeath, weapon);
		attacker globallogic_score::incPersStat("teamkills_nostats", teamkill_penalty, 0);
		attacker globallogic_score::incPersStat("teamkills", 1);
		attacker.teamkillsThisRound++;
		if(level.teamKillPointLoss)
		{
			scoreSub = self [[level.getTeamKillScore]](eInflictor, attacker, sMeansOfDeath, weapon);
			score = globallogic_score::_getPlayerScore(attacker) - scoreSub;
			if(score < 0)
			{
				score = 0;
			}
			globallogic_score::_setPlayerScore(attacker, score);
		}
		if(globallogic_utils::getTimePassed() < 5000)
		{
			teamKillDelay = 1;
		}
		else if(attacker.pers["teamkills_nostats"] > 1 && globallogic_utils::getTimePassed() < 8000 + attacker.pers["teamkills_nostats"] * 1000)
		{
			teamKillDelay = 1;
		}
		else
		{
			teamKillDelay = attacker teamKillDelay();
		}
		if(teamKillDelay > 0)
		{
			attacker.teamKillPunish = 1;
			attacker thread wait_and_suicide();
			if(attacker ShouldTeamKillKick(teamKillDelay))
			{
				attacker notify("teamKillKicked");
				attacker TeamKillKick();
			}
			attacker thread reduceTeamKillsOverTime();
		}
	}
}

/*
	Name: wait_and_suicide
	Namespace: globallogic_player
	Checksum: 0x5987C612
	Offset: 0x8468
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function wait_and_suicide()
{
	self endon("disconnect");
	self util::freeze_player_controls(1);
	wait(0.25);
	self suicide();
}

/*
	Name: PlayerKilled_AwardAssists
	Namespace: globallogic_player
	Checksum: 0x43A42D3E
	Offset: 0x84B8
	Size: 0x1A3
	Parameters: 4
	Flags: None
*/
function PlayerKilled_AwardAssists(eInflictor, attacker, weapon, lpattackteam)
{
	PixBeginEvent("PlayerKilled assists");
	if(isdefined(self.Attackers))
	{
		for(j = 0; j < self.Attackers.size; j++)
		{
			player = self.Attackers[j];
			if(!isdefined(player))
			{
				continue;
			}
			if(player == attacker)
			{
				continue;
			}
			if(player.team != lpattackteam)
			{
				continue;
			}
			damage_done = self.attackerDamage[player.clientid].damage;
			player thread globallogic_score::processAssist(self, damage_done, self.attackerDamage[player.clientid].weapon);
		}
	}
	else if(isdefined(self.lastAttackedShieldPlayer) && isdefined(self.lastAttackedShieldTime) && self.lastAttackedShieldPlayer != attacker)
	{
		if(GetTime() - self.lastAttackedShieldTime < 4000)
		{
			self.lastAttackedShieldPlayer thread globallogic_score::processShieldAssist(self);
		}
	}
	PixEndEvent();
}

/*
	Name: PlayerKilled_Kill
	Namespace: globallogic_player
	Checksum: 0xE8A9F810
	Offset: 0x8668
	Size: 0x73B
	Parameters: 5
	Flags: None
*/
function PlayerKilled_Kill(eInflictor, attacker, sMeansOfDeath, weapon, sHitLoc)
{
	globallogic_score::incTotalKills(attacker.team);
	attacker thread globallogic_score::giveKillStats(sMeansOfDeath, weapon, self);
	if(isalive(attacker))
	{
		PixBeginEvent("killstreak");
		if(!isdefined(eInflictor) || !isdefined(eInflictor.requiredDeathCount) || attacker.deathCount == eInflictor.requiredDeathCount)
		{
			attacker.pers["cur_total_kill_streak"]++;
			attacker setplayercurrentstreak(attacker.pers["cur_total_kill_streak"]);
			if(isdefined(level.killstreaks))
			{
				attacker.pers["cur_kill_streak"]++;
				if(attacker.pers["cur_kill_streak"] >= 2)
				{
					if(attacker.pers["cur_kill_streak"] == 10)
					{
						attacker challenges::killstreakTen();
					}
					if(attacker.pers["cur_kill_streak"] <= 30)
					{
						scoreevents::processScoreEvent("killstreak_" + attacker.pers["cur_kill_streak"], attacker, self, weapon);
					}
					else
					{
						scoreevents::processScoreEvent("killstreak_more_than_30", attacker, self, weapon);
					}
				}
			}
		}
		PixEndEvent();
	}
	if(attacker.pers["cur_kill_streak"] > attacker.kill_streak)
	{
		if(level.rankedMatch && !level.disableStatTracking)
		{
			attacker SetDStat("HighestStats", "kill_streak", attacker.pers["totalKillstreakCount"]);
		}
		attacker.kill_streak = attacker.pers["cur_kill_streak"];
	}
	if(attacker.pers["cur_kill_streak"] > attacker.gametype_kill_streak)
	{
		attacker persistence::stat_set_with_gametype("kill_streak", attacker.pers["cur_kill_streak"]);
		attacker.gametype_kill_streak = attacker.pers["cur_kill_streak"];
	}
	if(sMeansOfDeath == "MOD_MELEE" || sMeansOfDeath == "MOD_MELEE_ASSASSINATE" && level.gametype == "gun")
	{
	}
	else
	{
		scoreevents::processScoreEvent("kill", attacker, self, weapon);
	}
	if(sMeansOfDeath == "MOD_HEAD_SHOT")
	{
		scoreevents::processScoreEvent("headshot", attacker, self, weapon);
	}
	else if(sMeansOfDeath == "MOD_MELEE" || sMeansOfDeath == "MOD_MELEE_ASSASSINATE")
	{
		if(weapon.isRiotShield)
		{
			scoreevents::processScoreEvent("melee_kill_with_riot_shield", attacker, self, weapon);
			if(isdefined(attacker.class_num))
			{
				primaryweaponnum = attacker GetLoadoutItem(attacker.class_num, "primary");
				secondaryweaponnum = attacker GetLoadoutItem(attacker.class_num, "secondary");
				if(primaryweaponnum && level.tbl_weaponIDs[primaryweaponnum]["reference"] == "riotshield" && !secondaryweaponnum || (secondaryweaponnum && level.tbl_weaponIDs[secondaryweaponnum]["reference"] == "riotshield" && !primaryweaponnum))
				{
					attacker addweaponstat(weapon, "NoLethalKills", 1);
				}
			}
		}
		else
		{
			scoreevents::processScoreEvent("melee_kill", attacker, self, weapon);
		}
	}
	attacker thread globallogic_score::trackAttackerKill(self.name, self.pers["rank"], self.pers["rankxp"], self.pers["prestige"], self getXuid());
	attackerName = attacker.name;
	self thread globallogic_score::trackAttackeeDeath(attackerName, attacker.pers["rank"], attacker.pers["rankxp"], attacker.pers["prestige"], attacker getXuid());
	self thread Medals::setLastKilledBy(attacker);
	attacker thread globallogic_score::incKillstreakTracker(weapon);
	if(level.teambased && attacker.team != "spectator")
	{
		globallogic_score::giveTeamScore("kill", attacker.team, attacker, self);
	}
	scoreSub = level.deathPointLoss;
	if(scoreSub != 0)
	{
		globallogic_score::_setPlayerScore(self, globallogic_score::_getPlayerScore(self) - scoreSub);
	}
	level thread playKillBattleChatter(attacker, weapon, self);
}

/*
	Name: Callback_PlayerKilled
	Namespace: globallogic_player
	Checksum: 0x1021CFE6
	Offset: 0x8DB0
	Size: 0x1E11
	Parameters: 9
	Flags: None
*/
function Callback_PlayerKilled(eInflictor, attacker, iDamage, sMeansOfDeath, weapon, vDir, sHitLoc, psOffsetTime, deathAnimDuration)
{
	profilelog_begintiming(7, "ship");
	self endon("spawned");
	self notify("killed_player");
	self callback::callback("hash_bc435202");
	self flagsys::clear("loadout_given");
	if(self.sessionteam == "spectator")
	{
		return;
	}
	if(game["state"] == "postgame")
	{
		return;
	}
	self needsRevive(0);
	if(isdefined(self.burning) && self.burning == 1)
	{
		self setburn(0);
	}
	self.suicide = 0;
	self.teamKilled = 0;
	self.meleeAttackers = undefined;
	if(isdefined(level.takeLivesOnDeath) && level.takeLivesOnDeath == 1)
	{
		if(self.pers["lives"])
		{
			self.pers["lives"]--;
			if(self.pers["lives"] == 0)
			{
				level notify("player_eliminated");
				self notify("player_eliminated");
			}
		}
	}
	weapon = updateWeapon(eInflictor, weapon);
	PixBeginEvent("PlayerKilled pre constants");
	wasInLastStand = 0;
	deathTimeOffset = 0;
	lastWeaponBeforeDroppingIntoLastStand = undefined;
	attackerStance = undefined;
	self.lastStandThisLife = undefined;
	self.vAttackerOrigin = undefined;
	if(isdefined(self.useLastStandParams))
	{
		self.useLastStandParams = undefined;
		/#
			Assert(isdefined(self.lastStandParams));
		#/
		if(!level.teambased || (!isdefined(attacker) || !isPlayer(attacker) || attacker.team != self.team || attacker == self))
		{
			eInflictor = self.lastStandParams.eInflictor;
			attacker = self.lastStandParams.attacker;
			attackerStance = self.lastStandParams.attackerStance;
			iDamage = self.lastStandParams.iDamage;
			sMeansOfDeath = self.lastStandParams.sMeansOfDeath;
			weapon = self.lastStandParams.sWeapon;
			vDir = self.lastStandParams.vDir;
			sHitLoc = self.lastStandParams.sHitLoc;
			self.vAttackerOrigin = self.lastStandParams.vAttackerOrigin;
			deathTimeOffset = GetTime() - self.lastStandParams.lastStandStartTime / 1000;
			if(isdefined(self.previousPrimary))
			{
				wasInLastStand = 1;
				lastWeaponBeforeDroppingIntoLastStand = self.previousPrimary;
			}
		}
		self.lastStandParams = undefined;
	}
	bestPlayer = undefined;
	bestPlayerMeansOfDeath = undefined;
	obituaryMeansOfDeath = undefined;
	bestPlayerWeapon = undefined;
	obituaryWeapon = weapon;
	assistedSuicide = 0;
	if(!isdefined(attacker) || attacker.classname == "trigger_hurt" || attacker.classname == "worldspawn" || (isdefined(attacker.isMagicBullet) && attacker.isMagicBullet == 1) || attacker == self && isdefined(self.Attackers))
	{
		if(!isdefined(bestPlayer))
		{
			for(i = 0; i < self.Attackers.size; i++)
			{
				player = self.Attackers[i];
				if(!isdefined(player))
				{
					continue;
				}
				if(!isdefined(self.attackerDamage[player.clientid]) || !isdefined(self.attackerDamage[player.clientid].damage))
				{
					continue;
				}
				if(player == self || (level.teambased && player.team == self.team))
				{
					continue;
				}
				if(self.attackerDamage[player.clientid].lasttimedamaged + 2500 < GetTime())
				{
					continue;
				}
				if(!allowedAssistWeapon(self.attackerDamage[player.clientid].weapon))
				{
					continue;
				}
				if(self.attackerDamage[player.clientid].damage > 1 && !isdefined(bestPlayer))
				{
					bestPlayer = player;
					bestPlayerMeansOfDeath = self.attackerDamage[player.clientid].meansOfDeath;
					bestPlayerWeapon = self.attackerDamage[player.clientid].weapon;
					continue;
				}
				if(isdefined(bestPlayer) && self.attackerDamage[player.clientid].damage > self.attackerDamage[bestPlayer.clientid].damage)
				{
					bestPlayer = player;
					bestPlayerMeansOfDeath = self.attackerDamage[player.clientid].meansOfDeath;
					bestPlayerWeapon = self.attackerDamage[player.clientid].weapon;
				}
			}
		}
		else if(isdefined(bestPlayer))
		{
			scoreevents::processScoreEvent("assisted_suicide", bestPlayer, self, weapon);
			self RecordKillModifier("assistedsuicide");
			assistedSuicide = 1;
		}
	}
	if(isdefined(bestPlayer))
	{
		attacker = bestPlayer;
		obituaryMeansOfDeath = bestPlayerMeansOfDeath;
		obituaryWeapon = bestPlayerWeapon;
		if(isdefined(bestPlayerWeapon))
		{
			weapon = bestPlayerWeapon;
		}
	}
	if(isPlayer(attacker))
	{
		attacker.damagedPlayers[self.clientid] = undefined;
	}
	self.deathtime = GetTime();
	attacker = updateAttacker(attacker, weapon);
	eInflictor = updateInflictor(eInflictor);
	sMeansOfDeath = self PlayerKilled_UpdateMeansOfDeath(attacker, eInflictor, weapon, sMeansOfDeath, sHitLoc);
	if(!isdefined(obituaryMeansOfDeath))
	{
		obituaryMeansOfDeath = sMeansOfDeath;
	}
	if(isdefined(self.hasRiotShieldEquipped) && self.hasRiotShieldEquipped == 1)
	{
		self DetachShieldModel(level.carriedShieldModel, "tag_weapon_left");
		self.hasRiotShield = 0;
		self.hasRiotShieldEquipped = 0;
	}
	self thread updateGlobalBotKilledCounter();
	self PlayerKilled_WeaponStats(attacker, weapon, sMeansOfDeath, wasInLastStand, lastWeaponBeforeDroppingIntoLastStand, eInflictor);
	self PlayerKilled_Obituary(attacker, eInflictor, obituaryWeapon, obituaryMeansOfDeath);
	spawnlogic::death_occured(self, attacker);
	self.sessionstate = "dead";
	self.statusicon = "hud_status_dead";
	self.pers["weapon"] = undefined;
	self.killedPlayersCurrent = [];
	self.deathCount++;
	/#
		println("Dev Block strings are not supported" + self.clientid + "Dev Block strings are not supported" + self.deathCount);
	#/
	self PlayerKilled_Killstreaks(attacker, weapon);
	lpselfnum = self GetEntityNumber();
	lpselfname = self.name;
	lpattackGuid = "";
	lpattackname = "";
	lpselfteam = self.team;
	lpselfGuid = self getGuid();
	lpattackteam = "";
	lpattacknum = -1;
	awardAssists = 0;
	wasTeamKill = 0;
	wasSuicide = 0;
	PixEndEvent();
	scoreevents::processScoreEvent("death", self, self, weapon);
	self.pers["resetMomentumOnSpawn"] = 1;
	if(isPlayer(attacker))
	{
		lpattackGuid = attacker getGuid();
		lpattackname = attacker.name;
		lpattackteam = attacker.team;
		if(attacker == self || assistedSuicide == 1)
		{
			wasSuicide = 1;
			awardAssists = self PlayerKilled_Suicide(eInflictor, attacker, sMeansOfDeath, weapon, sHitLoc);
		}
		else
		{
			PixBeginEvent("PlayerKilled attacker");
			lpattacknum = attacker GetEntityNumber();
			if(level.teambased && self.team == attacker.team && sMeansOfDeath == "MOD_GRENADE" && level.friendlyfire == 0)
			{
			}
			else if(level.teambased && self.team == attacker.team)
			{
				wasTeamKill = 1;
				self PlayerKilled_TeamKill(eInflictor, attacker, sMeansOfDeath, weapon, sHitLoc);
			}
			else
			{
				self PlayerKilled_Kill(eInflictor, attacker, sMeansOfDeath, weapon, sHitLoc);
				if(level.teambased)
				{
					awardAssists = 1;
				}
			}
			PixEndEvent();
		}
	}
	else if(isdefined(attacker) && (attacker.classname == "trigger_hurt" || attacker.classname == "worldspawn"))
	{
		lpattacknum = -1;
		lpattackGuid = "";
		lpattackname = "";
		lpattackteam = "world";
		thread scoreevents::processScoreEvent("suicide", self);
		self globallogic_score::incPersStat("suicides", 1);
		self.suicides = self globallogic_score::getPersStat("suicides");
		self.suicide = 1;
		awardAssists = 1;
		if(level.maxSuicidesBeforeKick > 0 && level.maxSuicidesBeforeKick <= self.suicides)
		{
			self notify("teamKillKicked");
			self SuicideKick();
		}
	}
	else
	{
		lpattacknum = -1;
		lpattackGuid = "";
		lpattackname = "";
		lpattackteam = "world";
		wasSuicide = 1;
		if(isdefined(eInflictor) && isdefined(eInflictor.killCamEnt))
		{
			lpattacknum = self GetEntityNumber();
			wasSuicide = 0;
		}
		if(isdefined(attacker) && isdefined(attacker.team) && isdefined(level.teams[attacker.team]))
		{
			if(attacker.team != self.team)
			{
				if(level.teambased)
				{
					globallogic_score::giveTeamScore("kill", attacker.team, attacker, self);
				}
				wasSuicide = 0;
			}
		}
		awardAssists = 1;
	}
	if(!level.inGracePeriod)
	{
		if(sMeansOfDeath != "MOD_GRENADE" && sMeansOfDeath != "MOD_GRENADE_SPLASH" && sMeansOfDeath != "MOD_EXPLOSIVE" && sMeansOfDeath != "MOD_EXPLOSIVE_SPLASH" && sMeansOfDeath != "MOD_PROJECTILE_SPLASH")
		{
			self weapons::drop_scavenger_for_death(attacker);
		}
		if(!wasTeamKill && !wasSuicide)
		{
			self weapons::drop_for_death(attacker, weapon, sMeansOfDeath);
		}
	}
	if(SessionModeIsZombiesGame())
	{
		awardAssists = 0;
	}
	if(awardAssists)
	{
		self PlayerKilled_AwardAssists(eInflictor, attacker, weapon, lpattackteam);
	}
	PixBeginEvent("PlayerKilled post constants");
	self.lastAttacker = attacker;
	self.lastDeathPos = self.origin;
	if(isdefined(attacker) && isPlayer(attacker) && attacker != self && (!level.teambased || attacker.team != self.team))
	{
		self thread challenges::playerKilled(eInflictor, attacker, iDamage, sMeansOfDeath, weapon, sHitLoc, attackerStance);
	}
	else
	{
		self notify("playerKilledChallengesProcessed");
	}
	if(isdefined(self.Attackers))
	{
		self.Attackers = [];
	}
	bb::logdamage(attacker, self, weapon, iDamage, sMeansOfDeath, sHitLoc, 1, !wasInLastStand);
	logPrint("K;" + lpselfGuid + ";" + lpselfnum + ";" + lpselfteam + ";" + lpselfname + ";" + lpattackGuid + ";" + lpattacknum + ";" + lpattackteam + ";" + lpattackname + ";" + weapon.name + ";" + iDamage + ";" + sMeansOfDeath + ";" + sHitLoc + "
");
	attackerString = "none";
	if(isPlayer(attacker))
	{
		attackerString = attacker getXuid() + "(" + lpattackname + ")";
	}
	/#
		println("Dev Block strings are not supported" + sMeansOfDeath + "Dev Block strings are not supported" + weapon.name + "Dev Block strings are not supported" + attackerString + "Dev Block strings are not supported" + iDamage + "Dev Block strings are not supported" + sHitLoc + "Dev Block strings are not supported" + Int(self.origin[0]) + "Dev Block strings are not supported" + Int(self.origin[1]) + "Dev Block strings are not supported" + Int(self.origin[2]));
	#/
	globallogic::updateTeamStatus();
	self weapons::detach_carry_object_model();
	died_in_vehicle = 0;
	if(isdefined(self.diedOnVehicle))
	{
		died_in_vehicle = self.diedOnVehicle;
	}
	hit_by_train = 0;
	if(isdefined(attacker) && isdefined(attacker.targetname) && attacker.targetname == "train")
	{
		hit_by_train = 1;
	}
	PixEndEvent();
	PixBeginEvent("PlayerKilled body and gibbing");
	if(!died_in_vehicle && !hit_by_train && (!isdefined(level.var_d59daf8) && level.var_d59daf8 || level.players.size > 1))
	{
		vAttackerOrigin = undefined;
		if(isdefined(attacker))
		{
			vAttackerOrigin = attacker.origin;
		}
		ragdoll_now = 0;
		if(isdefined(self.usingvehicle) && self.usingvehicle && isdefined(self.vehicleposition) && self.vehicleposition == 1)
		{
			ragdoll_now = 1;
		}
		var_bcd9ef1c = 0;
		if(!attacker IsOnGround() && sMeansOfDeath == "MOD_MELEE_ASSASSINATE")
		{
			var_bcd9ef1c = 1;
		}
		body = self clonePlayer(deathAnimDuration, weapon, attacker);
		if(isdefined(body))
		{
			self createDeadBody(iDamage, sMeansOfDeath, weapon, sHitLoc, vDir, vAttackerOrigin, deathAnimDuration, eInflictor, ragdoll_now, body, var_bcd9ef1c);
		}
	}
	PixEndEvent();
	thread globallogic_spawn::spawnQueuedClient(self.team, attacker);
	self.switching_teams = undefined;
	self.joining_team = undefined;
	self.leaving_team = undefined;
	if(lpattacknum < 0)
	{
		if(isdefined(self.var_afe5253c))
		{
			if(self.var_afe5253c.var_a21e8eb8 >= 0 && self.var_afe5253c.attackerNum == self GetEntityNumber())
			{
				lpattacknum = self.var_afe5253c.var_a21e8eb8;
			}
			else if(self.var_afe5253c.attackerNum >= 0)
			{
				lpattacknum = self.var_afe5253c.attackerNum;
			}
			else if(self.var_afe5253c.var_a21e8eb8 >= 0)
			{
				lpattacknum = self.var_afe5253c.var_a21e8eb8;
			}
		}
		else if(isdefined(eInflictor) && attacker == self)
		{
			lpattacknum = eInflictor GetEntityNumber();
		}
		else if(isdefined(attacker))
		{
			lpattacknum = attacker GetEntityNumber();
		}
		else if(isdefined(eInflictor))
		{
			lpattacknum = eInflictor GetEntityNumber();
		}
	}
	self.var_ebd83169 = 1;
	self.var_1b7a74aa = lpattacknum;
	self.var_ca78829f = attacker;
	self.killcamweapon = weapon;
	self.var_8c0347ee = deathTimeOffset;
	self.var_2b1ad8b = psOffsetTime;
	if(lpattacknum < 0 || lpattacknum === self GetEntityNumber() || lpattacknum > 1023)
	{
		self.var_ebd83169 = 0;
	}
	self thread [[level.onPlayerKilled]](eInflictor, attacker, iDamage, sMeansOfDeath, weapon, vDir, sHitLoc, psOffsetTime, deathAnimDuration);
	for(iCB = 0; iCB < level.onPlayerKilledExtraUnthreadedCBs.size; iCB++)
	{
		self [[level.onPlayerKilledExtraUnthreadedCBs[iCB]]](eInflictor, attacker, iDamage, sMeansOfDeath, weapon, vDir, sHitLoc, psOffsetTime, deathAnimDuration);
	}
	self.wantSafeSpawn = 0;
	PERKS = [];
	killstreaks = globallogic::getKillStreaks(attacker);
	if(!isdefined(self.killstreak_waitamount))
	{
		self thread [[level.spawnPlayerPrediction]]();
	}
	profilelog_endtiming(7, "gs=" + game["state"] + " zom=" + SessionModeIsZombiesGame());
	if(!isdefined(level.var_d59daf8) && level.var_d59daf8 || level.players.size > 1)
	{
		wait(0.25);
	}
	else if(isdefined(body))
	{
		CodeSetClientField(body, "hide_body", 1);
	}
	self.pers["incaps"]++;
	self.var_58ef604f = self.pers["incaps"];
	self AddPlayerStat("INCAPS", 1);
	var_e7ce5f85 = self GetDStat("PlayerStatsList", "INCAPS", "statValue");
	self function_b26abbde("INCAPS", var_e7ce5f85);
	namespace_5f11fb0b::function_8e835895(eInflictor, attacker, iDamage, sMeansOfDeath, weapon, vDir, sHitLoc, psOffsetTime, deathAnimDuration);
	self util::waittill_any_timeout(5, "cp_deathcam_ended");
	defaultPlayerDeathWatchTime = 4;
	if(SessionModeIsCampaignGame() && level.players.size > 1)
	{
		if(GetDvarInt("enable_new_death_cam", 1))
		{
			defaultPlayerDeathWatchTime = GetDvarFloat("defaultPlayerDeathWatchTime", 2.5);
		}
	}
	if(sMeansOfDeath == "MOD_MELEE_ASSASSINATE" || 0 > weapon.deathCamTime)
	{
		defaultPlayerDeathWatchTime = deathAnimDuration * 0.001 + 0.5;
	}
	else if(0 < weapon.deathCamTime)
	{
		defaultPlayerDeathWatchTime = weapon.deathCamTime;
	}
	if(isdefined(level.overridePlayerDeathWatchTimer))
	{
		defaultPlayerDeathWatchTime = [[level.overridePlayerDeathWatchTimer]](defaultPlayerDeathWatchTime);
	}
	self notify("death_delay_finished");
	if(isdefined(level.var_3a9f9a38) && level.var_3a9f9a38 && (isdefined(self.var_acfedf1c) && self.var_acfedf1c))
	{
		killcamentitystarttime = 0;
		self killcam::killcam(self GetEntityNumber(), self GetEntityNumber(), attacker, lpattacknum, killcamentitystarttime, weapon, self.deathtime, deathTimeOffset, psOffsetTime, 1, undefined, PERKS, killstreaks, self, body);
	}
	if(isdefined(self.var_e8880dea) && self.var_e8880dea)
	{
		self util::waittill_any_timeout(5, "camera_sequence_completed");
		self.var_e8880dea = undefined;
		return;
	}
	self.respawnTimerStartTime = GetTime();
	if(game["state"] != "playing")
	{
		self.sessionstate = "dead";
		self.spectatorclient = -1;
		self.archivetime = 0;
		self.psOffsetTime = 0;
		return;
	}
	WaitTillKillStreakDone();
	useRespawnTime = 1;
	if(isdefined(level.hostMigrationTimer))
	{
		useRespawnTime = 0;
	}
	hostmigration::waittillHostMigrationCountDown();
	if(isdefined(level.var_ad1a71f5))
	{
		return;
	}
	if(globallogic_utils::isValidClass(self.curClass))
	{
		timePassed = undefined;
		if(isdefined(self.respawnTimerStartTime) && useRespawnTime)
		{
			timePassed = GetTime() - self.respawnTimerStartTime / 1000;
		}
		self thread [[level.spawnClient]](timePassed);
		self.respawnTimerStartTime = undefined;
	}
}

/*
	Name: updateGlobalBotKilledCounter
	Namespace: globallogic_player
	Checksum: 0x98E8E722
	Offset: 0xABD0
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function updateGlobalBotKilledCounter()
{
	if(isdefined(self.pers["isBot"]))
	{
		level.globalLarrysKilled++;
	}
}

/*
	Name: WaitTillKillStreakDone
	Namespace: globallogic_player
	Checksum: 0xF89EB00
	Offset: 0xAC00
	Size: 0x75
	Parameters: 0
	Flags: None
*/
function WaitTillKillStreakDone()
{
	if(isdefined(self.killstreak_waitamount))
	{
		startTime = GetTime();
		waitTime = self.killstreak_waitamount * 1000;
		while(GetTime() < startTime + waitTime && isdefined(self.killstreak_waitamount))
		{
			wait(0.1);
		}
		wait(2);
		self.killstreak_waitamount = undefined;
	}
}

/*
	Name: SuicideKick
	Namespace: globallogic_player
	Checksum: 0xDEC11250
	Offset: 0xAC80
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function SuicideKick()
{
	self globallogic_score::incPersStat("sessionbans", 1);
	self endon("disconnect");
	waittillframeend;
	globallogic::gameHistoryPlayerKicked();
	ban(self GetEntityNumber());
}

/*
	Name: TeamKillKick
	Namespace: globallogic_player
	Checksum: 0x476E990F
	Offset: 0xACF8
	Size: 0x1D3
	Parameters: 0
	Flags: None
*/
function TeamKillKick()
{
	self globallogic_score::incPersStat("sessionbans", 1);
	self endon("disconnect");
	waittillframeend;
	playlistbanquantum = tweakables::getTweakableValue("team", "teamkillerplaylistbanquantum");
	playlistbanpenalty = tweakables::getTweakableValue("team", "teamkillerplaylistbanpenalty");
	if(playlistbanquantum > 0 && playlistbanpenalty > 0)
	{
		timeplayedtotal = self GetDStat("playerstatslist", "time_played_total", "StatValue");
		minutesplayed = timeplayedtotal / 60;
		freebees = 2;
		banallowance = Int(floor(minutesplayed / playlistbanquantum)) + freebees;
		if(self.sessionbans > banallowance)
		{
			self SetDStat("playerstatslist", "gametypeban", "StatValue", timeplayedtotal + playlistbanpenalty * 60);
		}
	}
	globallogic::gameHistoryPlayerKicked();
	ban(self GetEntityNumber());
}

/*
	Name: teamKillDelay
	Namespace: globallogic_player
	Checksum: 0xC4788C87
	Offset: 0xAED8
	Size: 0x6F
	Parameters: 0
	Flags: None
*/
function teamKillDelay()
{
	teamkills = self.pers["teamkills_nostats"];
	if(level.minimumAllowedTeamKills < 0 || teamkills <= level.minimumAllowedTeamKills)
	{
		return 0;
	}
	exceeded = teamkills - level.minimumAllowedTeamKills;
	return level.teamKillSpawnDelay * exceeded;
}

/*
	Name: ShouldTeamKillKick
	Namespace: globallogic_player
	Checksum: 0x5AA45AD4
	Offset: 0xAF50
	Size: 0x65
	Parameters: 1
	Flags: None
*/
function ShouldTeamKillKick(teamKillDelay)
{
	if(teamKillDelay && level.minimumAllowedTeamKills >= 0)
	{
		if(globallogic_utils::getTimePassed() >= 5000)
		{
			return 1;
		}
		if(self.pers["teamkills_nostats"] > 1)
		{
			return 1;
		}
	}
	return 0;
}

/*
	Name: reduceTeamKillsOverTime
	Namespace: globallogic_player
	Checksum: 0xF713A79C
	Offset: 0xAFC0
	Size: 0xBF
	Parameters: 0
	Flags: None
*/
function reduceTeamKillsOverTime()
{
	timePerOneTeamkillReduction = 20;
	reductionPerSecond = 1 / timePerOneTeamkillReduction;
	while(1)
	{
		if(isalive(self))
		{
			self.pers["teamkills_nostats"] = self.pers["teamkills_nostats"] - reductionPerSecond;
			if(self.pers["teamkills_nostats"] < level.minimumAllowedTeamKills)
			{
				self.pers["teamkills_nostats"] = level.minimumAllowedTeamKills;
				break;
			}
		}
		wait(1);
	}
}

/*
	Name: IgnoreTeamKills
	Namespace: globallogic_player
	Checksum: 0xF1E595E1
	Offset: 0xB088
	Size: 0x51
	Parameters: 2
	Flags: None
*/
function IgnoreTeamKills(weapon, sMeansOfDeath)
{
	if(sMeansOfDeath == "MOD_MELEE" || sMeansOfDeath == "MOD_MELEE_ASSASSINATE")
	{
		return 0;
	}
	if(weapon.IgnoreTeamKills)
	{
		return 1;
	}
	return 0;
}

/*
	Name: Callback_PlayerLastStand
	Namespace: globallogic_player
	Checksum: 0xE50AE63E
	Offset: 0xB0E8
	Size: 0xDB
	Parameters: 9
	Flags: None
*/
function Callback_PlayerLastStand(eInflictor, eAttacker, iDamage, sMeansOfDeath, weapon, vDir, sHitLoc, psOffsetTime, delayOverride)
{
	if(self function_76f34311("cybercom_emergencyreserve") && namespace_e3074452::function_9248cfb4(sMeansOfDeath))
	{
		self namespace_726a1ef0::function_de82b8b4("cybercom_emergencyreserve");
	}
	laststand::PlayerLastStand(eInflictor, eAttacker, iDamage, sMeansOfDeath, weapon, vDir, sHitLoc, psOffsetTime, delayOverride);
}

/*
	Name: damageShellshockAndRumble
	Namespace: globallogic_player
	Checksum: 0xBFF2F515
	Offset: 0xB1D0
	Size: 0x73
	Parameters: 5
	Flags: None
*/
function damageShellshockAndRumble(eAttacker, eInflictor, weapon, sMeansOfDeath, iDamage)
{
	self thread weapons::on_damage(eAttacker, eInflictor, weapon, sMeansOfDeath, iDamage);
	self PlayRumbleOnEntity("damage_heavy");
}

/*
	Name: createDeadBody
	Namespace: globallogic_player
	Checksum: 0xEF631279
	Offset: 0xB250
	Size: 0x27F
	Parameters: 11
	Flags: None
*/
function createDeadBody(iDamage, sMeansOfDeath, weapon, sHitLoc, vDir, vAttackerOrigin, deathAnimDuration, eInflictor, ragdoll_jib, body, var_bcd9ef1c)
{
	if(sMeansOfDeath == "MOD_HIT_BY_OBJECT" && self GetStance() == "prone")
	{
		self.body = body;
		return;
	}
	if(isdefined(level.ragdoll_override) && self [[level.ragdoll_override]](iDamage, sMeansOfDeath, weapon, sHitLoc, vDir, vAttackerOrigin, deathAnimDuration, eInflictor, ragdoll_jib, body))
	{
		return;
	}
	if(ragdoll_jib || self isOnLadder() || self isMantling() || sMeansOfDeath == "MOD_CRUSH" || sMeansOfDeath == "MOD_HIT_BY_OBJECT")
	{
		body StartRagdoll();
	}
	if(!self IsOnGround())
	{
		if(GetDvarInt("scr_disable_air_death_ragdoll") == 0)
		{
			body StartRagdoll();
		}
	}
	if(sMeansOfDeath == "MOD_MELEE_ASSASSINATE" && isdefined(var_bcd9ef1c) && var_bcd9ef1c)
	{
		body start_death_from_above_ragdoll(vDir);
	}
	if(self is_explosive_ragdoll(weapon, eInflictor))
	{
		body start_explosive_ragdoll(vDir, weapon);
	}
	thread delayStartRagdoll(body, sHitLoc, vDir, weapon, eInflictor, sMeansOfDeath);
	if(sMeansOfDeath == "MOD_CRUSH")
	{
		body globallogic_vehicle::vehicleCrush();
	}
	self.body = body;
}

/*
	Name: is_explosive_ragdoll
	Namespace: globallogic_player
	Checksum: 0x12BA16A9
	Offset: 0xB4D8
	Size: 0xB1
	Parameters: 2
	Flags: None
*/
function is_explosive_ragdoll(weapon, inflictor)
{
	if(!isdefined(weapon))
	{
		return 0;
	}
	if(weapon.name == "destructible_car" || weapon.name == "explodable_barrel")
	{
		return 1;
	}
	if(weapon.projExplosionType == "grenade")
	{
		if(isdefined(inflictor) && isdefined(inflictor.stuckToPlayer))
		{
			if(inflictor.stuckToPlayer == self)
			{
				return 1;
			}
		}
	}
	return 0;
}

/*
	Name: start_explosive_ragdoll
	Namespace: globallogic_player
	Checksum: 0x56E61DB
	Offset: 0xB598
	Size: 0x1B3
	Parameters: 2
	Flags: None
*/
function start_explosive_ragdoll(dir, weapon)
{
	if(!isdefined(self))
	{
		return;
	}
	x = randomIntRange(50, 100);
	y = randomIntRange(50, 100);
	z = randomIntRange(10, 20);
	if(isdefined(weapon) && (weapon.name == "sticky_grenade" || weapon.name == "explosive_bolt"))
	{
		if(isdefined(dir) && LengthSquared(dir) > 0)
		{
			x = dir[0] * x;
			y = dir[1] * y;
		}
	}
	else if(math::cointoss())
	{
		x = x * -1;
	}
	if(math::cointoss())
	{
		y = y * -1;
	}
	self StartRagdoll();
	self LaunchRagdoll((x, y, z));
}

/*
	Name: start_death_from_above_ragdoll
	Namespace: globallogic_player
	Checksum: 0xC5A1F0C0
	Offset: 0xB758
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function start_death_from_above_ragdoll(dir)
{
	if(!isdefined(self))
	{
		return;
	}
	self StartRagdoll();
	self LaunchRagdoll(VectorScale((0, 0, -1), 100));
}

/*
	Name: notifyConnecting
	Namespace: globallogic_player
	Checksum: 0xAFFD67A7
	Offset: 0xB7B0
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function notifyConnecting()
{
	waittillframeend;
	if(isdefined(self))
	{
		level notify("connecting", self);
		callback::callback("hash_fefe13f5");
	}
}

/*
	Name: delayStartRagdoll
	Namespace: globallogic_player
	Checksum: 0xF07E2A50
	Offset: 0xB7F0
	Size: 0x313
	Parameters: 6
	Flags: None
*/
function delayStartRagdoll(ent, sHitLoc, vDir, weapon, eInflictor, sMeansOfDeath)
{
	if(isdefined(ent))
	{
		deathAnim = ent getcorpseanim();
		if(animhasnotetrack(deathAnim, "ignore_ragdoll"))
		{
			return;
		}
	}
	if(level.oldschool)
	{
		if(!isdefined(vDir))
		{
			vDir = (0, 0, 0);
		}
		explosionPos = ent.origin + (0, 0, globallogic_utils::getHitLocHeight(sHitLoc));
		explosionPos = explosionPos - vDir * 20;
		explosionRadius = 40;
		explosionForce = 0.75;
		if(sMeansOfDeath == "MOD_IMPACT" || sMeansOfDeath == "MOD_EXPLOSIVE" || IsSubStr(sMeansOfDeath, "MOD_GRENADE") || IsSubStr(sMeansOfDeath, "MOD_PROJECTILE") || sHitLoc == "head" || sHitLoc == "helmet")
		{
			explosionForce = 2.5;
		}
		ent StartRagdoll(1);
		wait(0.05);
		if(!isdefined(ent))
		{
			return;
		}
		PhysicsExplosionSphere(explosionPos, explosionRadius, explosionRadius / 2, explosionForce);
		return;
	}
	wait(0.2);
	if(!isdefined(ent))
	{
		return;
	}
	if(ent IsRagdoll())
	{
		return;
	}
	deathAnim = ent getcorpseanim();
	startFrac = 0.35;
	if(animhasnotetrack(deathAnim, "start_ragdoll"))
	{
		times = getnotetracktimes(deathAnim, "start_ragdoll");
		if(isdefined(times))
		{
			startFrac = times[0];
		}
	}
	waitTime = startFrac * getanimlength(deathAnim);
	wait(waitTime);
	if(isdefined(ent))
	{
		ent StartRagdoll(1);
	}
}

/*
	Name: trackAttackerDamage
	Namespace: globallogic_player
	Checksum: 0x88F3AF77
	Offset: 0xBB10
	Size: 0x339
	Parameters: 4
	Flags: None
*/
function trackAttackerDamage(eAttacker, iDamage, sMeansOfDeath, weapon)
{
	if(!isdefined(eAttacker))
	{
		return;
	}
	if(!isPlayer(eAttacker))
	{
		return;
	}
	/#
		Assert(IsArray(self.attackerData));
	#/
	if(self.attackerData.size == 0)
	{
		self.firstTimeDamaged = GetTime();
	}
	if(self.attackerData.size == 0 || !isdefined(self.attackerData[eAttacker.clientid]))
	{
		self.attackerDamage[eAttacker.clientid] = spawnstruct();
		self.attackerDamage[eAttacker.clientid].damage = iDamage;
		self.attackerDamage[eAttacker.clientid].meansOfDeath = sMeansOfDeath;
		self.attackerDamage[eAttacker.clientid].weapon = weapon;
		self.attackerDamage[eAttacker.clientid].time = GetTime();
		self.Attackers[self.Attackers.size] = eAttacker;
		self.attackerData[eAttacker.clientid] = 0;
		/#
			Assert(self.attackerData.size);
		#/
	}
	else
	{
		self.attackerDamage[eAttacker.clientid].damage = self.attackerDamage[eAttacker.clientid].damage + iDamage;
		self.attackerDamage[eAttacker.clientid].meansOfDeath = sMeansOfDeath;
		self.attackerDamage[eAttacker.clientid].weapon = weapon;
		if(!isdefined(self.attackerDamage[eAttacker.clientid].time))
		{
			self.attackerDamage[eAttacker.clientid].time = GetTime();
		}
	}
	/#
		Assert(self.attackerData.size);
	#/
	self.attackerDamage[eAttacker.clientid].lasttimedamaged = GetTime();
	if(weapons::is_primary_weapon(weapon))
	{
		self.attackerData[eAttacker.clientid] = 1;
	}
}

/*
	Name: giveAttackerAndInflictorOwnerAssist
	Namespace: globallogic_player
	Checksum: 0xC840D279
	Offset: 0xBE58
	Size: 0x103
	Parameters: 5
	Flags: None
*/
function giveAttackerAndInflictorOwnerAssist(eAttacker, eInflictor, iDamage, sMeansOfDeath, weapon)
{
	if(!allowedAssistWeapon(weapon))
	{
		return;
	}
	self trackAttackerDamage(eAttacker, iDamage, sMeansOfDeath, weapon);
	if(!isdefined(eInflictor))
	{
		return;
	}
	if(!isdefined(eInflictor.owner))
	{
		return;
	}
	if(!isdefined(eInflictor.ownerGetsAssist))
	{
		return;
	}
	if(!eInflictor.ownerGetsAssist)
	{
		return;
	}
	if(isdefined(eAttacker) && eAttacker == eInflictor.owner)
	{
		return;
	}
	self trackAttackerDamage(eInflictor.owner, iDamage, sMeansOfDeath, weapon);
}

/*
	Name: PlayerKilled_UpdateMeansOfDeath
	Namespace: globallogic_player
	Checksum: 0x5D3B174D
	Offset: 0xBF68
	Size: 0xD9
	Parameters: 5
	Flags: None
*/
function PlayerKilled_UpdateMeansOfDeath(attacker, eInflictor, weapon, sMeansOfDeath, sHitLoc)
{
	if(globallogic_utils::isHeadShot(weapon, sHitLoc, sMeansOfDeath, eInflictor) && isPlayer(attacker))
	{
		return "MOD_HEAD_SHOT";
	}
	switch(weapon.name)
	{
		case "dog_bite":
		{
			sMeansOfDeath = "MOD_PISTOL_BULLET";
			break;
		}
		case "destructible_car":
		{
			sMeansOfDeath = "MOD_EXPLOSIVE";
			break;
		}
		case "explodable_barrel":
		{
			sMeansOfDeath = "MOD_EXPLOSIVE";
			break;
		}
	}
	return sMeansOfDeath;
}

/*
	Name: updateAttacker
	Namespace: globallogic_player
	Checksum: 0xDE4A0C5A
	Offset: 0xC050
	Size: 0x207
	Parameters: 2
	Flags: None
*/
function updateAttacker(attacker, weapon)
{
	if(isai(attacker) && isdefined(attacker.script_owner))
	{
		if(!level.teambased || attacker.script_owner.team != self.team)
		{
			attacker = attacker.script_owner;
		}
	}
	if(attacker.classname == "script_vehicle" && isdefined(attacker.owner))
	{
		attacker notify("killed", self);
		attacker = attacker.owner;
	}
	if(isai(attacker))
	{
		attacker notify("killed", self);
	}
	if(isdefined(self.capturingLastFlag) && self.capturingLastFlag == 1)
	{
		attacker.lastCapKiller = 1;
	}
	if(isdefined(attacker) && isdefined(weapon) && weapon.name == "planemortar")
	{
		if(!isdefined(attacker.planeMortarBda))
		{
			attacker.planeMortarBda = 0;
		}
		attacker.planeMortarBda++;
	}
	if(isdefined(attacker) && isdefined(weapon) && (weapon.name == "straferun_rockets" || weapon.name == "straferun_gun"))
	{
		if(isdefined(attacker.strafeRunbda))
		{
			attacker.strafeRunbda++;
		}
	}
	return attacker;
}

/*
	Name: updateInflictor
	Namespace: globallogic_player
	Checksum: 0xC166D1BB
	Offset: 0xC260
	Size: 0x67
	Parameters: 1
	Flags: None
*/
function updateInflictor(eInflictor)
{
	if(isdefined(eInflictor) && eInflictor.classname == "script_vehicle")
	{
		eInflictor notify("killed", self);
		if(isdefined(eInflictor.bda))
		{
			eInflictor.bda++;
		}
	}
	return eInflictor;
}

/*
	Name: updateWeapon
	Namespace: globallogic_player
	Checksum: 0x89A03EB4
	Offset: 0xC2D0
	Size: 0xD3
	Parameters: 2
	Flags: None
*/
function updateWeapon(eInflictor, weapon)
{
	if(weapon == level.weaponNone && isdefined(eInflictor))
	{
		if(isdefined(eInflictor.targetname) && eInflictor.targetname == "explodable_barrel")
		{
			weapon = GetWeapon("explodable_barrel");
		}
		else if(isdefined(eInflictor.destructible_type) && IsSubStr(eInflictor.destructible_type, "vehicle_"))
		{
			weapon = GetWeapon("destructible_car");
		}
	}
	return weapon;
}

/*
	Name: playKillBattleChatter
	Namespace: globallogic_player
	Checksum: 0x53E24D
	Offset: 0xC3B0
	Size: 0x1B
	Parameters: 3
	Flags: None
*/
function playKillBattleChatter(attacker, weapon, victim)
{
}

/*
	Name: function_ece4ca01
	Namespace: globallogic_player
	Checksum: 0xB673303E
	Offset: 0xC3D8
	Size: 0x239
	Parameters: 0
	Flags: None
*/
function function_ece4ca01()
{
	if(self == level)
	{
		foreach(player in level.players)
		{
			player function_ece4ca01();
		}
		break;
	}
	if(isPlayer(self))
	{
		var_8ea4a872 = self GetWeaponsList();
		foreach(weapon in var_8ea4a872)
		{
			if(isdefined(weapon.isHeroWeapon) && weapon.isHeroWeapon)
			{
				var_c44df3d1 = self savegame::function_36adbb9c(savegame::function_1bfdd60e() + "hero_weapon", undefined);
				if(!isdefined(var_c44df3d1))
				{
					var_c44df3d1 = "";
				}
				if(!IsSubStr(var_c44df3d1, weapon.name + ","))
				{
					var_c44df3d1 = var_c44df3d1 + weapon.name + ",";
					self savegame::function_bee608f0(savegame::function_1bfdd60e() + "hero_weapon", var_c44df3d1);
				}
			}
		}
	}
}

/*
	Name: function_7a152f99
	Namespace: globallogic_player
	Checksum: 0x8C6BCE2E
	Offset: 0xC620
	Size: 0x91
	Parameters: 1
	Flags: Private
*/
function private function_7a152f99(statName)
{
	var_9792a8bf = self GetDStat("PlayerStatsByMap", function_9065d6ea(), "currentStats", statName);
	var_56aa772d = self GetDStat("PlayerStatsList", statName, "statValue");
	return var_56aa772d - var_9792a8bf;
}

/*
	Name: function_a5ac6877
	Namespace: globallogic_player
	Checksum: 0x4BD58E3E
	Offset: 0xC6C0
	Size: 0x29F
	Parameters: 0
	Flags: None
*/
function function_a5ac6877()
{
	if(isdefined(function_9065d6ea()))
	{
		if(SessionModeIsCampaignZombiesGame() && !function_7ddcd415() && (!isdefined(self.var_bf1a9bd5) && self.var_bf1a9bd5))
		{
			var_a6f47549 = function_9065d6ea();
			if(isdefined(var_a6f47549))
			{
				foreach(player in level.players)
				{
					player function_4cef9872(var_a6f47549);
				}
			}
			UploadStats();
			self.var_bf1a9bd5 = 1;
		}
		self.pers["score"] = self function_7a152f99("score");
		self.pers["kills"] = self function_7a152f99("kills");
		self.pers["incaps"] = self function_7a152f99("incaps");
		self.pers["assists"] = self function_7a152f99("assists");
		self.pers["revives"] = self function_7a152f99("revives");
		self.kills = self.pers["kills"];
		self.score = self.pers["score"];
		self.assists = self.pers["assists"];
		self.var_58ef604f = self.pers["incaps"];
		self.revives = self.pers["revives"];
	}
}

/*
	Name: function_7bdf5497
	Namespace: globallogic_player
	Checksum: 0x59F4F87E
	Offset: 0xC968
	Size: 0x3F
	Parameters: 0
	Flags: None
*/
function function_7bdf5497()
{
	self.kills = 0;
	self.score = 0;
	self.assists = 0;
	self.var_58ef604f = 0;
	self.revives = 0;
}

/*
	Name: function_4cef9872
	Namespace: globallogic_player
	Checksum: 0xDE77B8EC
	Offset: 0xC9B0
	Size: 0x403
	Parameters: 1
	Flags: None
*/
function function_4cef9872(var_5df3645b)
{
	if(!isdefined(var_5df3645b))
	{
		return;
	}
	for(i = 1; i < 58; i++)
	{
		var_b47d78c4 = self function_bc8e235e(i);
		if(!isdefined(var_b47d78c4))
		{
			var_b47d78c4 = 0;
		}
		self SetDStat("currentWeaponLevels", i, var_b47d78c4);
	}
	var_72c4032 = self GetDStat("PlayerStatsList", "RANKXP", "statValue");
	self SetDStat("currentRankXP", var_72c4032);
	var_b4728b19 = [];
	Array::add(var_b4728b19, "KILLS");
	Array::add(var_b4728b19, "SCORE");
	Array::add(var_b4728b19, "ASSISTS");
	Array::add(var_b4728b19, "INCAPS");
	Array::add(var_b4728b19, "REVIVES");
	foreach(stat in var_b4728b19)
	{
		statValue = self GetDStat("PlayerStatsList", stat, "statValue");
		self SetDStat("PlayerStatsByMap", var_5df3645b, "currentStats", stat, statValue);
	}
	for(i = 0; i < 6; i++)
	{
		var_b53e21eb = self GetDStat("PlayerStatsByMap", var_5df3645b, "completedDifficulties", i);
		self SetDStat("PlayerStatsByMap", var_5df3645b, "previousCompletedDifficulties", i, var_b53e21eb);
		var_16925818 = self GetDStat("PlayerStatsBymap", var_5df3645b, "receivedXPForDifficulty", i);
		self SetDStat("PlayerStatsByMap", var_5df3645b, "previousReceivedXPForDifficulty", i, var_16925818);
	}
	for(i = 0; i < 20; i++)
	{
		var_8514318e = self GetDStat("PlayerCPDecorations", i);
		self SetDStat("currentPlayerCPDecorations", i, var_8514318e);
	}
	UploadStats(self);
}

/*
	Name: recordActivePlayersEndGameMatchRecordStats
	Namespace: globallogic_player
	Checksum: 0xBB78BFEE
	Offset: 0xCDC0
	Size: 0xA9
	Parameters: 0
	Flags: None
*/
function recordActivePlayersEndGameMatchRecordStats()
{
	foreach(player in level.players)
	{
		recordPlayerMatchEnd(player);
		recordPlayerStats(player, "presentAtEnd", 1);
	}
}

