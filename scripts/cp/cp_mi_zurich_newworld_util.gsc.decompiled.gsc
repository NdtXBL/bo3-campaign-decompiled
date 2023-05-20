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
	Name: function_2dc19561
	Namespace: namespace_ce0e5f06
	Checksum: 0xF2400B91
	Offset: 0xCC8
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("newworld_util", &function_8c87d8eb, undefined, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_ce0e5f06
	Checksum: 0x967C3F5D
	Offset: 0xD08
	Size: 0x13
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	function_ff58a260();
}

/*
	Name: function_ff58a260
	Namespace: namespace_ce0e5f06
	Checksum: 0xC65434E7
	Offset: 0xD28
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_ff58a260()
{
	namespace_71e9cb84::function_50f16166("toplayer", "postfx_futz", 1, 1, "counter");
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
	var_c4ba82be = function_c4d5ec1f("ar_fastburst", "suppressed", "acog");
	var_7d2e8aba = function_c4d5ec1f("smg_fastfire", "extclip");
	var_a337836d = function_c4d5ec1f("lmg_light", "acog", "fmj", "fastreload");
	var_17d630df = function_c4d5ec1f("shotgun_pump", "steadyaim", "extbarrel");
	var_a0543d15 = function_c4d5ec1f("pistol_standard", "suppressed", "reflex");
	var_9254de0d = function_c4d5ec1f("pistol_standard", "steadyaim");
	var_ae16e040 = function_c4d5ec1f("pistol_standard", "steadyaim");
	var_6473fc51 = function_c4d5ec1f("pistol_standard", "steadyaim");
	var_ad27f51f = function_c4d5ec1f("frag_grenade");
	var_63d3226f = function_c4d5ec1f("emp_grenade");
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
			self function_18cd2f76();
			self.var_3ec4eaaf = var_c4ba82be;
			self function_860a040a(var_a0543d15);
			self function_860a040a(var_ad27f51f);
			self function_860a040a(var_63d3226f);
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
			self function_18cd2f76();
			self.var_3ec4eaaf = var_7d2e8aba;
			self function_860a040a(var_9254de0d);
			self function_860a040a(var_ad27f51f);
			self function_860a040a(var_63d3226f);
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
			if(!self namespace_957e94ce::function_7922262b("mobile_armory_in_use") && !isdefined(level.var_ba7d14b0[self function_c7f3ce11()]))
			{
				self function_18cd2f76();
				self.var_3ec4eaaf = var_a337836d;
				self function_860a040a(var_ae16e040);
				self function_860a040a(var_ad27f51f);
				self function_860a040a(var_63d3226f);
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
			self function_18cd2f76();
			self.var_3ec4eaaf = var_17d630df;
			self function_860a040a(var_6473fc51);
			self function_860a040a(var_ad27f51f);
			self function_860a040a(var_63d3226f);
			break;
		}
		case default:
		{
			break;
		}
	}
	if(isdefined(self.var_3ec4eaaf))
	{
		self function_860a040a(self.var_3ec4eaaf);
		self function_cb53a41e(self.var_3ec4eaaf);
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
	if(!isdefined(level.var_ba7d14b0[self function_c7f3ce11()]))
	{
		level.var_ba7d14b0[self function_c7f3ce11()] = 1;
		self waittill("hash_643a7daf");
		level.var_ba7d14b0[self function_c7f3ce11()] = undefined;
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
	if(function_27c72c1b())
	{
		return;
	}
	if(self function_c633d8fe() && isdefined(self.var_3ec4eaaf))
	{
		return;
	}
	self function_be075359();
	self function_dbf420c6();
	self namespace_726a1ef0::function_78908229();
	self namespace_726a1ef0::function_8ffa26e2("cybercom_playermovement", 0);
}

/*
	Name: function_18cd2f76
	Namespace: namespace_ce0e5f06
	Checksum: 0x8FB8F55D
	Offset: 0x1418
	Size: 0xDF
	Parameters: 1
	Flags: None
*/
function function_18cd2f76(var_ddaacf8f)
{
	if(!isdefined(var_ddaacf8f))
	{
		var_ddaacf8f = 1;
	}
	var_ce9fba38 = self function_21995b5a();
	foreach(var_1d6db0a3 in var_ce9fba38)
	{
		self function_1f3745c0(var_1d6db0a3);
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
				self namespace_d00ec32::function_a724d44("cybercom_hijack", 0);
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
				self namespace_d00ec32::function_a724d44("cybercom_systemoverload", 0);
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
				self namespace_d00ec32::function_a724d44("cybercom_fireflyswarm", 1);
			}
			if(isdefined(level.var_11d004e5) && level.var_11d004e5)
			{
				self namespace_d00ec32::function_a724d44("cybercom_immolation", 0);
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
				self namespace_d00ec32::function_a724d44("cybercom_concussive", 1);
			}
			self namespace_d00ec32::function_a724d44("cybercom_rapidstrike", 0);
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
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		if(var_5dc5e20a != self)
		{
			if(isdefined(var_5dc5e20a.var_1e983b11) && var_5dc5e20a.var_1e983b11)
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
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		if(var_5dc5e20a != self)
		{
			if(isdefined(var_5dc5e20a.var_d829fe9f) && var_5dc5e20a.var_d829fe9f)
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
		function_895b00("Dev Block strings are not supported" + var_1dedaef1 + "Dev Block strings are not supported" + var_33dcf6cf + "Dev Block strings are not supported");
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
			level namespace_71e9cb84::function_74d6b22f("player_snow_fx", 4);
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
			level namespace_71e9cb84::function_74d6b22f("player_snow_fx", 1);
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
			level namespace_71e9cb84::function_74d6b22f("player_snow_fx", 2);
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
			level namespace_71e9cb84::function_74d6b22f("player_snow_fx", 3);
			break;
		}
		case "train_inbound_igc":
		case "train_train_roof":
		case "train_train_start":
		{
			level namespace_71e9cb84::function_74d6b22f("player_snow_fx", 4);
			break;
		}
		case "train_detach_bomb_igc":
		case "waking_up_igc":
		{
			level namespace_71e9cb84::function_74d6b22f("player_snow_fx", 0);
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
	level namespace_71e9cb84::function_74d6b22f("player_snow_fx", 0);
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
	return !function_85e4c3b3(self);
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
	self waittill("hash_c67510f3", var_5d5ef481);
	if(isdefined(level.var_5e7ba27d) && level.var_5e7ba27d)
	{
		wait(10);
	}
	if(isdefined(var_5d5ef481))
	{
		var_5d5ef481 namespace_71e9cb84::function_74d6b22f("derez_ai_deaths", 1);
	}
	namespace_82b91a51::function_76f13293();
	wait(0.1);
	if(isdefined(var_5d5ef481))
	{
		var_5d5ef481 function_dc8c8404();
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
	self waittill("hash_d16125f3");
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
		self namespace_71e9cb84::function_74d6b22f("derez_ai_deaths", 1);
	}
	namespace_82b91a51::function_76f13293();
	wait(0.1);
	if(isdefined(self))
	{
		self function_dc8c8404();
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
		self waittill("hash_f9348fda", var_f9348fda, var_a0ad4f34);
		self thread function_91b16538();
		self thread function_4ccc51b5();
	}
	if(isdefined(self))
	{
		self namespace_71e9cb84::function_74d6b22f("derez_ai_deaths", 1);
	}
	namespace_82b91a51::function_76f13293();
	wait(0.25);
	if(isdefined(var_a0ad4f34) && function_65f192a6(var_a0ad4f34))
	{
		var_a0ad4f34 thread namespace_36358f9c::function_8e9219f();
	}
	if(isdefined(self))
	{
		self notify("hash_ed74b5db");
		self function_dc8c8404();
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
	self waittill("hash_d16125f3");
	wait(0.25);
	if(isdefined(self))
	{
		self function_dc8c8404();
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
	self waittill("hash_c67510f3", var_5d5ef481);
	wait(0.25);
	if(isdefined(var_5d5ef481))
	{
		var_5d5ef481 function_dc8c8404();
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
function function_52c5e321(var_4ac85f5f, var_4fa206f4, var_3e671a1)
{
	if(namespace_ad23e503::function_7922262b(var_4ac85f5f))
	{
		return;
	}
	level endon(var_4ac85f5f);
	namespace_2f06d687::function_45679edd(var_4fa206f4, function_b6b79a0(var_3e671a1));
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
function function_948d4091(var_81a32895, var_2380d5c, var_aa686173, var_c871e91e, var_6e6341cf, var_8cb8bcef, var_9e68f294)
{
	if(!isdefined(var_2380d5c))
	{
		var_2380d5c = 0;
	}
	if(!isdefined(var_c871e91e))
	{
		var_c871e91e = 1;
	}
	self endon("hash_128f8789");
	level endon(var_aa686173);
	if(isdefined(30))
	{
		var_a78a7a9e = function_a8fb77bd();
		var_a78a7a9e endon("hash_4573206");
		var_a78a7a9e namespace_82b91a51::function_6729b6ba(30, "timeout");
	}
	self namespace_ad23e503::function_c35e6aab(var_81a32895 + "_WW_opened");
	self namespace_ad23e503::function_c35e6aab(var_81a32895 + "_WW_closed");
	self namespace_ad23e503::function_c35e6aab(var_81a32895 + "_WW_tutorial");
	if(var_81a32895 == "cybercom_fireflyswarm")
	{
		var_bcb7a46f = &"CP_MI_ZURICH_NEWWORLD_SELECT_FIREFLY_LINE_1";
	}
	else if(var_81a32895 == "cybercom_concussive")
	{
		var_bcb7a46f = &"CP_MI_ZURICH_NEWWORLD_SELECT_CONCUSSIVE_WAVE_LINE_1";
	}
	self thread function_8531ac12(var_81a32895, var_aa686173);
	self thread function_b95b168e(var_81a32895, var_aa686173);
	if(isdefined(var_9e68f294))
	{
		var_36b473ab = function_84970cc4(var_9e68f294, var_81a32895 + "_WW_tutorial");
		self namespace_ad23e503::function_43ac000b(var_36b473ab);
	}
	var_adc17f12 = function_84970cc4(var_81a32895 + "_WW_tutorial", var_81a32895 + "_WW_closed");
	while(!self namespace_ad23e503::function_7922262b(var_81a32895 + "_WW_tutorial"))
	{
		self function_c585d78f(var_81a32895, var_aa686173);
		self thread namespace_82b91a51::function_f9e5537b(1);
		wait(0.5);
		while(!self namespace_ad23e503::function_7922262b(var_81a32895 + "_WW_tutorial") && self namespace_ad23e503::function_7922262b(var_81a32895 + "_WW_opened"))
		{
			self thread function_e5122074(var_bcb7a46f, var_aa686173);
			self namespace_ad23e503::function_1ff63c0f(4, var_adc17f12);
			if(!self namespace_ad23e503::function_7922262b(var_81a32895 + "_WW_tutorial") && self namespace_ad23e503::function_7922262b(var_81a32895 + "_WW_opened"))
			{
				self namespace_ad23e503::function_1ff63c0f(3, var_adc17f12);
			}
		}
		self thread function_d81a8f6f();
	}
	self thread function_6062e90(var_81a32895, var_2380d5c, var_aa686173, var_c871e91e, var_6e6341cf, undefined, var_8cb8bcef);
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
function function_c585d78f(var_81a32895, var_aa686173)
{
	self endon("hash_128f8789");
	level endon(var_aa686173);
	self endon(var_81a32895 + "_WW_opened");
	if(isdefined(30))
	{
		var_a78a7a9e = function_a8fb77bd();
		var_a78a7a9e endon("hash_4573206");
		var_a78a7a9e namespace_82b91a51::function_6729b6ba(30, "timeout");
	}
	self namespace_82b91a51::function_f9e5537b(1);
	while(!self namespace_ad23e503::function_7922262b(var_81a32895 + "_WW_opened"))
	{
		if(!level.var_e89a8a5c && !self function_a42945a1())
		{
			self thread namespace_82b91a51::function_32d40124(&"CP_MI_ZURICH_NEWWORLD_OPEN_CYBERCORE_ABILITY_WHEEL_KB", 0, undefined, 4);
		}
		else
		{
			self thread namespace_82b91a51::function_32d40124(&"CP_MI_ZURICH_NEWWORLD_OPEN_CYBERCORE_ABILITY_WHEEL", 0, undefined, 4);
		}
		self namespace_ad23e503::function_d266a8b4(4, var_81a32895 + "_WW_opened");
		if(!self namespace_ad23e503::function_7922262b(var_81a32895 + "_WW_opened"))
		{
			self namespace_ad23e503::function_d266a8b4(3, var_81a32895 + "_WW_opened");
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
function function_e5122074(var_bcb7a46f, var_aa686173)
{
	self endon("hash_128f8789");
	self endon(var_aa686173);
	self.var_bb5e2d77 = self function_2f6b6a4c("CyberComTutorial");
	self function_3a9588ea(self.var_bb5e2d77, "tutorial_line_1", var_bcb7a46f);
	if(level.var_e89a8a5c || self function_a42945a1())
	{
		self function_3a9588ea(self.var_bb5e2d77, "tutorial_line_2", &"CP_MI_ZURICH_NEWWORLD_EQUIP_CYBERCORE");
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
	self endon("hash_128f8789");
	if(isdefined(self.var_bb5e2d77))
	{
		namespace_ce7c3ed5::function_5f70476c(self.var_bb5e2d77, "fadeout");
		wait(0.1);
		self function_2b74b70a(self.var_bb5e2d77);
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
function function_8531ac12(var_81a32895, var_aa686173)
{
	self endon("hash_128f8789");
	level endon(var_aa686173);
	if(isdefined(30))
	{
		var_a78a7a9e = function_a8fb77bd();
		var_a78a7a9e endon("hash_4573206");
		var_a78a7a9e namespace_82b91a51::function_6729b6ba(30, "timeout");
	}
	while(!self namespace_ad23e503::function_7922262b(var_81a32895 + "_WW_tutorial"))
	{
		self waittill("hash_d2c577ed", var_1df81780, var_d62110b4);
		var_66700f08 = function_d6df1f20(var_d62110b4, ",");
		if(var_66700f08[0] == "opened")
		{
			self namespace_ad23e503::function_74d6b22f(var_81a32895 + "_WW_opened");
			self namespace_ad23e503::function_9d134160(var_81a32895 + "_WW_closed");
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
function function_b95b168e(var_81a32895, var_aa686173)
{
	self endon("hash_128f8789");
	level endon(var_aa686173);
	if(isdefined(30))
	{
		var_a78a7a9e = function_a8fb77bd();
		var_a78a7a9e endon("hash_4573206");
		var_a78a7a9e namespace_82b91a51::function_6729b6ba(30, "timeout");
	}
	while(1)
	{
		self waittill("hash_d2c577ed", var_1df81780, var_d62110b4);
		var_66700f08 = function_d6df1f20(var_d62110b4, ",");
		if(var_66700f08[0] == "opened")
		{
			continue;
		}
		if(var_66700f08[0] == var_81a32895)
		{
			self namespace_ad23e503::function_74d6b22f(var_81a32895 + "_WW_tutorial");
			break;
		}
		else
		{
			self namespace_ad23e503::function_9d134160(var_81a32895 + "_WW_opened");
			self namespace_ad23e503::function_74d6b22f(var_81a32895 + "_WW_closed");
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
function function_6062e90(var_81a32895, var_2380d5c, var_aa686173, var_c871e91e, var_6e6341cf, var_e8551372, var_9e68f294, var_3945b2c8)
{
	if(!isdefined(var_2380d5c))
	{
		var_2380d5c = 0;
	}
	if(!isdefined(var_c871e91e))
	{
		var_c871e91e = 1;
	}
	self endon("hash_128f8789");
	if(function_6e2770d8(var_aa686173))
	{
		foreach(var_9dcbe8f4 in var_aa686173)
		{
			level endon(var_9dcbe8f4);
		}
	}
	else
	{
		level endon(var_aa686173);
	}
	if(isdefined(var_3945b2c8))
	{
		self endon(var_3945b2c8);
	}
	if(function_27c72c1b())
	{
		return;
	}
	self function_a0b29c50(0, 100);
	self function_a0b29c50(1, 100);
	var_279df5c8 = 0;
	if(var_81a32895 == "cybercom_fireflyswarm" || var_81a32895 == "cybercom_rapidstrike" || var_81a32895 == "cybercom_concussive")
	{
		var_279df5c8 = 1;
	}
	if(isdefined(30))
	{
		var_a78a7a9e = function_a8fb77bd();
		var_a78a7a9e endon("hash_4573206");
		var_a78a7a9e namespace_82b91a51::function_6729b6ba(30, "timeout");
	}
	if(!self namespace_ad23e503::function_dbca4c5d(var_81a32895 + "_use_ability_tutorial"))
	{
		self namespace_ad23e503::function_c35e6aab(var_81a32895 + "_use_ability_tutorial");
	}
	else
	{
		self namespace_ad23e503::function_9d134160(var_81a32895 + "_use_ability_tutorial");
	}
	self thread function_a7a2da7e(var_81a32895, var_2380d5c, var_aa686173);
	if(isdefined(var_9e68f294))
	{
		if(function_2df9da95(var_9e68f294) || function_520a934(var_9e68f294))
		{
			var_506b336f = var_9e68f294;
			wait(var_506b336f);
			continue;
		}
		if(self namespace_ad23e503::function_dbca4c5d(var_9e68f294))
		{
			self namespace_ad23e503::function_1ab5ebec(var_9e68f294);
			continue;
		}
		if(level namespace_ad23e503::function_dbca4c5d(var_9e68f294))
		{
			level namespace_ad23e503::function_1ab5ebec(var_9e68f294);
		}
	}
	while(!self namespace_ad23e503::function_7922262b(var_81a32895 + "_use_ability_tutorial"))
	{
		self function_c60fae50(var_81a32895, var_aa686173, var_c871e91e, var_6e6341cf);
		if(!var_279df5c8)
		{
			self function_5dca74fc(var_81a32895, var_aa686173, var_e8551372);
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
function function_c60fae50(var_81a32895, var_aa686173, var_c871e91e, var_f069395f)
{
	self endon("hash_128f8789");
	if(function_6e2770d8(var_aa686173))
	{
		foreach(var_9dcbe8f4 in var_aa686173)
		{
			level endon(var_9dcbe8f4);
		}
	}
	else
	{
		level endon(var_aa686173);
	}
	self endon(var_81a32895 + "_primed");
	if(isdefined(30))
	{
		var_a78a7a9e = function_a8fb77bd();
		var_a78a7a9e endon("hash_4573206");
		var_a78a7a9e namespace_82b91a51::function_6729b6ba(30, "timeout");
	}
	while(!self namespace_ad23e503::function_7922262b(var_81a32895 + "_use_ability_tutorial"))
	{
		if(isdefined(var_f069395f))
		{
			self thread namespace_82b91a51::function_32d40124(var_f069395f, 0, undefined, 4);
		}
		else
		{
			self thread namespace_82b91a51::function_32d40124(&"CP_MI_ZURICH_NEWWORLD_USE_CYBERCORE", 0, undefined, 4);
		}
		if(var_c871e91e === 1)
		{
			if(!self namespace_ad23e503::function_7922262b(var_81a32895 + "_use_ability_tutorial"))
			{
				self namespace_ad23e503::function_d266a8b4(3, var_81a32895 + "_use_ability_tutorial");
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
function function_5dca74fc(var_81a32895, var_aa686173, var_e8551372)
{
	self endon("hash_128f8789");
	if(function_6e2770d8(var_aa686173))
	{
		foreach(var_9dcbe8f4 in var_aa686173)
		{
			level endon(var_9dcbe8f4);
		}
	}
	else
	{
		level endon(var_aa686173);
	}
	self endon(var_81a32895 + "_off");
	if(isdefined(30))
	{
		var_a78a7a9e = function_a8fb77bd();
		var_a78a7a9e endon("hash_4573206");
		var_a78a7a9e namespace_82b91a51::function_6729b6ba(30, "timeout");
	}
	self namespace_82b91a51::function_f9e5537b(1);
	while(!self namespace_ad23e503::function_7922262b(var_81a32895 + "_use_ability_tutorial"))
	{
		level waittill("hash_92698df4", var_a3d46ee4, var_6bfe1586);
		if(var_6bfe1586 == self)
		{
			self function_e52b73c0(var_81a32895, var_aa686173, var_e8551372);
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
function function_e52b73c0(var_81a32895, var_aa686173, var_f069395f)
{
	self endon("hash_128f8789");
	if(function_6e2770d8(var_aa686173))
	{
		foreach(var_9dcbe8f4 in var_aa686173)
		{
			level endon(var_9dcbe8f4);
		}
	}
	else
	{
		level endon(var_aa686173);
	}
	self endon(var_81a32895 + "_off");
	if(isdefined(30))
	{
		var_a78a7a9e = function_a8fb77bd();
		var_a78a7a9e endon("hash_4573206");
		var_a78a7a9e namespace_82b91a51::function_6729b6ba(30, "timeout");
	}
	self endon("hash_5e2557e1");
	self thread function_e84823a9(var_81a32895, var_aa686173);
	wait(0.8);
	self namespace_82b91a51::function_32d40124(var_f069395f, 0, undefined, 4);
	if(!self namespace_ad23e503::function_7922262b(var_81a32895 + "_use_ability_tutorial"))
	{
		self namespace_ad23e503::function_d266a8b4(3, var_81a32895 + "_use_ability_tutorial");
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
function function_e84823a9(var_81a32895, var_aa686173)
{
	self endon("hash_128f8789");
	if(function_6e2770d8(var_aa686173))
	{
		foreach(var_9dcbe8f4 in var_aa686173)
		{
			level endon(var_9dcbe8f4);
		}
	}
	else
	{
		level endon(var_aa686173);
	}
	self endon(var_81a32895 + "_off");
	if(isdefined(30))
	{
		var_a78a7a9e = function_a8fb77bd();
		var_a78a7a9e endon("hash_4573206");
		var_a78a7a9e namespace_82b91a51::function_6729b6ba(30, "timeout");
	}
	while(1)
	{
		level waittill("hash_de3c9ffe", var_a3d46ee4, var_6bfe1586);
		if(var_6bfe1586 == self)
		{
			if(isdefined(self.var_175490fb) && self.var_175490fb.var_d1460543.size < 1)
			{
				self notify("hash_5e2557e1");
				self namespace_82b91a51::function_f9e5537b(1);
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
function function_a7a2da7e(var_81a32895, var_2380d5c, var_aa686173)
{
	if(!isdefined(var_2380d5c))
	{
		var_2380d5c = 0;
	}
	self endon("hash_128f8789");
	if(function_6e2770d8(var_aa686173))
	{
		foreach(var_9dcbe8f4 in var_aa686173)
		{
			level endon(var_9dcbe8f4);
		}
	}
	else
	{
		level endon(var_aa686173);
	}
	if(isdefined(30))
	{
		var_a78a7a9e = function_a8fb77bd();
		var_a78a7a9e endon("hash_4573206");
		var_a78a7a9e namespace_82b91a51::function_6729b6ba(30, "timeout");
	}
	var_dfcc01fd = function_71840183(var_81a32895, var_2380d5c);
	self waittill(var_dfcc01fd.var_4be20d44 + "_fired");
	self namespace_ad23e503::function_74d6b22f(var_81a32895 + "_use_ability_tutorial");
	level notify(var_81a32895 + "_use_ability_tutorial");
	self namespace_82b91a51::function_f9e5537b(1);
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
	var_dfcc01fd = undefined;
	var_28189c49 = namespace_d00ec32::function_85c33215(var_81a32895);
	if(var_2380d5c == 1)
	{
		var_dfcc01fd = var_28189c49.var_b3a36101;
	}
	else
	{
		var_dfcc01fd = var_28189c49.var_dfcc01fd;
	}
	return var_dfcc01fd;
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
	self endon("hash_128f8789");
	level endon("hash_982eac9f");
	self.var_8a320fc6 = 0;
	var_6d5d984c = function_71840183("cybercom_immolation");
	var_bb989cf4 = var_6d5d984c.var_4be20d44 + "_fired";
	var_239727aa = function_71840183("cybercom_fireflyswarm", 1);
	var_aa2f1c54 = var_239727aa.var_4be20d44 + "_fired";
	self thread function_6851db33(var_6d5d984c, var_239727aa);
	while(1)
	{
		self namespace_82b91a51::function_5b7e3888(var_bb989cf4, var_aa2f1c54);
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
	self endon("hash_128f8789");
	level endon("hash_982eac9f");
	while(1)
	{
		wait(90);
		if(self.var_8a320fc6 < 1)
		{
			self notify("hash_6851db33");
			if(self.var_9ed137f5[0] === var_3283f77e)
			{
				self thread function_6062e90("cybercom_immolation", 0, "underground_combat_complete", 1, "CP_MI_ZURICH_NEWWORLD_IMMOLATION_TARGET", "CP_MI_ZURICH_NEWWORLD_IMMOLATION_RELEASE");
			}
			else if(self.var_9ed137f5[0] === var_239727aa)
			{
				self thread function_6062e90("cybercom_fireflyswarm", 1, "underground_combat_complete", 1, "CP_MI_ZURICH_NEWWORLD_FIREFLY_SWARM_TUTORIAL");
			}
			self namespace_82b91a51::function_9fcf3cd8(4, "cc_ability_used");
			self thread namespace_82b91a51::function_f9e5537b(1);
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
	self endon("hash_128f8789");
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
			self namespace_82b91a51::function_32d40124(&"CP_MI_ZURICH_NEWWORLD_CYBERCOM_RECHARGE", 0, undefined, 4);
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
function function_520255e3(var_db803bcf, var_60db70fa)
{
	var_8b453fd2 = "mufc_" + var_db803bcf;
	level thread function_901793d(var_db803bcf, var_8b453fd2);
	level thread function_2ffbaa00(var_60db70fa, var_8b453fd2);
	level waittill(var_8b453fd2);
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
function function_901793d(var_db803bcf, var_8b453fd2)
{
	level endon(var_8b453fd2);
	var_f92a03e7 = function_6ada35ba(var_db803bcf, "targetname");
	if(isdefined(var_f92a03e7))
	{
		var_f92a03e7 waittill("hash_4dbf3ae3");
	}
	level notify(var_8b453fd2);
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
function function_2ffbaa00(var_60db70fa, var_8b453fd2)
{
	level endon(var_8b453fd2);
	wait(var_60db70fa);
	level notify(var_8b453fd2);
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
	var_da1cc39e = function_99201f25(var_7daa2a51, "targetname");
	for(var_c957f6b6 = 0; var_c957f6b6 < var_da1cc39e.size; var_c957f6b6++)
	{
		var_da1cc39e[var_c957f6b6] thread function_9a829e81();
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
	if(isdefined(self.var_eb328a48))
	{
		wait(self.var_eb328a48);
	}
	var_4c9c8550 = self namespace_2f06d687::function_9b7fda5e();
	var_4c9c8550 endon("hash_128f8789");
	if(isdefined(var_4c9c8550.var_caae374e) && var_4c9c8550.var_caae374e == "rusher_on_spawn")
	{
		var_4c9c8550 namespace_d84e54db::function_ceb883cd("move_mode", "rusher");
		var_4c9c8550 namespace_d84e54db::function_ceb883cd("sprint", 1);
	}
	if(isdefined(var_4c9c8550.var_b07228b6))
	{
		var_4c9c8550 waittill("hash_41d1aaf0");
	}
	if(isdefined(var_4c9c8550.var_caae374e) && var_4c9c8550.var_caae374e == "rusher_at_goal")
	{
		var_4c9c8550 namespace_d84e54db::function_ceb883cd("move_mode", "rusher");
		var_4c9c8550 namespace_d84e54db::function_ceb883cd("sprint", 1);
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
function function_68b8f4af(var_67825717)
{
	var_e3b635fb = function_b8494651("axis");
	var_4c8fa27e = [];
	for(var_c957f6b6 = 0; var_c957f6b6 < var_e3b635fb.size; var_c957f6b6++)
	{
		if(var_e3b635fb[var_c957f6b6] function_32fa5072(var_67825717))
		{
			var_4c8fa27e[var_4c8fa27e.size] = var_e3b635fb[var_c957f6b6];
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
function function_c478189b(var_db803bcf, var_390543cc, var_9d774f5d, var_43a68d40)
{
	if(isdefined(var_db803bcf))
	{
		var_f92a03e7 = function_6ada35ba(var_db803bcf, "targetname");
		var_f92a03e7 waittill("hash_4dbf3ae3");
	}
	var_441bd962 = function_6ada35ba(var_390543cc, "targetname");
	var_ee2fd889 = function_6ada35ba(var_9d774f5d, "targetname");
	var_e3b635fb = function_b8494651("axis");
	if(!isdefined(var_43a68d40))
	{
		var_43a68d40 = var_e3b635fb.size;
	}
	if(var_43a68d40 > var_e3b635fb.size)
	{
		var_43a68d40 = var_e3b635fb.size;
	}
	for(var_c957f6b6 = 0; var_c957f6b6 < var_43a68d40; var_c957f6b6++)
	{
		var_4c9c8550 = var_e3b635fb[var_c957f6b6];
		if(var_4c9c8550 function_32fa5072(var_441bd962))
		{
			var_4c9c8550 function_86408aa8(var_ee2fd889);
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
function function_f5363f47(var_db803bcf)
{
	var_e9ddc8f2 = function_99201f25(var_db803bcf, "targetname");
	var_8b453fd2 = var_db803bcf + "_waiting";
	for(var_c957f6b6 = 0; var_c957f6b6 < var_e9ddc8f2.size; var_c957f6b6++)
	{
		level thread function_7eb8a7ab(var_e9ddc8f2[var_c957f6b6], var_8b453fd2);
	}
	level waittill(var_8b453fd2);
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
function function_7eb8a7ab(var_f92a03e7, var_8b453fd2)
{
	level endon(var_8b453fd2);
	var_f92a03e7 waittill("hash_4dbf3ae3");
	level notify(var_8b453fd2);
}

/*
	Name: function_fcb42941
	Namespace: namespace_ce0e5f06
	Checksum: 0xB91F47A2
	Offset: 0x4310
	Size: 0x91
	Parameters: 1
	Flags: None
*/
function function_fcb42941(var_67825717)
{
	var_5ddef2e5 = function_3f10449f();
	var_f04bd8f5 = 0;
	for(var_c957f6b6 = 0; var_c957f6b6 < var_5ddef2e5.size; var_c957f6b6++)
	{
		if(var_5ddef2e5[var_c957f6b6] function_32fa5072(var_67825717))
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
function function_e0fb6da9(var_7ce28596, var_de195f66, var_376aa7b3, var_fa069c9d, var_d1b83750, var_b61ce032, var_a70db4af, var_1813646e, var_98e9bc46)
{
	var_5ddef2e5 = function_3f10449f();
	if(var_5ddef2e5.size > 1)
	{
		return;
	}
	var_ebe66fdc = namespace_14b42b8a::function_7922262b(var_7ce28596, "targetname");
	var_37124366 = function_6ada35ba(var_1813646e, "targetname");
	var_7d22b48e = function_6ada35ba(var_98e9bc46, "targetname");
	var_d230ad83 = function_bc7ce905(var_ebe66fdc.var_6ab6f4fd);
	var_ebe66fdc.var_f721d9a5 = undefined;
	var_cc06a93d = 0;
	var_3865186 = function_dc99997a(var_376aa7b3, var_fa069c9d);
	while(1)
	{
		var_6bfe1586 = function_3f10449f()[0];
		var_a080d759 = var_ebe66fdc.var_722885f3 - var_6bfe1586.var_722885f3;
		var_989d1f7c = function_5f9a4869(var_a080d759, var_d230ad83);
		if(var_989d1f7c < -100)
		{
			return;
		}
		var_2a97d9fd = function_7d15e2f8(var_ebe66fdc.var_722885f3, var_6bfe1586.var_722885f3);
		if(var_2a97d9fd < var_de195f66)
		{
			if(!isdefined(var_ebe66fdc.var_f721d9a5))
			{
				var_ebe66fdc.var_f721d9a5 = GetTime();
			}
		}
		else
		{
			var_ebe66fdc.var_f721d9a5 = undefined;
		}
		if(isdefined(var_ebe66fdc.var_f721d9a5))
		{
			var_60db70fa = GetTime();
			var_5ecb0b6d = var_60db70fa - var_ebe66fdc.var_f721d9a5 / 1000;
			if(var_5ecb0b6d > var_3865186)
			{
				var_e3b635fb = function_b8494651("axis");
				var_4c8fa27e = [];
				for(var_c957f6b6 = 0; var_c957f6b6 < var_e3b635fb.size; var_c957f6b6++)
				{
					var_4c9c8550 = var_e3b635fb[var_c957f6b6];
					if(!isdefined(var_4c9c8550.var_db552f4))
					{
						if(var_4c9c8550 function_32fa5072(var_37124366))
						{
							var_4c8fa27e[var_4c8fa27e.size] = var_4c9c8550;
						}
					}
				}
				var_d6f9eed8 = function_dc99997a(var_d1b83750, var_b61ce032 + 1);
				if(var_d6f9eed8 > var_4c8fa27e.size)
				{
					var_d6f9eed8 = var_4c8fa27e.size;
				}
				for(var_c957f6b6 = 0; var_c957f6b6 < var_d6f9eed8; var_c957f6b6++)
				{
					var_4c8fa27e[var_c957f6b6] function_169cc712(var_7d22b48e);
					var_4c8fa27e[var_c957f6b6].var_db552f4 = 1;
				}
				var_ebe66fdc.var_f721d9a5 = undefined;
				var_cc06a93d++;
				if(var_cc06a93d >= var_a70db4af)
				{
					return;
				}
				var_3865186 = function_dc99997a(var_376aa7b3, var_fa069c9d);
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
function function_8f7b1e06(var_db803bcf, var_390543cc, var_9d774f5d)
{
	if(isdefined(var_db803bcf))
	{
		var_f92a03e7 = function_6ada35ba(var_db803bcf, "targetname");
		var_f92a03e7 waittill("hash_4dbf3ae3");
	}
	var_441bd962 = function_6ada35ba(var_390543cc, "targetname");
	var_ee2fd889 = function_6ada35ba(var_9d774f5d, "targetname");
	var_e3b635fb = function_b8494651("axis");
	for(var_c957f6b6 = 0; var_c957f6b6 < var_e3b635fb.size; var_c957f6b6++)
	{
		var_4c9c8550 = var_e3b635fb[var_c957f6b6];
		if(var_4c9c8550 function_32fa5072(var_441bd962))
		{
			var_4c9c8550 function_86408aa8(var_ee2fd889);
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
function function_bccc2e65(var_4fa206f4, var_6ec47843, var_6c5c89e1, var_a53104a1)
{
	namespace_2f06d687::function_45679edd("aig_water_treatment", var_6ec47843);
	var_22752fde = function_b4cb3503(var_6c5c89e1, "targetname");
	var_e3b635fb = function_99201f25(var_4fa206f4, "script_aigroup");
	for(var_c957f6b6 = 0; var_c957f6b6 < var_e3b635fb.size; var_c957f6b6++)
	{
		var_4c9c8550 = var_e3b635fb[var_c957f6b6];
		if(function_5cfb84bb(var_4c9c8550))
		{
			var_4c9c8550.var_7dfaf62 = var_a53104a1;
			var_4c9c8550 function_169cc712(var_22752fde.var_722885f3);
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
function function_eaf9c027(var_6d8a08b3, var_e0017db3, var_43656dbb)
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
	level function_dd048f8d(var_6d8a08b3, var_e0017db3, var_43656dbb);
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
function function_dd048f8d(var_6d8a08b3, var_e0017db3, var_43656dbb)
{
	if(!isdefined(var_e0017db3))
	{
		var_e0017db3 = "fullscreen";
	}
	if(var_43656dbb)
	{
		foreach(var_5dc5e20a in level.var_2395e945)
		{
			var_5dc5e20a namespace_71e9cb84::function_688ed188("postfx_futz", 1);
		}
	}
	namespace_ce7c3ed5::function_8f7bd062(var_6d8a08b3, var_e0017db3);
	if(var_43656dbb)
	{
		foreach(var_5dc5e20a in level.var_2395e945)
		{
			var_5dc5e20a namespace_71e9cb84::function_688ed188("postfx_futz", 1);
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
		level namespace_ad23e503::function_74d6b22f("infinite_white_transition");
		function_c07e7f7d(1);
		namespace_82b91a51::function_7e61de2b(0, "white", "infinite_white");
	}
	else
	{
		level namespace_ad23e503::function_1ab5ebec("infinite_white_transition");
		namespace_ce7c3ed5::function_2222cd4f("cp_newworld_fs_whiteinfinite", 1);
		function_c07e7f7d(1);
		namespace_82b91a51::function_7e61de2b(0.5, "white", "infinite_white");
		level thread namespace_ce7c3ed5::function_8f7bd062("cp_newworld_fs_whiteinfinite", "fullscreen", 0, 1);
	}
	level namespace_ad23e503::function_d3de6822("infinite_white_transition");
	foreach(var_6bfe1586 in level.var_9b1393e7)
	{
		var_6bfe1586 notify("hash_d2c577ed", "FullscreenMovie", "finished_movie_playback");
	}
	namespace_82b91a51::function_593c2af4(0.5, "white", "infinite_white");
	function_c07e7f7d(0);
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
function function_43dfaf16(var_c77d2837)
{
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a notify("hash_d2c577ed", "FullscreenMovie", "finished_movie_playback");
	}
}

/*
	Name: function_c07e7f7d
	Namespace: namespace_ce0e5f06
	Checksum: 0x33D31110
	Offset: 0x4FA8
	Size: 0xE1
	Parameters: 1
	Flags: None
*/
function function_c07e7f7d(var_a5efd39d)
{
	if(!isdefined(var_a5efd39d))
	{
		var_a5efd39d = 1;
	}
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		if(var_a5efd39d)
		{
			var_5dc5e20a function_83fd42b5();
		}
		else
		{
			var_5dc5e20a function_4890e520();
		}
		var_5dc5e20a namespace_82b91a51::function_56cee95(var_a5efd39d);
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
function function_16dd8c5f(var_d72a94c2, var_7b81749, var_f6e313be, var_8baec92b, var_2df3d133, var_d78830f5)
{
	if(!isdefined(var_7b81749))
	{
		var_7b81749 = &"cp_level_newworld_access_door";
	}
	if(!isdefined(var_f6e313be))
	{
		var_f6e313be = &"CP_MI_ZURICH_NEWWORLD_HACK";
	}
	if(!isdefined(var_d78830f5))
	{
		var_d78830f5 = 0;
	}
	var_2a0a99e4 = function_6ada35ba(var_d72a94c2, "targetname");
	var_2a0a99e4 function_175e6b8e(1);
	if(isdefined(var_8baec92b))
	{
		var_69f96d87 = function_99201f25(var_8baec92b, "targetname");
	}
	else
	{
		var_69f96d87 = [];
	}
	if(!var_d78830f5)
	{
		var_dcf4cbb0 = namespace_82b91a51::function_14518e76(var_2a0a99e4, var_7b81749, var_f6e313be, &function_e27a8082, var_69f96d87);
		var_dcf4cbb0.var_2df3d133 = var_2df3d133;
		level waittill(var_2df3d133, var_6bfe1586);
	}
	else
	{
		var_2a0a99e4 namespace_ac959fba::function_68df65d8(1, var_7b81749, var_f6e313be, undefined, var_69f96d87);
		var_2a0a99e4 namespace_ac959fba::function_7373f13d();
	}
	if(isdefined(var_2df3d133))
	{
		level notify(var_2df3d133);
	}
	if(isdefined(var_6bfe1586))
	{
		return var_6bfe1586;
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
function function_e27a8082(var_6bfe1586)
{
	self namespace_a230c2b1::function_e54c54c3();
	level notify(self.var_2df3d133, var_6bfe1586);
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
function function_39c9b63e(var_864a3d55, var_98011344)
{
	if(!isdefined(var_864a3d55))
	{
		var_864a3d55 = 1;
	}
	var_cb82ab70 = function_99201f25("ammo_cache", "script_noteworthy");
	foreach(var_dee1c358 in var_cb82ab70)
	{
		if(isdefined(var_dee1c358.var_e119970e) && (var_dee1c358.var_ff1f6868 === var_98011344 || !isdefined(var_98011344)))
		{
			if(!var_864a3d55)
			{
				var_dee1c358 namespace_16f9ecd3::function_a2477bbb();
				var_dee1c358 namespace_16f9ecd3::function_14ec2d71();
				var_dee1c358.var_e119970e namespace_a230c2b1::function_e54c54c3();
				continue;
			}
			var_dee1c358.var_e119970e namespace_a230c2b1::function_ed0abeee();
			var_dee1c358 namespace_16f9ecd3::function_b3ce91e0();
			var_dee1c358 namespace_16f9ecd3::function_e228c18a();
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
	self endon("hash_128f8789");
	var_2540d664 = 0;
	while(var_2540d664 == 0)
	{
		wait(1);
		foreach(var_6bfe1586 in level.var_9b1393e7)
		{
			if(var_6bfe1586 namespace_82b91a51::function_d61b846f(self.var_722885f3) == 0)
			{
				var_2540d664 = 1;
				continue;
			}
			var_2540d664 = 0;
		}
	}
	self namespace_82b91a51::function_4b741fdc();
	self function_2992720d();
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
function function_c1c980d8(var_db803bcf)
{
	var_56dd1913 = function_b8494651("axis");
	var_58230dee = function_6ada35ba(var_db803bcf, "targetname");
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_58230dee), "Dev Block strings are not supported");
	#/
	foreach(var_6050ab17 in var_56dd1913)
	{
		if(function_5b49d38c(var_6050ab17) && var_6050ab17 function_32fa5072(var_58230dee))
		{
			var_6050ab17 thread function_95132241();
		}
	}
	var_58230dee function_dc8c8404();
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
	self function_921a1574("evt_ai_derez");
	if(var_b06baa1b)
	{
		self namespace_71e9cb84::function_331efedc("cs_rez_in_fx", 2);
	}
	else
	{
		self namespace_71e9cb84::function_331efedc("cs_rez_in_fx", 1);
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
	self endon("hash_128f8789");
	if(var_b06baa1b)
	{
		if(self.var_b691b9cf == "hall")
		{
			self function_e48f905e("c_hro_sarah_salvation_reveal");
		}
		else if(!(isdefined(self.var_1e045b7c) && self.var_1e045b7c))
		{
			self function_e48f905e("c_hro_" + self.var_b691b9cf + "_base_rev");
		}
		namespace_82b91a51::function_76f13293();
		self function_48f26766();
		wait(0.5);
		if(self.var_b691b9cf == "hall")
		{
			self function_e48f905e("c_hro_sarah_base");
		}
		else if(!(isdefined(self.var_1e045b7c) && self.var_1e045b7c))
		{
			self function_e48f905e("c_hro_" + self.var_b691b9cf + "_base");
		}
	}
	else
	{
		wait(0.4);
		self function_48f26766();
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
	self function_921a1574("evt_ai_derez");
	if(var_b06baa1b)
	{
		self namespace_71e9cb84::function_331efedc("cs_rez_out_fx", 2);
	}
	else
	{
		self namespace_71e9cb84::function_331efedc("cs_rez_out_fx", 1);
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
	self endon("hash_128f8789");
	if(var_b06baa1b)
	{
		if(self.var_b691b9cf == "hall")
		{
			self function_e48f905e("c_hro_sarah_salvation_reveal");
		}
		else if(!(isdefined(self.var_1e045b7c) && self.var_1e045b7c))
		{
			self function_e48f905e("c_hro_" + self.var_b691b9cf + "_base_rev");
		}
		wait(0.5);
		self function_8c8e79fe();
		if(self.var_b691b9cf == "hall")
		{
			self function_e48f905e("c_hro_sarah_base");
		}
		else if(!(isdefined(self.var_1e045b7c) && self.var_1e045b7c))
		{
			self function_e48f905e("c_hro_" + self.var_b691b9cf + "_base");
		}
	}
	else
	{
		wait(0.4);
		self function_8c8e79fe();
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
function function_d0aa2f4f(var_ee7dbbc9)
{
	if(!isdefined(var_ee7dbbc9))
	{
		var_ee7dbbc9 = 0.25;
	}
	self endon("hash_128f8789");
	self function_4943984c();
	wait(0.4);
	self namespace_82b91a51::function_67520c6a(var_ee7dbbc9, undefined, &function_c949a8ed);
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
function function_737d2864(var_95456b04, var_f67e0ce6)
{
	if(function_27c72c1b())
	{
		return;
	}
	self endon("hash_128f8789");
	wait(3);
	self.var_55167309 = self function_2f6b6a4c("LocationAndTime");
	self function_3a9588ea(self.var_55167309, "loctime_location", var_95456b04);
	self function_3a9588ea(self.var_55167309, "loctime_date", var_f67e0ce6);
	wait(5);
	namespace_ce7c3ed5::function_5f70476c(self.var_55167309, "fadeout");
	wait(1.3);
	self function_2b74b70a(self.var_55167309);
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
	if(function_27c72c1b())
	{
		return 1;
	}
	/#
		namespace_33b293fd::function_a7ee953(function_65f192a6(self));
	#/
	return self function_84368297("PlayerStatsByMap", "cp_mi_zurich_newworld", "hasBeenCompleted");
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
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		if(!var_5dc5e20a function_c633d8fe())
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
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		if(var_5dc5e20a function_1a9006bd("cybercom_hijack"))
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
function function_3e37f48b(var_e2e6bbcb)
{
	if(function_27c72c1b())
	{
		return;
	}
	level namespace_ad23e503::function_1ab5ebec("all_players_connected");
	if(var_e2e6bbcb)
	{
		foreach(var_6bfe1586 in level.var_9b1393e7)
		{
			if(var_6bfe1586 function_c633d8fe())
			{
				continue;
			}
			level notify("hash_786c76a1", var_6bfe1586);
		}
		namespace_dabbe128::function_a0ac4434(&function_d17cfcf8);
	}
	else
	{
		foreach(var_6bfe1586 in level.var_9b1393e7)
		{
			if(var_6bfe1586 function_c633d8fe())
			{
				continue;
			}
			level notify("hash_2c534be8", var_6bfe1586, 1);
		}
		namespace_dabbe128::function_356a4ee1(&function_d17cfcf8);
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
	level notify("hash_2c534be8", self, 1);
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
function function_3196eaee(var_e2e6bbcb)
{
	if(!isdefined(var_e2e6bbcb))
	{
		var_e2e6bbcb = 1;
	}
	foreach(var_6bfe1586 in level.var_2395e945)
	{
		var_6bfe1586 function_a7cfc593(var_e2e6bbcb);
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
function function_63c3869a(var_e2e6bbcb)
{
	if(!isdefined(var_e2e6bbcb))
	{
		var_e2e6bbcb = 1;
	}
	foreach(var_6bfe1586 in level.var_2395e945)
	{
		var_6bfe1586 function_ba1a260f(var_e2e6bbcb);
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
function function_a7cfc593(var_e2e6bbcb)
{
	if(!isdefined(var_e2e6bbcb))
	{
		var_e2e6bbcb = 1;
	}
	if(self function_c633d8fe())
	{
		return;
	}
	self.var_1e983b11 = var_e2e6bbcb;
	if(!var_e2e6bbcb)
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
function function_ba1a260f(var_e2e6bbcb)
{
	if(!isdefined(var_e2e6bbcb))
	{
		var_e2e6bbcb = 1;
	}
	if(self function_c633d8fe())
	{
		return;
	}
	/#
		function_895b00("Dev Block strings are not supported" + var_e2e6bbcb + "Dev Block strings are not supported" + level.var_d829fe9f);
	#/
	self.var_d829fe9f = var_e2e6bbcb;
	if(!var_e2e6bbcb)
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
function function_2eded728(var_e2e6bbcb)
{
	if(!isdefined(var_e2e6bbcb))
	{
		var_e2e6bbcb = 1;
	}
	if(var_e2e6bbcb)
	{
		foreach(var_6bfe1586 in level.var_9b1393e7)
		{
			var_6bfe1586 namespace_175490fb::function_f8669cbf(1);
			var_6bfe1586 namespace_71e9cb84::function_688ed188("hack_dni_fx");
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
function function_bbd12ed2(var_2422bd4b)
{
	if(namespace_cc27597::function_444aea32(var_2422bd4b))
	{
		namespace_cc27597::function_fcf56ab5(var_2422bd4b, 1);
		namespace_82b91a51::function_76f13293();
	}
	namespace_14b42b8a::function_368120a1("scene", var_2422bd4b);
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
	self endon("hash_128f8789");
	while(1)
	{
		level waittill("hash_921d7387");
		if(isdefined(self.var_30a16593) && self.var_30a16593)
		{
			continue;
		}
		wait(1);
		if(isdefined(self.var_fe2c8dda) && self.var_fe2c8dda)
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
	self endon("hash_128f8789");
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
function function_606dbca2(var_a8563e07)
{
	if(self.var_3e94206a !== "axis")
	{
		return;
	}
	if(function_65f192a6(var_a8563e07.var_3a212fd7))
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
	namespace_82b91a51::function_76f13293();
	namespace_82b91a51::function_76f13293();
	namespace_82b91a51::function_76f13293();
}

