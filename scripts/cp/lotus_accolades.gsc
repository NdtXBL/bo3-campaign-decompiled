#using scripts\codescripts\struct;
#using scripts\cp\_accolades;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;

#namespace namespace_f4ff722a;

/*
	Name: function_66df416f
	Namespace: namespace_f4ff722a
	Checksum: 0x321170F1
	Offset: 0x7F0
	Size: 0x243
	Parameters: 0
	Flags: None
*/
function function_66df416f()
{
	namespace_fe079222::register("MISSION_LOTUS_UNTOUCHED");
	namespace_fe079222::register("MISSION_LOTUS_SCORE");
	namespace_fe079222::register("MISSION_LOTUS_COLLECTIBLE");
	namespace_fe079222::register("MISSION_LOTUS_CHALLENGE3", "accolade_3_increment");
	namespace_fe079222::register("MISSION_LOTUS_CHALLENGE4", "accolade_4_increment");
	namespace_fe079222::register("MISSION_LOTUS_CHALLENGE5", "accolade_5_complete");
	namespace_fe079222::register("MISSION_LOTUS_CHALLENGE6", "accolade_6_increment");
	namespace_fe079222::register("MISSION_LOTUS_CHALLENGE7", "accolade_7_complete");
	namespace_fe079222::register("MISSION_LOTUS_CHALLENGE9", "accolade_9_complete");
	namespace_fe079222::register("MISSION_LOTUS_CHALLENGE8", "accolade_8_increment");
	namespace_fe079222::register("MISSION_LOTUS_CHALLENGE10", "accolade_10_increment");
	namespace_fe079222::register("MISSION_LOTUS_CHALLENGE11", "accolade_11_complete");
	namespace_fe079222::register("MISSION_LOTUS_CHALLENGE12", "accolade_12_increment");
	namespace_fe079222::register("MISSION_LOTUS_CHALLENGE13", "accolade_13_increment");
	namespace_fe079222::register("MISSION_LOTUS_CHALLENGE14", "accolade_14_complete");
	namespace_fe079222::register("MISSION_LOTUS_CHALLENGE15", "accolade_15_complete");
	level thread function_d657f93a();
	level thread function_b68ffa5d();
	level thread function_c6ba5108();
	function_f2c7746a();
}

/*
	Name: function_f2c7746a
	Namespace: namespace_f4ff722a
	Checksum: 0x1AF8FF7E
	Offset: 0xA40
	Size: 0x111
	Parameters: 0
	Flags: None
*/
function function_f2c7746a()
{
	switch(level.script)
	{
		case "cp_mi_cairo_lotus":
		{
			level thread function_367835e3();
			function_8c0cbe3e();
			function_4815496();
			level thread function_75102c92();
			break;
		}
		case "cp_mi_cairo_lotus2":
		{
			level thread function_367835e3();
			function_4815496();
			level thread function_7c30e9e0();
			level thread function_8593adf4();
			break;
		}
		case "cp_mi_cairo_lotus3":
		{
			level thread function_9e965239();
			level thread function_8593adf4();
			break;
		}
		case default:
		{
			break;
		}
	}
}

/*
	Name: function_a2c4c634
	Namespace: namespace_f4ff722a
	Checksum: 0x615D4BFB
	Offset: 0xB60
	Size: 0xA9
	Parameters: 0
	Flags: None
*/
function function_a2c4c634()
{
	switch(level.var_c0e97bd)
	{
		case "detention_center":
		{
			level thread function_12b1c299();
			break;
		}
		case "boss_battle":
		{
			level thread function_c20741bf();
			level thread function_fc480d54();
			level thread function_f53b652e();
			level thread function_aff09c5b();
			break;
		}
		case default:
		{
			break;
		}
	}
}

