#using scripts\codescripts\struct;
#using scripts\shared\_burnplayer;
#using scripts\shared\callbacks_shared;
#using scripts\shared\challenges_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\damagefeedback_shared;
#using scripts\shared\entityheadicons_shared;
#using scripts\shared\killcam_shared;
#using scripts\shared\scoreevents_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;
#using scripts\shared\weapons\_tacticalinsertion;
#using scripts\shared\weapons\_weaponobjects;

#namespace incendiary;

/*
	Name: __init__sytem__
	Namespace: incendiary
	Checksum: 0x9616BEF5
	Offset: 0x498
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__sytem__()
{
	system::register("incendiary_grenade", &init_shared, undefined, undefined);
}

/*
	Name: init_shared
	Namespace: incendiary
	Checksum: 0xA3BDC9FA
	Offset: 0x4D8
	Size: 0x123
	Parameters: 0
	Flags: None
*/
function init_shared()
{
	level.incendiaryfireDamage = GetDvarInt("scr_incendiaryfireDamage", 75);
	level.incendiaryfireDamageHardcore = GetDvarInt("scr_incendiaryfireDamageHardcore", 15);
	level.incendiaryfireDuration = GetDvarInt("scr_incendiaryfireDuration", 5);
	level.incendiaryfxDuration = GetDvarFloat("scr_incendiaryfxDuration", 0.4);
	level.incendiaryDamageRadius = GetDvarInt("scr_incendiaryDamageRadius", 125);
	level.incendiaryfireDamageTickTime = GetDvarFloat("scr_incendiaryfireDamageTickTime", 1);
	level.incendiaryDamageThisTick = [];
	callback::on_spawned(&create_incendiary_watcher);
}

/*
	Name: function_f981c352
	Namespace: incendiary
	Checksum: 0x92C4FE82
	Offset: 0x608
	Size: 0xFB
	Parameters: 0
	Flags: None
*/
function function_f981c352()
{
	/#
		level.incendiaryfireDamage = GetDvarInt("Dev Block strings are not supported", level.incendiaryfireDamage);
		level.incendiaryfireDamageHardcore = GetDvarInt("Dev Block strings are not supported", level.incendiaryfireDamageHardcore);
		level.incendiaryfireDuration = GetDvarInt("Dev Block strings are not supported", level.incendiaryfireDuration);
		level.incendiaryDamageRadius = GetDvarInt("Dev Block strings are not supported", level.incendiaryDamageRadius);
		level.incendiaryfireDamageTickTime = GetDvarFloat("Dev Block strings are not supported", level.incendiaryfireDamageTickTime);
		level.incendiaryfxDuration = GetDvarFloat("Dev Block strings are not supported", level.incendiaryfxDuration);
	#/
}

/*
	Name: create_incendiary_watcher
	Namespace: incendiary
	Checksum: 0xD8712BA9
	Offset: 0x710
	Size: 0x4F
	Parameters: 0
	Flags: None
*/
function create_incendiary_watcher()
{
	watcher = self weaponobjects::createUseWeaponObjectWatcher("incendiary_grenade", self.team);
	watcher.onSpawn = &incendiary_system_spawn;
}

/*
	Name: incendiary_system_spawn
	Namespace: incendiary
	Checksum: 0x43C46383
	Offset: 0x768
	Size: 0x73
	Parameters: 2
	Flags: None
*/
function incendiary_system_spawn(watcher, player)
{
	player endon("death");
	player endon("disconnect");
	level endon("game_ended");
	player addweaponstat(self.weapon, "used", 1);
	thread watchForExplode(player);
}

/*
	Name: watchForExplode
	Namespace: incendiary
	Checksum: 0xD06908AC
	Offset: 0x7E8
	Size: 0x16B
	Parameters: 1
	Flags: None
*/
function watchForExplode(owner)
{
	self endon("hacked");
	self endon("delete");
	killCamEnt = spawn("script_model", self.origin);
	killCamEnt util::deleteAfterTime(15);
	killCamEnt.startTime = GetTime();
	killCamEnt LinkTo(self);
	killCamEnt setWeapon(self.weapon);
	killCamEnt killcam::store_killcam_entity_on_entity(self);
	self waittill("projectile_impact_explode", origin, normal, surface);
	killCamEnt Unlink();
	/#
		function_f981c352();
	#/
	playsoundatposition("wpn_incendiary_core_start", self.origin);
	generateLocations(origin, owner, normal, killCamEnt);
}

/*
	Name: getstepoutdistance
	Namespace: incendiary
	Checksum: 0x6347E36C
	Offset: 0x960
	Size: 0x7D
	Parameters: 1
	Flags: None
*/
function getstepoutdistance(normal)
{
	if(normal[2] < 0.5)
	{
		stepoutdistance = normal * GetDvarInt("scr_incendiary_stepout_wall", 50);
	}
	else
	{
		stepoutdistance = normal * GetDvarInt("scr_incendiary_stepout_ground", 12);
	}
	return stepoutdistance;
}

