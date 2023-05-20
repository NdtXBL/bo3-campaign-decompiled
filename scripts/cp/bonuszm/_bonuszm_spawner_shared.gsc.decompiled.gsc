#using scripts\codescripts\struct;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\gameskill_shared;
#using scripts\shared\serverfaceanim_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\system_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\util_shared;

#namespace namespace_2396e2d7;

/*
	Name: function_fc1970dd
	Namespace: namespace_2396e2d7
	Checksum: 0x3511D7ED
	Offset: 0x578
	Size: 0x313
	Parameters: 0
	Flags: None
*/
function function_fc1970dd()
{
	level.var_bcf55096 = [];
	level.var_bcf55096["female"] = [];
	level.var_3fae1bc = 0;
	if(isdefined(level.var_a9e78bf7["aitypeFemale"]))
	{
		namespace_84970cc4::function_69554b3e(level.var_bcf55096["female"], "actor_" + level.var_a9e78bf7["aitypeFemale"]);
		if(isdefined(level.var_a9e78bf7["femaleSpawnChance"]))
		{
			level.var_3fae1bc = function_b6b79a0(level.var_a9e78bf7["femaleSpawnChance"]);
		}
	}
	level.var_bcf55096["male"] = [];
	if(isdefined(level.var_a9e78bf7["aitypeMale1"]))
	{
		namespace_84970cc4::function_69554b3e(level.var_bcf55096["male"], "actor_" + level.var_a9e78bf7["aitypeMale1"]);
	}
	if(isdefined(level.var_a9e78bf7["aitypeMale2"]))
	{
		if(isdefined(level.var_a9e78bf7["maleSpawnChance2"]) && function_26299103(100) < level.var_a9e78bf7["maleSpawnChance2"])
		{
			namespace_84970cc4::function_69554b3e(level.var_bcf55096["male"], "actor_" + level.var_a9e78bf7["aitypeMale2"]);
		}
	}
	if(isdefined(level.var_a9e78bf7["aitypeMale3"]))
	{
		if(isdefined(level.var_a9e78bf7["maleSpawnChance3"]) && function_26299103(100) < level.var_a9e78bf7["maleSpawnChance3"])
		{
			namespace_84970cc4::function_69554b3e(level.var_bcf55096["male"], "actor_" + level.var_a9e78bf7["aitypeMale3"]);
		}
	}
	if(isdefined(level.var_a9e78bf7["aitypeMale4"]))
	{
		if(isdefined(level.var_a9e78bf7["maleSpawnChance4"]) && function_26299103(100) < level.var_a9e78bf7["maleSpawnChance4"])
		{
			namespace_84970cc4::function_69554b3e(level.var_bcf55096["male"], "actor_" + level.var_a9e78bf7["aitypeMale4"]);
		}
	}
}

/*
	Name: function_9bb9e127
	Namespace: namespace_2396e2d7
	Checksum: 0xBBBA969C
	Offset: 0x898
	Size: 0xF7
	Parameters: 0
	Flags: None
*/
function function_9bb9e127()
{
	if(!isdefined(level.var_bcf55096))
	{
		return undefined;
	}
	if(!level.var_bcf55096.size)
	{
		return undefined;
	}
	var_e24f6a0d = undefined;
	var_bc003134 = function_26299103(100) < level.var_3fae1bc;
	if(var_bc003134 && level.var_bcf55096["female"].size)
	{
		var_e24f6a0d = namespace_84970cc4::function_47d18840(level.var_bcf55096["female"]);
	}
	else
	{
		var_e24f6a0d = namespace_84970cc4::function_47d18840(level.var_bcf55096["male"]);
	}
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_e24f6a0d));
	#/
	return var_e24f6a0d;
}

/*
	Name: function_b6c845e8
	Namespace: namespace_2396e2d7
	Checksum: 0x880C9B2F
	Offset: 0x998
	Size: 0x39
	Parameters: 0
	Flags: None
*/
function function_b6c845e8()
{
	if(level.var_a9e78bf7["zombifyenabled"])
	{
		level.var_78175c63 = &function_d78435a0;
	}
	else
	{
		level.var_78175c63 = undefined;
	}
}

