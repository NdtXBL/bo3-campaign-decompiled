#using scripts\codescripts\struct;
#using scripts\cp\gametypes\_globallogic_player;
#using scripts\shared\damagefeedback_shared;
#using scripts\shared\util_shared;

#namespace burnplayer;

/*
	Name: initBurnPlayer
	Namespace: burnplayer
	Checksum: 0xDB1A9EC1
	Offset: 0x290
	Size: 0x1F
	Parameters: 0
	Flags: None
*/
function initBurnPlayer()
{
	level.flameDamage = 15;
	level.flameBurnTime = 1.5;
}

/*
	Name: hitWithIncendiary
	Namespace: burnplayer
	Checksum: 0xC392822C
	Offset: 0x2B8
	Size: 0x383
	Parameters: 3
	Flags: None
*/
function hitWithIncendiary(attacker, inflictor, mod)
{
	if(isdefined(self.burning))
	{
		return;
	}
	self thread waitThenStopTanning(level.flameBurnTime);
	self endon("disconnect");
	attacker endon("disconnect");
	waittillframeend;
	self.burning = 1;
	self thread burn_blocker();
	tagArray = [];
	if(isai(self))
	{
		tagArray[tagArray.size] = "J_Wrist_RI";
		tagArray[tagArray.size] = "J_Wrist_LE";
		tagArray[tagArray.size] = "J_Elbow_LE";
		tagArray[tagArray.size] = "J_Elbow_RI";
		tagArray[tagArray.size] = "J_Knee_RI";
		tagArray[tagArray.size] = "J_Knee_LE";
		tagArray[tagArray.size] = "J_Ankle_RI";
		tagArray[tagArray.size] = "J_Ankle_LE";
	}
	else
	{
		tagArray[tagArray.size] = "J_Wrist_RI";
		tagArray[tagArray.size] = "J_Wrist_LE";
		tagArray[tagArray.size] = "J_Elbow_LE";
		tagArray[tagArray.size] = "J_Elbow_RI";
		tagArray[tagArray.size] = "J_Knee_RI";
		tagArray[tagArray.size] = "J_Knee_LE";
		tagArray[tagArray.size] = "J_Ankle_RI";
		tagArray[tagArray.size] = "J_Ankle_LE";
		if(isPlayer(self) && self.health > 0)
		{
			self setburn(3);
		}
	}
	if(isdefined(level._effect["character_fire_death_torso"]))
	{
		for(arrayIndex = 0; arrayIndex < tagArray.size; arrayIndex++)
		{
			PlayFXOnTag(level._effect["character_fire_death_sm"], self, tagArray[arrayIndex]);
		}
	}
	else if(isai(self))
	{
		PlayFXOnTag(level._effect["character_fire_death_torso"], self, "J_Spine1");
	}
	else
	{
		PlayFXOnTag(level._effect["character_fire_death_torso"], self, "J_SpineLower");
	}
	if(!isalive(self))
	{
		return;
	}
	if(isPlayer(self))
	{
		self thread WatchForWater(7);
		self thread watchForDeath();
	}
}

