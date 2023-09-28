#using scripts\codescripts\struct;
#using scripts\cp\_challenges;
#using scripts\cp\_tacticalinsertion;
#using scripts\cp\_util;
#using scripts\cp\gametypes\_globallogic;
#using scripts\cp\gametypes\_globallogic_spawn;
#using scripts\cp\gametypes\_spectating;
#using scripts\shared\callbacks_shared;
#using scripts\shared\challenges_shared;
#using scripts\shared\hud_util_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;
#using scripts\shared\weapons\_tacticalinsertion;

#namespace killcam;

/*
	Name: __init__sytem__
	Namespace: killcam
	Checksum: 0x5861B4CD
	Offset: 0x398
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__sytem__()
{
	system::register("killcam", &__init__, undefined, undefined);
}

/*
	Name: __init__
	Namespace: killcam
	Checksum: 0xE6DEDF18
	Offset: 0x3D8
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
	Namespace: killcam
	Checksum: 0x87884FF4
	Offset: 0x408
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function init()
{
	if(level.gametype === "coop")
	{
		level.killcam = GetGametypeSetting("allowKillcam");
		level.finalkillcam = GetGametypeSetting("allowFinalKillcam");
		/#
			level.var_3a9f9a38 = 0;
		#/
		init_final_killCam();
	}
}

/*
	Name: init_final_killCam
	Namespace: killcam
	Checksum: 0xDA0F617E
	Offset: 0x490
	Size: 0xB9
	Parameters: 0
	Flags: None
*/
function init_final_killCam()
{
	level.finalKillcamSettings = [];
	init_final_killCam_team("none");
	foreach(team in level.teams)
	{
		init_final_killCam_team(team);
	}
	level.finalKillCam_winner = undefined;
}

/*
	Name: init_final_killCam_team
	Namespace: killcam
	Checksum: 0xDCA19327
	Offset: 0x558
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function init_final_killCam_team(team)
{
	level.finalKillcamSettings[team] = spawnstruct();
	clear_final_killcam_team(team);
}

/*
	Name: clear_final_killcam_team
	Namespace: killcam
	Checksum: 0x9595BCF4
	Offset: 0x5A8
	Size: 0x111
	Parameters: 1
	Flags: None
*/
function clear_final_killcam_team(team)
{
	level.finalKillcamSettings[team].spectatorclient = undefined;
	level.finalKillcamSettings[team].weapon = undefined;
	level.finalKillcamSettings[team].deathtime = undefined;
	level.finalKillcamSettings[team].deathTimeOffset = undefined;
	level.finalKillcamSettings[team].offsetTime = undefined;
	level.finalKillcamSettings[team].entityindex = undefined;
	level.finalKillcamSettings[team].targetentityindex = undefined;
	level.finalKillcamSettings[team].entitystarttime = undefined;
	level.finalKillcamSettings[team].PERKS = undefined;
	level.finalKillcamSettings[team].killstreaks = undefined;
	level.finalKillcamSettings[team].attacker = undefined;
}

/*
	Name: record_settings
	Namespace: killcam
	Checksum: 0x717923BC
	Offset: 0x6C8
	Size: 0x343
	Parameters: 11
	Flags: None
*/
function record_settings(spectatorclient, targetentityindex, weapon, deathtime, deathTimeOffset, offsetTime, entityindex, entitystarttime, PERKS, killstreaks, attacker)
{
	if(level.teambased && isdefined(attacker.team) && isdefined(level.teams[attacker.team]))
	{
		team = attacker.team;
		level.finalKillcamSettings[team].spectatorclient = spectatorclient;
		level.finalKillcamSettings[team].weapon = weapon;
		level.finalKillcamSettings[team].deathtime = deathtime;
		level.finalKillcamSettings[team].deathTimeOffset = deathTimeOffset;
		level.finalKillcamSettings[team].offsetTime = offsetTime;
		level.finalKillcamSettings[team].entityindex = entityindex;
		level.finalKillcamSettings[team].targetentityindex = targetentityindex;
		level.finalKillcamSettings[team].entitystarttime = entitystarttime;
		level.finalKillcamSettings[team].PERKS = PERKS;
		level.finalKillcamSettings[team].killstreaks = killstreaks;
		level.finalKillcamSettings[team].attacker = attacker;
	}
	level.finalKillcamSettings["none"].spectatorclient = spectatorclient;
	level.finalKillcamSettings["none"].weapon = weapon;
	level.finalKillcamSettings["none"].deathtime = deathtime;
	level.finalKillcamSettings["none"].deathTimeOffset = deathTimeOffset;
	level.finalKillcamSettings["none"].offsetTime = offsetTime;
	level.finalKillcamSettings["none"].entityindex = entityindex;
	level.finalKillcamSettings["none"].targetentityindex = targetentityindex;
	level.finalKillcamSettings["none"].entitystarttime = entitystarttime;
	level.finalKillcamSettings["none"].PERKS = PERKS;
	level.finalKillcamSettings["none"].killstreaks = killstreaks;
	level.finalKillcamSettings["none"].attacker = attacker;
}

