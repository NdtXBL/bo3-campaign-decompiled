#using scripts\codescripts\struct;
#using scripts\shared\bb_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\system_shared;

#namespace bb;

/*
	Name: __init__sytem__
	Namespace: bb
	Checksum: 0xFB919CA
	Offset: 0x918
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__sytem__()
{
	system::register("bb", &__init__, undefined, undefined);
}

/*
	Name: __init__
	Namespace: bb
	Checksum: 0x67D59EAA
	Offset: 0x958
	Size: 0x13
	Parameters: 0
	Flags: None
*/
function __init__()
{
	init_shared();
}

/*
	Name: buildcollectiblesstring
	Namespace: bb
	Checksum: 0x574EF48B
	Offset: 0x978
	Size: 0xD7
	Parameters: 1
	Flags: Private
*/
function private buildcollectiblesstring(player)
{
	collectiblesdiscoveredstr = "";
	if(isdefined(player.collectibles_discovered))
	{
		for(index = 0; index < player.collectibles_discovered.size; index++)
		{
			if(isdefined(player.collectibles_discovered[index]) && player.collectibles_discovered[index])
			{
				if(isdefined(collectiblesdiscoveredstr) && collectiblesdiscoveredstr != "")
				{
					collectiblesdiscoveredstr = collectiblesdiscoveredstr + ";";
				}
				collectiblesdiscoveredstr = collectiblesdiscoveredstr + index;
			}
		}
	}
	return collectiblesdiscoveredstr;
}

/*
	Name: buildcybercomusagestring
	Namespace: bb
	Checksum: 0x8691E15F
	Offset: 0xA58
	Size: 0xDF
	Parameters: 1
	Flags: Private
*/
function private buildcybercomusagestring(player)
{
	cybercomsusedstr = "";
	foreach(usagecount in player.var_1c0132c)
	{
		if(cybercomsusedstr != "")
		{
			cybercomsusedstr = cybercomsusedstr + ";";
		}
		cybercomsusedstr = cybercomsusedstr + cybercomname + ":" + usagecount;
	}
	return cybercomsusedstr;
}

