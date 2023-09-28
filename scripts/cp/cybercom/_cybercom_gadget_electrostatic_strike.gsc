#using scripts\codescripts\struct;
#using scripts\cp\_challenges;
#using scripts\cp\_util;
#using scripts\cp\cybercom\_cybercom;
#using scripts\cp\cybercom\_cybercom_gadget;
#using scripts\cp\cybercom\_cybercom_gadget_system_overload;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\shared\abilities\_ability_player;
#using scripts\shared\abilities\_ability_util;
#using scripts\shared\ai_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\hud_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\statemachine_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace namespace_690a49a;

/*
	Name: init
	Namespace: namespace_690a49a
	Checksum: 0x99EC1590
	Offset: 0x6E0
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function init()
{
}

/*
	Name: main
	Namespace: namespace_690a49a
	Checksum: 0x2A49E
	Offset: 0x6F0
	Size: 0x35B
	Parameters: 0
	Flags: None
*/
function main()
{
	namespace_d00ec32::function_36b56038(2, 2);
	level._effect["es_effect_human"] = "electric/fx_ability_elec_strike_short_human";
	level._effect["es_effect_warlord"] = "electric/fx_ability_elec_strike_short_warlord";
	level._effect["es_effect_robot"] = "electric/fx_ability_elec_strike_short_robot";
	level._effect["es_effect_wasp"] = "electric/fx_ability_elec_strike_short_wasp";
	level._effect["es_effect_generic"] = "electric/fx_ability_elec_strike_generic";
	level._effect["es_contact"] = "electric/fx_ability_elec_strike_impact";
	level._effect["es_arc"] = "electric/fx_ability_elec_strike_trail";
	level.cybercom.electro_strike = spawnstruct();
	level.cybercom.electro_strike._is_flickering = &_is_flickering;
	level.cybercom.electro_strike._on_flicker = &_on_flicker;
	level.cybercom.electro_strike._on_give = &_on_give;
	level.cybercom.electro_strike._on_take = &_on_take;
	level.cybercom.electro_strike._on_connect = &_on_connect;
	level.cybercom.electro_strike._on = &_on;
	level.cybercom.electro_strike._off = &_off;
	level.cybercom.electro_strike.var_fdd3ea57 = GetWeapon("gadget_es_strike");
	level.cybercom.electro_strike.var_bf0de5fb = GetWeapon("gadget_es_strike");
	level.cybercom.electro_strike.var_97285cfa = GetWeapon("gadget_es_strike");
	level.cybercom.electro_strike.var_f492f9d5 = GetWeapon("emp_grenade");
	level.cybercom.electro_strike.var_9175970a = GetWeapon("emp_grenade");
	level.cybercom.electro_strike.var_2197a940 = GetWeapon("emp_grenade");
	callback::on_spawned(&on_player_spawned);
}

/*
	Name: on_player_spawned
	Namespace: namespace_690a49a
	Checksum: 0x99EC1590
	Offset: 0xA58
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function on_player_spawned()
{
}

/*
	Name: _is_flickering
	Namespace: namespace_690a49a
	Checksum: 0xE301FC70
	Offset: 0xA68
	Size: 0xB
	Parameters: 1
	Flags: None
*/
function _is_flickering(slot)
{
}

/*
	Name: _on_flicker
	Namespace: namespace_690a49a
	Checksum: 0xEF6EE24D
	Offset: 0xA80
	Size: 0x13
	Parameters: 2
	Flags: None
*/
function _on_flicker(slot, weapon)
{
}

/*
	Name: _on_give
	Namespace: namespace_690a49a
	Checksum: 0x85DCDED
	Offset: 0xAA0
	Size: 0x2B
	Parameters: 2
	Flags: None
*/
function _on_give(slot, weapon)
{
	self thread function_677ed44f(weapon);
}

/*
	Name: _on_take
	Namespace: namespace_690a49a
	Checksum: 0x2CE4A3B1
	Offset: 0xAD8
	Size: 0x21
	Parameters: 2
	Flags: None
*/
function _on_take(slot, weapon)
{
	self notify("hash_343d4580");
}

/*
	Name: _on_connect
	Namespace: namespace_690a49a
	Checksum: 0x99EC1590
	Offset: 0xB08
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function _on_connect()
{
}

/*
	Name: _on
	Namespace: namespace_690a49a
	Checksum: 0xD2A48EE4
	Offset: 0xB18
	Size: 0x13
	Parameters: 2
	Flags: None
*/
function _on(slot, weapon)
{
}

