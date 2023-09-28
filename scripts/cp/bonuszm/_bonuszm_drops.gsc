#using scripts\codescripts\struct;
#using scripts\cp\_load;
#using scripts\cp\_oed;
#using scripts\cp\_util;
#using scripts\cp\bonuszm\_bonuszm_biodomes1;
#using scripts\cp\bonuszm\_bonuszm_data;
#using scripts\cp\bonuszm\_bonuszm_dev;
#using scripts\cp\bonuszm\_bonuszm_magicbox;
#using scripts\cp\bonuszm\_bonuszm_prologue;
#using scripts\cp\bonuszm\_bonuszm_sgen;
#using scripts\cp\bonuszm\_bonuszm_sound;
#using scripts\cp\bonuszm\_bonuszm_spawner_shared;
#using scripts\cp\bonuszm\_bonuszm_util;
#using scripts\cp\bonuszm\_bonuszm_weapons;
#using scripts\cp\cybercom\_cybercom;
#using scripts\cp\cybercom\_cybercom_gadget;
#using scripts\cp\cybercom\_cybercom_tactical_rig;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_globallogic_player;
#using scripts\shared\_oob;
#using scripts\shared\ai\archetype_utility;
#using scripts\shared\ai\systems\blackboard;
#using scripts\shared\ai\systems\shared;
#using scripts\shared\ai\zombie_shared;
#using scripts\shared\ai\zombie_utility;
#using scripts\shared\ammo_shared;
#using scripts\shared\archetype_shared\archetype_shared;
#using scripts\shared\array_shared;
#using scripts\shared\audio_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\clientids_shared;
#using scripts\shared\containers_shared;
#using scripts\shared\demo_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\gameskill_shared;
#using scripts\shared\laststand_shared;
#using scripts\shared\load_shared;
#using scripts\shared\math_shared;
#using scripts\shared\music_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\serverfaceanim_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\system_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\tweakables_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\weapons_shared;

#namespace namespace_fdfaa57d;

/*
	Name: main
	Namespace: namespace_fdfaa57d
	Checksum: 0x883DA939
	Offset: 0xB18
	Size: 0x6B
	Parameters: 0
	Flags: AutoExec
*/
function autoexec main()
{
	if(!SessionModeIsCampaignZombiesGame())
	{
		return;
	}
	level.BZMOnCyberComOnCallback = &BZMOnCyberComOnCallback;
	function_94c35cf8();
	level.var_61c4b2a6 = 0;
	level.var_c85f5b9b = [];
	level thread function_2a5eb705();
}