/*
	Name: function_d657f93a
	Namespace: namespace_f4ff722a
	Checksum: 0x6DC8DCF1
	Offset: 0xC18
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_d657f93a()
{
	callback::on_actor_killed(&function_8b3820b0);
}

/*
	Name: function_8b3820b0
	Namespace: namespace_f4ff722a
	Checksum: 0x88C2C9F7
	Offset: 0xC48
	Size: 0xAF
	Parameters: 1
	Flags: None
*/
function function_8b3820b0(params)
{
	if(self ai::has_behavior_attribute("rogue_control") && isPlayer(params.eAttacker))
	{
		var_9bed3c76 = self ai::get_behavior_attribute("rogue_control");
		if(var_9bed3c76 == "level_3" || var_9bed3c76 == "forced_level_3")
		{
			params.eAttacker notify("hash_275edb93");
		}
	}
}

/*
	Name: function_b68ffa5d
	Namespace: namespace_f4ff722a
	Checksum: 0x9605CA3A
	Offset: 0xD00
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_b68ffa5d()
{
	callback::on_ai_killed(&function_6e45ce5d);
}

/*
	Name: function_6e45ce5d
	Namespace: namespace_f4ff722a
	Checksum: 0x6D870994
	Offset: 0xD30
	Size: 0x321
	Parameters: 1
	Flags: None
*/
function function_6e45ce5d(params)
{
	if(isPlayer(params.eAttacker))
	{
		player = params.eAttacker;
		if(isdefined(player.hijacked_vehicle_entity) && player.hijacked_vehicle_entity.archetype === "raps" && player.hijacked_vehicle_entity != self)
		{
			player notify("hash_5cd1f75c");
		}
		else if(isdefined(params.eInflictor) && params.eInflictor.archetype === "raps" && params.eInflictor != self)
		{
			player notify("hash_5cd1f75c");
		}
		break;
	}
	if(isdefined(params.eAttacker.var_6fb3bfc3) && params.eAttacker.archetype === "raps" && isPlayer(params.eAttacker.var_6fb3bfc3))
	{
		params.eAttacker.var_6fb3bfc3 notify("hash_5cd1f75c");
		break;
	}
	if(self.archetype === "raps" && params.eAttacker === self)
	{
		foreach(player in level.activePlayers)
		{
			if(isdefined(player.hijacked_vehicle_entity))
			{
				if(player.hijacked_vehicle_entity.archetype === "raps")
				{
					if(self !== player.hijacked_vehicle_entity)
					{
						n_speed = length(player.hijacked_vehicle_entity GetVelocity());
						if(n_speed >= 50)
						{
							n_distance_sq = DistanceSquared(self.origin, player.hijacked_vehicle_entity.origin);
							if(n_distance_sq < 14400)
							{
								player notify("hash_5cd1f75c");
							}
						}
					}
				}
			}
		}
	}
}

/*
	Name: function_c6ba5108
	Namespace: namespace_f4ff722a
	Checksum: 0xC638AF7A
	Offset: 0x1060
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_c6ba5108()
{
	callback::on_actor_killed(&function_8eb61d56);
}

/*
	Name: function_8eb61d56
	Namespace: namespace_f4ff722a
	Checksum: 0x729E9F2A
	Offset: 0x1090
	Size: 0xEB
	Parameters: 1
	Flags: None
*/
function function_8eb61d56(params)
{
	if(isPlayer(params.eAttacker) && self.archetype == "robot" && (isdefined(self.current_scene) && IsSubStr(self.current_scene, "cin_lot_10_01_skybridge_vign_jump_robot") || (isdefined(self.traverseStartNode) && isdefined(self.traverseStartNode.animscript) && IsSubStr(ToLower(self.traverseStartNode.animscript), "jump"))))
	{
		params.eAttacker notify("hash_4f2b7767");
	}
}

