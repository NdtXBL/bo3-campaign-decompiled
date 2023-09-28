#using scripts\cp\_util;
#using scripts\cp\gametypes\_globallogic;
#using scripts\cp\gametypes\_globallogic_player;
#using scripts\cp\gametypes\_loadout;
#using scripts\cp\gametypes\_save;
#using scripts\cp\gametypes\_spectating;
#using scripts\cp\teams\_teams;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\hud_util_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\string_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace globallogic_ui;

/*
	Name: init
	Namespace: globallogic_ui
	Checksum: 0xBCCF1CF4
	Offset: 0x658
	Size: 0x17B
	Parameters: 0
	Flags: None
*/
function init()
{
	callback::add_callback("hash_bc12b61f", &on_player_spawn);
	clientfield::register("clientuimodel", "hudItems.cybercoreSelectMenuDisabled", 1, 1, "int");
	clientfield::register("clientuimodel", "hudItems.playerInCombat", 1, 1, "int");
	clientfield::register("clientuimodel", "playerAbilities.repulsorIndicatorDirection", 1, 2, "int");
	clientfield::register("clientuimodel", "playerAbilities.repulsorIndicatorIntensity", 1, 2, "int");
	clientfield::register("clientuimodel", "playerAbilities.proximityIndicatorDirection", 1, 2, "int");
	clientfield::register("clientuimodel", "playerAbilities.proximityIndicatorIntensity", 1, 2, "int");
	clientfield::register("clientuimodel", "serverDifficulty", 1, 3, "int");
}

/*
	Name: on_player_spawn
	Namespace: globallogic_ui
	Checksum: 0xA330C9A5
	Offset: 0x7E0
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function on_player_spawn()
{
	self thread function_79bc3ebf();
	/#
		Assert(isdefined(level.gameskill));
	#/
	self clientfield::set_player_uimodel("serverDifficulty", level.gameskill);
}

/*
	Name: function_77f47965
	Namespace: globallogic_ui
	Checksum: 0x6C74607D
	Offset: 0x850
	Size: 0x19F
	Parameters: 1
	Flags: None
*/
function function_77f47965(var_58fe21e1)
{
	ais = GetAITeamArray("axis");
	ais = ArrayCombine(ais, GetAITeamArray("team3"), 0, 0);
	foreach(ai in ais)
	{
		if(IsSentient(ai))
		{
			if(ai AttackedRecently(var_58fe21e1, 10))
			{
				return 1;
				continue;
			}
			if(ai.enemy === var_58fe21e1 && isdefined(ai.weapon) && ai.weapon.name === "none" && DistanceSquared(ai.origin, var_58fe21e1.origin) < 240 * 240)
			{
				return 1;
			}
		}
	}
	return 0;
}

/*
	Name: function_e172c2eb
	Namespace: globallogic_ui
	Checksum: 0x1D89981B
	Offset: 0x9F8
	Size: 0x115
	Parameters: 1
	Flags: None
*/
function function_e172c2eb(var_58fe21e1)
{
	ais = GetAITeamArray("axis");
	ais = ArrayCombine(ais, GetAITeamArray("team3"), 0, 0);
	foreach(ai in ais)
	{
		if(IsSentient(ai))
		{
			if(ai LastKnownTime(var_58fe21e1) + 4000 >= GetTime())
			{
				return 1;
			}
		}
	}
	return 0;
}

/*
	Name: function_6afb24d5
	Namespace: globallogic_ui
	Checksum: 0x58DB2E83
	Offset: 0xB18
	Size: 0x27
	Parameters: 1
	Flags: None
*/
function function_6afb24d5(var_58fe21e1)
{
	return var_58fe21e1.health < var_58fe21e1.maxhealth;
}

/*
	Name: function_79bc3ebf
	Namespace: globallogic_ui
	Checksum: 0x35313C8A
	Offset: 0xB48
	Size: 0x97
	Parameters: 0
	Flags: None
*/
function function_79bc3ebf()
{
	self endon("hash_50d14846");
	self endon("disconnect");
	while(1)
	{
		if(function_6afb24d5(self) || function_77f47965(self))
		{
			self clientfield::set_player_uimodel("hudItems.playerInCombat", 1);
		}
		else
		{
			self clientfield::set_player_uimodel("hudItems.playerInCombat", 0);
		}
		wait(0.5);
	}
}