/*
	Name: init
	Namespace: namespace_fdfaa57d
	Checksum: 0x99EC1590
	Offset: 0xB90
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function init()
{
}

/*
	Name: function_b67e03f7
	Namespace: namespace_fdfaa57d
	Checksum: 0xBF20C473
	Offset: 0xBA0
	Size: 0xAC3
	Parameters: 0
	Flags: None
*/
function function_b67e03f7()
{
	if(level.var_61c4b2a6 >= 8)
	{
		return;
	}
	if(isdefined(self.var_4f1bf25e) && self.var_4f1bf25e)
	{
		return;
	}
	var_7c911129 = level.var_a9e78bf7["powerupdropsenabled"];
	var_978f1b32 = level.var_a9e78bf7["powerdropchance"] * level.var_a9e78bf7["powerdropsscalar"];
	/#
		if(GetDvarString("Dev Block strings are not supported") != "Dev Block strings are not supported")
		{
			var_7c911129 = 1;
			var_978f1b32 = 100;
		}
	#/
	if(!var_7c911129)
	{
		return;
	}
	var_ef42c02d = 0;
	if(isdefined(self.var_6ad7f3f8) && self.var_6ad7f3f8)
	{
		var_ef42c02d = 1;
	}
	var_e269fb69 = RandomInt(100);
	if(var_e269fb69 > var_978f1b32 && !var_ef42c02d)
	{
		return;
	}
	randomChance = RandomInt(Int(var_978f1b32));
	var_2f14c279 = undefined;
	var_bf55d8d2 = [];
	if(isdefined(var_ef42c02d) && var_ef42c02d)
	{
		var_bf55d8d2[var_bf55d8d2.size] = "instakill";
	}
	else if(randomChance < Int(level.var_a9e78bf7["weapondropchance"] * level.var_a9e78bf7["powerdropsscalar"]))
	{
		var_bf55d8d2[var_bf55d8d2.size] = "random_weapon";
	}
	if(randomChance < Int(level.var_a9e78bf7["cybercoredropchance"] * level.var_a9e78bf7["powerdropsscalar"]))
	{
		var_bf55d8d2[var_bf55d8d2.size] = "cybercom";
	}
	if(randomChance < Int(level.var_a9e78bf7["cybercoreupgradeddropchance"] * level.var_a9e78bf7["powerdropsscalar"]))
	{
		var_bf55d8d2[var_bf55d8d2.size] = "cybercom_upgraded";
	}
	var_7a2764e8 = function_846256f4("axis");
	var_d55df350 = isdefined(var_7a2764e8) && var_7a2764e8.size && var_7a2764e8.size >= 3;
	if(randomChance < Int(level.var_a9e78bf7["instakilldropchance"] * level.var_a9e78bf7["powerdropsscalar"]) && !function_9c4468cc() && !function_5fcda3a0())
	{
		var_bf55d8d2[var_bf55d8d2.size] = "instakill";
	}
	if(randomChance < Int(level.var_a9e78bf7["maxdropammochance"] * level.var_a9e78bf7["powerdropsscalar"]))
	{
		var_bf55d8d2[var_bf55d8d2.size] = "max_ammo";
	}
	if(randomChance < Int(level.var_a9e78bf7["maxdropammoupgradedchance"] * level.var_a9e78bf7["powerdropsscalar"]))
	{
		var_bf55d8d2[var_bf55d8d2.size] = "max_ammo_upgraded";
	}
	if(var_d55df350 && randomChance < Int(level.var_a9e78bf7["instakillupgradeddropchance"] * level.var_a9e78bf7["powerdropsscalar"]) && !function_9c4468cc() && !function_5fcda3a0())
	{
		var_b37cc8bd = 0;
		foreach(player in level.players)
		{
			if(player HasWeapon(level.var_45cae8b1, 1))
			{
				var_b37cc8bd = 1;
			}
		}
		if(!var_b37cc8bd)
		{
			var_bf55d8d2[var_bf55d8d2.size] = "instakill_upgraded";
		}
		else
		{
			var_bf55d8d2[var_bf55d8d2.size] = "instakill";
		}
	}
	if(var_d55df350 && randomChance < Int(level.var_a9e78bf7["rapsdropchance"] * level.var_a9e78bf7["powerdropsscalar"]) && (!isdefined(level.var_5a1513c4) && level.var_5a1513c4))
	{
		var_bf55d8d2[var_bf55d8d2.size] = "raps";
	}
	if(var_bf55d8d2.size)
	{
		var_2f14c279 = var_bf55d8d2[RandomInt(var_bf55d8d2.size)];
	}
	/#
		if(GetDvarString("Dev Block strings are not supported") != "Dev Block strings are not supported")
		{
			var_2f14c279 = GetDvarString("Dev Block strings are not supported");
		}
	#/
	if(!isdefined(var_2f14c279))
	{
		return;
	}
	players = GetPlayers();
	closestPlayer = ArrayGetClosest(self.origin, players, 100);
	origin = self.origin;
	if(isdefined(closestPlayer))
	{
		direction = VectorNormalize(self.origin - closestPlayer.origin);
		origin = self.origin + VectorScale(direction, 150);
	}
	switch(var_2f14c279)
	{
		case "random_weapon":
		{
			weaponinfo = function_1e2e0936(0);
			if(!isdefined(weaponinfo))
			{
				return;
			}
			if(weaponinfo[0] == level.weaponNone)
			{
				return;
			}
			str_identifier = "random_weapon";
			str_bonus = "random_weapon";
			STR_MODEL = weaponinfo[0].worldmodel;
			var_638b7f73 = self function_95409c5(STR_MODEL, origin, VectorScale((0, 0, 1), 30), weaponinfo, 0);
			break;
		}
		case "cybercom":
		{
			str_identifier = "cybercom";
			str_bonus = "cybercom";
			var_638b7f73 = self function_95409c5("p7_zm_power_up_cyber_core", origin, VectorScale((0, 0, 1), 30), undefined, 0);
			break;
		}
		case "cybercom_upgraded":
		{
			str_identifier = "cybercom_upgraded";
			str_bonus = "cybercom_upgraded";
			var_638b7f73 = self function_95409c5("p7_zm_power_up_cyber_core", origin, VectorScale((0, 0, 1), 30), undefined, 1, 1);
			break;
		}
		case "max_ammo":
		{
			str_identifier = "max_ammo";
			str_bonus = "max_ammo";
			var_638b7f73 = self function_95409c5("p7_zm_power_up_max_ammo", origin, VectorScale((0, 0, 1), 30), undefined, 0);
			break;
		}
		case "max_ammo_upgraded":
		{
			str_identifier = "max_ammo_upgraded";
			str_bonus = "max_ammo_upgraded";
			var_638b7f73 = self function_95409c5("p7_zm_power_up_max_ammo", origin, VectorScale((0, 0, 1), 30), undefined, 1, 1);
			break;
		}
		case "instakill":
		{
			str_identifier = "instakill";
			str_bonus = "instakill";
			var_638b7f73 = self function_95409c5("p7_zm_power_up_insta_kill", origin, VectorScale((0, 0, 1), 30), undefined, 0);
			break;
		}
		case "instakill_upgraded":
		{
			str_identifier = "instakill_upgraded";
			str_bonus = "instakill_upgraded";
			var_638b7f73 = self function_95409c5("p7_zm_power_up_insta_kill", origin, VectorScale((0, 0, 1), 30), undefined, 1, 1);
			break;
		}
		case "raps":
		{
			str_identifier = "raps";
			str_bonus = "raps";
			var_638b7f73 = self function_95409c5("veh_t7_drone_raps", origin, VectorScale((0, 0, 1), 30), undefined, 0);
			break;
		}
		case default:
		{
			/#
				ASSERTMSG("Dev Block strings are not supported");
			#/
		}
	}
	level.var_61c4b2a6++;
	self thread function_6b3c34cc(var_638b7f73, str_identifier, str_bonus);
}

