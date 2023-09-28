#using scripts\codescripts\struct;
#using scripts\cp\cybercom\_cybercom;
#using scripts\cp\cybercom\_cybercom_dev;
#using scripts\cp\cybercom\_cybercom_gadget_system_overload;
#using scripts\cp\cybercom\_cybercom_tactical_rig;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\hud_util_shared;
#using scripts\shared\math_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace namespace_d1c4e441;

/*
	Name: init
	Namespace: namespace_d1c4e441
	Checksum: 0x99EC1590
	Offset: 0x5C0
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function init()
{
}

/*
	Name: main
	Namespace: namespace_d1c4e441
	Checksum: 0x27AD3E78
	Offset: 0x5D0
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function main()
{
	callback::on_connect(&on_player_connect);
	callback::on_spawned(&on_player_spawned);
	namespace_726a1ef0::function_8cb15f87("cybercom_proximitydeterrent", 2);
	namespace_726a1ef0::function_8b4ef058("cybercom_proximitydeterrent", &function_2c2e5090, &function_fba89486);
	namespace_726a1ef0::function_37a33686("cybercom_proximitydeterrent", &function_be62f8b4, &function_947ca4ed);
}

/*
	Name: on_player_connect
	Namespace: namespace_d1c4e441
	Checksum: 0x99EC1590
	Offset: 0x6B0
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function on_player_connect()
{
}

/*
	Name: on_player_spawned
	Namespace: namespace_d1c4e441
	Checksum: 0x99EC1590
	Offset: 0x6C0
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function on_player_spawned()
{
}

/*
	Name: function_2c2e5090
	Namespace: namespace_d1c4e441
	Checksum: 0x2D815F59
	Offset: 0x6D0
	Size: 0x1DB
	Parameters: 1
	Flags: None
*/
function function_2c2e5090(type)
{
	self.cybercom.var_a9774972 = GetWeapon("gadget_proximity_det");
	self.cybercom.var_f4b9137e = GetWeapon("gadget_es_strike");
	if(!isdefined(self.cybercom.var_d7d9f704))
	{
		self.cybercom.var_d7d9f704 = [];
		self.cybercom.var_d7d9f704[0] = spawnstruct();
		self.cybercom.var_d7d9f704[1] = spawnstruct();
		self.cybercom.var_d7d9f704[2] = spawnstruct();
		self.cybercom.var_d7d9f704[3] = spawnstruct();
		self.cybercom.var_d7d9f704[0].time = 0;
		self.cybercom.var_d7d9f704[1].time = 0;
		self.cybercom.var_d7d9f704[2].time = 0;
		self.cybercom.var_d7d9f704[3].time = 0;
	}
	self thread function_f5590749();
	self thread function_25cb4ffd(type);
}

/*
	Name: function_fba89486
	Namespace: namespace_d1c4e441
	Checksum: 0xEB9DA758
	Offset: 0x8B8
	Size: 0x25
	Parameters: 1
	Flags: None
*/
function function_fba89486(type)
{
	self.cybercom.var_a9774972 = undefined;
	self notify("hash_fba89486");
}

/*
	Name: function_25cb4ffd
	Namespace: namespace_d1c4e441
	Checksum: 0xFDC5E041
	Offset: 0x8E8
	Size: 0x137
	Parameters: 1
	Flags: None
*/
function function_25cb4ffd(type)
{
	self notify("hash_25cb4ffd");
	self endon("hash_25cb4ffd");
	self endon("disconnect");
	self endon("take_ability_" + type);
	while(1)
	{
		self waittill("damage", n_damage, e_attacker, var_a3382de1, v_point, str_means_of_death, var_c4fe462, var_e64d69f9, var_c04aef90, w_weapon);
		if(IsSubStr(str_means_of_death, "MOD_MELEE") && isdefined(e_attacker))
		{
			self.cybercom.var_be57f366 = e_attacker;
			self namespace_726a1ef0::function_de82b8b4(type);
			self thread function_ae8e24a7(e_attacker);
		}
	}
}

