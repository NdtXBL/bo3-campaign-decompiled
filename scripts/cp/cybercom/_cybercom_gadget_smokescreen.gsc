#using scripts\codescripts\struct;
#using scripts\cp\_challenges;
#using scripts\cp\cybercom\_cybercom;
#using scripts\cp\cybercom\_cybercom_dev;
#using scripts\cp\cybercom\_cybercom_gadget;
#using scripts\cp\cybercom\_cybercom_gadget_sensory_overload;
#using scripts\cp\cybercom\_cybercom_gadget_system_overload;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\shared\abilities\_ability_player;
#using scripts\shared\abilities\_ability_util;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace namespace_11fb1f28;

/*
	Name: init
	Namespace: namespace_11fb1f28
	Checksum: 0x99EC1590
	Offset: 0x440
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function init()
{
}

/*
	Name: main
	Namespace: namespace_11fb1f28
	Checksum: 0xEEDC48A8
	Offset: 0x450
	Size: 0x17B
	Parameters: 0
	Flags: None
*/
function main()
{
	namespace_d00ec32::function_36b56038(1, 1);
	level.cybercom.smokescreen = spawnstruct();
	level.cybercom.smokescreen._is_flickering = &_is_flickering;
	level.cybercom.smokescreen._on_flicker = &_on_flicker;
	level.cybercom.smokescreen._on_give = &_on_give;
	level.cybercom.smokescreen._on_take = &_on_take;
	level.cybercom.smokescreen._on_connect = &_on_connect;
	level.cybercom.smokescreen._on = &_on;
	level.cybercom.smokescreen._off = &_off;
	level.cybercom.smokescreen._is_primed = &_is_primed;
}

/*
	Name: _is_flickering
	Namespace: namespace_11fb1f28
	Checksum: 0xD230F060
	Offset: 0x5D8
	Size: 0xB
	Parameters: 1
	Flags: None
*/
function _is_flickering(slot)
{
}

/*
	Name: _on_flicker
	Namespace: namespace_11fb1f28
	Checksum: 0x78B18FC8
	Offset: 0x5F0
	Size: 0x13
	Parameters: 2
	Flags: None
*/
function _on_flicker(slot, weapon)
{
}

/*
	Name: _on_give
	Namespace: namespace_11fb1f28
	Checksum: 0x1D5424
	Offset: 0x610
	Size: 0x4B
	Parameters: 2
	Flags: None
*/
function _on_give(slot, weapon)
{
	self.cybercom.var_9d8e0758 = undefined;
	self.cybercom.var_c40accd3 = undefined;
	self thread cybercom::function_b5f4e597(weapon);
}

/*
	Name: _on_take
	Namespace: namespace_11fb1f28
	Checksum: 0x19113CA5
	Offset: 0x668
	Size: 0x13
	Parameters: 2
	Flags: None
*/
function _on_take(slot, weapon)
{
}

/*
	Name: _on_connect
	Namespace: namespace_11fb1f28
	Checksum: 0x99EC1590
	Offset: 0x688
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function _on_connect()
{
}

/*
	Name: _on
	Namespace: namespace_11fb1f28
	Checksum: 0xB8CCD566
	Offset: 0x698
	Size: 0xE3
	Parameters: 2
	Flags: None
*/
function _on(slot, weapon)
{
	cybercom::function_adc40f11(weapon, 1);
	level thread function_8810da3c(self, self function_1a9006bd("cybercom_smokescreen") == 2);
	if(isPlayer(self))
	{
		itemIndex = GetItemIndexFromRef("cybercom_smokescreen");
		if(isdefined(itemIndex))
		{
			self AddDStat("ItemStats", itemIndex, "stats", "used", "statValue", 1);
		}
	}
}

/*
	Name: _off
	Namespace: namespace_11fb1f28
	Checksum: 0x63E3CFD5
	Offset: 0x788
	Size: 0x13
	Parameters: 2
	Flags: None
*/
function _off(slot, weapon)
{
}

