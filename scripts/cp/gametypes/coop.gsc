#using scripts\cp\_achievements;
#using scripts\cp\_bb;
#using scripts\cp\_callbacks;
#using scripts\cp\_laststand;
#using scripts\cp\_skipto;
#using scripts\cp\_util;
#using scripts\cp\gametypes\_globallogic;
#using scripts\cp\gametypes\_globallogic_score;
#using scripts\cp\gametypes\_globallogic_spawn;
#using scripts\cp\gametypes\_globallogic_ui;
#using scripts\cp\gametypes\_globallogic_utils;
#using scripts\cp\gametypes\_killcam;
#using scripts\cp\gametypes\_save;
#using scripts\cp\gametypes\_spawning;
#using scripts\cp\gametypes\_spawnlogic;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\laststand_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\math_shared;
#using scripts\shared\music_shared;
#using scripts\shared\player_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace coop;

/*
	Name: init
	Namespace: coop
	Checksum: 0x1019FAED
	Offset: 0x8A0
	Size: 0x63
	Parameters: 0
	Flags: AutoExec
*/
function autoexec init()
{
	clientfield::register("playercorpse", "hide_body", 1, 1, "int");
	clientfield::register("toplayer", "killcam_menu", 1, 1, "int");
}

/*
	Name: main
	Namespace: coop
	Checksum: 0x58B61659
	Offset: 0x910
	Size: 0x373
	Parameters: 0
	Flags: None
*/
function main()
{
	globallogic::init();
	level.gametype = ToLower(GetDvarString("g_gametype"));
	util::registerRoundSwitch(0, 9);
	util::registerTimeLimit(0, 0);
	util::registerScoreLimit(0, 0);
	util::registerRoundLimit(0, 10);
	util::registerRoundWinLimit(0, 0);
	util::registerNumLives(0, 100);
	globallogic::registerFriendlyFireDelay(level.gametype, 15, 0, 1440);
	spawner::add_global_spawn_function("axis", &function_54ba8dfa);
	level.scoreRoundWinBased = GetGametypeSetting("cumulativeRoundScores") == 0;
	level.teamScorePerKill = GetGametypeSetting("teamScorePerKill");
	level.teamScorePerDeath = GetGametypeSetting("teamScorePerDeath");
	level.teamScorePerHeadshot = GetGametypeSetting("teamScorePerHeadshot");
	level.teambased = 1;
	level.overrideTeamScore = 1;
	level.onStartGameType = &onStartGameType;
	level.onSpawnPlayer = &onSpawnPlayer;
	level.onSpawnPlayerUnified = undefined;
	level.onPlayerKilled = &onPlayerKilled;
	level.gametypeSpawnWaiter = &function_fad7287a;
	level.var_bdd4d5c2 = &spawnedAsSpectator;
	level thread function_a67d9d08();
	level.disablePrematchMessages = 1;
	level.endGameOnScoreLimit = 0;
	level.endGameOnTimeLimit = 0;
	level.onTimeLimit = &globallogic::blank;
	level.onScoreLimit = &globallogic::blank;
	gameobjects::register_allowed_gameobject(level.gametype);
	game["dialog"]["gametype"] = "coop_start";
	game["dialog"]["gametype_hardcore"] = "hccoop_start";
	game["dialog"]["offense_obj"] = "generic_boost";
	game["dialog"]["defense_obj"] = "generic_boost";
	setscoreboardcolumns("score", "kills", "assists", "incaps", "revives");
}

