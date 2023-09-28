#using scripts\codescripts\struct;
#using scripts\cp\_challenges;
#using scripts\cp\_scoreevents;
#using scripts\cp\gametypes\_globallogic;
#using scripts\cp\gametypes\_globallogic_player;
#using scripts\cp\gametypes\_globallogic_score;
#using scripts\cp\gametypes\_loadout;
#using scripts\cp\gametypes\_weapons;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\damagefeedback_shared;
#using scripts\shared\scoreevents_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;

#namespace globallogic_vehicle;

/*
	Name: Callback_VehicleSpawned
	Namespace: globallogic_vehicle
	Checksum: 0x85850157
	Offset: 0x428
	Size: 0x2F3
	Parameters: 1
	Flags: None
*/
function Callback_VehicleSpawned(spawner)
{
	self.health = self.healthdefault;
	if(isdefined(level.vehicle_main_callback))
	{
		if(isdefined(level.vehicle_main_callback[self.vehicleType]))
		{
			self thread [[level.vehicle_main_callback[self.vehicleType]]]();
		}
		else if(isdefined(self.scriptvehicletype) && isdefined(level.vehicle_main_callback[self.scriptvehicletype]))
		{
			self thread [[level.vehicle_main_callback[self.scriptvehicletype]]]();
		}
	}
	if(isdefined(level.a_vehicle_types))
	{
		if(isdefined(level.a_vehicle_types[self.vehicleType]))
		{
			foreach(func in level.a_vehicle_types[self.vehicleType])
			{
				util::single_thread(self, func["function"], func["param1"], func["param2"], func["param3"], func["param4"]);
			}
		}
	}
	else if(isdefined(level.a_vehicle_targetnames))
	{
		if(isdefined(spawner))
		{
			str_targetname = spawner.targetname;
		}
		else
		{
			str_targetname = self.targetname;
		}
		if(isdefined(str_targetname) && isdefined(level.a_vehicle_targetnames[str_targetname]))
		{
			foreach(func in level.a_vehicle_targetnames[str_targetname])
			{
				util::single_thread(self, func["function"], func["param1"], func["param2"], func["param3"], func["param4"]);
			}
		}
	}
	else if(IsSentient(self))
	{
		self spawner::spawn_think(spawner);
	}
	else
	{
		vehicle::init(self);
	}
}

