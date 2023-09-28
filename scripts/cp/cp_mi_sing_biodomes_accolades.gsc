#using scripts\codescripts\struct;
#using scripts\cp\_accolades;
#using scripts\shared\callbacks_shared;
#using scripts\shared\spawner_shared;

#namespace namespace_769dc23f;

/*
	Name: accolades_init
	Namespace: namespace_769dc23f
	Checksum: 0x4B3E4656
	Offset: 0x4B0
	Size: 0x233
	Parameters: 0
	Flags: None
*/
function accolades_init()
{
	level.var_57f2d2db = 0;
	namespace_fe079222::register("MISSION_BIODOMES_CHALLENGE3", "grant_turret_kill_accolade");
	namespace_fe079222::register("MISSION_BIODOMES_CHALLENGE5", "grant_wasp_accolade");
	namespace_fe079222::register("MISSION_BIODOMES_CHALLENGE7", "accolade_nomiss_wasp_kills");
	namespace_fe079222::register("MISSION_BIODOMES_CHALLENGE8", "grenade_robot_groupkill");
	namespace_fe079222::register("MISSION_BIODOMES_CHALLENGE9", "siege_bot_smash");
	namespace_fe079222::register("MISSION_BIODOMES_CHALLENGE10", "stalactite_kill");
	namespace_fe079222::register("MISSION_BIODOMES_CHALLENGE11", "accolade_kill_all_server_zippers");
	namespace_fe079222::register("MISSION_BIODOMES_CHALLENGE12", "zipline_kill");
	namespace_fe079222::register("MISSION_BIODOMES_CHALLENGE13", "hunter_kill");
	namespace_fe079222::register("MISSION_BIODOMES_CHALLENGE14", "accolade_supertrees_cleared");
	namespace_fe079222::register("MISSION_BIODOMES_CHALLENGE15", "underwater_kill");
	namespace_fe079222::register("MISSION_BIODOMES_CHALLENGE16", "accolade_destroy_x_guard_towers");
	namespace_fe079222::register("MISSION_BIODOMES_CHALLENGE17", "accolade_destroy_x_enemy_trucks");
	function_f7dd9b2c();
	function_e3f60acf();
	function_9ccc0413();
	function_968d885a();
	function_44126609();
	function_3f59ea45();
	function_e77dc7c0();
	function_bccd89ad();
}

/*
	Name: function_ed573577
	Namespace: namespace_769dc23f
	Checksum: 0xDE6645CE
	Offset: 0x6F0
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_ed573577()
{
	function_c2b4b432();
	function_8b1e395();
	function_203ca39();
	function_befbcf64();
	function_d975b9e3();
	function_16509d1f();
	function_4b47f9f6();
	function_92955d5e();
}

/*
	Name: function_f7dd9b2c
	Namespace: namespace_769dc23f
	Checksum: 0x47E5DCB3
	Offset: 0x780
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_f7dd9b2c()
{
	callback::on_spawned(&function_1d06a38e);
	callback::on_ai_killed(&function_deda4654);
}

/*
	Name: function_1d06a38e
	Namespace: namespace_769dc23f
	Checksum: 0xE9C2C0B
	Offset: 0x7D0
	Size: 0xF
	Parameters: 0
	Flags: None
*/
function function_1d06a38e()
{
	self.var_50ef9076 = 0;
}

/*
	Name: function_deda4654
	Namespace: namespace_769dc23f
	Checksum: 0xE7BB9E68
	Offset: 0x7E8
	Size: 0xF7
	Parameters: 1
	Flags: None
*/
function function_deda4654(params)
{
	if(isdefined(params.eAttacker) && isPlayer(params.eAttacker) && isdefined(params.eAttacker.hijacked_vehicle_entity) && params.eAttacker.hijacked_vehicle_entity.archetype === "turret")
	{
		if(params.eAttacker.hijacked_vehicle_entity !== self && params.eAttacker.var_50ef9076 < 8)
		{
			params.eAttacker.var_50ef9076++;
			params.eAttacker notify("hash_e3795b02");
		}
	}
}

