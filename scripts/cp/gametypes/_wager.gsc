#using scripts\codescripts\struct;
#using scripts\cp\_util;
#using scripts\cp\gametypes\_globallogic;
#using scripts\cp\gametypes\_globallogic_score;
#using scripts\cp\gametypes\_loadout;
#using scripts\cp\teams\_teams;
#using scripts\shared\callbacks_shared;
#using scripts\shared\hud_util_shared;
#using scripts\shared\persistence_shared;
#using scripts\shared\rank_shared;
#using scripts\shared\system_shared;

#namespace wager;

/*
	Name: __init__sytem__
	Namespace: wager
	Checksum: 0xE3837110
	Offset: 0x440
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__sytem__()
{
	system::register("wager", &__init__, undefined, undefined);
}

/*
	Name: __init__
	Namespace: wager
	Checksum: 0xBCA3A589
	Offset: 0x480
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function __init__()
{
	callback::on_start_gametype(&init);
}

/*
	Name: init
	Namespace: wager
	Checksum: 0xC7B1F1A8
	Offset: 0x4B0
	Size: 0x137
	Parameters: 0
	Flags: None
*/
function init()
{
	if(GameModeIsMode(3))
	{
		level.wagerMatch = 1;
		if(!isdefined(game["wager_pot"]))
		{
			game["wager_pot"] = 0;
			game["wager_initial_pot"] = 0;
		}
		game["dialog"]["wm_u2_online"] = "boost_gen_02";
		game["dialog"]["wm_in_the_money"] = "boost_gen_06";
		game["dialog"]["wm_oot_money"] = "boost_gen_07";
		level.powerupList = [];
		callback::on_disconnect(&on_disconnect);
		callback::on_spawned(&init_player);
		level thread help_game_end();
	}
	else
	{
		level.wagerMatch = 0;
	}
	level.takeLivesOnDeath = 1;
}

/*
	Name: init_player
	Namespace: wager
	Checksum: 0xCE2A1205
	Offset: 0x5F0
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function init_player()
{
	self endon("disconnect");
	if(!isdefined(self.pers["wager"]))
	{
		self.pers["wager"] = 1;
		self.pers["wager_sideBetWinnings"] = 0;
		self.pers["wager_sideBetLosses"] = 0;
	}
	if(isdefined(level.inTheMoneyOnRadar) && level.inTheMoneyOnRadar || (isdefined(level.firstPlaceOnRadar) && level.firstPlaceOnRadar))
	{
		self.pers["hasRadar"] = 1;
		self.hasSpyplane = 1;
	}
	else
	{
		self.pers["hasRadar"] = 0;
		self.hasSpyplane = 0;
	}
	self thread deduct_player_ante();
}

/*
	Name: on_disconnect
	Namespace: wager
	Checksum: 0x98C517F9
	Offset: 0x6F0
	Size: 0x25
	Parameters: 0
	Flags: None
*/
function on_disconnect()
{
	level endon("game_ended");
	self endon("player_eliminated");
	level notify("player_eliminated");
}

/*
	Name: deduct_player_ante
	Namespace: wager
	Checksum: 0xA51DDBB3
	Offset: 0x720
	Size: 0x1A3
	Parameters: 0
	Flags: None
*/
function deduct_player_ante()
{
	if(isdefined(self.pers["hasPaidWagerAnte"]))
	{
		return;
	}
	waittillframeend;
	codPoints = self rank::getCodPointsStat();
	wagerBet = GetDvarInt("scr_wagerBet");
	if(wagerBet > codPoints)
	{
		wagerBet = codPoints;
	}
	codPoints = codPoints - wagerBet;
	self rank::setCodPointsStat(codPoints);
	if(!self IsLocalToHost())
	{
		self increment_escrow_for_player(wagerBet);
	}
	game["wager_pot"] = game["wager_pot"] + wagerBet;
	game["wager_initial_pot"] = game["wager_initial_pot"] + wagerBet;
	self.pers["hasPaidWagerAnte"] = 1;
	self AddPlayerStat("LIFETIME_BUYIN", wagerBet);
	self add_recent_earnings_to_stat(0 - wagerBet);
	if(isdefined(level.onWagerPlayerAnte))
	{
		[[level.onWagerPlayerAnte]](self, wagerBet);
	}
	self thread persistence::upload_stats_soon();
}

