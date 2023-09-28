#using scripts\cp\_util;
#using scripts\cp\gametypes\_globallogic;
#using scripts\cp\gametypes\_globallogic_defaults;
#using scripts\cp\gametypes\_globallogic_player;
#using scripts\cp\gametypes\_globallogic_score;
#using scripts\cp\gametypes\_globallogic_ui;
#using scripts\cp\gametypes\_globallogic_utils;
#using scripts\cp\gametypes\_loadout;
#using scripts\cp\gametypes\_save;
#using scripts\cp\gametypes\_spawning;
#using scripts\cp\gametypes\_spawnlogic;
#using scripts\cp\gametypes\_spectating;
#using scripts\cp\gametypes\coop;
#using scripts\shared\callbacks_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\hostmigration_shared;
#using scripts\shared\hud_message_shared;
#using scripts\shared\hud_util_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace globallogic_spawn;

/*
	Name: timeUntilSpawn
	Namespace: globallogic_spawn
	Checksum: 0xD5CABBD
	Offset: 0x5D0
	Size: 0x177
	Parameters: 1
	Flags: None
*/
function timeUntilSpawn(includeTeamkillDelay)
{
	if(level.inGracePeriod && !self.hasSpawned)
	{
		return 0;
	}
	respawnDelay = 0;
	if(self.hasSpawned)
	{
		result = self [[level.onRespawnDelay]]();
		if(isdefined(result))
		{
			respawnDelay = result;
		}
		else
		{
			respawnDelay = level.playerRespawnDelay;
		}
		if(isdefined(self.suicide) && self.suicide && level.suicideSpawnDelay > 0)
		{
			respawnDelay = respawnDelay + level.suicideSpawnDelay;
		}
		if(isdefined(self.teamKilled) && self.teamKilled && level.teamKilledSpawnDelay > 0)
		{
			respawnDelay = respawnDelay + level.teamKilledSpawnDelay;
		}
		if(includeTeamkillDelay && (isdefined(self.teamKillPunish) && self.teamKillPunish))
		{
			respawnDelay = respawnDelay + globallogic_player::teamKillDelay();
		}
	}
	waveBased = level.waveRespawnDelay > 0;
	if(waveBased)
	{
		return self TimeUntilWaveSpawn(respawnDelay);
	}
	return respawnDelay;
}

/*
	Name: allTeamsHaveExisted
	Namespace: globallogic_spawn
	Checksum: 0x99110292
	Offset: 0x750
	Size: 0x8D
	Parameters: 0
	Flags: None
*/
function allTeamsHaveExisted()
{
	foreach(team in level.teams)
	{
		if(!level.everExisted[team])
		{
			return 0;
		}
	}
	return 1;
}

/*
	Name: maySpawn
	Namespace: globallogic_spawn
	Checksum: 0xC5F7DFF9
	Offset: 0x7E8
	Size: 0x147
	Parameters: 0
	Flags: None
*/
function maySpawn()
{
	if(isdefined(level.playerMaySpawn) && !self [[level.playerMaySpawn]]())
	{
		return 0;
	}
	if(level.inOvertime)
	{
		return 0;
	}
	if(level.playerQueuedRespawn && !isdefined(self.allowQueueSpawn) && !level.inGracePeriod && !level.useStartSpawns)
	{
		return 0;
	}
	if(isdefined(self.var_d670c0a7) && self.var_d670c0a7)
	{
		return 0;
	}
	if(level.numLives)
	{
		if(level.teambased)
		{
			gameHasStarted = allTeamsHaveExisted();
		}
		else
		{
			gameHasStarted = level.maxPlayerCount > 1 || (!util::isOneRound() && !util::isFirstRound());
		}
		if(!self.pers["lives"])
		{
			return 0;
		}
		else if(gameHasStarted)
		{
			if(!level.inGracePeriod && !self.hasSpawned)
			{
				return 0;
			}
		}
	}
	return 1;
}

