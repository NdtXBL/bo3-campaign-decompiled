#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_hacking;
#using scripts\cp\_objectives;
#using scripts\cp\_oed;
#using scripts\cp\_skipto;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_zurich_newworld_rooftops;
#using scripts\cp\cybercom\_cybercom_gadget;
#using scripts\cp\cybercom\_cybercom_tactical_rig;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\shared\ai\archetype_utility;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\fx_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\math_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\system_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\weapons_shared;

#namespace namespace_ce0e5f06;

/*
	Name: __init__sytem__
	Namespace: namespace_ce0e5f06
	Checksum: 0xF2400B91
	Offset: 0xCC8
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__sytem__()
{
	system::register("newworld_util", &__init__, undefined, undefined);
}

/*
	Name: __init__
	Namespace: namespace_ce0e5f06
	Checksum: 0x967C3F5D
	Offset: 0xD08
	Size: 0x13
	Parameters: 0
	Flags: None
*/
function __init__()
{
	init_client_field_callback_funcs();
}

/*
	Name: init_client_field_callback_funcs
	Namespace: namespace_ce0e5f06
	Checksum: 0xC65434E7
	Offset: 0xD28
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function init_client_field_callback_funcs()
{
	clientfield::register("toplayer", "postfx_futz", 1, 1, "counter");
}

/*
	Name: function_be075359
	Namespace: namespace_ce0e5f06
	Checksum: 0xB882E933
	Offset: 0xD68
	Size: 0x56B
	Parameters: 0
	Flags: None
*/
function function_be075359()
{
	if(!isdefined(level.var_ba7d14b0))
	{
		level.var_ba7d14b0 = [];
	}
	var_c4ba82be = GetWeapon("ar_fastburst", "suppressed", "acog");
	var_7d2e8aba = GetWeapon("smg_fastfire", "extclip");
	var_a337836d = GetWeapon("lmg_light", "acog", "fmj", "fastreload");
	var_17d630df = GetWeapon("shotgun_pump", "steadyaim", "extbarrel");
	var_a0543d15 = GetWeapon("pistol_standard", "suppressed", "reflex");
	var_9254de0d = GetWeapon("pistol_standard", "steadyaim");
	var_ae16e040 = GetWeapon("pistol_standard", "steadyaim");
	var_6473fc51 = GetWeapon("pistol_standard", "steadyaim");
	var_ad27f51f = GetWeapon("frag_grenade");
	var_63d3226f = GetWeapon("emp_grenade");
	switch(level.var_fee90489[0])
	{
		case "factory_alley":
		case "factory_factory_exterior":
		case "factory_factory_intro_igc":
		case "factory_foundry":
		case "factory_inside_man_igc":
		case "factory_vat_room":
		case "factory_warehouse":
		case "white_infinite_igc":
		{
			self take_weapons();
			self.primaryLoadoutWeapon = var_c4ba82be;
			self GiveWeapon(var_a0543d15);
			self GiveWeapon(var_ad27f51f);
			self GiveWeapon(var_63d3226f);
			break;
		}
		case "chase_apartment_igc":
		case "chase_bridge_collapse":
		case "chase_chase_start":
		case "chase_construction_site":
		case "chase_glass_ceiling_igc":
		case "chase_old_zurich":
		case "chase_rooftops":
		{
			self take_weapons();
			self.primaryLoadoutWeapon = var_7d2e8aba;
			self GiveWeapon(var_9254de0d);
			self GiveWeapon(var_ad27f51f);
			self GiveWeapon(var_63d3226f);
			break;
		}
		case "underground_construction":
		case "underground_crossroads":
		case "underground_maintenance":
		case "underground_pinned_down_igc":
		case "underground_staging_room_igc":
		case "underground_subway":
		case "underground_water_plant":
		{
			if(!self flagsys::get("mobile_armory_in_use") && !isdefined(level.var_ba7d14b0[self GetEntityNumber()]))
			{
				self take_weapons();
				self.primaryLoadoutWeapon = var_a337836d;
				self GiveWeapon(var_ae16e040);
				self GiveWeapon(var_ad27f51f);
				self GiveWeapon(var_63d3226f);
			}
			else
			{
				self thread function_3a7ee040();
			}
			break;
		}
		case "train_detach_bomb_igc":
		case "train_inbound_igc":
		case "train_train_roof":
		case "train_train_start":
		{
			self take_weapons();
			self.primaryLoadoutWeapon = var_17d630df;
			self GiveWeapon(var_6473fc51);
			self GiveWeapon(var_ad27f51f);
			self GiveWeapon(var_63d3226f);
			break;
		}
		case default:
		{
			break;
		}
	}
	if(isdefined(self.primaryLoadoutWeapon))
	{
		self GiveWeapon(self.primaryLoadoutWeapon);
		self SwitchToWeapon(self.primaryLoadoutWeapon);
	}
}

/*
	Name: function_3a7ee040
	Namespace: namespace_ce0e5f06
	Checksum: 0x5DD80E4A
	Offset: 0x12E0
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_3a7ee040()
{
	if(!isdefined(level.var_ba7d14b0[self GetEntityNumber()]))
	{
		level.var_ba7d14b0[self GetEntityNumber()] = 1;
		self waittill("disconnect");
		level.var_ba7d14b0[self GetEntityNumber()] = undefined;
	}
}

/*
	Name: function_974050f
	Namespace: namespace_ce0e5f06
	Checksum: 0x70B9796D
	Offset: 0x1368
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_974050f()
{
	if(SessionModeIsCampaignZombiesGame())
	{
		return;
	}
	if(self function_c633d8fe() && isdefined(self.primaryLoadoutWeapon))
	{
		return;
	}
	self function_be075359();
	self function_dbf420c6();
	self namespace_726a1ef0::function_78908229();
	self namespace_726a1ef0::function_8ffa26e2("cybercom_playermovement", 0);
}

/*
	Name: take_weapons
	Namespace: namespace_ce0e5f06
	Checksum: 0x8FB8F55D
	Offset: 0x1418
	Size: 0xDF
	Parameters: 1
	Flags: None
*/
function take_weapons(var_ddaacf8f)
{
	if(!isdefined(var_ddaacf8f))
	{
		var_ddaacf8f = 1;
	}
	var_ce9fba38 = self GetWeaponsList();
	foreach(w_weapon in var_ce9fba38)
	{
		self TakeWeapon(w_weapon);
	}
	if(var_ddaacf8f)
	{
		self.var_ce9fba38 = var_ce9fba38;
	}
}

/*
	Name: function_dbf420c6
	Namespace: namespace_ce0e5f06
	Checksum: 0x845CF2B2
	Offset: 0x1500
	Size: 0x2D1
	Parameters: 0
	Flags: None
*/
function function_dbf420c6()
{
	wait(0.05);
	self namespace_d00ec32::function_c219b381();
	switch(level.var_fee90489[0])
	{
		case "factory_alley":
		case "factory_factory_exterior":
		case "factory_factory_intro_igc":
		case "factory_foundry":
		case "factory_inside_man_igc":
		case "factory_vat_room":
		case "factory_warehouse":
		case "white_infinite_igc":
		{
			if(isdefined(level.var_b7a27741) && level.var_b7a27741)
			{
				self namespace_d00ec32::giveAbility("cybercom_hijack", 0);
				self namespace_d00ec32::function_eb512967("cybercom_hijack", 1);
			}
			break;
		}
		case "chase_apartment_igc":
		case "chase_bridge_collapse":
		case "chase_chase_start":
		case "chase_construction_site":
		case "chase_glass_ceiling_igc":
		case "chase_old_zurich":
		case "chase_rooftops":
		{
			if(isdefined(level.var_ebe3b234) && level.var_ebe3b234)
			{
				self namespace_d00ec32::giveAbility("cybercom_systemoverload", 0);
				self namespace_d00ec32::function_eb512967("cybercom_systemoverload", 1);
			}
			break;
		}
		case "underground_construction":
		case "underground_crossroads":
		case "underground_maintenance":
		case "underground_pinned_down_igc":
		case "underground_staging_room_igc":
		case "underground_subway":
		case "underground_water_plant":
		{
			if(isdefined(level.var_e120c906) && level.var_e120c906)
			{
				self namespace_d00ec32::giveAbility("cybercom_fireflyswarm", 1);
			}
			if(isdefined(level.var_11d004e5) && level.var_11d004e5)
			{
				self namespace_d00ec32::giveAbility("cybercom_immolation", 0);
				self namespace_d00ec32::function_eb512967("cybercom_immolation", 1);
			}
			break;
		}
		case "train_detach_bomb_igc":
		case "train_inbound_igc":
		case "train_train_roof":
		case "train_train_start":
		{
			if(isdefined(level.var_fbc6080) && level.var_fbc6080)
			{
				self namespace_d00ec32::giveAbility("cybercom_concussive", 1);
			}
			self namespace_d00ec32::giveAbility("cybercom_rapidstrike", 0);
			self namespace_d00ec32::function_eb512967("cybercom_rapidstrike");
			break;
		}
		case default:
		{
			break;
		}
	}
}

