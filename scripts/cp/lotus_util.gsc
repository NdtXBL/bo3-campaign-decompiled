#using scripts\codescripts\struct;
#using scripts\cp\_objectives;
#using scripts\cp\_oed;
#using scripts\cp\_util;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\fx_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\visionset_mgr_shared;

#namespace namespace_431cac9;

/*
	Name: function_3b6587d6
	Namespace: namespace_431cac9
	Checksum: 0xFCD93818
	Offset: 0xBF0
	Size: 0xCB
	Parameters: 2
	Flags: None
*/
function function_3b6587d6(b_on, str_name)
{
	var_cecf22e2 = GetEnt(str_name + "_switch", "targetname");
	if(b_on)
	{
		var_cecf22e2 show();
		var_cecf22e2 solid();
	}
	else
	{
		var_cecf22e2 ghost();
		var_cecf22e2 notsolid();
	}
	function_bab1ff00(str_name, !b_on);
}

/*
	Name: function_b26ca094
	Namespace: namespace_431cac9
	Checksum: 0xD3D6D725
	Offset: 0xCC8
	Size: 0x917
	Parameters: 6
	Flags: None
*/
function function_b26ca094(var_959da48b, var_59dc7746, var_f70ba7ec, var_e4075f18, var_b77c8968, var_1e2eebb8)
{
	if(!isdefined(var_59dc7746))
	{
		var_59dc7746 = 0;
	}
	if(!isdefined(var_f70ba7ec))
	{
		var_f70ba7ec = 0;
	}
	if(!isdefined(var_e4075f18))
	{
		var_e4075f18 = 0;
	}
	if(!isdefined(var_1e2eebb8))
	{
		var_1e2eebb8 = 0;
	}
	var_aa7aca48 = GetEntArray(var_959da48b, "groupname");
	if(IsArray(var_aa7aca48) && var_aa7aca48.size >= 3)
	{
		/#
			println("Dev Block strings are not supported");
		#/
	}
	a_destructibles = [];
	a_models = [];
	a_weapons = [];
	foreach(var_6f05825 in var_aa7aca48)
	{
		if(var_6f05825.classname == "script_brushmodel")
		{
			if(var_6f05825.targetname === "mobile_destructible")
			{
				if(isdefined(var_6f05825.a_destructibles) && var_6f05825.a_destructibles.size > 0)
				{
					var_6f05825.a_destructibles = Array::remove_undefined(var_6f05825.a_destructibles);
				}
				var_6f05825 thread function_cdf9cde7();
				if(!isdefined(a_destructibles))
				{
					a_destructibles = [];
				}
				else if(!IsArray(a_destructibles))
				{
					a_destructibles = Array(a_destructibles);
				}
				a_destructibles[a_destructibles.size] = var_6f05825;
			}
			else if(isdefined(var_6f05825.var_75cccf1) && var_6f05825.var_75cccf1.size > 0)
			{
				var_6f05825.var_75cccf1 = Array::remove_undefined(var_6f05825.var_75cccf1);
			}
			var_f9a1ddd6 = var_6f05825;
			continue;
		}
		if(var_6f05825.classname == "script_model")
		{
			if(var_6f05825.targetname === "mobile_weapon")
			{
				if(isdefined(var_6f05825.a_weapons) && var_6f05825.a_weapons.size > 0)
				{
					var_6f05825.a_weapons = Array::remove_undefined(var_6f05825.a_weapons);
				}
				var_6f05825 Hide();
				if(!isdefined(a_weapons))
				{
					a_weapons = [];
				}
				else if(!IsArray(a_weapons))
				{
					a_weapons = Array(a_weapons);
				}
				a_weapons[a_weapons.size] = var_6f05825;
				continue;
			}
			if(isdefined(var_6f05825.a_models) && var_6f05825.a_models.size > 0 && var_6f05825.targetname != "minigun_auto")
			{
				var_6f05825.a_models = Array::remove_undefined(var_6f05825.a_models);
			}
			if(!isdefined(a_models))
			{
				a_models = [];
			}
			else if(!IsArray(a_models))
			{
				a_models = Array(a_models);
			}
			a_models[a_models.size] = var_6f05825;
		}
	}
	ArrayRemoveValue(var_aa7aca48, var_f9a1ddd6);
	var_aa7aca48 = Array::exclude(var_aa7aca48, a_destructibles);
	var_aa7aca48 = Array::exclude(var_aa7aca48, a_models);
	var_aa7aca48 = Array::exclude(var_aa7aca48, a_weapons);
	var_f9a1ddd6.a_destructibles = a_destructibles;
	var_f9a1ddd6.a_models = a_models;
	var_f9a1ddd6.a_weapons = a_weapons;
	var_d199cd64 = ArrayCombine(a_destructibles, a_models, 0, 0);
	var_d199cd64 = ArrayCombine(var_d199cd64, a_weapons, 0, 0);
	foreach(var_f00752c0 in var_d199cd64)
	{
		var_f00752c0 LinkTo(var_f9a1ddd6);
	}
	if(isdefined(var_59dc7746) && var_59dc7746)
	{
		foreach(var_e28769a6 in var_aa7aca48)
		{
			if(isdefined(var_e4075f18) && var_e4075f18)
			{
				if(var_e28769a6.model != "wpn_t7_mingun_world")
				{
					if(!isdefined(var_b77c8968))
					{
						var_83f53318 = util::spawn_model("wpn_t7_mingun_world", var_e28769a6.origin, var_e28769a6.angles);
					}
					else
					{
						var_83f53318 = util::spawn_model(var_b77c8968, var_e28769a6.origin, var_e28769a6.angles);
					}
				}
				else
				{
					var_83f53318 = var_e28769a6;
				}
			}
			else
			{
				var_83f53318 = spawner::simple_spawn_single(var_e28769a6);
				if(isdefined(var_f70ba7ec) && var_f70ba7ec)
				{
					var_83f53318 vehicle_ai::turnoff();
				}
			}
			var_83f53318 LinkTo(var_f9a1ddd6);
			if(isdefined(var_1e2eebb8) && var_1e2eebb8)
			{
				var_83f53318 Hide();
			}
			else
			{
				var_409f4c83 = var_83f53318 function_c7b0a169(var_e4075f18, var_1e2eebb8);
				var_409f4c83 LinkTo(var_f9a1ddd6);
			}
			if(!isdefined(var_f9a1ddd6.var_75cccf1))
			{
				var_f9a1ddd6.var_75cccf1 = [];
			}
			if(!isdefined(var_f9a1ddd6.var_75cccf1))
			{
				var_f9a1ddd6.var_75cccf1 = [];
			}
			else if(!IsArray(var_f9a1ddd6.var_75cccf1))
			{
				var_f9a1ddd6.var_75cccf1 = Array(var_f9a1ddd6.var_75cccf1);
			}
			var_f9a1ddd6.var_75cccf1[var_f9a1ddd6.var_75cccf1.size] = var_83f53318;
		}
	}
	return var_f9a1ddd6;
}

/*
	Name: function_bc5f7909
	Namespace: namespace_431cac9
	Checksum: 0x13B4FA5E
	Offset: 0x15E8
	Size: 0x117
	Parameters: 1
	Flags: None
*/
function function_bc5f7909(str_weapon)
{
	self show();
	self namespace_16f9ecd3::function_e228c18a(1);
	var_1c023cce = spawn("trigger_radius_use", self.origin);
	var_1c023cce TriggerIgnoreTeam();
	var_1c023cce setHintString(&"CP_MI_CAIRO_LOTUS_GRAB_SMAW");
	var_1c023cce setcursorhint("HINT_NOICON");
	var_1c023cce EnableLinkTo();
	var_1c023cce.targetname = "trig_weapon";
	self.var_1c023cce = var_1c023cce;
	self thread function_d2eba93d(var_1c023cce, str_weapon);
	return var_1c023cce;
}

/*
	Name: function_d2eba93d
	Namespace: namespace_431cac9
	Checksum: 0xA37EE54E
	Offset: 0x1708
	Size: 0x149
	Parameters: 2
	Flags: None
*/
function function_d2eba93d(var_1c023cce, str_weapon)
{
	self endon("death");
	self thread function_951a5eb();
	var_1c023cce waittill("trigger", player);
	w_weapon = GetWeapon(str_weapon);
	var_d25074b5 = w_weapon.clipSize + w_weapon.maxAmmo;
	n_ammo = player getammocount(w_weapon);
	if(player HasWeapon(w_weapon) && n_ammo >= var_d25074b5)
	{
		self thread function_d2eba93d(var_1c023cce, str_weapon);
		return;
	}
	var_1c023cce delete();
	player thread function_73647b0a(str_weapon);
	self notify("hash_951a5eb");
}

/*
	Name: function_951a5eb
	Namespace: namespace_431cac9
	Checksum: 0x36B4DC1
	Offset: 0x1860
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_951a5eb()
{
	self endon("death");
	self waittill("hash_951a5eb");
	self Hide();
	if(isdefined(self.var_1c023cce))
	{
		self.var_1c023cce delete();
	}
}

/*
	Name: function_73647b0a
	Namespace: namespace_431cac9
	Checksum: 0xCC277EF9
	Offset: 0x18C8
	Size: 0xEB
	Parameters: 1
	Flags: None
*/
function function_73647b0a(str_weapon)
{
	self endon("death");
	w_weapon = GetWeapon(str_weapon);
	if(self HasWeapon(w_weapon))
	{
		self giveMaxAmmo(w_weapon);
		self SetWeaponAmmoClip(w_weapon, w_weapon.clipSize);
	}
	else
	{
		self GiveWeapon(w_weapon);
		self SwitchToWeapon(w_weapon);
		self notify("hash_ce6dc32f");
		self thread function_d3cb8a55();
	}
}

