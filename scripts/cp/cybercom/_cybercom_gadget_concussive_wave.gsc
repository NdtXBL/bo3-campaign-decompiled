#using scripts\codescripts\struct;
#using scripts\cp\_challenges;
#using scripts\cp\cybercom\_cybercom;
#using scripts\cp\cybercom\_cybercom_gadget;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\shared\abilities\_ability_player;
#using scripts\shared\abilities\_ability_util;
#using scripts\shared\ai\systems\gib;
#using scripts\shared\ai_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace namespace_687c8387;

/*
	Name: init
	Namespace: namespace_687c8387
	Checksum: 0x99EC1590
	Offset: 0x548
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function init()
{
}

/*
	Name: main
	Namespace: namespace_687c8387
	Checksum: 0x9B7E42C4
	Offset: 0x558
	Size: 0x183
	Parameters: 0
	Flags: None
*/
function main()
{
	namespace_d00ec32::function_36b56038(1, 4, 1);
	level.cybercom.concussive_wave = spawnstruct();
	level.cybercom.concussive_wave._is_flickering = &_is_flickering;
	level.cybercom.concussive_wave._on_flicker = &_on_flicker;
	level.cybercom.concussive_wave._on_give = &_on_give;
	level.cybercom.concussive_wave._on_take = &_on_take;
	level.cybercom.concussive_wave._on_connect = &_on_connect;
	level.cybercom.concussive_wave._on = &_on;
	level.cybercom.concussive_wave._off = &_off;
	level.cybercom.concussive_wave._is_primed = &_is_primed;
}

/*
	Name: _is_flickering
	Namespace: namespace_687c8387
	Checksum: 0x5BF952C9
	Offset: 0x6E8
	Size: 0xB
	Parameters: 1
	Flags: None
*/
function _is_flickering(slot)
{
}

/*
	Name: _on_flicker
	Namespace: namespace_687c8387
	Checksum: 0xF3CEFFC0
	Offset: 0x700
	Size: 0x13
	Parameters: 2
	Flags: None
*/
function _on_flicker(slot, weapon)
{
}

/*
	Name: _on_give
	Namespace: namespace_687c8387
	Checksum: 0x48CC573F
	Offset: 0x720
	Size: 0x1A3
	Parameters: 2
	Flags: None
*/
function _on_give(slot, weapon)
{
	self.cybercom.var_e6fa6e38 = GetDvarInt("scr_concussive_wave_radius", 310);
	self.cybercom.var_47063871 = GetWeapon("hero_gravityspikes_cybercom");
	self.cybercom.var_46ad3e37 = GetDvarInt("scr_concussive_wave_kill_radius", 195);
	if(self function_1a9006bd("cybercom_concussive") == 2)
	{
		self.cybercom.var_e6fa6e38 = GetDvarInt("scr_concussive_wave_upg_radius", 310);
		self.cybercom.var_47063871 = GetWeapon("hero_gravityspikes_cybercom_upgraded");
	}
	self.cybercom.var_4e92078e = 5 * GetDvarFloat("scr_concussive_wave_scale", 1);
	self.cybercom.var_9d8e0758 = &_get_valid_targets;
	self.cybercom.var_c40accd3 = &function_602b28e9;
	self thread cybercom::function_b5f4e597(weapon);
}

/*
	Name: _on_take
	Namespace: namespace_687c8387
	Checksum: 0x8BD4B8D7
	Offset: 0x8D0
	Size: 0x13
	Parameters: 2
	Flags: None
*/
function _on_take(slot, weapon)
{
}

/*
	Name: _on_connect
	Namespace: namespace_687c8387
	Checksum: 0x99EC1590
	Offset: 0x8F0
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function _on_connect()
{
}

/*
	Name: _on
	Namespace: namespace_687c8387
	Checksum: 0x1AAEEE4C
	Offset: 0x900
	Size: 0x1A3
	Parameters: 2
	Flags: None
*/
function _on(slot, weapon)
{
	if(self GetStance() == "prone")
	{
		self GadgetDeactivate(slot, weapon, 2);
		return;
	}
	if(self IsSwitchingWeapons())
	{
		self GadgetDeactivate(slot, weapon, 2);
		return;
	}
	if(self isOnLadder())
	{
		self GadgetDeactivate(slot, weapon, 2);
		return;
	}
	cybercom::function_adc40f11(weapon, 1);
	self thread function_9ba0286c(self.cybercom.var_cb0b065, slot, weapon);
	level.var_b1ae49b1 = GetTime();
	if(isPlayer(self))
	{
		itemIndex = GetItemIndexFromRef("cybercom_concussive");
		if(isdefined(itemIndex))
		{
			self AddDStat("ItemStats", itemIndex, "stats", "used", "statValue", 1);
		}
	}
}