/*
	Name: erase_final_killcam
	Namespace: killcam
	Checksum: 0x207F8B28
	Offset: 0xA18
	Size: 0xA9
	Parameters: 0
	Flags: None
*/
function erase_final_killcam()
{
	clear_final_killcam_team("none");
	foreach(team in level.teams)
	{
		clear_final_killcam_team(team);
	}
	level.finalKillCam_winner = undefined;
}

/*
	Name: final_killcam_waiter
	Namespace: killcam
	Checksum: 0xF08CC071
	Offset: 0xAD0
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function final_killcam_waiter()
{
	if(!isdefined(level.finalKillCam_winner))
	{
		return 0;
	}
	level waittill("final_killcam_done");
	return 1;
}

/*
	Name: post_round_final_killcam
	Namespace: killcam
	Checksum: 0x7C8A4AAA
	Offset: 0xB00
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function post_round_final_killcam()
{
	if(isdefined(level.sidebet) && level.sidebet)
	{
		return;
	}
	level notify("play_final_killcam");
	globallogic::resetOutcomeForAllPlayers();
	final_killcam_waiter();
}

/*
	Name: do_final_killcam
	Namespace: killcam
	Checksum: 0xE4D7315E
	Offset: 0xB58
	Size: 0x1BB
	Parameters: 0
	Flags: None
*/
function do_final_killcam()
{
	level waittill("play_final_killcam");
	level.inFinalKillcam = 1;
	winner = "none";
	if(isdefined(level.finalKillCam_winner))
	{
		winner = level.finalKillCam_winner;
	}
	if(!isdefined(level.finalKillcamSettings[winner].targetentityindex))
	{
		level.inFinalKillcam = 0;
		level notify("final_killcam_done");
		return;
	}
	if(isdefined(level.finalKillcamSettings[winner].attacker))
	{
		challenges::getFinalKill(level.finalKillcamSettings[winner].attacker);
	}
	visionSetNaked(GetDvarString("mapname"), 0);
	players = level.players;
	for(index = 0; index < players.size; index++)
	{
		player = players[index];
		player closeInGameMenu();
		player thread final_killcam(winner);
	}
	wait(0.1);
	while(are_any_players_watching())
	{
		wait(0.05);
	}
	level notify("final_killcam_done");
	level.inFinalKillcam = 0;
}

/*
	Name: startLastKillcam
	Namespace: killcam
	Checksum: 0x99EC1590
	Offset: 0xD20
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function startLastKillcam()
{
}

/*
	Name: are_any_players_watching
	Namespace: killcam
	Checksum: 0xD45124DE
	Offset: 0xD30
	Size: 0x75
	Parameters: 0
	Flags: None
*/
function are_any_players_watching()
{
	players = level.players;
	for(index = 0; index < players.size; index++)
	{
		player = players[index];
		if(isdefined(player.killcam))
		{
			return 1;
		}
	}
	return 0;
}