/*
	Name: function_d3cb8a55
	Namespace: namespace_431cac9
	Checksum: 0x4DA66FE7
	Offset: 0x19C0
	Size: 0x201
	Parameters: 0
	Flags: None
*/
function function_d3cb8a55()
{
	self notify("hash_b729e030");
	self endon("hash_b729e030");
	self endon("death");
	var_67aa166f = 0;
	var_90911853 = GetWeapon("launcher_standard");
	var_3c3fc8a8 = GetWeapon("minigun_lotus");
	self.var_271f03e = 0;
	while(self HasWeapon(var_90911853, 1))
	{
		self waittill("weapon_fired");
		if(!level flag::get("gunship_high_out_of_battle"))
		{
			if(self GetCurrentWeapon() == var_90911853 && self getammocount(var_90911853) > 0)
			{
				self.var_271f03e = 0;
			}
			if(self GetCurrentWeapon() != var_90911853 && self GetCurrentWeapon() != var_3c3fc8a8 && self getammocount(var_90911853) > 0)
			{
				self.var_271f03e = self.var_271f03e + 1;
			}
			if(self.var_271f03e >= 10)
			{
				self util::show_hint_text(&"COOP_EQUIP_XM53", 0);
				var_67aa166f = var_67aa166f + 1;
				self.var_271f03e = 0;
				wait(10);
				if(var_67aa166f >= 3)
				{
					return;
				}
			}
		}
	}
}

/*
	Name: function_6fc3995f
	Namespace: namespace_431cac9
	Checksum: 0xF8A02C9A
	Offset: 0x1BD0
	Size: 0x20F
	Parameters: 0
	Flags: None
*/
function function_6fc3995f()
{
	a_str_types = Array("casino", "medical", "merchant", "restaurant", "tattoo");
	foreach(str_type in a_str_types)
	{
		switch(str_type)
		{
			case "casino":
			{
				var_2e3ccdfd = 5;
				break;
			}
			case "medical":
			{
				var_2e3ccdfd = 1;
				break;
			}
			case "merchant":
			{
				var_2e3ccdfd = 2;
				break;
			}
			case "restaurant":
			{
				var_2e3ccdfd = 4;
				break;
			}
			case "tattoo":
			{
				var_2e3ccdfd = 3;
				break;
			}
		}
		var_989cfb0 = GetEntArray(str_type + "_shop", "script_noteworthy");
		foreach(var_6ff04f8d in var_989cfb0)
		{
			var_6ff04f8d clientfield::set("mobile_shop_fxanims", var_2e3ccdfd);
			util::wait_network_frame();
		}
	}
}

/*
	Name: function_c7b0a169
	Namespace: namespace_431cac9
	Checksum: 0xC680D3FA
	Offset: 0x1DE8
	Size: 0x1FD
	Parameters: 2
	Flags: None
*/
function function_c7b0a169(var_e4075f18, var_1e2eebb8)
{
	if(isdefined(var_1e2eebb8) && var_1e2eebb8)
	{
		self show();
	}
	self namespace_16f9ecd3::function_e228c18a(1);
	var_409f4c83 = spawn("trigger_radius_use", self.origin);
	var_409f4c83 TriggerIgnoreTeam();
	var_409f4c83 setHintString(&"CP_MI_CAIRO_LOTUS_GRAB_MINIGUN");
	var_409f4c83 setcursorhint("HINT_NOICON");
	var_409f4c83 EnableLinkTo();
	var_409f4c83.targetname = "trig_minigun";
	self.var_409f4c83 = var_409f4c83;
	self thread function_e0fd159d(var_409f4c83, var_e4075f18, var_1e2eebb8);
	var_3c3fc8a8 = GetWeapon("minigun_lotus");
	foreach(player in level.players)
	{
		if(player HasWeapon(var_3c3fc8a8))
		{
			var_409f4c83 SetInvisibleToPlayer(player);
		}
	}
	return var_409f4c83;
}

/*
	Name: function_e0fd159d
	Namespace: namespace_431cac9
	Checksum: 0x35AD140E
	Offset: 0x1FF0
	Size: 0x1C5
	Parameters: 3
	Flags: None
*/
function function_e0fd159d(var_409f4c83, var_e4075f18, var_1e2eebb8)
{
	self endon("death");
	self thread function_28a4f84e(var_e4075f18, var_1e2eebb8);
	var_409f4c83 waittill("trigger", player);
	var_3c3fc8a8 = GetWeapon("minigun_lotus");
	if(player HasWeapon(var_3c3fc8a8))
	{
		self thread function_e0fd159d(var_409f4c83, var_e4075f18, var_1e2eebb8);
		return;
	}
	var_409f4c83 delete();
	player thread function_25899d6a();
	self notify("hash_f779ed1b");
	level notify("hash_3987ce06");
	var_d4caa2c2 = GetEntArray("trig_minigun", "targetname");
	foreach(var_8811f25f in var_d4caa2c2)
	{
		var_8811f25f SetInvisibleToPlayer(player);
	}
	self notify("hash_28a4f84e");
}

/*
	Name: function_28a4f84e
	Namespace: namespace_431cac9
	Checksum: 0x1A724DDA
	Offset: 0x21C0
	Size: 0xC3
	Parameters: 2
	Flags: None
*/
function function_28a4f84e(var_e4075f18, var_1e2eebb8)
{
	self endon("death");
	self waittill("hash_28a4f84e");
	if(isdefined(var_e4075f18) && var_e4075f18)
	{
		if(isdefined(var_1e2eebb8) && var_1e2eebb8)
		{
			self Hide();
		}
		else
		{
			self delete();
		}
	}
	else
	{
		self.delete_on_death = 1;
		self notify("death");
		if(!isalive(self))
		{
			self delete();
		}
	}
}

/*
	Name: function_25899d6a
	Namespace: namespace_431cac9
	Checksum: 0x6F1433C3
	Offset: 0x2290
	Size: 0x8B
	Parameters: 1
	Flags: None
*/
function function_25899d6a(var_cb36173a)
{
	self endon("death");
	var_3c3fc8a8 = GetWeapon("minigun_lotus");
	self GiveWeapon(var_3c3fc8a8);
	self SwitchToWeapon(var_3c3fc8a8);
	self notify("hash_2dcf6940");
	self thread function_a6145523();
}

/*
	Name: function_a5f8943a
	Namespace: namespace_431cac9
	Checksum: 0xFD3FB71C
	Offset: 0x2328
	Size: 0x97
	Parameters: 1
	Flags: None
*/
function function_a5f8943a(w_weapon)
{
	self endon("death");
	self endon("hash_23ffb162");
	n_ammo = self getammocount(w_weapon);
	while(n_ammo > 0)
	{
		self.var_cb36173a = n_ammo;
		n_ammo = self getammocount(w_weapon);
		wait(0.05);
	}
	self.var_cb36173a = n_ammo;
}

/*
	Name: function_f45c9a02
	Namespace: namespace_431cac9
	Checksum: 0x35A60FE5
	Offset: 0x23C8
	Size: 0x41
	Parameters: 0
	Flags: None
*/
function function_f45c9a02()
{
	self endon("death");
	self endon("hash_23ffb162");
	self waittill("weapon_change");
	self waittill("weapon_change");
	self notify("hash_23ffb162");
}

/*
	Name: function_e967f52
	Namespace: namespace_431cac9
	Checksum: 0x8AC69D34
	Offset: 0x2418
	Size: 0x183
	Parameters: 1
	Flags: None
*/
function function_e967f52(var_cb36173a)
{
	self endon("death");
	w_weapon = GetWeapon("minigun_lotus");
	self TakeWeapon(w_weapon);
	self notify("hash_35d77d15");
	var_5cf8dff2 = util::spawn_model("wpn_t7_mingun_world", self.origin + VectorScale((0, 0, 1), 12), self.angles);
	var_5cf8dff2 PhysicsLaunch(var_5cf8dff2.origin, (0, 0, 0));
	var_5cf8dff2.var_cb36173a = self.var_cb36173a;
	self.var_cb36173a = undefined;
	var_8811f25f = spawn("trigger_radius_use", var_5cf8dff2.origin);
	var_8811f25f TriggerIgnoreTeam();
	var_8811f25f setcursorhint("HINT_NOICON");
	var_8811f25f EnableLinkTo();
	var_8811f25f LinkTo(var_5cf8dff2);
}

/*
	Name: function_a6145523
	Namespace: namespace_431cac9
	Checksum: 0xB22580B6
	Offset: 0x25A8
	Size: 0x201
	Parameters: 0
	Flags: None
*/
function function_a6145523()
{
	self notify("hash_763a826a");
	self endon("hash_763a826a");
	self endon("death");
	var_1b2c2712 = 0;
	var_3c3fc8a8 = GetWeapon("minigun_lotus");
	var_90911853 = GetWeapon("launcher_standard");
	self.var_3bb3fc6d = 0;
	while(self HasWeapon(var_3c3fc8a8, 1))
	{
		self waittill("weapon_fired");
		if(!level flag::get("gunship_high_out_of_battle"))
		{
			if(self GetCurrentWeapon() == var_3c3fc8a8 && self getammocount(var_3c3fc8a8) > 0)
			{
				self.var_3bb3fc6d = 0;
			}
			if(self GetCurrentWeapon() != var_3c3fc8a8 && self GetCurrentWeapon() != var_90911853 && self getammocount(var_3c3fc8a8) > 0)
			{
				self.var_3bb3fc6d = self.var_3bb3fc6d + 1;
			}
			if(self.var_3bb3fc6d >= 10)
			{
				self util::show_hint_text(&"CP_MI_CAIRO_LOTUS_MINIGUN_REMINDER", 0);
				var_1b2c2712 = var_1b2c2712 + 1;
				self.var_3bb3fc6d = 0;
				wait(10);
				if(var_1b2c2712 >= 3)
				{
					return;
				}
			}
		}
	}
}

/*
	Name: function_5408b0dd
	Namespace: namespace_431cac9
	Checksum: 0xC8B50409
	Offset: 0x27B8
	Size: 0x89
	Parameters: 0
	Flags: None
*/
function function_5408b0dd()
{
	foreach(player in level.players)
	{
		player thread function_ac865287();
	}
}

