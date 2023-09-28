#using scripts\codescripts\struct;
#using scripts\cp\_ammo_cache;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\shared\ai\archetype_warlord_interface;
#using scripts\shared\ai\warlord;
#using scripts\shared\ai_shared;
#using scripts\shared\animation_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\fx_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\hud_message_shared;
#using scripts\shared\laststand_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\math_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\teamgather_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\visionset_mgr_shared;

#namespace namespace_27a45d31;

/*
	Name: function_ddb0eeea
	Namespace: namespace_27a45d31
	Checksum: 0xFA5119F7
	Offset: 0x6D0
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function function_ddb0eeea(msg)
{
	/#
		println("Dev Block strings are not supported" + msg);
	#/
}

/*
	Name: function_bff1a867
	Namespace: namespace_27a45d31
	Checksum: 0xD785F188
	Offset: 0x710
	Size: 0x83
	Parameters: 1
	Flags: None
*/
function function_bff1a867(str_objective)
{
	level.var_2fd26037 = util::function_740f8516("hendricks");
	level.var_2fd26037 flag::init("hendricks_on_zipline");
	level.var_2fd26037 SetThreatBiasGroup("heroes");
	skipto::teleport_ai(str_objective);
}

/*
	Name: function_1c1462ee
	Namespace: namespace_27a45d31
	Checksum: 0xEDC6092F
	Offset: 0x7A0
	Size: 0x13B
	Parameters: 1
	Flags: None
*/
function function_1c1462ee(var_2c617722)
{
	if(!spawn_manager::function_fed8eff(var_2c617722) && spawn_manager::is_enabled(var_2c617722))
	{
		a_enemies = spawn_manager::get_ai(var_2c617722);
		if(isdefined(a_enemies))
		{
			foreach(ai in a_enemies)
			{
				ai util::stop_magic_bullet_shield();
				ai kill();
			}
		}
		else if(!spawn_manager::function_fed8eff(var_2c617722))
		{
			spawn_manager::kill(var_2c617722);
		}
	}
}

/*
	Name: function_54d82960
	Namespace: namespace_27a45d31
	Checksum: 0xB5C9B62C
	Offset: 0x8E8
	Size: 0x101
	Parameters: 2
	Flags: None
*/
function function_54d82960(str_group, b_enable)
{
	a_triggers = GetEntArray(str_group, "script_noteworthy");
	/#
		Assert(isdefined(a_triggers), str_group + "Dev Block strings are not supported");
	#/
	if(isdefined(a_triggers))
	{
		foreach(trigger in a_triggers)
		{
			trigger TriggerEnable(b_enable);
		}
	}
}

/*
	Name: function_a22e7052
	Namespace: namespace_27a45d31
	Checksum: 0x73A4300C
	Offset: 0x9F8
	Size: 0xC9
	Parameters: 3
	Flags: None
*/
function function_a22e7052(b_enable, str_name, str_key)
{
	var_c42a21af = GetNodeArray(str_name, str_key);
	foreach(node in var_c42a21af)
	{
		SetEnableNode(node, b_enable);
	}
}

/*
	Name: function_7ff50323
	Namespace: namespace_27a45d31
	Checksum: 0x1F0C2243
	Offset: 0xAD0
	Size: 0x21
	Parameters: 1
	Flags: None
*/
function function_7ff50323(var_2d3d7b7)
{
	return Array::random(var_2d3d7b7);
}

