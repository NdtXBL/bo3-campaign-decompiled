#using scripts\codescripts\struct;
#using scripts\cp\_bb;
#using scripts\cp\_challenges;
#using scripts\cp\_friendlyfire;
#using scripts\cp\_scoreevents;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_globallogic;
#using scripts\cp\gametypes\_globallogic_player;
#using scripts\cp\gametypes\_globallogic_score;
#using scripts\cp\gametypes\_globallogic_utils;
#using scripts\cp\gametypes\_weapons;
#using scripts\shared\_burnplayer;
#using scripts\shared\ai\systems\destructible_character;
#using scripts\shared\ai\systems\gib;
#using scripts\shared\ai\systems\shared;
#using scripts\shared\ammo_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\challenges_shared;
#using scripts\shared\damagefeedback_shared;
#using scripts\shared\scoreevents_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\weapons\_weapon_utils;
#using scripts\shared\weapons_shared;

#namespace globallogic_actor;

/*
	Name: Callback_ActorSpawned
	Namespace: globallogic_actor
	Checksum: 0x438FFA1B
	Offset: 0x4C0
	Size: 0x53
	Parameters: 1
	Flags: None
*/
function Callback_ActorSpawned(spawner)
{
	self thread spawner::spawn_think(spawner);
	self globallogic_player::resetAttackerList();
	bb::logaispawn(self, spawner);
}

