#using scripts\codescripts\struct;
#using scripts\cp\_achievements;
#using scripts\cp\cybercom\_cybercom;
#using scripts\cp\cybercom\_cybercom_gadget;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\shared\abilities\_ability_player;
#using scripts\shared\abilities\_ability_util;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\statemachine_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace namespace_354e20c0;

/*
	Name: init
	Namespace: namespace_354e20c0
	Checksum: 0x99EC1590
	Offset: 0x490
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function init()
{
}

/*
	Name: main
	Namespace: namespace_354e20c0
	Checksum: 0xD56624ED
	Offset: 0x4A0
	Size: 0x1B3
	Parameters: 0
	Flags: None
*/
function main()
{
	namespace_d00ec32::function_36b56038(1, 32, 1);
	level.cybercom.unstoppable_force = spawnstruct();
	level.cybercom.unstoppable_force._is_flickering = &_is_flickering;
	level.cybercom.unstoppable_force._on_flicker = &_on_flicker;
	level.cybercom.unstoppable_force._on_give = &_on_give;
	level.cybercom.unstoppable_force._on_take = &_on_take;
	level.cybercom.unstoppable_force._on_connect = &_on_connect;
	level.cybercom.unstoppable_force._on = &_on;
	level.cybercom.unstoppable_force._off = &_off;
	level.cybercom.unstoppable_force._is_primed = &_is_primed;
	level.cybercom.unstoppable_force.weapon = GetWeapon("gadget_unstoppable_force");
}

/*
	Name: _is_flickering
	Namespace: namespace_354e20c0
	Checksum: 0xB8A858D
	Offset: 0x660
	Size: 0xB
	Parameters: 1
	Flags: None
*/
function _is_flickering(slot)
{
}

/*
	Name: _on_flicker
	Namespace: namespace_354e20c0
	Checksum: 0x2D847B4D
	Offset: 0x678
	Size: 0x13
	Parameters: 2
	Flags: None
*/
function _on_flicker(slot, weapon)
{
}

/*
	Name: _on_give
	Namespace: namespace_354e20c0
	Checksum: 0x7CC6630E
	Offset: 0x698
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
	Namespace: namespace_354e20c0
	Checksum: 0xF459E1FC
	Offset: 0x6F0
	Size: 0x21
	Parameters: 2
	Flags: None
*/
function _on_take(slot, weapon)
{
	self.cybercom.var_301030f7 = undefined;
}

/*
	Name: _on_connect
	Namespace: namespace_354e20c0
	Checksum: 0x99EC1590
	Offset: 0x720
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function _on_connect()
{
}

/*
	Name: _on
	Namespace: namespace_354e20c0
	Checksum: 0xBB463F3
	Offset: 0x730
	Size: 0x143
	Parameters: 2
	Flags: None
*/
function _on(slot, weapon)
{
	self disableOffhandWeapons();
	self DisableWeaponCycling();
	achievements::function_386309ce(self);
	self.cybercom.var_301030f7 = undefined;
	self notify(weapon.name + "_fired");
	level notify(weapon.name + "_fired");
	self thread function_875f1595(slot, weapon);
	if(isPlayer(self))
	{
		itemIndex = GetItemIndexFromRef("cybercom_unstoppableforce");
		if(isdefined(itemIndex))
		{
			self AddDStat("ItemStats", itemIndex, "stats", "used", "statValue", 1);
		}
	}
}

/*
	Name: _off
	Namespace: namespace_354e20c0
	Checksum: 0xE2461242
	Offset: 0x880
	Size: 0xB3
	Parameters: 2
	Flags: None
*/
function _off(slot, weapon)
{
	self clientfield::set_to_player("unstoppableforce_state", 0);
	self notify("hash_13da8804");
	self notify("hash_1f17ce9a");
	self playsound("gdt_unstoppable_stop");
	self GadgetPowerSet(slot, 0);
	self EnableOffhandWeapons();
	self EnableWeaponCycling();
}

/*
	Name: function_1852a14f
	Namespace: namespace_354e20c0
	Checksum: 0x2B856617
	Offset: 0x940
	Size: 0x43
	Parameters: 2
	Flags: Private
*/
function private function_1852a14f(slot, weapon)
{
	self endon("weapon_melee_juke");
	wait(0.5);
	self GadgetPowerChange(slot, -100);
}

/*
	Name: function_6c3ee126
	Namespace: namespace_354e20c0
	Checksum: 0x1292C7B8
	Offset: 0x990
	Size: 0x53
	Parameters: 2
	Flags: Private
*/
function private function_6c3ee126(slot, weapon)
{
	self endon("disconnect");
	self endon("hash_1f17ce9a");
	self waittill("hash_21b9142e");
	self GadgetPowerSet(slot, 0);
}