/*
	Name: SetupCallbacks
	Namespace: globallogic_ui
	Checksum: 0x9D2CA19F
	Offset: 0xBE8
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function SetupCallbacks()
{
	level.autoassign = &menuAutoAssign;
	level.Spectator = &menuSpectator;
	level.curClass = &menuClass;
	level.teamMenu = &menuTeam;
}

/*
	Name: freeGameplayHudElems
	Namespace: globallogic_ui
	Checksum: 0xE5B262B4
	Offset: 0xC58
	Size: 0x27B
	Parameters: 0
	Flags: None
*/
function freeGameplayHudElems()
{
	if(isdefined(self.perkicon))
	{
		for(numSpecialties = 0; numSpecialties < level.maxSpecialties; numSpecialties++)
		{
			if(isdefined(self.perkicon[numSpecialties]))
			{
				self.perkicon[numSpecialties] hud::destroyElem();
				self.perkname[numSpecialties] hud::destroyElem();
			}
		}
	}
	else if(isdefined(self.perkHudelem))
	{
		self.perkHudelem hud::destroyElem();
	}
	if(isdefined(self.killstreakicon))
	{
		if(isdefined(self.killstreakicon[0]))
		{
			self.killstreakicon[0] hud::destroyElem();
		}
		if(isdefined(self.killstreakicon[1]))
		{
			self.killstreakicon[1] hud::destroyElem();
		}
		if(isdefined(self.killstreakicon[2]))
		{
			self.killstreakicon[2] hud::destroyElem();
		}
		if(isdefined(self.killstreakicon[3]))
		{
			self.killstreakicon[3] hud::destroyElem();
		}
		if(isdefined(self.killstreakicon[4]))
		{
			self.killstreakicon[4] hud::destroyElem();
		}
	}
	if(isdefined(self.lowerMessage))
	{
		self.lowerMessage hud::destroyElem();
	}
	if(isdefined(self.lowerTimer))
	{
		self.lowerTimer hud::destroyElem();
	}
	if(isdefined(self.proxBar))
	{
		self.proxBar hud::destroyElem();
	}
	if(isdefined(self.proxBarText))
	{
		self.proxBarText hud::destroyElem();
	}
	if(isdefined(self.carryIcon))
	{
		self.carryIcon hud::destroyElem();
	}
}

/*
	Name: teamPlayerCountsEqual
	Namespace: globallogic_ui
	Checksum: 0x7FE78B3E
	Offset: 0xEE0
	Size: 0xC5
	Parameters: 1
	Flags: None
*/
function teamPlayerCountsEqual(playerCounts)
{
	count = undefined;
	foreach(team in level.teams)
	{
		if(!isdefined(count))
		{
			count = playerCounts[team];
			continue;
		}
		if(count != playerCounts[team])
		{
			return 0;
		}
	}
	return 1;
}

/*
	Name: teamWithLowestPlayerCount
	Namespace: globallogic_ui
	Checksum: 0xD24F32C3
	Offset: 0xFB0
	Size: 0xD9
	Parameters: 2
	Flags: None
*/
function teamWithLowestPlayerCount(playerCounts, ignore_team)
{
	count = 9999;
	lowest_team = undefined;
	foreach(team in level.teams)
	{
		if(count > playerCounts[team])
		{
			count = playerCounts[team];
			lowest_team = team;
		}
	}
	return lowest_team;
}

