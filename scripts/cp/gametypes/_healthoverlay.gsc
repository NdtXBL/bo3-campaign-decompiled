#using scripts\codescripts\struct;
#using scripts\cp\gametypes\_globallogic_player;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\laststand_shared;
#using scripts\shared\system_shared;

#namespace healthoverlay;

/*
	Name: __init__sytem__
	Namespace: healthoverlay
	Checksum: 0x7F994D6D
	Offset: 0x1B8
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__sytem__()
{
	system::register("healthoverlay", &__init__, undefined, undefined);
}

/*
	Name: __init__
	Namespace: healthoverlay
	Checksum: 0xD8780D78
	Offset: 0x1F8
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function __init__()
{
	callback::on_start_gametype(&init);
	callback::on_joined_team(&end_health_regen);
	callback::on_joined_spectate(&end_health_regen);
	callback::on_spawned(&player_health_regen);
	callback::on_disconnect(&end_health_regen);
	callback::on_player_killed(&end_health_regen);
}

/*
	Name: init
	Namespace: healthoverlay
	Checksum: 0x60477E63
	Offset: 0x2C8
	Size: 0x4F
	Parameters: 0
	Flags: None
*/
function init()
{
	level.healthOverlayCutoff = 0.55;
	regenTime = level.playerHealthRegenTime;
	level.playerHealth_RegularRegenDelay = regenTime * 1000;
	level.healthRegenDisabled = level.playerHealth_RegularRegenDelay <= 0;
}

/*
	Name: end_health_regen
	Namespace: healthoverlay
	Checksum: 0xB216045F
	Offset: 0x320
	Size: 0x49
	Parameters: 0
	Flags: None
*/
function end_health_regen()
{
	self.var_78f63664 = 1;
	self SetControllerUIModelValue("hudItems.regenDelayProgress", 1);
	self notify("end_healthregen");
}

/*
	Name: function_ec5615ca
	Namespace: healthoverlay
	Checksum: 0x7F8CE855
	Offset: 0x378
	Size: 0xE7
	Parameters: 1
	Flags: None
*/
function function_ec5615ca(duration)
{
	remaining = duration;
	self.var_78f63664 = 0;
	self SetControllerUIModelValue("hudItems.regenDelayProgress", self.var_78f63664);
	while(remaining > 0)
	{
		wait(duration / 5);
		remaining = remaining - duration / 5;
		self.var_78f63664 = 1 - remaining / duration + 0.05;
		if(self.var_78f63664 > 1)
		{
			self.var_78f63664 = 1;
		}
		self SetControllerUIModelValue("hudItems.regenDelayProgress", self.var_78f63664);
	}
}

