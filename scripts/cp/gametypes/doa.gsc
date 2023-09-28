#using scripts\cp\_callbacks;
#using scripts\cp\_skipto;
#using scripts\cp\_util;
#using scripts\cp\gametypes\_globallogic;
#using scripts\cp\gametypes\_globallogic_score;
#using scripts\cp\gametypes\_spawning;
#using scripts\cp\gametypes\_spawnlogic;
#using scripts\shared\ai\margwa;
#using scripts\shared\flag_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\math_shared;
#using scripts\shared\system_shared;
#using scripts\shared\throttle_shared;

#namespace doa;

/*
	Name: ignore_systems
	Namespace: doa
	Checksum: 0x906F51FC
	Offset: 0x350
	Size: 0x17B
	Parameters: 0
	Flags: AutoExec
*/
function autoexec ignore_systems()
{
	level.var_be177839 = "";
	system::Ignore("cybercom");
	system::Ignore("healthoverlay");
	system::Ignore("challenges");
	system::Ignore("rank");
	system::Ignore("hacker_tool");
	system::Ignore("grapple");
	system::Ignore("replay_gun");
	system::Ignore("riotshield");
	system::Ignore("oed");
	system::Ignore("explosive_bolt");
	system::Ignore("empgrenade");
	system::Ignore("spawning");
	system::Ignore("save");
	system::Ignore("hud_message");
	system::Ignore("friendlyfire");
}

/*
	Name: main
	Namespace: doa
	Checksum: 0x5FCC44BF
	Offset: 0x4D8
	Size: 0x2CF
	Parameters: 0
	Flags: None
*/
function main()
{
	level.var_e2c19907 = 1;
	globallogic::init();
	level.gametype = ToLower(GetDvarString("g_gametype"));
	util::registerRoundSwitch(0, 9);
	util::registerTimeLimit(0, 0);
	util::registerScoreLimit(0, 0);
	util::registerRoundLimit(0, 10);
	util::registerRoundWinLimit(0, 0);
	util::registerNumLives(0, 100);
	globallogic::registerFriendlyFireDelay(level.gametype, 15, 0, 1440);
	level.scoreRoundWinBased = 0;
	level.teamScorePerKill = 0;
	level.teamScorePerDeath = 0;
	level.teamScorePerHeadshot = 0;
	level.teambased = 1;
	level.overrideTeamScore = 1;
	level.onStartGameType = &onStartGameType;
	level.onSpawnPlayer = &onSpawnPlayer;
	level.onPlayerKilled = &onPlayerKilled;
	level.playerMaySpawn = &function_16220a9c;
	level.gametypeSpawnWaiter = &function_fad7287a;
	level.noScavenger = 1;
	level.disablePrematchMessages = 1;
	level.endGameOnScoreLimit = 0;
	level.endGameOnTimeLimit = 0;
	level.onTimeLimit = &globallogic::blank;
	level.onScoreLimit = &globallogic::blank;
	level.onEndGame = &onEndGame;
	gameobjects::register_allowed_gameobject("coop");
	setscoreboardcolumns("kills", "gems", "skulls", "chickens", "deaths");
	if(!isdefined(level.gib_throttle))
	{
		function_9b385ca5();
		level.gib_throttle = Throttle;
	}
	Initialize(level.gib_throttle, 5);
}

/*
	Name: onStartGameType
	Namespace: doa
	Checksum: 0x4677315D
	Offset: 0x7B0
	Size: 0x207
	Parameters: 0
	Flags: None
*/
function onStartGameType()
{
	level.displayRoundEndText = 0;
	setClientNameMode("auto_change");
	game["switchedsides"] = 0;
	level.spawnMins = (0, 0, 0);
	level.spawnMaxs = (0, 0, 0);
	foreach(team in level.var_f9f79134)
	{
		util::setObjectiveText(team, &"OBJECTIVES_COOP");
		util::setObjectiveHintText(team, &"OBJECTIVES_COOP_HINT");
		util::setObjectiveScoreText(team, &"OBJECTIVES_COOP");
		spawnlogic::add_spawn_points(team, "cp_coop_spawn");
		spawnlogic::add_spawn_points(team, "cp_coop_respawn");
	}
	Spawning::updateAllSpawnPoints();
	level.mapCenter = math::find_box_center(level.spawnMins, level.spawnMaxs);
	setMapCenter(level.mapCenter);
	spawnpoint = spawnlogic::get_random_intermission_point();
	setDemoIntermissionPoint(spawnpoint.origin, spawnpoint.angles);
	level.zombie_use_zigzag_path = 1;
}

/*
	Name: onSpawnPlayer
	Namespace: doa
	Checksum: 0xF9E97F2D
	Offset: 0x9C0
	Size: 0x3B
	Parameters: 2
	Flags: None
*/
function onSpawnPlayer(predictedSpawn, question)
{
	PixBeginEvent("COOP:onSpawnPlayer");
	PixEndEvent();
}

/*
	Name: onEndGame
	Namespace: doa
	Checksum: 0x497B97D5
	Offset: 0xA08
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function onEndGame(winningTeam)
{
	exitLevel(0);
}

/*
	Name: onPlayerKilled
	Namespace: doa
	Checksum: 0xA0EC98E8
	Offset: 0xA38
	Size: 0x4B
	Parameters: 9
	Flags: None
*/
function onPlayerKilled(eInflictor, attacker, iDamage, sMeansOfDeath, weapon, vDir, sHitLoc, psOffsetTime, deathAnimDuration)
{
}

/*
	Name: function_fad7287a
	Namespace: doa
	Checksum: 0x8DD79B36
	Offset: 0xA90
	Size: 0x7
	Parameters: 0
	Flags: None
*/
function function_fad7287a()
{
	return 1;
}

/*
	Name: function_16220a9c
	Namespace: doa
	Checksum: 0xB4B721C
	Offset: 0xAA0
	Size: 0x7
	Parameters: 0
	Flags: None
*/
function function_16220a9c()
{
	return 1;
}