/*
	Name: hitWithNapalmStrike
	Namespace: burnplayer
	Checksum: 0x78DFAFC5
	Offset: 0x648
	Size: 0x3BB
	Parameters: 3
	Flags: None
*/
function hitWithNapalmStrike(attacker, inflictor, mod)
{
	if(isdefined(self.burning) || self hasPerk("specialty_fireproof"))
	{
		return;
	}
	self thread waitThenStopTanning(level.flameBurnTime);
	self endon("disconnect");
	attacker endon("disconnect");
	self endon("death");
	if(isdefined(self.burning))
	{
		return;
	}
	self thread burn_blocker();
	waittillframeend;
	self.burning = 1;
	self thread burn_blocker();
	tagArray = [];
	if(isai(self))
	{
		tagArray[tagArray.size] = "J_Wrist_RI";
		tagArray[tagArray.size] = "J_Wrist_LE";
		tagArray[tagArray.size] = "J_Elbow_LE";
		tagArray[tagArray.size] = "J_Elbow_RI";
		tagArray[tagArray.size] = "J_Knee_RI";
		tagArray[tagArray.size] = "J_Knee_LE";
		tagArray[tagArray.size] = "J_Ankle_RI";
		tagArray[tagArray.size] = "J_Ankle_LE";
	}
	else
	{
		tagArray[tagArray.size] = "J_Wrist_RI";
		tagArray[tagArray.size] = "J_Wrist_LE";
		tagArray[tagArray.size] = "J_Elbow_LE";
		tagArray[tagArray.size] = "J_Elbow_RI";
		tagArray[tagArray.size] = "J_Knee_RI";
		tagArray[tagArray.size] = "J_Knee_LE";
		tagArray[tagArray.size] = "J_Ankle_RI";
		tagArray[tagArray.size] = "J_Ankle_LE";
		if(isPlayer(self))
		{
			self setburn(3);
		}
	}
	if(isdefined(level._effect["character_fire_death_sm"]))
	{
		for(arrayIndex = 0; arrayIndex < tagArray.size; arrayIndex++)
		{
			PlayFXOnTag(level._effect["character_fire_death_sm"], self, tagArray[arrayIndex]);
		}
	}
	else if(isdefined(level._effect["character_fire_death_torso"]))
	{
		PlayFXOnTag(level._effect["character_fire_death_torso"], self, "J_SpineLower");
	}
	if(!isalive(self))
	{
		return;
	}
	self thread doNapalmStrikeDamage(attacker, inflictor, mod);
	if(isPlayer(self))
	{
		self thread WatchForWater(7);
		self thread watchForDeath();
	}
}

/*
	Name: walkedThroughFlames
	Namespace: burnplayer
	Checksum: 0x71486487
	Offset: 0xA10
	Size: 0x2B3
	Parameters: 3
	Flags: None
*/
function walkedThroughFlames(attacker, inflictor, weapon)
{
	if(isdefined(self.burning) || self hasPerk("specialty_fireproof"))
	{
		return;
	}
	self thread waitThenStopTanning(level.flameBurnTime);
	self endon("disconnect");
	waittillframeend;
	self.burning = 1;
	self thread burn_blocker();
	tagArray = [];
	if(isai(self))
	{
		tagArray[tagArray.size] = "J_Wrist_RI";
		tagArray[tagArray.size] = "J_Wrist_LE";
		tagArray[tagArray.size] = "J_Elbow_LE";
		tagArray[tagArray.size] = "J_Elbow_RI";
		tagArray[tagArray.size] = "J_Knee_RI";
		tagArray[tagArray.size] = "J_Knee_LE";
		tagArray[tagArray.size] = "J_Ankle_RI";
		tagArray[tagArray.size] = "J_Ankle_LE";
	}
	else
	{
		tagArray[tagArray.size] = "J_Knee_RI";
		tagArray[tagArray.size] = "J_Knee_LE";
		tagArray[tagArray.size] = "J_Ankle_RI";
		tagArray[tagArray.size] = "J_Ankle_LE";
	}
	if(isdefined(level._effect["character_fire_player_sm"]))
	{
		for(arrayIndex = 0; arrayIndex < tagArray.size; arrayIndex++)
		{
			PlayFXOnTag(level._effect["character_fire_player_sm"], self, tagArray[arrayIndex]);
		}
	}
	else if(!isalive(self))
	{
		return;
	}
	self thread doFlameDamage(attacker, inflictor, weapon, 1);
	if(isPlayer(self))
	{
		self thread WatchForWater(7);
		self thread watchForDeath();
	}
}

/*
	Name: burnedWithFlameThrower
	Namespace: burnplayer
	Checksum: 0xFDE233A6
	Offset: 0xCD0
	Size: 0x265
	Parameters: 3
	Flags: None
*/
function burnedWithFlameThrower(attacker, inflictor, weapon)
{
	if(isdefined(self.burning))
	{
		return;
	}
	self thread waitThenStopTanning(level.flameBurnTime);
	self endon("disconnect");
	waittillframeend;
	self.burning = 1;
	self thread burn_blocker();
	tagArray = [];
	if(isai(self))
	{
		tagArray[0] = "J_Spine1";
		tagArray[1] = "J_Elbow_LE";
		tagArray[2] = "J_Elbow_RI";
		tagArray[3] = "J_Head";
		tagArray[4] = "j_knee_ri";
		tagArray[5] = "j_knee_le";
	}
	else
	{
		tagArray[0] = "J_Elbow_RI";
		tagArray[1] = "j_knee_ri";
		tagArray[2] = "j_knee_le";
		if(isPlayer(self) && self.health > 0)
		{
			self setburn(3);
		}
	}
	if(isPlayer(self) && isalive(self))
	{
		self thread WatchForWater(7);
		self thread watchForDeath();
	}
	if(isdefined(level._effect["character_fire_player_sm"]))
	{
		for(arrayIndex = 0; arrayIndex < tagArray.size; arrayIndex++)
		{
			PlayFXOnTag(level._effect["character_fire_player_sm"], self, tagArray[arrayIndex]);
		}
	}
}

