#using scripts\codescripts\struct;
#using scripts\cp\_accolades;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;

#namespace namespace_61c634f2;

/*
	Name: accolades_init
	Namespace: namespace_61c634f2
	Checksum: 0x8A6B16B6
	Offset: 0x428
	Size: 0x223
	Parameters: 0
	Flags: None
*/
function accolades_init()
{
	namespace_fe079222::register("MISSION_PROLOGUE_CHALLENGE5", "interrogation_room_challenge");
	namespace_fe079222::register("MISSION_PROLOGUE_CHALLENGE6", "kill_4_guys_challenge");
	namespace_fe079222::register("MISSION_PROLOGUE_CHALLENGE7", "crush_enemy_challenge");
	namespace_fe079222::register("MISSION_PROLOGUE_CHALLENGE8", "wildfire_challenge");
	namespace_fe079222::register("MISSION_PROLOGUE_CHALLENGE9", "robot_explode_challenge");
	namespace_fe079222::register("MISSION_PROLOGUE_CHALLENGE10", "vtol_challenge");
	namespace_fe079222::register("MISSION_PROLOGUE_CHALLENGE11", "truck_challenge");
	namespace_fe079222::register("MISSION_PROLOGUE_CHALLENGE12", "pistol_challenge");
	namespace_fe079222::register("MISSION_PROLOGUE_CHALLENGE13", "dark_battle_melee_challenge");
	namespace_fe079222::register("MISSION_PROLOGUE_CHALLENGE14", "dark_battle_damage_challenge");
	namespace_fe079222::register("MISSION_PROLOGUE_CHALLENGE15", "firefly_killer_challenge");
	namespace_fe079222::register("MISSION_PROLOGUE_CHALLENGE16", "bridge_truck_challenge");
	namespace_fe079222::register("MISSION_PROLOGUE_CHALLENGE17", "vtol_grenade_challenge");
	callback::on_ai_killed(&function_ba997bef);
	callback::on_spawned(&function_285f06dc);
	callback::on_ai_killed(&function_ff0cfb44);
	callback::on_ai_killed(&function_f85f1ba7);
}

/*
	Name: function_c58a9e36
	Namespace: namespace_61c634f2
	Checksum: 0x5A05F601
	Offset: 0x658
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_c58a9e36(params)
{
	if(self.var_c54411a6 === 1 && isdefined(params.eAttacker) && isPlayer(params.eAttacker))
	{
		level namespace_fe079222::increment("MISSION_PROLOGUE_CHALLENGE5");
	}
}

/*
	Name: function_cbaf37cd
	Namespace: namespace_61c634f2
	Checksum: 0x86BF6AA3
	Offset: 0x6D0
	Size: 0xB3
	Parameters: 1
	Flags: None
*/
function function_cbaf37cd(params)
{
	if(self.var_37b94263 === 1 && isdefined(params.eAttacker) && isPlayer(params.eAttacker))
	{
		e_volume = GetEnt("t_lift_interior", "targetname");
		if(self istouching(e_volume))
		{
			level namespace_fe079222::increment("MISSION_PROLOGUE_CHALLENGE6");
		}
	}
}

/*
	Name: function_d248b92b
	Namespace: namespace_61c634f2
	Checksum: 0xD673A117
	Offset: 0x790
	Size: 0x1B
	Parameters: 1
	Flags: None
*/
function function_d248b92b(e_player)
{
	e_player notify("hash_2fa0b8e9");
}

/*
	Name: function_ba997bef
	Namespace: namespace_61c634f2
	Checksum: 0xF64F1B88
	Offset: 0x7B8
	Size: 0x10F
	Parameters: 1
	Flags: None
*/
function function_ba997bef(params)
{
	if(params.sMeansOfDeath == "MOD_BURNED" && isPlayer(params.eAttacker) && params.eAttacker.var_b27a2766 < 9)
	{
		params.eAttacker.var_b27a2766++;
		params.eAttacker.var_323af011++;
		if(params.eAttacker.var_b27a2766 == 1)
		{
			params.eAttacker thread function_f4e80c1e();
		}
		else if(params.eAttacker.var_b27a2766 >= 9)
		{
			params.eAttacker notify("hash_ba63aab6");
		}
	}
}