/*
	Name: function_95409c5
	Namespace: namespace_fdfaa57d
	Checksum: 0x9B0A1083
	Offset: 0x1670
	Size: 0x21F
	Parameters: 6
	Flags: None
*/
function function_95409c5(STR_MODEL, v_model_origin, v_offset, weaponinfo, upgraded, var_b8419776)
{
	if(!isdefined(v_offset))
	{
		v_offset = (0, 0, 0);
	}
	if(!isdefined(var_b8419776))
	{
		var_b8419776 = 0;
	}
	if(!isdefined(self.var_e6daaaf2))
	{
		self.var_e6daaaf2 = [];
	}
	if(!function_beceadbc())
	{
		/#
			iprintln("Dev Block strings are not supported");
		#/
		return;
	}
	var_638b7f73 = spawn("script_model", (0, 0, 0));
	var_638b7f73 SetModel("tag_origin");
	var_638b7f73 notsolid();
	if(!isdefined(weaponinfo))
	{
		if(isdefined(upgraded) && upgraded)
		{
			var_638b7f73 SetScale(0.7);
		}
		else
		{
			var_638b7f73 SetScale(0.6);
		}
		if(STR_MODEL == "veh_t7_drone_raps")
		{
			var_638b7f73 SetScale(0.4);
		}
	}
	var_638b7f73.weaponinfo = weaponinfo;
	var_638b7f73.upgraded = upgraded;
	var_638b7f73 thread function_fe2b609e(v_model_origin + v_offset, STR_MODEL, upgraded, var_b8419776);
	var_638b7f73 thread function_13d6da78();
	Array::add(level.var_c85f5b9b, var_638b7f73);
	return var_638b7f73;
}

/*
	Name: function_fe2b609e
	Namespace: namespace_fdfaa57d
	Checksum: 0x1ECE3C49
	Offset: 0x1898
	Size: 0x193
	Parameters: 4
	Flags: None
*/
function function_fe2b609e(v_moveto_pos, STR_MODEL, upgraded, var_b8419776)
{
	if(!isdefined(var_b8419776))
	{
		var_b8419776 = 0;
	}
	self endon("death");
	self.drop_time = GetTime();
	self.origin = v_moveto_pos;
	if(isdefined(STR_MODEL))
	{
		if(isdefined(self.weaponinfo))
		{
			self UseWeaponModel(self.weaponinfo[0], self.weaponinfo[0].worldmodel);
			self SetWeaponRenderOptions(self.weaponinfo[2], 0, 0, 0, 0);
		}
		else
		{
			self SetModel(STR_MODEL);
		}
		if(isdefined(var_b8419776) && var_b8419776)
		{
			self clientfield::set("powerup_on_fx", 3);
		}
		else if(isdefined(upgraded) && upgraded)
		{
			self clientfield::set("powerup_on_fx", 2);
		}
		else
		{
			self clientfield::set("powerup_on_fx", 1);
		}
	}
	self show();
}