/*
	Name: function_367835e3
	Namespace: namespace_f4ff722a
	Checksum: 0x3D0CF93B
	Offset: 0x1188
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_367835e3()
{
	callback::on_ai_spawned(&function_109e560b);
}

/*
	Name: function_109e560b
	Namespace: namespace_f4ff722a
	Checksum: 0xB161B99C
	Offset: 0x11B8
	Size: 0xE7
	Parameters: 0
	Flags: None
*/
function function_109e560b()
{
	self endon("death");
	if(self.archetype === "human_riotshield")
	{
		self thread function_d48890bb();
		while(!isdefined(self.var_66202c1f))
		{
			self waittill("damage", n_damage, e_attacker, v_direction, v_point, var_4ae4f03b);
			if(isPlayer(e_attacker) && (var_4ae4f03b === "MOD_RIFLE_BULLET" || var_4ae4f03b === "MOD_PISTOL_BULLET" || var_4ae4f03b === "MOD_HEAD_SHOT"))
			{
				self.var_66202c1f = 1;
			}
		}
	}
}

/*
	Name: function_d48890bb
	Namespace: namespace_f4ff722a
	Checksum: 0x4522D825
	Offset: 0x12A8
	Size: 0x57
	Parameters: 0
	Flags: None
*/
function function_d48890bb()
{
	self waittill("death", attacker);
	if(isPlayer(attacker) && self.var_66202c1f !== 1)
	{
		attacker notify("hash_c4928636");
	}
}

/*
	Name: function_7c30e9e0
	Namespace: namespace_f4ff722a
	Checksum: 0x3BF24BB5
	Offset: 0x1308
	Size: 0xAD
	Parameters: 0
	Flags: None
*/
function function_7c30e9e0()
{
	level waittill("hash_c243f1de");
	if(isdefined(world.var_aaf25bba) && world.var_aaf25bba)
	{
		foreach(player in level.players)
		{
			player notify("hash_d1ec3fad");
		}
	}
}

/*
	Name: function_8c0cbe3e
	Namespace: namespace_f4ff722a
	Checksum: 0x571915BD
	Offset: 0x13C0
	Size: 0x13
	Parameters: 0
	Flags: None
*/
function function_8c0cbe3e()
{
	world.var_aaf25bba = 1;
}

/*
	Name: function_4815496
	Namespace: namespace_f4ff722a
	Checksum: 0x792965C3
	Offset: 0x13E0
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_4815496()
{
	callback::on_actor_killed(&function_b9a9c8d8);
}

/*
	Name: function_b9a9c8d8
	Namespace: namespace_f4ff722a
	Checksum: 0xD9D785FC
	Offset: 0x1410
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function function_b9a9c8d8(params)
{
	if(self.archetype == "civilian" || self.archetype == "allies" && isPlayer(params.eAttacker))
	{
		world.var_aaf25bba = 0;
	}
}

/*
	Name: function_9e965239
	Namespace: namespace_f4ff722a
	Checksum: 0xA119E65B
	Offset: 0x1480
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_9e965239()
{
	callback::on_actor_killed(&function_3bbd5251);
}

/*
	Name: function_3bbd5251
	Namespace: namespace_f4ff722a
	Checksum: 0x6D8457B1
	Offset: 0x14B0
	Size: 0x83
	Parameters: 1
	Flags: None
*/
function function_3bbd5251(params)
{
	if(self.archetype == "robot" && isPlayer(params.eAttacker) && isdefined(self.current_scene) && IsSubStr(self.current_scene, "cin_lotus_charging_station_awaken_robot"))
	{
		params.eAttacker notify("hash_f0d8a6c8");
	}
}

/*
	Name: function_8593adf4
	Namespace: namespace_f4ff722a
	Checksum: 0xE0EEE3A3
	Offset: 0x1540
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_8593adf4()
{
	callback::on_ai_killed(&function_e36c85d8);
}

/*
	Name: function_e36c85d8
	Namespace: namespace_f4ff722a
	Checksum: 0xF47737AE
	Offset: 0x1570
	Size: 0x14F
	Parameters: 1
	Flags: None
*/
function function_e36c85d8(params)
{
	if(isPlayer(params.eAttacker) && self.archetype == "robot")
	{
		player = params.eAttacker;
		if(self clientfield::get("robot_EMP") || self clientfield::get("cybercom_sysoverload"))
		{
			if(!isdefined(player.var_cacfc33c))
			{
				player thread function_8dc27487(5);
			}
			else if(player.var_cacfc33c < 5)
			{
				player.var_29d01adc++;
				if(player.var_29d01adc >= 5)
				{
					player notify("hash_8a5f1db");
				}
			}
			else
			{
				player.var_cacfc33c = undefined;
				player notify("hash_ada946c0");
			}
		}
	}
}