/*
	Name: function_98296a6a
	Namespace: namespace_354e20c0
	Checksum: 0xF2827496
	Offset: 0x9F0
	Size: 0xBB
	Parameters: 2
	Flags: Private
*/
function private function_98296a6a(slot, weapon)
{
	self endon("death");
	self endon("disconnect");
	self waittill("hash_390b7030", endReason);
	if(endReason == 2)
	{
		Earthquake(1, 0.75, self.origin, 100);
		self PlayRumbleOnEntity("riotshield_impact");
		self playsound("gdt_unstoppable_hit_wall");
	}
}

/*
	Name: _is_primed
	Namespace: namespace_354e20c0
	Checksum: 0x6EAFD620
	Offset: 0xAB8
	Size: 0x13
	Parameters: 2
	Flags: None
*/
function _is_primed(slot, weapon)
{
}

/*
	Name: function_875f1595
	Namespace: namespace_354e20c0
	Checksum: 0x40FA9EA2
	Offset: 0xAD8
	Size: 0x113
	Parameters: 2
	Flags: Private
*/
function private function_875f1595(slot, weapon)
{
	self endon("death");
	self endon("disconnect");
	self endon("hash_1f17ce9a");
	self clientfield::set_to_player("unstoppableforce_state", 1);
	wait(0.05);
	if(self IsSwitchingWeapons())
	{
		self waittill("weapon_change_complete");
	}
	self thread function_941861e(weapon);
	self thread function_6c3ee126(slot, weapon);
	self thread function_98296a6a(slot, weapon);
	self thread function_1852a14f(slot, weapon);
	self function_cbdc28cb();
}

/*
	Name: function_2c971ed8
	Namespace: namespace_354e20c0
	Checksum: 0x6E8607A5
	Offset: 0xBF8
	Size: 0x1AF
	Parameters: 1
	Flags: Private
*/
function private function_2c971ed8(target)
{
	if(!isdefined(target))
	{
		return 0;
	}
	if(!isalive(target))
	{
		return 0;
	}
	if(target cybercom::function_8fd8f5b1("cybercom_unstoppableforce"))
	{
		return 0;
	}
	if(!(isdefined(target.takedamage) && target.takedamage))
	{
		return 0;
	}
	if(IsActor(target))
	{
		if(target isInScriptedState() && (!isdefined(target.is_disabled) && target.is_disabled))
		{
			if(!target cybercom::function_421746e0())
			{
				return 0;
			}
		}
	}
	if(!(isdefined(target.allowdeath) && target.allowdeath))
	{
		return 0;
	}
	if(isdefined(target.blockingPain) && target.blockingPain)
	{
		return 0;
	}
	if(IsActor(target) && target cybercom::function_78525729() != "stand" && target cybercom::function_78525729() != "crouch")
	{
		return 0;
	}
	return 1;
}

/*
	Name: _get_valid_targets
	Namespace: namespace_354e20c0
	Checksum: 0xC43471F1
	Offset: 0xDB0
	Size: 0x105
	Parameters: 0
	Flags: Private
*/
function private _get_valid_targets()
{
	enemies = ArrayCombine(GetAITeamArray("axis"), GetAITeamArray("team3"), 0, 0);
	valid = [];
	foreach(var_8ae1cd80 in enemies)
	{
		if(!function_2c971ed8(var_8ae1cd80))
		{
			continue;
		}
		valid[valid.size] = var_8ae1cd80;
	}
	return valid;
}

/*
	Name: function_40b93b78
	Namespace: namespace_354e20c0
	Checksum: 0xF18A0B83
	Offset: 0xEC0
	Size: 0x29
	Parameters: 0
	Flags: Private
*/
function private function_40b93b78()
{
	self function_bc209a09();
	self notify("hash_13da8804");
}

/*
	Name: function_649c2f65
	Namespace: namespace_354e20c0
	Checksum: 0xCFCB6134
	Offset: 0xEF8
	Size: 0x303
	Parameters: 2
	Flags: Private
*/
function private function_649c2f65(enemy, weapon)
{
	if(enemy cybercom::islinked())
	{
		enemy Unlink();
	}
	enemy notify("hash_f8c5dd60", weapon, self);
	if(enemy.scriptvehicletype == "quadtank" || enemy.scriptvehicletype == "siegebot")
	{
		enemy DoDamage(GetDvarInt("scr_unstoppable_heavy_vehicle_damage", 300), self.origin, self, self, "none", "MOD_IMPACT", 512, level.cybercom.unstoppable_force.weapon, -1, 1);
		self function_40b93b78();
	}
	else if(enemy.scriptvehicletype == "raps" || enemy.scriptvehicletype == "wasp")
	{
		enemy DoDamage(enemy.health, self.origin, self, self, "none", "MOD_IMPACT", 512, level.cybercom.unstoppable_force.weapon, -1, 1);
	}
	else if(enemy.scriptvehicletype == "amws")
	{
		enemy DoDamage(enemy.health, self.origin, self, self, "none", "MOD_IMPACT", 512, level.cybercom.unstoppable_force.weapon, -1, 1);
		self function_40b93b78();
	}
	else if(enemy.scriptvehicletype == "")
	{
		if(enemy.archetype == "turret")
		{
			enemy DoDamage(enemy.health, self.origin, self, self, "none", "MOD_IMPACT", 512, level.cybercom.unstoppable_force.weapon, -1, 1);
			self function_40b93b78();
		}
	}
}