/*
	Name: function_58f94c40
	Namespace: namespace_fdfaa57d
	Checksum: 0xA3D9B648
	Offset: 0x1A38
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_58f94c40()
{
	self thread function_b050d188();
	self thread function_8036f40b();
}

/*
	Name: function_8036f40b
	Namespace: namespace_fdfaa57d
	Checksum: 0xCD0FCAD6
	Offset: 0x1A78
	Size: 0x8D
	Parameters: 0
	Flags: None
*/
function function_8036f40b()
{
	self endon("death");
	upgraded = isdefined(self.upgraded) && self.upgraded;
	if(upgraded)
	{
		rotateTime = 0.3;
		continue;
	}
	rotateTime = 0.7;
	while(1)
	{
		self RotateYaw(-180, rotateTime);
		wait(rotateTime);
	}
}

/*
	Name: function_b050d188
	Namespace: namespace_fdfaa57d
	Checksum: 0x4B0F56CB
	Offset: 0x1B10
	Size: 0x1BD
	Parameters: 0
	Flags: None
*/
function function_b050d188()
{
	self endon("death");
	self endon("hash_56f6579a");
	n_time_total = 18;
	n_frames = n_time_total * 20;
	n_section = Int(n_frames / 6);
	n_flash_slow = n_section * 3;
	n_flash_medium = n_section * 4;
	n_flash_fast = n_section * 5;
	b_show = 1;
	i = 0;
	while(i < n_frames)
	{
		if(i < n_flash_slow)
		{
			n_multiplier = n_flash_slow;
		}
		else if(i < n_flash_medium)
		{
			n_multiplier = 10;
		}
		else if(i < n_flash_fast)
		{
			n_multiplier = 5;
		}
		else
		{
			n_multiplier = 2;
		}
		if(b_show)
		{
			self show();
		}
		else
		{
			self ghost();
		}
		b_show = !b_show;
		i = i + n_multiplier;
		wait(0.05 * n_multiplier);
	}
	self notify("hash_56f6579a");
}

/*
	Name: function_d7f5b3c2
	Namespace: namespace_fdfaa57d
	Checksum: 0x2071F10A
	Offset: 0x1CD8
	Size: 0x149
	Parameters: 1
	Flags: None
*/
function function_d7f5b3c2(facee)
{
	requiredDot = 0.5;
	orientation = self getPlayerAngles();
	forwardVec = AnglesToForward(orientation);
	forwardVec2D = (forwardVec[0], forwardVec[1], 0);
	unitForwardVec2D = VectorNormalize(forwardVec2D);
	toFaceeVec = facee.origin - self.origin;
	toFaceeVec2D = (toFaceeVec[0], toFaceeVec[1], 0);
	unitToFaceeVec2D = VectorNormalize(toFaceeVec2D);
	dotProduct = VectorDot(unitForwardVec2D, unitToFaceeVec2D);
	return dotProduct > requiredDot;
}

/*
	Name: function_6b3c34cc
	Namespace: namespace_fdfaa57d
	Checksum: 0x498F8CE2
	Offset: 0x1E30
	Size: 0x255
	Parameters: 3
	Flags: None
*/
function function_6b3c34cc(var_638b7f73, str_identifier, str_bonus)
{
	if(!isdefined(var_638b7f73))
	{
		return;
	}
	var_638b7f73 endon("death");
	var_638b7f73 endon("hash_56f6579a");
	util::wait_network_frame();
	n_times_to_check = Int(180);
	for(i = 0; i < n_times_to_check; i++)
	{
		players = GetPlayers();
		for(i = 0; i < players.size; i++)
		{
			b_player_inside_radius = Distance2DSquared(var_638b7f73.origin, players[i].origin) < 2025;
			var_e33aadf8 = Abs(var_638b7f73.origin[2] - players[i].origin[2]) < 50;
			if(b_player_inside_radius && var_e33aadf8)
			{
				player = players[i];
				if(!player IsPlayingAnimScripted() && player function_d7f5b3c2(var_638b7f73))
				{
					var_638b7f73.picked_up = 1;
					players[i] notify("hash_b5d20c7d");
					players[i] notify(str_identifier);
					players[i] function_da35c458(str_bonus, var_638b7f73);
					var_638b7f73 notify("hash_56f6579a");
					break;
				}
			}
		}
		wait(0.1);
	}
}