/*
	Name: killcam
	Namespace: killcam
	Checksum: 0x6CD1EF81
	Offset: 0xDB0
	Size: 0x5B3
	Parameters: 15
	Flags: None
*/
function killcam(attackerNum, targetNum, killcamentity, killcamentityindex, killcamentitystarttime, weapon, deathtime, deathTimeOffset, offsetTime, Respawn, maxTime, PERKS, killstreaks, attacker, body)
{
	self endon("disconnect");
	self endon("spawned");
	level endon("game_ended");
	if(isdefined(body))
	{
		CodeSetClientField(body, "hide_body", 0);
	}
	if(killcamentityindex < 0 || killcamentityindex === targetNum)
	{
		self notify("end_killcam");
		return;
	}
	postDeathDelay = GetTime() - deathtime / 1000;
	predelay = postDeathDelay + deathTimeOffset;
	camtime = calc_time(weapon, killcamentitystarttime, predelay, Respawn, maxTime);
	postdelay = calc_post_delay();
	killcamlength = camtime + postdelay;
	if(isdefined(maxTime) && killcamlength > maxTime)
	{
		if(maxTime < 2)
		{
			return;
		}
		if(maxTime - camtime >= 1)
		{
			postdelay = maxTime - camtime;
		}
		else
		{
			postdelay = 1;
			camtime = maxTime - 1;
		}
		killcamlength = camtime + postdelay;
	}
	killcamoffset = camtime + predelay;
	self notify("begin_killcam", GetTime());
	killcamstarttime = GetTime() - killcamoffset * 1000;
	self.sessionstate = "spectator";
	self.spectatorclient = attackerNum;
	self.killcamentity = -1;
	if(killcamentityindex >= 0)
	{
		self thread set_entity(killcamentityindex, killcamentitystarttime - killcamstarttime - 100);
	}
	self.killcamtargetentity = targetNum;
	self.archivetime = killcamoffset;
	self.killcamlength = killcamlength;
	self.psOffsetTime = offsetTime;
	self.var_7b6b6cbb = camtime;
	self.var_1c362abb = self.killcamlength - camtime;
	foreach(team in level.teams)
	{
		self allowSpectateTeam(team, 1);
	}
	self allowSpectateTeam("freelook", 1);
	self allowSpectateTeam("none", 1);
	self thread ended_killcam_cleanup();
	wait(0.05);
	if(self.archivetime <= predelay)
	{
		self.sessionstate = "spectator";
		self.spectatorclient = -1;
		self.killcamentity = -1;
		self.archivetime = 0;
		self.psOffsetTime = 0;
		self notify("end_killcam");
		return;
	}
	self thread check_for_abrupt_end();
	self.killcam = 1;
	if(!self IsSplitscreen() && level.perksEnabled == 1)
	{
		self add_timer(camtime);
		self hud::showPerks();
	}
	self thread spawned_killcam_cleanup();
	self thread wait_team_change_end_killcam();
	self thread wait_killcam_time();
	self thread function_6cc9650b();
	self thread tacticalinsertion::cancel_button_think();
	self waittill("end_killcam");
	self.var_acfedf1c = undefined;
	self.var_ebd83169 = undefined;
	self end(0);
	self.sessionstate = "spectator";
	self.spectatorclient = -1;
	self.killcamentity = -1;
	self.archivetime = 0;
	self.psOffsetTime = 0;
}

/*
	Name: set_entity
	Namespace: killcam
	Checksum: 0x44C6FBF1
	Offset: 0x1370
	Size: 0x5B
	Parameters: 2
	Flags: None
*/
function set_entity(killcamentityindex, delayms)
{
	self endon("disconnect");
	self endon("end_killcam");
	self endon("spawned");
	if(delayms > 0)
	{
		wait(delayms / 1000);
	}
	self.killcamentity = killcamentityindex;
}

/*
	Name: wait_killcam_time
	Namespace: killcam
	Checksum: 0x6509566A
	Offset: 0x13D8
	Size: 0x39
	Parameters: 0
	Flags: None
*/
function wait_killcam_time()
{
	self endon("disconnect");
	self endon("end_killcam");
	wait(self.killcamlength - 0.05);
	self notify("end_killcam");
}

/*
	Name: function_6cc9650b
	Namespace: killcam
	Checksum: 0x84E093AD
	Offset: 0x1420
	Size: 0x39
	Parameters: 0
	Flags: None
*/
function function_6cc9650b()
{
	self endon("disconnect");
	self endon("end_killcam");
	wait(self.var_7b6b6cbb - 0.05);
	self notify("hash_4cb3b8de");
}

