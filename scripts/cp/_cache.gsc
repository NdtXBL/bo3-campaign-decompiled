#using scripts\cp\_skipto;
#using scripts\shared\array_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\system_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;
#using scripts\shared\weapons_shared;

#namespace cache;

/*
	Name: __init__sytem__
	Namespace: cache
	Checksum: 0x6F879FC8
	Offset: 0x2E0
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__sytem__()
{
	system::register("cache", &__init__, undefined, undefined);
}

/*
	Name: __init__
	Namespace: cache
	Checksum: 0x1DFCDC5A
	Offset: 0x320
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function __init__()
{
	a_ammo_crates = GetEntArray("sys_ammo_cache", "targetname");
	Array::thread_all(a_ammo_crates, &_setup_ammo_cache);
	a_weapon_crates = GetEntArray("sys_weapon_cache", "targetname");
	Array::thread_all(a_weapon_crates, &_setup_weapon_cache);
}

/*
	Name: _setup_ammo_cache
	Namespace: cache
	Checksum: 0xF33394BE
	Offset: 0x3D0
	Size: 0x7F
	Parameters: 0
	Flags: None
*/
function _setup_ammo_cache()
{
	util::waittill_asset_loaded("xmodel", self.model);
	self thread _ammo_refill_think();
	if(isdefined(level._ammo_refill_think_alt))
	{
		self thread [[level._ammo_refill_think_alt]]();
	}
}

/*
	Name: _setup_weapon_cache
	Namespace: cache
	Checksum: 0x95AF93A6
	Offset: 0x458
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function _setup_weapon_cache()
{
	util::waittill_asset_loaded("xmodel", self.model);
	level flag::wait_till("all_players_connected");
	self thread _place_player_loadout();
	self thread _check_extra_slots();
}

/*
	Name: _ammo_refill_think
	Namespace: cache
	Checksum: 0x6DB1BECD
	Offset: 0x4D8
	Size: 0x25F
	Parameters: 0
	Flags: None
*/
function _ammo_refill_think()
{
	self endon("disable_ammo_cache");
	t_ammo_cache = self _get_closest_ammo_trigger();
	if(isdefined(t_ammo_cache.script_string) && t_ammo_cache.script_string == "no_grenade")
	{
		t_ammo_cache.no_grenade = 1;
	}
	t_ammo_cache setHintString(&"SCRIPT_AMMO_REFILL");
	t_ammo_cache setcursorhint("HINT_NOICON");
	while(1)
	{
		t_ammo_cache waittill("trigger", e_player);
		e_player DisableWeapons();
		e_player playsound("fly_ammo_crate_refill");
		wait(2);
		a_weapons = e_player GetWeaponsList();
		foreach(weapon in a_weapons)
		{
			if(isdefined(t_ammo_cache.no_grenade) && t_ammo_cache.no_grenade && weapons::is_grenade(weapon))
			{
				continue;
				continue;
			}
			e_player giveMaxAmmo(weapon);
			e_player SetWeaponAmmoClip(weapon, weapon.clipSize);
		}
		e_player enableWeapons();
		e_player notify("ammo_refilled");
	}
}