/*
	Name: function_cf8cea5f
	Namespace: namespace_fdfaa57d
	Checksum: 0x7120F25D
	Offset: 0x2090
	Size: 0x9B
	Parameters: 1
	Flags: None
*/
function function_cf8cea5f(n_delay)
{
	if(!isdefined(n_delay))
	{
		n_delay = 0.1;
	}
	if(level.var_61c4b2a6 <= 0)
	{
		return;
	}
	level.var_61c4b2a6--;
	if(n_delay > 0)
	{
		self clientfield::set("powerup_on_fx", 0);
		self ghost();
		wait(n_delay);
	}
	if(isdefined(self))
	{
		self delete();
	}
}

/*
	Name: function_13d6da78
	Namespace: namespace_fdfaa57d
	Checksum: 0xE14F88F5
	Offset: 0x2138
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_13d6da78()
{
	self thread function_58f94c40();
	self util::waittill_any("death_or_disconnect", "stopbzmdrop_behavior");
	n_delete_delay = 0.1;
	if(isdefined(self.picked_up) && self.picked_up)
	{
		self clientfield::set("powerup_grabbed_fx", 1);
		n_delete_delay = 1;
	}
	self function_cf8cea5f(n_delete_delay);
}

/*
	Name: function_da35c458
	Namespace: namespace_fdfaa57d
	Checksum: 0xD2A54C73
	Offset: 0x21F0
	Size: 0x16D
	Parameters: 2
	Flags: None
*/
function function_da35c458(str_bonus, var_638b7f73)
{
	switch(str_bonus)
	{
		case "cybercom":
		{
			self function_2beeb3b3(0);
			break;
		}
		case "cybercom_upgraded":
		{
			self function_2beeb3b3(1);
			break;
		}
		case "max_ammo":
		{
			self function_4e9a52a6();
			break;
		}
		case "max_ammo_upgraded":
		{
			self function_4827a249();
			break;
		}
		case "random_weapon":
		{
			self function_4035ce17(var_638b7f73);
			break;
		}
		case "instakill":
		{
			self function_f3239cd2();
			break;
		}
		case "instakill_upgraded":
		{
			self function_c54347ed();
			break;
		}
		case "raps":
		{
			self thread function_be188509();
			break;
		}
		case default:
		{
			/#
				Assert("Dev Block strings are not supported" + str_bonus + "Dev Block strings are not supported");
			#/
			break;
		}
	}
}

/*
	Name: function_be188509
	Namespace: namespace_fdfaa57d
	Checksum: 0xB82755B2
	Offset: 0x2368
	Size: 0x257
	Parameters: 0
	Flags: Private
*/
function private function_be188509()
{
	level.var_5a1513c4 = 1;
	closestPlayer = ArrayGetClosest(self.origin, level.players);
	playerForward = AnglesToForward(closestPlayer.angles);
	var_2d1236a = closestPlayer.origin + VectorScale(playerForward, 100);
	var_2d1236a = GetClosestPointOnNavMesh(var_2d1236a, 300);
	if(!isdefined(var_2d1236a))
	{
		return;
	}
	level.var_f011cb7c = SpawnVehicle("spawner_enemy_54i_vehicle_raps_suicide", var_2d1236a, closestPlayer.angles, "raps_drop");
	level.var_f011cb7c SetIgnorePauseWorld(1);
	if(isdefined(level.var_f011cb7c))
	{
		level.var_f011cb7c.team = "allies";
		level.var_f011cb7c.ignoreme = 1;
		level.var_f011cb7c.disableAutoDetonation = 1;
		level.var_f011cb7c SetAvoidanceMask("avoid none");
		wait(40);
		if(isdefined(level.var_f011cb7c) && isalive(level.var_f011cb7c))
		{
			attacker = level.var_f011cb7c;
			level.var_f011cb7c stopsounds();
			level.var_f011cb7c DoDamage(level.var_f011cb7c.health + 1000, level.var_f011cb7c.origin, attacker, level.var_f011cb7c, "none", "MOD_EXPLOSIVE", 0, level.var_f011cb7c.turretWeapon);
		}
	}
	level.var_5a1513c4 = 0;
}