/*
	Name: function_7ee91bc9
	Namespace: namespace_ce0e5f06
	Checksum: 0x90F9530B
	Offset: 0x17E0
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_7ee91bc9()
{
	foreach(player in level.players)
	{
		if(player != self)
		{
			if(isdefined(player.var_1e983b11) && player.var_1e983b11)
			{
				return 1;
			}
		}
	}
	return 0;
}

/*
	Name: function_1cf75ffb
	Namespace: namespace_ce0e5f06
	Checksum: 0xA9AF1390
	Offset: 0x1898
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_1cf75ffb()
{
	foreach(player in level.players)
	{
		if(player != self)
		{
			if(isdefined(player.var_d829fe9f) && player.var_d829fe9f)
			{
				return 1;
			}
		}
	}
	return 0;
}

/*
	Name: function_1943bf79
	Namespace: namespace_ce0e5f06
	Checksum: 0xEEBEE6AF
	Offset: 0x1950
	Size: 0x213
	Parameters: 0
	Flags: None
*/
function function_1943bf79()
{
	var_33dcf6cf = 0;
	var_1dedaef1 = 0;
	switch(level.var_fee90489[0])
	{
		case "factory_factory_exterior":
		case "factory_factory_intro_igc":
		case "white_infinite_igc":
		{
			if(isdefined(level.var_9ef26e4f) && level.var_9ef26e4f)
			{
				var_1dedaef1 = 1;
			}
			else
			{
				var_1dedaef1 = 0;
			}
			var_33dcf6cf = 0;
			break;
		}
		case "chase_apartment_igc":
		case "chase_bridge_collapse":
		case "chase_chase_start":
		case "chase_construction_site":
		case "chase_glass_ceiling_igc":
		case "chase_old_zurich":
		case "chase_rooftops":
		case "factory_alley":
		case "factory_foundry":
		case "factory_inside_man_igc":
		case "factory_vat_room":
		case "factory_warehouse":
		case "underground_construction":
		case "underground_crossroads":
		case "underground_pinned_down_igc":
		case "underground_subway":
		{
			var_1dedaef1 = 1;
			if(isdefined(level.var_74f7a02e) && level.var_74f7a02e)
			{
				var_33dcf6cf = 1;
			}
			else
			{
				var_33dcf6cf = 0;
			}
			break;
		}
		case "train_detach_bomb_igc":
		case "train_inbound_igc":
		case "train_train_roof":
		case "train_train_start":
		case "underground_maintenance":
		case "underground_staging_room_igc":
		case "underground_water_plant":
		{
			var_1dedaef1 = 1;
			var_33dcf6cf = 1;
			break;
		}
		case default:
		{
			break;
		}
	}
	/#
		println("Dev Block strings are not supported" + var_1dedaef1 + "Dev Block strings are not supported" + var_33dcf6cf + "Dev Block strings are not supported");
	#/
	self function_a7cfc593(var_1dedaef1);
	self function_ba1a260f(var_33dcf6cf);
}

/*
	Name: function_3383b379
	Namespace: namespace_ce0e5f06
	Checksum: 0x9232FB4A
	Offset: 0x1B70
	Size: 0x1E1
	Parameters: 0
	Flags: None
*/
function function_3383b379()
{
	switch(level.var_fee90489[0])
	{
		case "white_infinite_igc":
		{
			level clientfield::set("player_snow_fx", 4);
			break;
		}
		case "factory_alley":
		case "factory_factory_exterior":
		case "factory_factory_intro_igc":
		case "factory_foundry":
		case "factory_inside_man_igc":
		case "factory_vat_room":
		case "factory_warehouse":
		{
			level clientfield::set("player_snow_fx", 1);
			break;
		}
		case "chase_apartment_igc":
		case "chase_bridge_collapse":
		case "chase_chase_start":
		case "chase_construction_site":
		case "chase_glass_ceiling_igc":
		case "chase_old_zurich":
		case "chase_rooftops":
		{
			level clientfield::set("player_snow_fx", 2);
			break;
		}
		case "underground_construction":
		case "underground_crossroads":
		case "underground_maintenance":
		case "underground_pinned_down_igc":
		case "underground_staging_room_igc":
		case "underground_subway":
		case "underground_water_plant":
		{
			level clientfield::set("player_snow_fx", 3);
			break;
		}
		case "train_inbound_igc":
		case "train_train_roof":
		case "train_train_start":
		{
			level clientfield::set("player_snow_fx", 4);
			break;
		}
		case "train_detach_bomb_igc":
		case "waking_up_igc":
		{
			level clientfield::set("player_snow_fx", 0);
			break;
		}
		case default:
		{
			break;
		}
	}
}

/*
	Name: function_85d8906c
	Namespace: namespace_ce0e5f06
	Checksum: 0x67FB644B
	Offset: 0x1D60
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_85d8906c()
{
	level clientfield::set("player_snow_fx", 0);
}

/*
	Name: function_e340d355
	Namespace: namespace_ce0e5f06
	Checksum: 0x821DD1EC
	Offset: 0x1D90
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_e340d355()
{
	if(self function_84a7d8c())
	{
		self thread function_44aa9d22();
		self thread function_efd62bc8();
	}
}

/*
	Name: function_84a7d8c
	Namespace: namespace_ce0e5f06
	Checksum: 0xA5416E50
	Offset: 0x1DE8
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_84a7d8c()
{
	return !isVehicle(self);
}

/*
	Name: function_44aa9d22
	Namespace: namespace_ce0e5f06
	Checksum: 0x52807017
	Offset: 0x1E10
	Size: 0xC1
	Parameters: 0
	Flags: None
*/
function function_44aa9d22()
{
	self endon("hash_70947625");
	self waittill("actor_corpse", e_corpse);
	if(isdefined(level.var_5e7ba27d) && level.var_5e7ba27d)
	{
		wait(10);
	}
	if(isdefined(e_corpse))
	{
		e_corpse clientfield::set("derez_ai_deaths", 1);
	}
	util::wait_network_frame();
	wait(0.1);
	if(isdefined(e_corpse))
	{
		e_corpse delete();
	}
	if(isdefined(self))
	{
		self notify("hash_70947625");
	}
}

/*
	Name: function_efd62bc8
	Namespace: namespace_ce0e5f06
	Checksum: 0x628F9E34
	Offset: 0x1EE0
	Size: 0xC9
	Parameters: 0
	Flags: None
*/
function function_efd62bc8()
{
	self endon("hash_70947625");
	self waittill("start_ragdoll");
	if(isdefined(level.var_5e7ba27d) && level.var_5e7ba27d)
	{
		wait(10);
	}
	else if(self.var_d78410bf === 1)
	{
		wait(4);
	}
	if(isdefined(self))
	{
		self clientfield::set("derez_ai_deaths", 1);
	}
	util::wait_network_frame();
	wait(0.1);
	if(isdefined(self))
	{
		self delete();
		self notify("hash_70947625");
	}
}

/*
	Name: function_523cdc93
	Namespace: namespace_ce0e5f06
	Checksum: 0x365097C2
	Offset: 0x1FB8
	Size: 0x123
	Parameters: 1
	Flags: None
*/
function function_523cdc93(var_9e5eb4d9)
{
	if(!isdefined(var_9e5eb4d9))
	{
		var_9e5eb4d9 = 1;
	}
	if(isdefined(var_9e5eb4d9) && var_9e5eb4d9)
	{
		self waittill("damage", damage, attacker);
		self thread function_91b16538();
		self thread function_4ccc51b5();
	}
	if(isdefined(self))
	{
		self clientfield::set("derez_ai_deaths", 1);
	}
	util::wait_network_frame();
	wait(0.25);
	if(isdefined(attacker) && isPlayer(attacker))
	{
		attacker thread namespace_36358f9c::function_8e9219f();
	}
	if(isdefined(self))
	{
		self notify("hash_ed74b5db");
		self delete();
	}
}