/*
	Name: function_ac865287
	Namespace: namespace_431cac9
	Checksum: 0x89CA954D
	Offset: 0x2850
	Size: 0xD1
	Parameters: 0
	Flags: None
*/
function function_ac865287()
{
	self notify("hash_68eb28e6");
	self endon("hash_68eb28e6");
	self endon("death");
	w_current = self GetCurrentWeapon();
	var_b17e7b20 = GetWeapon("shotgun_pump_taser");
	while(self HasWeapon(var_b17e7b20, 1))
	{
		if(w_current == var_b17e7b20)
		{
			wait(20);
		}
		else
		{
			wait(2);
			self util::show_hint_text(&"CP_MI_CAIRO_LOTUS_SHOTGUN_REMINDER", 0);
			return;
		}
	}
}

/*
	Name: function_285a93c9
	Namespace: namespace_431cac9
	Checksum: 0x13AE6499
	Offset: 0x2930
	Size: 0xF1
	Parameters: 0
	Flags: None
*/
function function_285a93c9()
{
	a_triggers = GetEntArray("trig_juiced_shotgun", "targetname");
	foreach(var_e16f479 in a_triggers)
	{
		var_e16f479 TriggerEnable(1);
		var_e16f479 setHintString(&"CP_MI_CAIRO_LOTUS_GRAB_SHOTGUN");
		var_e16f479 thread function_5f5b1e5f();
	}
}

/*
	Name: function_5f5b1e5f
	Namespace: namespace_431cac9
	Checksum: 0x467E860C
	Offset: 0x2A30
	Size: 0xA7
	Parameters: 0
	Flags: None
*/
function function_5f5b1e5f()
{
	self endon("death");
	var_b17e7b20 = GetWeapon("shotgun_pump_taser");
	while(1)
	{
		self waittill("trigger", e_player);
		if(!e_player HasWeapon(var_b17e7b20))
		{
			e_player GiveWeapon(var_b17e7b20);
		}
		e_player SwitchToWeapon(var_b17e7b20);
	}
}

/*
	Name: function_69533bc9
	Namespace: namespace_431cac9
	Checksum: 0x81448551
	Offset: 0x2AE0
	Size: 0x22B
	Parameters: 0
	Flags: None
*/
function function_69533bc9()
{
	spawner::add_spawn_function_group("robot_level_1", "script_noteworthy", &ai::set_behavior_attribute, "rogue_control", "level_1");
	spawner::add_spawn_function_group("robot_level_2", "script_noteworthy", &ai::set_behavior_attribute, "rogue_control", "level_2");
	spawner::add_spawn_function_group("robot_level_3", "script_noteworthy", &ai::set_behavior_attribute, "rogue_control", "level_3");
	spawner::add_spawn_function_group("robot_forced_level_1", "script_noteworthy", &ai::set_behavior_attribute, "rogue_control", "forced_level_1");
	spawner::add_spawn_function_group("robot_forced_level_2", "script_noteworthy", &ai::set_behavior_attribute, "rogue_control", "forced_level_2");
	spawner::add_spawn_function_group("robot_forced_level_3", "script_noteworthy", &ai::set_behavior_attribute, "rogue_control", "forced_level_3");
	spawner::add_spawn_function_group("climber_robot_forced_level_1", "script_noteworthy", &function_b4c5517f, "forced_level_1");
	spawner::add_spawn_function_group("climber_robot_forced_level_2", "script_noteworthy", &function_b4c5517f, "forced_level_2");
	spawner::add_spawn_function_group("climber_robot_forced_level_3", "script_noteworthy", &function_b4c5517f, "forced_level_3");
}

/*
	Name: function_b4c5517f
	Namespace: namespace_431cac9
	Checksum: 0x49CE2596
	Offset: 0x2D18
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_b4c5517f(var_66674d1)
{
	self waittill("scriptedanim");
	self ai::set_behavior_attribute("rogue_control", var_66674d1);
}

/*
	Name: function_cdf9cde7
	Namespace: namespace_431cac9
	Checksum: 0xE48DF079
	Offset: 0x2D60
	Size: 0x227
	Parameters: 1
	Flags: None
*/
function function_cdf9cde7(var_e6795c86)
{
	if(!isdefined(var_e6795c86))
	{
		var_e6795c86 = undefined;
	}
	self endon("death");
	self SetCanDamage(1);
	self.health = 10000;
	if(isdefined(self.script_fxid))
	{
		if(isdefined(self.script_noteworthy))
		{
			var_a178d2fe = function_8108bdb8(self.script_fxid, self.script_noteworthy, self);
			if(isdefined(var_a178d2fe))
			{
				var_a178d2fe Hide();
			}
		}
		if(isdefined(self.script_label))
		{
			var_3e1ea936 = function_8108bdb8(self.script_fxid, self.script_label, self);
			if(isdefined(var_3e1ea936))
			{
				var_3e1ea936 Hide();
			}
		}
	}
	b_destroyed = 0;
	while(!b_destroyed)
	{
		self waittill("damage", n_damage, e_attacker, var_a3382de1, v_point, str_means_of_death, var_c4fe462, var_e64d69f9, var_c04aef90, w_weapon);
		if(e_attacker.vehicleType === "veh_bo3_mil_gunship_nrc" && (str_means_of_death == "MOD_PROJECTILE" || str_means_of_death == "MOD_PROJECTILE_SPLASH"))
		{
			self function_aabc561a(var_e6795c86);
			b_destroyed = 1;
		}
		self.health = 10000;
		wait(0.05);
	}
}

/*
	Name: function_aabc561a
	Namespace: namespace_431cac9
	Checksum: 0x70B88D1C
	Offset: 0x2F90
	Size: 0x2FB
	Parameters: 1
	Flags: None
*/
function function_aabc561a(var_e6795c86)
{
	if(!isdefined(var_e6795c86))
	{
		var_e6795c86 = undefined;
	}
	if(self.script_ignoreme === 0)
	{
		self notsolid();
		self Hide();
		if(isdefined(self.script_fxid))
		{
			var_6bcf377a = self.script_fxid + "_" + self.targetname;
			s_fx = struct::get(var_6bcf377a, "targetname");
			if(isdefined(s_fx))
			{
				s_fx thread scene::Play();
				if(isdefined(var_e6795c86))
				{
					s_fx thread FX::Play(var_e6795c86);
				}
			}
			if(isdefined(self.script_parameters))
			{
				var_54a0ec88 = function_8108bdb8(self.script_fxid, self.script_parameters, self);
				if(isdefined(var_54a0ec88))
				{
					var_54a0ec88 notsolid();
					var_54a0ec88 Hide();
					var_54a0ec88 delete();
				}
			}
			if(isdefined(self.target))
			{
				var_dc0bfd76 = function_8108bdb8(self.script_fxid, self.target, self);
				if(isdefined(var_dc0bfd76))
				{
					var_dc0bfd76 function_8effc214();
				}
			}
		}
		if(isdefined(self.script_noteworthy))
		{
			var_a178d2fe = function_8108bdb8(self.script_fxid, self.script_noteworthy, self);
			if(isdefined(var_a178d2fe))
			{
				var_a178d2fe show();
			}
		}
		if(isdefined(self.script_label))
		{
			var_3e1ea936 = function_8108bdb8(self.script_fxid, self.script_label, self);
			if(isdefined(var_3e1ea936))
			{
				var_3e1ea936 notsolid();
				var_3e1ea936 Hide();
			}
		}
		if(isdefined(self.script_ignoreme))
		{
			self.script_ignoreme = 1;
		}
		self delete();
	}
}

/*
	Name: function_8108bdb8
	Namespace: namespace_431cac9
	Checksum: 0xCCD3AAEF
	Offset: 0x3298
	Size: 0xFB
	Parameters: 3
	Flags: None
*/
function function_8108bdb8(var_700327f8, str_targetname, var_bae1047f)
{
	if(!isdefined(var_bae1047f))
	{
		var_bae1047f = undefined;
	}
	var_442c186f = undefined;
	var_caadf8f5 = GetEntArray(str_targetname, "targetname");
	foreach(var_f582979c in var_caadf8f5)
	{
		if(var_f582979c.script_fxid === var_700327f8)
		{
			var_442c186f = var_f582979c;
		}
	}
	return var_442c186f;
}

/*
	Name: function_8effc214
	Namespace: namespace_431cac9
	Checksum: 0xD741A0D4
	Offset: 0x33A0
	Size: 0xEB
	Parameters: 2
	Flags: None
*/
function function_8effc214(var_449c8315, var_217954db)
{
	if(!isdefined(var_449c8315))
	{
		var_449c8315 = 0;
	}
	if(!isdefined(var_217954db))
	{
		var_217954db = 0;
	}
	if(isdefined(self.script_ignoreme) && self.script_ignoreme == 0 && isdefined(self.script_label) && isdefined(self.script_fxid))
	{
		var_a788dff4 = function_8108bdb8(self.script_fxid, self.script_label, self);
		var_a788dff4 show();
		if(var_217954db)
		{
			var_a788dff4 thread function_cdf9cde7();
		}
		if(var_449c8315)
		{
			self Hide();
		}
	}
}

/*
	Name: function_f95b0d3c
	Namespace: namespace_431cac9
	Checksum: 0xAF051C8B
	Offset: 0x3498
	Size: 0x26B
	Parameters: 1
	Flags: None
*/
function function_f95b0d3c(var_2e2d440f)
{
	if(var_2e2d440f)
	{
		type = "robot";
	}
	else
	{
		type = "human";
	}
	PlayFXOnTag(level._effect["burn_loop_" + type + "_left_arm"], self, "j_shoulder_le_rot");
	PlayFXOnTag(level._effect["burn_loop_" + type + "_left_arm"], self, "j_elbow_le_rot");
	PlayFXOnTag(level._effect["burn_loop_" + type + "_right_arm"], self, "j_shoulder_ri_rot");
	PlayFXOnTag(level._effect["burn_loop_" + type + "_right_arm"], self, "j_elbow_ri_rot");
	PlayFXOnTag(level._effect["burn_loop_" + type + "_left_leg"], self, "j_hip_le");
	PlayFXOnTag(level._effect["burn_loop_" + type + "_left_leg"], self, "j_knee_le");
	PlayFXOnTag(level._effect["burn_loop_" + type + "_right_leg"], self, "j_hip_ri");
	PlayFXOnTag(level._effect["burn_loop_" + type + "_right_leg"], self, "j_knee_ri");
	PlayFXOnTag(level._effect["burn_loop_" + type + "_head"], self, "j_head");
	PlayFXOnTag(level._effect["burn_loop_" + type + "_torso"], self, "j_mainroot");
}

