#using scripts\codescripts\struct;
#using scripts\cp\_challenges;
#using scripts\cp\_util;
#using scripts\cp\cybercom\_cybercom;
#using scripts\cp\cybercom\_cybercom_gadget;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\shared\abilities\_ability_player;
#using scripts\shared\abilities\_ability_util;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\hud_shared;
#using scripts\shared\laststand_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\math_shared;
#using scripts\shared\player_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\statemachine_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\visionset_mgr_shared;

#namespace namespace_7cb6cd95;

/*
	Name: init
	Namespace: namespace_7cb6cd95
	Checksum: 0x6DA6A11E
	Offset: 0x7B0
	Size: 0x1D3
	Parameters: 0
	Flags: None
*/
function init()
{
	clientfield::register("toplayer", "hijack_vehicle_transition", 1, 2, "int");
	clientfield::register("toplayer", "hijack_static_effect", 1, 7, "float");
	clientfield::register("toplayer", "sndInDrivableVehicle", 1, 1, "int");
	clientfield::register("vehicle", "vehicle_hijacked", 1, 1, "int");
	clientfield::register("toplayer", "hijack_spectate", 1, 1, "int");
	clientfield::register("toplayer", "hijack_static_ramp_up", 1, 1, "int");
	clientfield::register("toplayer", "vehicle_hijacked", 1, 1, "int");
	visionset_mgr::register_info("visionset", "hijack_vehicle", 1, 5, 1, 1);
	visionset_mgr::register_info("visionset", "hijack_vehicle_blur", 1, 6, 1, 1);
	callback::on_spawned(&on_player_spawned);
}

/*
	Name: main
	Namespace: namespace_7cb6cd95
	Checksum: 0xB2205049
	Offset: 0x990
	Size: 0x17B
	Parameters: 0
	Flags: None
*/
function main()
{
	namespace_d00ec32::function_36b56038(0, 32);
	level.cybercom.security_breach = spawnstruct();
	level.cybercom.security_breach._is_flickering = &_is_flickering;
	level.cybercom.security_breach._on_flicker = &_on_flicker;
	level.cybercom.security_breach._on_give = &_on_give;
	level.cybercom.security_breach._on_take = &_on_take;
	level.cybercom.security_breach._on_connect = &_on_connect;
	level.cybercom.security_breach._on = &_on;
	level.cybercom.security_breach._off = &_off;
	level.cybercom.security_breach._is_primed = &_is_primed;
}

/*
	Name: on_player_spawned
	Namespace: namespace_7cb6cd95
	Checksum: 0x1FD3723D
	Offset: 0xB18
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function on_player_spawned()
{
	self clientfield::set_to_player("hijack_static_effect", 0);
	self clientfield::set_to_player("hijack_spectate", 0);
	self clientfield::set_to_player("hijack_static_ramp_up", 0);
	self util::freeze_player_controls(0);
	self CameraActivate(0);
}

/*
	Name: _is_flickering
	Namespace: namespace_7cb6cd95
	Checksum: 0xA56BADAB
	Offset: 0xBB8
	Size: 0xB
	Parameters: 1
	Flags: None
*/
function _is_flickering(slot)
{
}

/*
	Name: _on_flicker
	Namespace: namespace_7cb6cd95
	Checksum: 0xF658735E
	Offset: 0xBD0
	Size: 0x13
	Parameters: 2
	Flags: None
*/
function _on_flicker(slot, weapon)
{
}

/*
	Name: _on_give
	Namespace: namespace_7cb6cd95
	Checksum: 0x2B7954FA
	Offset: 0xBF0
	Size: 0x13B
	Parameters: 2
	Flags: None
*/
function _on_give(slot, weapon)
{
	self.cybercom.var_110c156a = 1;
	self.cybercom.var_ff7f4cdd = GetDvarInt("scr_security_breach_lifetime", 30);
	if(self function_1a9006bd("cybercom_securitybreach") == 2)
	{
		self.cybercom.var_ff7f4cdd = GetDvarInt("scr_security_breach_upgraded_lifetime", 60);
	}
	self.cybercom.var_9d8e0758 = &_get_valid_targets;
	self.cybercom.var_c40accd3 = &function_602b28e9;
	self.cybercom.var_73d069a7 = &function_17342509;
	self.cybercom.var_46483c8f = 63;
	self thread cybercom::function_b5f4e597(weapon);
}