/*
	Name: function_91b16538
	Namespace: namespace_ce0e5f06
	Checksum: 0x5322A8D2
	Offset: 0x20E8
	Size: 0x51
	Parameters: 0
	Flags: None
*/
function function_91b16538()
{
	self endon("hash_ed74b5db");
	self waittill("start_ragdoll");
	wait(0.25);
	if(isdefined(self))
	{
		self delete();
		self notify("hash_ed74b5db");
	}
}

/*
	Name: function_4ccc51b5
	Namespace: namespace_ce0e5f06
	Checksum: 0xE54560C9
	Offset: 0x2148
	Size: 0x69
	Parameters: 0
	Flags: None
*/
function function_4ccc51b5()
{
	self endon("hash_ed74b5db");
	self waittill("actor_corpse", e_corpse);
	wait(0.25);
	if(isdefined(e_corpse))
	{
		e_corpse delete();
	}
	if(isdefined(self))
	{
		self notify("hash_ed74b5db");
	}
}

/*
	Name: function_52c5e321
	Namespace: namespace_ce0e5f06
	Checksum: 0x85128044
	Offset: 0x21C0
	Size: 0x6B
	Parameters: 3
	Flags: None
*/
function function_52c5e321(str_flag, str_aigroup, n_count)
{
	if(flag::get(str_flag))
	{
		return;
	}
	level endon(str_flag);
	spawner::waittill_ai_group_ai_count(str_aigroup, Int(n_count));
}

/*
	Name: function_948d4091
	Namespace: namespace_ce0e5f06
	Checksum: 0x643B60D5
	Offset: 0x2238
	Size: 0x3DB
	Parameters: 7
	Flags: None
*/
function function_948d4091(var_81a32895, var_2380d5c, str_endon, b_looping, var_6e6341cf, var_8cb8bcef, var_9e68f294)
{
	if(!isdefined(var_2380d5c))
	{
		var_2380d5c = 0;
	}
	if(!isdefined(b_looping))
	{
		b_looping = 1;
	}
	self endon("death");
	level endon(str_endon);
	if(isdefined(30))
	{
		__s = spawnstruct();
		__s endon("timeout");
		__s util::delay_notify(30, "timeout");
	}
	self flag::init(var_81a32895 + "_WW_opened");
	self flag::init(var_81a32895 + "_WW_closed");
	self flag::init(var_81a32895 + "_WW_tutorial");
	if(var_81a32895 == "cybercom_fireflyswarm")
	{
		var_bcb7a46f = &"CP_MI_ZURICH_NEWWORLD_SELECT_FIREFLY_LINE_1";
	}
	else if(var_81a32895 == "cybercom_concussive")
	{
		var_bcb7a46f = &"CP_MI_ZURICH_NEWWORLD_SELECT_CONCUSSIVE_WAVE_LINE_1";
	}
	self thread function_8531ac12(var_81a32895, str_endon);
	self thread function_b95b168e(var_81a32895, str_endon);
	if(isdefined(var_9e68f294))
	{
		a_start_flags = Array(var_9e68f294, var_81a32895 + "_WW_tutorial");
		self flag::wait_till_any(a_start_flags);
	}
	a_flags = Array(var_81a32895 + "_WW_tutorial", var_81a32895 + "_WW_closed");
	while(!self flag::get(var_81a32895 + "_WW_tutorial"))
	{
		self function_c585d78f(var_81a32895, str_endon);
		self thread util::hide_hint_text(1);
		wait(0.5);
		while(!self flag::get(var_81a32895 + "_WW_tutorial") && self flag::get(var_81a32895 + "_WW_opened"))
		{
			self thread function_e5122074(var_bcb7a46f, str_endon);
			self flag::wait_till_any_timeout(4, a_flags);
			if(!self flag::get(var_81a32895 + "_WW_tutorial") && self flag::get(var_81a32895 + "_WW_opened"))
			{
				self flag::wait_till_any_timeout(3, a_flags);
			}
		}
		self thread function_d81a8f6f();
	}
	self thread function_6062e90(var_81a32895, var_2380d5c, str_endon, b_looping, var_6e6341cf, undefined, var_8cb8bcef);
}

/*
	Name: function_c585d78f
	Namespace: namespace_ce0e5f06
	Checksum: 0x24BA08B5
	Offset: 0x2620
	Size: 0x1AF
	Parameters: 2
	Flags: None
*/
function function_c585d78f(var_81a32895, str_endon)
{
	self endon("death");
	level endon(str_endon);
	self endon(var_81a32895 + "_WW_opened");
	if(isdefined(30))
	{
		__s = spawnstruct();
		__s endon("timeout");
		__s util::delay_notify(30, "timeout");
	}
	self util::hide_hint_text(1);
	while(!self flag::get(var_81a32895 + "_WW_opened"))
	{
		if(!level.console && !self GamepadUsedLast())
		{
			self thread util::show_hint_text(&"CP_MI_ZURICH_NEWWORLD_OPEN_CYBERCORE_ABILITY_WHEEL_KB", 0, undefined, 4);
		}
		else
		{
			self thread util::show_hint_text(&"CP_MI_ZURICH_NEWWORLD_OPEN_CYBERCORE_ABILITY_WHEEL", 0, undefined, 4);
		}
		self flag::wait_till_timeout(4, var_81a32895 + "_WW_opened");
		if(!self flag::get(var_81a32895 + "_WW_opened"))
		{
			self flag::wait_till_timeout(3, var_81a32895 + "_WW_opened");
		}
	}
}

/*
	Name: function_e5122074
	Namespace: namespace_ce0e5f06
	Checksum: 0x371E7580
	Offset: 0x27D8
	Size: 0xDB
	Parameters: 2
	Flags: None
*/
function function_e5122074(var_bcb7a46f, str_endon)
{
	self endon("death");
	self endon(str_endon);
	self.var_bb5e2d77 = self OpenLUIMenu("CyberComTutorial");
	self SetLUIMenuData(self.var_bb5e2d77, "tutorial_line_1", var_bcb7a46f);
	if(level.console || self GamepadUsedLast())
	{
		self SetLUIMenuData(self.var_bb5e2d77, "tutorial_line_2", &"CP_MI_ZURICH_NEWWORLD_EQUIP_CYBERCORE");
	}
	wait(4);
	self thread function_d81a8f6f();
}

/*
	Name: function_d81a8f6f
	Namespace: namespace_ce0e5f06
	Checksum: 0xA54835D3
	Offset: 0x28C0
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_d81a8f6f()
{
	self endon("death");
	if(isdefined(self.var_bb5e2d77))
	{
		LUI::play_animation(self.var_bb5e2d77, "fadeout");
		wait(0.1);
		self CloseLUIMenu(self.var_bb5e2d77);
	}
}

/*
	Name: function_8531ac12
	Namespace: namespace_ce0e5f06
	Checksum: 0xA03AF4B9
	Offset: 0x2930
	Size: 0x147
	Parameters: 2
	Flags: None
*/
function function_8531ac12(var_81a32895, str_endon)
{
	self endon("death");
	level endon(str_endon);
	if(isdefined(30))
	{
		__s = spawnstruct();
		__s endon("timeout");
		__s util::delay_notify(30, "timeout");
	}
	while(!self flag::get(var_81a32895 + "_WW_tutorial"))
	{
		self waittill("menuresponse", menu, response);
		var_66700f08 = StrTok(response, ",");
		if(var_66700f08[0] == "opened")
		{
			self flag::set(var_81a32895 + "_WW_opened");
			self flag::clear(var_81a32895 + "_WW_closed");
		}
	}
}

/*
	Name: function_b95b168e
	Namespace: namespace_ce0e5f06
	Checksum: 0x72E6C595
	Offset: 0x2A80
	Size: 0x167
	Parameters: 2
	Flags: None
*/
function function_b95b168e(var_81a32895, str_endon)
{
	self endon("death");
	level endon(str_endon);
	if(isdefined(30))
	{
		__s = spawnstruct();
		__s endon("timeout");
		__s util::delay_notify(30, "timeout");
	}
	while(1)
	{
		self waittill("menuresponse", menu, response);
		var_66700f08 = StrTok(response, ",");
		if(var_66700f08[0] == "opened")
		{
			continue;
		}
		if(var_66700f08[0] == var_81a32895)
		{
			self flag::set(var_81a32895 + "_WW_tutorial");
			break;
		}
		else
		{
			self flag::clear(var_81a32895 + "_WW_opened");
			self flag::set(var_81a32895 + "_WW_closed");
		}
	}
}