/*
	Name: increment_escrow_for_player
	Namespace: wager
	Checksum: 0xC791AF43
	Offset: 0x8D0
	Size: 0xE5
	Parameters: 1
	Flags: None
*/
function increment_escrow_for_player(amount)
{
	if(!isdefined(self) || !isPlayer(self))
	{
		return;
	}
	if(!isdefined(game["escrows"]))
	{
		game["escrows"] = [];
	}
	playerXUID = self getXuid();
	if(!isdefined(playerXUID))
	{
		return;
	}
	escrowStruct = spawnstruct();
	escrowStruct.xuid = playerXUID;
	escrowStruct.amount = amount;
	game["escrows"][game["escrows"].size] = escrowStruct;
}

/*
	Name: clear_escrows
	Namespace: wager
	Checksum: 0xBACE5110
	Offset: 0x9C0
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function clear_escrows()
{
	if(!isdefined(game["escrows"]))
	{
		return;
	}
	escrows = game["escrows"];
	numEscrows = escrows.size;
	for(i = 0; i < numEscrows; i++)
	{
		escrowStruct = escrows[i];
	}
	game["escrows"] = [];
}

/*
	Name: add_recent_earnings_to_stat
	Namespace: wager
	Checksum: 0xA1DC4869
	Offset: 0xA60
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function add_recent_earnings_to_stat(recentEarnings)
{
	currEarnings = self persistence::get_recent_stat(1, 0, "score");
	self persistence::set_recent_stat(1, 0, "score", currEarnings + recentEarnings);
}

/*
	Name: prematch_period
	Namespace: wager
	Checksum: 0xC3ABD9ED
	Offset: 0xAD0
	Size: 0xF
	Parameters: 0
	Flags: None
*/
function prematch_period()
{
	if(!level.wagerMatch)
	{
		return;
	}
}

/*
	Name: finalize_round
	Namespace: wager
	Checksum: 0x2E3E21F7
	Offset: 0xAE8
	Size: 0x3F
	Parameters: 0
	Flags: None
*/
function finalize_round()
{
	if(level.wagerMatch == 0)
	{
		return;
	}
	determine_winnings();
	if(isdefined(level.onWagerFinalizeRound))
	{
		[[level.onWagerFinalizeRound]]();
	}
}

/*
	Name: determine_winnings
	Namespace: wager
	Checksum: 0xAD872A06
	Offset: 0xB30
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function determine_winnings()
{
	shouldCalculateWinnings = !isdefined(level.dontCalcWagerWinnings) || !level.dontCalcWagerWinnings;
	if(!shouldCalculateWinnings)
	{
		return;
	}
	if(!level.teambased)
	{
		calculate_free_for_all_payouts();
	}
	else
	{
		calculate_team_payouts();
	}
}

/*
	Name: calculate_free_for_all_payouts
	Namespace: wager
	Checksum: 0x8C8B83CC
	Offset: 0xBA8
	Size: 0x323
	Parameters: 0
	Flags: None
*/
function calculate_free_for_all_payouts()
{
	playerRankings = level.placement["all"];
	payoutPercentages = Array(0.5, 0.3, 0.2);
	if(playerRankings.size == 2)
	{
		payoutPercentages = Array(0.7, 0.3);
	}
	else if(playerRankings.size == 1)
	{
		payoutPercentages = Array(1);
	}
	set_winnings_on_players(level.players, 0);
	if(isdefined(level.hostForcedEnd) && level.hostForcedEnd)
	{
		wagerBet = GetDvarInt("scr_wagerBet");
		for(i = 0; i < playerRankings.size; i++)
		{
			if(!playerRankings[i] IsLocalToHost())
			{
				playerRankings[i].wagerWinnings = wagerBet;
			}
		}
	}
	else if(level.players.size == 1)
	{
		game["escrows"] = undefined;
		return;
	}
	else
	{
		currentPayoutPercentage = 0;
		cumulativePayoutPercentage = payoutPercentages[0];
		playerGroup = [];
		playerGroup[playerGroup.size] = playerRankings[0];
		for(i = 1; i < playerRankings.size; i++)
		{
			if(playerRankings[i].pers["score"] < playerGroup[0].pers["score"])
			{
				set_winnings_on_players(playerGroup, Int(game["wager_pot"] * cumulativePayoutPercentage / playerGroup.size));
				playerGroup = [];
				cumulativePayoutPercentage = 0;
			}
			playerGroup[playerGroup.size] = playerRankings[i];
			currentPayoutPercentage++;
			if(isdefined(payoutPercentages[currentPayoutPercentage]))
			{
				cumulativePayoutPercentage = cumulativePayoutPercentage + payoutPercentages[currentPayoutPercentage];
			}
		}
		set_winnings_on_players(playerGroup, Int(game["wager_pot"] * cumulativePayoutPercentage / playerGroup.size));
	}
}