/*
	Name: wait_final_killcam_slowdown
	Namespace: killcam
	Checksum: 0xFADE027C
	Offset: 0x1468
	Size: 0x12B
	Parameters: 2
	Flags: None
*/
function wait_final_killcam_slowdown(deathtime, startTime)
{
	self endon("disconnect");
	self endon("end_killcam");
	secondsUntilDeath = deathtime - startTime / 1000;
	deathtime = GetTime() + secondsUntilDeath * 1000;
	waitBeforeDeath = 2;
	util::setClientSysState("levelNotify", "fkcb");
	wait(max(0, secondsUntilDeath - waitBeforeDeath));
	setSlowMotion(1, 0.25, waitBeforeDeath);
	wait(waitBeforeDeath + 0.5);
	setSlowMotion(0.25, 1, 1);
	wait(0.5);
	util::setClientSysState("levelNotify", "fkce");
}

/*
	Name: wait_skip_killcam_button
	Namespace: killcam
	Checksum: 0xF9A717C3
	Offset: 0x15A0
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function wait_skip_killcam_button()
{
	self endon("disconnect");
	self endon("end_killcam");
	while(self useButtonPressed())
	{
		wait(0.05);
	}
	while(!self useButtonPressed())
	{
		wait(0.05);
	}
	self notify("end_killcam");
	self util::clientNotify("fkce");
}

/*
	Name: wait_team_change_end_killcam
	Namespace: killcam
	Checksum: 0xAC2F6520
	Offset: 0x1638
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function wait_team_change_end_killcam()
{
	self endon("disconnect");
	self endon("end_killcam");
	self waittill("changed_class");
	end(0);
}

/*
	Name: wait_skip_killcam_safe_spawn_button
	Namespace: killcam
	Checksum: 0xE595FF8A
	Offset: 0x1680
	Size: 0x7D
	Parameters: 0
	Flags: None
*/
function wait_skip_killcam_safe_spawn_button()
{
	self endon("disconnect");
	self endon("end_killcam");
	while(self fragButtonPressed())
	{
		wait(0.05);
	}
	while(!self fragButtonPressed())
	{
		wait(0.05);
	}
	self.wantSafeSpawn = 1;
	self notify("end_killcam");
}

/*
	Name: end
	Namespace: killcam
	Checksum: 0xBFB906C7
	Offset: 0x1708
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function end(final)
{
	if(isdefined(self.kc_skiptext))
	{
		self.kc_skiptext.alpha = 0;
	}
	if(isdefined(self.kc_timer))
	{
		self.kc_timer.alpha = 0;
	}
	self.killcam = undefined;
	self thread spectating::set_permissions();
}

/*
	Name: check_for_abrupt_end
	Namespace: killcam
	Checksum: 0x8401C67E
	Offset: 0x1780
	Size: 0x51
	Parameters: 0
	Flags: None
*/
function check_for_abrupt_end()
{
	self endon("disconnect");
	self endon("end_killcam");
	while(1)
	{
		if(self.archivetime <= 0)
		{
			break;
		}
		wait(0.05);
	}
	self notify("end_killcam");
}

/*
	Name: spawned_killcam_cleanup
	Namespace: killcam
	Checksum: 0x28F547EB
	Offset: 0x17E0
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function spawned_killcam_cleanup()
{
	self endon("end_killcam");
	self endon("disconnect");
	self waittill("spawned");
	self end(0);
}

/*
	Name: spectator_killcam_cleanup
	Namespace: killcam
	Checksum: 0x3878A62E
	Offset: 0x1828
	Size: 0x9B
	Parameters: 1
	Flags: None
*/
function spectator_killcam_cleanup(attacker)
{
	self endon("end_killcam");
	self endon("disconnect");
	attacker endon("disconnect");
	attacker waittill("begin_killcam", attackerKcStartTime);
	waitTime = max(0, attackerKcStartTime - self.deathtime - 50);
	wait(waitTime);
	self end(0);
}