/*
	Name: function_6062e90
	Namespace: namespace_ce0e5f06
	Checksum: 0x415CA440
	Offset: 0x2BF0
	Size: 0x3CF
	Parameters: 8
	Flags: None
*/
function function_6062e90(var_81a32895, var_2380d5c, str_endon, b_looping, var_6e6341cf, var_e8551372, var_9e68f294, var_3945b2c8)
{
	if(!isdefined(var_2380d5c))
	{
		var_2380d5c = 0;
	}
	if(!isdefined(b_looping))
	{
		b_looping = 1;
	}
	self endon("death");
	if(IsArray(str_endon))
	{
		foreach(str_condition in str_endon)
		{
			level endon(str_condition);
		}
	}
	else
	{
		level endon(str_endon);
	}
	if(isdefined(var_3945b2c8))
	{
		self endon(var_3945b2c8);
	}
	if(SessionModeIsCampaignZombiesGame())
	{
		return;
	}
	self GadgetPowerSet(0, 100);
	self GadgetPowerSet(1, 100);
	var_279df5c8 = 0;
	if(var_81a32895 == "cybercom_fireflyswarm" || var_81a32895 == "cybercom_rapidstrike" || var_81a32895 == "cybercom_concussive")
	{
		var_279df5c8 = 1;
	}
	if(isdefined(30))
	{
		__s = spawnstruct();
		__s endon("timeout");
		__s util::delay_notify(30, "timeout");
	}
	if(!self flag::exists(var_81a32895 + "_use_ability_tutorial"))
	{
		self flag::init(var_81a32895 + "_use_ability_tutorial");
	}
	else
	{
		self flag::clear(var_81a32895 + "_use_ability_tutorial");
	}
	self thread function_a7a2da7e(var_81a32895, var_2380d5c, str_endon);
	if(isdefined(var_9e68f294))
	{
		if(IsFloat(var_9e68f294) || IsInt(var_9e68f294))
		{
			n_wait = var_9e68f294;
			wait(n_wait);
			continue;
		}
		if(self flag::exists(var_9e68f294))
		{
			self flag::wait_till(var_9e68f294);
			continue;
		}
		if(level flag::exists(var_9e68f294))
		{
			level flag::wait_till(var_9e68f294);
		}
	}
	while(!self flag::get(var_81a32895 + "_use_ability_tutorial"))
	{
		self function_c60fae50(var_81a32895, str_endon, b_looping, var_6e6341cf);
		if(!var_279df5c8)
		{
			self function_5dca74fc(var_81a32895, str_endon, var_e8551372);
		}
	}
}

/*
	Name: function_c60fae50
	Namespace: namespace_ce0e5f06
	Checksum: 0x26838167
	Offset: 0x2FC8
	Size: 0x207
	Parameters: 4
	Flags: None
*/
function function_c60fae50(var_81a32895, str_endon, b_looping, var_f069395f)
{
	self endon("death");
	if(IsArray(str_endon))
	{
		foreach(str_condition in str_endon)
		{
			level endon(str_condition);
		}
	}
	else
	{
		level endon(str_endon);
	}
	self endon(var_81a32895 + "_primed");
	if(isdefined(30))
	{
		__s = spawnstruct();
		__s endon("timeout");
		__s util::delay_notify(30, "timeout");
	}
	while(!self flag::get(var_81a32895 + "_use_ability_tutorial"))
	{
		if(isdefined(var_f069395f))
		{
			self thread util::show_hint_text(var_f069395f, 0, undefined, 4);
		}
		else
		{
			self thread util::show_hint_text(&"CP_MI_ZURICH_NEWWORLD_USE_CYBERCORE", 0, undefined, 4);
		}
		if(b_looping === 1)
		{
			if(!self flag::get(var_81a32895 + "_use_ability_tutorial"))
			{
				self flag::wait_till_timeout(3, var_81a32895 + "_use_ability_tutorial");
			}
		}
		else
		{
			break;
		}
	}
}

/*
	Name: function_5dca74fc
	Namespace: namespace_ce0e5f06
	Checksum: 0x6F019B5C
	Offset: 0x31D8
	Size: 0x1B7
	Parameters: 3
	Flags: None
*/
function function_5dca74fc(var_81a32895, str_endon, var_e8551372)
{
	self endon("death");
	if(IsArray(str_endon))
	{
		foreach(str_condition in str_endon)
		{
			level endon(str_condition);
		}
	}
	else
	{
		level endon(str_endon);
	}
	self endon(var_81a32895 + "_off");
	if(isdefined(30))
	{
		__s = spawnstruct();
		__s endon("timeout");
		__s util::delay_notify(30, "timeout");
	}
	self util::hide_hint_text(1);
	while(!self flag::get(var_81a32895 + "_use_ability_tutorial"))
	{
		level waittill("hash_92698df4", ent, e_player);
		if(e_player == self)
		{
			self function_e52b73c0(var_81a32895, str_endon, var_e8551372);
		}
	}
}

/*
	Name: function_e52b73c0
	Namespace: namespace_ce0e5f06
	Checksum: 0x29C326C3
	Offset: 0x3398
	Size: 0x1BB
	Parameters: 3
	Flags: None
*/
function function_e52b73c0(var_81a32895, str_endon, var_f069395f)
{
	self endon("death");
	if(IsArray(str_endon))
	{
		foreach(str_condition in str_endon)
		{
			level endon(str_condition);
		}
	}
	else
	{
		level endon(str_endon);
	}
	self endon(var_81a32895 + "_off");
	if(isdefined(30))
	{
		__s = spawnstruct();
		__s endon("timeout");
		__s util::delay_notify(30, "timeout");
	}
	self endon("hash_5e2557e1");
	self thread function_e84823a9(var_81a32895, str_endon);
	wait(0.8);
	self util::show_hint_text(var_f069395f, 0, undefined, 4);
	if(!self flag::get(var_81a32895 + "_use_ability_tutorial"))
	{
		self flag::wait_till_timeout(3, var_81a32895 + "_use_ability_tutorial");
	}
}

/*
	Name: function_e84823a9
	Namespace: namespace_ce0e5f06
	Checksum: 0x985C5D6B
	Offset: 0x3560
	Size: 0x1A1
	Parameters: 2
	Flags: None
*/
function function_e84823a9(var_81a32895, str_endon)
{
	self endon("death");
	if(IsArray(str_endon))
	{
		foreach(str_condition in str_endon)
		{
			level endon(str_condition);
		}
	}
	else
	{
		level endon(str_endon);
	}
	self endon(var_81a32895 + "_off");
	if(isdefined(30))
	{
		__s = spawnstruct();
		__s endon("timeout");
		__s util::delay_notify(30, "timeout");
	}
	while(1)
	{
		level waittill("hash_de3c9ffe", ent, e_player);
		if(e_player == self)
		{
			if(isdefined(self.cybercom) && self.cybercom.var_d1460543.size < 1)
			{
				self notify("hash_5e2557e1");
				self util::hide_hint_text(1);
				return;
			}
		}
	}
}

/*
	Name: function_a7a2da7e
	Namespace: namespace_ce0e5f06
	Checksum: 0xAA59DC84
	Offset: 0x3710
	Size: 0x1BB
	Parameters: 3
	Flags: None
*/
function function_a7a2da7e(var_81a32895, var_2380d5c, str_endon)
{
	if(!isdefined(var_2380d5c))
	{
		var_2380d5c = 0;
	}
	self endon("death");
	if(IsArray(str_endon))
	{
		foreach(str_condition in str_endon)
		{
			level endon(str_condition);
		}
	}
	else
	{
		level endon(str_endon);
	}
	if(isdefined(30))
	{
		__s = spawnstruct();
		__s endon("timeout");
		__s util::delay_notify(30, "timeout");
	}
	weapon = function_71840183(var_81a32895, var_2380d5c);
	self waittill(weapon.name + "_fired");
	self flag::set(var_81a32895 + "_use_ability_tutorial");
	level notify(var_81a32895 + "_use_ability_tutorial");
	self util::hide_hint_text(1);
}

/*
	Name: function_71840183
	Namespace: namespace_ce0e5f06
	Checksum: 0x9559DA0C
	Offset: 0x38D8
	Size: 0x93
	Parameters: 2
	Flags: None
*/
function function_71840183(var_81a32895, var_2380d5c)
{
	if(!isdefined(var_2380d5c))
	{
		var_2380d5c = 0;
	}
	weapon = undefined;
	ability = namespace_d00ec32::function_85c33215(var_81a32895);
	if(var_2380d5c == 1)
	{
		weapon = ability.var_b3a36101;
	}
	else
	{
		weapon = ability.weapon;
	}
	return weapon;
}