/*
	Name: function_8dc27487
	Namespace: namespace_f4ff722a
	Checksum: 0x7147ABAE
	Offset: 0x16C8
	Size: 0x5B
	Parameters: 1
	Flags: None
*/
function function_8dc27487(n_max_time)
{
	self endon("death");
	self endon("hash_ada946c0");
	self.var_cacfc33c = 0;
	self.var_29d01adc = 1;
	while(n_max_time > self.var_cacfc33c)
	{
		wait(1);
		self.var_cacfc33c++;
	}
}

/*
	Name: function_75102c92
	Namespace: namespace_f4ff722a
	Checksum: 0x89D75942
	Offset: 0x1730
	Size: 0x48B
	Parameters: 0
	Flags: None
*/
function function_75102c92()
{
	level.var_d97ef4e5 = [];
	if(!isdefined(level.var_d97ef4e5))
	{
		level.var_d97ef4e5 = [];
	}
	else if(!IsArray(level.var_d97ef4e5))
	{
		level.var_d97ef4e5 = Array(level.var_d97ef4e5);
	}
	level.var_d97ef4e5[level.var_d97ef4e5.size] = "cin_lot_02_01_startriots_vign_overwhelm_siege2nd";
	if(!isdefined(level.var_d97ef4e5))
	{
		level.var_d97ef4e5 = [];
	}
	else if(!IsArray(level.var_d97ef4e5))
	{
		level.var_d97ef4e5 = Array(level.var_d97ef4e5);
	}
	level.var_d97ef4e5[level.var_d97ef4e5.size] = "cin_lot_02_01_startriots_vign_overwhelm_siege1st";
	if(!isdefined(level.var_d97ef4e5))
	{
		level.var_d97ef4e5 = [];
	}
	else if(!IsArray(level.var_d97ef4e5))
	{
		level.var_d97ef4e5 = Array(level.var_d97ef4e5);
	}
	level.var_d97ef4e5[level.var_d97ef4e5.size] = "cin_lot_04_05_security_vign_melee_variation2";
	if(!isdefined(level.var_d97ef4e5))
	{
		level.var_d97ef4e5 = [];
	}
	else if(!IsArray(level.var_d97ef4e5))
	{
		level.var_d97ef4e5 = Array(level.var_d97ef4e5);
	}
	level.var_d97ef4e5[level.var_d97ef4e5.size] = "cin_lot_02_01_startriots_vign_overwhelm";
	if(!isdefined(level.var_d97ef4e5))
	{
		level.var_d97ef4e5 = [];
	}
	else if(!IsArray(level.var_d97ef4e5))
	{
		level.var_d97ef4e5 = Array(level.var_d97ef4e5);
	}
	level.var_d97ef4e5[level.var_d97ef4e5.size] = "cin_lot_02_01_startriots_vign_overwhelm_alt";
	if(!isdefined(level.var_d97ef4e5))
	{
		level.var_d97ef4e5 = [];
	}
	else if(!IsArray(level.var_d97ef4e5))
	{
		level.var_d97ef4e5 = Array(level.var_d97ef4e5);
	}
	level.var_d97ef4e5[level.var_d97ef4e5.size] = "cin_lot_02_01_startriots_vign_overwhelm_alt2";
	if(!isdefined(level.var_d97ef4e5))
	{
		level.var_d97ef4e5 = [];
	}
	else if(!IsArray(level.var_d97ef4e5))
	{
		level.var_d97ef4e5 = Array(level.var_d97ef4e5);
	}
	level.var_d97ef4e5[level.var_d97ef4e5.size] = "cin_lot_02_01_startriots_vign_overwhelm_end";
	if(!isdefined(level.var_d97ef4e5))
	{
		level.var_d97ef4e5 = [];
	}
	else if(!IsArray(level.var_d97ef4e5))
	{
		level.var_d97ef4e5 = Array(level.var_d97ef4e5);
	}
	level.var_d97ef4e5[level.var_d97ef4e5.size] = "cin_lot_02_01_startriots_vign_takeout_civkills";
	if(!isdefined(level.var_d97ef4e5))
	{
		level.var_d97ef4e5 = [];
	}
	else if(!IsArray(level.var_d97ef4e5))
	{
		level.var_d97ef4e5 = Array(level.var_d97ef4e5);
	}
	level.var_d97ef4e5[level.var_d97ef4e5.size] = "cin_lot_04_01_security_vign_holddown";
	if(!isdefined(level.var_d97ef4e5))
	{
		level.var_d97ef4e5 = [];
	}
	else if(!IsArray(level.var_d97ef4e5))
	{
		level.var_d97ef4e5 = Array(level.var_d97ef4e5);
	}
	level.var_d97ef4e5[level.var_d97ef4e5.size] = "cin_lot_04_01_security_vign_beaten_breakout_loop";
	callback::on_actor_killed(&function_f5ef0d83);
}