/*
	Name: calculate_places_based_on_score
	Namespace: wager
	Checksum: 0xFDF2EB0A
	Offset: 0xED8
	Size: 0x169
	Parameters: 0
	Flags: None
*/
function calculate_places_based_on_score()
{
	level.playerPlaces = Array([], [], []);
	playerRankings = level.placement["all"];
	placementScores = Array(playerRankings[0].pers["score"], -1, -1);
	currentPlace = 0;
	for(index = 0; index < playerRankings.size && currentPlace < placementScores.size; index++)
	{
		player = playerRankings[index];
		if(player.pers["score"] < placementScores[currentPlace])
		{
			currentPlace++;
			if(currentPlace >= level.playerPlaces.size)
			{
				break;
			}
			placementScores[currentPlace] = player.pers["score"];
		}
		level.playerPlaces[currentPlace][level.playerPlaces[currentPlace].size] = player;
	}
}

/*
	Name: calculate_team_payouts
	Namespace: wager
	Checksum: 0x15F44D12
	Offset: 0x1050
	Size: 0x17B
	Parameters: 0
	Flags: None
*/
function calculate_team_payouts()
{
	winner = globallogic::determineTeamWinnerByGameStat("teamScores");
	if(winner == "tie")
	{
		calculate_free_for_all_payouts();
		return;
	}
	playersOnWinningTeam = [];
	for(index = 0; index < level.players.size; index++)
	{
		player = level.players[index];
		player.wagerWinnings = 0;
		if(player.pers["team"] == winner)
		{
			playersOnWinningTeam[playersOnWinningTeam.size] = player;
		}
	}
	if(playersOnWinningTeam.size == 0)
	{
		set_winnings_on_players(level.players, GetDvarInt("scr_wagerBet"));
		return;
	}
	winningsSplit = Int(game["wager_pot"] / playersOnWinningTeam.size);
	set_winnings_on_players(playersOnWinningTeam, winningsSplit);
}

/*
	Name: set_winnings_on_players
	Namespace: wager
	Checksum: 0x10F37170
	Offset: 0x11D8
	Size: 0x55
	Parameters: 2
	Flags: None
*/
function set_winnings_on_players(players, amount)
{
	for(index = 0; index < players.size; index++)
	{
		players[index].wagerWinnings = amount;
	}
}

/*
	Name: finalize_game
	Namespace: wager
	Checksum: 0x61E0F743
	Offset: 0x1238
	Size: 0x17B
	Parameters: 0
	Flags: None
*/
function finalize_game()
{
	level.wagerGameFinalized = 1;
	if(level.wagerMatch == 0)
	{
		return;
	}
	determine_winnings();
	determine_top_earners();
	players = level.players;
	wait(0.5);
	playerRankings = level.wagerTopEarners;
	for(index = 0; index < players.size; index++)
	{
		player = players[index];
		if(isdefined(player.pers["wager_sideBetWinnings"]))
		{
			pay_out_winnings(player, player.wagerWinnings + player.pers["wager_sideBetWinnings"]);
		}
		else
		{
			pay_out_winnings(player, player.wagerWinnings);
		}
		if(player.wagerWinnings > 0)
		{
			globallogic_score::updateWinStats(player);
		}
	}
	clear_escrows();
}

/*
	Name: pay_out_winnings
	Namespace: wager
	Checksum: 0x3AF68AD4
	Offset: 0x13C0
	Size: 0xA3
	Parameters: 2
	Flags: None
*/
function pay_out_winnings(player, winnings)
{
	if(winnings == 0)
	{
		return;
	}
	codPoints = player rank::getCodPointsStat();
	player rank::setCodPointsStat(codPoints + winnings);
	player AddPlayerStat("LIFETIME_EARNINGS", winnings);
	player add_recent_earnings_to_stat(winnings);
}