/*
	Name: _on_take
	Namespace: namespace_7cb6cd95
	Checksum: 0x815AAC1A
	Offset: 0xD38
	Size: 0x71
	Parameters: 2
	Flags: None
*/
function _on_take(slot, weapon)
{
	self _off(slot, weapon);
	self.cybercom.var_9d8e0758 = undefined;
	self.cybercom.var_c40accd3 = undefined;
	self.cybercom.var_46483c8f = undefined;
	self.cybercom.var_73d069a7 = undefined;
}

/*
	Name: _on_connect
	Namespace: namespace_7cb6cd95
	Checksum: 0x99EC1590
	Offset: 0xDB8
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function _on_connect()
{
}

/*
	Name: function_17342509
	Namespace: namespace_7cb6cd95
	Checksum: 0x773A4088
	Offset: 0xDC8
	Size: 0x4B
	Parameters: 2
	Flags: None
*/
function function_17342509(slot, weapon)
{
	self function_c0c5359e(slot, weapon);
	_on(slot, weapon);
}

/*
	Name: _on
	Namespace: namespace_7cb6cd95
	Checksum: 0x7D4EE75B
	Offset: 0xE20
	Size: 0x53
	Parameters: 2
	Flags: None
*/
function _on(slot, weapon)
{
	self thread function_7c96ae94(slot, weapon);
	self _off(slot, weapon);
}

/*
	Name: _off
	Namespace: namespace_7cb6cd95
	Checksum: 0x28B29453
	Offset: 0xE80
	Size: 0x45
	Parameters: 2
	Flags: None
*/
function _off(slot, weapon)
{
	self thread cybercom::function_d51412df(weapon);
	self.cybercom.var_301030f7 = undefined;
	self notify("hash_8216024");
}

/*
	Name: _is_primed
	Namespace: namespace_7cb6cd95
	Checksum: 0x2635FA08
	Offset: 0xED0
	Size: 0xCB
	Parameters: 2
	Flags: None
*/
function _is_primed(slot, weapon)
{
	if(!(isdefined(self.cybercom.var_301030f7) && self.cybercom.var_301030f7))
	{
		/#
			Assert(self.cybercom.var_2e20c9bd == weapon);
		#/
		self notify("hash_50db7e6");
		self thread cybercom::function_2006f7d0(slot, weapon, self.cybercom.var_110c156a);
		self.cybercom.var_301030f7 = 1;
		self playsoundtoplayer("gdt_securitybreach_target", self);
	}
}

/*
	Name: function_602b28e9
	Namespace: namespace_7cb6cd95
	Checksum: 0x32AF010
	Offset: 0xFA8
	Size: 0x1D3
	Parameters: 1
	Flags: Private
*/
function private function_602b28e9(target)
{
	if(target cybercom::function_8fd8f5b1("cybercom_hijack"))
	{
		if(isdefined(target.var_406cec76) && target.var_406cec76)
		{
			self cybercom::function_29bf9dee(target, 4);
		}
		else
		{
			self cybercom::function_29bf9dee(target, 2);
		}
		return 0;
	}
	if(isdefined(target.lockon_owner) && target.lockon_owner != self)
	{
		self cybercom::function_29bf9dee(target, 7);
		return 0;
	}
	if(isdefined(target.hijacked) && target.hijacked)
	{
		self cybercom::function_29bf9dee(target, 4);
		return 0;
	}
	if(isdefined(target.is_disabled) && target.is_disabled)
	{
		self cybercom::function_29bf9dee(target, 6);
		return 0;
	}
	if(isdefined(target.var_d3f57f67) && target.var_d3f57f67)
	{
		return 0;
	}
	if(!isVehicle(target))
	{
		self cybercom::function_29bf9dee(target, 2);
		return 0;
	}
	return 1;
}

/*
	Name: _get_valid_targets
	Namespace: namespace_7cb6cd95
	Checksum: 0x735FCC3
	Offset: 0x1188
	Size: 0xA1
	Parameters: 1
	Flags: Private
*/
function private _get_valid_targets(weapon)
{
	enemy = ArrayCombine(GetAITeamArray("axis"), GetAITeamArray("team3"), 0, 0);
	ally = GetAITeamArray("allies");
	return ArrayCombine(enemy, ally, 0, 0);
}