/*
	Name: burnedWithDragonsBreath
	Namespace: burnplayer
	Checksum: 0xB18B1795
	Offset: 0xF40
	Size: 0x275
	Parameters: 3
	Flags: None
*/
function burnedWithDragonsBreath(attacker, inflictor, weapon)
{
	if(isdefined(self.burning))
	{
		return;
	}
	self thread waitThenStopTanning(level.flameBurnTime);
	self endon("disconnect");
	waittillframeend;
	self.burning = 1;
	self thread burn_blocker();
	tagArray = [];
	if(isai(self))
	{
		tagArray[0] = "J_Spine1";
		tagArray[1] = "J_Elbow_LE";
		tagArray[2] = "J_Elbow_RI";
		tagArray[3] = "J_Head";
		tagArray[4] = "j_knee_ri";
		tagArray[5] = "j_knee_le";
	}
	else
	{
		tagArray[0] = "j_spinelower";
		tagArray[1] = "J_Elbow_RI";
		tagArray[2] = "j_knee_ri";
		tagArray[3] = "j_knee_le";
		if(isPlayer(self) && self.health > 0)
		{
			self setburn(3);
		}
	}
	if(isPlayer(self) && isalive(self))
	{
		self thread WatchForWater(7);
		self thread watchForDeath();
		return;
	}
	if(isdefined(level._effect["character_fire_player_sm"]))
	{
		for(arrayIndex = 0; arrayIndex < tagArray.size; arrayIndex++)
		{
			PlayFXOnTag(level._effect["character_fire_player_sm"], self, tagArray[arrayIndex]);
		}
	}
}

/*
	Name: burnedToDeath
	Namespace: burnplayer
	Checksum: 0x331C2CBF
	Offset: 0x11C0
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function burnedToDeath()
{
	self.burning = 1;
	self thread burn_blocker();
	self thread doBurningSound();
	self thread waitThenStopTanning(level.flameBurnTime);
}

/*
	Name: watchForDeath
	Namespace: burnplayer
	Checksum: 0x550702D5
	Offset: 0x1228
	Size: 0x6D
	Parameters: 0
	Flags: None
*/
function watchForDeath()
{
	self endon("disconnect");
	self notify("watching for death while on fire");
	self endon("watching for death while on fire");
	self waittill("death");
	if(isPlayer(self))
	{
		self _StopBurning();
	}
	self.burning = undefined;
}

/*
	Name: WatchForWater
	Namespace: burnplayer
	Checksum: 0xBFF4F6F2
	Offset: 0x12A0
	Size: 0xA7
	Parameters: 1
	Flags: None
*/
function WatchForWater(time)
{
	self endon("disconnect");
	self notify("watching for water");
	self endon("watching for water");
	wait(0.1);
	looptime = 0.1;
	while(time > 0)
	{
		wait(looptime);
		if(self depthofplayerinwater() > 0)
		{
			finish_burn();
			time = 0;
		}
		time = time - looptime;
	}
}

/*
	Name: finish_burn
	Namespace: burnplayer
	Checksum: 0xB82D27E4
	Offset: 0x1350
	Size: 0x11F
	Parameters: 0
	Flags: None
*/
function finish_burn()
{
	self notify("stop burn damage");
	tagArray = [];
	tagArray[0] = "j_spinelower";
	tagArray[1] = "J_Elbow_RI";
	tagArray[2] = "J_Head";
	tagArray[3] = "j_knee_ri";
	tagArray[4] = "j_knee_le";
	if(isdefined(level._effect["fx_fire_player_sm_smk_2sec"]))
	{
		for(arrayIndex = 0; arrayIndex < tagArray.size; arrayIndex++)
		{
			PlayFXOnTag(level._effect["fx_fire_player_sm_smk_2sec"], self, tagArray[arrayIndex]);
		}
	}
	self.burning = undefined;
	self _StopBurning();
	self.inGroundNapalm = 0;
}