/*
	Name: function_c2b4b432
	Namespace: namespace_769dc23f
	Checksum: 0xB5A3E3F3
	Offset: 0x8E8
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_c2b4b432()
{
	callback::remove_on_ai_killed(&function_deda4654);
	callback::remove_on_spawned(&function_1d06a38e);
}

/*
	Name: function_e3f60acf
	Namespace: namespace_769dc23f
	Checksum: 0x6A1B442A
	Offset: 0x938
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_e3f60acf()
{
	callback::on_spawned(&function_80cc63b);
	callback::on_vehicle_killed(&function_674f33f);
}

/*
	Name: function_80cc63b
	Namespace: namespace_769dc23f
	Checksum: 0x9881AEE6
	Offset: 0x988
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_80cc63b()
{
	self.var_d7f97874 = 0;
	self.var_fd2e786f = 0;
}

/*
	Name: function_8b1e395
	Namespace: namespace_769dc23f
	Checksum: 0xC1F25BAD
	Offset: 0x9B0
	Size: 0x5F
	Parameters: 0
	Flags: None
*/
function function_8b1e395()
{
	if(level.var_62b29d5a !== 1)
	{
		callback::remove_on_spawned(&function_80cc63b);
		callback::remove_on_vehicle_killed(&function_674f33f);
		level.var_62b29d5a = 1;
	}
}

/*
	Name: function_674f33f
	Namespace: namespace_769dc23f
	Checksum: 0x45F43089
	Offset: 0xA18
	Size: 0x10F
	Parameters: 1
	Flags: None
*/
function function_674f33f(params)
{
	if(self.archetype === "wasp" && isdefined(params.eAttacker) && isPlayer(params.eAttacker))
	{
		if(params.eAttacker.var_d7f97874 < 6)
		{
			if(params.eAttacker.var_fd2e786f !== 1)
			{
				params.eAttacker thread function_3c326d55();
			}
			else
			{
				params.eAttacker.var_d7f97874++;
				if(params.eAttacker.var_d7f97874 === 6)
				{
					params.eAttacker notify("hash_bff7939a");
				}
			}
		}
	}
}

/*
	Name: function_3c326d55
	Namespace: namespace_769dc23f
	Checksum: 0xA286C5B6
	Offset: 0xB30
	Size: 0x4F
	Parameters: 0
	Flags: None
*/
function function_3c326d55()
{
	if(self.var_fd2e786f != 1)
	{
		self.var_fd2e786f = 1;
		self.var_d7f97874 = 1;
		wait(2);
		self.var_fd2e786f = 0;
		self.var_d7f97874 = 0;
	}
}

/*
	Name: function_9ccc0413
	Namespace: namespace_769dc23f
	Checksum: 0x30CD8C1A
	Offset: 0xB88
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_9ccc0413()
{
	callback::on_spawned(&function_215224ef);
	callback::on_ai_damage(&function_d5374ce7);
	callback::on_vehicle_killed(&function_2506f279);
}

/*
	Name: function_203ca39
	Namespace: namespace_769dc23f
	Checksum: 0x66B6A847
	Offset: 0xBF8
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_203ca39()
{
	callback::remove_on_spawned(&function_215224ef);
	callback::remove_on_ai_damage(&function_d5374ce7);
	callback::remove_on_vehicle_killed(&function_2506f279);
}

/*
	Name: function_215224ef
	Namespace: namespace_769dc23f
	Checksum: 0x93F44544
	Offset: 0xC68
	Size: 0x3D
	Parameters: 0
	Flags: None
*/
function function_215224ef()
{
	self.var_dd1a6664 = 0;
	self.var_399b086d = 0;
	self.var_6917783e = 0;
	self.var_be5f3952 = 0;
	self.var_f497e6fe = undefined;
}

/*
	Name: function_d5374ce7
	Namespace: namespace_769dc23f
	Checksum: 0x24C74AB8
	Offset: 0xCB0
	Size: 0x147
	Parameters: 1
	Flags: None
*/
function function_d5374ce7(params)
{
	if(isPlayer(params.eAttacker))
	{
		if(params.eAttacker.var_399b086d === 1 && function_7d503e87(params.sMeansOfDeath))
		{
			params.eAttacker function_afa04665(params.psOffsetTime);
		}
		else if(self.archetype === "wasp")
		{
			params.eAttacker.var_399b086d = 1;
			params.eAttacker.var_6917783e = 1;
			params.eAttacker.var_be5f3952 = 1;
			params.eAttacker thread function_62deee75();
		}
		params.eAttacker.var_f497e6fe = params.psOffsetTime;
	}
}

/*
	Name: function_62deee75
	Namespace: namespace_769dc23f
	Checksum: 0x873A34A1
	Offset: 0xE00
	Size: 0x4F
	Parameters: 0
	Flags: None
*/
function function_62deee75()
{
	self endon("hash_32230ba9");
	while(isdefined(self.var_399b086d) && self.var_399b086d)
	{
		self waittill("weapon_fired");
		self thread function_a1bcadc9();
	}
}