/*
	Name: function_94c35cf8
	Namespace: namespace_fdfaa57d
	Checksum: 0xEEA78996
	Offset: 0x25C8
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_94c35cf8()
{
	level.var_6412066 = [];
	Array::add(level.var_6412066, "cybercom_overdrive");
	Array::add(level.var_6412066, "cybercom_concussive");
	Array::add(level.var_6412066, "cybercom_unstoppableforce");
	Array::add(level.var_6412066, "cybercom_fireflyswarm");
}

/*
	Name: function_2beeb3b3
	Namespace: namespace_fdfaa57d
	Checksum: 0x7CFE6E45
	Offset: 0x2668
	Size: 0x283
	Parameters: 1
	Flags: None
*/
function function_2beeb3b3(upgraded)
{
	/#
		Assert(isdefined(level.var_6412066) && level.var_6412066.size);
	#/
	abilities = ArrayCopy(level.var_6412066);
	foreach(ability in level.var_6412066)
	{
		if(self function_1a9006bd(ability) > 0)
		{
			ArrayRemoveValue(abilities, ability);
		}
	}
	if(!isdefined(abilities) || !IsArray(abilities) || !abilities.size)
	{
		abilities = ArrayCopy(level.var_6412066);
	}
	var_b5725157 = Array::random(abilities);
	/#
		if(GetDvarString("Dev Block strings are not supported", "Dev Block strings are not supported") != "Dev Block strings are not supported")
		{
			var_b5725157 = GetDvarString("Dev Block strings are not supported");
		}
	#/
	self cybercom::function_e60e89fe();
	self namespace_d00ec32::function_c219b381();
	if(isdefined(upgraded) && upgraded)
	{
		self namespace_d00ec32::giveAbility(var_b5725157, 1);
	}
	else
	{
		self namespace_d00ec32::giveAbility(var_b5725157, 0);
	}
	self namespace_d00ec32::function_eb512967(var_b5725157, 1);
	self thread function_8435cfdc(var_b5725157, upgraded);
}

/*
	Name: function_8435cfdc
	Namespace: namespace_fdfaa57d
	Checksum: 0xF4A6AF22
	Offset: 0x28F8
	Size: 0xB5
	Parameters: 2
	Flags: Private
*/
function private function_8435cfdc(var_b5725157, upgraded)
{
	self endon("death");
	self notify("hash_8435cfdc");
	self.var_cc7a6101 = 0;
	self.var_db92ee58 = GetTime();
	switch(var_b5725157)
	{
		case "cybercom_camo":
		case "cybercom_concussive":
		case "cybercom_fireflyswarm":
		case "cybercom_overdrive":
		{
			self thread function_2d73d3d9(upgraded);
			break;
		}
		case "cybercom_unstoppableforce":
		{
			self thread function_1c087aac(upgraded);
			break;
		}
	}
}

/*
	Name: function_1c087aac
	Namespace: namespace_fdfaa57d
	Checksum: 0x71515410
	Offset: 0x29B8
	Size: 0x171
	Parameters: 1
	Flags: Private
*/
function private function_1c087aac(upgraded)
{
	self endon("death");
	self endon("hash_8435cfdc");
	self notify("hash_1c087aac");
	self endon("hash_1c087aac");
	/#
		Assert(self.var_db92ee58 > 0);
	#/
	if(isdefined(upgraded) && upgraded)
	{
		var_3c351aaf = self.var_db92ee58 + 60000;
		continue;
	}
	var_3c351aaf = self.var_db92ee58 + 30000;
	while(GetTime() < var_3c351aaf)
	{
		wait(0.1);
	}
	foreach(ability in level.cybercom.abilities)
	{
		self function_d8df9418(ability.name);
		self namespace_d00ec32::function_1364f13e(ability);
	}
}

/*
	Name: function_2d73d3d9
	Namespace: namespace_fdfaa57d
	Checksum: 0x8709EAB1
	Offset: 0x2B38
	Size: 0x169
	Parameters: 1
	Flags: Private
*/
function private function_2d73d3d9(upgraded)
{
	self endon("death");
	self endon("hash_8435cfdc");
	self notify("hash_2d73d3d9");
	self endon("hash_2d73d3d9");
	/#
		Assert(self.var_cc7a6101 == 0);
	#/
	if(isdefined(upgraded) && upgraded)
	{
		var_686e9a14 = 5;
		continue;
	}
	var_686e9a14 = 3;
	while(self.var_cc7a6101 < 3)
	{
		wait(0.1);
	}
	wait(5);
	foreach(ability in level.cybercom.abilities)
	{
		self function_d8df9418(ability.name);
		self namespace_d00ec32::function_1364f13e(ability);
	}
}