/*
	Name: function_2e7b4007
	Namespace: namespace_ce0e5f06
	Checksum: 0xD6F9C10D
	Offset: 0x3978
	Size: 0x11F
	Parameters: 0
	Flags: None
*/
function function_2e7b4007()
{
	self endon("death");
	level endon("hash_982eac9f");
	self.var_8a320fc6 = 0;
	var_6d5d984c = function_71840183("cybercom_immolation");
	var_bb989cf4 = var_6d5d984c.name + "_fired";
	var_239727aa = function_71840183("cybercom_fireflyswarm", 1);
	var_aa2f1c54 = var_239727aa.name + "_fired";
	self thread function_6851db33(var_6d5d984c, var_239727aa);
	while(1)
	{
		self util::waittill_any(var_bb989cf4, var_aa2f1c54);
		self notify("hash_33cbd3b4");
		self.var_8a320fc6++;
	}
}

/*
	Name: function_6851db33
	Namespace: namespace_ce0e5f06
	Checksum: 0xE5FDD5F6
	Offset: 0x3AA0
	Size: 0x135
	Parameters: 2
	Flags: None
*/
function function_6851db33(var_3283f77e, var_239727aa)
{
	self endon("death");
	level endon("hash_982eac9f");
	while(1)
	{
		wait(90);
		if(self.var_8a320fc6 < 1)
		{
			self notify("hash_6851db33");
			if(self._gadgets_player[0] === var_3283f77e)
			{
				self thread function_6062e90("cybercom_immolation", 0, "underground_combat_complete", 1, "CP_MI_ZURICH_NEWWORLD_IMMOLATION_TARGET", "CP_MI_ZURICH_NEWWORLD_IMMOLATION_RELEASE");
			}
			else if(self._gadgets_player[0] === var_239727aa)
			{
				self thread function_6062e90("cybercom_fireflyswarm", 1, "underground_combat_complete", 1, "CP_MI_ZURICH_NEWWORLD_FIREFLY_SWARM_TUTORIAL");
			}
			self util::waittill_any_timeout(4, "cc_ability_used");
			self thread util::hide_hint_text(1);
		}
		else
		{
			return;
		}
	}
}

/*
	Name: function_70176ad6
	Namespace: namespace_ce0e5f06
	Checksum: 0x3E57CAE6
	Offset: 0x3BE0
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_70176ad6()
{
	self endon("death");
	if(self function_c633d8fe())
	{
		return;
	}
	if(!isdefined(self.var_98bf72c3))
	{
		self.var_98bf72c3 = 0;
	}
	while(self.var_98bf72c3 < 3)
	{
		self waittill("hash_f806d274", var_a37dc4a8, var_2de327e8);
		if(var_2de327e8 == 1)
		{
			self.var_98bf72c3++;
			self util::show_hint_text(&"CP_MI_ZURICH_NEWWORLD_CYBERCOM_RECHARGE", 0, undefined, 4);
			level notify("hash_76cbcc2f");
			wait(30);
		}
	}
}

/*
	Name: function_520255e3
	Namespace: namespace_ce0e5f06
	Checksum: 0xEDACD404
	Offset: 0x3CB8
	Size: 0x75
	Parameters: 2
	Flags: None
*/
function function_520255e3(str_trigger, time)
{
	str_notify = "mufc_" + str_trigger;
	level thread function_901793d(str_trigger, str_notify);
	level thread function_2ffbaa00(time, str_notify);
	level waittill(str_notify);
}

/*
	Name: function_901793d
	Namespace: namespace_ce0e5f06
	Checksum: 0xF33D2309
	Offset: 0x3D38
	Size: 0x6B
	Parameters: 2
	Flags: None
*/
function function_901793d(str_trigger, str_notify)
{
	level endon(str_notify);
	e_trigger = GetEnt(str_trigger, "targetname");
	if(isdefined(e_trigger))
	{
		e_trigger waittill("trigger");
	}
	level notify(str_notify);
}

/*
	Name: function_2ffbaa00
	Namespace: namespace_ce0e5f06
	Checksum: 0xD3A8D407
	Offset: 0x3DB0
	Size: 0x2B
	Parameters: 2
	Flags: None
*/
function function_2ffbaa00(time, str_notify)
{
	level endon(str_notify);
	wait(time);
	level notify(str_notify);
}

/*
	Name: function_f29e6c6d
	Namespace: namespace_ce0e5f06
	Checksum: 0xBC66FCB4
	Offset: 0x3DE8
	Size: 0x7D
	Parameters: 1
	Flags: None
*/
function function_f29e6c6d(var_7daa2a51)
{
	a_spawners = GetEntArray(var_7daa2a51, "targetname");
	for(i = 0; i < a_spawners.size; i++)
	{
		a_spawners[i] thread function_9a829e81();
	}
}

/*
	Name: function_9a829e81
	Namespace: namespace_ce0e5f06
	Checksum: 0xC4C8F875
	Offset: 0x3E70
	Size: 0x153
	Parameters: 0
	Flags: None
*/
function function_9a829e81()
{
	if(isdefined(self.script_delay))
	{
		wait(self.script_delay);
	}
	e_ent = self spawner::spawn();
	e_ent endon("death");
	if(isdefined(e_ent.script_noteworthy) && e_ent.script_noteworthy == "rusher_on_spawn")
	{
		e_ent ai::set_behavior_attribute("move_mode", "rusher");
		e_ent ai::set_behavior_attribute("sprint", 1);
	}
	if(isdefined(e_ent.target))
	{
		e_ent waittill("goal");
	}
	if(isdefined(e_ent.script_noteworthy) && e_ent.script_noteworthy == "rusher_at_goal")
	{
		e_ent ai::set_behavior_attribute("move_mode", "rusher");
		e_ent ai::set_behavior_attribute("sprint", 1);
	}
}

/*
	Name: function_68b8f4af
	Namespace: namespace_ce0e5f06
	Checksum: 0x2B79F0E9
	Offset: 0x3FD0
	Size: 0xAB
	Parameters: 1
	Flags: None
*/
function function_68b8f4af(e_volume)
{
	a_ai = GetAITeamArray("axis");
	var_4c8fa27e = [];
	for(i = 0; i < a_ai.size; i++)
	{
		if(a_ai[i] istouching(e_volume))
		{
			var_4c8fa27e[var_4c8fa27e.size] = a_ai[i];
		}
	}
	return var_4c8fa27e;
}

/*
	Name: function_c478189b
	Namespace: namespace_ce0e5f06
	Checksum: 0xCABB0886
	Offset: 0x4088
	Size: 0x18D
	Parameters: 4
	Flags: None
*/
function function_c478189b(str_trigger, var_390543cc, var_9d774f5d, var_43a68d40)
{
	if(isdefined(str_trigger))
	{
		e_trigger = GetEnt(str_trigger, "targetname");
		e_trigger waittill("trigger");
	}
	var_441bd962 = GetEnt(var_390543cc, "targetname");
	var_ee2fd889 = GetEnt(var_9d774f5d, "targetname");
	a_ai = GetAITeamArray("axis");
	if(!isdefined(var_43a68d40))
	{
		var_43a68d40 = a_ai.size;
	}
	if(var_43a68d40 > a_ai.size)
	{
		var_43a68d40 = a_ai.size;
	}
	for(i = 0; i < var_43a68d40; i++)
	{
		e_ent = a_ai[i];
		if(e_ent istouching(var_441bd962))
		{
			e_ent setgoalvolume(var_ee2fd889);
		}
	}
}

/*
	Name: function_f5363f47
	Namespace: namespace_ce0e5f06
	Checksum: 0xF3587FE3
	Offset: 0x4220
	Size: 0xA7
	Parameters: 1
	Flags: None
*/
function function_f5363f47(str_trigger)
{
	a_triggers = GetEntArray(str_trigger, "targetname");
	str_notify = str_trigger + "_waiting";
	for(i = 0; i < a_triggers.size; i++)
	{
		level thread function_7eb8a7ab(a_triggers[i], str_notify);
	}
	level waittill(str_notify);
}