/*
	Name: menuAutoAssign
	Namespace: globallogic_ui
	Checksum: 0xF699C3C7
	Offset: 0x1098
	Size: 0x36B
	Parameters: 1
	Flags: None
*/
function menuAutoAssign(comingFromMenu)
{
	teamKeys = getArrayKeys(level.teams);
	assignment = teamKeys[RandomInt(teamKeys.size)];
	self closeMenus();
	assignment = "allies";
	if(level.teambased)
	{
		if(assignment == self.pers["team"] && (self.sessionstate == "playing" || self.sessionstate == "dead"))
		{
			self beginClassChoice();
			return;
		}
	}
	else if(GetDvarInt("party_autoteams") == 1)
	{
		if(level.allow_teamchange != "1" || (!self.hasSpawned && !comingFromMenu))
		{
			team = getAssignedTeam(self);
			if(isdefined(level.teams[team]))
			{
				assignment = team;
			}
			else if(team == "spectator" && !level.forceAutoAssign)
			{
				self SetClientScriptMainMenu(game["menu_start_menu"]);
				return;
			}
		}
	}
	if(assignment != self.pers["team"] && (self.sessionstate == "playing" || self.sessionstate == "dead"))
	{
		self.switching_teams = 1;
		self.switchedTeamsResetGadgets = 1;
		self.joining_team = assignment;
		self.leaving_team = self.pers["team"];
		self suicide();
	}
	self.pers["team"] = assignment;
	self.team = assignment;
	self.pers["class"] = undefined;
	self.curClass = undefined;
	self.pers["weapon"] = undefined;
	self.pers["savedmodel"] = undefined;
	self updateObjectiveText();
	self.sessionteam = assignment;
	if(!isalive(self))
	{
		self.statusicon = "hud_status_dead";
	}
	self notify("joined_team");
	level notify("joined_team");
	callback::callback("hash_95a6c4c0");
	self notify("end_respawn");
	self beginClassChoice();
	self SetClientScriptMainMenu(game["menu_start_menu"]);
}

/*
	Name: teamScoresEqual
	Namespace: globallogic_ui
	Checksum: 0xCE8ABEE3
	Offset: 0x1410
	Size: 0xCD
	Parameters: 0
	Flags: None
*/
function teamScoresEqual()
{
	score = undefined;
	foreach(team in level.teams)
	{
		if(!isdefined(score))
		{
			score = getTeamScore(team);
			continue;
		}
		if(score != getTeamScore(team))
		{
			return 0;
		}
	}
	return 1;
}

/*
	Name: teamWithLowestScore
	Namespace: globallogic_ui
	Checksum: 0x5A41CF0
	Offset: 0x14E8
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function teamWithLowestScore()
{
	score = 99999999;
	lowest_team = undefined;
	foreach(team in level.teams)
	{
		if(score > getTeamScore(team))
		{
			lowest_team = team;
		}
	}
	return lowest_team;
}

/*
	Name: pickTeamFromScores
	Namespace: globallogic_ui
	Checksum: 0x5808531B
	Offset: 0x15B8
	Size: 0x73
	Parameters: 1
	Flags: None
*/
function pickTeamFromScores(teams)
{
	assignment = "allies";
	if(teamScoresEqual())
	{
		assignment = teams[RandomInt(teams.size)];
	}
	else
	{
		assignment = teamWithLowestScore();
	}
	return assignment;
}