/*
	Name: TimeUntilWaveSpawn
	Namespace: globallogic_spawn
	Checksum: 0xAFEF8E4D
	Offset: 0x938
	Size: 0x121
	Parameters: 1
	Flags: None
*/
function TimeUntilWaveSpawn(minimumWait)
{
	earliestSpawnTime = GetTime() + minimumWait * 1000;
	lastWaveTime = level.lastWave[self.pers["team"]];
	waveDelay = level.waveDelay[self.pers["team"]] * 1000;
	if(waveDelay == 0)
	{
		return 0;
	}
	numWavesPassedEarliestSpawnTime = earliestSpawnTime - lastWaveTime / waveDelay;
	numWaves = ceil(numWavesPassedEarliestSpawnTime);
	timeOfSpawn = lastWaveTime + numWaves * waveDelay;
	if(isdefined(self.waveSpawnIndex))
	{
		timeOfSpawn = timeOfSpawn + 50 * self.waveSpawnIndex;
	}
	return timeOfSpawn - GetTime() / 1000;
}

/*
	Name: stopPoisoningAndFlareOnSpawn
	Namespace: globallogic_spawn
	Checksum: 0xD023CC41
	Offset: 0xA68
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function stopPoisoningAndFlareOnSpawn()
{
	self endon("disconnect");
	self.inPoisonArea = 0;
	self.inBurnArea = 0;
	self.inFlareVisionArea = 0;
	self.inGroundNapalm = 0;
}

/*
	Name: spawnPlayerPrediction
	Namespace: globallogic_spawn
	Checksum: 0xAD1F51DC
	Offset: 0xAB0
	Size: 0x67
	Parameters: 0
	Flags: None
*/
function spawnPlayerPrediction()
{
	self endon("disconnect");
	self endon("end_respawn");
	self endon("game_ended");
	self endon("joined_spectators");
	self endon("spawned");
	while(1)
	{
		wait(0.5);
		self [[level.onSpawnPlayer]](1);
	}
}