/*
	Name: function_7c96ae94
	Namespace: namespace_7cb6cd95
	Checksum: 0x2F866C60
	Offset: 0x1238
	Size: 0x323
	Parameters: 2
	Flags: Private
*/
function private function_7c96ae94(slot, weapon)
{
	aborted = 0;
	fired = 0;
	foreach(item in self.cybercom.var_d1460543)
	{
		if(isdefined(item.target) && (isdefined(item.inRange) && item.inRange))
		{
			if(item.inRange == 1)
			{
				if(!cybercom::function_7a7d1608(item.target, weapon))
				{
					continue;
				}
				self thread challenges::function_96ed590f("cybercom_uses_control");
				item.target thread function_ecfa108e(self, weapon);
				fired++;
				continue;
			}
			if(item.inRange == 2)
			{
				aborted++;
			}
		}
	}
	if(aborted && !fired)
	{
		self.cybercom.var_d1460543 = [];
		self cybercom::function_29bf9dee(undefined, 1, 0);
	}
	if(!aborted && fired)
	{
		upgraded = weapon.name == "gadget_remote_hijack_upgraded";
		if(isdefined(upgraded) && upgraded)
		{
		}
		else
		{
		}
		self playsound("_upgraded" + "");
	}
	cybercom::function_adc40f11(weapon, fired);
	if(fired && isPlayer(self))
	{
		itemIndex = GetItemIndexFromRef("cybercom_hijack");
		if(isdefined(itemIndex))
		{
			self AddDStat("ItemStats", itemIndex, "stats", "kills", "statValue", fired);
			self AddDStat("ItemStats", itemIndex, "stats", "used", "statValue", 1);
		}
	}
}

/*
	Name: function_cc8d5ab0
	Namespace: namespace_7cb6cd95
	Checksum: 0x109F5F2B
	Offset: 0x1568
	Size: 0xEB
	Parameters: 5
	Flags: Private
*/
function private function_cc8d5ab0(player, var_e29c0022, delay, direction, duration)
{
	wait(delay);
	if(direction > 0)
	{
		visionset_mgr::activate("visionset", var_e29c0022, player, duration, 0, 0);
		visionset_mgr::deactivate("visionset", var_e29c0022, player);
	}
	else
	{
		visionset_mgr::activate("visionset", var_e29c0022, player, 0, 0, duration);
		visionset_mgr::deactivate("visionset", var_e29c0022, player);
	}
}

/*
	Name: function_637db461
	Namespace: namespace_7cb6cd95
	Checksum: 0x8A9F6750
	Offset: 0x1660
	Size: 0x81
	Parameters: 2
	Flags: Private
*/
function private function_637db461(player, weapon)
{
	if(isdefined(self.hijacked) && self.hijacked)
	{
		player cybercom::function_29bf9dee(self, 4);
		return 0;
	}
	if(isdefined(self.is_disabled) && self.is_disabled)
	{
		player cybercom::function_29bf9dee(self, 6);
		return 0;
	}
	return 0;
}