/*
	Name: function_54ba8dfa
	Namespace: coop
	Checksum: 0x67F88810
	Offset: 0xC90
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_54ba8dfa()
{
	level Spawning::create_enemy_influencer("enemy_spawn", self.origin, "allies");
	self Spawning::create_entity_enemy_influencer("enemy", "allies");
}

/*
	Name: function_79eba3d6
	Namespace: coop
	Checksum: 0x8F80E6A3
	Offset: 0xCF8
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function function_79eba3d6(time)
{
	self endon("death_or_disconnect");
	wait(time);
	self DisableInvulnerability();
}

/*
	Name: function_642c1545
	Namespace: coop
	Checksum: 0xC268D551
	Offset: 0xD38
	Size: 0x203
	Parameters: 0
	Flags: None
*/
function function_642c1545()
{
	self function_906ef162();
	if(skipto::function_52c50cb8() != -1)
	{
		self function_892bf421(skipto::function_52c50cb8(), "checkpoint_restores", 1);
	}
	if(isdefined(self.primaryWeapon))
	{
	}
	else
	{
	}
	primaryWeapon = level.weaponNone;
	if(isdefined(self.secondaryWeapon))
	{
	}
	else
	{
	}
	secondaryWeapon = level.weaponNone;
	if(isdefined(self.grenadeTypePrimary))
	{
	}
	else
	{
	}
	grenadeTypePrimary = level.weaponNone;
	if(isdefined(self.grenadeTypeSecondary))
	{
	}
	else
	{
	}
	grenadeTypeSecondary = level.weaponNone;
	self.killstreak = [];
	for(i = 0; i < 3; i++)
	{
		if(level.loadoutKillstreaksEnabled && isdefined(self.killstreak[i]) && isdefined(level.killstreakindices[self.killstreak[i]]))
		{
			killstreaks[i] = level.killstreakindices[self.killstreak[i]];
			continue;
		}
		killstreaks[i] = 0;
	}
	self RecordLoadoutPerksAndKillstreaks(primaryWeapon, secondaryWeapon, grenadeTypePrimary, grenadeTypeSecondary, killstreaks[0], killstreaks[1], killstreaks[2]);
}

/*
	Name: function_a67d9d08
	Namespace: coop
	Checksum: 0xC2B65F4D
	Offset: 0xF48
	Size: 0x2B5
	Parameters: 0
	Flags: None
*/
function function_a67d9d08()
{
	while(1)
	{
		level waittill("save_restore");
		music::setmusicstate("death");
		util::function_459ff829();
		level thread LUI::screen_fade(1.25, 0, 1, "black", 1);
		MatchRecorderIncrementHeaderStat("checkpointRestoreCount", 1);
		foreach(player in level.players)
		{
			player CloseMenu(game["menu_start_menu"]);
			if(player flagsys::get("mobile_armory_in_use"))
			{
				player notify("menuresponse", "ChooseClass_InGame", "cancel");
			}
			player CloseMenu(game["menu_changeclass"]);
			player CloseMenu(game["menu_changeclass_offline"]);
			if(player.sessionstate == "spectator")
			{
				if(!isdefined(player.curClass))
				{
					player thread globallogic_ui::beginClassChoice();
				}
				else
				{
					player thread globallogic_spawn::waitAndSpawnClient();
				}
			}
			else if(player laststand::player_is_in_laststand())
			{
				player notify("auto_revive");
			}
			var_a7283d73 = player EnableInvulnerability();
			if(!var_a7283d73)
			{
				player thread function_79eba3d6(3);
			}
			if(!(isdefined(world.var_bf966ebd) && world.var_bf966ebd))
			{
				world.var_bf966ebd = 1;
			}
			player function_642c1545();
		}
	}
}