/*
	Name: function_2838f054
	Namespace: namespace_431cac9
	Checksum: 0x2E186AAB
	Offset: 0x3710
	Size: 0x43
	Parameters: 2
	Flags: None
*/
function function_2838f054(var_dd528041, var_bb4455a6)
{
	function_c9fa49c2(var_dd528041, var_bb4455a6);
	objectives::breadcrumb(var_bb4455a6);
}

/*
	Name: function_c9fa49c2
	Namespace: namespace_431cac9
	Checksum: 0x630CE366
	Offset: 0x3760
	Size: 0x6F
	Parameters: 2
	Flags: None
*/
function function_c9fa49c2(var_dd528041, str_trigger_name)
{
	var_bfa7ba25 = GetEnt(str_trigger_name, "targetname");
	if(isdefined(var_bfa7ba25))
	{
		objectives::set(var_dd528041, var_bfa7ba25.origin);
	}
}

/*
	Name: function_50ae49cd
	Namespace: namespace_431cac9
	Checksum: 0x8EF007C3
	Offset: 0x37D8
	Size: 0x7F
	Parameters: 3
	Flags: None
*/
function function_50ae49cd(var_46c42db4, var_3599083d, var_fc275254)
{
	if(!isdefined(var_3599083d))
	{
		var_3599083d = 1;
	}
	for(var_17688fb5 = var_46c42db4; isdefined(var_17688fb5);  = var_46c42db4)
	{
	}
	if(isdefined(var_fc275254))
	{
		level notify(var_fc275254, function_20fc45fd(var_17688fb5, var_3599083d));
	}
}

/*
	Name: function_20fc45fd
	Namespace: namespace_431cac9
	Checksum: 0xF1B03C64
	Offset: 0x3860
	Size: 0x15F
	Parameters: 2
	Flags: None
*/
function function_20fc45fd(var_17688fb5, var_3599083d)
{
	t_current = GetEnt(var_17688fb5, "targetname");
	if(isdefined(t_current))
	{
		v_position = t_current.origin;
		if(isdefined(t_current.target))
		{
			s_current = struct::get(t_current.target, "targetname");
			if(isdefined(s_current))
			{
				v_position = s_current.origin;
			}
		}
		objectives::set("cp_waypoint_breadcrumb", v_position);
		trigger::wait_till(var_17688fb5);
		objectives::complete("cp_waypoint_breadcrumb");
		var_c15deb89 = t_current.target;
	}
	/#
		if(isdefined(var_c15deb89) && var_3599083d)
		{
			IPrintLnBold(var_c15deb89);
		}
	#/
	return var_c15deb89;
}

/*
	Name: function_393c81a5
	Namespace: namespace_431cac9
	Checksum: 0x7CA100E7
	Offset: 0x39C8
	Size: 0x12B
	Parameters: 1
	Flags: None
*/
function function_393c81a5(a_ents)
{
	self endon("scene_done");
	Array::thread_all(a_ents, &function_5a92c897, self);
	Array::thread_all(a_ents, &function_27e365e2, "killed_by_nrc", "axis");
	Array::wait_any(a_ents, "damage");
	util::wait_network_frame();
	foreach(ent in a_ents)
	{
		ent notify("hash_9ac59272");
	}
	self scene::stop();
}

/*
	Name: function_f2596cbe
	Namespace: namespace_431cac9
	Checksum: 0xDFEA5F29
	Offset: 0x3B00
	Size: 0x133
	Parameters: 1
	Flags: None
*/
function function_f2596cbe(a_ents)
{
	self endon("scene_done");
	Array::thread_all(a_ents, &function_5a92c897, self);
	Array::wait_any(a_ents, "death");
	util::wait_network_frame();
	foreach(ent in a_ents)
	{
		if(isai(ent))
		{
			ent ai::set_ignoreall(0);
			ent ai::set_ignoreme(0);
		}
	}
	self scene::stop();
}

/*
	Name: function_5a92c897
	Namespace: namespace_431cac9
	Checksum: 0x389D2F73
	Offset: 0x3C40
	Size: 0x10B
	Parameters: 1
	Flags: None
*/
function function_5a92c897(var_d6f141bd)
{
	self endon("death");
	if(!isai(self))
	{
		return;
	}
	if(self.team === "allies")
	{
		self thread function_6c396cfa(1);
	}
	else
	{
		self thread function_6c396cfa(1);
		self thread ai::set_behavior_attribute("can_be_meleed", 0);
	}
	var_d6f141bd waittill("scene_done");
	if(self.team === "allies")
	{
		self thread function_6c396cfa(0);
	}
	else
	{
		self thread function_6c396cfa(0);
		self thread ai::set_behavior_attribute("can_be_meleed", 1);
	}
}

/*
	Name: function_6c396cfa
	Namespace: namespace_431cac9
	Checksum: 0xB5993F8D
	Offset: 0x3D58
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function function_6c396cfa(var_c5d9e0f5)
{
	if(isai(self))
	{
		self.ignoreme = var_c5d9e0f5;
	}
}

/*
	Name: function_5da90c71
	Namespace: namespace_431cac9
	Checksum: 0x93481FFF
	Offset: 0x3D98
	Size: 0x1F1
	Parameters: 1
	Flags: None
*/
function function_5da90c71(a_ents)
{
	foreach(ent in a_ents)
	{
		if(isai(ent))
		{
			ent ai::set_ignoreme(1);
			ent ai::set_ignoreall(1);
			ent util::magic_bullet_shield();
		}
	}
	while(scene::is_active(self.scriptbundlename))
	{
		wait(0.05);
	}
	foreach(ent in a_ents)
	{
		if(isdefined(ent) && isai(ent) && isalive(ent))
		{
			ent ai::set_ignoreme(0);
			ent ai::set_ignoreall(0);
			ent util::stop_magic_bullet_shield();
		}
	}
}

/*
	Name: function_36a6e271
	Namespace: namespace_431cac9
	Checksum: 0x156E3FE8
	Offset: 0x3F98
	Size: 0x1CB
	Parameters: 2
	Flags: None
*/
function function_36a6e271(should_delete, a_ai)
{
	if(!isdefined(a_ai))
	{
		a_ai = [];
	}
	while(1)
	{
		var_790129b = 0;
		var_6c4dd462 = 0;
		foreach(player in level.players)
		{
			if(player istouching(self))
			{
				var_790129b++;
			}
		}
		foreach(ai in a_ai)
		{
			if(ai istouching(self))
			{
				var_6c4dd462++;
			}
		}
		if(var_790129b == level.players.size && var_6c4dd462 == a_ai.size)
		{
			if(isdefined(should_delete) && should_delete)
			{
				self util::self_delete();
			}
			break;
		}
		wait(0.1);
	}
}

/*
	Name: function_d720c23e
	Namespace: namespace_431cac9
	Checksum: 0xC265F92F
	Offset: 0x4170
	Size: 0x193
	Parameters: 1
	Flags: None
*/
function function_d720c23e(str_name)
{
	level flag::wait_till("all_players_spawned");
	e_trigger = GetEnt("ambient_mobile_" + str_name + "_trigger", "script_noteworthy");
	if(!isdefined(e_trigger))
	{
		e_trigger = GetEnt("ambient_mobile_" + str_name + "_0_trigger", "script_noteworthy");
	}
	if(isdefined(e_trigger))
	{
		var_2e308a20 = GetEntArray(e_trigger.target, "targetname");
		foreach(e_piece in var_2e308a20)
		{
			e_piece.groupname = str_name;
		}
		function_b26ca094(str_name);
		e_trigger trigger::use();
	}
}

/*
	Name: function_14be4cad
	Namespace: namespace_431cac9
	Checksum: 0x479936E4
	Offset: 0x4310
	Size: 0x12B
	Parameters: 1
	Flags: None
*/
function function_14be4cad(var_1d3f7e09)
{
	if(!isdefined(var_1d3f7e09))
	{
		var_1d3f7e09 = 0;
	}
	level thread function_d720c23e("bb_n_mshop_a");
	level thread function_d720c23e("bb_s_mshop_a");
	level thread function_d720c23e("bb_s_mshop_b");
	level thread function_d720c23e("bb_s_mshop_c");
	level thread function_d720c23e("center_mshop");
	wait(7);
	function_fe64b86b("rainman", struct::get("bridge_battle_corpse_drop"), 0);
	wait(25);
	function_fe64b86b("rainman", struct::get("bridge_battle_corpse_drop2"), 0);
}

/*
	Name: function_ba1b651d
	Namespace: namespace_431cac9
	Checksum: 0x631C430B
	Offset: 0x4448
	Size: 0x139
	Parameters: 0
	Flags: None
*/
function function_ba1b651d()
{
	var_633462a1 = "bridge_battle_mobile_shop";
	var_5bed9cb6 = "mshop_n_entrance_a_01";
	var_bef0b623 = function_c7bebe99(var_633462a1, var_5bed9cb6, 15, undefined, 10, 0, 0);
	var_27d8849a = function_9bc3d62a();
	var_a175a10b = util::spawn_model("tag_origin", var_27d8849a.origin, var_27d8849a.angles);
	while(1)
	{
		/#
			IPrintLnBold("Dev Block strings are not supported");
		#/
		level function_de4512ae(var_bef0b623, "mshop_n_entrance_a_01");
		trigger::use(var_633462a1, "target");
		level waittill("vehicle_platform_" + var_633462a1 + "_stop");
	}
}