/*
	Name: _off
	Namespace: namespace_687c8387
	Checksum: 0x16603A71
	Offset: 0xAB0
	Size: 0x1F
	Parameters: 2
	Flags: None
*/
function _off(slot, weapon)
{
	level.var_61196c7 = GetTime();
}

/*
	Name: _is_primed
	Namespace: namespace_687c8387
	Checksum: 0x61077BD7
	Offset: 0xAD8
	Size: 0x13
	Parameters: 2
	Flags: None
*/
function _is_primed(slot, weapon)
{
}

/*
	Name: function_73688d2e
	Namespace: namespace_687c8387
	Checksum: 0x4C5460A0
	Offset: 0xAF8
	Size: 0xE3
	Parameters: 2
	Flags: None
*/
function function_73688d2e(damage, var_9bc2efcb)
{
	if(!isdefined(var_9bc2efcb))
	{
		var_9bc2efcb = 1;
	}
	if(isdefined(var_9bc2efcb) && var_9bc2efcb)
	{
		type = self cybercom::function_5e3d3aa();
		self OrientMode("face default");
		self AnimScripted("ai_cybercom_anim", self.origin, self.angles, "ai_base_rifle_" + type + "_exposed_cybercom_activate");
		self waittillmatch("hash_39fa7e38");
	}
	self function_9ba0286c(damage);
}

/*
	Name: _get_valid_targets
	Namespace: namespace_687c8387
	Checksum: 0x50B7817F
	Offset: 0xBE8
	Size: 0x161
	Parameters: 1
	Flags: Private
*/
function private _get_valid_targets(weapon)
{
	humans = ArrayCombine(GetAISpeciesArray("axis", "human"), GetAISpeciesArray("team3", "human"), 0, 0);
	robots = ArrayCombine(GetAISpeciesArray("axis", "robot"), GetAISpeciesArray("team3", "robot"), 0, 0);
	zombies = ArrayCombine(GetAISpeciesArray("axis", "zombie"), GetAISpeciesArray("team3", "zombie"), 0, 0);
	return ArrayCombine(zombies, ArrayCombine(humans, robots, 0, 0), 0, 0);
}

/*
	Name: function_602b28e9
	Namespace: namespace_687c8387
	Checksum: 0x4A108F88
	Offset: 0xD58
	Size: 0x5D
	Parameters: 1
	Flags: Private
*/
function private function_602b28e9(target)
{
	if(target cybercom::function_8fd8f5b1("cybercom_concussive"))
	{
		return 0;
	}
	if(isdefined(target.usingvehicle) && target.usingvehicle)
	{
		return 0;
	}
	return 1;
}

/*
	Name: is_jumping
	Namespace: namespace_687c8387
	Checksum: 0x9D5316A2
	Offset: 0xDC0
	Size: 0x2F
	Parameters: 0
	Flags: None
*/
function is_jumping()
{
	ground_ent = self GetGroundEnt();
	return !isdefined(ground_ent);
}