/*
	Name: generateLocations
	Namespace: incendiary
	Checksum: 0xC1DABFE9
	Offset: 0x9E8
	Size: 0x2AB
	Parameters: 4
	Flags: None
*/
function generateLocations(position, owner, normal, killCamEnt)
{
	startPos = position + getstepoutdistance(normal);
	desiredEndPos = startPos + VectorScale((0, 0, 1), 60);
	physTrace = PhysicsTrace(startPos, desiredEndPos, VectorScale((-1, -1, -1), 4), VectorScale((1, 1, 1), 4), self, 1);
	if(physTrace["fraction"] < 1)
	{
	}
	else
	{
	}
	goalpos = desiredEndPos;
	killCamEnt moveto(goalpos, 0.5);
	rotation = RandomInt(360);
	if(normal[2] < 0.1)
	{
		black = VectorScale((1, 1, 1), 0.1);
		trace = hitPos(startPos, startPos + normal * -1 * 70 + (0, 0, -1) * 70, black);
		tracePosition = trace["position"];
		incendiaryGrenade = GetWeapon("incendiary_fire");
		if(trace["fraction"] < 0.9)
		{
			wallnormal = trace["normal"];
			SpawnTimedFX(incendiaryGrenade, trace["position"], wallnormal, level.incendiaryfireDuration, self.team);
		}
	}
	fxCount = GetDvarInt("scr_incendiary_fx_count", 6);
	spawnAllLocs(owner, startPos, normal, 1, rotation, killCamEnt, fxCount);
}

/*
	Name: getLocationForFX
	Namespace: incendiary
	Checksum: 0x9800964A
	Offset: 0xCA0
	Size: 0xB5
	Parameters: 5
	Flags: None
*/
function getLocationForFX(startPos, fxIndex, fxCount, defaultDistance, rotation)
{
	currentAngle = 360 / fxCount * fxIndex;
	cosCurrent = cos(currentAngle + rotation);
	sinCurrent = sin(currentAngle + rotation);
	return startPos + (defaultDistance * cosCurrent, defaultDistance * sinCurrent, 0);
}

/*
	Name: spawnAllLocs
	Namespace: incendiary
	Checksum: 0x210A9029
	Offset: 0xD60
	Size: 0x525
	Parameters: 7
	Flags: None
*/
function spawnAllLocs(owner, startPos, normal, multiplier, rotation, killCamEnt, fxCount)
{
	defaultDistance = GetDvarInt("scr_incendiary_trace_distance", 220) * multiplier;
	defaultDropDistance = GetDvarInt("scr_incendiary_trace_down_distance", 90);
	colorArray = [];
	colorArray[colorArray.size] = (0.9, 0.2, 0.2);
	colorArray[colorArray.size] = (0.2, 0.9, 0.2);
	colorArray[colorArray.size] = (0.2, 0.2, 0.9);
	colorArray[colorArray.size] = VectorScale((1, 1, 1), 0.9);
	locations = [];
	locations["color"] = [];
	locations["loc"] = [];
	locations["tracePos"] = [];
	locations["distSqrd"] = [];
	locations["fxtoplay"] = [];
	locations["radius"] = [];
	for(fxIndex = 0; fxIndex < fxCount; fxIndex++)
	{
		locations["point"][fxIndex] = getLocationForFX(startPos, fxIndex, fxCount, defaultDistance, rotation);
		locations["color"][fxIndex] = colorArray[fxIndex % colorArray.size];
	}
	for(count = 0; count < fxCount; count++)
	{
		trace = hitPos(startPos, locations["point"][count], locations["color"][count]);
		tracePosition = trace["position"];
		locations["tracePos"][count] = tracePosition;
		if(trace["fraction"] < 0.7)
		{
			locations["loc"][count] = tracePosition;
			locations["normal"][count] = trace["normal"];
			continue;
		}
		average = startPos / 2 + tracePosition / 2;
		trace = hitPos(average, average - (0, 0, defaultDropDistance), locations["color"][count]);
		if(trace["fraction"] != 1)
		{
			locations["loc"][count] = trace["position"];
			locations["normal"][count] = trace["normal"];
		}
	}
	incendiaryGrenade = GetWeapon("incendiary_fire");
	SpawnTimedFX(incendiaryGrenade, startPos, normal, level.incendiaryfireDuration, self.team);
	level.incendiaryDamageRadius = GetDvarInt("scr_incendiaryDamageRadius", level.incendiaryDamageRadius);
	thread damageEffectArea(owner, startPos, level.incendiaryDamageRadius, level.incendiaryDamageRadius, killCamEnt);
	for(count = 0; count < locations["point"].size; count++)
	{
		if(isdefined(locations["loc"][count]))
		{
			normal = locations["normal"][count];
			SpawnTimedFX(incendiaryGrenade, locations["loc"][count], normal, level.incendiaryfireDuration, self.team);
		}
	}
}