/*
	Name: doInitialSpawnMessaging
	Namespace: globallogic_spawn
	Checksum: 0x585CC3C8
	Offset: 0xB20
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function doInitialSpawnMessaging()
{
	self endon("disconnect");
	if(isdefined(level.disablePrematchMessages) && level.disablePrematchMessages)
	{
		return;
	}
	team = self.pers["team"];
	thread hud_message::showInitialFactionPopup(team);
	while(level.inPrematchPeriod)
	{
		wait(0.05);
	}
	hintMessage = util::getObjectiveHintText(team);
	if(isdefined(hintMessage))
	{
		self thread hud_message::hintMessage(hintMessage);
	}
}

/*
	Name: spawnPlayer
	Namespace: globallogic_spawn
	Checksum: 0x7EBC10A7
	Offset: 0xBE8
	Size: 0x9D3
	Parameters: 0
	Flags: None
*/
function spawnPlayer()
{
	PixBeginEvent("spawnPlayer_preUTS");
	self endon("disconnect");
	self endon("joined_spectators");
	self notify("spawned");
	level notify("player_spawned");
	self notify("end_respawn");
	self setSpawnVariables();
	self LUINotifyEvent(&"player_spawned", 0);
	self util::clearLowerMessage(0);
	self.sessionteam = self.team;
	hadSpawned = self.hasSpawned;
	self.sessionstate = "playing";
	self.spectatorclient = -1;
	self.archivetime = 0;
	self.psOffsetTime = 0;
	self.statusicon = "";
	self.damagedPlayers = [];
	if(GetDvarInt("scr_csmode") > 0)
	{
		self.maxhealth = GetDvarInt("scr_csmode");
	}
	else
	{
		self.maxhealth = level.playerMaxHealth;
	}
	self.health = self.maxhealth;
	self.friendlydamage = undefined;
	self.hasSpawned = 1;
	self.spawntime = GetTime();
	self.afk = 0;
	if(self.pers["lives"] && (!isdefined(level.takeLivesOnDeath) || level.takeLivesOnDeath == 0))
	{
		self.pers["lives"]--;
		if(self.pers["lives"] == 0)
		{
			level notify("player_eliminated");
			self notify("player_eliminated");
		}
	}
	self.laststand = undefined;
	self.revivingTeammate = 0;
	self.burning = undefined;
	self.nextKillstreakFree = undefined;
	self.activeUAVs = 0;
	self.activeCounterUAVs = 0;
	self.activeSatellites = 0;
	self.deathMachineKills = 0;
	self.disabledWeapon = 0;
	self util::resetUsability();
	self globallogic_player::resetAttackerList();
	self.diedOnVehicle = undefined;
	if(!self.wasAliveAtMatchStart)
	{
		if(level.inGracePeriod || globallogic_utils::getTimePassed() < 20000)
		{
			self.wasAliveAtMatchStart = 1;
		}
	}
	self setDepthOfField(0, 0, 512, 512, 4, 0);
	self resetFov();
	PixBeginEvent("onSpawnPlayer");
	self [[level.onSpawnPlayer]](0);
	if(isdefined(level.playerSpawnedCB))
	{
		self [[level.playerSpawnedCB]]();
	}
	PixEndEvent();
	PixEndEvent();
	globallogic::updateTeamStatus();
	PixBeginEvent("spawnPlayer_postUTS");
	self thread stopPoisoningAndFlareOnSpawn();
	self.sensorGrenadeData = undefined;
	/#
		Assert(globallogic_utils::isValidClass(self.curClass) || util::is_bot());
	#/
	self loadout::setClass(self.curClass);
	var_4fbe10c = self savegame::function_36adbb9c("altPlayerID", undefined);
	var_5a13c491 = undefined;
	if(isdefined(var_4fbe10c))
	{
		foreach(var_388ffcfb in level.players)
		{
			if(var_388ffcfb getXuid() === var_4fbe10c)
			{
				var_5a13c491 = var_388ffcfb;
				break;
			}
		}
		if(!isdefined(var_5a13c491))
		{
			self savegame::function_bee608f0("altPlayerID", undefined);
		}
	}
	self thread loadout::giveLoadout(self.team, self.curClass, level.var_dc236bc8, var_5a13c491);
	if(isdefined(self.var_c8430b0a) && self.var_c8430b0a)
	{
		self.var_c8430b0a = undefined;
	}
	else
	{
		self LUI::screen_close_menu();
	}
	if(level.inPrematchPeriod)
	{
		self util::freeze_player_controls(1);
		team = self.pers["team"];
		self thread doInitialSpawnMessaging();
	}
	else
	{
		self util::freeze_player_controls(0);
		self enableWeapons();
		if(!hadSpawned && game["state"] == "playing")
		{
			PixBeginEvent("sound");
			team = self.team;
			self thread doInitialSpawnMessaging();
			PixEndEvent();
		}
	}
	if(GetDvarString("scr_showperksonspawn") == "")
	{
		SetDvar("scr_showperksonspawn", "0");
	}
	if(level.hardcoreMode)
	{
		SetDvar("scr_showperksonspawn", "0");
	}
	if(GetDvarInt("scr_showperksonspawn") == 1 && game["state"] != "postgame")
	{
		PixBeginEvent("showperksonspawn");
		if(level.perksEnabled == 1)
		{
			self hud::showPerks();
		}
		PixEndEvent();
	}
	if(isdefined(self.pers["momentum"]))
	{
		self.momentum = self.pers["momentum"];
	}
	PixEndEvent();
	wait(0.05);
	self notify("spawned_player");
	if(!GetDvarInt("art_review", 0))
	{
		callback::callback("hash_bc12b61f");
	}
	/#
		print("Dev Block strings are not supported" + self.origin[0] + "Dev Block strings are not supported" + self.origin[1] + "Dev Block strings are not supported" + self.origin[2] + "Dev Block strings are not supported");
	#/
	SetDvar("scr_selecting_location", "");
	self thread vehicleDeathWaiter();
	/#
		if(GetDvarInt("Dev Block strings are not supported") > 0)
		{
			self thread globallogic_score::xpRateThread();
		}
	#/
	if(game["state"] == "postgame")
	{
		/#
			Assert(!level.intermission);
		#/
		self globallogic_player::freezePlayerForRoundEnd();
	}
	self util::set_lighting_state();
	self util::set_sun_shadow_split_distance();
	self util::streamer_wait(undefined, 0, 5);
	self flag::set("initial_streamer_ready");
}