/*
	Name: _is_primed
	Namespace: namespace_11fb1f28
	Checksum: 0xAFACF266
	Offset: 0x7A8
	Size: 0x13
	Parameters: 2
	Flags: None
*/
function _is_primed(slot, weapon)
{
}

/*
	Name: function_269cc172
	Namespace: namespace_11fb1f28
	Checksum: 0x172CB9C9
	Offset: 0x7C8
	Size: 0xE1
	Parameters: 2
	Flags: None
*/
function function_269cc172(var_d7d4ed9f, var_c34fe8d9)
{
	x = var_d7d4ed9f[0] * cos(var_c34fe8d9) + var_d7d4ed9f[1] * sin(var_c34fe8d9);
	y = -1 * var_d7d4ed9f[0] * sin(var_c34fe8d9) + var_d7d4ed9f[1] * cos(var_c34fe8d9);
	z = var_d7d4ed9f[2];
	return (x, y, z);
}

/*
	Name: function_8810da3c
	Namespace: namespace_11fb1f28
	Checksum: 0xBB3A8301
	Offset: 0x8B8
	Size: 0x3D3
	Parameters: 2
	Flags: None
*/
function function_8810da3c(owner, upgraded)
{
	if(!isdefined(upgraded))
	{
		upgraded = 0;
	}
	if(upgraded)
	{
	}
	else
	{
	}
	weapon = GetWeapon("smoke_cybercom");
	FORWARD = AnglesToForward(owner.angles);
	center = 40 * FORWARD + owner.origin;
	var_8cc2a222 = 140 * FORWARD + center;
	owner thread function_eb018a63(var_8cc2a222, weapon, upgraded);
	playsoundatposition("gdt_cybercore_smokescreen", var_8cc2a222);
	rotated = function_269cc172(FORWARD, 23);
	var_ae0aa92 = rotated * 140 + center;
	rotated = function_269cc172(FORWARD, 46);
	var_e4de3029 = rotated * 140 + center;
	rotated = function_269cc172(FORWARD, 69);
	var_bedbb5c0 = rotated * 140 + center;
	owner thread function_eb018a63(var_ae0aa92, weapon, upgraded);
	util::wait_network_frame();
	owner thread function_eb018a63(var_e4de3029, weapon, upgraded);
	util::wait_network_frame();
	owner thread function_eb018a63(var_bedbb5c0, weapon, upgraded);
	util::wait_network_frame();
	rotated = function_269cc172(FORWARD, -23);
	var_354533f = rotated * 140 + center;
	rotated = function_269cc172(FORWARD, -46);
	var_914ce404 = rotated * 140 + center;
	rotated = function_269cc172(FORWARD, -69);
	var_b74f5e6d = rotated * 140 + center;
	owner thread function_eb018a63(var_354533f, weapon, upgraded);
	util::wait_network_frame();
	owner thread function_eb018a63(var_914ce404, weapon, upgraded);
	util::wait_network_frame();
	owner thread function_eb018a63(var_b74f5e6d, weapon, upgraded);
	util::wait_network_frame();
	owner thread function_e52895b(center);
}

/*
	Name: function_eb018a63
	Namespace: namespace_11fb1f28
	Checksum: 0xA466CABF
	Offset: 0xC98
	Size: 0x28F
	Parameters: 3
	Flags: Private
*/
function private function_eb018a63(origin, weapon, var_50ae8517)
{
	timeStep = 2;
	cloud = function_2fb41213(origin, GetDvarInt("scr_smokescreen_duration", 7), weapon);
	cloud thread function_7125df2e(GetDvarInt("scr_smokescreen_duration", 7));
	cloud thread function_2346317b(GetDvarInt("scr_smokescreen_duration", 7), 1, 2);
	cloud SetTeam(self.team);
	if(isPlayer(self))
	{
		cloud SetOwner(self);
	}
	cloud.var_b33510b6 = GetDvarInt("scr_smokescreen_duration", 7);
	if(var_50ae8517)
	{
		cloud thread function_76df0d04(self, timeStep);
	}
	if(GetDvarInt("scr_smokescreen_debug", 0))
	{
		cloud thread function_2f3c403b(GetDvarInt("scr_smokescreen_duration", 7));
		level thread namespace_afd2f70b::function_a0e51d80(cloud.origin, GetDvarInt("scr_smokescreen_duration", 7), 16, (1, 0, 0));
	}
	cloud endon("death");
	while(1)
	{
		FxBlockSight(cloud, cloud.var_26f63812);
		wait(timeStep);
		cloud.var_b33510b6 = cloud.var_b33510b6 - timeStep;
		if(cloud.var_b33510b6 < 0)
		{
			cloud.var_b33510b6 = 0;
		}
	}
}