/*
	Name: function_ffd5ab29
	Namespace: namespace_687c8387
	Checksum: 0x1F696B0C
	Offset: 0xDF8
	Size: 0x779
	Parameters: 2
	Flags: None
*/
function function_ffd5ab29()
{
System.InvalidOperationException: Stack empty.
   at System.ThrowHelper.ThrowInvalidOperationException(ExceptionResource resource)
   at System.Collections.Generic.Stack`1.Pop()
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.⁫⁮⁭‮⁮⁪‬⁮‎‌‮⁪‏‍⁬‏⁪‮‎‏‪‌‎‍‎‪⁮​‬⁪‮⁭‏⁭‌‏‎‭⁪‫‮(String , Int32 , Boolean , Boolean )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‮​⁬⁭⁮‍‏‏‫‎‭‫⁮‪‮⁭‮⁬​‌⁯‮⁭‬​‪⁭‍‏‪⁪‎⁭⁭‌⁪‌‭​⁯‮(ScriptOp , ‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‭⁭⁫‭⁪‫‭‮‪⁬‏‎‪⁯⁪⁬‪‏‫⁯⁯‭​‫⁯‍‮⁫‪‏⁫⁪‎‏‫‫‪⁬‌⁯‮(‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ , Int32 )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‭⁭⁫‭⁪‫‭‮‪⁬‏‎‪⁯⁪⁬‪‏‫⁯⁯‭​‫⁯‍‮⁫‪‏⁫⁪‎‏‫‫‪⁬‌⁯‮(‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ , Int32 )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‭⁭⁫‭⁪‫‭‮‪⁬‏‎‪⁯⁪⁬‪‏‫⁯⁯‭​‫⁯‍‮⁫‪‏⁫⁪‎‏‫‫‪⁬‌⁯‮(‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ , Int32 )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‭⁭⁫‭⁪‫‭‮‪⁬‏‎‪⁯⁪⁬‪‏‫⁯⁯‭​‫⁯‍‮⁫‪‏⁫⁪‎‏‫‫‪⁬‌⁯‮(‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ , Int32 )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮..ctor(ScriptExport , ScriptBase )
}

/*
	Name: function_74fb2002
	Namespace: namespace_687c8387
	Checksum: 0xA886E96D
	Offset: 0x1580
	Size: 0x73
	Parameters: 3
	Flags: None
*/
function function_74fb2002(n_time, attacker, weapon)
{
	self endon("death");
	wait(n_time);
	self DoDamage(self.health + 1, self.origin, attacker, attacker, "none", "MOD_UNKNOWN", 0, weapon);
}

/*
	Name: function_f98dd1a9
	Namespace: namespace_687c8387
	Checksum: 0xB8D005F9
	Offset: 0x1600
	Size: 0x91
	Parameters: 2
	Flags: None
*/
function function_f98dd1a9(enemy, attacker)
{
	v_to_enemy = enemy.origin - attacker.origin;
	var_2e3e72d7 = AnglesToForward(attacker.angles);
	return VectorDot(var_2e3e72d7, VectorNormalize(v_to_enemy));
}

/*
	Name: function_78e146a3
	Namespace: namespace_687c8387
	Checksum: 0x4438C821
	Offset: 0x16A0
	Size: 0x39
	Parameters: 0
	Flags: None
*/
function function_78e146a3()
{
	self endon("death");
	self endon("hash_c76d622a");
	wait(1.75);
	self notify("bhtn_action_notify", "concussiveReact");
}

/*
	Name: function_9ba0286c
	Namespace: namespace_687c8387
	Checksum: 0x5821E62D
	Offset: 0x16E8
	Size: 0x39B
	Parameters: 3
	Flags: None
*/
function function_9ba0286c(damage, slot, weapon)
{
	if(!isPlayer(self))
	{
		level thread function_ffd5ab29(damage, self);
		return;
	}
	self endon("disconnect");
	self.cybercom.var_dd2f3b84 = 1;
	self clientfield::set_to_player("cybercom_disabled", 1);
	self.var_bdd60914 = self AllowSprint(0);
	if(isdefined(self.cybercom) && isdefined(self.cybercom.var_47063871))
	{
		var_47063871 = self.cybercom.var_47063871;
	}
	else
	{
		var_47063871 = GetWeapon("hero_gravityspikes_cybercom");
	}
	/#
		Assert(isdefined(var_47063871));
	#/
	self.cybercom.var_ebeecfd5 = 1;
	self GiveWeapon(var_47063871);
	self SetWeaponAmmoClip(var_47063871, 2);
	if(self function_1a9006bd("cybercom_concussive") == 2)
	{
		failsafe = GetTime() + 800;
		while(self is_jumping() == 0 && self HasWeapon(var_47063871) && GetTime() < failsafe)
		{
			wait(0.05);
		}
		while(self is_jumping() == 1 && self HasWeapon(var_47063871) && GetTime() < failsafe)
		{
			wait(0.05);
		}
	}
	else
	{
		wait(0.6);
	}
	self PlayRumbleOnEntity("grenade_rumble");
	Earthquake(0.6, 0.5, self.origin, 256);
	if(isdefined(var_47063871) && self HasWeapon(var_47063871))
	{
		self TakeWeapon(var_47063871);
	}
	self.cybercom.var_ebeecfd5 = undefined;
	level thread function_ffd5ab29(damage, self);
	wait(GetDvarInt("scr_concussive_wave_no_sprint", 1));
	self AllowSprint(self.var_bdd60914);
	self.var_bdd60914 = undefined;
	self.cybercom.var_dd2f3b84 = undefined;
	self clientfield::set_to_player("cybercom_disabled", 0);
	wait(0.1);
}