/*
	Name: doNapalmStrikeDamage
	Namespace: burnplayer
	Checksum: 0x6ED45AA1
	Offset: 0x1478
	Size: 0x115
	Parameters: 3
	Flags: None
*/
function doNapalmStrikeDamage(attacker, inflictor, mod)
{
	if(isai(self))
	{
		doDogNapalmStrikeDamage(attacker, inflictor, mod);
		return;
	}
	self endon("death");
	self endon("disconnect");
	attacker endon("disconnect");
	self endon("stop burn damage");
	while(isdefined(level.napalmStrikeDamage) && isdefined(self) && self depthofplayerinwater() < 1)
	{
		self DoDamage(level.napalmStrikeDamage, self.origin, attacker, attacker, "none", mod, 0, GetWeapon("napalm"));
		wait(1);
	}
}

/*
	Name: doNapalmGroundDamage
	Namespace: burnplayer
	Checksum: 0x4FFEC7E6
	Offset: 0x1598
	Size: 0x307
	Parameters: 3
	Flags: None
*/
function doNapalmGroundDamage(attacker, inflictor, mod)
{
	if(self hasPerk("specialty_fireproof"))
	{
		return;
	}
	if(level.teambased)
	{
		if(attacker != self && attacker.team == self.team)
		{
			return;
		}
	}
	if(isai(self))
	{
		doDogNapalmGroundDamage(attacker, inflictor, mod);
		return;
	}
	if(isdefined(self.burning))
	{
		return;
	}
	self thread burn_blocker();
	self endon("death");
	self endon("disconnect");
	attacker endon("disconnect");
	self endon("stop burn damage");
	if(isdefined(level.groundBurnTime))
	{
		if(GetDvarString("scr_groundBurnTime") == "")
		{
			waitTime = level.groundBurnTime;
		}
		else
		{
			waitTime = GetDvarFloat("scr_groundBurnTime");
		}
	}
	else
	{
		waitTime = 100;
	}
	self walkedThroughFlames(attacker, inflictor, GetWeapon("napalm"));
	self.inGroundNapalm = 1;
	if(isdefined(level.napalmGroundDamage))
	{
		if(GetDvarString("scr_napalmGroundDamage") == "")
		{
			napalmGroundDamage = level.napalmGroundDamage;
			continue;
		}
		napalmGroundDamage = GetDvarFloat("scr_napalmGroundDamage");
		while(isdefined(self) && isdefined(inflictor) && self depthofplayerinwater() < 1 && waitTime > 0)
		{
			self DoDamage(level.napalmGroundDamage, self.origin, attacker, inflictor, "none", mod, 0, GetWeapon("napalm"));
			if(isPlayer(self))
			{
				self setburn(1.1);
			}
			wait(1);
			waitTime = waitTime - 1;
		}
	}
	self.inGroundNapalm = 0;
}

/*
	Name: doDogNapalmStrikeDamage
	Namespace: burnplayer
	Checksum: 0xDC0E1D40
	Offset: 0x18A8
	Size: 0x95
	Parameters: 3
	Flags: None
*/
function doDogNapalmStrikeDamage(attacker, inflictor, mod)
{
	attacker endon("disconnect");
	self endon("death");
	self endon("stop burn damage");
	while(isdefined(level.napalmStrikeDamage) && isdefined(self))
	{
		self DoDamage(level.napalmStrikeDamage, self.origin, attacker, attacker, "none", mod);
		wait(1);
	}
}

/*
	Name: doDogNapalmGroundDamage
	Namespace: burnplayer
	Checksum: 0x3502B22D
	Offset: 0x1948
	Size: 0xAD
	Parameters: 3
	Flags: None
*/
function doDogNapalmGroundDamage(attacker, inflictor, mod)
{
	attacker endon("disconnect");
	self endon("death");
	self endon("stop burn damage");
	while(isdefined(level.napalmGroundDamage) && isdefined(self))
	{
		self DoDamage(level.napalmGroundDamage, self.origin, attacker, attacker, "none", mod, 0, GetWeapon("napalm"));
		wait(1);
	}
}