/*
	Name: function_f4e80c1e
	Namespace: namespace_61c634f2
	Checksum: 0x5FCF9CAA
	Offset: 0x8D0
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_f4e80c1e()
{
	self endon("hash_ba63aab6");
	wait(7);
	if(self.var_b27a2766 < 9)
	{
		if(self.var_b27a2766 > self.var_871eaf7b)
		{
			self.var_871eaf7b = self.var_b27a2766;
		}
		self.var_b27a2766 = 0;
	}
}

/*
	Name: function_285f06dc
	Namespace: namespace_61c634f2
	Checksum: 0xAE0AE469
	Offset: 0x930
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_285f06dc()
{
	self endon("disconnect");
	self endon("death");
	self.var_b27a2766 = 0;
	self.var_871eaf7b = 0;
	self.var_323af011 = 0;
	self waittill("hash_ba63aab6");
	self namespace_fe079222::increment("MISSION_PROLOGUE_CHALLENGE8");
}

/*
	Name: function_ff0cfb44
	Namespace: namespace_61c634f2
	Checksum: 0xC6AB1AA8
	Offset: 0x9A0
	Size: 0x177
	Parameters: 1
	Flags: None
*/
function function_ff0cfb44(params)
{
	if(self.archetype === "robot")
	{
		if(isPlayer(params.eAttacker) && !isdefined(params.eAttacker.var_433bc73a))
		{
			var_c9311d67 = function_5315f085(params.sMeansOfDeath);
			if(var_c9311d67)
			{
				if(params.eAttacker.var_743ae5cb !== params.eInflictor)
				{
					params.eAttacker.var_743ae5cb = params.eInflictor;
					params.eAttacker.var_85ebf6c3 = 1;
				}
				else
				{
					params.eAttacker.var_85ebf6c3++;
					if(params.eAttacker.var_85ebf6c3 >= 5)
					{
						params.eAttacker namespace_fe079222::increment("MISSION_PROLOGUE_CHALLENGE9");
						params.eAttacker.var_433bc73a = 1;
					}
				}
			}
		}
	}
}

/*
	Name: function_5315f085
	Namespace: namespace_61c634f2
	Checksum: 0x525A098D
	Offset: 0xB20
	Size: 0x67
	Parameters: 1
	Flags: None
*/
function function_5315f085(str_mod)
{
	return str_mod === "MOD_EXPLOSIVE" || str_mod === "MOD_EXPLOSIVE_SPLASH" || str_mod === "MOD_GRENADE" || str_mod === "MOD_GRENADE_SPLASH" || str_mod == "MOD_BURNED" || str_mod == "MOD_ELECTROCUTED";
}

/*
	Name: function_51213eb7
	Namespace: namespace_61c634f2
	Checksum: 0xCE2A1270
	Offset: 0xB90
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_51213eb7()
{
	level namespace_fe079222::increment("MISSION_PROLOGUE_CHALLENGE10");
}

/*
	Name: function_2b1ec44e
	Namespace: namespace_61c634f2
	Checksum: 0xA49BB99
	Offset: 0xBC0
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_2b1ec44e()
{
	level namespace_fe079222::increment("MISSION_PROLOGUE_CHALLENGE11");
}

/*
	Name: function_51c49e5
	Namespace: namespace_61c634f2
	Checksum: 0xFF9A3191
	Offset: 0xBF0
	Size: 0x1B
	Parameters: 1
	Flags: None
*/
function function_51c49e5(e_player)
{
	e_player notify("hash_21c12b92");
}

/*
	Name: function_df19cf7c
	Namespace: namespace_61c634f2
	Checksum: 0x5C430AC9
	Offset: 0xC18
	Size: 0x1B
	Parameters: 1
	Flags: None
*/
function function_df19cf7c(e_player)
{
	e_player notify("hash_b5882829");
}

/*
	Name: function_b9175513
	Namespace: namespace_61c634f2
	Checksum: 0xA0F6A335
	Offset: 0xC40
	Size: 0x1B
	Parameters: 1
	Flags: None
*/
function function_b9175513(e_player)
{
	e_player notify("hash_c17355fc");
}

/*
	Name: function_f85f1ba7
	Namespace: namespace_61c634f2
	Checksum: 0x30F94050
	Offset: 0xC68
	Size: 0xB3
	Parameters: 1
	Flags: None
*/
function function_f85f1ba7(params)
{
	if(isdefined(params.eAttacker) && isPlayer(params.eAttacker))
	{
		if(self clientfield::get("firefly_state") == 9 || self clientfield::get("firefly_state") == 4)
		{
			params.eAttacker namespace_fe079222::increment("MISSION_PROLOGUE_CHALLENGE15");
		}
	}
}

/*
	Name: function_3d89871d
	Namespace: namespace_61c634f2
	Checksum: 0xE2C5ABB1
	Offset: 0xD28
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_3d89871d(params)
{
	if(isdefined(params.eAttacker) && isPlayer(params.eAttacker) && self.var_52c5472d === 1)
	{
		level namespace_fe079222::increment("MISSION_PROLOGUE_CHALLENGE16");
	}
}

/*
	Name: function_470fe5d8
	Namespace: namespace_61c634f2
	Checksum: 0x1B354161
	Offset: 0xDA0
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_470fe5d8(e_player)
{
	e_player namespace_fe079222::increment("MISSION_PROLOGUE_CHALLENGE17");
}