/*
	Name: ended_killcam_cleanup
	Namespace: killcam
	Checksum: 0x39FD27FA
	Offset: 0x18D0
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function ended_killcam_cleanup()
{
	self endon("end_killcam");
	self endon("disconnect");
	level waittill("game_ended");
	self end(0);
}

/*
	Name: ended_final_killcam_cleanup
	Namespace: killcam
	Checksum: 0x9BB20333
	Offset: 0x1918
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function ended_final_killcam_cleanup()
{
	self endon("end_killcam");
	self endon("disconnect");
	level waittill("game_ended");
	self end(1);
}

/*
	Name: cancel_use_button
	Namespace: killcam
	Checksum: 0x4BEF9F31
	Offset: 0x1968
	Size: 0x19
	Parameters: 0
	Flags: None
*/
function cancel_use_button()
{
	return self useButtonPressed();
}

/*
	Name: cancel_safe_spawn_button
	Namespace: killcam
	Checksum: 0x7D460C2B
	Offset: 0x1990
	Size: 0x19
	Parameters: 0
	Flags: None
*/
function cancel_safe_spawn_button()
{
	return self fragButtonPressed();
}

/*
	Name: cancel_callback
	Namespace: killcam
	Checksum: 0xCA3A7481
	Offset: 0x19B8
	Size: 0xF
	Parameters: 0
	Flags: None
*/
function cancel_callback()
{
	self.cancelKillcam = 1;
}

/*
	Name: cancel_safe_spawn_callback
	Namespace: killcam
	Checksum: 0xD5FF7F64
	Offset: 0x19D0
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function cancel_safe_spawn_callback()
{
	self.cancelKillcam = 1;
	self.wantSafeSpawn = 1;
}

/*
	Name: cancel_on_use
	Namespace: killcam
	Checksum: 0xDB6D62C0
	Offset: 0x19F8
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function cancel_on_use()
{
	self thread cancel_on_use_specific_button(&cancel_use_button, &cancel_callback);
}

/*
	Name: cancel_on_use_specific_button
	Namespace: killcam
	Checksum: 0x6E042F85
	Offset: 0x1A38
	Size: 0x11B
	Parameters: 2
	Flags: None
*/
function cancel_on_use_specific_button(pressingButtonFunc, finishedFunc)
{
	self endon("death_delay_finished");
	self endon("disconnect");
	level endon("game_ended");
	while(!self [[pressingButtonFunc]]())
	{
		wait(0.05);
		continue;
		buttonTime = 0;
		while(self [[pressingButtonFunc]]())
		{
			buttonTime = buttonTime + 0.05;
			wait(0.05);
		}
		if(buttonTime >= 0.5)
		{
		}
		else
		{
			buttonTime = 0;
			while(!self [[pressingButtonFunc]]() && buttonTime < 0.5)
			{
				buttonTime = buttonTime + 0.05;
				wait(0.05);
			}
			if(buttonTime >= 0.5)
			{
			}
			else
			{
				self [[finishedFunc]]();
				return;
			}
		}
	}
}

/*
	Name: final_killcam
	Namespace: killcam
	Checksum: 0xB4DA148A
	Offset: 0x1B60
	Size: 0x57B
	Parameters: 1
	Flags: None
*/
function final_killcam(winner)
{
	self endon("disconnect");
	level endon("game_ended");
	if(util::wasLastRound())
	{
		SetMatchFlag("final_killcam", 1);
		SetMatchFlag("round_end_killcam", 0);
	}
	else
	{
		SetMatchFlag("final_killcam", 0);
		SetMatchFlag("round_end_killcam", 1);
	}
	/#
		if(GetDvarInt("Dev Block strings are not supported") == 1)
		{
			SetMatchFlag("Dev Block strings are not supported", 1);
			SetMatchFlag("Dev Block strings are not supported", 0);
		}
	#/
	if(level.console)
	{
		self globallogic_spawn::setThirdPerson(0);
	}
	killcamSettings = level.finalKillcamSettings[winner];
	postDeathDelay = GetTime() - killcamSettings.deathtime / 1000;
	predelay = postDeathDelay + killcamSettings.deathTimeOffset;
	camtime = calc_time(killcamSettings.weapon, killcamSettings.entitystarttime, predelay, 0, undefined);
	postdelay = calc_post_delay();
	killcamoffset = camtime + predelay;
	killcamlength = camtime + postdelay - 0.05;
	killcamstarttime = GetTime() - killcamoffset * 1000;
	self notify("begin_killcam", GetTime());
	self.sessionstate = "spectator";
	self.spectatorclient = killcamSettings.spectatorclient;
	self.killcamentity = -1;
	if(killcamSettings.entityindex >= 0)
	{
		self thread set_entity(killcamSettings.entityindex, killcamSettings.entitystarttime - killcamstarttime - 100);
	}
	self.killcamtargetentity = killcamSettings.targetentityindex;
	self.archivetime = killcamoffset;
	self.killcamlength = killcamlength;
	self.psOffsetTime = killcamSettings.offsetTime;
	foreach(team in level.teams)
	{
		self allowSpectateTeam(team, 1);
	}
	self allowSpectateTeam("freelook", 1);
	self allowSpectateTeam("none", 1);
	self thread ended_final_killcam_cleanup();
	wait(0.05);
	if(self.archivetime <= predelay)
	{
		self.sessionstate = "dead";
		self.spectatorclient = -1;
		self.killcamentity = -1;
		self.archivetime = 0;
		self.psOffsetTime = 0;
		self notify("end_killcam");
		return;
	}
	self thread check_for_abrupt_end();
	self.killcam = 1;
	if(!self IsSplitscreen())
	{
		self add_timer(camtime);
	}
	self thread wait_killcam_time();
	self thread wait_final_killcam_slowdown(level.finalKillcamSettings[winner].deathtime, killcamstarttime);
	self waittill("end_killcam");
	self end(1);
	SetMatchFlag("final_killcam", 0);
	SetMatchFlag("round_end_killcam", 0);
	self spawn_end_of_final_killcam();
}