/*
	Name: function_7aa89143
	Namespace: namespace_27a45d31
	Checksum: 0xE29AE828
	Offset: 0xB00
	Size: 0x22B
	Parameters: 1
	Flags: None
*/
function function_7aa89143(n_duration)
{
	if(!isdefined(n_duration))
	{
		n_duration = 1;
	}
	self endon("death");
	var_5dc93b8f = self GetCurrentWeapon();
	var_bd901adc = GetWeapon("syrette");
	self GiveWeapon(var_bd901adc);
	self SwitchToWeapon(var_bd901adc);
	self SetWeaponAmmoStock(var_bd901adc, 1);
	self DisableWeaponFire();
	self DisableWeaponCycling();
	self disableUsability();
	self disableOffhandWeapons();
	wait(n_duration);
	self TakeWeapon(var_bd901adc);
	self EnableWeaponFire();
	self EnableWeaponCycling();
	self enableUsability();
	self EnableOffhandWeapons();
	if(self HasWeapon(var_5dc93b8f))
	{
		self SwitchToWeapon(var_5dc93b8f);
	}
	else
	{
		primaryWeapons = self GetWeaponsListPrimaries();
		if(isdefined(primaryWeapons) && primaryWeapons.size > 0)
		{
			self SwitchToWeapon(primaryWeapons[0]);
		}
	}
}

/*
	Name: function_f61c0df8
	Namespace: namespace_27a45d31
	Checksum: 0x4B561FC
	Offset: 0xD38
	Size: 0xE9
	Parameters: 3
	Flags: None
*/
function function_f61c0df8(var_e39815ad, n_time_min, n_time_max)
{
	var_91efa0da = GetNodeArray(var_e39815ad, "targetname");
	foreach(node in var_91efa0da)
	{
		self WarlordInterface::AddPreferedPoint(node.origin, n_time_min * 1000, n_time_max * 1000);
	}
}

/*
	Name: function_a1669688
	Namespace: namespace_27a45d31
	Checksum: 0x3D909454
	Offset: 0xE30
	Size: 0x93
	Parameters: 4
	Flags: None
*/
function function_a1669688(str_aigroup, str_volume, n_delay_min, n_delay_max)
{
	if(!isdefined(n_delay_min))
	{
		n_delay_min = 0;
	}
	if(!isdefined(n_delay_max))
	{
		n_delay_max = 0;
	}
	a_enemies = spawner::get_ai_group_ai(str_aigroup);
	if(isdefined(a_enemies))
	{
		a_enemies function_5f83cbd0(str_volume, n_delay_min, n_delay_max);
	}
}

/*
	Name: function_5f83cbd0
	Namespace: namespace_27a45d31
	Checksum: 0xD6C1E7E5
	Offset: 0xED0
	Size: 0x171
	Parameters: 3
	Flags: None
*/
function function_5f83cbd0(str_volume, n_delay_min, n_delay_max)
{
	if(!isdefined(n_delay_min))
	{
		n_delay_min = 0;
	}
	if(!isdefined(n_delay_max))
	{
		n_delay_max = 0;
	}
	volume = GetEnt(str_volume, "targetname");
	/#
		Assert(isdefined(volume), "Dev Block strings are not supported" + str_volume + "Dev Block strings are not supported");
	#/
	if(isdefined(volume))
	{
		foreach(ai in self)
		{
			if(isalive(ai))
			{
				ai SetGoal(volume, 1);
			}
			if(n_delay_max > n_delay_min)
			{
				wait(RandomFloatRange(n_delay_min, n_delay_max));
			}
		}
	}
}