/*
	Name: function_c7bebe99
	Namespace: namespace_431cac9
	Checksum: 0x9A577A60
	Offset: 0x4590
	Size: 0xC7
	Parameters: 7
	Flags: None
*/
function function_c7bebe99(var_633462a1, var_9a2454dd, var_5a861da0, str_waittill, var_b3e9aaa6, var_b14a36c3, var_149d7b19)
{
	if(!isdefined(var_b14a36c3))
	{
		var_b14a36c3 = 0;
	}
	if(!isdefined(var_149d7b19))
	{
		var_149d7b19 = 0;
	}
	function_9b385ca5();
	var_bef0b623 = var_fa0d90fd;
	init(var_bef0b623, var_633462a1);
	var_27d8849a = function_9bc3d62a();
	var_27d8849a.takedamage = 0;
	return var_bef0b623;
}

/*
	Name: function_de4512ae
	Namespace: namespace_431cac9
	Checksum: 0x844347F3
	Offset: 0x4660
	Size: 0x57
	Parameters: 2
	Flags: None
*/
function function_de4512ae(var_ca404144, var_5bed9cb6)
{
	var_23abba9c = function_9bc3d62a();
	var_23abba9c ClearVehGoalPos();
	function_845aae7f(var_ca404144);
}

/*
	Name: function_99514074
	Namespace: namespace_431cac9
	Checksum: 0xA03C3D2
	Offset: 0x46C0
	Size: 0x1AB
	Parameters: 4
	Flags: None
*/
function function_99514074(var_3c3195e7, str_spawner, var_2a151a84, n_delay)
{
	if(!isdefined(var_2a151a84))
	{
		var_2a151a84 = undefined;
	}
	if(!isdefined(n_delay))
	{
		n_delay = undefined;
	}
	var_253fcf81 = struct::get(var_3c3195e7, "targetname");
	var_d3c173bf = GetEnt(str_spawner, "targetname");
	/#
		Assert(isdefined(var_253fcf81) && isdefined(var_d3c173bf), "Dev Block strings are not supported");
	#/
	if(!IsActor(var_d3c173bf))
	{
		var_4c5a6632 = spawner::simple_spawn_single(str_spawner);
	}
	else
	{
		var_4c5a6632 = var_d3c173bf;
	}
	if(isdefined(n_delay) || isdefined(var_2a151a84))
	{
		var_253fcf81 scene::init(var_4c5a6632);
		if(isdefined(var_2a151a84))
		{
			level flag::wait_till(var_2a151a84);
		}
		if(isdefined(n_delay) && n_delay > 0)
		{
			wait(n_delay);
		}
	}
	if(isalive(var_4c5a6632))
	{
		var_253fcf81 scene::Play(var_4c5a6632);
	}
}

/*
	Name: function_c7cc24f8
	Namespace: namespace_431cac9
	Checksum: 0xE833798F
	Offset: 0x4878
	Size: 0x30B
	Parameters: 4
	Flags: None
*/
function function_c7cc24f8(var_3c3195e7, var_18dfedfa, var_8556dacc, n_delay)
{
	if(!isdefined(var_8556dacc))
	{
		var_8556dacc = undefined;
	}
	if(!isdefined(n_delay))
	{
		n_delay = undefined;
	}
	var_253fcf81 = struct::get(var_3c3195e7, "targetname");
	var_33edae4e = 1;
	var_629f93f0 = [];
	a_actors = [];
	for(i = 0; i < var_18dfedfa.size; i++)
	{
		var_629f93f0[i] = GetEnt(var_18dfedfa[i], "targetname");
		if(!isdefined(var_629f93f0[i]))
		{
			var_33edae4e = 0;
			continue;
		}
		a_actors[i] = spawner::simple_spawn_single(var_18dfedfa[i]);
	}
	if(isdefined(var_253fcf81) && var_33edae4e)
	{
		var_2c4dc501 = var_253fcf81.scriptbundlename;
		var_253fcf81 thread function_e3b58585(a_actors);
		if(isdefined(n_delay) || isdefined(var_8556dacc))
		{
			var_253fcf81 scene::init(a_actors);
			if(isdefined(var_8556dacc) && flag::exists(var_8556dacc))
			{
				level flag::wait_till(var_8556dacc);
			}
			else if(!flag::exists(var_8556dacc))
			{
				/#
					IPrintLnBold("Dev Block strings are not supported");
				#/
			}
			if(isdefined(n_delay))
			{
				wait(n_delay);
			}
		}
		var_7d90afcb = 1;
		foreach(ai_actor in a_actors)
		{
			if(!isalive(ai_actor))
			{
				var_7d90afcb = 0;
			}
		}
		if(var_7d90afcb)
		{
			var_253fcf81 scene::Play(a_actors);
		}
	}
	else
	{
		IPrintLnBold("Dev Block strings are not supported");
	}
	/#
	#/
}

/*
	Name: function_c92cb5b
	Namespace: namespace_431cac9
	Checksum: 0x44D454E1
	Offset: 0x4B90
	Size: 0x4A3
	Parameters: 5
	Flags: None
*/
function function_c92cb5b(var_3c3195e7, var_b79165e6, var_fddd6a7f, str_key, var_2a151a84)
{
	if(!isdefined(str_key))
	{
		str_key = "script_noteworthy";
	}
	if(!isdefined(var_2a151a84))
	{
		var_2a151a84 = undefined;
	}
	s_scene = struct::get(var_3c3195e7, "targetname");
	var_2c4dc501 = s_scene.scriptbundlename;
	/#
		str_intro = var_2c4dc501 + "Dev Block strings are not supported" + var_b79165e6 + "Dev Block strings are not supported" + var_fddd6a7f;
		IPrintLnBold(str_intro);
	#/
	var_20d642a = s_scene.origin;
	a_enemies = GetAIArray(var_fddd6a7f, str_key);
	var_3f3a4339 = ArrayGetClosest(var_20d642a, a_enemies);
	if(isalive(var_3f3a4339))
	{
		var_3f3a4339 ai::set_ignoreme(1);
		var_3f3a4339 SetGoal(var_20d642a, 1);
		var_3f3a4339.var_bb8d3f02 = 1;
		var_3f3a4339.goalRadius = 48;
		var_3f3a4339 waittill("goal");
		if(isdefined(var_2a151a84))
		{
			level flag::wait_till(var_2a151a84);
		}
		a_enemies = GetAIArray(var_b79165e6, str_key);
		var_f6c5842 = ArrayGetClosest(var_20d642a, a_enemies);
		if(isalive(var_f6c5842) && isalive(var_3f3a4339))
		{
			var_f6c5842 ai::set_ignoreall(1);
			var_f6c5842 ai::set_ignoreme(1);
			var_3f3a4339 SetIgnoreEnt(var_f6c5842, 1);
			var_f6c5842 SetIgnoreEnt(var_3f3a4339, 1);
			var_f6c5842 ai::set_behavior_attribute("rogue_control_speed", "run");
			var_f6c5842.var_bb8d3f02 = 1;
			a_enemies = Array(var_f6c5842, var_3f3a4339);
			s_scene thread scene::Play(a_enemies);
			while(isalive(var_f6c5842) && isalive(var_3f3a4339) && s_scene scene::is_playing())
			{
				wait(0.1);
			}
		}
	}
	if(s_scene scene::is_playing())
	{
		s_scene scene::stop();
	}
	if(isalive(var_f6c5842))
	{
		var_f6c5842.var_fd5a8f70 = 1;
		var_f6c5842 ai::set_ignoreall(0);
		var_f6c5842 ai::set_ignoreme(0);
		var_f6c5842 ClearGoalVolume();
	}
	if(isalive(var_3f3a4339))
	{
		var_3f3a4339 ai::set_ignoreall(0);
		var_3f3a4339 ai::set_ignoreme(0);
	}
}

/*
	Name: function_283fcbc5
	Namespace: namespace_431cac9
	Checksum: 0x2DCC117E
	Offset: 0x5040
	Size: 0x28B
	Parameters: 6
	Flags: None
*/
function function_283fcbc5(var_3c3195e7, var_27f9c50e, var_2a151a84, n_delay, var_af5ecc04, str_endon)
{
	if(!isdefined(var_2a151a84))
	{
		var_2a151a84 = undefined;
	}
	if(!isdefined(n_delay))
	{
		n_delay = undefined;
	}
	if(!isdefined(var_af5ecc04))
	{
		var_af5ecc04 = 0;
	}
	if(!isdefined(str_endon))
	{
		str_endon = undefined;
	}
	var_f6c5842 = spawner::simple_spawn_single(var_27f9c50e, &function_986d0100, "forced_level_2", 1);
	var_f7f2381b = struct::get(var_3c3195e7, "targetname");
	var_f6c5842 ai::set_ignoreall(1);
	var_f6c5842 ai::set_ignoreme(1);
	level.var_2fd26037 SetIgnoreEnt(var_f6c5842, 1);
	if(!var_af5ecc04)
	{
		var_f6c5842 SetGoal(var_f7f2381b.origin, 1);
		var_f6c5842 waittill("goal");
	}
	else
	{
		var_f6c5842 teleport(var_f7f2381b.origin);
	}
	a_actors = Array(level.var_2fd26037, var_f6c5842);
	a_actors = Array(level.var_2fd26037, var_f6c5842);
	var_f7f2381b thread function_e3b58585(a_actors);
	if(isdefined(var_2a151a84) || isdefined(n_delay))
	{
		var_f7f2381b scene::init(a_actors);
		if(isdefined(var_2a151a84))
		{
			flag::wait_till(var_2a151a84);
		}
		if(isdefined(n_delay) && n_delay > 0)
		{
			wait(n_delay);
		}
	}
	var_f7f2381b scene::Play(a_actors);
}