/*
	Name: spawn_end_of_final_killcam
	Namespace: killcam
	Checksum: 0x2072A195
	Offset: 0x20E8
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function spawn_end_of_final_killcam()
{
	[[level.spawnSpectator]]();
	self FreezeControls(1);
}

/*
	Name: is_entity_weapon
	Namespace: killcam
	Checksum: 0x5CBA60E3
	Offset: 0x2120
	Size: 0x2F
	Parameters: 1
	Flags: None
*/
function is_entity_weapon(weapon)
{
	if(weapon.name == "planemortar")
	{
		return 1;
	}
	return 0;
}

/*
	Name: calc_time
	Namespace: killcam
	Checksum: 0x738C0B1D
	Offset: 0x2158
	Size: 0x153
	Parameters: 5
	Flags: None
*/
function calc_time(weapon, entitystarttime, predelay, Respawn, maxTime)
{
	camtime = 0;
	if(GetDvarString("scr_killcam_time") == "")
	{
		if(is_entity_weapon(weapon))
		{
			camtime = GetTime() - entitystarttime / 1000 - predelay - 0.1;
		}
		else if(!Respawn)
		{
			camtime = 5;
		}
		else if(weapon.isgrenadeweapon)
		{
			camtime = 4.25;
		}
		else
		{
			camtime = 2.5;
		}
	}
	else
	{
		camtime = GetDvarFloat("scr_killcam_time");
	}
	if(isdefined(maxTime))
	{
		if(camtime > maxTime)
		{
			camtime = maxTime;
		}
		if(camtime < 0.05)
		{
			camtime = 0.05;
		}
	}
	return camtime;
}

/*
	Name: calc_post_delay
	Namespace: killcam
	Checksum: 0x6121D203
	Offset: 0x22B8
	Size: 0x7F
	Parameters: 0
	Flags: None
*/
function calc_post_delay()
{
	postdelay = 0;
	if(GetDvarString("scr_killcam_posttime") == "")
	{
		postdelay = 2;
	}
	else
	{
		postdelay = GetDvarFloat("scr_killcam_posttime");
		if(postdelay < 0.05)
		{
			postdelay = 0.05;
		}
	}
	return postdelay;
}