/*
	Name: function_ecfa108e
	Namespace: namespace_7cb6cd95
	Checksum: 0x47545DC0
	Offset: 0x16F0
	Size: 0x61B
	Parameters: 2
	Flags: Private
*/
function private function_ecfa108e(player, weapon)
{
	wait(GetDvarFloat("scr_security_breach_activate_delay", 0.5));
	if(!isdefined(self))
	{
		return;
	}
	if(!isVehicle(self))
	{
		return;
	}
	if(player laststand::player_is_in_laststand())
	{
		return;
	}
	if(isdefined(player.cybercom.var_a5aee4b9) && player.cybercom.var_a5aee4b9)
	{
		return;
	}
	if(isdefined(self.PlayerDrivenVersion))
	{
		self SetVehicleType(self.PlayerDrivenVersion);
	}
	var_5ed0c283 = self GetEntityNumber();
	self notify("hash_f8c5dd60", weapon, player);
	self notify("hash_bda2a10e", var_5ed0c283);
	level notify("hash_bda2a10e", var_5ed0c283);
	player GadgetPowerSet(0, 0);
	player GadgetPowerSet(1, 0);
	player GadgetPowerSet(2, 0);
	player cybercom::function_6c141a2d(1);
	if(isai(self) && self.archetype == "quadtank")
	{
		player notify("give_achievement", "CP_CONTROL_QUAD");
	}
	player notify("security_breach", self);
	waittillframeend;
	self notsolid();
	var_66ff806d = self.var_66ff806d;
	clone = function_bda2a10e(self);
	if(!isdefined(clone))
	{
		return;
	}
	clone solid();
	level notify("ClonedEntity", clone, var_5ed0c283);
	player notify("ClonedEntity", clone, var_5ed0c283);
	clone.takedamage = 0;
	clone.hijacked = 1;
	clone.var_a076880e = undefined;
	clone.is_disabled = 1;
	clone.owner = player;
	clone.var_66ff806d = var_66ff806d;
	clone SetTeam(player.team);
	clone.health = clone.healthdefault;
	clone.var_fb7ce72a = &function_637db461;
	if(isdefined(self.var_72f54197))
	{
		clone.var_72f54197 = self.var_72f54197;
	}
	if(isdefined(self.var_b0ac175a))
	{
		clone.var_b0ac175a = self.var_b0ac175a;
	}
	var_d229c1e9 = spawnstruct();
	player function_dc86efaa(var_d229c1e9, "begin");
	if(!isdefined(clone))
	{
		player DisableInvulnerability();
		player cybercom::function_e60e89fe();
		return;
	}
	player.hijacked_vehicle_entity = clone;
	player function_dc86efaa(var_d229c1e9, "cloak");
	clone thread function_3dcfd0d8(GetDvarInt("scr_security_breach_no_damage_time", 8), player);
	if(isdefined(clone.vehicleType) && clone.vehicleType != "turret_sentry")
	{
		clone thread function_4b91c7e5(player, player.origin);
	}
	clone.var_3c5bf47d = 1;
	clone MakeVehicleUsable();
	clone usevehicle(player, 0);
	clone MakeVehicleUnusable();
	player function_dc86efaa(var_d229c1e9, "cloak_wait");
	clone clientfield::set("vehicle_hijacked", 1);
	clone.var_3c5bf47d = undefined;
	clone MakeVehicleUsable();
	clone thread function_7da5b5d4(player);
	player function_dc86efaa(var_d229c1e9, "return_wait");
	visionset_mgr::deactivate("visionset", "hijack_vehicle_blur", player);
	player function_dc86efaa(var_d229c1e9, "finish");
}

/*
	Name: function_dc86efaa
	Namespace: namespace_7cb6cd95
	Checksum: 0x7101DC1
	Offset: 0x1D18
	Size: 0x555
	Parameters: 2
	Flags: None
*/
function function_dc86efaa(var_b6c35df6, str_state)
{
	/#
		Assert(isPlayer(self));
	#/
	player = self;
	switch(str_state)
	{
		case "begin":
		{
			player SetControllerUIModelValue("vehicle.outOfRange", 0);
			player EnableInvulnerability();
			player cybercom::function_6c141a2d(1);
			wait(0.1);
			return;
		}
		case "cloak":
		{
			var_b6c35df6.oldstance = player GetStance();
			var_b6c35df6.var_e29151a8 = player.ignoreme;
			var_b6c35df6.var_d40d5a7d = player.var_1e983b11;
			player.var_1e983b11 = 0;
			player.ignoreme = 1;
			player setClientUIVisibilityFlag("weapon_hud_visible", 0);
			player SetStance("crouch");
			player clientfield::set("camo_shader", 2);
			player thread function_13f4170a(2);
			player thread function_cc8d5ab0(player, "hijack_vehicle", 0.1, 1, 0.1);
			player waittill("hash_e08a6f71");
			player SetLowReady(1);
			visionset_mgr::activate("visionset", "hijack_vehicle_blur", player);
			player Hide();
			player notsolid();
			player SetPlayerCollision(0);
			player clientfield::set("camo_shader", 1);
			player clientfield::set_to_player("sndInDrivableVehicle", 1);
			player player::take_weapons();
			return;
		}
		case "cloak_wait":
		{
			player waittill("transition_done");
			player clientfield::set_to_player("vehicle_hijacked", 1);
			return "return_wait";
		}
		case "return_wait":
		{
			player waittill("hash_c68b15c8");
			player player::give_back_weapons(1);
			player SetEverHadWeaponAll(1);
			player thread function_cc8d5ab0(player, "hijack_vehicle", 0, -1, 0.1);
			return;
		}
		case "finish":
		{
			player show();
			player solid();
			player SetPlayerCollision(1);
			player SetStance(var_b6c35df6.oldstance);
			player SetLowReady(0);
			player.var_1e983b11 = var_b6c35df6.var_d40d5a7d;
			player waittill("transition_done");
			player SetEverHadWeaponAll(0);
			player clientfield::set_to_player("vehicle_hijacked", 0);
			player clientfield::set_to_player("sndInDrivableVehicle", 0);
			player.hijacked_vehicle_entity = undefined;
			player DisableInvulnerability();
			player.ignoreme = 0;
			player setClientUIVisibilityFlag("weapon_hud_visible", 1);
			player cybercom::function_e60e89fe();
			wait(1);
			player clientfield::set("camo_shader", 0);
			player notify("hash_54dae2cc");
			return;
		}
	}
}