/*
	Name: logmatchsummary
	Namespace: bb
	Checksum: 0x2784A880
	Offset: 0xB40
	Size: 0x91B
	Parameters: 1
	Flags: None
*/
function logmatchsummary(player)
{
	if(!isPlayer(player))
	{
		return;
	}
	kd_denom = 1;
	if(isdefined(player.deaths) && player.deaths > 0)
	{
		kd_denom = player.deaths;
	}
	kdRatio = player.kills / kd_denom;
	var_2bb84605 = 0;
	if(isdefined(player.connectedtime))
	{
		var_2bb84605 = GetTime() - player.connectedtime;
	}
	var_93e3a3c4 = 0;
	shotshit = 0;
	if(isdefined(player._bbData))
	{
		if(isdefined(player._bbData["shots"]))
		{
		}
		else
		{
		}
		var_93e3a3c4 = 0;
		if(isdefined(player._bbData["hits"]))
		{
		}
		else
		{
		}
		shotshit = 0;
	}
	accuracy = 0;
	if(var_93e3a3c4 > 0)
	{
		accuracy = shotshit / var_93e3a3c4;
	}
	cybercomsusedstr = buildcybercomusagestring(player);
	collectiblesdiscoveredstr = buildcollectiblesstring(player);
	corners = GetEntArray("minimap_corner", "targetname");
	dimensions0 = 0;
	dimensions1 = 0;
	if(isdefined(corners) && corners.size >= 2)
	{
		dimensions0 = corners[1].origin[0] - corners[0].origin[0];
		dimensions1 = corners[1].origin[1] - corners[0].origin[1];
	}
	RANKXP = 0;
	rank = 0;
	if(isdefined(player.pers))
	{
		if(isdefined(player.pers["rank"]))
		{
			rank = player.pers["rank"];
		}
		if(isdefined(player.pers["rankxp"]))
		{
			RANKXP = player.pers["rankxp"];
		}
	}
	doublejumpdistance = 0;
	doublejumpcount = 0;
	doublejumptime = 0;
	wallrundistance = 0;
	wallruncount = 0;
	wallruntime = 0;
	sprintdistance = 0;
	sprintcount = 0;
	var_512e490e = 0;
	if(isdefined(player.movementTracking))
	{
		if(isdefined(player.movementTracking.doublejump))
		{
			doublejumpdistance = player.movementTracking.doublejump.Distance;
			doublejumpcount = player.movementTracking.doublejump.count;
			doublejumptime = player.movementTracking.doublejump.time;
		}
		if(isdefined(player.movementTracking.wallRunning))
		{
			wallrundistance = player.movementTracking.wallRunning.Distance;
			wallruncount = player.movementTracking.wallRunning.count;
			wallruntime = player.movementTracking.wallRunning.time;
		}
		if(isdefined(player.movementTracking.sprinting))
		{
			sprintdistance = player.movementTracking.sprinting.Distance;
			sprintcount = player.movementTracking.sprinting.count;
			var_512e490e = player.movementTracking.sprinting.time;
		}
	}
	var_a7032a9 = getplayerspawnid(player);
	if(isdefined(player.pers["best_kill_streak"]))
	{
	}
	else
	{
	}
	bestKillstreak = 0;
	if(isdefined(player.var_247e0696))
	{
	}
	else
	{
	}
	var_247e0696 = 0;
	if(isdefined(player.headshots))
	{
	}
	else
	{
	}
	headshots = 0;
	if(isdefined(player.primaryLoadoutWeapon))
	{
	}
	else
	{
	}
	primaryloadout = "undefined";
	if(isdefined(player.currentWeapon))
	{
	}
	else
	{
	}
	currentWeapon = "undefined";
	if(isdefined(player.grenadesUsed))
	{
	}
	else
	{
	}
	grenadesUsed = 0;
	if(isdefined(player.name))
	{
	}
	else
	{
	}
	playerName = "undefined";
	if(isdefined(player.kills))
	{
	}
	else
	{
	}
	kills = 0;
	if(isdefined(player.deaths))
	{
	}
	else
	{
	}
	deaths = 0;
	if(isdefined(player.pers["incaps"]))
	{
	}
	else
	{
	}
	var_58ef604f = 0;
	if(isdefined(player.assists))
	{
	}
	else
	{
	}
	assists = 0;
	if(isdefined(player.score))
	{
	}
	else
	{
	}
	score = 0;
	bbPrint("cpplayermatchsummary", "gametime %d spawnid %d username %s kills %d deaths %d incaps %d kd %f shotshit %d totalshots %d accuracy %f assists %d score %d playertime %d meleekills %d headshots %d primaryloadoutweapon %s currentweapon %s grenadesused %d bestkillstreak %d dj_dist %d dj_count %d dj_time %d wallrun_dist %d wallrun_count %d wallrun_time %d sprint_dist %d sprint_count %d sprint_time %d cybercomsused %s dim0 %d dim1 %d rank %d rankxp %d collectibles %s", GetTime(), var_a7032a9, playerName, kills, deaths, var_58ef604f, kdRatio, shotshit, var_93e3a3c4, accuracy, assists, score, var_2bb84605, var_247e0696, headshots, primaryloadout, currentWeapon, grenadesUsed, bestKillstreak, doublejumpdistance, doublejumpcount, doublejumptime, wallrundistance, wallruncount, wallruntime, sprintdistance, sprintcount, var_512e490e, cybercomsusedstr, dimensions0, dimensions1, rank, RANKXP, collectiblesdiscoveredstr);
}

/*
	Name: logobjectivestatuschange
	Namespace: bb
	Checksum: 0xDA90D10C
	Offset: 0x1468
	Size: 0x133
	Parameters: 3
	Flags: None
*/
function logobjectivestatuschange(objectiveName, player, status)
{
	var_a7032a9 = -1;
	if(isPlayer(player))
	{
		var_a7032a9 = getplayerspawnid(player);
	}
	else
	{
		return;
	}
	bbPrint("cpcheckpoints", "gametime %d spawnid %d username %s checkpointname %s eventtype %s playerx %d playery %d playerz %d kills %d revives %d deathcount %d deaths %d headshots %d hits %d score %d shotshit %d shotsmissed %d suicides %d downs %d difficulty %s", GetTime(), var_a7032a9, player.name, objectiveName, status, player.origin, player.kills, player.revives, player.deathCount, player.deaths, player.headshots, player.hits, player.score, player.shotshit, player.shotsmissed, player.suicides, player.downs, level.currentDifficulty);
}