/*
	Name: function_a1bcadc9
	Namespace: namespace_769dc23f
	Checksum: 0xBB664336
	Offset: 0xE58
	Size: 0x57
	Parameters: 0
	Flags: None
*/
function function_a1bcadc9()
{
	wait(0.2);
	self.var_be5f3952++;
	if(self.var_be5f3952 > self.var_6917783e)
	{
		self.var_399b086d = 0;
		self.var_be5f3952 = 0;
		self.var_6917783e = 0;
		self.var_dd1a6664 = 0;
	}
}

/*
	Name: function_2506f279
	Namespace: namespace_769dc23f
	Checksum: 0xE3A7662
	Offset: 0xEB8
	Size: 0x10B
	Parameters: 1
	Flags: None
*/
function function_2506f279(params)
{
	if(isPlayer(params.eAttacker) && (isdefined(params.eAttacker.var_399b086d) && params.eAttacker.var_399b086d) && self.archetype === "wasp")
	{
		params.eAttacker.var_dd1a6664++;
		params.eAttacker function_afa04665(params.psOffsetTime);
		if(params.eAttacker.var_dd1a6664 === 3)
		{
			params.eAttacker function_fea6ae9f("accolade_nomiss_wasp_kills");
		}
	}
}

/*
	Name: function_afa04665
	Namespace: namespace_769dc23f
	Checksum: 0x2EF83A6D
	Offset: 0xFD0
	Size: 0x2F
	Parameters: 1
	Flags: None
*/
function function_afa04665(var_d42b9169)
{
	if(self.var_f497e6fe !== var_d42b9169)
	{
		self.var_6917783e++;
		self.var_f497e6fe = var_d42b9169;
	}
}

/*
	Name: function_7d503e87
	Namespace: namespace_769dc23f
	Checksum: 0xCE0BE425
	Offset: 0x1008
	Size: 0x27
	Parameters: 1
	Flags: None
*/
function function_7d503e87(str_meansofdeath)
{
	return str_meansofdeath === "MOD_RIFLE_BULLET" || str_meansofdeath === "MOD_PISTOL_BULLET";
}

/*
	Name: function_968d885a
	Namespace: namespace_769dc23f
	Checksum: 0x84833677
	Offset: 0x1038
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_968d885a()
{
	callback::on_spawned(&function_f57769d0);
	callback::on_actor_killed(&function_4989deb7);
}

/*
	Name: function_f57769d0
	Namespace: namespace_769dc23f
	Checksum: 0xE1106998
	Offset: 0x1088
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_f57769d0()
{
	self.var_545e4fb7 = 0;
	self.var_c152ffb6 = undefined;
	self.var_ce5a7d30 = 0;
}

/*
	Name: function_befbcf64
	Namespace: namespace_769dc23f
	Checksum: 0x70537416
	Offset: 0x10B8
	Size: 0x5F
	Parameters: 0
	Flags: None
*/
function function_befbcf64()
{
	if(level.var_2b239a23 !== 1)
	{
		callback::remove_on_spawned(&function_f57769d0);
		callback::remove_on_actor_killed(&function_4989deb7);
		level.var_2b239a23 = 1;
	}
}

/*
	Name: function_4989deb7
	Namespace: namespace_769dc23f
	Checksum: 0x53C00150
	Offset: 0x1120
	Size: 0x21F
	Parameters: 1
	Flags: None
*/
function function_4989deb7(params)
{
	if(isPlayer(params.eAttacker) && self.archetype === "robot" && params.eAttacker.var_ce5a7d30 === 0)
	{
		if(isdefined(params.weapon))
		{
			str_weapon_name = "";
			str_weapon_name = params.weapon.rootweapon.name;
			if(params.sMeansOfDeath === "MOD_GRENADE" || params.sMeansOfDeath === "MOD_GRENADE_SPLASH" || (str_weapon_name == "incendiary_grenade" && params.sMeansOfDeath == "MOD_BURNED") || (str_weapon_name == "bouncingbetty" && params.sMeansOfDeath == "MOD_EXPLOSIVE"))
			{
				if(params.eInflictor !== params.eAttacker.var_c152ffb6)
				{
					params.eAttacker.var_545e4fb7 = 0;
					params.eAttacker.var_c152ffb6 = params.eInflictor;
				}
				params.eAttacker.var_545e4fb7++;
				if(params.eAttacker.var_545e4fb7 == 3)
				{
					params.eAttacker function_fea6ae9f("grenade_robot_groupkill");
					params.eAttacker.var_ce5a7d30 = 1;
				}
			}
		}
	}
}