/*
	Name: function_13f4170a
	Namespace: namespace_7cb6cd95
	Checksum: 0x117CDE52
	Offset: 0x2278
	Size: 0xAB
	Parameters: 1
	Flags: None
*/
function function_13f4170a(direction)
{
	self endon("death");
	self notify("hash_13f4170a");
	self endon("hash_13f4170a");
	self clientfield::set_to_player("hijack_vehicle_transition", direction);
	util::wait_network_frame();
	self notify("hash_e08a6f71");
	wait(0.2);
	wait(0.2);
	self notify("transition_done");
	self clientfield::set_to_player("hijack_vehicle_transition", 1);
}

/*
	Name: function_6c745562
	Namespace: namespace_7cb6cd95
	Checksum: 0xBC21C0C5
	Offset: 0x2330
	Size: 0x143
	Parameters: 1
	Flags: None
*/
function function_6c745562(ent)
{
	function_1233641();
	if(isdefined(ent) && isPlayer(self))
	{
		self.cybercom.var_98ef0723 = ent;
		if(isdefined(ent.script_parameters))
		{
			data = StrTok(ent.script_parameters, " ");
			/#
				Assert(data.size == 2);
			#/
			self.cybercom.var_303442d8 = Int(data[0]) * Int(data[0]);
			self.cybercom.var_e613305a = Int(data[1]) * Int(data[1]);
		}
	}
}

/*
	Name: function_1233641
	Namespace: namespace_7cb6cd95
	Checksum: 0x7B230C7B
	Offset: 0x2480
	Size: 0x31
	Parameters: 0
	Flags: None
*/
function function_1233641()
{
	self.cybercom.var_98ef0723 = undefined;
	self.cybercom.var_303442d8 = undefined;
	self.cybercom.var_e613305a = undefined;
}

/*
	Name: function_4b91c7e5
	Namespace: namespace_7cb6cd95
	Checksum: 0xF0189EF0
	Offset: 0x24C0
	Size: 0x40F
	Parameters: 2
	Flags: Private
*/
function private function_4b91c7e5(player, anchor)
{
	self endon("death");
	player endon("hash_c68b15c8");
	player endon("hash_ac145594");
	player endon("disconnect");
	player waittill("transition_done");
	wait(0.1);
	var_7c5f9b37 = 0.95;
	var_af9c49a8 = undefined;
	while(1)
	{
		distcheck = 1;
		var_21793546 = GetDvarInt("scr_security_breach_lose_contact_distanceSQ", GetDvarInt("scr_security_breach_lose_contact_distance", 1200) * GetDvarInt("scr_security_breach_lose_contact_distance", 1200));
		var_60408929 = GetDvarInt("scr_security_breach_lost_contact_distanceSQ", GetDvarInt("scr_security_breach_lost_contact_distance", 2400) * GetDvarInt("scr_security_breach_lost_contact_distance", 2400));
		if(isdefined(player.cybercom.var_98ef0723))
		{
			if(isdefined(player.cybercom.var_303442d8))
			{
				var_21793546 = player.cybercom.var_303442d8;
				var_60408929 = player.cybercom.var_e613305a;
			}
			if(self istouching(player.cybercom.var_98ef0723))
			{
				VAL = 0;
				distanceSq = 0;
				distcheck = 0;
			}
		}
		if(self.archetype === "turret")
		{
			VAL = 0;
			distanceSq = 0;
			distcheck = 0;
		}
		if(distcheck)
		{
			distanceSq = DistanceSquared(self.origin, anchor);
			if(distanceSq < var_21793546)
			{
				VAL = 0;
			}
			else if(distanceSq >= var_60408929)
			{
				VAL = var_7c5f9b37;
			}
			else
			{
				range = var_60408929 - var_21793546;
				VAL = math::clamp(distanceSq - var_21793546 / range, 0, var_7c5f9b37);
			}
			var_5ae22608 = distanceSq >= GetDvarFloat("scr_security_breach_lost_contact_warning_distance_percent", 0.6) * var_60408929;
			if(var_5ae22608 !== var_af9c49a8)
			{
				player SetControllerUIModelValue("vehicle.outOfRange", var_5ae22608);
				var_af9c49a8 = var_5ae22608;
			}
		}
		player clientfield::set_to_player("hijack_static_effect", VAL);
		if(distanceSq > var_60408929)
		{
			self SetTeam("axis");
			self.takedamage = 1;
			self.owner = undefined;
			self.var_ffe1e6db = 1;
			if(isdefined(player))
			{
				self kill(self.origin, player);
			}
			else
			{
				self kill();
			}
		}
		wait(0.05);
	}
}