/*
	Name: logdamage
	Namespace: bb
	Checksum: 0xFA4D0B8E
	Offset: 0x15A8
	Size: 0x5A3
	Parameters: 8
	Flags: None
*/
function logdamage(attacker, victim, weapon, damage, damageType, hitlocation, var_a56ab5fa, victimdowned)
{
	var_14ac1c86 = -1;
	victimName = "";
	var_d3117c75 = "";
	victimOrigin = (0, 0, 0);
	var_4c26f55 = 0;
	var_99e7469c = 0;
	var_f4bca593 = 0;
	var_cb683866 = 0;
	var_38d64c0f = "";
	victimlaststand = 0;
	victimdowns = 0;
	var_2f4e1ee3 = -1;
	attackerName = "";
	var_2746427c = "";
	attackerOrigin = (0, 0, 0);
	var_6ecba8dc = 0;
	var_33f13d47 = 0;
	var_b8bd32a2 = 0;
	var_ad96a70b = 0;
	var_cd3a2efe = "";
	attackerlaststand = 0;
	aivictimtype = "";
	aivictimrank = "";
	var_b1989306 = "";
	aiattackertype = "";
	aiattackerrank = "";
	aiattackercombatmode = "";
	if(isdefined(attacker))
	{
		if(isPlayer(attacker))
		{
			var_2f4e1ee3 = getplayerspawnid(attacker);
			var_2746427c = "_player";
			attackerName = attacker.name;
		}
		else if(isai(attacker))
		{
			var_2746427c = "_ai";
			aiattackercombatmode = attacker.combatmode;
			var_2f4e1ee3 = attacker.var_d6a02814;
		}
		else
		{
			var_2746427c = "_other";
		}
		attackerOrigin = attacker.origin;
		var_6ecba8dc = attacker.ignoreme;
		var_b8bd32a2 = attacker.fovcosine;
		var_ad96a70b = attacker.maxsightdistsqrd;
		if(isdefined(attacker.animName))
		{
			var_cd3a2efe = attacker.animName;
		}
		if(isdefined(attacker.laststand))
		{
			attackerlaststand = attacker.laststand;
		}
	}
	if(isdefined(victim))
	{
		if(isPlayer(victim))
		{
			var_14ac1c86 = getplayerspawnid(victim);
			var_d3117c75 = "_player";
			victimName = victim.name;
			victimdowns = victim.downs;
		}
		else if(isai(victim))
		{
			var_d3117c75 = "_ai";
			var_b1989306 = victim.combatmode;
			var_14ac1c86 = victim.var_d6a02814;
		}
		else
		{
			var_d3117c75 = "_other";
		}
		victimOrigin = victim.origin;
		var_4c26f55 = victim.ignoreme;
		var_f4bca593 = victim.fovcosine;
		var_cb683866 = victim.maxsightdistsqrd;
		if(isdefined(victim.animName))
		{
			var_38d64c0f = victim.animName;
		}
		if(isdefined(victim.laststand))
		{
			victimlaststand = victim.laststand;
		}
	}
	bbPrint("cpattacks", "gametime %d attackerid %d attackertype %s attackername %s attackerweapon %s attackerx %d attackery %d attackerz %d aiattckercombatmode %s attackerignoreme %d attackerignoreall %d attackerfovcos %d attackermaxsightdistsqrd %d attackeranimname %s attackerlaststand %d victimid %d victimtype %s victimname %s victimx %d victimy %d victimz %d aivictimcombatmode %s victimignoreme %d victimignoreall %d victimfovcos %d victimmaxsightdistsqrd %d victimanimname %s victimlaststand %d damage %d damagetype %s damagelocation %s death %d victimdowned %d downs %d", GetTime(), var_2f4e1ee3, var_2746427c, attackerName, weapon.name, attackerOrigin, aiattackercombatmode, var_6ecba8dc, var_33f13d47, var_b8bd32a2, var_ad96a70b, var_cd3a2efe, attackerlaststand, var_14ac1c86, var_d3117c75, victimName, victimOrigin, var_b1989306, var_4c26f55, var_99e7469c, var_f4bca593, var_cb683866, var_38d64c0f, victimlaststand, damage, damageType, hitlocation, var_a56ab5fa, victimdowned, victimdowns);
}