/*
	Name: function_f5590749
	Namespace: namespace_d1c4e441
	Checksum: 0x100BCF
	Offset: 0xA28
	Size: 0x267
	Parameters: 0
	Flags: None
*/
function function_f5590749()
{
	self endon("hash_fba89486");
	while(1)
	{
		curtime = GetTime();
		var_f9459f98 = undefined;
		var_2f0e78d0 = 0;
		for(zone = 0; zone < 4; zone++)
		{
			if(self.cybercom.var_d7d9f704[zone].time > curtime)
			{
				attacker = self.cybercom.var_d7d9f704[zone].attacker;
				if(isdefined(attacker))
				{
					self.cybercom.var_d7d9f704[zone].yaw = self cybercom::GetYawToSpot(attacker.origin);
				}
				if(self.cybercom.var_d7d9f704[zone].time > var_2f0e78d0)
				{
					var_2f0e78d0 = self.cybercom.var_d7d9f704[zone].time;
					var_f9459f98 = zone;
				}
				continue;
			}
			if(self.cybercom.var_d7d9f704[zone].time != 0)
			{
				self.cybercom.var_d7d9f704[zone].time = 0;
				self.cybercom.var_d7d9f704[zone].attacker = undefined;
				self.cybercom.var_d7d9f704[zone].yaw = undefined;
			}
		}
		if(isdefined(var_f9459f98))
		{
			self clientfield::set_player_uimodel("playerAbilities.proximityIndicatorIntensity", 1);
			self clientfield::set_player_uimodel("playerAbilities.proximityIndicatorDirection", var_f9459f98);
		}
		else
		{
			self clientfield::set_player_uimodel("playerAbilities.proximityIndicatorIntensity", 0);
		}
		wait(0.05);
	}
}

/*
	Name: function_ae8e24a7
	Namespace: namespace_d1c4e441
	Checksum: 0x8BAC3FA0
	Offset: 0xC98
	Size: 0x16B
	Parameters: 1
	Flags: None
*/
function function_ae8e24a7(attacker)
{
	yaw = self cybercom::GetYawToSpot(attacker.origin);
	if(yaw > -45 && yaw <= 45)
	{
		zone = 0;
	}
	else if(yaw > 45 && yaw <= 135)
	{
		zone = 3;
	}
	else if(yaw > 135 && yaw <= 180 || (yaw >= -180 && yaw < -135))
	{
		zone = 2;
	}
	else
	{
		zone = 1;
	}
	self.cybercom.var_d7d9f704[zone].time = GetTime() + GetDvarInt("scr_proximity_indicator_durationMSEC", 1500);
	self.cybercom.var_d7d9f704[zone].attacker = attacker;
	self.cybercom.var_d7d9f704[zone].yaw = yaw;
}

/*
	Name: function_be62f8b4
	Namespace: namespace_d1c4e441
	Checksum: 0x4C837FBB
	Offset: 0xE10
	Size: 0x5B
	Parameters: 1
	Flags: None
*/
function function_be62f8b4(type)
{
	if(isdefined(self.cybercom.var_be57f366))
	{
		self.cybercom.var_be57f366 thread function_e24410ed(type, self);
	}
	self namespace_726a1ef0::function_e7e75042(type);
}

/*
	Name: function_947ca4ed
	Namespace: namespace_d1c4e441
	Checksum: 0xC7D536E8
	Offset: 0xE78
	Size: 0xB
	Parameters: 1
	Flags: None
*/
function function_947ca4ed(type)
{
}

/*
	Name: function_e24410ed
	Namespace: namespace_d1c4e441
	Checksum: 0xF4BAB42F
	Offset: 0xE90
	Size: 0xCB
	Parameters: 2
	Flags: None
*/
function function_e24410ed(type, player)
{
	if(!isdefined(self))
	{
		return;
	}
	if(isdefined(player.cybercom.var_3fd69aad) && player.cybercom.var_3fd69aad)
	{
		return;
	}
	if(isdefined(self.noCybercom) && self.noCybercom)
	{
		return;
	}
	player playsound("gdt_cybercore_rig_prox_activate");
	level thread function_55b9d032(player, self, player function_76f34311(type) == 2);
}