/*
	Name: function_3dcfd0d8
	Namespace: namespace_7cb6cd95
	Checksum: 0xC1EE1FE1
	Offset: 0x28D8
	Size: 0x6B
	Parameters: 2
	Flags: Private
*/
function private function_3dcfd0d8(time, player)
{
	self endon("death");
	self.takedamage = 0;
	player util::waittill_any_timeout(time, "return_to_body");
	self.takedamage = !IsGodMode(player);
}

/*
	Name: function_6adcb22e
	Namespace: namespace_7cb6cd95
	Checksum: 0x115576B7
	Offset: 0x2950
	Size: 0x193
	Parameters: 1
	Flags: Private
*/
function private function_6adcb22e(vehicle)
{
	self endon("spawned");
	self util::freeze_player_controls(1);
	self clientfield::set_to_player("hijack_static_ramp_up", 1);
	if(isdefined(vehicle.archetype) && vehicle.archetype == "wasp" && (!isdefined(vehicle.var_66ff806d) && vehicle.var_66ff806d))
	{
		self thread function_5d471974(vehicle);
	}
	else
	{
		self clientfield::set_to_player("hijack_spectate", 1);
	}
	self CameraActivate(1);
	self waittill("hash_e08a6f71");
	self clientfield::set_to_player("hijack_static_ramp_up", 0);
	self CameraActivate(0);
	self clientfield::set_to_player("hijack_spectate", 0);
	self clientfield::set_to_player("hijack_static_effect", 0);
	self util::freeze_player_controls(0);
}

/*
	Name: function_5d471974
	Namespace: namespace_7cb6cd95
	Checksum: 0x884DAC14
	Offset: 0x2AF0
	Size: 0x21B
	Parameters: 1
	Flags: Private
*/
function private function_5d471974(vehicle)
{
	FORWARD = AnglesToForward(vehicle.angles);
	moveAmount = VectorScale(FORWARD, -200);
	moveAmount = (moveAmount[0], moveAmount[1], vehicle.origin[2] + 72);
	cam = spawn("script_model", vehicle.origin + moveAmount);
	cam SetModel("tag_origin");
	if(!(isdefined(vehicle.crash_style) && vehicle.crash_style))
	{
		cam LinkTo(vehicle, "tag_origin");
	}
	self StartCameraTween(1);
	origin = vehicle.origin;
	wait(0.05);
	self CameraSetPosition(cam);
	if(isdefined(vehicle))
	{
		self CameraSetLookAt(vehicle);
	}
	else
	{
		self CameraSetLookAt(origin + VectorScale((0, 0, 1), 50));
	}
	self util::waittill_any("transition_in_do_switch", "spawned", "disconnect", "death", "return_to_body");
	cam delete();
}