/*
	Name: function_7eb8a7ab
	Namespace: namespace_ce0e5f06
	Checksum: 0x75F0BFD
	Offset: 0x42D0
	Size: 0x33
	Parameters: 2
	Flags: None
*/
function function_7eb8a7ab(e_trigger, str_notify)
{
	level endon(str_notify);
	e_trigger waittill("trigger");
	level notify(str_notify);
}

/*
	Name: num_players_touching_volume
	Namespace: namespace_ce0e5f06
	Checksum: 0xB91F47A2
	Offset: 0x4310
	Size: 0x91
	Parameters: 1
	Flags: None
*/
function num_players_touching_volume(e_volume)
{
	a_players = GetPlayers();
	var_f04bd8f5 = 0;
	for(i = 0; i < a_players.size; i++)
	{
		if(a_players[i] istouching(e_volume))
		{
			var_f04bd8f5++;
		}
	}
	return var_f04bd8f5;
}

/*
	Name: function_e0fb6da9
	Namespace: namespace_ce0e5f06
	Checksum: 0x1883B361
	Offset: 0x43B0
	Size: 0x463
	Parameters: 9
	Flags: None
*/
function function_e0fb6da9(str_struct, close_dist, wait_time_min, wait_time_max, var_d1b83750, MAX_AI, var_a70db4af, var_1813646e, var_98e9bc46)
{
	a_players = GetPlayers();
	if(a_players.size > 1)
	{
		return;
	}
	s_struct = struct::get(str_struct, "targetname");
	var_37124366 = GetEnt(var_1813646e, "targetname");
	var_7d22b48e = GetEnt(var_98e9bc46, "targetname");
	v_forward = AnglesToForward(s_struct.angles);
	s_struct.start_time = undefined;
	var_cc06a93d = 0;
	wait_time = randomIntRange(wait_time_min, wait_time_max);
	while(1)
	{
		e_player = GetPlayers()[0];
		v_dir = s_struct.origin - e_player.origin;
		var_989d1f7c = VectorDot(v_dir, v_forward);
		if(var_989d1f7c < -100)
		{
			return;
		}
		dist = Distance(s_struct.origin, e_player.origin);
		if(dist < close_dist)
		{
			if(!isdefined(s_struct.start_time))
			{
				s_struct.start_time = GetTime();
			}
		}
		else
		{
			s_struct.start_time = undefined;
		}
		if(isdefined(s_struct.start_time))
		{
			time = GetTime();
			DT = time - s_struct.start_time / 1000;
			if(DT > wait_time)
			{
				a_ai = GetAITeamArray("axis");
				var_4c8fa27e = [];
				for(i = 0; i < a_ai.size; i++)
				{
					e_ent = a_ai[i];
					if(!isdefined(e_ent.var_db552f4))
					{
						if(e_ent istouching(var_37124366))
						{
							var_4c8fa27e[var_4c8fa27e.size] = e_ent;
						}
					}
				}
				var_d6f9eed8 = randomIntRange(var_d1b83750, MAX_AI + 1);
				if(var_d6f9eed8 > var_4c8fa27e.size)
				{
					var_d6f9eed8 = var_4c8fa27e.size;
				}
				for(i = 0; i < var_d6f9eed8; i++)
				{
					var_4c8fa27e[i] SetGoal(var_7d22b48e);
					var_4c8fa27e[i].var_db552f4 = 1;
				}
				s_struct.start_time = undefined;
				var_cc06a93d++;
				if(var_cc06a93d >= var_a70db4af)
				{
					return;
				}
				wait_time = randomIntRange(wait_time_min, wait_time_max);
			}
		}
		wait(0.05);
	}
}

/*
	Name: function_8f7b1e06
	Namespace: namespace_ce0e5f06
	Checksum: 0xB773A099
	Offset: 0x4820
	Size: 0x155
	Parameters: 3
	Flags: None
*/
function function_8f7b1e06(str_trigger, var_390543cc, var_9d774f5d)
{
	if(isdefined(str_trigger))
	{
		e_trigger = GetEnt(str_trigger, "targetname");
		e_trigger waittill("trigger");
	}
	var_441bd962 = GetEnt(var_390543cc, "targetname");
	var_ee2fd889 = GetEnt(var_9d774f5d, "targetname");
	a_ai = GetAITeamArray("axis");
	for(i = 0; i < a_ai.size; i++)
	{
		e_ent = a_ai[i];
		if(e_ent istouching(var_441bd962))
		{
			e_ent setgoalvolume(var_ee2fd889);
		}
	}
}

/*
	Name: function_bccc2e65
	Namespace: namespace_ce0e5f06
	Checksum: 0x92A22C39
	Offset: 0x4980
	Size: 0x125
	Parameters: 4
	Flags: None
*/
function function_bccc2e65(str_aigroup, var_6ec47843, str_node, goal_radius)
{
	spawner::waittill_ai_group_ai_count("aig_water_treatment", var_6ec47843);
	nd_node = GetNode(str_node, "targetname");
	a_ai = GetEntArray(str_aigroup, "script_aigroup");
	for(i = 0; i < a_ai.size; i++)
	{
		e_ent = a_ai[i];
		if(IsSentient(e_ent))
		{
			e_ent.goalRadius = goal_radius;
			e_ent SetGoal(nd_node.origin);
		}
	}
}

/*
	Name: function_eaf9c027
	Namespace: namespace_ce0e5f06
	Checksum: 0x9A6107DE
	Offset: 0x4AB0
	Size: 0x7B
	Parameters: 3
	Flags: None
*/
function function_eaf9c027(str_movie_name, var_e0017db3, var_43656dbb)
{
	if(!isdefined(var_e0017db3))
	{
		var_e0017db3 = "fullscreen";
	}
	if(!isdefined(var_43656dbb))
	{
		var_43656dbb = 0;
	}
	if(!isdefined(var_e0017db3))
	{
		var_e0017db3 = "fullscreen";
	}
	level function_dd048f8d(str_movie_name, var_e0017db3, var_43656dbb);
}

/*
	Name: function_dd048f8d
	Namespace: namespace_ce0e5f06
	Checksum: 0x379929B6
	Offset: 0x4B38
	Size: 0x171
	Parameters: 3
	Flags: None
*/
function function_dd048f8d(str_movie_name, var_e0017db3, var_43656dbb)
{
	if(!isdefined(var_e0017db3))
	{
		var_e0017db3 = "fullscreen";
	}
	if(var_43656dbb)
	{
		foreach(player in level.players)
		{
			player clientfield::increment_to_player("postfx_futz", 1);
		}
	}
	LUI::play_movie(str_movie_name, var_e0017db3);
	if(var_43656dbb)
	{
		foreach(player in level.players)
		{
			player clientfield::increment_to_player("postfx_futz", 1);
		}
	}
}

/*
	Name: function_30ec5bf7
	Namespace: namespace_ce0e5f06
	Checksum: 0xDEEAC896
	Offset: 0x4CB8
	Size: 0x23B
	Parameters: 1
	Flags: None
*/
function function_30ec5bf7(var_74cd64bc)
{
	if(!isdefined(var_74cd64bc))
	{
		var_74cd64bc = 0;
	}
	if(var_74cd64bc)
	{
		level flag::set("infinite_white_transition");
		lock_player_controls(1);
		util::screen_fade_out(0, "white", "infinite_white");
	}
	else
	{
		level flag::wait_till("infinite_white_transition");
		LUI::prime_movie("cp_newworld_fs_whiteinfinite", 1);
		lock_player_controls(1);
		util::screen_fade_out(0.5, "white", "infinite_white");
		level thread LUI::play_movie("cp_newworld_fs_whiteinfinite", "fullscreen", 0, 1);
	}
	level flag::wait_till_clear("infinite_white_transition");
	foreach(e_player in level.activePlayers)
	{
		e_player notify("menuresponse", "FullscreenMovie", "finished_movie_playback");
	}
	util::screen_fade_in(0.5, "white", "infinite_white");
	lock_player_controls(0);
	function_4a0fb95e("cp_newworld_fs_whiteinfinite");
}

/*
	Name: function_43dfaf16
	Namespace: namespace_ce0e5f06
	Checksum: 0x1657243C
	Offset: 0x4F00
	Size: 0x99
	Parameters: 1
	Flags: None
*/
function function_43dfaf16(a_ents)
{
	foreach(player in level.activePlayers)
	{
		player notify("menuresponse", "FullscreenMovie", "finished_movie_playback");
	}
}