/*
	Name: vehicleDeathWaiter
	Namespace: globallogic_spawn
	Checksum: 0xFBF44B2D
	Offset: 0x15C8
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function vehicleDeathWaiter()
{
	self notify("vehicleDeathWaiter");
	self endon("vehicleDeathWaiter");
	self endon("disconnect");
	while(1)
	{
		self waittill("vehicle_death", vehicle_died);
		if(vehicle_died)
		{
			self.diedOnVehicle = 1;
		}
		else
		{
			self.diedOnTurret = 1;
		}
	}
}

/*
	Name: spawnSpectator
	Namespace: globallogic_spawn
	Checksum: 0x878688CC
	Offset: 0x1648
	Size: 0x53
	Parameters: 2
	Flags: None
*/
function spawnSpectator(origin, angles)
{
	self notify("spawned");
	self notify("end_respawn");
	self notify("spawned_spectator");
	in_spawnSpectator(origin, angles);
}

/*
	Name: respawn_asSpectator
	Namespace: globallogic_spawn
	Checksum: 0x91571FB1
	Offset: 0x16A8
	Size: 0x2B
	Parameters: 2
	Flags: None
*/
function respawn_asSpectator(origin, angles)
{
	in_spawnSpectator(origin, angles);
}

/*
	Name: in_spawnSpectator
	Namespace: globallogic_spawn
	Checksum: 0xE7D33722
	Offset: 0x16E0
	Size: 0x163
	Parameters: 2
	Flags: None
*/
function in_spawnSpectator(origin, angles)
{
	pixmarker("BEGIN: in_spawnSpectator");
	self setSpawnVariables();
	if(self.pers["team"] == "spectator")
	{
		self util::clearLowerMessage();
	}
	self.sessionstate = "spectator";
	self.spectatorclient = -1;
	self.archivetime = 0;
	self.psOffsetTime = 0;
	self.friendlydamage = undefined;
	if(self.pers["team"] == "spectator")
	{
		self.statusicon = "";
	}
	else
	{
		self.statusicon = "hud_status_dead";
	}
	spectating::set_permissions_for_machine();
	[[level.onSpawnSpectator]](origin, angles);
	if(level.teambased && !level.Splitscreen)
	{
		self thread spectatorThirdPersonness();
	}
	pixmarker("END: in_spawnSpectator");
}

/*
	Name: spectatorThirdPersonness
	Namespace: globallogic_spawn
	Checksum: 0x33E06797
	Offset: 0x1850
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function spectatorThirdPersonness()
{
	self endon("disconnect");
	self endon("spawned");
	self notify("spectator_thirdperson_thread");
	self endon("spectator_thirdperson_thread");
	self.spectatingThirdPerson = 0;
}

/*
	Name: forceSpawn
	Namespace: globallogic_spawn
	Checksum: 0x66230DFB
	Offset: 0x1898
	Size: 0xF3
	Parameters: 1
	Flags: None
*/
function forceSpawn(time)
{
	self endon("death");
	self endon("disconnect");
	self endon("spawned");
	if(!isdefined(time))
	{
		time = 60;
	}
	wait(time);
	if(self.hasSpawned)
	{
		return;
	}
	if(self.pers["team"] == "spectator")
	{
		return;
	}
	if(!globallogic_utils::isValidClass(self.pers["class"]))
	{
		self.pers["class"] = "CLASS_CUSTOM1";
		self.curClass = self.pers["class"];
	}
	self globallogic_ui::closeMenus();
	self thread [[level.spawnClient]]();
}