/*
	Name: function_90b3f11f
	Namespace: namespace_431cac9
	Checksum: 0xF5BBC33A
	Offset: 0x52D8
	Size: 0x1CB
	Parameters: 4
	Flags: None
*/
function function_90b3f11f(var_a31fd6f4, str_target, n_range, str_endon)
{
	if(!isdefined(n_range))
	{
		n_range = 300;
	}
	if(!isdefined(str_endon))
	{
		str_endon = undefined;
	}
	ai_target = GetEnt(str_target, "targetname");
	if(isdefined(ai_target))
	{
		if(IsSpawner(ai_target))
		{
			ai_target = spawner::simple_spawn_single(str_target, &function_986d0100);
		}
		if(IsActor(ai_target))
		{
			level.var_2fd26037 SetIgnoreEnt(ai_target, 1);
			ai_target ai::force_goal(level.var_2fd26037);
			s_scene = struct::get(var_a31fd6f4, "targetname");
			level thread function_bc628f1d(s_scene, level.var_2fd26037, ai_target, n_range, str_endon);
		}
		else
		{
			IPrintLnBold("Dev Block strings are not supported" + ai_target.targetname + "Dev Block strings are not supported");
		}
		/#
		#/
	}
	else
	{
		IPrintLnBold("Dev Block strings are not supported" + str_target + "Dev Block strings are not supported");
	}
	/#
	#/
}

/*
	Name: function_bc628f1d
	Namespace: namespace_431cac9
	Checksum: 0x16B21E51
	Offset: 0x54B0
	Size: 0x23B
	Parameters: 5
	Flags: None
*/
function function_bc628f1d(s_scene, ai_attacker, ai_target, n_range, str_endon)
{
	if(!isdefined(n_range))
	{
		n_range = 300;
	}
	if(!isdefined(str_endon))
	{
		str_endon = undefined;
	}
	if(isdefined(str_endon))
	{
		self endon(str_endon);
	}
	while(isalive(ai_attacker) && isalive(ai_target) && Distance2D(ai_target.origin, ai_attacker.origin) > n_range)
	{
		wait(0.1);
	}
	if(isalive(ai_attacker) && isalive(ai_target))
	{
		ai_target ai::force_goal(ai_target.origin, 100, 1);
		s_scene.origin = ai_target.origin;
		s_scene.angles = ai_target.angles;
		a_actors = Array(ai_attacker, ai_target);
		s_scene scene::init(s_scene.scriptbundlename, a_actors);
		s_scene thread scene::Play(a_actors);
		while(isalive(ai_attacker) && isalive(ai_target))
		{
			wait(0.1);
		}
		if(s_scene scene::is_playing())
		{
			s_scene scene::stop();
		}
	}
}

/*
	Name: function_986d0100
	Namespace: namespace_431cac9
	Checksum: 0x82AC4D8F
	Offset: 0x56F8
	Size: 0xC3
	Parameters: 2
	Flags: None
*/
function function_986d0100(var_9bed3c76, b_sprint)
{
	if(!isdefined(var_9bed3c76))
	{
		var_9bed3c76 = "forced_level_2";
	}
	if(!isdefined(b_sprint))
	{
		b_sprint = 0;
	}
	self endon("death");
	self.goalRadius = 512;
	if(b_sprint)
	{
		self ai::set_behavior_attribute("rogue_control_speed", "sprint");
	}
	self ai::set_behavior_attribute("rogue_allow_pregib", 0);
	self ai::set_behavior_attribute("rogue_control", var_9bed3c76);
}

/*
	Name: function_df89b05b
	Namespace: namespace_431cac9
	Checksum: 0x1095FADE
	Offset: 0x57C8
	Size: 0x31B
	Parameters: 5
	Flags: None
*/
function function_df89b05b(var_e5a5bdaf, var_177a81e1, str_flag, n_delay, str_endon)
{
	if(!isdefined(var_177a81e1))
	{
		var_177a81e1 = undefined;
	}
	if(!isdefined(n_delay))
	{
		n_delay = 0;
	}
	if(!isdefined(str_endon))
	{
		str_endon = undefined;
	}
	if(isdefined(str_endon))
	{
		self endon(str_endon);
	}
	var_f6c5842 = spawner::simple_spawn_single(var_e5a5bdaf + "_robot", &function_986d0100, var_177a81e1);
	var_3f3a4339 = spawner::simple_spawn_single(var_e5a5bdaf + "_human");
	var_3f3a4339 ai::set_ignoreme(1);
	var_f6c5842 ai::set_ignoreme(1);
	a_actors = Array(var_f6c5842, var_3f3a4339);
	s_scene = struct::get(var_e5a5bdaf, "targetname");
	s_scene thread function_c37d1015(var_f6c5842, var_3f3a4339);
	if(function_91986f4b(a_actors))
	{
		s_scene scene::init(a_actors);
	}
	else if(isalive(var_3f3a4339))
	{
		var_3f3a4339 ai::set_ignoreme(0);
	}
	if(isalive(var_f6c5842))
	{
		var_f6c5842 ai::set_ignoreme(0);
	}
	return;
	if(isdefined(str_flag) && flag::exists(str_flag))
	{
		level flag::wait_till(str_flag);
	}
	if(n_delay !== 0)
	{
		wait(n_delay);
	}
	if(function_91986f4b(a_actors))
	{
		s_scene scene::Play(a_actors);
	}
	if(isalive(var_3f3a4339))
	{
		/#
			iprintln("Dev Block strings are not supported" + s_scene.targetname + "Dev Block strings are not supported");
		#/
		var_3f3a4339 StartRagdoll();
		var_3f3a4339 kill();
	}
}

/*
	Name: function_91986f4b
	Namespace: namespace_431cac9
	Checksum: 0xBA6110FF
	Offset: 0x5AF0
	Size: 0xC1
	Parameters: 1
	Flags: None
*/
function function_91986f4b(a_actors)
{
	var_7d90afcb = 1;
	foreach(ai_actor in a_actors)
	{
		if(!isdefined(ai_actor) || !isalive(ai_actor))
		{
			var_7d90afcb = 0;
		}
	}
	return var_7d90afcb;
}

/*
	Name: function_c37d1015
	Namespace: namespace_431cac9
	Checksum: 0x402AE87
	Offset: 0x5BC0
	Size: 0x12B
	Parameters: 2
	Flags: None
*/
function function_c37d1015(var_f6c5842, var_3f3a4339)
{
	self endon("done");
	while(isalive(var_f6c5842) && isalive(var_3f3a4339))
	{
		wait(0.05);
	}
	self scene::stop();
	if(isalive(var_3f3a4339))
	{
		/#
			IPrintLnBold("Dev Block strings are not supported");
		#/
		var_3f3a4339 StartRagdoll();
		var_3f3a4339 kill();
	}
	if(isalive(var_f6c5842))
	{
		/#
			IPrintLnBold("Dev Block strings are not supported");
		#/
		var_f6c5842 ai::set_ignoreme(0);
	}
}

/*
	Name: function_e3b58585
	Namespace: namespace_431cac9
	Checksum: 0x26B36F07
	Offset: 0x5CF8
	Size: 0x113
	Parameters: 1
	Flags: None
*/
function function_e3b58585(a_actors)
{
	self endon("done");
	var_cde0e1c7 = 1;
	while(var_cde0e1c7)
	{
		foreach(ai_actor in a_actors)
		{
			if(!isalive(ai_actor))
			{
				var_cde0e1c7 = 0;
			}
		}
		wait(0.1);
	}
	self scene::stop();
	/#
		iprintln("Dev Block strings are not supported");
		iprintln("Dev Block strings are not supported");
	#/
}

/*
	Name: function_e58f5689
	Namespace: namespace_431cac9
	Checksum: 0x620C5846
	Offset: 0x5E18
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_e58f5689()
{
	exploder::exploder("fx_vista_read_int_haboob");
}

/*
	Name: function_176c92fd
	Namespace: namespace_431cac9
	Checksum: 0x3BED33B4
	Offset: 0x5E40
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_176c92fd()
{
	exploder::exploder("fx_vista_read_haboob1");
}

/*
	Name: function_f80cafbd
	Namespace: namespace_431cac9
	Checksum: 0xE90BC6E0
	Offset: 0x5E68
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_f80cafbd(b_show)
{
	var_cb5f3fd1 = GetEnt("skybridge_cloud_coverage", "targetname");
	if(b_show)
	{
		var_cb5f3fd1 show();
	}
	else
	{
		var_cb5f3fd1 Hide();
	}
}

/*
	Name: function_c8849158
	Namespace: namespace_431cac9
	Checksum: 0x203FC415
	Offset: 0x5EE0
	Size: 0x21B
	Parameters: 2
	Flags: None
*/
function function_c8849158(n_dist, n_delay)
{
	self endon("death");
	b_can_delete = 0;
	if(self flagsys::get("scriptedanim"))
	{
		self flagsys::wait_till_clear("scriptedanim");
	}
	if(isdefined(n_delay))
	{
		wait(n_delay);
	}
	while(b_can_delete == 0)
	{
		wait(1);
		foreach(player in level.players)
		{
			if(isVehicle(self))
			{
				var_911c6902 = self VehCanSee(player);
			}
			else if(IsActor(self))
			{
				var_911c6902 = self cansee(player);
			}
			else
			{
				ASSERTMSG("Dev Block strings are not supported");
				return;
			}
			/#
			#/
			if(var_911c6902 == 0 && Distance(self.origin, player.origin) > n_dist && player util::is_player_looking_at(self.origin, undefined, 0) == 0)
			{
				b_can_delete = 1;
			}
		}
	}
	self delete();
}

/*
	Name: function_27e365e2
	Namespace: namespace_431cac9
	Checksum: 0x934BF34A
	Offset: 0x6108
	Size: 0x5B
	Parameters: 2
	Flags: None
*/
function function_27e365e2(str_notify, var_46368a9d)
{
	if(self.team !== var_46368a9d)
	{
		self endon("death");
		self endon("hash_9ac59272");
		self waittill(str_notify);
		self function_3e9f1592();
	}
}