/*
	Name: burn_blocker
	Namespace: burnplayer
	Checksum: 0xDF5BA65E
	Offset: 0x1A00
	Size: 0x29
	Parameters: 0
	Flags: None
*/
function burn_blocker()
{
	self endon("disconnect");
	self endon("death");
	wait(3);
	self.burning = undefined;
}

/*
	Name: doFlameDamage
	Namespace: burnplayer
	Checksum: 0x6603A47
	Offset: 0x1A38
	Size: 0x203
	Parameters: 4
	Flags: None
*/
function doFlameDamage(attacker, inflictor, weapon, time)
{
	if(isai(self))
	{
		doDogFlameDamage(attacker, inflictor, weapon, time);
		return;
	}
	if(isdefined(attacker))
	{
		attacker endon("disconnect");
	}
	self endon("death");
	self endon("disconnect");
	self endon("stop burn damage");
	self thread doBurningSound();
	self notify("snd_burn_scream");
	wait_time = 1;
	while(isdefined(level.flameDamage) && isdefined(self) && self depthofplayerinwater() < 1 && time > 0)
	{
		if(isdefined(attacker) && isdefined(inflictor) && isdefined(weapon))
		{
			if(damagefeedback::doDamageFeedback(weapon, attacker))
			{
				attacker damagefeedback::update();
			}
			self DoDamage(level.flameDamage, self.origin, attacker, inflictor, "none", "MOD_BURNED", 0, weapon);
		}
		else
		{
			self DoDamage(level.flameDamage, self.origin);
		}
		wait(wait_time);
		time = time - wait_time;
	}
	self thread finish_burn();
}

/*
	Name: doDogFlameDamage
	Namespace: burnplayer
	Checksum: 0x5E4B1CB
	Offset: 0x1C48
	Size: 0x115
	Parameters: 4
	Flags: None
*/
function doDogFlameDamage(attacker, inflictor, weapon, time)
{
	if(!isdefined(attacker) || !isdefined(inflictor) || !isdefined(weapon))
	{
		return;
	}
	attacker endon("disconnect");
	self endon("death");
	self endon("stop burn damage");
	self thread doBurningSound();
	wait_time = 1;
	while(isdefined(level.flameDamage) && isdefined(self) && time > 0)
	{
		self DoDamage(level.flameDamage, self.origin, attacker, inflictor, "none", "MOD_BURNED", 0, weapon);
		wait(wait_time);
		time = time - wait_time;
	}
}

/*
	Name: waitThenStopTanning
	Namespace: burnplayer
	Checksum: 0x991E2E71
	Offset: 0x1D68
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function waitThenStopTanning(time)
{
	self endon("disconnect");
	self endon("death");
	wait(time);
	self _StopBurning();
}

/*
	Name: doBurningSound
	Namespace: burnplayer
	Checksum: 0xB0B2142F
	Offset: 0x1DB0
	Size: 0x123
	Parameters: 0
	Flags: None
*/
function doBurningSound()
{
	self endon("disconnect");
	self endon("death");
	fire_sound_ent = spawn("script_origin", self.origin);
	fire_sound_ent LinkTo(self, "tag_origin", (0, 0, 0), (0, 0, 0));
	fire_sound_ent PlayLoopSound("mpl_player_burn_loop");
	self thread fireSoundDeath(fire_sound_ent);
	self waittill("StopBurnSound");
	if(isdefined(fire_sound_ent))
	{
		fire_sound_ent StopLoopSound(0.5);
	}
	wait(0.5);
	if(isdefined(fire_sound_ent))
	{
		fire_sound_ent delete();
	}
	/#
		println("Dev Block strings are not supported");
	#/
}

/*
	Name: _StopBurning
	Namespace: burnplayer
	Checksum: 0x7A6CF2FC
	Offset: 0x1EE0
	Size: 0x19
	Parameters: 0
	Flags: None
*/
function _StopBurning()
{
	self endon("disconnect");
	self notify("StopBurnSound");
}

/*
	Name: fireSoundDeath
	Namespace: burnplayer
	Checksum: 0xA85C6B1D
	Offset: 0x1F08
	Size: 0x73
	Parameters: 1
	Flags: None
*/
function fireSoundDeath(ent)
{
	ent endon("death");
	self util::waittill_any("death", "disconnect");
	ent delete();
	/#
		println("Dev Block strings are not supported");
	#/
}