/*
	Name: function_f5ef0d83
	Namespace: namespace_f4ff722a
	Checksum: 0xB61F27EA
	Offset: 0x1BC8
	Size: 0x8B
	Parameters: 1
	Flags: None
*/
function function_f5ef0d83(params)
{
	if(isPlayer(params.eAttacker) && self.team === "axis" && isdefined(self.current_scene) && Array::contains(level.var_d97ef4e5, self.current_scene))
	{
		params.eAttacker notify("hash_c335c11b");
	}
}

/*
	Name: function_c20741bf
	Namespace: namespace_f4ff722a
	Checksum: 0xF240AC23
	Offset: 0x1C60
	Size: 0xF1
	Parameters: 0
	Flags: None
*/
function function_c20741bf()
{
	level waittill("hash_a450f864");
	start_time = GetTime();
	level waittill("hash_4c66c579");
	end_time = GetTime();
	foreach(player in level.players)
	{
		if(end_time - start_time < 120000)
		{
			/#
				iprintln("Dev Block strings are not supported");
			#/
			player notify("hash_65fc298e");
		}
	}
}

/*
	Name: function_fc480d54
	Namespace: namespace_f4ff722a
	Checksum: 0x95700B56
	Offset: 0x1D60
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_fc480d54()
{
	level waittill("hash_a450f864");
	callback::on_ai_killed(&function_e8cf8caa);
	level waittill("hash_65ad50c6");
	callback::remove_on_ai_killed(&function_e8cf8caa);
}

/*
	Name: function_e8cf8caa
	Namespace: namespace_f4ff722a
	Checksum: 0xD0158253
	Offset: 0x1DD0
	Size: 0x57
	Parameters: 1
	Flags: None
*/
function function_e8cf8caa(params)
{
	if(isPlayer(params.eAttacker) && self.var_2f8cff2 === 1)
	{
		params.eAttacker notify("hash_3dbcf4f1");
	}
}

/*
	Name: function_12b1c299
	Namespace: namespace_f4ff722a
	Checksum: 0xEDA4C273
	Offset: 0x1E30
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_12b1c299()
{
	callback::on_ai_killed(&function_436940b1);
	level flag::wait_till("players_made_it_to_stand_down");
	callback::remove_on_ai_killed(&function_436940b1);
}

/*
	Name: function_436940b1
	Namespace: namespace_f4ff722a
	Checksum: 0x2129AE13
	Offset: 0x1EA0
	Size: 0x19B
	Parameters: 1
	Flags: None
*/
function function_436940b1(params)
{
	if(self.archetype === "robot")
	{
		if(isPlayer(params.eAttacker))
		{
			player = params.eAttacker;
			if(isdefined(player.hijacked_vehicle_entity) && player.hijacked_vehicle_entity.archetype === "amws" && player.hijacked_vehicle_entity != self)
			{
				player notify("hash_746844e8");
			}
			else if(isdefined(params.eInflictor) && params.eInflictor.archetype === "amws" && params.eInflictor != self)
			{
				player notify("hash_746844e8");
			}
		}
		else if(isdefined(params.eAttacker.var_6fb3bfc3) && params.eAttacker.archetype === "amws" && isPlayer(params.eAttacker.var_6fb3bfc3))
		{
			params.eAttacker.var_6fb3bfc3 notify("hash_746844e8");
		}
	}
}