/*
	Name: function_510331a4
	Namespace: namespace_431cac9
	Checksum: 0xEC3A136F
	Offset: 0x6170
	Size: 0xA9
	Parameters: 1
	Flags: None
*/
function function_510331a4(a_ents)
{
	foreach(ent in a_ents)
	{
		if(ent.team == "axis")
		{
			ent thread function_3e9f1592();
		}
	}
}

/*
	Name: function_3e9f1592
	Namespace: namespace_431cac9
	Checksum: 0xCDD0D5B8
	Offset: 0x6228
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_3e9f1592()
{
	self endon("death");
	while(isdefined(self.current_scene))
	{
		wait(0.05);
	}
	if(isdefined(self))
	{
		self util::stop_magic_bullet_shield();
		self notsolid();
		self StartRagdoll(1);
		self kill();
	}
}

/*
	Name: function_5b57004a
	Namespace: namespace_431cac9
	Checksum: 0xFB25BA1B
	Offset: 0x62C0
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_5b57004a()
{
	self endon("death");
	n_damage = 0;
	while(n_damage < 2 && self.health > 2)
	{
		self waittill("damage", n_damage, e_attacker);
	}
	wait(0.05);
	self util::stop_magic_bullet_shield();
	self notsolid();
	self StartRagdoll(1);
	self kill(self.origin, e_attacker);
}

/*
	Name: function_a7dc2319
	Namespace: namespace_431cac9
	Checksum: 0x235F9E49
	Offset: 0x6398
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_a7dc2319()
{
	while(!isdefined(self.finished_scene))
	{
		wait(0.05);
	}
	self ai::set_ignoreall(0);
	self ai::set_ignoreme(0);
	self thread function_c8849158(500);
}

/*
	Name: function_484bc3aa
	Namespace: namespace_431cac9
	Checksum: 0x62AB96D1
	Offset: 0x6408
	Size: 0xD9
	Parameters: 1
	Flags: None
*/
function function_484bc3aa(b_enable)
{
	level flag::wait_till("all_players_spawned");
	if(b_enable)
	{
	}
	else
	{
	}
	var_9dff5377 = 0;
	foreach(player in level.players)
	{
		player clientfield::set_to_player("player_dust_fx", var_9dff5377);
	}
}

/*
	Name: function_8738e00c
	Namespace: namespace_431cac9
	Checksum: 0xF72E43EB
	Offset: 0x64F0
	Size: 0x11D
	Parameters: 0
	Flags: None
*/
function function_8738e00c()
{
	var_b18bb272 = [];
	foreach(e_corpse in GetCorpseArray())
	{
		if(isdefined(e_corpse.birthtime) && e_corpse.birthtime + 200000 < GetTime())
		{
			var_b18bb272[var_b18bb272.size] = e_corpse;
		}
	}
	for(index = 0; index < var_b18bb272.size; index++)
	{
		var_b18bb272[index] delete();
	}
}

/*
	Name: function_fda257c3
	Namespace: namespace_431cac9
	Checksum: 0x5CFD82B
	Offset: 0x6618
	Size: 0x13F
	Parameters: 0
	Flags: None
*/
function function_fda257c3()
{
	level notify("hash_1206d494");
	level endon("hash_1206d494");
	if(level.skipto_point == "mobile_shop_ride2" || level.skipto_point == "bridge_battle" || level.skipto_point == "up_to_detention_center" || level.skipto_point == "stand_down" || level.skipto_point == "pursuit")
	{
		level thread function_a76d24ab();
	}
	while(1)
	{
		var_56db412d = struct::get_array("corpse_drop");
		s_drop = var_56db412d[RandomInt(var_56db412d.size)];
		function_fe64b86b("rainman", s_drop);
		wait(RandomFloatRange(8, 17));
	}
}

/*
	Name: function_fe64b86b
	Namespace: namespace_431cac9
	Checksum: 0x64FF88E4
	Offset: 0x6760
	Size: 0x12B
	Parameters: 3
	Flags: None
*/
function function_fe64b86b(str_targetname, s_struct, b_randomize)
{
	if(!isdefined(b_randomize))
	{
		b_randomize = 1;
	}
	AI_CORPSE = spawner::simple_spawn_single(str_targetname);
	if(!isdefined(AI_CORPSE))
	{
		return;
	}
	if(b_randomize)
	{
		AI_CORPSE ForceTeleport(s_struct.origin + (randomIntRange(-200, 200), randomIntRange(-200, 200), 0), s_struct.angles);
	}
	else
	{
		AI_CORPSE ForceTeleport(s_struct.origin, s_struct.angles);
	}
	AI_CORPSE StartRagdoll();
	AI_CORPSE kill();
}

/*
	Name: function_a76d24ab
	Namespace: namespace_431cac9
	Checksum: 0x544E311F
	Offset: 0x6898
	Size: 0x127
	Parameters: 0
	Flags: None
*/
function function_a76d24ab()
{
	level endon("hash_1206d494");
	while(1)
	{
		a_corpses = GetCorpseArray();
		n_current_time = GetTime();
		foreach(e_corpse in a_corpses)
		{
			if(e_corpse.origin[2] > 18500)
			{
				if(n_current_time - e_corpse.birthtime > 5500)
				{
					e_corpse delete();
				}
			}
		}
		wait(0.5);
	}
}

/*
	Name: function_a516f0de
	Namespace: namespace_431cac9
	Checksum: 0x747D209A
	Offset: 0x69C8
	Size: 0x241
	Parameters: 3
	Flags: None
*/
function function_a516f0de(str_targetname, var_f2ce48d2, var_9fd93917)
{
	if(!isdefined(var_f2ce48d2))
	{
		var_f2ce48d2 = 7;
	}
	if(!isdefined(var_9fd93917))
	{
		var_9fd93917 = 3;
	}
	level endon("hash_fb8a92fd");
	level notify("hash_c087d549", 1);
	function_b9976e82();
	level flag::wait_till("all_players_spawned");
	var_522ce6c6 = 0;
	wait(1);
	while(1)
	{
		var_50042eb8 = GetEntArray(str_targetname, "targetname");
		if(var_50042eb8.size == 0)
		{
			return;
		}
		if(var_50042eb8[0].script_parameters === "vertical")
		{
			var_1c660783 = Array(2, 4, 5);
		}
		else
		{
			var_1c660783 = Array(1, 3, 6);
		}
		var_983e0b02 = "cp_lotus_projection_ravengrafitti" + var_1c660783[RandomInt(var_1c660783.size)];
		level thread function_545a568f(var_f2ce48d2, var_983e0b02);
		function_acdfe1fe(var_983e0b02);
		function_67212ab4(var_50042eb8, 1);
		var_522ce6c6++;
		level waittill("hash_c087d549", var_90bf3c0b);
		if(var_90bf3c0b === 1 || var_522ce6c6 >= var_9fd93917)
		{
			function_4a0fb95e(var_983e0b02);
			function_67212ab4(var_50042eb8, 1);
			return;
		}
	}
}

/*
	Name: function_545a568f
	Namespace: namespace_431cac9
	Checksum: 0x57B45E8E
	Offset: 0x6C18
	Size: 0x95
	Parameters: 2
	Flags: None
*/
function function_545a568f(var_f2ce48d2, var_983e0b02)
{
	level endon("hash_c087d549");
	if(var_f2ce48d2 < 3)
	{
		var_f2ce48d2 = 3 + 1;
	}
	wait(5);
	wait(randomIntRange(3, var_f2ce48d2 + 1));
	function_4a0fb95e(var_983e0b02);
	wait(1);
	level notify("hash_c087d549");
}

/*
	Name: function_b9976e82
	Namespace: namespace_431cac9
	Checksum: 0xACC4F356
	Offset: 0x6CB8
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_b9976e82()
{
	var_50042eb8 = GetEntArray("raven_video_loc", "script_noteworthy");
	function_67212ab4(var_50042eb8, 0);
}

/*
	Name: function_511cba45
	Namespace: namespace_431cac9
	Checksum: 0xBAC84FD3
	Offset: 0x6D10
	Size: 0x1FB
	Parameters: 3
	Flags: None
*/
function function_511cba45(str_identifier, n_delay, var_983e0b02)
{
	level endon("hash_fb8a92fd");
	level notify("hash_c18cb916");
	function_b9976e82();
	if(isdefined(n_delay))
	{
		wait(n_delay);
	}
	var_cb3e8a32 = GetEntArray("raven_video_loc", "script_noteworthy");
	var_50042eb8 = [];
	foreach(var_ce0f97ed in var_cb3e8a32)
	{
		if(IsString(var_ce0f97ed.targetname) && IsSubStr(var_ce0f97ed.targetname, str_identifier))
		{
			Array::add(var_50042eb8, var_ce0f97ed);
		}
	}
	if(!isdefined(var_983e0b02))
	{
		var_983e0b02 = "cp_lotus_projection_ravengrafitti" + randomIntRange(1, 6);
	}
	function_acdfe1fe(var_983e0b02);
	function_67212ab4(var_50042eb8, 1);
	wait(7);
	function_4a0fb95e(var_983e0b02);
	function_67212ab4(var_50042eb8, 0);
}

/*
	Name: function_67212ab4
	Namespace: namespace_431cac9
	Checksum: 0x3945127E
	Offset: 0x6F18
	Size: 0x201
	Parameters: 3
	Flags: None
*/
function function_67212ab4(var_50042eb8, b_show, var_acc1160)
{
	if(!isdefined(var_acc1160))
	{
		var_acc1160 = 0;
	}
	if(b_show)
	{
		foreach(var_ce0f97ed in var_50042eb8)
		{
			if(isdefined(var_ce0f97ed))
			{
				if(var_ce0f97ed.script_string === "decal")
				{
					var_ce0f97ed clientfield::set("raven_decal", 1);
					continue;
				}
				var_ce0f97ed show();
			}
		}
		break;
	}
	foreach(var_ce0f97ed in var_50042eb8)
	{
		if(isdefined(var_ce0f97ed))
		{
			if(var_ce0f97ed.script_string === "decal")
			{
				if(var_acc1160)
				{
					var_ce0f97ed.script_noteworthy = undefined;
				}
				var_ce0f97ed clientfield::set("raven_decal", 0);
				continue;
			}
			if(var_acc1160)
			{
				var_ce0f97ed delete();
				continue;
			}
			var_ce0f97ed Hide();
		}
	}
}