/*
	Name: determine_top_earners
	Namespace: wager
	Checksum: 0xB081C1C4
	Offset: 0x1470
	Size: 0x20F
	Parameters: 0
	Flags: None
*/
function determine_top_earners()
{
	topWinnings = Array(-1, -1, -1);
	level.wagerTopEarners = [];
	for(index = 0; index < level.players.size; index++)
	{
		player = level.players[index];
		if(!isdefined(player.wagerWinnings))
		{
			player.wagerWinnings = 0;
		}
		if(player.wagerWinnings > topWinnings[0])
		{
			topWinnings[2] = topWinnings[1];
			topWinnings[1] = topWinnings[0];
			topWinnings[0] = player.wagerWinnings;
			level.wagerTopEarners[2] = level.wagerTopEarners[1];
			level.wagerTopEarners[1] = level.wagerTopEarners[0];
			level.wagerTopEarners[0] = player;
			continue;
		}
		if(player.wagerWinnings > topWinnings[1])
		{
			topWinnings[2] = topWinnings[1];
			topWinnings[1] = player.wagerWinnings;
			level.wagerTopEarners[2] = level.wagerTopEarners[1];
			level.wagerTopEarners[1] = player;
			continue;
		}
		if(player.wagerWinnings > topWinnings[2])
		{
			topWinnings[2] = player.wagerWinnings;
			level.wagerTopEarners[2] = player;
		}
	}
}

/*
	Name: post_round_side_bet
	Namespace: wager
	Checksum: 0xE1CE7833
	Offset: 0x1688
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function post_round_side_bet()
{
	if(isdefined(level.sidebet) && level.sidebet)
	{
		level notify("side_bet_begin");
		level waittill("side_bet_end");
	}
}

/*
	Name: side_bet_timer
	Namespace: wager
	Checksum: 0x414E9065
	Offset: 0x16C8
	Size: 0x59
	Parameters: 0
	Flags: None
*/
function side_bet_timer()
{
	level endon("side_bet_end");
	secondsToWait = level.sideBetEndTime - GetTime() / 1000;
	if(secondsToWait < 0)
	{
		secondsToWait = 0;
	}
	wait(secondsToWait);
	level notify("side_bet_end");
}

/*
	Name: side_bet_all_bets_placed
	Namespace: wager
	Checksum: 0x85AEDCD7
	Offset: 0x1730
	Size: 0x5D
	Parameters: 0
	Flags: None
*/
function side_bet_all_bets_placed()
{
	secondsLeft = level.sideBetEndTime - GetTime() / 1000;
	if(secondsLeft <= 3)
	{
		return;
	}
	level.sideBetEndTime = GetTime() + 3000;
	wait(3);
	level notify("side_bet_end");
}

/*
	Name: setup_blank_random_player
	Namespace: wager
	Checksum: 0x38DE2F16
	Offset: 0x1798
	Size: 0x1D3
	Parameters: 3
	Flags: None
*/
function setup_blank_random_player(takeWeapons, chooseRandomBody, weapon)
{
	if(!isdefined(chooseRandomBody) || chooseRandomBody)
	{
		if(!isdefined(self.pers["wagerBodyAssigned"]))
		{
			self assign_random_body();
			self.pers["wagerBodyAssigned"] = 1;
		}
		self teams::set_player_model(self.team, weapon);
	}
	self ClearPerks();
	self.killstreak = [];
	self.pers["killstreaks"] = [];
	self.pers["killstreak_has_been_used"] = [];
	self.pers["killstreak_unique_id"] = [];
	if(!isdefined(takeWeapons) || takeWeapons)
	{
		self TakeAllWeapons();
	}
	if(isdefined(self.pers["hasRadar"]) && self.pers["hasRadar"])
	{
		self.hasSpyplane = 1;
	}
	if(isdefined(self.powerups) && isdefined(self.powerups.size))
	{
		for(i = 0; i < self.powerups.size; i++)
		{
			self apply_powerup(self.powerups[i]);
		}
	}
	self set_radar_visibility();
}

/*
	Name: assign_random_body
	Namespace: wager
	Checksum: 0x99EC1590
	Offset: 0x1978
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function assign_random_body()
{
}

/*
	Name: queue_popup
	Namespace: wager
	Checksum: 0xD39E8F5C
	Offset: 0x1988
	Size: 0xE9
	Parameters: 4
	Flags: None
*/
function queue_popup(message, points, subMessage, announcement)
{
	self endon("disconnect");
	SIZE = self.wagerNotifyQueue.size;
	self.wagerNotifyQueue[SIZE] = spawnstruct();
	self.wagerNotifyQueue[SIZE].message = message;
	self.wagerNotifyQueue[SIZE].points = points;
	self.wagerNotifyQueue[SIZE].subMessage = subMessage;
	self.wagerNotifyQueue[SIZE].announcement = announcement;
	self notify("received award");
}