/*
	Name: _off
	Namespace: namespace_690a49a
	Checksum: 0x5329DF05
	Offset: 0xB38
	Size: 0x13
	Parameters: 2
	Flags: None
*/
function _off(slot, weapon)
{
}

/*
	Name: function_677ed44f
	Namespace: namespace_690a49a
	Checksum: 0xDAFF114A
	Offset: 0xB58
	Size: 0x2BF
	Parameters: 1
	Flags: None
*/
function function_677ed44f(weapon)
{
	self notify("hash_677ed44f");
	self endon("hash_677ed44f");
	self endon("hash_343d4580");
	self endon("disconnect");
	while(1)
	{
		level waittill("hash_63acb616", target, attacker, damage, weapon, var_f3edfe76);
		wait(0.05);
		if(isdefined(target))
		{
			if(target cybercom::function_8fd8f5b1("cybercom_es_strike"))
			{
				continue;
			}
			if(!isalive(target))
			{
				continue;
			}
			self notify(weapon.name + "_fired");
			level notify(weapon.name + "_fired");
			self thread challenges::function_96ed590f("cybercom_uses_control");
			status = self function_1a9006bd("cybercom_es_strike", 1);
			upgraded = status == 2;
			target notify("hash_f8c5dd60", weapon, attacker);
			target thread function_b4ff98a3(attacker, attacker, upgraded, var_f3edfe76);
			target thread function_dd1b6b0b(attacker, upgraded);
			if(isdefined(target.archetype) && target.archetype == "human")
			{
				target clientfield::set("arch_actor_char", 1);
				target thread function_71a4f1d5();
			}
			if(isPlayer(self))
			{
				itemIndex = GetItemIndexFromRef("cybercom_es_strike");
				if(isdefined(itemIndex))
				{
					self AddDStat("ItemStats", itemIndex, "stats", "used", "statValue", 1);
				}
			}
		}
	}
}

/*
	Name: function_71a4f1d5
	Namespace: namespace_690a49a
	Checksum: 0x643EC996
	Offset: 0xE20
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_71a4f1d5()
{
	self waittill("actor_corpse", corpse);
	corpse clientfield::set("arch_actor_fire_fx", 3);
}

/*
	Name: function_aae59b93
	Namespace: namespace_690a49a
	Checksum: 0x6C7724CB
	Offset: 0xE68
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_aae59b93(upgraded)
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
	self thread function_c48e06e3(1);
}

/*
	Name: function_c48e06e3
	Namespace: namespace_690a49a
	Checksum: 0x771BF0AB
	Offset: 0xEB8
	Size: 0x137
	Parameters: 1
	Flags: None
*/
function function_c48e06e3(var_16502c0b)
{
	if(isPlayer(self))
	{
		self endon("disconnect");
	}
	else
	{
		self endon("death");
	}
	self notify("hash_bc032f12");
	self endon("hash_bc032f12");
	while(1)
	{
		level waittill("hash_63acb616", target, attacker, damage, weapon, var_f3edfe76);
		wait(0.05);
		if(isdefined(target))
		{
			target notify("hash_f8c5dd60", weapon, attacker);
			upgraded = var_16502c0b == 2;
			target thread function_b4ff98a3(attacker, attacker, upgraded, var_f3edfe76);
			target thread function_dd1b6b0b(attacker, upgraded);
		}
	}
}

/*
	Name: function_4830484e
	Namespace: namespace_690a49a
	Checksum: 0x7B5A26A4
	Offset: 0xFF8
	Size: 0xBF
	Parameters: 1
	Flags: None
*/
function function_4830484e(attacker)
{
	if(!isdefined(self))
	{
		return 0;
	}
	if(self cybercom::function_8fd8f5b1("cybercom_es_strike"))
	{
		return 0;
	}
	if(!isalive(self))
	{
		return 0;
	}
	if(isdefined(self._ai_melee_opponent))
	{
		return 0;
	}
	if(!isdefined(self.archetype))
	{
		return 0;
	}
	if(isdefined(self.magic_bullet_shield) && self.magic_bullet_shield)
	{
		return 0;
	}
	if(isdefined(self._ai_melee_opponent))
	{
		return 0;
	}
	if(self.team == attacker.team)
	{
		return 0;
	}
	return 1;
}