/*
	Name: onStartGameType
	Namespace: coop
	Checksum: 0x2458E6C8
	Offset: 0x1208
	Size: 0x3B1
	Parameters: 0
	Flags: None
*/
function onStartGameType()
{
	setClientNameMode("auto_change");
	if(!isdefined(game["switchedsides"]))
	{
		game["switchedsides"] = 0;
	}
	if(game["switchedsides"])
	{
		oldAttackers = game["attackers"];
		oldDefenders = game["defenders"];
		game["attackers"] = oldDefenders;
		game["defenders"] = oldAttackers;
	}
	level.displayRoundEndText = 0;
	Spawning::create_map_placed_influencers();
	level.spawnMins = (0, 0, 0);
	level.spawnMaxs = (0, 0, 0);
	foreach(team in level.var_f9f79134)
	{
		util::setObjectiveText(team, &"OBJECTIVES_COOP");
		util::setObjectiveHintText(team, &"OBJECTIVES_COOP_HINT");
		util::setObjectiveScoreText(team, &"OBJECTIVES_COOP");
	}
	level.mapCenter = math::find_box_center(level.spawnMins, level.spawnMaxs);
	setMapCenter(level.mapCenter);
	spawnpoint = spawnlogic::get_random_intermission_point();
	setDemoIntermissionPoint(spawnpoint.origin, spawnpoint.angles);
	level thread function_7185e36b();
	spawnlogic::add_spawn_points("allies", "cp_coop_spawn");
	Spawning::updateAllSpawnPoints();
	level flag::wait_till("first_player_spawned");
	if(!level flagsys::get("level_has_skiptos"))
	{
		spawnlogic::clear_spawn_points();
		spawnlogic::add_spawn_points("allies", "cp_coop_spawn");
		spawnlogic::add_spawn_points("allies", "cp_coop_respawn");
		Spawning::updateAllSpawnPoints();
	}
	foreach(player in level.players)
	{
		bb::logobjectivestatuschange("_level", player, "start");
	}
}

/*
	Name: onSpawnPlayer
	Namespace: coop
	Checksum: 0x536B7693
	Offset: 0x15C8
	Size: 0x183
	Parameters: 2
	Flags: None
*/
function onSpawnPlayer(predictedSpawn, question)
{
	if(!isdefined(predictedSpawn))
	{
		predictedSpawn = 0;
	}
	PixBeginEvent("COOP:onSpawnPlayer");
	self.usingObj = undefined;
	if(isdefined(question))
	{
		question = 1;
	}
	if(isdefined(question))
	{
		question = -1;
	}
	spawnpoint = Spawning::getSpawnPoint(self, predictedSpawn);
	if(predictedSpawn)
	{
		self predictSpawnPoint(spawnpoint["origin"], spawnpoint["angles"]);
		self.var_b1c4b4dc = spawnpoint;
	}
	else if(isdefined(self.var_10aaa336))
	{
		spawnpoint["origin"] = self.var_10aaa336;
		self.var_10aaa336 = undefined;
	}
	if(isdefined(self.var_7e4a3c90))
	{
		spawnpoint["angles"] = self.var_7e4a3c90;
		self.var_7e4a3c90 = undefined;
	}
	self spawn(spawnpoint["origin"], spawnpoint["angles"], "coop");
	self thread function_51525e38();
	PixEndEvent();
}

/*
	Name: onScoreCloseMusic
	Namespace: coop
	Checksum: 0x7ACA4115
	Offset: 0x1758
	Size: 0x1BB
	Parameters: 0
	Flags: None
*/
function onScoreCloseMusic()
{
	teamScores = [];
	while(!level.gameEnded)
	{
		scoreLimit = level.scoreLimit;
		scoreThreshold = scoreLimit * 0.1;
		scoreThresholdStart = Abs(scoreLimit - scoreThreshold);
		scoreLimitCheck = scoreLimit - 10;
		topScore = 0;
		runnerUpScore = 0;
		foreach(team in level.teams)
		{
			score = [[level._getTeamScore]](team);
			if(score > topScore)
			{
				runnerUpScore = topScore;
				topScore = score;
				continue;
			}
			if(score > runnerUpScore)
			{
				runnerUpScore = score;
			}
		}
		scoreDif = topScore - runnerUpScore;
		if(scoreDif <= scoreThreshold && scoreThresholdStart <= topScore)
		{
			return;
		}
		wait(1);
	}
}