/*
	Name: kickIfDontSpawn
	Namespace: globallogic_spawn
	Checksum: 0x937ECB7B
	Offset: 0x1998
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function kickIfDontSpawn()
{
	/#
		if(GetDvarInt("Dev Block strings are not supported") == 1)
		{
			return;
		}
	#/
	if(self IsHost())
	{
		return;
	}
	self kickIfIDontSpawnInternal();
}

/*
	Name: kickIfIDontSpawnInternal
	Namespace: globallogic_spawn
	Checksum: 0xA7DB9A16
	Offset: 0x1A00
	Size: 0x1D3
	Parameters: 0
	Flags: None
*/
function kickIfIDontSpawnInternal()
{
	self endon("death");
	self endon("disconnect");
	self endon("spawned");
	waitTime = 90;
	if(GetDvarString("scr_kick_time") != "")
	{
		waitTime = GetDvarFloat("scr_kick_time");
	}
	minTime = 45;
	if(GetDvarString("scr_kick_mintime") != "")
	{
		minTime = GetDvarFloat("scr_kick_mintime");
	}
	startTime = GetTime();
	kickWait(waitTime);
	timePassed = GetTime() - startTime / 1000;
	if(timePassed < waitTime - 0.1 && timePassed < minTime)
	{
		return;
	}
	if(self.hasSpawned)
	{
		return;
	}
	if(SessionModeIsPrivate())
	{
		return;
	}
	if(self.pers["team"] == "spectator")
	{
		return;
	}
	if(!maySpawn())
	{
		return;
	}
	globallogic::gameHistoryPlayerKicked();
	kick(self GetEntityNumber());
}

/*
	Name: kickWait
	Namespace: globallogic_spawn
	Checksum: 0x7D954656
	Offset: 0x1BE0
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function kickWait(waitTime)
{
	level endon("game_ended");
	hostmigration::waitLongDurationWithHostMigrationPause(waitTime);
}

/*
	Name: spawnInterRoundIntermission
	Namespace: globallogic_spawn
	Checksum: 0x11736237
	Offset: 0x1C18
	Size: 0x123
	Parameters: 0
	Flags: None
*/
function spawnInterRoundIntermission()
{
	self notify("spawned");
	self notify("end_respawn");
	self setSpawnVariables();
	self util::clearLowerMessage();
	self util::freeze_player_controls(0);
	self.sessionstate = "spectator";
	self.spectatorclient = -1;
	self.archivetime = 0;
	self.psOffsetTime = 0;
	self.friendlydamage = undefined;
	self globallogic_defaults::default_onSpawnIntermission();
	self SetOrigin(self.origin);
	self SetPlayerAngles(self.angles);
	self setDepthOfField(0, 128, 512, 4000, 6, 1.8);
}

/*
	Name: spawnIntermission
	Namespace: globallogic_spawn
	Checksum: 0xD704249
	Offset: 0x1D48
	Size: 0x113
	Parameters: 1
	Flags: None
*/
function spawnIntermission(useDefaultCallback)
{
	self notify("spawned");
	self notify("end_respawn");
	self endon("disconnect");
	self setSpawnVariables();
	self util::clearLowerMessage();
	self util::freeze_player_controls(0);
	self.sessionstate = "intermission";
	self.spectatorclient = -1;
	self.archivetime = 0;
	self.psOffsetTime = 0;
	self.friendlydamage = undefined;
	if(isdefined(useDefaultCallback) && useDefaultCallback)
	{
		globallogic_defaults::default_onSpawnIntermission();
	}
	else
	{
		[[level.onSpawnIntermission]]();
	}
	self setDepthOfField(0, 128, 512, 4000, 6, 1.8);
}

/*
	Name: spawnQueuedClientOnTeam
	Namespace: globallogic_spawn
	Checksum: 0xD5C8A72B
	Offset: 0x1E68
	Size: 0xD7
	Parameters: 1
	Flags: None
*/
function spawnQueuedClientOnTeam(team)
{
	player_to_spawn = undefined;
	for(i = 0; i < level.deadPlayers[team].size; i++)
	{
		player = level.deadPlayers[team][i];
		if(player.waitingToSpawn)
		{
			continue;
		}
		player_to_spawn = player;
		break;
	}
	if(isdefined(player_to_spawn))
	{
		player_to_spawn.allowQueueSpawn = 1;
		player_to_spawn globallogic_ui::closeMenus();
		player_to_spawn thread [[level.spawnClient]]();
	}
}