/*
	Name: function_cf0834db
	Namespace: namespace_2396e2d7
	Checksum: 0x9D176E31
	Offset: 0x9E0
	Size: 0x21F
	Parameters: 1
	Flags: Private
*/
function private function_cf0834db(var_2f06d687)
{
	if(var_2f06d687.var_8fc0e50e == "direwolf" || var_2f06d687.var_8fc0e50e == "civilian" || function_5dbf7eca(var_2f06d687.var_e6e9b8de, "hero") || function_5dbf7eca(var_2f06d687.var_e6e9b8de, "boss") || (isdefined(var_2f06d687.var_170527fb) && function_5dbf7eca(var_2f06d687.var_170527fb, "hakim")) || (isdefined(var_2f06d687.var_170527fb) && function_5dbf7eca(var_2f06d687.var_170527fb, "chase_bomber")) || var_2f06d687.var_170527fb === "comm_relay_igc_robot" || var_2f06d687.var_170527fb === "robot_wrestles_maretti" || var_2f06d687.var_170527fb === "cin_lot_09_02_pursuit_vign_wallsmash_robot" || var_2f06d687.var_170527fb === "cin_gen_hendricksmoment_riphead_robot" || var_2f06d687.var_170527fb === "standdown_robot01" || var_2f06d687.var_170527fb === "standdown_robot02" || var_2f06d687.var_170527fb === "standdown_robot03" || var_2f06d687.var_170527fb === "rainman" || var_2f06d687.var_170527fb === "balcony_bash_robot")
	{
		return 0;
	}
	if(isdefined(var_2f06d687.var_e4daa8a7))
	{
		return 0;
	}
	return 1;
}

/*
	Name: function_aa71a1e8
	Namespace: namespace_2396e2d7
	Checksum: 0xC01F17FF
	Offset: 0xC08
	Size: 0x63
	Parameters: 1
	Flags: Private
*/
function private function_aa71a1e8(var_2f06d687)
{
	if(!isdefined(var_2f06d687.var_170527fb))
	{
		return 1;
	}
	if(var_2f06d687.var_170527fb == "foundry_hackable_vehicle" || var_2f06d687.var_170527fb == "hijack_diaz_wasp_spawnpoint")
	{
		return 0;
	}
	return 1;
}

/*
	Name: function_559632b9
	Namespace: namespace_2396e2d7
	Checksum: 0xF8B5B829
	Offset: 0xC78
	Size: 0x2A5
	Parameters: 0
	Flags: None
*/
function function_559632b9()
{
	var_6cc76a5d = 0;
	var_fcbd82a5 = 0;
	if(!(isdefined(level.var_64b9a8b0) && level.var_64b9a8b0))
	{
		var_debfe596 = function_846256f4("axis");
		foreach(var_fb9423cf in var_debfe596)
		{
			if(var_fb9423cf.var_8fc0e50e == "zombie")
			{
				if(var_fb9423cf namespace_d84e54db::function_a0a4c1f1("suicidal_behavior"))
				{
					var_fcbd82a5++;
					continue;
				}
				if(var_fb9423cf namespace_d84e54db::function_a0a4c1f1("spark_behavior"))
				{
					var_6cc76a5d++;
				}
			}
		}
	}
	else if(function_26299103(100) < level.var_a9e78bf7["deimosinfectedzombiechance"] && var_6cc76a5d < 2)
	{
		return "deimos_zombie";
	}
	else if(function_26299103(100) < level.var_a9e78bf7["sparkzombieupgradedchance"] && var_6cc76a5d < 1)
	{
		return "sparky_upgraded";
	}
	else if(function_26299103(100) < level.var_a9e78bf7["sparkzombiechance"] && var_6cc76a5d < 1)
	{
		return "sparky";
	}
	else if(function_26299103(100) < level.var_a9e78bf7["suicidalzombieupgradedchance"] && var_6cc76a5d < 2)
	{
		return "on_fire_upgraded";
	}
	else if(function_26299103(100) < level.var_a9e78bf7["suicidalzombiechance"] && var_6cc76a5d < 2)
	{
		return "on_fire";
	}
	return "";
}