/*
	Name: lock_player_controls
	Namespace: namespace_ce0e5f06
	Checksum: 0x33D31110
	Offset: 0x4FA8
	Size: 0xE1
	Parameters: 1
	Flags: None
*/
function lock_player_controls(var_a5efd39d)
{
	if(!isdefined(var_a5efd39d))
	{
		var_a5efd39d = 1;
	}
	foreach(player in level.activePlayers)
	{
		if(var_a5efd39d)
		{
			player EnableInvulnerability();
		}
		else
		{
			player DisableInvulnerability();
		}
		player util::freeze_player_controls(var_a5efd39d);
	}
}

/*
	Name: function_16dd8c5f
	Namespace: namespace_ce0e5f06
	Checksum: 0x5EA8882D
	Offset: 0x5098
	Size: 0x1D7
	Parameters: 6
	Flags: None
*/
function function_16dd8c5f(str_triggername, str_type, str_hint, var_8baec92b, var_2df3d133, var_d78830f5)
{
	if(!isdefined(str_type))
	{
		str_type = &"cp_level_newworld_access_door";
	}
	if(!isdefined(str_hint))
	{
		str_hint = &"CP_MI_ZURICH_NEWWORLD_HACK";
	}
	if(!isdefined(var_d78830f5))
	{
		var_d78830f5 = 0;
	}
	var_2a0a99e4 = GetEnt(str_triggername, "targetname");
	var_2a0a99e4 TriggerEnable(1);
	if(isdefined(var_8baec92b))
	{
		var_69f96d87 = GetEntArray(var_8baec92b, "targetname");
	}
	else
	{
		var_69f96d87 = [];
	}
	if(!var_d78830f5)
	{
		var_dcf4cbb0 = util::function_14518e76(var_2a0a99e4, str_type, str_hint, &function_e27a8082, var_69f96d87);
		var_dcf4cbb0.var_2df3d133 = var_2df3d133;
		level waittill(var_2df3d133, e_player);
	}
	else
	{
		var_2a0a99e4 hacking::function_68df65d8(1, str_type, str_hint, undefined, var_69f96d87);
		var_2a0a99e4 hacking::trigger_wait();
	}
	if(isdefined(var_2df3d133))
	{
		level notify(var_2df3d133);
	}
	if(isdefined(e_player))
	{
		return e_player;
	}
}

/*
	Name: function_e27a8082
	Namespace: namespace_ce0e5f06
	Checksum: 0x37AA6EF0
	Offset: 0x5278
	Size: 0x35
	Parameters: 1
	Flags: None
*/
function function_e27a8082(e_player)
{
	self gameobjects::disable_object();
	level notify(self.var_2df3d133, e_player);
}

/*
	Name: function_39c9b63e
	Namespace: namespace_ce0e5f06
	Checksum: 0x7FA9BC14
	Offset: 0x52B8
	Size: 0x1A1
	Parameters: 2
	Flags: None
*/
function function_39c9b63e(b_enable, var_98011344)
{
	if(!isdefined(b_enable))
	{
		b_enable = 1;
	}
	a_caches = GetEntArray("ammo_cache", "script_noteworthy");
	foreach(e_ammo_cache in a_caches)
	{
		if(isdefined(e_ammo_cache.gameobject) && (e_ammo_cache.script_objective === var_98011344 || !isdefined(var_98011344)))
		{
			if(!b_enable)
			{
				e_ammo_cache namespace_16f9ecd3::disable_thermal();
				e_ammo_cache namespace_16f9ecd3::function_14ec2d71();
				e_ammo_cache.gameobject gameobjects::disable_object();
				continue;
			}
			e_ammo_cache.gameobject gameobjects::enable_object();
			e_ammo_cache namespace_16f9ecd3::function_b3ce91e0();
			e_ammo_cache namespace_16f9ecd3::function_e228c18a();
		}
	}
}

/*
	Name: function_95132241
	Namespace: namespace_ce0e5f06
	Checksum: 0xD27DCF03
	Offset: 0x5468
	Size: 0x103
	Parameters: 0
	Flags: None
*/
function function_95132241()
{
	self endon("death");
	b_can_delete = 0;
	while(b_can_delete == 0)
	{
		wait(1);
		foreach(e_player in level.activePlayers)
		{
			if(e_player util::is_player_looking_at(self.origin) == 0)
			{
				b_can_delete = 1;
				continue;
			}
			b_can_delete = 0;
		}
	}
	self util::stop_magic_bullet_shield();
	self kill();
}

/*
	Name: function_c1c980d8
	Namespace: namespace_ce0e5f06
	Checksum: 0x5F8741CE
	Offset: 0x5578
	Size: 0x153
	Parameters: 1
	Flags: None
*/
function function_c1c980d8(str_trigger)
{
	a_enemies = GetAITeamArray("axis");
	t_trigger = GetEnt(str_trigger, "targetname");
	/#
		Assert(isdefined(t_trigger), "Dev Block strings are not supported");
	#/
	foreach(enemy in a_enemies)
	{
		if(isalive(enemy) && enemy istouching(t_trigger))
		{
			enemy thread function_95132241();
		}
	}
	t_trigger delete();
}

/*
	Name: function_c949a8ed
	Namespace: namespace_ce0e5f06
	Checksum: 0x9E0DD75C
	Offset: 0x56D8
	Size: 0xA3
	Parameters: 1
	Flags: None
*/
function function_c949a8ed(var_b06baa1b)
{
	if(!isdefined(var_b06baa1b))
	{
		var_b06baa1b = 0;
	}
	self thread function_e44cc74b(var_b06baa1b);
	self playsound("evt_ai_derez");
	if(var_b06baa1b)
	{
		self clientfield::increment("cs_rez_in_fx", 2);
	}
	else
	{
		self clientfield::increment("cs_rez_in_fx", 1);
	}
}

/*
	Name: function_e44cc74b
	Namespace: namespace_ce0e5f06
	Checksum: 0x8FE77997
	Offset: 0x5788
	Size: 0x16B
	Parameters: 1
	Flags: None
*/
function function_e44cc74b(var_b06baa1b)
{
	self endon("death");
	if(var_b06baa1b)
	{
		if(self.animName == "hall")
		{
			self SetModel("c_hro_sarah_salvation_reveal");
		}
		else if(!(isdefined(self.isDying) && self.isDying))
		{
			self SetModel("c_hro_" + self.animName + "_base_rev");
		}
		util::wait_network_frame();
		self show();
		wait(0.5);
		if(self.animName == "hall")
		{
			self SetModel("c_hro_sarah_base");
		}
		else if(!(isdefined(self.isDying) && self.isDying))
		{
			self SetModel("c_hro_" + self.animName + "_base");
		}
	}
	else
	{
		wait(0.4);
		self show();
	}
}

/*
	Name: function_4943984c
	Namespace: namespace_ce0e5f06
	Checksum: 0xCEF727B3
	Offset: 0x5900
	Size: 0xA3
	Parameters: 1
	Flags: None
*/
function function_4943984c(var_b06baa1b)
{
	if(!isdefined(var_b06baa1b))
	{
		var_b06baa1b = 0;
	}
	self thread function_9ab5a5ab(var_b06baa1b);
	self playsound("evt_ai_derez");
	if(var_b06baa1b)
	{
		self clientfield::increment("cs_rez_out_fx", 2);
	}
	else
	{
		self clientfield::increment("cs_rez_out_fx", 1);
	}
}

/*
	Name: function_9ab5a5ab
	Namespace: namespace_ce0e5f06
	Checksum: 0xB35190FD
	Offset: 0x59B0
	Size: 0x15B
	Parameters: 1
	Flags: None
*/
function function_9ab5a5ab(var_b06baa1b)
{
	self endon("death");
	if(var_b06baa1b)
	{
		if(self.animName == "hall")
		{
			self SetModel("c_hro_sarah_salvation_reveal");
		}
		else if(!(isdefined(self.isDying) && self.isDying))
		{
			self SetModel("c_hro_" + self.animName + "_base_rev");
		}
		wait(0.5);
		self ghost();
		if(self.animName == "hall")
		{
			self SetModel("c_hro_sarah_base");
		}
		else if(!(isdefined(self.isDying) && self.isDying))
		{
			self SetModel("c_hro_" + self.animName + "_base");
		}
	}
	else
	{
		wait(0.4);
		self ghost();
	}
}

/*
	Name: function_d0aa2f4f
	Namespace: namespace_ce0e5f06
	Checksum: 0x76F5CDC7
	Offset: 0x5B18
	Size: 0x7B
	Parameters: 1
	Flags: None
*/
function function_d0aa2f4f(n_delay)
{
	if(!isdefined(n_delay))
	{
		n_delay = 0.25;
	}
	self endon("death");
	self function_4943984c();
	wait(0.4);
	self util::delay(n_delay, undefined, &function_c949a8ed);
}