/*
	Name: function_4aaf3176
	Namespace: globallogic_vehicle
	Checksum: 0x3C102CB4
	Offset: 0x728
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_4aaf3176()
{
	self endon("death");
	wait(0.05);
	self clientfield::set_to_player("toggle_dnidamagefx", 0);
}

/*
	Name: Callback_VehicleDamage
	Namespace: globallogic_vehicle
	Checksum: 0x64499D27
	Offset: 0x768
	Size: 0xFAB
	Parameters: 15
	Flags: None
*/
function Callback_VehicleDamage(eInflictor, eAttacker, iDamage, iDFlags, sMeansOfDeath, weapon, vPoint, vDir, sHitLoc, vDamageOrigin, psOffsetTime, damageFromUnderneath, modelIndex, partName, vSurfaceNormal)
{
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
	params.damageFromUnderneath = damageFromUnderneath;
	params.modelIndex = modelIndex;
	params.partName = partName;
	params.vSurfaceNormal = vSurfaceNormal;
	if(game["state"] == "postgame")
	{
		return;
	}
	if(isdefined(eAttacker) && isPlayer(eAttacker) && isdefined(eAttacker.canDoCombat) && !eAttacker.canDoCombat)
	{
		return;
	}
	if(!1 & iDFlags)
	{
		iDamage = loadout::cac_modified_vehicle_damage(self, eAttacker, iDamage, sMeansOfDeath, weapon, eInflictor);
	}
	self.iDFlags = iDFlags;
	self.iDFlagsTime = GetTime();
	/#
		Assert(isdefined(iDamage), "Dev Block strings are not supported");
	#/
	if(iDamage == 0)
	{
		return;
	}
	if(!isdefined(vDir))
	{
		iDFlags = iDFlags | 4;
	}
	if(isdefined(self.maxhealth) && self.health == self.maxhealth || !isdefined(self.Attackers))
	{
		self.Attackers = [];
		self.attackerData = [];
		self.attackerDamage = [];
	}
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
	if(IsSentient(self))
	{
		self callback::callback("hash_eb4a4369", params);
		self thread globallogic_player::trackAttackerDamage(eAttacker, iDamage, sMeansOfDeath, weapon);
	}
	self callback::callback("hash_9bd1e27f", params);
	if(!iDFlags & 2048)
	{
		if(sMeansOfDeath == "MOD_PROJECTILE" || sMeansOfDeath == "MOD_GRENADE")
		{
			iDamage = iDamage * weapon.vehicleProjectileDamageScalar;
			iDamage = Int(iDamage);
		}
		else if(sMeansOfDeath == "MOD_GRENADE_SPLASH")
		{
			iDamage = iDamage * GetVehicleUnderneathSplashScalar(weapon);
			iDamage = Int(iDamage);
		}
		iDamage = iDamage * level.vehicleDamageScalar;
		iDamage = iDamage * self GetVehDamageMultiplier(sMeansOfDeath);
		iDamage = Int(iDamage);
		if(!isdefined(self.maxhealth))
		{
			self.maxhealth = self.healthdefault;
		}
		if(isdefined(self.overrideVehicleDamage))
		{
			iDamage = self [[self.overrideVehicleDamage]](eInflictor, eAttacker, iDamage, iDFlags, sMeansOfDeath, weapon, vPoint, vDir, sHitLoc, vDamageOrigin, psOffsetTime, damageFromUnderneath, modelIndex, partName, vSurfaceNormal);
		}
		else if(isdefined(level.overrideVehicleDamage))
		{
			iDamage = self [[level.overrideVehicleDamage]](eInflictor, eAttacker, iDamage, iDFlags, sMeansOfDeath, weapon, vPoint, vDir, sHitLoc, vDamageOrigin, psOffsetTime, damageFromUnderneath, modelIndex, partName, vSurfaceNormal);
		}
		if(isdefined(level.cybercom) && isdefined(isdefined(level.cybercom.overrideActorDamage)))
		{
			iDamage = self [[level.cybercom.overrideVehicleDamage]](eInflictor, eAttacker, iDamage, iDFlags, sMeansOfDeath, weapon, vPoint, vDir, sHitLoc, vDamageOrigin, psOffsetTime, damageFromUnderneath, modelIndex, partName, vSurfaceNormal);
		}
		if(iDamage == 0)
		{
			return;
		}
		iDamage = Int(iDamage);
		if(self IsVehicleImmuneToDamage(iDFlags, sMeansOfDeath, weapon))
		{
			return;
		}
		if(isdefined(eAttacker) && isPlayer(eAttacker))
		{
			eAttacker.pers["participation"]++;
		}
		prevHealthRatio = self.health / self.maxhealth;
		driver = self GetSeatOccupant(0);
		if(isPlayer(driver) && driver IsRemoteControlling())
		{
			var_48fac757 = iDamage / self.maxhealth;
			var_48fac757 = Int(max(var_48fac757, 3));
			driver AddToDamageIndicator(var_48fac757, vDir);
		}
		occupant_team = self vehicle::vehicle_get_occupant_team();
		if(level.teambased && isdefined(eAttacker) && occupant_team == eAttacker.team && occupant_team != "free")
		{
			var_f1822041 = 1;
			if(level.friendlyfire == 0)
			{
				if(!AllowFriendlyFireDamage(eInflictor, eAttacker, sMeansOfDeath, weapon))
				{
					return;
				}
			}
			else if(level.friendlyfire == 1)
			{
				var_f1822041 = 0;
			}
			else if(level.friendlyfire == 2)
			{
				if(!AllowFriendlyFireDamage(eInflictor, eAttacker, sMeansOfDeath, weapon))
				{
					return;
				}
			}
			else if(level.friendlyfire == 3)
			{
				iDamage = Int(iDamage * 0.5);
				var_f1822041 = 0;
			}
			if(iDamage < 1)
			{
				iDamage = 1;
			}
			self.lastDamageWasFromEnemy = 0;
			self globallogic_player::giveAttackerAndInflictorOwnerAssist(eAttacker, eInflictor, iDamage, sMeansOfDeath, weapon);
			self finishVehicleDamage(eInflictor, eAttacker, iDamage, iDFlags, sMeansOfDeath, weapon, vPoint, vDir, sHitLoc, psOffsetTime, damageFromUnderneath, modelIndex, partName, var_f1822041);
		}
		else if(!level.hardcoreMode && isdefined(self.owner) && isdefined(eAttacker) && isdefined(eAttacker.owner) && self.owner == eAttacker.owner)
		{
			return;
		}
		else if(!level.teambased && isdefined(self.targetname) && self.targetname == "rcbomb")
		{
		}
		else if(isdefined(self.owner) && isdefined(eAttacker) && self.owner == eAttacker)
		{
			return;
		}
		if(iDamage < 1)
		{
			iDamage = 1;
		}
		if(IsSubStr(sMeansOfDeath, "MOD_GRENADE") && isdefined(eInflictor) && isdefined(eInflictor.isCooked))
		{
			self.wasCooked = GetTime();
		}
		else
		{
			self.wasCooked = undefined;
		}
		attacker_seat = undefined;
		if(isdefined(eAttacker))
		{
			attacker_seat = self GetOccupantSeat(eAttacker);
		}
		self.lastDamageWasFromEnemy = isdefined(eAttacker) && !isdefined(attacker_seat);
		self globallogic_player::giveAttackerAndInflictorOwnerAssist(eAttacker, eInflictor, iDamage, sMeansOfDeath, weapon);
		self finishVehicleDamage(eInflictor, eAttacker, iDamage, iDFlags, sMeansOfDeath, weapon, vPoint, vDir, sHitLoc, psOffsetTime, damageFromUnderneath, modelIndex, partName, 0);
		if(level.gametype == "hack" && !weapon.isEmp)
		{
			iDamage = 0;
		}
		if(isdefined(eAttacker) && eAttacker != self)
		{
			if(damagefeedback::doDamageFeedback(weapon, eInflictor))
			{
				if(iDamage > 0)
				{
					eAttacker thread damagefeedback::update(sMeansOfDeath, eInflictor);
					if(IsSentient(self) && isPlayer(eAttacker) && isdefined(eInflictor) && (eAttacker === eInflictor || !isVehicle(eInflictor)) && (!isdefined(sMeansOfDeath) || sMeansOfDeath != "MOD_MELEE_WEAPON_BUTT"))
					{
						eAttacker.hits++;
					}
				}
			}
		}
	}
	/#
		if(GetDvarInt("Dev Block strings are not supported"))
		{
			println("Dev Block strings are not supported" + self GetEntityNumber() + "Dev Block strings are not supported" + self.health + "Dev Block strings are not supported" + eAttacker.clientid + "Dev Block strings are not supported" + isPlayer(eInflictor) + "Dev Block strings are not supported" + iDamage + "Dev Block strings are not supported" + sHitLoc);
		}
	#/
	if(1)
	{
		lpselfnum = self GetEntityNumber();
		lpselfteam = "";
		lpattackerteam = "";
		if(isPlayer(eAttacker))
		{
			lpattacknum = eAttacker GetEntityNumber();
			lpattackGuid = eAttacker getGuid();
			lpattackname = eAttacker.name;
			lpattackerteam = eAttacker.pers["team"];
			self thread challenges::function_f7118174(eAttacker, eAttacker, iDamage, weapon, sHitLoc);
		}
		else
		{
			lpattacknum = -1;
			lpattackGuid = "";
			lpattackname = "";
			lpattackerteam = "world";
		}
		logPrint("VD;" + lpselfnum + ";" + lpselfteam + ";" + lpattackGuid + ";" + lpattacknum + ";" + lpattackerteam + ";" + lpattackname + ";" + weapon.name + ";" + iDamage + ";" + sMeansOfDeath + ";" + sHitLoc + "
");
	}
}

/*
	Name: Callback_VehicleRadiusDamage
	Namespace: globallogic_vehicle
	Checksum: 0xA11B5469
	Offset: 0x1720
	Size: 0x4A3
	Parameters: 13
	Flags: None
*/
function Callback_VehicleRadiusDamage(eInflictor, eAttacker, iDamage, fInnerDamage, fOuterDamage, iDFlags, sMeansOfDeath, weapon, vPoint, fRadius, fConeAngleCos, vConeDir, psOffsetTime)
{
	iDamage = loadout::cac_modified_vehicle_damage(self, eAttacker, iDamage, sMeansOfDeath, weapon, eInflictor);
	fInnerDamage = loadout::cac_modified_vehicle_damage(self, eAttacker, fInnerDamage, sMeansOfDeath, weapon, eInflictor);
	fOuterDamage = loadout::cac_modified_vehicle_damage(self, eAttacker, fOuterDamage, sMeansOfDeath, weapon, eInflictor);
	self.iDFlags = iDFlags;
	self.iDFlagsTime = GetTime();
	if(game["state"] == "postgame")
	{
		return;
	}
	if(isdefined(eAttacker) && isPlayer(eAttacker) && isdefined(eAttacker.canDoCombat) && !eAttacker.canDoCombat)
	{
		return;
	}
	friendly = 0;
	if(!iDFlags & 2048)
	{
		if(self IsVehicleImmuneToDamage(iDFlags, sMeansOfDeath, weapon))
		{
			return;
		}
		if(sMeansOfDeath == "MOD_PROJECTILE_SPLASH" || sMeansOfDeath == "MOD_GRENADE_SPLASH" || sMeansOfDeath == "MOD_EXPLOSIVE")
		{
			scalar = weapon.vehicleProjectileSplashDamageScalar;
			iDamage = Int(iDamage * scalar);
			fInnerDamage = fInnerDamage * scalar;
			fOuterDamage = fOuterDamage * scalar;
			if(fInnerDamage == 0)
			{
				return;
			}
			if(iDamage < 1)
			{
				iDamage = 1;
			}
		}
		occupant_team = self vehicle::vehicle_get_occupant_team();
		if(level.teambased && isdefined(eAttacker) && occupant_team == eAttacker.team && occupant_team != "free")
		{
			if(level.friendlyfire == 0)
			{
				if(!AllowFriendlyFireDamage(eInflictor, eAttacker, sMeansOfDeath, weapon))
				{
					return;
				}
			}
			else if(level.friendlyfire == 1)
			{
			}
			else if(level.friendlyfire == 2)
			{
				if(!AllowFriendlyFireDamage(eInflictor, eAttacker, sMeansOfDeath, weapon))
				{
					return;
				}
			}
			else if(level.friendlyfire == 3)
			{
				iDamage = Int(iDamage * 0.5);
			}
			if(iDamage < 1)
			{
				iDamage = 1;
			}
			self.lastDamageWasFromEnemy = 0;
			self finishVehicleRadiusDamage(eInflictor, eAttacker, iDamage, fInnerDamage, fOuterDamage, iDFlags, sMeansOfDeath, weapon, vPoint, fRadius, fConeAngleCos, vConeDir, psOffsetTime);
		}
		else if(!level.hardcoreMode && isdefined(self.owner) && isdefined(eAttacker.owner) && self.owner == eAttacker.owner)
		{
			return;
		}
		else if(iDamage < 1)
		{
			iDamage = 1;
		}
		self finishVehicleRadiusDamage(eInflictor, eAttacker, iDamage, fInnerDamage, fOuterDamage, iDFlags, sMeansOfDeath, weapon, vPoint, fRadius, fConeAngleCos, vConeDir, psOffsetTime);
	}
}

/*
	Name: Callback_VehicleKilled
	Namespace: globallogic_vehicle
	Checksum: 0xAD045EF
	Offset: 0x1BD0
	Size: 0x47B
	Parameters: 8
	Flags: None
*/
function Callback_VehicleKilled(eInflictor, eAttacker, iDamage, sMeansOfDeath, weapon, vDir, sHitLoc, psOffsetTime)
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
	if(isdefined(eAttacker) && isPlayer(eAttacker))
	{
		globallogic_score::incTotalKills(eAttacker.team);
		eAttacker thread globallogic_score::giveKillStats(sMeansOfDeath, weapon, self);
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
	if(IsSentient(self))
	{
		self callback::callback("hash_fc2ec5ff", params);
	}
	self callback::callback("hash_acb66515", params);
	if(isdefined(self.overrideVehicleKilled))
	{
		self [[self.overrideVehicleKilled]](eInflictor, eAttacker, iDamage, sMeansOfDeath, weapon, vDir, sHitLoc, psOffsetTime);
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
			self thread challenges::function_c4014ee0(eInflictor, player, iDamage, sMeansOfDeath, weapon, sHitLoc);
			self function_bbcfaeb2(eInflictor, eAttacker, weapon, eAttacker.team);
		}
	}
}