/*
	Name: get_splitscreen_team
	Namespace: globallogic_ui
	Checksum: 0x36A9D295
	Offset: 0x1638
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
	return "";
}

/*
	Name: updateObjectiveText
	Namespace: globallogic_ui
	Checksum: 0x9C684EA2
	Offset: 0x1710
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function updateObjectiveText()
{
	if(SessionModeIsZombiesGame() || self.pers["team"] == "spectator")
	{
		self SetClientCGObjectiveText("");
		return;
	}
	if(level.scoreLimit > 0)
	{
		self SetClientCGObjectiveText(util::getObjectiveScoreText(self.pers["team"]));
	}
	else
	{
		self SetClientCGObjectiveText(util::getObjectiveText(self.pers["team"]));
	}
}

/*
	Name: closeMenus
	Namespace: globallogic_ui
	Checksum: 0x2117FDCB
	Offset: 0x17F0
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function closeMenus()
{
	self closeInGameMenu();
}

/*
	Name: beginClassChoice
	Namespace: globallogic_ui
	Checksum: 0x36E13DAD
	Offset: 0x1818
	Size: 0x2AB
	Parameters: 0
	Flags: None
*/
function beginClassChoice()
{
	/#
		Assert(isdefined(level.teams[self.pers["Dev Block strings are not supported"]]));
	#/
	team = self.pers["team"];
	self CloseMenu(game["menu_start_menu"]);
	if(!GetDvarInt("art_review", 0))
	{
		self thread function_b381d26();
	}
	var_54fdb1d6 = GetDvarInt("force_no_cac", 0);
	if(!GetDvarInt("force_cac", 0) || var_54fdb1d6)
	{
		var_f6b7dfee = self savegame::function_36adbb9c("playerClass", undefined);
		var_d47d35d1 = self savegame::function_36adbb9c(savegame::function_1bfdd60e() + "hero_weapon", undefined);
		if(isdefined(var_f6b7dfee) || var_54fdb1d6 || (isdefined(level.disableClassSelection) && level.disableClassSelection) || (isdefined(self.disableClassSelection) && self.disableClassSelection) || GetDvarInt("migration_soak") == 1)
		{
			if(isdefined(var_f6b7dfee))
			{
			}
			else
			{
			}
			self.curClass = level.defaultClass;
			self.pers["class"] = self.curClass;
			wait(0.05);
			if(self.sessionstate != "playing" && game["state"] == "playing")
			{
				self thread [[level.spawnClient]]();
			}
			globallogic::updateTeamStatus();
			self thread spectating::set_permissions_for_machine();
			return;
		}
	}
	self CloseMenu(game["menu_changeclass"]);
	self openMenu(game["menu_changeclass_" + team]);
}

/*
	Name: function_b381d26
	Namespace: globallogic_ui
	Checksum: 0x4D37E32B
	Offset: 0x1AD0
	Size: 0x38B
	Parameters: 0
	Flags: None
*/
function function_b381d26()
{
	self endon("disconnect");
	util::show_hud(0);
	self CloseMenu("InitialBlack");
	self openMenu("InitialBlack");
	var_e90e1424 = 0;
	if(level flag::get("all_players_spawned"))
	{
		var_e90e1424 = 1;
	}
	self.fullscreen_black_active = 1;
	self thread function_e185d3f4();
	self Hide();
	wait(0.05);
	if(isdefined(level.var_d83bc14d) || isdefined(level.var_8f7c5cd0))
	{
		function_bf7a95e2();
		self thread function_52326035();
		if(isdefined(level.var_d83bc14d))
		{
			level flag::wait_till(level.var_d83bc14d);
		}
		if(isdefined(level.var_8f7c5cd0))
		{
			self flag::wait_till(level.var_8f7c5cd0);
		}
	}
	if(var_e90e1424 && (!isdefined(level.is_safehouse) && level.is_safehouse))
	{
		while(self.sessionstate !== "playing")
		{
			wait(0.05);
		}
		self thread function_52326035();
		while(self IsLoadingCinematicPlaying())
		{
			wait(0.05);
		}
		self flag::wait_till("loadout_given");
		waittillframeend;
		wait(2);
		self util::streamer_wait(undefined, 5, 5);
		self thread LUI::screen_fade_in(0.3, "black", "hot_join");
	}
	if(!flagsys::get("shared_igc"))
	{
		self show();
	}
	self flagsys::set("kill_fullscreen_black");
	self clientfield::set_to_player("sndLevelStartSnapOff", 1);
	self CloseMenu("InitialBlack");
	self.fullscreen_black_active = undefined;
	util::show_hud(1);
	/#
		PrintTopRightln("Dev Block strings are not supported" + GetTime() + "Dev Block strings are not supported" + self GetEntityNumber(), (1, 1, 1));
		function_57805da3(function_fa0beb8());
	#/
}