/*
	Name: add_skip_text
	Namespace: killcam
	Checksum: 0xC8F52E17
	Offset: 0x2340
	Size: 0x1BF
	Parameters: 1
	Flags: None
*/
function add_skip_text(Respawn)
{
	if(!isdefined(self.kc_skiptext))
	{
		self.kc_skiptext = newClientHudElem(self);
		self.kc_skiptext.archived = 0;
		self.kc_skiptext.x = 0;
		self.kc_skiptext.alignX = "center";
		self.kc_skiptext.alignY = "middle";
		self.kc_skiptext.horzAlign = "center";
		self.kc_skiptext.vertAlign = "bottom";
		self.kc_skiptext.sort = 1;
		self.kc_skiptext.font = "objective";
	}
	if(self IsSplitscreen())
	{
		self.kc_skiptext.y = -100;
		self.kc_skiptext.fontscale = 1.4;
	}
	else
	{
		self.kc_skiptext.y = -120;
		self.kc_skiptext.fontscale = 2;
	}
	if(Respawn)
	{
		self.kc_skiptext setText(&"PLATFORM_PRESS_TO_RESPAWN");
	}
	else
	{
		self.kc_skiptext setText(&"PLATFORM_PRESS_TO_SKIP");
	}
	self.kc_skiptext.alpha = 1;
}

/*
	Name: add_timer
	Namespace: killcam
	Checksum: 0x2D335697
	Offset: 0x2508
	Size: 0xB
	Parameters: 1
	Flags: None
*/
function add_timer(camtime)
{
}

/*
	Name: init_kc_elements
	Namespace: killcam
	Checksum: 0x3F5F4708
	Offset: 0x2520
	Size: 0x54F
	Parameters: 0
	Flags: None
*/
function init_kc_elements()
{
	if(!isdefined(self.kc_skiptext))
	{
		self.kc_skiptext = newClientHudElem(self);
		self.kc_skiptext.archived = 0;
		self.kc_skiptext.x = 0;
		self.kc_skiptext.alignX = "center";
		self.kc_skiptext.alignY = "top";
		self.kc_skiptext.horzAlign = "center_adjustable";
		self.kc_skiptext.vertAlign = "top_adjustable";
		self.kc_skiptext.sort = 1;
		self.kc_skiptext.font = "default";
		self.kc_skiptext.foreground = 1;
		self.kc_skiptext.hidewheninmenu = 1;
		if(self IsSplitscreen())
		{
			self.kc_skiptext.y = 20;
			self.kc_skiptext.fontscale = 1.2;
		}
		else
		{
			self.kc_skiptext.y = 32;
			self.kc_skiptext.fontscale = 1.8;
		}
	}
	if(!isdefined(self.kc_othertext))
	{
		self.kc_othertext = newClientHudElem(self);
		self.kc_othertext.archived = 0;
		self.kc_othertext.y = 48;
		self.kc_othertext.alignX = "left";
		self.kc_othertext.alignY = "top";
		self.kc_othertext.horzAlign = "center";
		self.kc_othertext.vertAlign = "middle";
		self.kc_othertext.sort = 10;
		self.kc_othertext.font = "small";
		self.kc_othertext.foreground = 1;
		self.kc_othertext.hidewheninmenu = 1;
		if(self IsSplitscreen())
		{
			self.kc_othertext.x = 16;
			self.kc_othertext.fontscale = 1.2;
		}
		else
		{
			self.kc_othertext.x = 32;
			self.kc_othertext.fontscale = 1.6;
		}
	}
	if(!isdefined(self.kc_icon))
	{
		self.kc_icon = newClientHudElem(self);
		self.kc_icon.archived = 0;
		self.kc_icon.x = 16;
		self.kc_icon.y = 16;
		self.kc_icon.alignX = "left";
		self.kc_icon.alignY = "top";
		self.kc_icon.horzAlign = "center";
		self.kc_icon.vertAlign = "middle";
		self.kc_icon.sort = 1;
		self.kc_icon.foreground = 1;
		self.kc_icon.hidewheninmenu = 1;
	}
	if(!self IsSplitscreen())
	{
		if(!isdefined(self.kc_timer))
		{
			self.kc_timer = hud::createFontString("hudbig", 1);
			self.kc_timer.archived = 0;
			self.kc_timer.x = 0;
			self.kc_timer.alignX = "center";
			self.kc_timer.alignY = "middle";
			self.kc_timer.horzAlign = "center_safearea";
			self.kc_timer.vertAlign = "top_adjustable";
			self.kc_timer.y = 42;
			self.kc_timer.sort = 1;
			self.kc_timer.font = "hudbig";
			self.kc_timer.foreground = 1;
			self.kc_timer.color = VectorScale((1, 1, 1), 0.85);
			self.kc_timer.hidewheninmenu = 1;
		}
	}
}