/*
	Name: help_game_end
	Namespace: wager
	Checksum: 0x6374F4CD
	Offset: 0x1A80
	Size: 0x1AB
	Parameters: 0
	Flags: None
*/
function help_game_end()
{
	level endon("game_ended");
	for(;;)
	{
		level waittill("player_eliminated");
		if(!isdefined(level.numLives) || !level.numLives)
		{
			break;
		}
		wait(0.05);
		players = level.players;
		playersLeft = 0;
		for(i = 0; i < players.size; i++)
		{
			if(isdefined(players[i].pers["lives"]) && players[i].pers["lives"] > 0)
			{
				playersLeft++;
			}
		}
		if(playersLeft == 2)
		{
			for(i = 0; i < players.size; i++)
			{
				players[i] queue_popup(&"MP_HEADS_UP", 0, &"MP_U2_ONLINE", "wm_u2_online");
				players[i].pers["hasRadar"] = 1;
				players[i].hasSpyplane = 1;
				level.activeUAVs[players[i] GetEntityNumber()]++;
			}
		}
	}
}

/*
	Name: set_radar_visibility
	Namespace: wager
	Checksum: 0xC38202C6
	Offset: 0x1C38
	Size: 0x123
	Parameters: 0
	Flags: None
*/
function set_radar_visibility()
{
	prevScorePlace = self.prevScorePlace;
	if(!isdefined(prevScorePlace))
	{
		prevScorePlace = 1;
	}
	if(isdefined(level.inTheMoneyOnRadar) && level.inTheMoneyOnRadar)
	{
		if(prevScorePlace <= 3 && isdefined(self.score) && self.score > 0)
		{
			self unsetPerk("specialty_gpsjammer");
		}
		else
		{
			self setPerk("specialty_gpsjammer");
		}
	}
	else if(isdefined(level.firstPlaceOnRadar) && level.firstPlaceOnRadar)
	{
		if(prevScorePlace == 1 && isdefined(self.score) && self.score > 0)
		{
			self unsetPerk("specialty_gpsjammer");
		}
		else
		{
			self setPerk("specialty_gpsjammer");
		}
	}
}

/*
	Name: player_scored
	Namespace: wager
	Checksum: 0xF51811B5
	Offset: 0x1D68
	Size: 0x24D
	Parameters: 0
	Flags: None
*/
function player_scored()
{
	self notify("wager_player_scored");
	self endon("wager_player_scored");
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
		if(!wasInTheMoney && isInTheMoney)
		{
			level.placement["all"][i] announcer("wm_in_the_money");
		}
		else if(wasInTheMoney && !isInTheMoney)
		{
			level.placement["all"][i] announcer("wm_oot_money");
		}
		level.placement["all"][i].prevScorePlace = currentScorePlace;
		level.placement["all"][i] set_radar_visibility();
	}
}

/*
	Name: announcer
	Namespace: wager
	Checksum: 0xF3704E18
	Offset: 0x1FC0
	Size: 0x13
	Parameters: 2
	Flags: None
*/
function announcer(dialog, group)
{
}

/*
	Name: create_powerup
	Namespace: wager
	Checksum: 0xF75F187
	Offset: 0x1FE0
	Size: 0xA3
	Parameters: 4
	Flags: None
*/
function create_powerup(name, type, displayName, iconMaterial)
{
	powerup = spawnstruct();
	powerup.name = [];
	powerup.name[0] = name;
	powerup.type = type;
	powerup.displayName = displayName;
	powerup.iconMaterial = iconMaterial;
	return powerup;
}

/*
	Name: add_powerup
	Namespace: wager
	Checksum: 0x80E2FFD4
	Offset: 0x2090
	Size: 0x105
	Parameters: 4
	Flags: None
*/
function add_powerup(name, type, displayName, iconMaterial)
{
	if(!isdefined(level.powerupList))
	{
		level.powerupList = [];
	}
	for(i = 0; i < level.powerupList.size; i++)
	{
		if(level.powerupList[i].displayName == displayName)
		{
			level.powerupList[i].name[level.powerupList[i].name.size] = name;
			return;
		}
	}
	powerup = create_powerup(name, type, displayName, iconMaterial);
	level.powerupList[level.powerupList.size] = powerup;
}

/*
	Name: copy_powerup
	Namespace: wager
	Checksum: 0xC163A2F2
	Offset: 0x21A0
	Size: 0x51
	Parameters: 1
	Flags: None
*/
function copy_powerup(powerup)
{
	return create_powerup(powerup.name[0], powerup.type, powerup.displayName, powerup.iconMaterial);
}