/*
	Name: function_737d2864
	Namespace: namespace_ce0e5f06
	Checksum: 0x51E91437
	Offset: 0x5BA0
	Size: 0x113
	Parameters: 2
	Flags: None
*/
function function_737d2864(str_location, str_time)
{
	if(SessionModeIsCampaignZombiesGame())
	{
		return;
	}
	self endon("death");
	wait(3);
	self.var_55167309 = self OpenLUIMenu("LocationAndTime");
	self SetLUIMenuData(self.var_55167309, "loctime_location", str_location);
	self SetLUIMenuData(self.var_55167309, "loctime_date", str_time);
	wait(5);
	LUI::play_animation(self.var_55167309, "fadeout");
	wait(1.3);
	self CloseLUIMenu(self.var_55167309);
}

/*
	Name: function_c633d8fe
	Namespace: namespace_ce0e5f06
	Checksum: 0x82785A1D
	Offset: 0x5CC0
	Size: 0x71
	Parameters: 0
	Flags: None
*/
function function_c633d8fe()
{
	if(SessionModeIsCampaignZombiesGame())
	{
		return 1;
	}
	/#
		Assert(isPlayer(self));
	#/
	return self GetDStat("PlayerStatsByMap", "cp_mi_zurich_newworld", "hasBeenCompleted");
}

/*
	Name: function_81acf083
	Namespace: namespace_ce0e5f06
	Checksum: 0x32B93383
	Offset: 0x5D40
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_81acf083()
{
	var_ed60aa22 = 1;
	foreach(player in level.activePlayers)
	{
		if(!player function_c633d8fe())
		{
			var_ed60aa22 = 0;
			break;
		}
	}
	return var_ed60aa22;
}

/*
	Name: function_70aba08e
	Namespace: namespace_ce0e5f06
	Checksum: 0x9B81C9BA
	Offset: 0x5E00
	Size: 0xB5
	Parameters: 0
	Flags: None
*/
function function_70aba08e()
{
	var_6a25d5b0 = 0;
	foreach(player in level.players)
	{
		if(player function_1a9006bd("cybercom_hijack"))
		{
			var_6a25d5b0 = 1;
			break;
		}
	}
	return var_6a25d5b0;
}

/*
	Name: function_3e37f48b
	Namespace: namespace_ce0e5f06
	Checksum: 0xDEF0B53A
	Offset: 0x5EC0
	Size: 0x1C3
	Parameters: 1
	Flags: None
*/
function function_3e37f48b(b_enabled)
{
	if(SessionModeIsCampaignZombiesGame())
	{
		return;
	}
	level flag::wait_till("all_players_connected");
	if(b_enabled)
	{
		foreach(e_player in level.activePlayers)
		{
			if(e_player function_c633d8fe())
			{
				continue;
			}
			level notify("enable_cybercom", e_player);
		}
		callback::remove_on_spawned(&function_d17cfcf8);
	}
	else
	{
		foreach(e_player in level.activePlayers)
		{
			if(e_player function_c633d8fe())
			{
				continue;
			}
			level notify("disable_cybercom", e_player, 1);
		}
		callback::on_spawned(&function_d17cfcf8);
	}
}

/*
	Name: function_d17cfcf8
	Namespace: namespace_ce0e5f06
	Checksum: 0xBA9A745E
	Offset: 0x6090
	Size: 0x31
	Parameters: 0
	Flags: None
*/
function function_d17cfcf8()
{
	if(self function_c633d8fe())
	{
		return;
	}
	level notify("disable_cybercom", self, 1);
}

/*
	Name: function_3196eaee
	Namespace: namespace_ce0e5f06
	Checksum: 0x1042BEDC
	Offset: 0x60D0
	Size: 0xA9
	Parameters: 1
	Flags: None
*/
function function_3196eaee(b_enabled)
{
	if(!isdefined(b_enabled))
	{
		b_enabled = 1;
	}
	foreach(e_player in level.players)
	{
		e_player function_a7cfc593(b_enabled);
	}
}

/*
	Name: function_63c3869a
	Namespace: namespace_ce0e5f06
	Checksum: 0xF524048D
	Offset: 0x6188
	Size: 0xA9
	Parameters: 1
	Flags: None
*/
function function_63c3869a(b_enabled)
{
	if(!isdefined(b_enabled))
	{
		b_enabled = 1;
	}
	foreach(e_player in level.players)
	{
		e_player function_ba1a260f(b_enabled);
	}
}

/*
	Name: function_a7cfc593
	Namespace: namespace_ce0e5f06
	Checksum: 0xBE80E3DF
	Offset: 0x6240
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function function_a7cfc593(b_enabled)
{
	if(!isdefined(b_enabled))
	{
		b_enabled = 1;
	}
	if(self function_c633d8fe())
	{
		return;
	}
	self.var_1e983b11 = b_enabled;
	if(!b_enabled)
	{
		self namespace_16f9ecd3::function_12a9df06(0);
	}
}

/*
	Name: function_ba1a260f
	Namespace: namespace_ce0e5f06
	Checksum: 0xD8691F24
	Offset: 0x62B0
	Size: 0x93
	Parameters: 1
	Flags: None
*/
function function_ba1a260f(b_enabled)
{
	if(!isdefined(b_enabled))
	{
		b_enabled = 1;
	}
	if(self function_c633d8fe())
	{
		return;
	}
	/#
		println("Dev Block strings are not supported" + b_enabled + "Dev Block strings are not supported" + level.var_d829fe9f);
	#/
	self.var_d829fe9f = b_enabled;
	if(!b_enabled)
	{
		self namespace_16f9ecd3::function_35ce409(0);
	}
}

/*
	Name: function_2eded728
	Namespace: namespace_ce0e5f06
	Checksum: 0xF4E6BE0F
	Offset: 0x6350
	Size: 0xD1
	Parameters: 1
	Flags: None
*/
function function_2eded728(b_enabled)
{
	if(!isdefined(b_enabled))
	{
		b_enabled = 1;
	}
	if(b_enabled)
	{
		foreach(e_player in level.activePlayers)
		{
			e_player cybercom::function_f8669cbf(1);
			e_player clientfield::increment_to_player("hack_dni_fx");
		}
	}
}

/*
	Name: function_bbd12ed2
	Namespace: namespace_ce0e5f06
	Checksum: 0x3267EA58
	Offset: 0x6430
	Size: 0x73
	Parameters: 1
	Flags: None
*/
function function_bbd12ed2(str_scene_name)
{
	if(scene::is_active(str_scene_name))
	{
		scene::stop(str_scene_name, 1);
		util::wait_network_frame();
	}
	struct::delete_script_bundle("scene", str_scene_name);
}

/*
	Name: function_921d7387
	Namespace: namespace_ce0e5f06
	Checksum: 0x6B9BF419
	Offset: 0x64B0
	Size: 0x9F
	Parameters: 0
	Flags: None
*/
function function_921d7387()
{
	self endon("death");
	while(1)
	{
		level waittill("hash_921d7387");
		if(isdefined(self.var_30a16593) && self.var_30a16593)
		{
			continue;
		}
		wait(1);
		if(isdefined(self.is_talking) && self.is_talking)
		{
			continue;
		}
		self notify("hash_2605e152", "generic_encourage");
		self.var_30a16593 = 1;
		self thread function_9464547d();
	}
}

/*
	Name: function_9464547d
	Namespace: namespace_ce0e5f06
	Checksum: 0xF8AD31E4
	Offset: 0x6558
	Size: 0x1F
	Parameters: 0
	Flags: None
*/
function function_9464547d()
{
	self endon("death");
	wait(30);
	self.var_30a16593 = 0;
}

/*
	Name: function_606dbca2
	Namespace: namespace_ce0e5f06
	Checksum: 0xE361BEE1
	Offset: 0x6580
	Size: 0x51
	Parameters: 1
	Flags: None
*/
function function_606dbca2(params)
{
	if(self.team !== "axis")
	{
		return;
	}
	if(isPlayer(params.eAttacker))
	{
		level notify("hash_921d7387");
	}
}

/*
	Name: function_83a7d040
	Namespace: namespace_ce0e5f06
	Checksum: 0x81192586
	Offset: 0x65E0
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_83a7d040()
{
	util::wait_network_frame();
	util::wait_network_frame();
	util::wait_network_frame();
}