/*
	Name: logaispawn
	Namespace: bb
	Checksum: 0x9F3AD9B
	Offset: 0x1B58
	Size: 0xFB
	Parameters: 2
	Flags: None
*/
function logaispawn(var_4ad207ea, spawner)
{
	bbPrint("cpaispawn", "gametime %d actorid %d aitype %s archetype %s airank %s accuracy %d originx %d originy %d originz %d weapon %s team %s alertlevel %s grenadeawareness %d canflank %d engagemaxdist %d engagemaxfalloffdist %d engagemindist %d engageminfalloffdist %d health %d", GetTime(), var_4ad207ea.var_d6a02814, var_4ad207ea.aitype, var_4ad207ea.archetype, var_4ad207ea.airank, var_4ad207ea.accuracy, var_4ad207ea.origin, var_4ad207ea.primaryWeapon.name, var_4ad207ea.team, var_4ad207ea.var_4a8372a9, var_4ad207ea.grenadeawareness, var_4ad207ea.canFlank, var_4ad207ea.engageMaxDist, var_4ad207ea.var_48ae01f2, var_4ad207ea.engageMinDist, var_4ad207ea.engageminfalloffdist, var_4ad207ea.health);
}

/*
	Name: logplayermapnotification
	Namespace: bb
	Checksum: 0xF63741AA
	Offset: 0x1C60
	Size: 0x153
	Parameters: 2
	Flags: None
*/
function logplayermapnotification(notificationtype, player)
{
	var_a7032a9 = -1;
	playertype = "";
	playerposition = (0, 0, 0);
	playerName = "";
	if(isai(player))
	{
		var_a7032a9 = player.var_d6a02814;
		playertype = "_ai";
		playerposition = player.origin;
	}
	else if(isPlayer(player))
	{
		var_a7032a9 = getplayerspawnid(player);
		playertype = "_player";
		playerposition = player.origin;
		playerName = player.name;
	}
	bbPrint("cpnotifications", "gametime %d notificationtype %s spawnid %d username %s spawnidtype %s locationx %d locationy %d locationz %d", GetTime(), notificationtype, var_a7032a9, playerName, playertype, playerposition);
}

/*
	Name: logcybercomevent
	Namespace: bb
	Checksum: 0x798E1E14
	Offset: 0x1DC0
	Size: 0x15B
	Parameters: 3
	Flags: None
*/
function logcybercomevent(player, event, gadget)
{
	userid = -1;
	usertype = "";
	userposition = (0, 0, 0);
	var_2a082815 = "";
	if(isai(player))
	{
		userid = player.var_d6a02814;
		usertype = "_ai";
		userposition = player.origin;
	}
	else if(isPlayer(player))
	{
		userid = getplayerspawnid(player);
		usertype = "_player";
		userposition = player.origin;
		var_2a082815 = player.name;
	}
	bbPrint("cpcybercomevents", "gametime %d userid %d username %s usertype %s eventtype %s gadget %s locationx %d locationy %d locationz %d", GetTime(), userid, var_2a082815, usertype, event, gadget, userposition);
}

/*
	Name: logexplosionevent
	Namespace: bb
	Checksum: 0xAB716E51
	Offset: 0x1F28
	Size: 0x17B
	Parameters: 4
	Flags: None
*/
function logexplosionevent(destructible_ent, attacker, logexplosionevent, radius)
{
	var_2f4e1ee3 = -1;
	var_2746427c = "";
	var_ac96e48d = (0, 0, 0);
	attackerusername = "";
	if(isai(attacker))
	{
		var_2f4e1ee3 = attacker.var_d6a02814;
		var_2746427c = "_ai";
		var_ac96e48d = attacker.origin;
	}
	else if(isPlayer(attacker))
	{
		var_2f4e1ee3 = getplayerspawnid(attacker);
		var_2746427c = "_player";
		var_ac96e48d = attacker.origin;
		attackerusername = attacker.name;
	}
	bbPrint("cpexplosionevents", "gametime %d explosiontype %s objectname %s attackerid %d attackerusername %s attackertype %s locationx %d locationy %d locationz %d radius %d attackerx %d attackery %d attackerz %d", GetTime(), logexplosionevent, destructible_ent.classname, var_2f4e1ee3, attackerusername, var_2746427c, destructible_ent.origin, radius, var_ac96e48d);
}