/*
	Name: apply_powerup
	Namespace: wager
	Checksum: 0xDFF08766
	Offset: 0x2200
	Size: 0x2CD
	Parameters: 1
	Flags: None
*/
function apply_powerup(powerup)
{
	weapon = level.weaponNone;
	switch(powerup.type)
	{
		case "equipment":
		case "primary":
		case "primary_grenade":
		case "secondary":
		case "secondary_grenade":
		{
			weapon = GetWeapon(powerup.name[0]);
			break;
		}
	}
	switch(powerup.type)
	{
		case "primary":
		{
			self GiveWeapon(weapon);
			self SwitchToWeapon(weapon);
			break;
		}
		case "secondary":
		{
			self GiveWeapon(weapon);
			break;
		}
		case "equipment":
		{
			self GiveWeapon(weapon);
			self loadout::setWeaponAmmoOverall(weapon, 1);
			self SetActionSlot(1, "weapon", weapon);
			break;
		}
		case "primary_grenade":
		{
			self setOffhandPrimaryClass(weapon);
			self GiveWeapon(weapon);
			self SetWeaponAmmoClip(weapon, 2);
			break;
		}
		case "secondary_grenade":
		{
			self setOffhandSecondaryClass(weapon);
			self GiveWeapon(weapon);
			self SetWeaponAmmoClip(weapon, 2);
			break;
		}
		case "perk":
		{
			for(i = 0; i < powerup.name.size; i++)
			{
				self setPerk(powerup.name[i]);
			}
			break;
		}
		case "score_multiplier":
		{
			self.scoreMultiplier = powerup.name[0];
			break;
		}
	}
}

/*
	Name: give_powerup
	Namespace: wager
	Checksum: 0xBF76E81A
	Offset: 0x24D8
	Size: 0x123
	Parameters: 2
	Flags: None
*/
function give_powerup(powerup, doAnimation)
{
	if(!isdefined(self.powerups))
	{
		self.powerups = [];
	}
	powerupIndex = self.powerups.size;
	self.powerups[powerupIndex] = copy_powerup(powerup);
	for(i = 0; i < powerup.name.size; i++)
	{
		self.powerups[powerupIndex].name[self.powerups[powerupIndex].name.size] = powerup.name[i];
	}
	self apply_powerup(self.powerups[powerupIndex]);
	self thread show_powerup_message(powerupIndex, doAnimation);
}

/*
	Name: pulse_powerup_icon
	Namespace: wager
	Checksum: 0xAB27F0C1
	Offset: 0x2608
	Size: 0x2D3
	Parameters: 1
	Flags: None
*/
function pulse_powerup_icon(powerupIndex)
{
	if(!isdefined(self) || !isdefined(self.powerups) || !isdefined(self.powerups[powerupIndex]) || !isdefined(self.powerups[powerupIndex].hud_elem_icon))
	{
		return;
	}
	self endon("disconnect");
	self endon("delete");
	self endon("clearing_powerups");
	pulsePercent = 1.5;
	pulseTime = 0.5;
	hud_elem = self.powerups[powerupIndex].hud_elem_icon;
	if(isdefined(hud_elem.animating) && hud_elem.animating)
	{
		return;
	}
	origX = hud_elem.x;
	origY = hud_elem.y;
	origWidth = hud_elem.width;
	origHeight = hud_elem.height;
	bigWidth = origWidth * pulsePercent;
	bigHeight = origHeight * pulsePercent;
	xOffset = bigWidth - origWidth / 2;
	yOffset = bigHeight - origHeight / 2;
	hud_elem ScaleOverTime(0.05, Int(bigWidth), Int(bigHeight));
	hud_elem MoveOverTime(0.05);
	hud_elem.x = origX - xOffset;
	hud_elem.y = origY - yOffset;
	wait(0.05);
	hud_elem ScaleOverTime(pulseTime, origWidth, origHeight);
	hud_elem MoveOverTime(pulseTime);
	hud_elem.x = origX;
	hud_elem.y = origY;
}