/*
	Name: BZMOnCyberComOnCallback
	Namespace: namespace_fdfaa57d
	Checksum: 0xCE4EA774
	Offset: 0x2CB0
	Size: 0x5F
	Parameters: 1
	Flags: Private
*/
function private BZMOnCyberComOnCallback(player)
{
	/#
		Assert(isPlayer(player));
	#/
	if(!isdefined(player.var_cc7a6101))
	{
		return;
	}
	player.var_cc7a6101++;
}

/*
	Name: function_4e9a52a6
	Namespace: namespace_fdfaa57d
	Checksum: 0xD1A15789
	Offset: 0x2D18
	Size: 0xD9
	Parameters: 0
	Flags: None
*/
function function_4e9a52a6()
{
	var_8ea4a872 = self GetWeaponsList();
	foreach(w_weapon in var_8ea4a872)
	{
		self giveMaxAmmo(w_weapon);
		self SetWeaponAmmoClip(w_weapon, w_weapon.clipSize);
	}
}

/*
	Name: function_4827a249
	Namespace: namespace_fdfaa57d
	Checksum: 0x420157FA
	Offset: 0x2E00
	Size: 0x147
	Parameters: 0
	Flags: None
*/
function function_4827a249()
{
	foreach(player in level.activePlayers)
	{
		var_8ea4a872 = player GetWeaponsList();
		foreach(w_weapon in var_8ea4a872)
		{
			player giveMaxAmmo(w_weapon);
			player SetWeaponAmmoClip(w_weapon, w_weapon.clipSize);
		}
	}
}

/*
	Name: function_4035ce17
	Namespace: namespace_fdfaa57d
	Checksum: 0xAF1FE8B0
	Offset: 0x2F50
	Size: 0x53
	Parameters: 1
	Flags: None
*/
function function_4035ce17(var_638b7f73)
{
	/#
		Assert(isdefined(var_638b7f73.weaponinfo));
	#/
	self function_43128d49(var_638b7f73.weaponinfo);
}

/*
	Name: function_f3239cd2
	Namespace: namespace_fdfaa57d
	Checksum: 0x20094B06
	Offset: 0x2FB0
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_f3239cd2()
{
	self thread function_4759fbcb();
}

/*
	Name: function_4759fbcb
	Namespace: namespace_fdfaa57d
	Checksum: 0xCEACB534
	Offset: 0x2FD8
	Size: 0x9F
	Parameters: 0
	Flags: None
*/
function function_4759fbcb()
{
	self endon("hash_19ae9989");
	self endon("disconnect");
	self notify("hash_2559e9cc");
	self endon("hash_2559e9cc");
	self thread function_ac97a368();
	self clientfield::set_to_player("bonuszm_player_instakill_active_fx", 1);
	self.forceAnhilateOnDeath = 1;
	wait(15);
	self clientfield::set_to_player("bonuszm_player_instakill_active_fx", 0);
	self.forceAnhilateOnDeath = 0;
}

/*
	Name: function_ac97a368
	Namespace: namespace_fdfaa57d
	Checksum: 0x5D74205C
	Offset: 0x3080
	Size: 0x75
	Parameters: 0
	Flags: None
*/
function function_ac97a368()
{
	self endon("disconnect");
	self endon("hash_2559e9cc");
	self waittill("death");
	if(isdefined(self.forceAnhilateOnDeath) && self.forceAnhilateOnDeath)
	{
		self clientfield::set_to_player("bonuszm_player_instakill_active_fx", 0);
		self.forceAnhilateOnDeath = 0;
		self notify("hash_19ae9989");
	}
}

/*
	Name: function_9c4468cc
	Namespace: namespace_fdfaa57d
	Checksum: 0x7B4B67B9
	Offset: 0x3100
	Size: 0x89
	Parameters: 0
	Flags: None
*/
function function_9c4468cc()
{
	foreach(player in level.players)
	{
		if(isdefined(self.forceAnhilateOnDeath))
		{
			return 1;
		}
	}
	return 0;
}