/*
	Name: function_44126609
	Namespace: namespace_769dc23f
	Checksum: 0x9F14A9A6
	Offset: 0x1348
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_44126609()
{
	callback::on_spawned(&function_8a4f2851);
	callback::on_actor_killed(&function_9c292522);
}

/*
	Name: function_8a4f2851
	Namespace: namespace_769dc23f
	Checksum: 0xA1F4B281
	Offset: 0x1398
	Size: 0xF
	Parameters: 0
	Flags: None
*/
function function_8a4f2851()
{
	self.var_f62f9f5d = 0;
}

/*
	Name: function_d975b9e3
	Namespace: namespace_769dc23f
	Checksum: 0x880699A3
	Offset: 0x13B0
	Size: 0x5F
	Parameters: 0
	Flags: None
*/
function function_d975b9e3()
{
	if(level.var_43dd4669 !== 1)
	{
		callback::remove_on_spawned(&function_8a4f2851);
		callback::remove_on_actor_killed(&function_9c292522);
		level.var_43dd4669 = 1;
	}
}

/*
	Name: function_9c292522
	Namespace: namespace_769dc23f
	Checksum: 0x75F57E0B
	Offset: 0x1418
	Size: 0xF7
	Parameters: 1
	Flags: None
*/
function function_9c292522(params)
{
	if(isdefined(params.eAttacker) && isPlayer(params.eAttacker) && isdefined(params.eAttacker.hijacked_vehicle_entity) && params.eAttacker.hijacked_vehicle_entity.archetype === "siegebot")
	{
		if(params.eAttacker.hijacked_vehicle_entity !== self && params.eAttacker.var_f62f9f5d < 8)
		{
			params.eAttacker.var_f62f9f5d++;
			params.eAttacker notify("hash_9c3e76f1");
		}
	}
}

/*
	Name: function_8ca89944
	Namespace: namespace_769dc23f
	Checksum: 0xD51627A2
	Offset: 0x1518
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_8ca89944()
{
	function_17fe87c5("stalactite_kill");
}

/*
	Name: function_72f8596b
	Namespace: namespace_769dc23f
	Checksum: 0x87244C4A
	Offset: 0x1540
	Size: 0xCD
	Parameters: 0
	Flags: None
*/
function function_72f8596b()
{
	if(level.players.size > 2)
	{
		var_1e94bf2c = 10;
	}
	else
	{
		var_1e94bf2c = 6;
	}
	level.var_57f2d2db++;
	if(level.var_57f2d2db == var_1e94bf2c)
	{
		foreach(player in level.activePlayers)
		{
			player notify("hash_c7302d58");
		}
	}
}

/*
	Name: function_3f59ea45
	Namespace: namespace_769dc23f
	Checksum: 0x9061919D
	Offset: 0x1618
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_3f59ea45()
{
	callback::on_ai_killed(&function_eaf6eb1a);
}

/*
	Name: function_16509d1f
	Namespace: namespace_769dc23f
	Checksum: 0xB10EB6C0
	Offset: 0x1648
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_16509d1f()
{
	callback::remove_on_ai_killed(&function_eaf6eb1a);
}

/*
	Name: function_eaf6eb1a
	Namespace: namespace_769dc23f
	Checksum: 0x6EBD1449
	Offset: 0x1678
	Size: 0x83
	Parameters: 1
	Flags: None
*/
function function_eaf6eb1a(params)
{
	if(isdefined(params.eAttacker) && isPlayer(params.eAttacker) && params.eAttacker.var_23304c9e === 1)
	{
		params.eAttacker namespace_fe079222::increment("MISSION_BIODOMES_CHALLENGE12");
	}
}

/*
	Name: function_e77dc7c0
	Namespace: namespace_769dc23f
	Checksum: 0x6FA40E12
	Offset: 0x1708
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_e77dc7c0()
{
	callback::on_vehicle_killed(&function_9cda9485);
}

/*
	Name: function_4b47f9f6
	Namespace: namespace_769dc23f
	Checksum: 0x116D279C
	Offset: 0x1738
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_4b47f9f6()
{
	callback::remove_on_vehicle_killed(&function_9cda9485);
}

/*
	Name: function_9cda9485
	Namespace: namespace_769dc23f
	Checksum: 0x7A4EDF57
	Offset: 0x1768
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_9cda9485(params)
{
	if(self.vehicleType == "spawner_enemy_54i_vehicle_hunter_rocket")
	{
		if(isdefined(params.eAttacker) && isPlayer(params.eAttacker))
		{
			function_17fe87c5("hunter_kill");
		}
	}
}

/*
	Name: function_765fa7e9
	Namespace: namespace_769dc23f
	Checksum: 0xE4F0D311
	Offset: 0x17E0
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_765fa7e9()
{
	level thread function_fcc8b758();
}

/*
	Name: function_fcc8b758
	Namespace: namespace_769dc23f
	Checksum: 0x9BB9AA1C
	Offset: 0x1808
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_fcc8b758()
{
	self endon("hash_3a2c1be8");
	level waittill("hash_b0ab1d93");
	if(level._ai_group["supertrees_enemies"].aicount === 0)
	{
		function_17fe87c5("accolade_supertrees_cleared");
	}
}

/*
	Name: function_b5aa3655
	Namespace: namespace_769dc23f
	Checksum: 0x585A050C
	Offset: 0x1868
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_b5aa3655()
{
	level.var_3234f804 = GetEnt("t_underwater_kill", "targetname");
	callback::on_spawned(&function_9dcab1fd);
	callback::on_actor_killed(&function_4d4eb70e);
}

/*
	Name: function_9dcab1fd
	Namespace: namespace_769dc23f
	Checksum: 0x1135F92C
	Offset: 0x18E0
	Size: 0xF
	Parameters: 0
	Flags: None
*/
function function_9dcab1fd()
{
	self.var_58aa080e = 0;
}