/*
	Name: function_55b9d032
	Namespace: namespace_d1c4e441
	Checksum: 0x2FBD5D4E
	Offset: 0xF68
	Size: 0x423
	Parameters: 3
	Flags: Private
*/
function private function_55b9d032(player, attacker, upgraded)
{
	attacker endon("death");
	if(!isdefined(attacker.archetype))
	{
		return;
	}
	switch(attacker.archetype)
	{
		case "human":
		case "human_riotshield":
		case "zombie":
		{
			var_36a3e6ad = "J_Wrist_LE";
			FX = level._effect["es_effect_human"];
			tag = "j_spine4";
			damage = attacker.health;
			weapon = player.cybercom.var_a9774972;
			if(isdefined(attacker.voicePrefix) && isdefined(attacker.bcVoiceNumber))
			{
				attacker thread battlechatter::function_81d8fcf2(attacker.voicePrefix + attacker.bcVoiceNumber + "_exert_electrocution", 1);
			}
			break;
		}
		case "robot":
		{
			var_36a3e6ad = "J_Wrist_LE";
			FX = level._effect["es_effect_robot"];
			attacker playsound("fly_bot_disable");
			tag = "j_spine4";
			damage = attacker.health;
			weapon = player.cybercom.var_f4b9137e;
			break;
		}
		case "warlord":
		{
			var_36a3e6ad = "J_Wrist_LE";
			FX = level._effect["es_effect_warlord"];
			tag = "j_spine4";
			damage = GetDvarInt("scr_proximity_stun_damage_to_warlord", 60);
			weapon = player.cybercom.var_a9774972;
			break;
		}
		case "direwolf":
		{
			var_36a3e6ad = "J_Wrist_LE";
			FX = level._effect["es_effect_generic"];
			tag = "tag_origin";
			damage = attacker.health;
			weapon = player.cybercom.var_a9774972;
			break;
		}
		case default:
		{
			var_36a3e6ad = "J_Wrist_LE";
			tag = "tag_origin";
			FX = level._effect["es_effect_generic"];
			damage = attacker.health;
			weapon = player.cybercom.var_a9774972;
			break;
		}
	}
	if(isdefined(upgraded) && upgraded)
	{
		level thread function_c0ba5acc(player, attacker);
	}
	PlayFXOnTag(level._effect["es_contact"], player, var_36a3e6ad);
	PlayFXOnTag(FX, attacker, tag);
	attacker playsound("gdt_cybercore_rig_prox_imp");
	attacker DoDamage(damage, player.origin, player, player, "none", "MOD_UNKNOWN", 0, weapon, -1, 1);
}

/*
	Name: function_c0ba5acc
	Namespace: namespace_d1c4e441
	Checksum: 0x898F8F73
	Offset: 0x1398
	Size: 0x2E1
	Parameters: 3
	Flags: None
*/
function function_c0ba5acc(player, attacker, radius)
{
	enemies = ArrayCombine(GetAITeamArray("axis"), GetAITeamArray("team3"), 0, 0);
	if(!isdefined(radius))
	{
		var_119472f5 = GetDvarInt("scr_proximity_stun_discharge_radius", 144) * GetDvarInt("scr_proximity_stun_discharge_radius", 144);
	}
	else
	{
		var_119472f5 = radius * radius;
	}
	var_4c0d9ab5 = [];
	foreach(guy in enemies)
	{
		if(isdefined(attacker) && guy == attacker)
		{
			continue;
		}
		if(isVehicle(guy))
		{
			continue;
		}
		if(!isdefined(guy.archetype))
		{
			continue;
		}
		if(isdefined(guy.noCybercom) && guy.noCybercom)
		{
			continue;
		}
		if(guy.takedamage == 0)
		{
			continue;
		}
		distSq = DistanceSquared(player.origin, guy.origin);
		if(distSq > var_119472f5)
		{
			continue;
		}
		var_4c0d9ab5[var_4c0d9ab5.size] = guy;
		if(var_4c0d9ab5.size >= GetDvarInt("scr_proximity_stun_max_secondary_hits", 6))
		{
			break;
		}
	}
	foreach(guy in var_4c0d9ab5)
	{
		level thread function_a38f70a1(player, guy);
	}
}