/*
	Name: show_powerup_message
	Namespace: wager
	Checksum: 0xBAE66D01
	Offset: 0x28E8
	Size: 0xA1F
	Parameters: 2
	Flags: None
*/
function show_powerup_message(powerupIndex, doAnimation)
{
	self endon("disconnect");
	self endon("delete");
	self endon("clearing_powerups");
	if(!isdefined(doAnimation))
	{
		doAnimation = 1;
	}
	wasInPrematch = level.inPrematchPeriod;
	powerupStartY = 320;
	powerupSpacing = 40;
	if(self IsSplitscreen())
	{
		powerupStartY = 120;
		powerupSpacing = 35;
	}
	if(isdefined(self.powerups[powerupIndex].hud_elem))
	{
		self.powerups[powerupIndex].hud_elem destroy();
	}
	self.powerups[powerupIndex].hud_elem = newClientHudElem(self);
	self.powerups[powerupIndex].hud_elem.fontscale = 1.5;
	self.powerups[powerupIndex].hud_elem.x = -125;
	self.powerups[powerupIndex].hud_elem.y = powerupStartY - powerupSpacing * powerupIndex;
	self.powerups[powerupIndex].hud_elem.alignX = "left";
	self.powerups[powerupIndex].hud_elem.alignY = "middle";
	self.powerups[powerupIndex].hud_elem.horzAlign = "user_right";
	self.powerups[powerupIndex].hud_elem.vertAlign = "user_top";
	self.powerups[powerupIndex].hud_elem.color = (1, 1, 1);
	self.powerups[powerupIndex].hud_elem.foreground = 1;
	self.powerups[powerupIndex].hud_elem.hidewhendead = 0;
	self.powerups[powerupIndex].hud_elem.hidewheninmenu = 1;
	self.powerups[powerupIndex].hud_elem.archived = 0;
	self.powerups[powerupIndex].hud_elem.alpha = 0;
	self.powerups[powerupIndex].hud_elem setText(self.powerups[powerupIndex].displayName);
	bigIconSize = 40;
	iconSize = 32;
	if(isdefined(self.powerups[powerupIndex].hud_elem_icon))
	{
		self.powerups[powerupIndex].hud_elem_icon destroy();
	}
	if(doAnimation)
	{
		self.powerups[powerupIndex].hud_elem_icon = self hud::createIcon(self.powerups[powerupIndex].iconMaterial, bigIconSize, bigIconSize);
		self.powerups[powerupIndex].hud_elem_icon.animating = 1;
	}
	else
	{
		self.powerups[powerupIndex].hud_elem_icon = self hud::createIcon(self.powerups[powerupIndex].iconMaterial, iconSize, iconSize);
	}
	self.powerups[powerupIndex].hud_elem_icon.x = self.powerups[powerupIndex].hud_elem.x - 5 - iconSize / 2 - bigIconSize / 2;
	self.powerups[powerupIndex].hud_elem_icon.y = powerupStartY - powerupSpacing * powerupIndex - bigIconSize / 2;
	self.powerups[powerupIndex].hud_elem_icon.horzAlign = "user_right";
	self.powerups[powerupIndex].hud_elem_icon.vertAlign = "user_top";
	self.powerups[powerupIndex].hud_elem_icon.color = (1, 1, 1);
	self.powerups[powerupIndex].hud_elem_icon.foreground = 1;
	self.powerups[powerupIndex].hud_elem_icon.hidewhendead = 0;
	self.powerups[powerupIndex].hud_elem_icon.hidewheninmenu = 1;
	self.powerups[powerupIndex].hud_elem_icon.archived = 0;
	self.powerups[powerupIndex].hud_elem_icon.alpha = 1;
	if(!wasInPrematch && doAnimation)
	{
		self thread queue_popup(self.powerups[powerupIndex].displayName, 0, &"MP_BONUS_ACQUIRED");
	}
	pulseTime = 0.5;
	if(doAnimation)
	{
		self.powerups[powerupIndex].hud_elem fadeOverTime(pulseTime);
		self.powerups[powerupIndex].hud_elem_icon ScaleOverTime(pulseTime, iconSize, iconSize);
		self.powerups[powerupIndex].hud_elem_icon.width = iconSize;
		self.powerups[powerupIndex].hud_elem_icon.height = iconSize;
		self.powerups[powerupIndex].hud_elem_icon MoveOverTime(pulseTime);
	}
	self.powerups[powerupIndex].hud_elem.alpha = 1;
	self.powerups[powerupIndex].hud_elem_icon.x = self.powerups[powerupIndex].hud_elem.x - 5 - iconSize;
	self.powerups[powerupIndex].hud_elem_icon.y = powerupStartY - powerupSpacing * powerupIndex - iconSize / 2;
	if(doAnimation)
	{
		wait(pulseTime);
	}
	if(level.inPrematchPeriod)
	{
		level waittill("prematch_over");
	}
	else if(doAnimation)
	{
		wait(pulseTime);
	}
	if(wasInPrematch && doAnimation)
	{
		self thread queue_popup(self.powerups[powerupIndex].displayName, 0, &"MP_BONUS_ACQUIRED");
	}
	wait(1.5);
	for(i = 0; i <= powerupIndex; i++)
	{
		self.powerups[i].hud_elem fadeOverTime(0.25);
		self.powerups[i].hud_elem.alpha = 0;
	}
	wait(0.25);
	for(i = 0; i <= powerupIndex; i++)
	{
		self.powerups[i].hud_elem_icon MoveOverTime(0.25);
		self.powerups[i].hud_elem_icon.x = 0 - iconSize;
		self.powerups[i].hud_elem_icon.horzAlign = "user_right";
	}
	self.powerups[powerupIndex].hud_elem_icon.animating = 0;
}