/*
	Name: function_753a859
	Namespace: namespace_27a45d31
	Checksum: 0xFC877BC6
	Offset: 0x1050
	Size: 0x49D
	Parameters: 1
	Flags: None
*/
function function_753a859(str_objective)
{
	switch(str_objective)
	{
		case "objective_igc":
		{
			function_9e3608e3("fxanim_nursery");
			function_9e3608e3("fxanim_markets2");
			function_9e3608e3("fxanim_warehouse");
			function_9e3608e3("fxanim_cloud_mountain");
			break;
		}
		case "objective_markets_start":
		{
			function_9e3608e3("fxanim_nursery");
			function_9e3608e3("fxanim_markets2");
			function_9e3608e3("fxanim_warehouse");
			function_9e3608e3("fxanim_cloud_mountain");
			break;
		}
		case "objective_markets_rpg":
		{
			function_9e3608e3("fxanim_warehouse");
			function_9e3608e3("fxanim_cloud_mountain");
			break;
		}
		case "objective_markets2_start":
		{
			function_9e3608e3("fxanim_cloud_mountain");
			break;
		}
		case "objective_warehouse":
		{
			function_9e3608e3("fxanim_party_house");
			break;
		}
		case "objective_cloudmountain":
		{
			function_9e3608e3("fxanim_party_house");
			function_9e3608e3("fxanim_markets1");
			function_9e3608e3("fxanim_nursery");
			break;
		}
		case "objective_cloudmountain_level_2":
		{
			function_9e3608e3("fxanim_party_house");
			function_9e3608e3("fxanim_markets1");
			function_9e3608e3("fxanim_nursery");
			function_9e3608e3("fxanim_markets2");
			function_9e3608e3("fxanim_warehouse");
			break;
		}
		case "objective_turret_hallway":
		{
			function_9e3608e3("fxanim_party_house");
			function_9e3608e3("fxanim_markets1");
			function_9e3608e3("fxanim_nursery");
			function_9e3608e3("fxanim_markets2");
			function_9e3608e3("fxanim_warehouse");
			break;
		}
		case "objective_xiulan_vignette":
		{
			function_9e3608e3("fxanim_party_house");
			function_9e3608e3("fxanim_markets1");
			function_9e3608e3("fxanim_nursery");
			function_9e3608e3("fxanim_markets2");
			function_9e3608e3("fxanim_warehouse");
			break;
		}
		case "objective_server_room_defend":
		{
			function_9e3608e3("fxanim_party_house");
			function_9e3608e3("fxanim_markets1");
			function_9e3608e3("fxanim_nursery");
			function_9e3608e3("fxanim_markets2");
			function_9e3608e3("fxanim_warehouse");
			break;
		}
		case "objective_fighttothedome":
		{
			function_9e3608e3("fxanim_party_house");
			function_9e3608e3("fxanim_markets1");
			function_9e3608e3("fxanim_nursery");
			function_9e3608e3("fxanim_markets2");
			function_9e3608e3("fxanim_warehouse");
			function_9e3608e3("fxanim_cloud_mountain");
			break;
		}
	}
}

/*
	Name: function_d28654c9
	Namespace: namespace_27a45d31
	Checksum: 0x33E020FC
	Offset: 0x14F8
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_d28654c9()
{
	if(SessionModeIsCampaignZombiesGame())
	{
		return;
	}
	n_body_id = GetCharacterBodyStyleIndex(0, "CPUI_OUTFIT_BIODOMES");
	if(self IsHost())
	{
		if(self GetDStat("highestMapReached") <= function_59c5ca75("cp_mi_sing_biodomes"))
		{
			self SetCharacterBodyStyle(n_body_id);
		}
	}
	else if(!self GetDStat("PlayerStatsByMap", "cp_mi_sing_biodomes", "hasBeenCompleted"))
	{
		self SetCharacterBodyStyle(n_body_id);
	}
}

/*
	Name: function_cc20e187
	Namespace: namespace_27a45d31
	Checksum: 0x182FA7A9
	Offset: 0x15F8
	Size: 0x143
	Parameters: 2
	Flags: None
*/
function function_cc20e187(str_area, var_da49671a)
{
	if(!isdefined(var_da49671a))
	{
		var_da49671a = 0;
	}
	if(SessionModeIsCampaignZombiesGame())
	{
		return;
	}
	var_9108873 = GetEnt("trig_out_of_bound_" + str_area, "targetname");
	e_clip = GetEnt("player_clip_" + str_area, "targetname");
	if(var_da49671a)
	{
		var_9108873 TriggerEnable(0);
		e_clip notsolid();
		trigger::wait_till("trig_regroup_" + str_area, "script_noteworthy");
	}
	var_9108873 TriggerEnable(1);
	e_clip solid();
}