/*
	Name: function_b45383a0
	Namespace: incendiary
	Checksum: 0xEA38398A
	Offset: 0x1290
	Size: 0xBB
	Parameters: 5
	Flags: None
*/
function function_b45383a0(from, to, color, depthTest, time)
{
	/#
		debug_rcbomb = GetDvarInt("Dev Block strings are not supported", 0);
		if(debug_rcbomb == 1)
		{
			if(!isdefined(time))
			{
				time = 100;
			}
			if(!isdefined(depthTest))
			{
				depthTest = 1;
			}
			line(from, to, color, 1, depthTest, time);
		}
	#/
}

/*
	Name: damageEffectArea
	Namespace: incendiary
	Checksum: 0xC4D4B028
	Offset: 0x1358
	Size: 0x281
	Parameters: 5
	Flags: None
*/
function damageEffectArea(owner, position, radius, height, killCamEnt)
{
	trigger_radius_position = position - (0, 0, height);
	trigger_radius_height = height * 2;
	fireEffectArea = spawn("trigger_radius", trigger_radius_position, 0, radius, trigger_radius_height);
	/#
		if(GetDvarInt("Dev Block strings are not supported"))
		{
			level thread util::drawcylinder(trigger_radius_position, radius, trigger_radius_height, undefined, "Dev Block strings are not supported");
		}
	#/
	if(isdefined(level.rapsOnBurnRaps))
	{
		owner thread [[level.rapsOnBurnRaps]](fireEffectArea);
	}
	loopWaitTime = level.incendiaryfireDamageTickTime;
	durationOfIncendiary = level.incendiaryfireDuration;
	while(durationOfIncendiary > 0)
	{
		durationOfIncendiary = durationOfIncendiary - loopWaitTime;
		damageApplied = 0;
		potential_targets = self getPotentialTargets(owner);
		foreach(target in potential_targets)
		{
			self tryToApplyFireDamage(target, owner, position, fireEffectArea, loopWaitTime, killCamEnt);
		}
		wait(loopWaitTime);
	}
	if(isdefined(killCamEnt))
	{
		killCamEnt entityheadicons::destroyEntityHeadIcons();
	}
	fireEffectArea delete();
	/#
		if(GetDvarInt("Dev Block strings are not supported"))
		{
			level notify("hash_7e5be7f8");
		}
	#/
}

/*
	Name: getPotentialTargets
	Namespace: incendiary
	Checksum: 0x187E2900
	Offset: 0x15E8
	Size: 0x2F3
	Parameters: 1
	Flags: None
*/
function getPotentialTargets(owner)
{
	if(isdefined(owner))
	{
	}
	else
	{
	}
	owner_team = undefined;
	if(level.teambased && isdefined(owner_team) && level.friendlyfire == 0)
	{
		if(owner_team == "axis")
		{
		}
		else
		{
		}
		enemy_team = "axis";
		potential_targets = [];
		potential_targets = ArrayCombine(potential_targets, GetPlayers(enemy_team), 0, 0);
		potential_targets = ArrayCombine(potential_targets, GetAITeamArray(enemy_team), 0, 0);
		potential_targets = ArrayCombine(potential_targets, GetVehicleTeamArray(enemy_team), 0, 0);
		potential_targets[potential_targets.size] = owner;
		return potential_targets;
	}
	all_targets = [];
	all_targets = ArrayCombine(all_targets, level.players, 0, 0);
	all_targets = ArrayCombine(all_targets, GetAIArray(), 0, 0);
	all_targets = ArrayCombine(all_targets, GetVehicleArray(), 0, 0);
	if(level.friendlyfire > 0)
	{
		return all_targets;
	}
	potential_targets = [];
	foreach(target in all_targets)
	{
		if(isdefined(owner))
		{
			if(target != owner)
			{
				if(!isdefined(owner_team))
				{
					continue;
				}
				if(target.team == owner_team)
				{
					continue;
				}
			}
		}
		else if(!isdefined(self.team))
		{
			continue;
		}
		if(target.team == self.team)
		{
			continue;
		}
		potential_targets[potential_targets.size] = target;
	}
	return potential_targets;
}