/*
	Name: function_a057c38f
	Namespace: namespace_769dc23f
	Checksum: 0x5A1B8870
	Offset: 0x18F8
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_a057c38f()
{
	callback::remove_on_spawned(&function_9dcab1fd);
	callback::remove_on_actor_killed(&function_4d4eb70e);
}

/*
	Name: function_4d4eb70e
	Namespace: namespace_769dc23f
	Checksum: 0x23063E85
	Offset: 0x1948
	Size: 0xBB
	Parameters: 1
	Flags: None
*/
function function_4d4eb70e(params)
{
	if(isdefined(params.eAttacker) && isPlayer(params.eAttacker) && params.eAttacker istouching(level.var_3234f804) && params.eAttacker.var_58aa080e < 4)
	{
		params.eAttacker.var_58aa080e++;
		params.eAttacker notify("hash_e859318d");
	}
}

/*
	Name: function_bccd89ad
	Namespace: namespace_769dc23f
	Checksum: 0x53B5558C
	Offset: 0x1A10
	Size: 0xF
	Parameters: 0
	Flags: None
*/
function function_bccd89ad()
{
	level.var_eaa1b961 = 0;
}

/*
	Name: function_b5cf7b68
	Namespace: namespace_769dc23f
	Checksum: 0x3982F4AF
	Offset: 0x1A28
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_b5cf7b68()
{
	if(level.var_eaa1b961 < 5)
	{
		level.var_eaa1b961++;
		function_17fe87c5("accolade_destroy_x_guard_towers");
	}
}

/*
	Name: function_10fc44d8
	Namespace: namespace_769dc23f
	Checksum: 0x79FA884F
	Offset: 0x1A70
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_10fc44d8()
{
	level.var_7ff8e5dc = 0;
	callback::on_vehicle_killed(&function_5fde05cb);
}

/*
	Name: function_92955d5e
	Namespace: namespace_769dc23f
	Checksum: 0x2D323077
	Offset: 0x1AB0
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_92955d5e()
{
	if(level.var_2b53c89b !== 1)
	{
		level.var_2b53c89b = 1;
		callback::remove_on_vehicle_killed(&function_5fde05cb);
	}
}

/*
	Name: function_5fde05cb
	Namespace: namespace_769dc23f
	Checksum: 0x11E83F96
	Offset: 0x1B00
	Size: 0xAB
	Parameters: 1
	Flags: None
*/
function function_5fde05cb(params)
{
	if(isdefined(params.eAttacker) && isPlayer(params.eAttacker) && self.vehicleType === "veh_bo3_civ_truck_pickup_tech_54i" && level.var_7ff8e5dc < 6)
	{
		level.var_7ff8e5dc++;
		function_17fe87c5("accolade_destroy_x_enemy_trucks");
	}
	if(level.var_7ff8e5dc >= 6)
	{
		function_92955d5e();
	}
}

/*
	Name: function_17fe87c5
	Namespace: namespace_769dc23f
	Checksum: 0x69C62378
	Offset: 0x1BB8
	Size: 0x87
	Parameters: 1
	Flags: None
*/
function function_17fe87c5(var_5ba0c4e7)
{
	foreach(plr in level.activePlayers)
	{
		plr notify(var_5ba0c4e7);
	}
}

/*
	Name: function_fea6ae9f
	Namespace: namespace_769dc23f
	Checksum: 0xD739320D
	Offset: 0x1C48
	Size: 0x15
	Parameters: 1
	Flags: None
*/
function function_fea6ae9f(var_5ba0c4e7)
{
	self notify(var_5ba0c4e7);
}