/*
	Name: vehicleCrush
	Namespace: globallogic_vehicle
	Checksum: 0xF0523CD7
	Offset: 0x2058
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function vehicleCrush()
{
	self endon("disconnect");
	if(isdefined(level._effect) && isdefined(level._effect["tanksquish"]))
	{
		playFX(level._effect["tanksquish"], self.origin + VectorScale((0, 0, 1), 30));
	}
	self playsound("chr_crunch");
}

/*
	Name: GetVehicleUnderneathSplashScalar
	Namespace: globallogic_vehicle
	Checksum: 0xA247001F
	Offset: 0x20F0
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function GetVehicleUnderneathSplashScalar(weapon)
{
	if(weapon.name == "satchel_charge")
	{
		scale = 10;
		scale = scale * 3;
	}
	else
	{
		scale = 1;
	}
	return scale;
}

/*
	Name: AllowFriendlyFireDamage
	Namespace: globallogic_vehicle
	Checksum: 0x10F08E10
	Offset: 0x2160
	Size: 0x6D
	Parameters: 4
	Flags: None
*/
function AllowFriendlyFireDamage(eInflictor, eAttacker, sMeansOfDeath, weapon)
{
	if(isdefined(self.var_ffe1e6db) && self.var_ffe1e6db)
	{
		return 1;
	}
	if(isdefined(self.allowFriendlyFireDamageOverride))
	{
		return [[self.allowFriendlyFireDamageOverride]](eInflictor, eAttacker, sMeansOfDeath, weapon);
	}
	return 0;
}

/*
	Name: function_bbcfaeb2
	Namespace: globallogic_vehicle
	Checksum: 0x850DE047
	Offset: 0x21D8
	Size: 0x163
	Parameters: 4
	Flags: None
*/
function function_bbcfaeb2(eInflictor, eAttacker, weapon, lpattackteam)
{
	PixBeginEvent("VehicleKilled assists");
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