/*
	Name: function_1383f19
	Namespace: namespace_354e20c0
	Checksum: 0x61394378
	Offset: 0x1208
	Size: 0x263
	Parameters: 2
	Flags: None
*/
function function_1383f19(guy, weapon)
{
	if(guy cybercom::islinked())
	{
		guy Unlink();
	}
	guy notify("hash_f8c5dd60", weapon, self);
	if(guy.archetype == "warlord")
	{
		if(isdefined(guy.is_disabled) && guy.is_disabled)
		{
			guy DoDamage(guy.health, self.origin, self, self, "none", "MOD_IMPACT", 512, level.cybercom.unstoppable_force.var_bf0de5fb, -1, 1);
		}
		else
		{
			guy DoDamage(GetDvarInt("scr_unstoppable_warlord_damage", 40), self.origin, self, self, "none", "MOD_IMPACT", 512, level.cybercom.unstoppable_force.weapon, -1, 1);
		}
	}
	else if(guy.archetype == "human_riotshield")
	{
		guy DoDamage(guy.health, self.origin, self, self, "none", "MOD_IMPACT", 0, weapon, -1, 1);
		guy notify("bhtn_action_notify", "reactBodyBlow");
	}
	else
	{
		guy function_b4852552(self);
	}
	if(guy.archetype == "robot")
	{
		self playsound("gdt_unstoppable_hit_bot");
	}
	else
	{
		self playsound("gdt_unstoppable_hit_human");
	}
}

/*
	Name: function_941861e
	Namespace: namespace_354e20c0
	Checksum: 0xBB304B91
	Offset: 0x1478
	Size: 0x1BF
	Parameters: 1
	Flags: None
*/
function function_941861e(weapon)
{
	self notify("hash_13da8804");
	self endon("hash_13da8804");
	self endon("death");
	self endon("disconnect");
	while(1)
	{
		enemies = function_518996b3();
		hit = 0;
		foreach(guy in enemies)
		{
			hit++;
			if(isVehicle(guy))
			{
				self playsound("gdt_unstoppable_hit_veh");
				self function_649c2f65(guy, weapon);
				continue;
			}
			self function_1383f19(guy, weapon);
		}
		if(hit)
		{
			Earthquake(1, 0.75, self.origin, 100);
			self PlayRumbleOnEntity("damage_heavy");
		}
		wait(0.05);
	}
}

/*
	Name: function_518996b3
	Namespace: namespace_354e20c0
	Checksum: 0x1A0511BB
	Offset: 0x1640
	Size: 0x335
	Parameters: 0
	Flags: None
*/
function function_518996b3()
{
	enemies = _get_valid_targets();
	view_pos = self.origin;
	validTargets = Array::get_all_closest(view_pos, enemies, undefined, undefined, 120);
	if(!isdefined(validTargets))
	{
		return;
	}
	FORWARD = AnglesToForward(self getPlayerAngles());
	up = anglesToUp(self getPlayerAngles());
	segment_start = view_pos + 36 * FORWARD;
	segment_end = segment_start + 120 - 36 * FORWARD;
	fling_force = GetDvarInt("scr_unstoppable_fling_force", 175);
	fling_force_vlo = fling_force * 0.5;
	fling_force_vhi = fling_force * 0.6;
	enemies = [];
	for(i = 0; i < validTargets.size; i++)
	{
		if(!isdefined(validTargets[i]) || !isalive(validTargets[i]))
		{
			continue;
		}
		test_origin = validTargets[i] GetCentroid();
		radial_origin = PointOnSegmentNearestToPoint(segment_start, segment_end, test_origin);
		lateral = test_origin - radial_origin;
		if(Abs(lateral[2]) > 72)
		{
			continue;
		}
		lateral = (lateral[0], lateral[1], 0);
		len = length(lateral);
		if(len > 36)
		{
			continue;
		}
		lateral = (lateral[0], lateral[1], 0);
		validTargets[i].fling_vec = fling_force * FORWARD + RandomFloatRange(fling_force_vlo, fling_force_vhi) * up;
		enemies[enemies.size] = validTargets[i];
	}
	return enemies;
}

/*
	Name: function_b4852552
	Namespace: namespace_354e20c0
	Checksum: 0xDA4231CC
	Offset: 0x1980
	Size: 0xBB
	Parameters: 1
	Flags: None
*/
function function_b4852552(player)
{
	if(!isdefined(self) || !isalive(self))
	{
		return;
	}
	self DoDamage(self.health, player.origin, player, player, "", "MOD_IMPACT");
	if(isdefined(self.fling_vec))
	{
		self StartRagdoll(1);
		self LaunchRagdoll(self.fling_vec);
	}
}