/*
	Name: onPlayerKilled
	Namespace: coop
	Checksum: 0xA513346D
	Offset: 0x1920
	Size: 0x453
	Parameters: 9
	Flags: None
*/
function onPlayerKilled(eInflictor, attacker, iDamage, sMeansOfDeath, weapon, vDir, sHitLoc, psOffsetTime, deathAnimDuration)
{
	self CloseMenu(game["menu_changeclass"]);
	attacker globallogic_score::giveTeamScoreForObjective(attacker.team, level.teamScorePerKill);
	self globallogic_score::giveTeamScoreForObjective(self.team, level.teamScorePerDeath * -1);
	if(sMeansOfDeath == "MOD_HEAD_SHOT")
	{
		attacker globallogic_score::giveTeamScoreForObjective(attacker.team, level.teamScorePerHeadshot);
	}
	if(!SessionModeIsCampaignZombiesGame() && (!isdefined(level.is_safehouse) && level.is_safehouse))
	{
		/#
			Assert(isdefined(level.laststandpistol));
		#/
		self TakeWeapon(level.laststandpistol);
		Primaries = self GetWeaponsListPrimaries();
		if(isdefined(Primaries))
		{
			foreach(primary_weapon in Primaries)
			{
				if(primary_weapon !== self.secondaryLoadoutWeapon)
				{
					self._current_weapon = primary_weapon;
					break;
				}
			}
		}
		self player::take_weapons();
		self savegame::function_bee608f0("saved_weapon", self._current_weapon.name);
		self savegame::function_bee608f0("saved_weapondata", self._weapons);
		self._weapons = undefined;
		self.gun_removed = undefined;
	}
	if(!(isdefined(level.is_safehouse) && level.is_safehouse))
	{
		if(isdefined(level.var_ad1a71f5))
		{
			return;
		}
		level.dead_player = self;
		if(self.lives === 0 && self function_76f34311("cybercom_emergencyreserve") != 0)
		{
			self.lives = 1;
			self function_b26abbde("lives", self.lives);
		}
		if(level.players.size == 1)
		{
			self playsoundtoplayer("evt_death_down", self);
			if(isdefined(level.var_d59daf8) && level.var_d59daf8)
			{
				self.var_e8880dea = 1;
				if(isdefined(level.var_3a9f9a38) && level.var_3a9f9a38 && (isdefined(self.var_ebd83169) && self.var_ebd83169))
				{
					self thread function_c14603ce();
				}
				self util::waittill_any_timeout(5, "cp_deathcam_ended");
			}
			level thread function_5ed5738a(undefined, undefined);
		}
		else if(level.gameskill >= 2)
		{
			playsoundatposition("evt_death_down", (0, 0, 0));
			level thread function_5ed5738a(&"GAME_YOU_DIED");
		}
	}
}

/*
	Name: function_5ed5738a
	Namespace: coop
	Checksum: 0x7719132D
	Offset: 0x1D80
	Size: 0x59B
	Parameters: 2
	Flags: None
*/
function function_5ed5738a(var_b90e5c2c, var_c878636f)
{
	level.var_ad1a71f5 = 1;
	foreach(player in level.players)
	{
		player util::show_hud(0);
		bb::logobjectivestatuschange(level.skipto_point, player, "restart");
		player util::freeze_player_controls(1);
		player.var_c8430b0a = 1;
		if(isdefined(var_b90e5c2c))
		{
			var_e13f49eb = 1;
			player.var_c8656312 = player OpenLUIMenu("CPMissionFailed");
			if(var_b90e5c2c == &"GAME_YOU_DIED")
			{
				if(player == level.dead_player)
				{
					player thread displayPlayerDead();
				}
				else
				{
					player thread displayTeammateDead(level.dead_player);
				}
				player SetLUIMenuData(player.var_c8656312, "MissionFailReason", "");
			}
			else
			{
				player SetLUIMenuData(player.var_c8656312, "MissionFailReason", var_b90e5c2c);
			}
			if(!isdefined(var_c878636f))
			{
				var_c878636f = "";
			}
			player SetLUIMenuData(player.var_c8656312, "MissionFailHint", var_c878636f);
		}
	}
	if(isdefined(var_e13f49eb))
	{
		wait(3.8);
	}
	var_d5b5f12 = 1.25;
	if(isdefined(level.dead_player))
	{
		if(isdefined(level.var_3a9f9a38) && level.var_3a9f9a38)
		{
			foreach(player in level.players)
			{
				if(isdefined(player.var_acfedf1c) && player.var_acfedf1c)
				{
					level.dead_player util::waittill_any("end_killcam", "fade_out_killcam");
					if(isdefined(level.dead_player.var_1c362abb))
					{
						var_d5b5f12 = level.dead_player.var_1c362abb;
					}
				}
			}
		}
		level thread LUI::screen_fade(var_d5b5f12, 1, 0, "black", 0);
		wait(var_d5b5f12);
		screen_faded = 1;
		if(isdefined(level.var_3a9f9a38) && level.var_3a9f9a38)
		{
			foreach(player in level.players)
			{
				if(isdefined(player.var_acfedf1c) && player.var_acfedf1c)
				{
					player clientfield::set_to_player("killcam_menu", 0);
				}
			}
		}
	}
	else if(!isdefined(screen_faded))
	{
		level thread LUI::screen_fade(var_d5b5f12, 1, 0, "black", 0);
		wait(var_d5b5f12);
	}
	if(isdefined(level.gameEnded) && level.gameEnded)
	{
		wait(1000);
	}
	foreach(player in level.players)
	{
		player notify("hash_1528244e");
		player CameraActivate(0);
		player util::freeze_player_controls(0);
	}
	function_ada65d6b();
	wait(0.5);
	map_restart();
}