/*
	Name: function_b4ff98a3
	Namespace: namespace_690a49a
	Checksum: 0x22A6A6EA
	Offset: 0x10C0
	Size: 0x793
	Parameters: 5
	Flags: None
*/
function function_b4ff98a3()
{
System.InvalidOperationException: Stack empty.
   at System.ThrowHelper.ThrowInvalidOperationException(ExceptionResource resource)
   at System.Collections.Generic.Stack`1.Pop()
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.⁫⁮⁭‮⁮⁪‬⁮‎‌‮⁪‏‍⁬‏⁪‮‎‏‪‌‎‍‎‪⁮​‬⁪‮⁭‏⁭‌‏‎‭⁪‫‮(String , Int32 , Boolean , Boolean )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‮​⁬⁭⁮‍‏‏‫‎‭‫⁮‪‮⁭‮⁬​‌⁯‮⁭‬​‪⁭‍‏‪⁪‎⁭⁭‌⁪‌‭​⁯‮(ScriptOp , ‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‭⁭⁫‭⁪‫‭‮‪⁬‏‎‪⁯⁪⁬‪‏‫⁯⁯‭​‫⁯‍‮⁫‪‏⁫⁪‎‏‫‫‪⁬‌⁯‮(‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ , Int32 )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‭⁭⁫‭⁪‫‭‮‪⁬‏‎‪⁯⁪⁬‪‏‫⁯⁯‭​‫⁯‍‮⁫‪‏⁫⁪‎‏‫‫‪⁬‌⁯‮(‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ , Int32 )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮..ctor(ScriptExport , ScriptBase )
}

/*
	Name: function_dd1b6b0b
	Namespace: namespace_690a49a
	Checksum: 0x118FFFA7
	Offset: 0x1860
	Size: 0x3B1
	Parameters: 2
	Flags: None
*/
function function_dd1b6b0b(player, upgraded)
{
	self endon("death");
	if(!upgraded)
	{
		return;
	}
	wait(0.05);
	var_5c31f5fb = GetDvarInt("scr_es_arc_range", 72);
	if(upgraded)
	{
		var_5c31f5fb = GetDvarInt("scr_es_upgraded_arc_range", 128);
	}
	distSq = var_5c31f5fb * var_5c31f5fb;
	enemies = [];
	var_594dffdc = ArrayCombine(GetAITeamArray("axis"), GetAITeamArray("team3"), 0, 0);
	var_7a650e64 = util::get_array_of_closest(self.origin, var_594dffdc);
	foreach(enemy in var_7a650e64)
	{
		if(!isdefined(enemy))
		{
			continue;
		}
		if(enemy == self)
		{
			continue;
		}
		if(isdefined(enemy.is_disabled) && enemy.is_disabled)
		{
			continue;
		}
		if(isdefined(enemy.missingLegs) && enemy.missingLegs || (isdefined(enemy.isCrawler) && enemy.isCrawler))
		{
			continue;
		}
		if(!enemy function_4830484e(player))
		{
			continue;
		}
		if(DistanceSquared(self.origin, enemy.origin) > distSq)
		{
			continue;
		}
		if(!BulletTracePassed(self.origin, enemy.origin + VectorScale((0, 0, 1), 50), 0, undefined))
		{
			continue;
		}
		enemies[enemies.size] = enemy;
	}
	i = 0;
	foreach(guy in enemies)
	{
		player thread challenges::function_96ed590f("cybercom_uses_esdamage");
		self thread function_12d22808(guy, player, upgraded);
		i++;
		if(i >= GetDvarInt("scr_es_max_arcs", 4))
		{
			break;
		}
	}
}

/*
	Name: function_12d22808
	Namespace: namespace_690a49a
	Checksum: 0x4C4B954B
	Offset: 0x1C20
	Size: 0x1A3
	Parameters: 3
	Flags: Private
*/
function private function_12d22808(target, player, upgraded)
{
	if(!isdefined(self) || !isdefined(target))
	{
		return;
	}
	origin = self.origin + VectorScale((0, 0, 1), 40);
	target_origin = target.origin + VectorScale((0, 0, 1), 40);
	fxOrg = spawn("script_model", origin);
	fxOrg SetModel("tag_origin");
	FX = PlayFXOnTag(level._effect["es_arc"], fxOrg, "tag_origin");
	fxOrg playsound("gdt_electro_bounce");
	fxOrg moveto(target_origin, 0.25);
	fxOrg util::waittill_any_timeout(1, "movedone");
	fxOrg delete();
	target thread function_b4ff98a3(player, self, upgraded, undefined, 1);
}