/*
	Name: function_d78435a0
	Namespace: namespace_2396e2d7
	Checksum: 0x458B2360
	Offset: 0xF28
	Size: 0x6DD
	Parameters: 5
	Flags: None
*/
function function_d78435a0(var_168ae9f1, var_a0b86a77, var_b71ed4a2, var_6cac4ba4, var_da8912c1)
{
	if(!isdefined(var_168ae9f1))
	{
		var_168ae9f1 = 0;
	}
	var_fd563f35 = undefined;
	var_73fdb64e = 0;
	var_59144dc6 = 0;
	var_580b42ca = 0;
	var_edd42d6 = 0;
	/#
		if(function_6f1ebe57("Dev Block strings are not supported") != "Dev Block strings are not supported")
		{
			return;
		}
	#/
	if(!namespace_2f06d687::function_c5970c2c())
	{
		return;
	}
	while(1)
	{
		if(!(isdefined(var_da8912c1) && var_da8912c1))
		{
			namespace_2f06d687::function_6a9e2403(1);
		}
		if(isdefined(self.var_f5190531) && self.var_f5190531 >= GetTime())
		{
			wait(0.05);
			continue;
		}
		break;
	}
	if(function_51e3f0a4(self))
	{
		if(isdefined(self.var_5f8b9cbf) && self.var_5f8b9cbf & 2 == 2)
		{
			var_59144dc6 = 1;
		}
	}
	else if(function_b7ab1931(self))
	{
		if(isdefined(self.var_5f8b9cbf) && self.var_5f8b9cbf & 8 == 8)
		{
			var_59144dc6 = 1;
		}
	}
	if(var_168ae9f1 || (isdefined(self.var_5f8b9cbf) && self.var_5f8b9cbf & 16 == 16) || isdefined(self.var_103a9781))
	{
		var_73fdb64e = 1;
	}
	if(isdefined(self.var_5f8b9cbf) && self.var_5f8b9cbf & 64 == 64)
	{
		var_580b42ca = 1;
	}
	if(!isdefined(var_fd563f35))
	{
		if(function_51e3f0a4(self))
		{
			/#
				namespace_33b293fd::function_a7ee953(isdefined(self.var_8fc0e50e));
			#/
			var_8b333c37 = function_cf0834db(self);
			if(self.var_3e94206a == "axis" && var_8b333c37)
			{
				var_2985e88a = self.var_8fc0e50e;
				var_1a2d16a4 = function_559632b9();
				if(self.var_8fc0e50e == "warlord" || var_1a2d16a4 == "on_fire_upgraded" || var_1a2d16a4 == "sparky_upgraded")
				{
					var_fd563f35 = self function_8f111f7a(var_a0b86a77, 1, var_59144dc6, var_580b42ca, "actor_spawner_bo3_zombie_bonuszm_warlord");
					if(self.var_8fc0e50e == "warlord")
					{
						var_fd563f35.var_6ad7f3f8 = 1;
						var_fd563f35.var_d4d290e = 1;
					}
				}
				else
				{
					var_f3352ced = 1;
					var_e24f6a0d = function_9bb9e127();
					if(isdefined(var_e24f6a0d))
					{
						var_fd563f35 = self function_8f111f7a(var_a0b86a77, 1, var_59144dc6, var_580b42ca, var_e24f6a0d, var_f3352ced);
					}
					else
					{
						var_fd563f35 = self function_8f111f7a(var_a0b86a77, 1, var_59144dc6, var_580b42ca);
					}
					if(isdefined(var_fd563f35) && isdefined(var_2985e88a))
					{
						var_fd563f35.var_2985e88a = var_2985e88a;
						if(var_1a2d16a4 == "deimos_zombie")
						{
							var_fd563f35.var_b7a92141 = 1;
						}
					}
				}
				if(isdefined(var_fd563f35))
				{
					var_fd563f35.var_b07228b6 = self.var_b07228b6;
					var_fd563f35.var_30e91c0d = var_1a2d16a4;
				}
			}
			else
			{
				var_fd563f35 = self function_8f111f7a(var_a0b86a77, var_73fdb64e, var_59144dc6, var_580b42ca);
			}
		}
		else
		{
			var_261da234 = function_aa71a1e8(self);
			var_e24f6a0d = undefined;
			if(var_261da234 && isdefined(self.var_8fc0e50e))
			{
				if(self.var_8fc0e50e == "wasp")
				{
					var_e24f6a0d = "spawner_zombietron_parasite_purple_cpzm";
				}
				else if(self.var_8fc0e50e == "raps")
				{
					var_e24f6a0d = "spawner_zombietron_veh_meatball_small";
				}
			}
			if(isdefined(var_e24f6a0d))
			{
				var_fd563f35 = self function_8f111f7a(var_a0b86a77, var_73fdb64e, var_59144dc6, var_580b42ca, var_e24f6a0d);
			}
			else
			{
				var_fd563f35 = self function_8f111f7a(var_a0b86a77, var_73fdb64e, var_59144dc6, var_580b42ca);
			}
		}
	}
	if(isdefined(var_fd563f35))
	{
		var_fd563f35.var_11f7b644 = GetTime();
		level.var_db4139b0++;
		if(isdefined(level.var_4148357c))
		{
			var_fd563f35 thread [[level.var_4148357c]](self, var_a0b86a77, var_73fdb64e);
		}
		if(isdefined(var_b71ed4a2) || isdefined(var_6cac4ba4))
		{
			var_fd563f35 namespace_2f06d687::function_5991830b(var_b71ed4a2, var_6cac4ba4);
		}
		self.var_f5190531 = GetTime();
	}
	if(var_edd42d6 || (isdefined(self.var_1a8374c3) && self.var_1a8374c3) && isdefined(self.var_74952a22) && self.var_74952a22 <= 0)
	{
		self function_dc8c8404();
	}
	if(function_5cfb84bb(var_fd563f35))
	{
		if(!namespace_2f06d687::function_65251cee(var_fd563f35))
		{
			return var_fd563f35;
		}
	}
	else
	{
		return var_fd563f35;
	}
}