/*
	Name: Callback_ActorDamage
	Namespace: globallogic_actor
	Checksum: 0xD82BB613
	Offset: 0x520
	Size: 0xB23
	Parameters: 15
	Flags: None
*/
function Callback_ActorDamage(eInflictor, eAttacker, iDamage, iDFlags, sMeansOfDeath, weapon, vPoint, vDir, sHitLoc, vDamageOrigin, psOffsetTime, boneIndex, modelIndex, surfaceType, surfaceNormal)
{
	self endon("death");
	params = spawnstruct();
	params.eInflictor = eInflictor;
	params.eAttacker = eAttacker;
	params.iDamage = iDamage;
	params.iDFlags = iDFlags;
	params.sMeansOfDeath = sMeansOfDeath;
	params.weapon = weapon;
	params.vPoint = vPoint;
	params.vDir = vDir;
	params.sHitLoc = sHitLoc;
	params.vDamageOrigin = vDamageOrigin;
	params.psOffsetTime = psOffsetTime;
	self.iDFlags = iDFlags;
	self.iDFlagsTime = GetTime();
	eAttacker = globallogic_player::figureOutAttacker(eAttacker);
	if(self.health == self.maxhealth || !isdefined(self.Attackers))
	{
		self.Attackers = [];
		self.attackerData = [];
		self.attackerDamage = [];
	}
	if(isdefined(level.friendlyFireDisabled) && !level.friendlyFireDisabled)
	{
		if(isdefined(level.var_8300d543))
		{
			if(isPlayer(eAttacker) && self.team == eAttacker.team)
			{
				iDamage = Int(iDamage * level.var_8300d543);
				if(iDamage < 1)
				{
					iDamage = 1;
				}
			}
		}
	}
	if(isdefined(self.overrideActorDamage))
	{
		iDamage = self [[self.overrideActorDamage]](eInflictor, eAttacker, iDamage, iDFlags, sMeansOfDeath, weapon, vPoint, vDir, sHitLoc, psOffsetTime, boneIndex, modelIndex);
	}
	else if(isdefined(level.overrideActorDamage))
	{
		iDamage = self [[level.overrideActorDamage]](eInflictor, eAttacker, iDamage, iDFlags, sMeansOfDeath, weapon, vPoint, vDir, sHitLoc, psOffsetTime, boneIndex, modelIndex);
	}
	if(isdefined(level.cybercom) && isdefined(isdefined(level.cybercom.overrideActorDamage)))
	{
		iDamage = self [[level.cybercom.overrideActorDamage]](eInflictor, eAttacker, iDamage, iDFlags, sMeansOfDeath, weapon, vPoint, vDir, sHitLoc, psOffsetTime, boneIndex, modelIndex);
	}
	if(isdefined(self.aiOverrideDamage))
	{
		for(index = 0; index < self.aiOverrideDamage.size; index++)
		{
			damageCallback = self.aiOverrideDamage[index];
			iDamage = self [[damageCallback]](eInflictor, eAttacker, iDamage, iDFlags, sMeansOfDeath, weapon, vPoint, vDir, sHitLoc, psOffsetTime, boneIndex, modelIndex);
		}
	}
	/#
		Assert(isdefined(iDamage), "Dev Block strings are not supported");
	#/
	if(!isdefined(vDir))
	{
		iDFlags = iDFlags | 4;
	}
	if(isdefined(eAttacker))
	{
		if(isPlayer(eAttacker))
		{
			level thread friendlyfire::friendly_fire_callback(self, iDamage, eAttacker, sMeansOfDeath);
			if(isdefined(self.playerCausedActorDamage))
			{
				self thread [[self.playerCausedActorDamage]]();
			}
			self thread challenges::function_40b8d4a1(eAttacker, eAttacker, iDamage, weapon, sHitLoc);
			if(isdefined(eInflictor) && (eAttacker === eInflictor || !isVehicle(eInflictor)) && (!isdefined(sMeansOfDeath) || sMeansOfDeath != "MOD_MELEE_WEAPON_BUTT"))
			{
				eAttacker.hits++;
			}
		}
		else if(isai(eAttacker))
		{
			if(self.team == eAttacker.team && sMeansOfDeath == "MOD_MELEE")
			{
				return;
			}
		}
	}
	self callback::callback("hash_eb4a4369", params);
	self callback::callback("hash_7b543e98", params);
	var_e0ef8a87 = 0;
	self thread globallogic_player::trackAttackerDamage(eAttacker, iDamage, sMeansOfDeath, weapon);
	if(self.health > 0 && self.health - iDamage <= 0)
	{
		if(isdefined(eAttacker) && isPlayer(eAttacker.driver))
		{
			eAttacker = eAttacker.driver;
		}
		if(isPlayer(eAttacker))
		{
			/#
				println("Dev Block strings are not supported" + weapon.name + "Dev Block strings are not supported" + sMeansOfDeath);
			#/
			if(self.team != eAttacker.team)
			{
				if(sMeansOfDeath == "MOD_MELEE")
				{
					eAttacker notify("melee_kill");
				}
			}
		}
		var_e0ef8a87 = 1;
	}
	if(weapon_utils::isFlashOrStunDamage(weapon, sMeansOfDeath))
	{
		if(isdefined(self.type))
		{
			if(weapon.isFlash && self.type == "human")
			{
				self.var_b3b49b95 = self.iDFlagsTime;
			}
			else if(weapon.isStun && self.type == "human")
			{
				self.var_63fb6c7d = self.iDFlagsTime;
			}
		}
		self.lastStunnedBy = eAttacker;
		self.lastStunnedTime = self.iDFlagsTime;
	}
	if(weapon.isEmp && isdefined(self.type) && self.type == "robot")
	{
		if(weapon.name == "emp_grenade")
		{
			self.var_4d6fef21 = self.iDFlagsTime;
		}
		else if(weapon.name == "ravage_core_emp_grenade" || weapon.name == "ravage_core_emp_grenade_upg")
		{
			self.var_7097b5af = self.iDFlagsTime;
		}
	}
	if(!iDFlags & 2048)
	{
		if(level.teambased && isdefined(eAttacker) && eAttacker != self && self.team == eAttacker.team && !isPlayer(eAttacker))
		{
			if(level.friendlyfire == 0)
			{
				return;
			}
			else if(level.friendlyfire == 1)
			{
				if(iDamage < 1)
				{
					iDamage = 1;
				}
				self.lastDamageWasFromEnemy = 0;
			}
			else if(level.friendlyfire == 2)
			{
				return;
			}
			else if(level.friendlyfire == 3)
			{
				iDamage = Int(iDamage * 0.5);
				if(iDamage < 1)
				{
					iDamage = 1;
				}
				self.lastDamageWasFromEnemy = 0;
			}
		}
		if(isdefined(eAttacker) && eAttacker != self)
		{
			if(!isdefined(eInflictor) || !isai(eInflictor) || (isVehicle(eInflictor) && eInflictor GetSeatOccupant(0) === eAttacker))
			{
				if(iDamage > 0 && self.team != eAttacker.team && self.team != "neutral" && sHitLoc !== "riotshield")
				{
					eAttacker thread damagefeedback::update(sMeansOfDeath, eInflictor, undefined, weapon);
				}
			}
		}
	}
	bb::logdamage(eAttacker, self, weapon, iDamage, sMeansOfDeath, sHitLoc, var_e0ef8a87, var_e0ef8a87);
	self globallogic_player::giveAttackerAndInflictorOwnerAssist(eAttacker, eInflictor, iDamage, sMeansOfDeath, weapon);
	self finishActorDamage(eInflictor, eAttacker, iDamage, iDFlags, sMeansOfDeath, weapon, vPoint, vDir, sHitLoc, vDamageOrigin, psOffsetTime, boneIndex, surfaceType, surfaceNormal);
}