/*
	Name: clear_powerups
	Namespace: wager
	Checksum: 0xFBA8B50C
	Offset: 0x3310
	Size: 0xF7
	Parameters: 0
	Flags: None
*/
function clear_powerups()
{
	self notify("clearing_powerups");
	if(isdefined(self.powerups) && isdefined(self.powerups.size))
	{
		for(i = 0; i < self.powerups.size; i++)
		{
			if(isdefined(self.powerups[i].hud_elem))
			{
				self.powerups[i].hud_elem destroy();
			}
			if(isdefined(self.powerups[i].hud_elem_icon))
			{
				self.powerups[i].hud_elem_icon destroy();
			}
		}
	}
	self.powerups = [];
}

/*
	Name: track_weapon_usage
	Namespace: wager
	Checksum: 0xD728DC6F
	Offset: 0x3410
	Size: 0xB3
	Parameters: 3
	Flags: None
*/
function track_weapon_usage(name, incValue, statName)
{
	if(!isdefined(self.wagerWeaponUsage))
	{
		self.wagerWeaponUsage = [];
	}
	if(!isdefined(self.wagerWeaponUsage[name]))
	{
		self.wagerWeaponUsage[name] = [];
	}
	if(!isdefined(self.wagerWeaponUsage[name][statName]))
	{
		self.wagerWeaponUsage[name][statName] = 0;
	}
	self.wagerWeaponUsage[name][statName] = self.wagerWeaponUsage[name][statName] + incValue;
}

/*
	Name: get_highest_weapon_usage
	Namespace: wager
	Checksum: 0xE5416FC3
	Offset: 0x34D0
	Size: 0x12D
	Parameters: 1
	Flags: None
*/
function get_highest_weapon_usage(statName)
{
	if(!isdefined(self.wagerWeaponUsage))
	{
		return undefined;
	}
	bestWeapon = undefined;
	highestValue = 0;
	wagerWeaponsUsed = getArrayKeys(self.wagerWeaponUsage);
	for(i = 0; i < wagerWeaponsUsed.size; i++)
	{
		weaponStats = self.wagerWeaponUsage[wagerWeaponsUsed[i]];
		if(!isdefined(weaponStats[statName]) || !GetBaseWeaponItemIndex(wagerWeaponsUsed[i]))
		{
			continue;
			continue;
		}
		if(!isdefined(bestWeapon) || weaponStats[statName] > highestValue)
		{
			bestWeapon = wagerWeaponsUsed[i];
			highestValue = weaponStats[statName];
		}
	}
	return bestWeapon;
}

/*
	Name: set_after_action_report_stats
	Namespace: wager
	Checksum: 0x85A53A2B
	Offset: 0x3608
	Size: 0x165
	Parameters: 0
	Flags: None
*/
function set_after_action_report_stats()
{
	topWeapon = self get_highest_weapon_usage("kills");
	topKills = 0;
	if(isdefined(topWeapon))
	{
		topKills = self.wagerWeaponUsage[topWeapon]["kills"];
	}
	else
	{
		topWeapon = self get_highest_weapon_usage("timeUsed");
	}
	if(!isdefined(topWeapon))
	{
		topWeapon = "";
	}
	self persistence::set_after_action_report_stat("topWeaponItemIndex", GetBaseWeaponItemIndex(topWeapon));
	self persistence::set_after_action_report_stat("topWeaponKills", topKills);
	if(isdefined(level.onWagerAwards))
	{
		self [[level.onWagerAwards]]();
		break;
	}
	for(i = 0; i < 3; i++)
	{
		self persistence::set_after_action_report_stat("wagerAwards", 0, i);
	}
}