/*
	Name: function_e185d3f4
	Namespace: globallogic_ui
	Checksum: 0x18BEC12F
	Offset: 0x1E68
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_e185d3f4()
{
	self endon("disconnect");
	self endon("hash_73146bff");
	var_67fa9f87 = self.fullscreen_black_active;
	level waittill("save_restore");
	if(isdefined(var_67fa9f87) && var_67fa9f87)
	{
		self CloseMenu("InitialBlack");
		self openMenu("InitialBlack");
	}
}

/*
	Name: function_bf7a95e2
	Namespace: globallogic_ui
	Checksum: 0x4705F18A
	Offset: 0x1F00
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_bf7a95e2()
{
	if(isdefined(level.var_8f7c5cd0) && !self flag::exists(level.var_8f7c5cd0))
	{
		self flag::init(level.var_8f7c5cd0);
	}
	if(isdefined(level.var_d83bc14d) && !level flag::exists(level.var_d83bc14d))
	{
		level flag::init(level.var_d83bc14d);
	}
}

/*
	Name: function_52326035
	Namespace: globallogic_ui
	Checksum: 0x45100F1C
	Offset: 0x1FA0
	Size: 0xFD
	Parameters: 0
	Flags: None
*/
function function_52326035()
{
	self endon("disconnect");
	self.var_b41cccf7 = 1;
	self flagsys::wait_till("loadout_given");
	self DisableWeapons();
	self FreezeControls(1);
	wait(0.1);
	waittillframeend;
	self FreezeControls(1);
	self DisableWeapons();
	self flagsys::wait_till("kill_fullscreen_black");
	self enableWeapons();
	self FreezeControls(0);
	self.var_b41cccf7 = undefined;
}

/*
	Name: showMainMenuForTeam
	Namespace: globallogic_ui
	Checksum: 0x40F1396B
	Offset: 0x20A8
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function showMainMenuForTeam()
{
	/#
		Assert(isdefined(level.teams[self.pers["Dev Block strings are not supported"]]));
	#/
	team = self.pers["team"];
	self openMenu(game["menu_changeclass_" + team]);
}

/*
	Name: menuTeam
	Namespace: globallogic_ui
	Checksum: 0x26219D3C
	Offset: 0x2128
	Size: 0x233
	Parameters: 1
	Flags: None
*/
function menuTeam(team)
{
	self closeMenus();
	if(!level.console && level.allow_teamchange == "0" && (isdefined(self.hasDoneCombat) && self.hasDoneCombat))
	{
		return;
	}
	if(self.pers["team"] != team)
	{
		if(level.inGracePeriod && (!isdefined(self.hasDoneCombat) || !self.hasDoneCombat))
		{
			self.hasSpawned = 0;
		}
		if(self.sessionstate == "playing")
		{
			self.switching_teams = 1;
			self.switchedTeamsResetGadgets = 1;
			self.joining_team = team;
			self.leaving_team = self.pers["team"];
			self suicide();
		}
		self.pers["team"] = team;
		self.team = team;
		self.pers["class"] = undefined;
		self.curClass = undefined;
		self.pers["weapon"] = undefined;
		self.pers["savedmodel"] = undefined;
		self updateObjectiveText();
		if(!level.rankedMatch && !level.leagueMatch)
		{
			self.sessionstate = "spectator";
		}
		self.sessionteam = team;
		self SetClientScriptMainMenu(game["menu_start_menu"]);
		self notify("joined_team");
		level notify("joined_team");
		callback::callback("hash_95a6c4c0");
		self notify("end_respawn");
	}
	self beginClassChoice();
}

/*
	Name: menuSpectator
	Namespace: globallogic_ui
	Checksum: 0x804ED8A2
	Offset: 0x2368
	Size: 0x1A3
	Parameters: 0
	Flags: None
*/
function menuSpectator()
{
	self closeMenus();
	if(self.pers["team"] != "spectator")
	{
		if(isalive(self))
		{
			self.switching_teams = 1;
			self.switchedTeamsResetGadgets = 1;
			self.joining_team = "spectator";
			self.leaving_team = self.pers["team"];
			self suicide();
		}
		self.pers["team"] = "spectator";
		self.team = "spectator";
		self.pers["class"] = undefined;
		self.curClass = undefined;
		self.pers["weapon"] = undefined;
		self.pers["savedmodel"] = undefined;
		self updateObjectiveText();
		self.sessionteam = "spectator";
		[[level.spawnSpectator]]();
		self thread globallogic_player::spectate_player_watcher();
		self SetClientScriptMainMenu(game["menu_start_menu"]);
		self notify("joined_spectators");
		callback::callback("hash_4c5ae192");
	}
}