/*
	Name: displayPlayerDead
	Namespace: coop
	Checksum: 0xCB4A30DD
	Offset: 0x2328
	Size: 0x12F
	Parameters: 0
	Flags: None
*/
function displayPlayerDead()
{
	wait(1.2);
	self.player_dead = newClientHudElem(self);
	self.player_dead.alignX = "center";
	self.player_dead.alignY = "middle";
	self.player_dead.horzAlign = "center";
	self.player_dead.vertAlign = "middle";
	self.player_dead.foreground = 1;
	self.player_dead.fontscale = 2;
	self.player_dead.alpha = 0;
	self.player_dead.color = (1, 1, 1);
	self.player_dead setText(&"GAME_YOU_DIED");
	self.player_dead fadeOverTime(1);
	self.player_dead.alpha = 1;
}

/*
	Name: displayTeammateDead
	Namespace: coop
	Checksum: 0xA259A4E0
	Offset: 0x2460
	Size: 0x13F
	Parameters: 1
	Flags: None
*/
function displayTeammateDead(dead_teammate)
{
	wait(1);
	self.teammate_dead = newClientHudElem(self);
	self.teammate_dead.alignX = "center";
	self.teammate_dead.alignY = "middle";
	self.teammate_dead.horzAlign = "center";
	self.teammate_dead.vertAlign = "middle";
	self.teammate_dead.foreground = 1;
	self.teammate_dead.fontscale = 2;
	self.teammate_dead.alpha = 0;
	self.teammate_dead.color = (1, 1, 1);
	self.teammate_dead setText(&"GAME_TEAMMATE_DIED", dead_teammate);
	self.teammate_dead fadeOverTime(1);
	self.teammate_dead.alpha = 1;
}

/*
	Name: function_c14603ce
	Namespace: coop
	Checksum: 0x1649B21E
	Offset: 0x25A8
	Size: 0xE9
	Parameters: 0
	Flags: None
*/
function function_c14603ce()
{
	self endon("disconnect");
	self endon("hash_1528244e");
	level endon("game_ended");
	self clientfield::set_to_player("killcam_menu", 1);
	/#
		PrintTopRightln("Dev Block strings are not supported", (1, 0, 1));
	#/
	while(self useButtonPressed())
	{
		wait(0.05);
	}
	while(!self useButtonPressed())
	{
		wait(0.05);
	}
	self.var_acfedf1c = 1;
	self clientfield::set_to_player("killcam_menu", 0);
	self notify("hash_261f3a82");
}