/*
	Name: Callback_ActorKilled
	Namespace: globallogic_actor
	Checksum: 0x6E40B69D
	Offset: 0x1050
	Size: 0x5DB
	Parameters: 8
	Flags: None
*/
function Callback_ActorKilled(eInflictor, eAttacker, iDamage, sMeansOfDeath, weapon, vDir, sHitLoc, psOffsetTime)
{
	params = spawnstruct();
	params.eInflictor = eInflictor;
	params.eAttacker = eAttacker;
	params.iDamage = iDamage;
	params.sMeansOfDeath = sMeansOfDeath;
	params.weapon = weapon;
	params.vDir = vDir;
	params.sHitLoc = sHitLoc;
	params.psOffsetTime = psOffsetTime;
	if(game["state"] == "postgame")
	{
		return;
	}
	eAttacker = globallogic_player::figureOutAttacker(eAttacker);
	if(globallogic_utils::isHeadShot(weapon, sHitLoc, sMeansOfDeath, eInflictor))
	{
		sMeansOfDeath = "MOD_HEAD_SHOT";
	}
	if(isdefined(eAttacker) && isPlayer(eAttacker))
	{
		eAttacker notify("hash_c56ba9f7", self, sMeansOfDeath, weapon);
		globallogic_score::incTotalKills(eAttacker.team);
		eAttacker thread globallogic_score::giveKillStats(sMeansOfDeath, weapon, self);
		if(sMeansOfDeath == "MOD_MELEE" || sMeansOfDeath == "MOD_MELEE_ASSASSINATE" || sMeansOfDeath == "MOD_MELEE_WEAPON_BUTT")
		{
			eAttacker.var_247e0696++;
		}
	}
	if(isai(eAttacker) && isdefined(eAttacker.script_owner))
	{
		if(eAttacker.script_owner.team != self.team)
		{
			eAttacker = eAttacker.script_owner;
		}
	}
	if(isdefined(eAttacker) && isdefined(eAttacker.onKill))
	{
		eAttacker [[eAttacker.onKill]](self);
	}
	if(isdefined(eInflictor))
	{
		self.damageInflictor = eInflictor;
	}
	self callback::callback("hash_fc2ec5ff", params);
	self callback::callback("hash_8c38c12e", params);
	if(isdefined(self.aiOverrideKilled))
	{
		for(index = 0; index < self.aiOverrideKilled.size; index++)
		{
			var_43da4f33 = self.aiOverrideKilled[index];
			self [[var_43da4f33]](eInflictor, eAttacker, iDamage, sMeansOfDeath, weapon, vDir, sHitLoc, psOffsetTime);
		}
	}
	else if(isPlayer(eAttacker) && (isdefined(level.var_b36f7a2e) && level.var_b36f7a2e && self.team == "allies" || (isdefined(level.var_173c585e) && level.var_173c585e && self.team == "team3") || self.team == "axis"))
	{
		self thread ammo::DropAIAmmo();
	}
	player = eAttacker;
	if(eAttacker.classname == "script_vehicle" && isdefined(eAttacker.owner))
	{
		player = eAttacker.owner;
	}
	if(isdefined(player) && isPlayer(player) && (!isdefined(self.var_38188e74) && self.var_38188e74))
	{
		if(!level.teambased || self.team != player.pers["team"])
		{
			if(sMeansOfDeath == "MOD_MELEE" || sMeansOfDeath == "MOD_MELEE_ASSASSINATE")
			{
				scoreevents::processScoreEvent("melee_kill" + self.scoreType, player, self, weapon);
			}
			else
			{
				scoreevents::processScoreEvent("kill" + self.scoreType, player, self, weapon);
			}
			self thread challenges::function_e0ef8a87(eInflictor, player, iDamage, sMeansOfDeath, weapon, sHitLoc);
			self function_64fed33(eInflictor, player, weapon, player.team);
		}
	}
}

/*
	Name: Callback_ActorCloned
	Namespace: globallogic_actor
	Checksum: 0x3000D06E
	Offset: 0x1638
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function Callback_ActorCloned(original)
{
	DestructServerUtils::CopyDestructState(original, self);
	GibServerUtils::CopyGibState(original, self);
}

/*
	Name: function_64fed33
	Namespace: globallogic_actor
	Checksum: 0xAFC071F5
	Offset: 0x1680
	Size: 0x163
	Parameters: 4
	Flags: None
*/
function function_64fed33(eInflictor, eAttacker, weapon, lpattackteam)
{
	PixBeginEvent("ActorKilled assists");
	if(isdefined(self.Attackers))
	{
		for(j = 0; j < self.Attackers.size; j++)
		{
			player = self.Attackers[j];
			if(!isdefined(player))
			{
				continue;
			}
			if(player == eAttacker)
			{
				continue;
			}
			if(player.team != lpattackteam)
			{
				continue;
			}
			damage_done = self.attackerDamage[player.clientid].damage;
			player thread globallogic_score::processAssist(self, damage_done, self.attackerDamage[player.clientid].weapon, "assist" + self.scoreType);
		}
	}
	PixEndEvent();
}

