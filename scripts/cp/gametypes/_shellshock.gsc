#using scripts\codescripts\struct;
#using scripts\cp\_util;
#using scripts\shared\callbacks_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace shellshock;

/*
	Name: __init__sytem__
	Namespace: shellshock
	Checksum: 0x31DAAB32
	Offset: 0x190
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__sytem__()
{
	system::register("shellshock", &__init__, undefined, undefined);
}

/*
	Name: __init__
	Namespace: shellshock
	Checksum: 0x44806851
	Offset: 0x1D0
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function __init__()
{
	callback::on_start_gametype(&init);
	level.shellshockOnPlayerDamage = &on_damage;
}

/*
	Name: init
	Namespace: shellshock
	Checksum: 0x99EC1590
	Offset: 0x218
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function init()
{
}

/*
	Name: on_damage
	Namespace: shellshock
	Checksum: 0x7758CC1A
	Offset: 0x228
	Size: 0x14B
	Parameters: 3
	Flags: None
*/
function on_damage(cause, damage, weapon)
{
	if(self util::isFlashbanged())
	{
		return;
	}
	if(cause == "MOD_EXPLOSIVE" || cause == "MOD_GRENADE" || cause == "MOD_GRENADE_SPLASH" || cause == "MOD_PROJECTILE" || cause == "MOD_PROJECTILE_SPLASH")
	{
		time = 0;
		if(damage >= 90)
		{
			time = 4;
		}
		else if(damage >= 50)
		{
			time = 3;
		}
		else if(damage >= 25)
		{
			time = 2;
		}
		else if(damage > 10)
		{
			time = 2;
		}
		if(time)
		{
			if(self util::mayApplyScreenEffect())
			{
				self shellshock("frag_grenade_mp", 0.5);
			}
		}
	}
}

/*
	Name: end_on_death
	Namespace: shellshock
	Checksum: 0xAB408DF5
	Offset: 0x380
	Size: 0x1D
	Parameters: 0
	Flags: None
*/
function end_on_death()
{
	self waittill("death");
	waittillframeend;
	self notify("end_explode");
}

/*
	Name: end_on_timer
	Namespace: shellshock
	Checksum: 0xE8A7543
	Offset: 0x3A8
	Size: 0x29
	Parameters: 1
	Flags: None
*/
function end_on_timer(timer)
{
	self endon("disconnect");
	wait(timer);
	self notify("end_on_timer");
}

/*
	Name: rcbomb_earthquake
	Namespace: shellshock
	Checksum: 0xF19021
	Offset: 0x3E0
	Size: 0x5B
	Parameters: 1
	Flags: None
*/
function rcbomb_earthquake(position)
{
	PlayRumbleOnPosition("grenade_rumble", position);
	Earthquake(0.5, 0.5, self.origin, 512);
}