/*
	Name: function_e82a1210
	Namespace: coop
	Checksum: 0x578E4791
	Offset: 0x26A0
	Size: 0x187
	Parameters: 0
	Flags: None
*/
function function_e82a1210()
{
	if(!isdefined(self.var_ee8c475a))
	{
		self.var_ee8c475a = newClientHudElem(self);
		self.var_ee8c475a.archived = 0;
		self.var_ee8c475a.x = 0;
		self.var_ee8c475a.alignX = "center";
		self.var_ee8c475a.alignY = "middle";
		self.var_ee8c475a.horzAlign = "center";
		self.var_ee8c475a.vertAlign = "bottom";
		self.var_ee8c475a.sort = 1;
		self.var_ee8c475a.font = "objective";
	}
	if(self IsSplitscreen())
	{
		self.var_ee8c475a.y = -100;
		self.var_ee8c475a.fontscale = 1;
	}
	else
	{
		self.var_ee8c475a.y = -180;
		self.var_ee8c475a.fontscale = 1.5;
	}
	self.var_ee8c475a setText(&"MENU_CP_KILLCAM_PROMPT");
	self.var_ee8c475a.alpha = 1;
}

/*
	Name: function_44e35f1a
	Namespace: coop
	Checksum: 0x2C0E4C8A
	Offset: 0x2830
	Size: 0x193
	Parameters: 0
	Flags: None
*/
function function_44e35f1a()
{
	self endon("disconnect");
	self endon("hash_1528244e");
	self endon("end_respawn");
	level endon("game_ended");
	self function_e82a1210();
	/#
		PrintTopRightln("Dev Block strings are not supported", (1, 0, 1));
	#/
	while(self useButtonPressed())
	{
		wait(0.05);
	}
	while(!self useButtonPressed())
	{
		wait(0.05);
	}
	self.var_acfedf1c = 1;
	self.var_ee8c475a.alpha = 0;
	if(isdefined(level.var_3a9f9a38) && level.var_3a9f9a38)
	{
		killcamentitystarttime = 0;
		PERKS = [];
		killstreaks = [];
		self killcam::killcam(self GetEntityNumber(), self GetEntityNumber(), self.var_ca78829f, self.var_1b7a74aa, killcamentitystarttime, self.killcamweapon, self.deathtime, self.var_8c0347ee, self.var_2b1ad8b, 1, undefined, PERKS, killstreaks, self);
	}
}

/*
	Name: function_6dc12009
	Namespace: coop
	Checksum: 0xADC7C4BE
	Offset: 0x29D0
	Size: 0x1D3
	Parameters: 0
	Flags: None
*/
function function_6dc12009()
{
	if(!(isdefined(level.var_ee7cb602) && level.var_ee7cb602))
	{
		foreach(player in level.players)
		{
			if(player != self && player.sessionstate != "dead" && player.sessionstate != "spectator" && (!isdefined(player.laststand) && player.laststand))
			{
				return;
			}
		}
	}
	else if(!(isdefined(level.level_ending) && level.level_ending))
	{
		if(isdefined(self) && self.lives === 0 && self function_76f34311("cybercom_emergencyreserve") != 0)
		{
			self.lives = 1;
			self function_b26abbde("lives", self.lives);
		}
		level thread function_5ed5738a();
	}
	level.level_ending = 1;
	/#
		if(!(isdefined(level.level_ending) && level.level_ending))
		{
			errormsg("Dev Block strings are not supported");
		}
	#/
}

/*
	Name: function_fad7287a
	Namespace: coop
	Checksum: 0x2E80BC7C
	Offset: 0x2BB0
	Size: 0x11F
	Parameters: 0
	Flags: None
*/
function function_fad7287a()
{
	self notify("hash_e5088dc8");
	self endon("hash_e5088dc8");
	if(isdefined(level.is_safehouse) && level.is_safehouse || (isdefined(level.inPrematchPeriod) && level.inPrematchPeriod) || !isdefined(self.var_a90a3829))
	{
		self.var_a90a3829 = 1;
		return 1;
	}
	if(self IsSplitscreen())
	{
		util::setLowerMessage(game["strings"]["waiting_to_spawn_ss"], 15, 1);
	}
	else
	{
		util::setLowerMessage(game["strings"]["waiting_to_spawn"], 15);
	}
	level util::waittill_any_timeout(15, "objective_changed");
	return 1;
}

/*
	Name: function_7185e36b
	Namespace: coop
	Checksum: 0xB4AF9A96
	Offset: 0x2CD8
	Size: 0xFD
	Parameters: 0
	Flags: None
*/
function function_7185e36b()
{
	level flag::wait_till("all_players_spawned");
	while(1)
	{
		level waittill("hash_4b5852e7");
		foreach(player in level.players)
		{
			if(player.sessionstate == "spectator" && globallogic_utils::isValidClass(player.curClass))
			{
				player globallogic_spawn::waitAndSpawnClient();
			}
		}
	}
}