/*
	Name: player_health_regen
	Namespace: healthoverlay
	Checksum: 0x4060880E
	Offset: 0x468
	Size: 0x68B
	Parameters: 0
	Flags: None
*/
function player_health_regen()
{
	self endon("end_healthregen");
	self endon("removehealthregen");
	if(self.health <= 0)
	{
		/#
			Assert(!isalive(self));
		#/
		return;
	}
	maxhealth = self.health;
	oldhealth = maxhealth;
	player = self;
	health_add = 0;
	regenRate = 0.1;
	useTrueRegen = 0;
	veryHurt = 0;
	player.breathingStopTime = -10000;
	thread function_1373098a(maxhealth * 0.2);
	lastSoundTime_Recover = 0;
	hurtTime = 0;
	newHealth = 0;
	for(;;)
	{
		wait(0.05);
		if(isdefined(player.regenRate))
		{
			regenRate = player.regenRate;
			useTrueRegen = 1;
		}
		if(player.health == maxhealth)
		{
			veryHurt = 0;
			self.atBrinkOfDeath = 0;
			continue;
		}
		if(player.health <= 0)
		{
			return;
		}
		if(isdefined(player.laststand) && player.laststand)
		{
			if(!isdefined(self.waiting_to_revive) || !self.waiting_to_revive)
			{
				self.var_78f63664 = 0;
				self SetControllerUIModelValue("hudItems.regenDelayProgress", 0);
			}
			continue;
		}
		wasVeryHurt = veryHurt;
		Ratio = player.health / maxhealth;
		if(Ratio <= level.healthOverlayCutoff)
		{
			veryHurt = 1;
			self.atBrinkOfDeath = 1;
			if(!wasVeryHurt)
			{
				hurtTime = GetTime();
			}
		}
		if(player.health >= oldhealth)
		{
			if(level.healthRegenDisabled)
			{
				continue;
			}
			regenTime = level.playerHealth_RegularRegenDelay;
			if(player hasPerk("specialty_healthregen"))
			{
				regenTime = Int(regenTime / GetDvarFloat("perk_healthRegenMultiplier"));
			}
			var_b536e3c4 = GetTime() - hurtTime / regenTime;
			if(var_b536e3c4 < 1)
			{
				if(!isdefined(self.var_78f63664) || Int(self.var_78f63664 * 5) != Int(var_b536e3c4 * 5))
				{
					self.var_78f63664 = var_b536e3c4;
					player SetControllerUIModelValue("hudItems.regenDelayProgress", var_b536e3c4);
				}
				continue;
			}
			if(GetTime() - lastSoundTime_Recover > regenTime)
			{
				lastSoundTime_Recover = GetTime();
				self notify("snd_breathing_better");
			}
			if(veryHurt)
			{
				newHealth = Ratio;
				veryHurtTime = 3000;
				if(player hasPerk("specialty_healthregen"))
				{
					veryHurtTime = Int(veryHurtTime / GetDvarFloat("perk_healthRegenMultiplier"));
				}
				var_b536e3c4 = GetTime() - hurtTime / veryHurtTime;
				if(var_b536e3c4 >= 1)
				{
					newHealth = newHealth + regenRate;
				}
				else if(!isdefined(self.var_78f63664) || Int(self.var_78f63664 * 5) != Int(var_b536e3c4 * 5))
				{
					self.var_78f63664 = var_b536e3c4;
					player SetControllerUIModelValue("hudItems.regenDelayProgress", var_b536e3c4);
				}
			}
			else if(useTrueRegen)
			{
				newHealth = Ratio + regenRate;
			}
			else
			{
				newHealth = 1;
			}
			if(newHealth != oldhealth)
			{
				self.var_78f63664 = 1;
				player SetControllerUIModelValue("hudItems.regenDelayProgress", 1);
			}
			if(newHealth >= 1)
			{
				self globallogic_player::resetAttackerList();
				newHealth = 1;
			}
			if(newHealth <= 0)
			{
				return;
			}
			player setnormalhealth(newHealth);
			change = player.health - oldhealth;
			if(change > 0)
			{
				player decay_player_damages(change);
			}
			oldhealth = player.health;
			continue;
		}
		oldhealth = player.health;
		health_add = 0;
		hurtTime = GetTime();
		player.breathingStopTime = hurtTime + 6000;
	}
}

/*
	Name: decay_player_damages
	Namespace: healthoverlay
	Checksum: 0x1D7EA81F
	Offset: 0xB00
	Size: 0xED
	Parameters: 1
	Flags: None
*/
function decay_player_damages(decay)
{
	if(!isdefined(self.attackerDamage))
	{
		return;
	}
	for(i = 0; i < self.attackerDamage.size; i++)
	{
		if(!isdefined(self.attackerDamage[i]) || !isdefined(self.attackerDamage[i].damage))
		{
			continue;
		}
		self.attackerDamage[i].damage = self.attackerDamage[i].damage - decay;
		if(self.attackerDamage[i].damage < 0)
		{
			self.attackerDamage[i].damage = 0;
		}
	}
}

/*
	Name: player_breathing_sound
	Namespace: healthoverlay
	Checksum: 0xFA51ED2
	Offset: 0xBF8
	Size: 0xC9
	Parameters: 1
	Flags: None
*/
function player_breathing_sound(healthcap)
{
	self endon("end_healthregen");
	wait(2);
	player = self;
	for(;;)
	{
		wait(0.2);
		if(player.health <= 0)
		{
			return;
		}
		if(player.health >= healthcap)
		{
			continue;
		}
		if(level.healthRegenDisabled && GetTime() > player.breathingStopTime)
		{
			continue;
		}
		player notify("snd_breathing_hurt");
		wait(0.784);
		wait(0.1 + RandomFloat(0.8));
	}
}

/*
	Name: function_1373098a
	Namespace: healthoverlay
	Checksum: 0x52CE349E
	Offset: 0xCD0
	Size: 0x12F
	Parameters: 1
	Flags: None
*/
function function_1373098a(healthcap)
{
	self endon("end_healthregen");
	self endon("removehealthregen");
	self.var_1373098a = 0;
	while(1)
	{
		if(self.health <= healthcap && (!isdefined(self laststand::player_is_in_laststand()) && self laststand::player_is_in_laststand()))
		{
			self.var_1373098a = 1;
			self clientfield::set_to_player("sndHealth", 1);
			while(self.health <= healthcap)
			{
				wait(0.1);
			}
		}
		if(self.var_1373098a)
		{
			self.var_1373098a = 0;
			if(!(isdefined(self laststand::player_is_in_laststand()) && self laststand::player_is_in_laststand()))
			{
				self clientfield::set_to_player("sndHealth", 0);
			}
		}
		wait(0.1);
	}
}

