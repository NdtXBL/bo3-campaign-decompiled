#using scripts\codescripts\struct;
#using scripts\shared\callbacks_shared;
#using scripts\shared\system_shared;

#namespace damagefeedback;

/*
	Name: __init__sytem__
	Namespace: damagefeedback
	Checksum: 0x33BED38C
	Offset: 0x218
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__sytem__()
{
	system::register("damagefeedback", &__init__, undefined, undefined);
}

/*
	Name: __init__
	Namespace: damagefeedback
	Checksum: 0x84DE7FEC
	Offset: 0x258
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function __init__()
{
	callback::on_start_gametype(&init);
	callback::on_connect(&on_player_connect);
}

/*
	Name: init
	Namespace: damagefeedback
	Checksum: 0x99EC1590
	Offset: 0x2A8
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function init()
{
}

/*
	Name: on_player_connect
	Namespace: damagefeedback
	Checksum: 0xE54991A1
	Offset: 0x2B8
	Size: 0xD7
	Parameters: 0
	Flags: None
*/
function on_player_connect()
{
	self.hud_damagefeedback = newdamageindicatorhudelem(self);
	self.hud_damagefeedback.horzAlign = "center";
	self.hud_damagefeedback.vertAlign = "middle";
	self.hud_damagefeedback.x = -12;
	self.hud_damagefeedback.y = -12;
	self.hud_damagefeedback.alpha = 0;
	self.hud_damagefeedback.archived = 1;
	self.hud_damagefeedback SetShader("damage_feedback", 24, 48);
	self.hitSoundTracker = 1;
}

/*
	Name: should_play_sound
	Namespace: damagefeedback
	Checksum: 0xB9B79E31
	Offset: 0x398
	Size: 0x65
	Parameters: 1
	Flags: None
*/
function should_play_sound(mod)
{
	if(!isdefined(mod))
	{
		return 0;
	}
	switch(mod)
	{
		case "MOD_CRUSH":
		case "MOD_GRENADE_SPLASH":
		case "MOD_HIT_BY_OBJECT":
		case "MOD_MELEE":
		case "MOD_MELEE_ASSASSINATE":
		case "MOD_MELEE_WEAPON_BUTT":
		{
			return 0;
		}
	}
	return 1;
}

/*
	Name: update
	Namespace: damagefeedback
	Checksum: 0x8FD6A397
	Offset: 0x408
	Size: 0x25F
	Parameters: 3
	Flags: None
*/
function update(mod, inflictor, perkFeedback)
{
	if(!isPlayer(self) || SessionModeIsZombiesGame())
	{
		return;
	}
	if(should_play_sound(mod))
	{
		if(isdefined(inflictor) && isdefined(inflictor.soundMod))
		{
			switch(inflictor.soundMod)
			{
				case "player":
				{
					self playlocalsound("mpl_hit_alert");
					break;
				}
				case "heli":
				{
					self thread function_a6594fd5(mod, "mpl_hit_alert_air");
					break;
				}
				case "hpm":
				{
					self thread function_a6594fd5(mod, "mpl_hit_alert_hpm");
					break;
				}
				case "taser_spike":
				{
					self thread function_a6594fd5(mod, "mpl_hit_alert_taser_spike");
					break;
				}
				case "dog":
				case "straferun":
				{
					break;
				}
				case "default_loud":
				{
					self thread function_a6594fd5(mod, "mpl_hit_heli_gunner");
					break;
				}
				case default:
				{
					self thread function_a6594fd5(mod, "mpl_hit_alert_low");
					break;
				}
			}
		}
		else
		{
			self playlocalsound("mpl_hit_alert_low");
		}
	}
	if(isdefined(perkFeedback))
	{
	}
	else
	{
		self.hud_damagefeedback SetShader("damage_feedback", 24, 48);
	}
	self.hud_damagefeedback.alpha = 1;
	self.hud_damagefeedback fadeOverTime(1);
	self.hud_damagefeedback.alpha = 0;
}

/*
	Name: function_a6594fd5
	Namespace: damagefeedback
	Checksum: 0x83D2869B
	Offset: 0x670
	Size: 0x5F
	Parameters: 2
	Flags: None
*/
function function_a6594fd5(mod, alert)
{
	self endon("disconnect");
	if(self.hitSoundTracker)
	{
		self.hitSoundTracker = 0;
		self playlocalsound(alert);
		wait(0.05);
		self.hitSoundTracker = 1;
	}
}

/*
	Name: update_special
	Namespace: damagefeedback
	Checksum: 0x67A874E3
	Offset: 0x6D8
	Size: 0xE9
	Parameters: 1
	Flags: None
*/
function update_special(hitEnt)
{
	if(!isPlayer(self))
	{
		return;
	}
	if(!isdefined(hitEnt))
	{
		return;
	}
	if(!isPlayer(hitEnt))
	{
		return;
	}
	wait(0.05);
	if(!isdefined(self.directionalHitArray))
	{
		self.directionalHitArray = [];
		hitEntNum = hitEnt GetEntityNumber();
		self.directionalHitArray[hitEntNum] = 1;
		self thread send_hit_special_event_at_frame_end(hitEnt);
	}
	else
	{
		hitEntNum = hitEnt GetEntityNumber();
		self.directionalHitArray[hitEntNum] = 1;
	}
}

/*
	Name: send_hit_special_event_at_frame_end
	Namespace: damagefeedback
	Checksum: 0x4C16DB74
	Offset: 0x7D0
	Size: 0x17D
	Parameters: 1
	Flags: None
*/
function send_hit_special_event_at_frame_end(hitEnt)
{
	self endon("disconnect");
	waittillframeend;
	enemysHit = 0;
	value = 1;
	entBitArray0 = 0;
	for(i = 0; i < 32; i++)
	{
		if(isdefined(self.directionalHitArray[i]) && self.directionalHitArray[i] != 0)
		{
			entBitArray0 = entBitArray0 + value;
			enemysHit++;
		}
		value = value * 2;
	}
	entBitArray1 = 0;
	for(i = 33; i < 64; i++)
	{
		if(isdefined(self.directionalHitArray[i]) && self.directionalHitArray[i] != 0)
		{
			entBitArray1 = entBitArray1 + value;
			enemysHit++;
		}
		value = value * 2;
	}
	if(enemysHit)
	{
		self directionalHitIndicator(entBitArray0, entBitArray1);
	}
	self.directionalHitArray = undefined;
	entBitArray0 = 0;
	entBitArray1 = 0;
}