/*
	Name: function_76df0d04
	Namespace: namespace_11fb1f28
	Checksum: 0x6C6A6796
	Offset: 0xF30
	Size: 0xB5
	Parameters: 2
	Flags: Private
*/
function private function_76df0d04(player, timeStep)
{
	self endon("death");
	while(1)
	{
		if(isdefined(self.trigger))
		{
			self.trigger delete();
		}
		self.trigger = spawn("trigger_radius", self.origin, 25, self.var_26f63812, self.var_26f63812);
		self.trigger thread function_eafddd94(player, self);
		wait(timeStep);
	}
}

/*
	Name: function_eafddd94
	Namespace: namespace_11fb1f28
	Checksum: 0x6751A475
	Offset: 0xFF0
	Size: 0x319
	Parameters: 2
	Flags: Private
*/
function private function_eafddd94(player, cloud)
{
	self endon("death");
	while(1)
	{
		self waittill("trigger", guy);
		if(!isdefined(cloud))
		{
			return;
		}
		if(!isdefined(guy))
		{
			continue;
		}
		if(!isalive(guy))
		{
			continue;
		}
		if(isdefined(guy.is_disabled) && guy.is_disabled)
		{
			return 0;
		}
		if(!(isdefined(guy.takedamage) && guy.takedamage))
		{
			return 0;
		}
		if(isdefined(guy._ai_melee_opponent))
		{
			return 0;
		}
		if(isdefined(guy.is_disabled) && guy.is_disabled)
		{
			continue;
		}
		if(guy cybercom::function_8fd8f5b1("cybercom_smokescreen"))
		{
			continue;
		}
		if(isdefined(guy.magic_bullet_shield) && guy.magic_bullet_shield)
		{
			continue;
		}
		if(IsActor(guy) && guy isInScriptedState())
		{
			continue;
		}
		if(isdefined(guy.allowdeath) && !guy.allowdeath)
		{
			continue;
		}
		if(isVehicle(guy))
		{
			if(!isdefined(guy.var_5895314d))
			{
				player thread challenges::function_96ed590f("cybercom_uses_martial");
				guy.var_5895314d = 1;
			}
			guy thread namespace_528b4613::system_overload(player, cloud.var_b33510b6 * 1000);
		}
		if(isdefined(guy.archetype))
		{
			switch(guy.archetype)
			{
				case "robot":
				{
					player thread challenges::function_96ed590f("cybercom_uses_martial");
					guy thread namespace_528b4613::system_overload(player, cloud.var_b33510b6 * 1000);
					break;
				}
				case "human":
				case "human_riotshield":
				{
					player thread challenges::function_96ed590f("cybercom_uses_martial");
					guy thread namespace_64276cf9::sensory_overload(player, "cybercom_smokescreen");
					break;
				}
			}
		}
	}
}

/*
	Name: function_fc04e511
	Namespace: namespace_11fb1f28
	Checksum: 0xC0551218
	Offset: 0x1318
	Size: 0x8F
	Parameters: 3
	Flags: Private
*/
function private function_fc04e511(dir, var_99f49fe2, seconds)
{
	self endon("death");
	ticks = seconds * 20;
	var_ccde618b = var_99f49fe2 / ticks * VectorNormalize(dir);
	while(ticks)
	{
		ticks--;
		self.origin = self.origin + var_ccde618b;
	}
}