/*
	Name: spawnQueuedClient
	Namespace: globallogic_spawn
	Checksum: 0x3129746B
	Offset: 0x1F48
	Size: 0x151
	Parameters: 2
	Flags: None
*/
function spawnQueuedClient(dead_player_team, killer)
{
	if(!level.playerQueuedRespawn)
	{
		return;
	}
	util::WaitTillSlowProcessAllowed();
	spawn_team = undefined;
	if(isdefined(killer) && isdefined(killer.team) && isdefined(level.teams[killer.team]))
	{
		spawn_team = killer.team;
	}
	if(isdefined(spawn_team))
	{
		spawnQueuedClientOnTeam(spawn_team);
		return;
	}
	foreach(team in level.teams)
	{
		if(team == dead_player_team)
		{
			continue;
		}
		spawnQueuedClientOnTeam(team);
	}
}

/*
	Name: allTeamsNearScoreLimit
	Namespace: globallogic_spawn
	Checksum: 0x7D719336
	Offset: 0x20A8
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function allTeamsNearScoreLimit()
{
	if(!level.teambased)
	{
		return 0;
	}
	if(level.scoreLimit <= 1)
	{
		return 0;
	}
	foreach(team in level.teams)
	{
		if(!game["teamScores"][team] >= level.scoreLimit - 1)
		{
			return 0;
		}
	}
	return 1;
}

/*
	Name: shouldShowRespawnMessage
	Namespace: globallogic_spawn
	Checksum: 0xD76D3B53
	Offset: 0x2178
	Size: 0x6D
	Parameters: 0
	Flags: None
*/
function shouldShowRespawnMessage()
{
	if(util::wasLastRound())
	{
		return 0;
	}
	if(util::isOneRound())
	{
		return 0;
	}
	if(isdefined(level.livesDoNotReset) && level.livesDoNotReset)
	{
		return 0;
	}
	if(allTeamsNearScoreLimit())
	{
		return 0;
	}
	return 1;
}

/*
	Name: default_spawnMessage
	Namespace: globallogic_spawn
	Checksum: 0x991D966C
	Offset: 0x21F0
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function default_spawnMessage()
{
	util::setLowerMessage(game["strings"]["spawn_next_round"]);
	self thread globallogic_ui::removeSpawnMessageShortly(3);
}

/*
	Name: showSpawnMessage
	Namespace: globallogic_spawn
	Checksum: 0xEB76F3D2
	Offset: 0x2240
	Size: 0x27
	Parameters: 0
	Flags: None
*/
function showSpawnMessage()
{
	if(shouldShowRespawnMessage())
	{
		self thread [[level.spawnMessage]]();
	}
}

/*
	Name: spawnClient
	Namespace: globallogic_spawn
	Checksum: 0xA32493BE
	Offset: 0x2270
	Size: 0x17B
	Parameters: 1
	Flags: None
*/
function spawnClient(timeAlreadyPassed)
{
	PixBeginEvent("spawnClient");
	/#
		Assert(isdefined(self.team));
	#/
	/#
		Assert(globallogic_utils::isValidClass(self.curClass));
	#/
	if(!self maySpawn())
	{
		currentorigin = self.origin;
		currentangles = self.angles;
		self showSpawnMessage();
		self thread [[level.spawnSpectator]](currentorigin + VectorScale((0, 0, 1), 60), currentangles);
		PixEndEvent();
		return;
	}
	if(self.waitingToSpawn)
	{
		PixEndEvent();
		return;
	}
	self.waitingToSpawn = 1;
	self.allowQueueSpawn = undefined;
	self waitAndSpawnClient(timeAlreadyPassed);
	if(isdefined(self))
	{
		self.waitingToSpawn = 0;
	}
	PixEndEvent();
}