/*
	Name: function_5fcda3a0
	Namespace: namespace_fdfaa57d
	Checksum: 0x5E7797FD
	Offset: 0x3198
	Size: 0x21
	Parameters: 0
	Flags: None
*/
function function_5fcda3a0()
{
	if(isdefined(level.bzm_worldPaused) && level.bzm_worldPaused)
	{
		return 1;
	}
	return 0;
}

/*
	Name: function_c54347ed
	Namespace: namespace_fdfaa57d
	Checksum: 0x420EEFFA
	Offset: 0x31C8
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_c54347ed()
{
	if(function_5fcda3a0())
	{
		return;
	}
	self thread instakill_upgraded_think();
}

/*
	Name: instakill_upgraded_think
	Namespace: namespace_fdfaa57d
	Checksum: 0xEB69098C
	Offset: 0x3200
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function instakill_upgraded_think()
{
	/#
		Assert(!isdefined(level.bzm_worldPaused) && level.bzm_worldPaused);
	#/
	level endon("hash_d864b21a");
	function_3dce4e74();
	wait(8);
	level thread function_1dfabdfa();
}

/*
	Name: function_3dce4e74
	Namespace: namespace_fdfaa57d
	Checksum: 0x3229D65C
	Offset: 0x3278
	Size: 0x301
	Parameters: 0
	Flags: None
*/
function function_3dce4e74()
{
	level.bzm_worldPaused = 1;
	foreach(player in level.activePlayers)
	{
		player clientfield::set_to_player("bonuszm_player_instakill_active_fx", 1);
		player.forceAnhilateOnDeath = 1;
		player PlayRumbleOnEntity("tank_rumble");
	}
	level.var_5860b0ee = spawn("script_origin", (0, 0, 0));
	level.var_5860b0ee playsound("zmb_instakill_upgraded_activate");
	level.var_5860b0ee PlayLoopSound("zmb_instakill_upgraded_loop", 2);
	setSlowMotion(1, 1.2, 2);
	wait(2);
	SetPauseWorld(1);
	if(isdefined(level.heroes) && level.heroes.size)
	{
		foreach(hero in level.heroes)
		{
			hero SetIgnorePauseWorld(1);
		}
	}
	ais = GetAITeamArray("allies");
	if(isdefined(ais) && ais.size)
	{
		foreach(ai in ais)
		{
			if(isVehicle(ai))
			{
				ai SetIgnorePauseWorld(1);
			}
		}
	}
}

/*
	Name: function_1dfabdfa
	Namespace: namespace_fdfaa57d
	Checksum: 0x906413B4
	Offset: 0x3588
	Size: 0x1AF
	Parameters: 0
	Flags: None
*/
function function_1dfabdfa()
{
	if(!(isdefined(level.bzm_worldPaused) && level.bzm_worldPaused))
	{
		return;
	}
	/#
		Assert(isdefined(level.var_5860b0ee));
	#/
	level notify("hash_d864b21a");
	level.var_5860b0ee StopLoopSound(2);
	level.var_5860b0ee playsound("zmb_instakill_upgraded_deactivate");
	setSlowMotion(1.2, 1, 2);
	wait(1);
	SetPauseWorld(0);
	foreach(player in level.activePlayers)
	{
		player clientfield::set_to_player("bonuszm_player_instakill_active_fx", 0);
		player.forceAnhilateOnDeath = 0;
		player PlayRumbleOnEntity("tank_rumble");
	}
	if(isdefined(level.var_5860b0ee))
	{
		level.var_5860b0ee delete();
	}
	level.bzm_worldPaused = 0;
}

/*
	Name: function_2a5eb705
	Namespace: namespace_fdfaa57d
	Checksum: 0x85EA0738
	Offset: 0x3740
	Size: 0x135
	Parameters: 0
	Flags: None
*/
function function_2a5eb705()
{
	while(1)
	{
		level waittill("scene_sequence_started");
		function_1dfabdfa();
		if(isdefined(level.var_f011cb7c) && isalive(level.var_f011cb7c))
		{
			level.var_f011cb7c delete();
		}
		foreach(drop in level.var_c85f5b9b)
		{
			if(isdefined(drop))
			{
				drop thread function_cf8cea5f(0);
			}
		}
		level.var_c85f5b9b = Array::remove_undefined(level.var_c85f5b9b);
		level notify("hash_cf7497c1");
	}
}