/*
	Name: menuClass
	Namespace: globallogic_ui
	Checksum: 0xA546881A
	Offset: 0x2518
	Size: 0x689
	Parameters: 1
	Flags: None
*/
function menuClass(response)
{
	self closeMenus();
	if(!isdefined(self.pers["team"]) || !isdefined(level.teams[self.pers["team"]]))
	{
		return;
	}
	if(flagsys::get("mobile_armory_in_use"))
	{
		return;
	}
	playerclass = "";
	if(response == "cancel")
	{
		var_f6b7dfee = self savegame::function_36adbb9c("playerClass", undefined);
		if(isdefined(var_f6b7dfee))
		{
			playerclass = var_f6b7dfee;
		}
		else
		{
			playerclass = level.defaultClass;
		}
	}
	else
	{
		var_5dc22ce3 = StrTok(response, ",");
		if(var_5dc22ce3.size > 1)
		{
			var_bd5d3f48 = var_5dc22ce3[0];
			clientNum = Int(var_5dc22ce3[1]);
			var_5a13c491 = util::getPlayerFromClientNum(clientNum);
		}
		else
		{
			var_bd5d3f48 = response;
		}
		playerclass = self loadout::getClassChoice(var_bd5d3f48);
		if(isdefined(var_5a13c491))
		{
			xuid = var_5a13c491 getXuid();
			self savegame::function_bee608f0("altPlayerID", xuid);
		}
		else
		{
			self savegame::function_bee608f0("altPlayerID", undefined);
		}
		self savegame::function_bee608f0("saved_weapon", undefined);
		self savegame::function_bee608f0("saved_weapondata", undefined);
		self savegame::function_bee608f0("lives", undefined);
		self savegame::function_bee608f0("saved_rig1", undefined);
		self savegame::function_bee608f0("saved_rig1_upgraded", undefined);
		self savegame::function_bee608f0("saved_rig2", undefined);
		self savegame::function_bee608f0("saved_rig2_upgraded", undefined);
	}
	if(isdefined(self.pers["class"]) && self.pers["class"] == playerclass)
	{
		return;
	}
	self.pers["changed_class"] = 1;
	self notify("changed_class");
	waittillframeend;
	if(isdefined(self.curClass) && self.curClass == playerclass)
	{
		self.pers["changed_class"] = 0;
	}
	if(self.sessionstate == "playing")
	{
		self savegame::function_bee608f0("playerClass", playerclass);
		self.pers["class"] = playerclass;
		self.curClass = playerclass;
		self.pers["weapon"] = undefined;
		if(game["state"] == "postgame")
		{
			return;
		}
		supplyStationClassChange = isdefined(self.usingSupplyStation) && self.usingSupplyStation;
		self.usingSupplyStation = 0;
		if(level.inGracePeriod && !self.hasDoneCombat || supplyStationClassChange)
		{
			self loadout::setClass(self.pers["class"]);
			self.tag_stowed_back = undefined;
			self.tag_stowed_hip = undefined;
			self loadout::giveLoadout(self.pers["team"], self.pers["class"]);
		}
		else if(!self IsSplitscreen())
		{
			self IPrintLnBold(game["strings"]["change_class"]);
		}
	}
	else
	{
		self savegame::function_bee608f0("playerClass", playerclass);
		self.pers["class"] = playerclass;
		self.curClass = playerclass;
		self.pers["weapon"] = undefined;
		if(game["state"] == "postgame")
		{
			return;
		}
		if(self.sessionstate != "spectator")
		{
			if(self IsInVehicle())
			{
				return;
			}
			if(self IsRemoteControlling())
			{
				return;
			}
			if(self IsWeaponViewOnlyLinked())
			{
				return 0;
			}
		}
		if(game["state"] == "playing")
		{
			timePassed = undefined;
			if(isdefined(self.respawnTimerStartTime))
			{
				timePassed = GetTime() - self.respawnTimerStartTime / 1000;
			}
			self thread [[level.spawnClient]](timePassed);
			self.respawnTimerStartTime = undefined;
		}
	}
	globallogic::updateTeamStatus();
	self thread spectating::set_permissions_for_machine();
	self notify("hash_92c7ed2a");
}