/*
	Name: waitAndSpawnClient
	Namespace: globallogic_spawn
	Checksum: 0x1D25E8A2
	Offset: 0x23F8
	Size: 0x79B
	Parameters: 1
	Flags: None
*/
function waitAndSpawnClient(timeAlreadyPassed)
{
	self endon("disconnect");
	self endon("end_respawn");
	level endon("game_ended");
	if(!isdefined(timeAlreadyPassed))
	{
		timeAlreadyPassed = 0;
	}
	spawnedAsSpectator = 0;
	if(isdefined(level.var_3a9f9a38) && level.var_3a9f9a38 && (isdefined(self.var_ebd83169) && self.var_ebd83169))
	{
		self thread coop::function_44e35f1a();
	}
	if(isdefined(self.teamKillPunish) && self.teamKillPunish)
	{
		teamKillDelay = globallogic_player::teamKillDelay();
		if(teamKillDelay > timeAlreadyPassed)
		{
			teamKillDelay = teamKillDelay - timeAlreadyPassed;
			timeAlreadyPassed = 0;
		}
		else
		{
			timeAlreadyPassed = timeAlreadyPassed - teamKillDelay;
			teamKillDelay = 0;
		}
		if(teamKillDelay > 0)
		{
			util::setLowerMessage(&"MP_FRIENDLY_FIRE_WILL_NOT", teamKillDelay);
			self thread respawn_asSpectator(self.origin + VectorScale((0, 0, 1), 60), self.angles);
			spawnedAsSpectator = 1;
			wait(teamKillDelay);
		}
		self.teamKillPunish = 0;
	}
	if(!isdefined(self.waveSpawnIndex) && isdefined(level.wavePlayerSpawnIndex[self.team]))
	{
		self.waveSpawnIndex = level.wavePlayerSpawnIndex[self.team];
		level.wavePlayerSpawnIndex[self.team]++;
	}
	timeUntilSpawn = timeUntilSpawn(0);
	if(timeUntilSpawn > timeAlreadyPassed)
	{
		timeUntilSpawn = timeUntilSpawn - timeAlreadyPassed;
		timeAlreadyPassed = 0;
	}
	else
	{
		timeAlreadyPassed = timeAlreadyPassed - timeUntilSpawn;
		timeUntilSpawn = 0;
	}
	if(timeUntilSpawn > 0)
	{
		if(level.playerQueuedRespawn)
		{
			util::setLowerMessage(game["strings"]["you_will_spawn"], timeUntilSpawn);
		}
		else if(self IsSplitscreen())
		{
			util::setLowerMessage(game["strings"]["waiting_to_spawn_ss"], timeUntilSpawn, 1);
		}
		else
		{
			util::setLowerMessage(game["strings"]["waiting_to_spawn"], timeUntilSpawn);
		}
		if(!spawnedAsSpectator)
		{
			spawnOrigin = self.origin + VectorScale((0, 0, 1), 60);
			spawnAngles = self.angles;
			if(isdefined(level.useIntermissionPointsOnWaveSpawn) && [[level.useIntermissionPointsOnWaveSpawn]]() == 1)
			{
				spawnpoint = spawnlogic::get_random_intermission_point();
				if(isdefined(spawnpoint))
				{
					spawnOrigin = spawnpoint.origin;
					spawnAngles = spawnpoint.angles;
				}
			}
			self thread respawn_asSpectator(spawnOrigin, spawnAngles);
		}
		spawnedAsSpectator = 1;
		self globallogic_utils::waitForTimeOrNotify(timeUntilSpawn, "force_spawn");
		self notify("stop_wait_safe_spawn_button");
	}
	if(isdefined(level.gametypeSpawnWaiter))
	{
		if(isdefined(level.var_bdd4d5c2) && !spawnedAsSpectator)
		{
			spawnedAsSpectator = self [[level.var_bdd4d5c2]]();
		}
		if(!spawnedAsSpectator)
		{
			self thread respawn_asSpectator(self.origin + VectorScale((0, 0, 1), 60), self.angles);
		}
		spawnedAsSpectator = 1;
		if(!self [[level.gametypeSpawnWaiter]]())
		{
			self.waitingToSpawn = 0;
			self util::clearLowerMessage();
			self.waveSpawnIndex = undefined;
			self.respawnTimerStartTime = undefined;
			return;
		}
	}
	system::wait_till("all");
	level flag::wait_till("all_players_connected");
	if(level.players.size > 0)
	{
		if(scene::should_spectate_on_join())
		{
			if(!spawnedAsSpectator)
			{
				self thread respawn_asSpectator(self.origin + VectorScale((0, 0, 1), 60), self.angles);
			}
			spawnedAsSpectator = 1;
			scene::wait_until_spectate_on_join_completes();
		}
	}
	waveBased = level.waveRespawnDelay > 0;
	if(!level.playerForceRespawn && self.hasSpawned && !waveBased && !self.wantSafeSpawn && !level.playerQueuedRespawn && !spawnedAsSpectator)
	{
		util::setLowerMessage(game["strings"]["press_to_spawn"]);
		if(!spawnedAsSpectator)
		{
			self thread respawn_asSpectator(self.origin + VectorScale((0, 0, 1), 60), self.angles);
		}
		spawnedAsSpectator = 1;
		self waitRespawnOrSafeSpawnButton();
	}
	self.waitingToSpawn = 0;
	self util::clearLowerMessage();
	self.waveSpawnIndex = undefined;
	self.respawnTimerStartTime = undefined;
	if(isdefined(self.var_acfedf1c) && self.var_acfedf1c)
	{
		self waittill("end_killcam");
	}
	self notify("hash_1528244e");
	if(isdefined(self.var_ee8c475a))
	{
		self.var_ee8c475a.alpha = 0;
	}
	self.var_ebd83169 = undefined;
	self.var_acfedf1c = undefined;
	self.var_1b7a74aa = undefined;
	self.var_ca78829f = undefined;
	self.killcamweapon = GetWeapon("none");
	self.var_8c0347ee = undefined;
	self.var_2b1ad8b = undefined;
	if(isdefined(level.var_ee7cb602) && level.var_ee7cb602)
	{
		level waittill("forever");
	}
	if(!isdefined(self.firstSpawn))
	{
		self.firstSpawn = 1;
		savegame::function_5d2cdd99();
	}
	self thread [[level.spawnPlayer]]();
}