/*
	Name: function_2fb41213
	Namespace: namespace_11fb1f28
	Checksum: 0xD20BE4A2
	Offset: 0x13B0
	Size: 0x87
	Parameters: 3
	Flags: Private
*/
function private function_2fb41213(origin, duration, weapon)
{
	smokescreen = SpawnTimedFX(weapon, origin, (0, 0, 1), duration);
	smokescreen.var_26f63812 = GetDvarInt("scr_smokescreen_radius", 60);
	smokescreen.var_30f44526 = 1;
	return smokescreen;
}

/*
	Name: function_7125df2e
	Namespace: namespace_11fb1f28
	Checksum: 0x251EC98A
	Offset: 0x1440
	Size: 0x5B
	Parameters: 1
	Flags: Private
*/
function private function_7125df2e(time)
{
	self endon("death");
	wait(time);
	if(isdefined(self.trigger))
	{
		self.trigger delete();
	}
	self delete();
}

/*
	Name: function_2346317b
	Namespace: namespace_11fb1f28
	Checksum: 0x9C661A40
	Offset: 0x14A8
	Size: 0x175
	Parameters: 3
	Flags: Private
*/
function private function_2346317b(time, startscale, maxscale)
{
	self endon("death");
	if(maxscale < 1)
	{
		maxscale = 1;
	}
	self.var_30f44526 = startscale;
	var_f6e1ecda = time * 20;
	up = maxscale > startscale;
	if(up)
	{
		var_c2591895 = maxscale - startscale;
		var_6411d75f = var_c2591895 / var_f6e1ecda;
		continue;
	}
	var_c2591895 = startscale - maxscale;
	var_6411d75f = var_c2591895 / var_f6e1ecda * -1;
	while(var_f6e1ecda)
	{
		self.var_30f44526 = self.var_30f44526 + var_6411d75f;
		if(self.var_30f44526 > maxscale)
		{
			self.var_30f44526 = maxscale;
		}
		if(self.var_30f44526 < 1)
		{
			self.var_30f44526 = 1;
		}
		self.var_26f63812 = GetDvarInt("scr_smokescreen_radius", 60) * self.var_30f44526;
		wait(0.05);
		var_f6e1ecda--;
	}
}

/*
	Name: function_2f3c403b
	Namespace: namespace_11fb1f28
	Checksum: 0x32B6A896
	Offset: 0x1628
	Size: 0x6F
	Parameters: 1
	Flags: Private
*/
function private function_2f3c403b(time)
{
	self endon("death");
	var_f6e1ecda = time * 20;
	while(var_f6e1ecda)
	{
		var_f6e1ecda--;
		level thread cybercom::debug_sphere(self.origin, self.var_26f63812);
		wait(0.05);
	}
}

/*
	Name: function_d25acb0
	Namespace: namespace_11fb1f28
	Checksum: 0xAD1BBA24
	Offset: 0x16A0
	Size: 0xFB
	Parameters: 2
	Flags: None
*/
function function_d25acb0(var_9bc2efcb, upgraded)
{
	if(!isdefined(var_9bc2efcb))
	{
		var_9bc2efcb = 1;
	}
	if(!isdefined(upgraded))
	{
		upgraded = 0;
	}
	if(isdefined(var_9bc2efcb) && var_9bc2efcb)
	{
		type = self cybercom::function_5e3d3aa();
		self OrientMode("face default");
		self AnimScripted("ai_cybercom_anim", self.origin, self.angles, "ai_base_rifle_" + type + "_exposed_cybercom_activate");
		self waittillmatch("hash_39fa7e38");
	}
	level thread function_8810da3c(self, upgraded);
}

/*
	Name: function_e52895b
	Namespace: namespace_11fb1f28
	Checksum: 0xA78C071E
	Offset: 0x17A8
	Size: 0x8D
	Parameters: 1
	Flags: Private
*/
function private function_e52895b(origin)
{
	self endon("death");
	var_9f9fc36f = 1;
	for(timeLeft = GetDvarInt("scr_smokescreen_duration", 7); timeLeft > 0;  = GetDvarInt("scr_smokescreen_duration", 7))
	{
		function_1043951b(origin, 1000);
		wait(var_9f9fc36f);
	}
}