/*
	Name: function_f53b652e
	Namespace: namespace_f4ff722a
	Checksum: 0x8880AEC
	Offset: 0x2048
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_f53b652e()
{
	level waittill("hash_a450f864");
	Array::thread_all(level.players, &function_d57bb90f);
	callback::on_spawned(&function_d57bb90f);
}

/*
	Name: function_d57bb90f
	Namespace: namespace_f4ff722a
	Checksum: 0x9875BD9
	Offset: 0x20B0
	Size: 0x221
	Parameters: 0
	Flags: None
*/
function function_d57bb90f()
{
	self notify("hash_94e247a8");
	self endon("death");
	self endon("hash_f02d45f5");
	self endon("hash_94e247a8");
	level endon("hash_4c66c579");
	var_cc018542 = GetWeapon("launcher_standard");
	var_3c3fc8a8 = GetWeapon("minigun_lotus");
	while(isdefined(level.var_38a4277e))
	{
		level.var_38a4277e waittill("damage", damage, attacker, direction_vec, point, type, modelName, tagName, partName, weapon, iDFlags);
		if(attacker === self && damage > 0)
		{
			if(weapon === var_cc018542 && !isdefined(self.var_e1f9f377))
			{
				self.var_e1f9f377 = 1;
			}
			else if(weapon === var_3c3fc8a8 && !isdefined(self.minigun_used))
			{
				self.minigun_used = 1;
			}
			else if(isdefined(weapon) && !isdefined(self.var_9b4dd55d) && weapon != var_cc018542 && weapon != var_3c3fc8a8)
			{
				self.var_9b4dd55d = 1;
			}
		}
		if(self.var_e1f9f377 === 1 && self.minigun_used === 1 && self.var_9b4dd55d === 1)
		{
			self notify("hash_f02d45f5");
		}
	}
}

/*
	Name: function_aff09c5b
	Namespace: namespace_f4ff722a
	Checksum: 0x6871BE30
	Offset: 0x22E0
	Size: 0x1A1
	Parameters: 0
	Flags: None
*/
function function_aff09c5b()
{
	level waittill("hash_a450f864");
	foreach(player in level.players)
	{
		player flag::init("accolade_15_failed");
	}
	callback::on_spawned(&function_428a25c7);
	Array::thread_all(level.players, &function_3d0c6b79);
	level waittill("hash_4c66c579");
	foreach(player in level.players)
	{
		if(!player flag::get("accolade_15_failed"))
		{
			/#
				iprintln("Dev Block strings are not supported");
			#/
			player notify("hash_779aa062");
		}
	}
}

/*
	Name: function_428a25c7
	Namespace: namespace_f4ff722a
	Checksum: 0x11AC5BAF
	Offset: 0x2490
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_428a25c7()
{
	if(!self flag::exists("accolade_15_failed"))
	{
		self flag::init("accolade_15_failed");
	}
	self function_3d0c6b79();
}

/*
	Name: function_3d0c6b79
	Namespace: namespace_f4ff722a
	Checksum: 0xAC97FFF2
	Offset: 0x24F8
	Size: 0x119
	Parameters: 0
	Flags: None
*/
function function_3d0c6b79()
{
	self endon("death");
	self endon("hash_779aa062");
	var_429f87f7 = GetWeapon("gunship_cannon");
	while(1)
	{
		self waittill("damage", damage, attacker, direction_vec, point, type, modelName, tagName, partName, weapon, iDFlags);
		if(weapon === var_429f87f7)
		{
			/#
				iprintln("Dev Block strings are not supported");
			#/
			self flag::set("accolade_15_failed");
			return;
		}
	}
}