/*
	Name: waitRespawnOrSafeSpawnButton
	Namespace: globallogic_spawn
	Checksum: 0x9406A479
	Offset: 0x2BA0
	Size: 0x47
	Parameters: 0
	Flags: None
*/
function waitRespawnOrSafeSpawnButton()
{
	self endon("disconnect");
	self endon("end_respawn");
	while(1)
	{
		if(self useButtonPressed())
		{
			break;
		}
		wait(0.05);
	}
}

/*
	Name: waitInSpawnQueue
	Namespace: globallogic_spawn
	Checksum: 0x82E3850C
	Offset: 0x2BF0
	Size: 0x8F
	Parameters: 0
	Flags: None
*/
function waitInSpawnQueue()
{
	self endon("disconnect");
	self endon("end_respawn");
	if(!level.inGracePeriod && !level.useStartSpawns)
	{
		currentorigin = self.origin;
		currentangles = self.angles;
		self thread [[level.spawnSpectator]](currentorigin + VectorScale((0, 0, 1), 60), currentangles);
		self waittill("queue_respawn");
	}
}

/*
	Name: setThirdPerson
	Namespace: globallogic_spawn
	Checksum: 0x363A78E7
	Offset: 0x2C88
	Size: 0xEB
	Parameters: 1
	Flags: None
*/
function setThirdPerson(value)
{
	if(!level.console)
	{
		return;
	}
	if(!isdefined(self.spectatingThirdPerson) || value != self.spectatingThirdPerson)
	{
		self.spectatingThirdPerson = value;
		if(value)
		{
			self SetClientThirdPerson(1);
			self setDepthOfField(0, 128, 512, 4000, 6, 1.8);
		}
		else
		{
			self SetClientThirdPerson(0);
			self setDepthOfField(0, 0, 512, 4000, 4, 0);
		}
		self resetFov();
	}
}

/*
	Name: setSpawnVariables
	Namespace: globallogic_spawn
	Checksum: 0x2B418482
	Offset: 0x2D80
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function setSpawnVariables()
{
	resetTimeout();
	self StopShellshock();
	self StopRumble("damage_heavy");
}