/*
	Name: _get_closest_ammo_trigger
	Namespace: cache
	Checksum: 0xC914FB1
	Offset: 0x740
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function _get_closest_ammo_trigger()
{
	a_ammo_cache = GetEntArray("trigger_ammo_cache", "targetname");
	t_ammo_cache = ArrayGetClosest(self.origin, a_ammo_cache);
	return t_ammo_cache;
}

/*
	Name: _place_player_loadout
	Namespace: cache
	Checksum: 0xE3EFF64D
	Offset: 0x7A8
	Size: 0x587
	Parameters: 0
	Flags: None
*/
function _place_player_loadout()
{
	var_9a9860c6 = level.players[0] GetLoadoutWeapon(0, "primary");
	var_bb78fd0e = level.players[0] GetLoadoutWeapon(0, "secondary");
	v_basic_offset = (-5, 0, 15);
	v_full_offset = (-10, 0, 15);
	v_model_offset = VectorScale((0, 0, 1), 15);
	n_offset_multiplier = 0;
	var_42ec473e = var_9a9860c6.rootweapon;
	if(var_42ec473e != level.weaponNull && IsAssetLoaded("weapon", var_42ec473e.name))
	{
		primary_weapon_pos = self GetTagOrigin("loadOut_B");
		tmp_offset = AnglesToRight(self GetTagAngles("loadOut_B")) * n_offset_multiplier;
		m_weapon_script_model = spawn("weapon_" + var_9a9860c6.name + level.game_mode_suffix, primary_weapon_pos + tmp_offset + v_model_offset, 8);
		m_weapon_script_model.angles = self GetTagAngles("loadOut_B") + VectorScale((0, -1, 0), 90);
	}
	else if(IsAssetLoaded("weapon", "hk416" + level.game_mode_suffix))
	{
		primary_weapon_pos = self GetTagOrigin("loadOut_B");
		tmp_offset = AnglesToRight(self GetTagAngles("loadOut_B")) * n_offset_multiplier;
		m_weapon_script_model = spawn("weapon_" + "ar_standard" + level.game_mode_suffix, primary_weapon_pos + tmp_offset + v_model_offset, 8);
		m_weapon_script_model.angles = self GetTagAngles("loadOut_B") + VectorScale((0, -1, 0), 90);
	}
	switch(self.model)
	{
		case "p6_weapon_resupply_future_01":
		case "p6_weapon_resupply_future_02":
		{
			n_offset_multiplier = -3;
			break;
		}
		case default:
		{
			n_offset_multiplier = -4;
			break;
		}
	}
	var_50e503e6 = var_bb78fd0e.rootweapon;
	if(var_50e503e6 != level.weaponNull && IsAssetLoaded("weapon", var_50e503e6.name))
	{
		secondary_weapon_pos = self GetTagOrigin("loadOut_A");
		tmp_offset = AnglesToRight(self GetTagAngles("loadOut_A")) * n_offset_multiplier;
		m_weapon_script_model = spawn("weapon_" + var_bb78fd0e + level.game_mode_suffix, secondary_weapon_pos + tmp_offset + v_model_offset, 8);
		m_weapon_script_model.angles = self GetTagAngles("loadOut_A") + VectorScale((0, -1, 0), 90);
	}
	else if(IsAssetLoaded("weapon", "smg_fastfire" + level.game_mode_suffix))
	{
		secondary_weapon_pos = self GetTagOrigin("loadOut_A");
		tmp_offset = AnglesToRight(self GetTagAngles("loadOut_A")) * n_offset_multiplier;
		m_weapon_script_model = spawn("weapon_" + "smg_fastfire" + level.game_mode_suffix, secondary_weapon_pos + tmp_offset + v_model_offset, 8);
		m_weapon_script_model.angles = self GetTagAngles("loadOut_A") + VectorScale((0, -1, 0), 90);
	}
}

/*
	Name: _check_extra_slots
	Namespace: cache
	Checksum: 0xC6864B5
	Offset: 0xD38
	Size: 0x283
	Parameters: 0
	Flags: None
*/
function _check_extra_slots()
{
	if(isdefined(self.ac_slot1))
	{
		auxilary_weapon_pos = self GetTagOrigin("auxilary_A");
		/#
			Assert(isdefined(auxilary_weapon_pos), "Dev Block strings are not supported");
		#/
		switch(self.model)
		{
			case default:
			{
				tmp_offset = AnglesToRight(self GetTagAngles("auxilary_A")) * 5;
				break;
			}
		}
		m_weapon_script_model = spawn("weapon_" + self.ac_slot1 + level.game_mode_suffix, auxilary_weapon_pos + tmp_offset + VectorScale((0, 0, 1), 10), 8);
		m_weapon_script_model.angles = self GetTagAngles("auxilary_A") + VectorScale((0, -1, 0), 90);
		m_weapon_script_model ItemWeaponSetAmmo(9999, 9999);
	}
	if(isdefined(self.ac_slot2))
	{
		auxilary_weapon_pos = self GetTagOrigin("secondary_A");
		/#
			Assert(isdefined(auxilary_weapon_pos), "Dev Block strings are not supported");
		#/
		tmp_offset = AnglesToForward(self GetTagAngles("secondary_A")) * 10;
		m_weapon_script_model = spawn("weapon_" + self.ac_slot2 + level.game_mode_suffix, auxilary_weapon_pos + tmp_offset + VectorScale((0, 0, 1), 10), 8);
		m_weapon_script_model.angles = self GetTagAngles("secondary_A");
		m_weapon_script_model ItemWeaponSetAmmo(9999, 9999);
	}
}

/*
	Name: _debug_tags
	Namespace: cache
	Checksum: 0x1AA4595D
	Offset: 0xFC8
	Size: 0x141
	Parameters: 0
	Flags: None
*/
function _debug_tags()
{
	/#
		tag_array = [];
		tag_array[tag_array.size] = "Dev Block strings are not supported";
		tag_array[tag_array.size] = "Dev Block strings are not supported";
		tag_array[tag_array.size] = "Dev Block strings are not supported";
		tag_array[tag_array.size] = "Dev Block strings are not supported";
		tag_array[tag_array.size] = "Dev Block strings are not supported";
		tag_array[tag_array.size] = "Dev Block strings are not supported";
		tag_array[tag_array.size] = "Dev Block strings are not supported";
		tag_array[tag_array.size] = "Dev Block strings are not supported";
		foreach(tag in tag_array)
		{
			self thread _loop_text(tag);
		}
	#/
}