/*
	Name: function_1a1b4f00
	Namespace: namespace_7cb6cd95
	Checksum: 0x6D9B32E1
	Offset: 0x2D18
	Size: 0xA7
	Parameters: 1
	Flags: Private
*/
function private function_1a1b4f00(player)
{
	player endon("hash_c68b15c8");
	self waittill("death");
	player thread function_6adcb22e(self);
	wait(3);
	player notify("hash_ac145594");
	player thread function_13f4170a(3);
	player waittill("hash_e08a6f71");
	waittillframeend;
	player Unlink();
	player notify("hash_c68b15c8", 1);
}

/*
	Name: function_5c5ecd44
	Namespace: namespace_7cb6cd95
	Checksum: 0xDCC93333
	Offset: 0x2DC8
	Size: 0x10B
	Parameters: 1
	Flags: Private
*/
function private function_5c5ecd44(player)
{
	self endon("death");
	player endon("hash_c68b15c8");
	self util::waittill_any("unlink", "exit_vehicle");
	if(game["state"] == "postgame" || (isdefined(level.gameEnded) && level.gameEnded))
	{
		return;
	}
	self SetTeam("axis");
	self.takedamage = 1;
	self.owner = undefined;
	if(isdefined(player))
	{
		self kill(self.origin, player, player, GetWeapon("gadget_remote_hijack"));
	}
	else
	{
		self kill();
	}
}

/*
	Name: function_7da5b5d4
	Namespace: namespace_7cb6cd95
	Checksum: 0x99F3E9A8
	Offset: 0x2EE0
	Size: 0x191
	Parameters: 1
	Flags: Private
*/
function private function_7da5b5d4(player)
{
	self thread function_1a1b4f00(player);
	self thread function_5c5ecd44(player);
	original_location = player.origin;
	original_angles = player.angles;
	player.cybercom.var_3fd69aad = 1;
	self.vehdontejectoccupantsondeath = 1;
	player waittill("hash_c68b15c8", reason);
	wait(0.05);
	player SetOrigin(original_location);
	player SetPlayerAngles(original_angles);
	wait(0.05);
	if(isdefined(self))
	{
		self SetTeam("axis");
		self.takedamage = 1;
		self.owner = undefined;
		if(isdefined(player))
		{
			self kill(self.origin, player);
		}
		else
		{
			self kill();
		}
	}
	player.cybercom.var_3fd69aad = undefined;
}

/*
	Name: clearUsingRemote
	Namespace: namespace_7cb6cd95
	Checksum: 0x57D06F1D
	Offset: 0x3080
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function clearUsingRemote()
{
	self EnableOffhandWeapons();
	if(isdefined(self.lastWeapon))
	{
		self SwitchToWeapon(self.lastWeapon);
		wait(1);
	}
	self TakeWeapon(self.remoteWeapon);
}

/*
	Name: setUsingRemote
	Namespace: namespace_7cb6cd95
	Checksum: 0xB9E63F93
	Offset: 0x30F0
	Size: 0xA3
	Parameters: 1
	Flags: None
*/
function setUsingRemote(remoteName)
{
	self.lastWeapon = self GetCurrentWeapon();
	self.remoteWeapon = GetWeapon(remoteName);
	self GiveWeapon(self.remoteWeapon);
	self SwitchToWeapon(self.remoteWeapon);
	self disableOffhandWeapons();
}

/*
	Name: function_43b801ea
	Namespace: namespace_7cb6cd95
	Checksum: 0x82C09A7B
	Offset: 0x31A0
	Size: 0x65
	Parameters: 2
	Flags: None
*/
function function_43b801ea(onOff, entnum)
{
	while(1)
	{
		level waittill("ClonedEntity", clone, var_5ed0c283);
		if(var_5ed0c283 == entnum)
		{
			clone.var_66ff806d = onOff;
			return;
		}
	}
}

/*
	Name: function_f002d0f9
	Namespace: namespace_7cb6cd95
	Checksum: 0xC8D290A7
	Offset: 0x3210
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_f002d0f9()
{
	self endon("death");
	self waittill("hash_bda2a10e", var_3c0fc0de);
	level thread function_43b801ea(0, var_3c0fc0de);
}

/*
	Name: function_664c9cd6
	Namespace: namespace_7cb6cd95
	Checksum: 0x635D22C4
	Offset: 0x3260
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_664c9cd6()
{
	self SetTeam("axis");
	self.takedamage = 1;
	self.owner = undefined;
	self DoDamage(self.health, self.origin);
}