/*
	Name: function_e577c596
	Namespace: namespace_431cac9
	Checksum: 0x809FE660
	Offset: 0x7128
	Size: 0x383
	Parameters: 4
	Flags: None
*/
function function_e577c596(var_a55eb7ca, trigger, var_c1afab5f, var_983e0b02)
{
	if(isdefined(trigger))
	{
		trigger trigger::wait_till();
	}
	foreach(player in level.players)
	{
		player thread function_c90abe1a();
		visionset_mgr::activate("visionset", "cp_raven_hallucination", player);
		player playsoundtoplayer("vox_dying_infected_after", player);
		player playsoundtoplayer("evt_dni_interrupt", player);
	}
	a_scenes = struct::get_array(var_a55eb7ca);
	foreach(s_scene in a_scenes)
	{
		if(s_scene.scriptbundlename === "cin_gen_traversal_raven_fly_away")
		{
			s_scene util::delay(RandomFloat(5), undefined, &scene::Play);
			continue;
		}
		s_scene thread scene::Play();
	}
	if(isdefined(var_c1afab5f))
	{
		level thread function_511cba45(var_c1afab5f, undefined, var_983e0b02);
	}
	wait(7);
	foreach(player in level.players)
	{
		player thread function_c90abe1a();
		player playsoundtoplayer("evt_dni_interrupt", player);
		util::delay(0.75, undefined, &visionset_mgr::deactivate, "visionset", "cp_raven_hallucination", player);
	}
	level thread scene::stop(var_a55eb7ca, "targetname");
	if(isdefined(var_983e0b02))
	{
		function_4a0fb95e(var_983e0b02);
	}
}

/*
	Name: function_c90abe1a
	Namespace: namespace_431cac9
	Checksum: 0x43445DEB
	Offset: 0x74B8
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_c90abe1a()
{
	self endon("death");
	self clientfield::increment_to_player("postfx_ravens", 1);
	self clientfield::set_to_player("hijack_static_effect", 1);
	wait(0.5);
	self clientfield::set_to_player("hijack_static_effect", 0);
}

/*
	Name: function_77bfc3b2
	Namespace: namespace_431cac9
	Checksum: 0xC90350A8
	Offset: 0x7540
	Size: 0x10B
	Parameters: 0
	Flags: None
*/
function function_77bfc3b2()
{
	level scene::add_scene_func("cin_gen_ambient_raven_idle", &function_e547724d, "init");
	level scene::add_scene_func("cin_gen_ambient_raven_idle_eating_raven", &function_e547724d, "init");
	level scene::add_scene_func("cin_gen_traversal_raven_fly_away", &function_e547724d, "init");
	level scene::add_scene_func("cin_gen_ambient_raven_idle", &function_3f6f483d);
	level scene::add_scene_func("cin_gen_ambient_raven_idle_eating_raven", &function_3f6f483d);
	level scene::add_scene_func("cin_gen_traversal_raven_fly_away", &function_86b1cd8a);
}

/*
	Name: function_e547724d
	Namespace: namespace_431cac9
	Checksum: 0xB952011D
	Offset: 0x7658
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_e547724d(a_ents)
{
	a_ents["raven"] Hide();
}

/*
	Name: function_3f6f483d
	Namespace: namespace_431cac9
	Checksum: 0xC54FC7DC
	Offset: 0x7690
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_3f6f483d(a_ents)
{
	a_ents["raven"] show();
}

/*
	Name: function_86b1cd8a
	Namespace: namespace_431cac9
	Checksum: 0x4AD475A6
	Offset: 0x76C8
	Size: 0x7B
	Parameters: 1
	Flags: None
*/
function function_86b1cd8a(a_ents)
{
	if(self.targetname === "hakim_door_raven_fly_away")
	{
		return;
	}
	a_ents["raven"] ghost();
	a_ents["raven"] waittill("hash_db8335ba");
	a_ents["raven"] show();
}

/*
	Name: function_78805698
	Namespace: namespace_431cac9
	Checksum: 0x7563DCEC
	Offset: 0x7750
	Size: 0x133
	Parameters: 1
	Flags: None
*/
function function_78805698(str_location)
{
	foreach(player in level.activePlayers)
	{
		player util::delay(1.5, undefined, &clientfield::set, "player_frost_breath", 1);
		player thread function_5157e72f(str_location);
	}
	callback::on_spawned(&function_6edd9874);
	callback::on_spawned(&function_5157e72f);
	level.var_2fd26037 clientfield::set("hendricks_frost_breath", 1);
}

/*
	Name: function_6edd9874
	Namespace: namespace_431cac9
	Checksum: 0x29CBC53F
	Offset: 0x7890
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_6edd9874()
{
	self clientfield::set("player_frost_breath", 1);
	if(self.var_6e127f9d === 1)
	{
		self clientfield::set_to_player("frost_post_fx", 1);
	}
}

/*
	Name: function_5157e72f
	Namespace: namespace_431cac9
	Checksum: 0x8E537F02
	Offset: 0x78F0
	Size: 0x2C9
	Parameters: 1
	Flags: None
*/
function function_5157e72f(str_location)
{
	if(!isdefined(str_location))
	{
		str_location = "";
	}
	self endon("death");
	trigger = GetEnt("trig_snow_fog_begin_" + str_location, "targetname");
	if(isdefined(trigger))
	{
		trigger trigger::wait_till(undefined, undefined, self);
	}
	if(self.var_6e127f9d !== 0)
	{
		self util::delay(1.5, undefined, &clientfield::set_to_player, "frost_post_fx", 1);
	}
	level notify("hash_23be1ef");
	self clientfield::set_to_player("snow_fog", 1);
	self clientfield::set_to_player("player_dust_fx", 0);
	self clientfield::increment_to_player("postfx_frozen_forest", 1);
	self.var_4cf41af4 = 1;
	if(self flag::exists("end_snow_fx"))
	{
		self flag::clear("end_snow_fx");
	}
	else
	{
		self flag::init("end_snow_fx");
	}
	self playsound("evt_dni_glitch");
	self PlayLoopSound("evt_snowverlay");
	if(self.var_5b9f1ca7 !== 1)
	{
		self thread function_c7402e23();
	}
	trigger = GetEnt("trig_snow_fog_end_" + str_location, "targetname");
	if(isdefined(trigger))
	{
		trigger trigger::wait_till(undefined, undefined, self);
		self thread function_3684f44b();
		self function_f21ea22f();
		self StopLoopSound(1);
		self playsound("evt_dni_delusion_outro");
		level notify("hash_d77cf6d0");
	}
}

/*
	Name: function_f21ea22f
	Namespace: namespace_431cac9
	Checksum: 0xECF4EC32
	Offset: 0x7BC8
	Size: 0x14D
	Parameters: 0
	Flags: None
*/
function function_f21ea22f()
{
	self clientfield::set("player_frost_breath", 0);
	if(!self flag::exists("end_snow_fx"))
	{
		self flag::init("end_snow_fx");
	}
	if(!level flag::exists("end_snow_videos"))
	{
		level flag::init("end_snow_videos");
	}
	self flag::set("end_snow_fx");
	level flag::set("end_snow_videos");
	self clientfield::set_to_player("snow_fog", 0);
	self clientfield::set_to_player("frost_post_fx", 0);
	self clientfield::set_to_player("player_dust_fx", 1);
	self.var_4cf41af4 = undefined;
}

/*
	Name: function_c7402e23
	Namespace: namespace_431cac9
	Checksum: 0x685D249C
	Offset: 0x7D20
	Size: 0xB7
	Parameters: 0
	Flags: None
*/
function function_c7402e23()
{
	self notify("hash_7507ad85");
	self endon("hash_7507ad85");
	self endon("hash_d3d93f76");
	self endon("death");
	self thread function_f15e5e64();
	self.var_5b9f1ca7 = 1;
	do
	{
		PlayFXOnCamera(level._effect["fx_snow_lotus"], (0, 0, 0), (1, 0, 0), (0, 0, 1));
		wait(0.05);
	}
	while(!!self flag::get("end_snow_fx"));
}

/*
	Name: function_f15e5e64
	Namespace: namespace_431cac9
	Checksum: 0xC3178542
	Offset: 0x7DE0
	Size: 0x97
	Parameters: 0
	Flags: None
*/
function function_f15e5e64()
{
	self endon("hash_7507ad85");
	self endon("hash_40fb90ff");
	self endon("death");
	while(1)
	{
		trigger::wait_till("trig_pause_snow_camera_fx", undefined, undefined, 0);
		self notify("hash_d3d93f76");
		trigger::wait_till("trig_snow_fog_begin_pursuit", undefined, undefined, 0);
		self thread function_c7402e23();
	}
}

/*
	Name: function_cf37ec3
	Namespace: namespace_431cac9
	Checksum: 0x818180E6
	Offset: 0x7E80
	Size: 0x109
	Parameters: 0
	Flags: None
*/
function function_cf37ec3()
{
	if(!level flag::exists("end_snow_videos"))
	{
		level flag::init("end_snow_videos");
	}
	while(!level flag::get("end_snow_videos"))
	{
		for(i = 1; i < 5; i++)
		{
			var_983e0b02 = "cp_lotus_projection_salem" + i;
			function_acdfe1fe(var_983e0b02);
			wait(randomIntRange(3, 5) + 5);
			function_4a0fb95e(var_983e0b02);
			wait(1.5);
		}
	}
}

/*
	Name: function_3684f44b
	Namespace: namespace_431cac9
	Checksum: 0x72BB4B01
	Offset: 0x7F98
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_3684f44b()
{
	self endon("death");
	self clientfield::set_to_player("hijack_static_effect", 1);
	wait(1.2);
	self clientfield::set_to_player("hijack_static_effect", 0);
}