/*
	Name: removeSpawnMessageShortly
	Namespace: globallogic_ui
	Checksum: 0xD160DE01
	Offset: 0x2BB0
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function removeSpawnMessageShortly(delay)
{
	self endon("disconnect");
	waittillframeend;
	self endon("end_respawn");
	wait(delay);
	self util::clearLowerMessage(2);
}

/*
	Name: function_c1f135ab
	Namespace: globallogic_ui
	Checksum: 0x39576679
	Offset: 0x2C00
	Size: 0x107
	Parameters: 1
	Flags: None
*/
function function_c1f135ab(var_6f7b69cd)
{
	self endon("death");
	self endon("hash_94f19cd5");
	while(1)
	{
		self waittill("hash_902a6d9f", bonename, event);
		if(bonename == var_6f7b69cd)
		{
			if(event == "damage")
			{
				LUINotifyEvent(&"weakpoint_update", 3, 2, self GetEntityNumber(), var_6f7b69cd);
			}
			else if(event == "repulse")
			{
				LUINotifyEvent(&"weakpoint_update", 3, 3, self GetEntityNumber(), var_6f7b69cd);
			}
			wait(0.5);
		}
	}
}

/*
	Name: destroyWeakpointWidget
	Namespace: globallogic_ui
	Checksum: 0xC7A0998F
	Offset: 0x2D10
	Size: 0x49
	Parameters: 1
	Flags: None
*/
function destroyWeakpointWidget(var_6f7b69cd)
{
	LUINotifyEvent(&"weakpoint_update", 3, 0, self GetEntityNumber(), var_6f7b69cd);
	self notify("hash_94f19cd5");
}

/*
	Name: createWeakpointWidget
	Namespace: globallogic_ui
	Checksum: 0x148772B
	Offset: 0x2D68
	Size: 0xEB
	Parameters: 3
	Flags: None
*/
function createWeakpointWidget(var_6f7b69cd, var_acf6b649, var_1e42c432)
{
	if(!isdefined(var_acf6b649))
	{
		var_acf6b649 = undefined;
	}
	if(!isdefined(var_1e42c432))
	{
		var_1e42c432 = undefined;
	}
	if(!isdefined(var_acf6b649))
	{
		var_acf6b649 = GetDvarInt("ui_weakpointIndicatorNear", 1050);
	}
	if(!isdefined(var_1e42c432))
	{
		var_1e42c432 = GetDvarInt("ui_weakpointIndicatorMedium", 1900);
	}
	LUINotifyEvent(&"weakpoint_update", 5, 1, self GetEntityNumber(), var_6f7b69cd, var_acf6b649, var_1e42c432);
	self thread function_c1f135ab(var_6f7b69cd);
}

/*
	Name: triggerWeakpointDamage
	Namespace: globallogic_ui
	Checksum: 0xEC2A034D
	Offset: 0x2E60
	Size: 0x25
	Parameters: 1
	Flags: None
*/
function triggerWeakpointDamage(var_6f7b69cd)
{
	self notify("hash_902a6d9f", var_6f7b69cd, "damage");
}

/*
	Name: function_8c6f9f69
	Namespace: globallogic_ui
	Checksum: 0xA0E41BC5
	Offset: 0x2E90
	Size: 0x25
	Parameters: 1
	Flags: None
*/
function function_8c6f9f69(var_6f7b69cd)
{
	self notify("hash_902a6d9f", var_6f7b69cd, "repulse");
}