/*
	Name: _loop_text
	Namespace: cache
	Checksum: 0x7A265192
	Offset: 0x1118
	Size: 0x7F
	Parameters: 1
	Flags: None
*/
function _loop_text(tag)
{
	/#
		while(1)
		{
			if(isdefined(self GetTagOrigin(tag)))
			{
				print3d(self GetTagOrigin(tag), tag, (1, 1, 1), 1, 0.15);
			}
			wait(0.05);
		}
	#/
}

/*
	Name: disable_ammo_cache
	Namespace: cache
	Checksum: 0xC3CFCD6
	Offset: 0x11A0
	Size: 0x103
	Parameters: 1
	Flags: None
*/
function disable_ammo_cache(str_ammo_cache_id)
{
	a_ammo_cache = GetEntArray(str_ammo_cache_id, "script_noteworthy");
	/#
		Assert(isdefined(a_ammo_cache), "Dev Block strings are not supported" + str_ammo_cache_id + "Dev Block strings are not supported");
	#/
	if(a_ammo_cache.size > 1)
	{
		/#
			ASSERTMSG("Dev Block strings are not supported" + str_ammo_cache_id + "Dev Block strings are not supported");
		#/
	}
	a_ammo_cache[0] notify("disable_ammo_cache");
	t_ammo_cache = a_ammo_cache[0] _get_closest_ammo_trigger();
	t_ammo_cache TriggerEnable(0);
}

/*
	Name: activate_extra_slot
	Namespace: cache
	Checksum: 0xC2C88761
	Offset: 0x12B0
	Size: 0x2DB
	Parameters: 2
	Flags: None
*/
function activate_extra_slot(n_slot_number, w_weapon)
{
	if(n_slot_number < 1 || n_slot_number > 2)
	{
		/#
			ASSERTMSG("Dev Block strings are not supported");
		#/
	}
	/#
		Assert(isdefined(w_weapon), "Dev Block strings are not supported");
	#/
	if(n_slot_number == 1)
	{
		auxilary_weapon_pos = self GetTagOrigin("auxilary_A");
		/#
			Assert(isdefined(auxilary_weapon_pos), "Dev Block strings are not supported");
		#/
		tmp_offset = AnglesToRight(self GetTagAngles("auxilary_A")) * 5;
		m_weapon_script_model = spawn("weapon_" + w_weapon.name + level.game_mode_suffix, auxilary_weapon_pos + tmp_offset + VectorScale((0, 0, 1), 10), 8);
		m_weapon_script_model.angles = self GetTagAngles("auxilary_A") + VectorScale((0, -1, 0), 90);
		m_weapon_script_model ItemWeaponSetAmmo(9999, 9999);
	}
	if(n_slot_number == 2)
	{
		auxilary_weapon_pos = self GetTagOrigin("secondary_A");
		/#
			Assert(isdefined(auxilary_weapon_pos), "Dev Block strings are not supported");
		#/
		tmp_offset = AnglesToForward(self GetTagAngles("secondary_A")) * 7;
		m_weapon_script_model = spawn("weapon_" + w_weapon.name + level.game_mode_suffix, auxilary_weapon_pos + tmp_offset + VectorScale((0, 0, 1), 10), 8);
		m_weapon_script_model.angles = self GetTagAngles("secondary_A");
		m_weapon_script_model ItemWeaponSetAmmo(9999, 9999);
	}
}

/*
	Name: cleanup_cache
	Namespace: cache
	Checksum: 0x4FB6A4FD
	Offset: 0x1598
	Size: 0x233
	Parameters: 0
	Flags: None
*/
function cleanup_cache()
{
	if(IsSubStr(self.model, "p6_weapon_"))
	{
		a_weapons_list = [];
		a_item_list = GetItemArray();
		foreach(item in a_item_list)
		{
			if(IsSubStr(item.classname, "weapon_"))
			{
				a_weapons_list[a_weapons_list.size] = item;
			}
		}
		n_weapon_counter = 2;
		if(isdefined(self.ac_slot1))
		{
			n_weapon_counter++;
		}
		if(isdefined(self.ac_slot2))
		{
			n_weapon_counter++;
		}
		for(x = 0; x < n_weapon_counter; x++)
		{
			e_closest_weapon = ArrayGetClosest(self.origin, a_weapons_list, 50);
			if(isdefined(e_closest_weapon))
			{
				e_closest_weapon delete();
			}
		}
		self delete();
	}
	else
	{
		self notify("disable_ammo_cache");
		t_ammo_trigger = _get_closest_ammo_trigger();
		if(isdefined(t_ammo_trigger))
		{
			t_ammo_trigger delete();
		}
		self delete();
	}
}