/*
	Name: tryToApplyFireDamage
	Namespace: incendiary
	Checksum: 0xED3616E7
	Offset: 0x18E8
	Size: 0x13B
	Parameters: 6
	Flags: None
*/
function tryToApplyFireDamage(target, owner, position, fireEffectArea, resetFireTime, killCamEnt)
{
	if(!isdefined(target.infireArea) || target.infireArea == 0)
	{
		if(target istouching(fireEffectArea) && (!isdefined(target.sessionstate) || target.sessionstate == "playing"))
		{
			trace = bullettrace(position, target GetShootAtPos(), 0, target, 1);
			if(trace["fraction"] == 1)
			{
				target.lastburnedBy = owner;
				target thread damageInFireArea(fireEffectArea, killCamEnt, trace, position, resetFireTime);
			}
		}
	}
}

/*
	Name: damageInFireArea
	Namespace: incendiary
	Checksum: 0xDE4D35B7
	Offset: 0x1A30
	Size: 0x1A3
	Parameters: 5
	Flags: None
*/
function damageInFireArea(fireEffectArea, killCamEnt, trace, position, resetFireTime)
{
	self endon("disconnect");
	self endon("death");
	timer = 0;
	damage = level.incendiaryfireDamage;
	if(level.hardcoreMode)
	{
		damage = level.incendiaryfireDamageHardcore;
	}
	if(canDoFireDamage(killCamEnt, self, resetFireTime))
	{
		/#
			level.var_8296d89b = GetDvarInt("Dev Block strings are not supported", 0);
			if(level.var_8296d89b)
			{
				if(!isdefined(level.var_254c377b))
				{
					level.var_254c377b = GetTime();
				}
				IPrintLnBold(level.var_254c377b - GetTime());
				level.var_254c377b = GetTime();
			}
		#/
		self DoDamage(damage, fireEffectArea.origin, self.lastburnedBy, killCamEnt, "none", "MOD_BURNED", 0, GetWeapon("incendiary_fire"));
		entnum = self GetEntityNumber();
		self thread sndFireDamage();
	}
}

/*
	Name: sndFireDamage
	Namespace: incendiary
	Checksum: 0xF358B7D9
	Offset: 0x1BE0
	Size: 0x11D
	Parameters: 0
	Flags: None
*/
function sndFireDamage()
{
	self notify("sndFire");
	self endon("death");
	self endon("disconnect");
	self endon("sndFire");
	if(!isdefined(self.sndFireEnt))
	{
		self.sndFireEnt = spawn("script_origin", self.origin);
		self.sndFireEnt LinkTo(self, "tag_origin");
		self.sndFireEnt playsound("chr_burn_start");
		self thread sndFireDamage_DeleteEnt(self.sndFireEnt);
	}
	self.sndFireEnt PlayLoopSound("chr_burn_start_loop", 0.5);
	wait(3);
	self.sndFireEnt delete();
	self.sndFireEnt = undefined;
}

/*
	Name: sndFireDamage_DeleteEnt
	Namespace: incendiary
	Checksum: 0x5543A25E
	Offset: 0x1D08
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function sndFireDamage_DeleteEnt(ent)
{
	self endon("disconnect");
	self waittill("death");
	if(isdefined(ent))
	{
		ent delete();
	}
}

/*
	Name: hitPos
	Namespace: incendiary
	Checksum: 0x6B3693ED
	Offset: 0x1D58
	Size: 0xCF
	Parameters: 3
	Flags: None
*/
function hitPos(start, end, color)
{
	trace = bullettrace(start, end, 0, undefined);
	/#
		level.var_8296d89b = GetDvarInt("Dev Block strings are not supported", 0);
		if(level.var_8296d89b)
		{
			debugstar(trace["Dev Block strings are not supported"], 2000, color);
		}
		thread function_b45383a0(start, trace["Dev Block strings are not supported"], color, 1, 80);
	#/
	return trace;
}

/*
	Name: canDoFireDamage
	Namespace: incendiary
	Checksum: 0x46EEFBDF
	Offset: 0x1E30
	Size: 0x83
	Parameters: 3
	Flags: None
*/
function canDoFireDamage(killCamEnt, victim, resetFireTime)
{
	entnum = victim GetEntityNumber();
	if(!isdefined(level.incendiaryDamageThisTick[entnum]))
	{
		level.incendiaryDamageThisTick[entnum] = 0;
		level thread resetFireDamage(entnum, resetFireTime);
		return 1;
	}
	return 0;
}

/*
	Name: resetFireDamage
	Namespace: incendiary
	Checksum: 0x8A1547A9
	Offset: 0x1EC0
	Size: 0x3F
	Parameters: 2
	Flags: None
*/
function resetFireDamage(entnum, time)
{
	if(time > 0.05)
	{
		wait(time - 0.05);
	}
	level.incendiaryDamageThisTick[entnum] = undefined;
}