/*
	Name: spawnedAsSpectator
	Namespace: coop
	Checksum: 0x824977DE
	Offset: 0x2DE0
	Size: 0x17
	Parameters: 0
	Flags: None
*/
function spawnedAsSpectator()
{
	if(!isdefined(self.var_a90a3829))
	{
		return 1;
	}
	return 0;
}

/*
	Name: function_e9f7384d
	Namespace: coop
	Checksum: 0xC7BFB4C9
	Offset: 0x2E00
	Size: 0x2B5
	Parameters: 0
	Flags: None
*/
function function_e9f7384d()
{
	self endon("death");
	self endon("disconnect");
	if(isdefined(self.currentWeapon.isHeroWeapon) && self.currentWeapon.isHeroWeapon)
	{
		return;
	}
	a_weaponlist = self GetWeaponsList();
	var_961f11b8 = [];
	foreach(weapon in a_weaponlist)
	{
		if(isdefined(weapon.isHeroWeapon) && weapon.isHeroWeapon)
		{
			if(!isdefined(var_961f11b8))
			{
				var_961f11b8 = [];
			}
			else if(!IsArray(var_961f11b8))
			{
				var_961f11b8 = Array(var_961f11b8);
			}
			var_961f11b8[var_961f11b8.size] = weapon;
		}
	}
	w_hero = var_961f11b8[0];
	if(isdefined(w_hero))
	{
		if(self GetWeaponAmmoClip(w_hero) + self GetWeaponAmmoStock(w_hero) > 0)
		{
			if(isdefined(self.var_928b1776))
			{
				if(GetTime() - self.var_928b1776 > 90000)
				{
					switch(w_hero.rootweapon.name)
					{
						case "launcher_standard":
						{
							if(self.var_9b416318 < 5)
							{
								self util::show_hint_text(&"COOP_EQUIP_XM53");
							}
							break;
						}
						case "spike_launcher":
						{
							if(self.var_9b416318 < 10)
							{
								self util::show_hint_text(&"COOP_EQUIP_SPIKE_LAUNCHER");
							}
							break;
						}
						case "micromissile_launcher":
						{
							if(self.var_9b416318 < 10)
							{
								self util::show_hint_text(&"COOP_EQUIP_MICROMISSILE");
							}
							break;
						}
					}
				}
			}
		}
	}
}

/*
	Name: function_51525e38
	Namespace: coop
	Checksum: 0x8DA56E8A
	Offset: 0x30C0
	Size: 0xF5
	Parameters: 0
	Flags: None
*/
function function_51525e38()
{
	self notify("hash_dc0f8e82");
	self endon("death");
	self endon("hash_dc0f8e82");
	var_a151e229 = 0;
	while(1)
	{
		self waittill("weapon_change", e_weapon);
		if(isdefined(e_weapon))
		{
			if(isdefined(e_weapon.isHeroWeapon) && e_weapon.isHeroWeapon)
			{
				if(!isdefined(self.var_9b416318))
				{
					self.var_9b416318 = 0;
				}
				self thread function_e9b4a63b();
				var_a151e229 = 1;
			}
			else if(var_a151e229)
			{
				self.var_928b1776 = GetTime();
			}
			self notify("hash_79135cb3");
			var_a151e229 = 0;
		}
	}
}

/*
	Name: function_e9b4a63b
	Namespace: coop
	Checksum: 0x91BFA7B
	Offset: 0x31C0
	Size: 0x6F
	Parameters: 0
	Flags: None
*/
function function_e9b4a63b()
{
	self endon("death");
	self endon("hash_79135cb3");
	while(1)
	{
		self waittill("weapon_fired", e_weapon);
		if(isdefined(e_weapon.isHeroWeapon) && e_weapon.isHeroWeapon)
		{
			self.var_9b416318++;
		}
	}
}

