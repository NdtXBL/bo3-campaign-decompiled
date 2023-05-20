#using scripts\codescripts\struct;
#using scripts\cp\_accolades;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;

#namespace namespace_61c634f2;

/*
	Name: function_4d39a2af
	Namespace: namespace_61c634f2
	Checksum: 0x8A6B16B6
	Offset: 0x428
	Size: 0x223
	Parameters: 0
	Flags: None
*/
function function_4d39a2af()
{
	namespace_fe079222::function_50f16166("MISSION_PROLOGUE_CHALLENGE5", "interrogation_room_challenge");
	namespace_fe079222::function_50f16166("MISSION_PROLOGUE_CHALLENGE6", "kill_4_guys_challenge");
	namespace_fe079222::function_50f16166("MISSION_PROLOGUE_CHALLENGE7", "crush_enemy_challenge");
	namespace_fe079222::function_50f16166("MISSION_PROLOGUE_CHALLENGE8", "wildfire_challenge");
	namespace_fe079222::function_50f16166("MISSION_PROLOGUE_CHALLENGE9", "robot_explode_challenge");
	namespace_fe079222::function_50f16166("MISSION_PROLOGUE_CHALLENGE10", "vtol_challenge");
	namespace_fe079222::function_50f16166("MISSION_PROLOGUE_CHALLENGE11", "truck_challenge");
	namespace_fe079222::function_50f16166("MISSION_PROLOGUE_CHALLENGE12", "pistol_challenge");
	namespace_fe079222::function_50f16166("MISSION_PROLOGUE_CHALLENGE13", "dark_battle_melee_challenge");
	namespace_fe079222::function_50f16166("MISSION_PROLOGUE_CHALLENGE14", "dark_battle_damage_challenge");
	namespace_fe079222::function_50f16166("MISSION_PROLOGUE_CHALLENGE15", "firefly_killer_challenge");
	namespace_fe079222::function_50f16166("MISSION_PROLOGUE_CHALLENGE16", "bridge_truck_challenge");
	namespace_fe079222::function_50f16166("MISSION_PROLOGUE_CHALLENGE17", "vtol_grenade_challenge");
	namespace_dabbe128::function_de1a6d25(&function_ba997bef);
	namespace_dabbe128::function_356a4ee1(&function_285f06dc);
	namespace_dabbe128::function_de1a6d25(&function_ff0cfb44);
	namespace_dabbe128::function_de1a6d25(&function_f85f1ba7);
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
function function_c58a9e36(var_a8563e07)
{
	if(self.var_c54411a6 === 1 && isdefined(var_a8563e07.var_3a212fd7) && function_65f192a6(var_a8563e07.var_3a212fd7))
	{
		level namespace_fe079222::function_331efedc("MISSION_PROLOGUE_CHALLENGE5");
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
function function_cbaf37cd(var_a8563e07)
{
	if(self.var_37b94263 === 1 && isdefined(var_a8563e07.var_3a212fd7) && function_65f192a6(var_a8563e07.var_3a212fd7))
	{
		var_67825717 = function_6ada35ba("t_lift_interior", "targetname");
		if(self function_32fa5072(var_67825717))
		{
			level namespace_fe079222::function_331efedc("MISSION_PROLOGUE_CHALLENGE6");
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
function function_d248b92b(var_6bfe1586)
{
	var_6bfe1586 notify("hash_2fa0b8e9");
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
function function_ba997bef(var_a8563e07)
{
	if(var_a8563e07.var_ba36487d == "MOD_BURNED" && function_65f192a6(var_a8563e07.var_3a212fd7) && var_a8563e07.var_3a212fd7.var_b27a2766 < 9)
	{
		var_a8563e07.var_3a212fd7.var_b27a2766++;
		var_a8563e07.var_3a212fd7.var_323af011++;
		if(var_a8563e07.var_3a212fd7.var_b27a2766 == 1)
		{
			var_a8563e07.var_3a212fd7 thread function_f4e80c1e();
		}
		else if(var_a8563e07.var_3a212fd7.var_b27a2766 >= 9)
		{
			var_a8563e07.var_3a212fd7 notify("hash_ba63aab6");
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
	self endon("hash_643a7daf");
	self endon("hash_128f8789");
	self.var_b27a2766 = 0;
	self.var_871eaf7b = 0;
	self.var_323af011 = 0;
	self waittill("hash_ba63aab6");
	self namespace_fe079222::function_331efedc("MISSION_PROLOGUE_CHALLENGE8");
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
function function_ff0cfb44(var_a8563e07)
{
	if(self.var_8fc0e50e === "robot")
	{
		if(function_65f192a6(var_a8563e07.var_3a212fd7) && !isdefined(var_a8563e07.var_3a212fd7.var_433bc73a))
		{
			var_c9311d67 = function_5315f085(var_a8563e07.var_ba36487d);
			if(var_c9311d67)
			{
				if(var_a8563e07.var_3a212fd7.var_743ae5cb !== var_a8563e07.var_51e6a548)
				{
					var_a8563e07.var_3a212fd7.var_743ae5cb = var_a8563e07.var_51e6a548;
					var_a8563e07.var_3a212fd7.var_85ebf6c3 = 1;
				}
				else
				{
					var_a8563e07.var_3a212fd7.var_85ebf6c3++;
					if(var_a8563e07.var_3a212fd7.var_85ebf6c3 >= 5)
					{
						var_a8563e07.var_3a212fd7 namespace_fe079222::function_331efedc("MISSION_PROLOGUE_CHALLENGE9");
						var_a8563e07.var_3a212fd7.var_433bc73a = 1;
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
function function_5315f085(var_36feaabb)
{
	return var_36feaabb === "MOD_EXPLOSIVE" || var_36feaabb === "MOD_EXPLOSIVE_SPLASH" || var_36feaabb === "MOD_GRENADE" || var_36feaabb === "MOD_GRENADE_SPLASH" || var_36feaabb == "MOD_BURNED" || var_36feaabb == "MOD_ELECTROCUTED";
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
	level namespace_fe079222::function_331efedc("MISSION_PROLOGUE_CHALLENGE10");
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
	level namespace_fe079222::function_331efedc("MISSION_PROLOGUE_CHALLENGE11");
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
function function_51c49e5(var_6bfe1586)
{
	var_6bfe1586 notify("hash_21c12b92");
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
function function_df19cf7c(var_6bfe1586)
{
	var_6bfe1586 notify("hash_b5882829");
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
function function_b9175513(var_6bfe1586)
{
	var_6bfe1586 notify("hash_c17355fc");
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
function function_f85f1ba7(var_a8563e07)
{
	if(isdefined(var_a8563e07.var_3a212fd7) && function_65f192a6(var_a8563e07.var_3a212fd7))
	{
		if(self namespace_71e9cb84::function_7922262b("firefly_state") == 9 || self namespace_71e9cb84::function_7922262b("firefly_state") == 4)
		{
			var_a8563e07.var_3a212fd7 namespace_fe079222::function_331efedc("MISSION_PROLOGUE_CHALLENGE15");
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
function function_3d89871d(var_a8563e07)
{
	if(isdefined(var_a8563e07.var_3a212fd7) && function_65f192a6(var_a8563e07.var_3a212fd7) && self.var_52c5472d === 1)
	{
		level namespace_fe079222::function_331efedc("MISSION_PROLOGUE_CHALLENGE16");
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
function function_470fe5d8(var_6bfe1586)
{
	var_6bfe1586 namespace_fe079222::function_331efedc("MISSION_PROLOGUE_CHALLENGE17");
}