/*
	Name: function_c8e11a8b
	Namespace: namespace_d1c4e441
	Checksum: 0x52C55769
	Offset: 0x1688
	Size: 0x43
	Parameters: 2
	Flags: Private
*/
function private function_c8e11a8b(ent, note)
{
	ent endon("death");
	self waittill(note);
	ent delete();
}

/*
	Name: function_a38f70a1
	Namespace: namespace_d1c4e441
	Checksum: 0xC8657186
	Offset: 0x16D8
	Size: 0x4C3
	Parameters: 2
	Flags: Private
*/
function private function_a38f70a1(player, target)
{
	target endon("death");
	player endon("disconnect");
	orb = spawn("script_model", player.origin + VectorScale((0, 0, 1), 45));
	orb SetModel("tag_origin");
	PlayFXOnTag(level._effect["es_arc"], orb, "tag_origin");
	orb endon("death");
	target thread function_c8e11a8b(orb, "death");
	player thread function_c8e11a8b(orb, "disconnect");
	orb moveto(target.origin + VectorScale((0, 0, 1), 45), 0.3);
	orb waittill("movedone");
	target playsound("gdt_cybercore_rig_prox_imp");
	damage = GetDvarInt("scr_proximity_stun_damage", 20);
	switch(target.archetype)
	{
		case "human":
		case "human_riotshield":
		case "zombie":
		{
			FX = level._effect["es_effect_human"];
			tag = "j_spine4";
			target DoDamage(damage, player.origin, player, player, "none", "MOD_UNKNOWN", 0, player.cybercom.var_a9774972, -1, 1);
			target notify("bhtn_action_notify", "electrocute");
			break;
		}
		case "robot":
		{
			FX = level._effect["es_effect_robot"];
			tag = "j_spine4";
			target thread namespace_528b4613::system_overload(player);
			break;
		}
		case "warlord":
		{
			FX = level._effect["es_effect_warlord"];
			tag = "j_spine4";
			target DoDamage(damage, player.origin, player, player, "none", "MOD_UNKNOWN", 0, player.cybercom.var_a9774972, -1, 1);
			break;
		}
		case "direwolf":
		{
			FX = level._effect["es_effect_generic"];
			tag = "tag_origin";
			target DoDamage(damage, player.origin, player, player, "none", "MOD_UNKNOWN", 0, player.cybercom.var_a9774972, -1, 1);
			break;
		}
		case default:
		{
			FX = level._effect["es_effect_generic"];
			tag = "tag_body";
			target DoDamage(damage, player.origin, player, player, "none", "MOD_GRENADE_SPLASH", 0, GetWeapon("emp_grenade"), -1, 1);
			break;
		}
	}
	playFX(level._effect["es_contact"], orb.origin);
	PlayFXOnTag(FX, target, tag);
	orb delete();
}

/*
	Name: function_327bda1e
	Namespace: namespace_d1c4e441
	Checksum: 0xE024942
	Offset: 0x1BA8
	Size: 0xEB
	Parameters: 2
	Flags: None
*/
function function_327bda1e(iDamage, damageMod)
{
	if(!IsSubStr(damageMod, "_MELEE"))
	{
		return iDamage;
	}
	status = self function_76f34311("cybercom_proximitydeterrent");
	if(status == 2)
	{
	}
	else
	{
	}
	reducer = GetDvarFloat("scr_proximity_damage_reducer", 0.2);
	var_bc6c098a = Int(iDamage * reducer);
	return var_bc6c098a;
}

