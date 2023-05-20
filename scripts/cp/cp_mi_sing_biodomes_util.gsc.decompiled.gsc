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
	Checksum: 0xB1513FF6
	Offset: 0x6D0
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function function_ddb0eeea(var_813fc428)
{
	/#
		function_895b00("Dev Block strings are not supported" + var_813fc428);
	#/
}

/*
	Name: function_bff1a867
	Namespace: namespace_27a45d31
	Checksum: 0x5245256D
	Offset: 0x710
	Size: 0x83
	Parameters: 1
	Flags: None
*/
function function_bff1a867(var_b04bc952)
{
	level.var_2fd26037 = namespace_82b91a51::function_740f8516("hendricks");
	level.var_2fd26037 namespace_ad23e503::function_c35e6aab("hendricks_on_zipline");
	level.var_2fd26037 function_c7708f99("heroes");
	namespace_1d795d47::function_3096a6fd(var_b04bc952);
}

/*
	Name: function_1c1462ee
	Namespace: namespace_27a45d31
	Checksum: 0xF7CD0514
	Offset: 0x7A0
	Size: 0x13B
	Parameters: 1
	Flags: None
*/
function function_1c1462ee(var_2c617722)
{
	if(!namespace_d5067552::function_fed8eff(var_2c617722) && namespace_d5067552::function_56a7483f(var_2c617722))
	{
		var_56dd1913 = namespace_d5067552::function_423eae50(var_2c617722);
		if(isdefined(var_56dd1913))
		{
			foreach(var_d84e54db in var_56dd1913)
			{
				var_d84e54db namespace_82b91a51::function_4b741fdc();
				var_d84e54db function_2992720d();
			}
		}
		else if(!namespace_d5067552::function_fed8eff(var_2c617722))
		{
			namespace_d5067552::function_2992720d(var_2c617722);
		}
	}
}

/*
	Name: function_54d82960
	Namespace: namespace_27a45d31
	Checksum: 0xC6B11AF8
	Offset: 0x8E8
	Size: 0x101
	Parameters: 2
	Flags: None
*/
function function_54d82960(var_ef7c9f46, var_864a3d55)
{
	var_e9ddc8f2 = function_99201f25(var_ef7c9f46, "script_noteworthy");
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_e9ddc8f2), var_ef7c9f46 + "Dev Block strings are not supported");
	#/
	if(isdefined(var_e9ddc8f2))
	{
		foreach(var_4dbf3ae3 in var_e9ddc8f2)
		{
			var_4dbf3ae3 function_175e6b8e(var_864a3d55);
		}
	}
}

/*
	Name: function_a22e7052
	Namespace: namespace_27a45d31
	Checksum: 0x1906A8A9
	Offset: 0x9F8
	Size: 0xC9
	Parameters: 3
	Flags: None
*/
function function_a22e7052(var_864a3d55, var_cbb15570, var_5e953b6)
{
	var_c42a21af = function_fe0cfd2e(var_cbb15570, var_5e953b6);
	foreach(var_90ca1fdd in var_c42a21af)
	{
		function_d224409e(var_90ca1fdd, var_864a3d55);
	}
}

/*
	Name: function_7ff50323
	Namespace: namespace_27a45d31
	Checksum: 0x3355764B
	Offset: 0xAD0
	Size: 0x21
	Parameters: 1
	Flags: None
*/
function function_7ff50323(var_2d3d7b7)
{
	return namespace_84970cc4::function_47d18840(var_2d3d7b7);
}

/*
	Name: function_7aa89143
	Namespace: namespace_27a45d31
	Checksum: 0xCD8776DB
	Offset: 0xB00
	Size: 0x22B
	Parameters: 1
	Flags: None
*/
function function_7aa89143(var_f05509e4)
{
	if(!isdefined(var_f05509e4))
	{
		var_f05509e4 = 1;
	}
	self endon("hash_128f8789");
	var_5dc93b8f = self function_48c6a3a2();
	var_bd901adc = function_c4d5ec1f("syrette");
	self function_860a040a(var_bd901adc);
	self function_cb53a41e(var_bd901adc);
	self function_cdf98bcd(var_bd901adc, 1);
	self function_b67fa293();
	self function_e6152ede();
	self function_3c64a65b();
	self function_518a4a08();
	wait(var_f05509e4);
	self function_1f3745c0(var_bd901adc);
	self function_34d04c40();
	self function_6c8f914f();
	self function_b1c908e();
	self function_4b9f6977();
	if(self function_2103ff4b(var_5dc93b8f))
	{
		self function_cb53a41e(var_5dc93b8f);
	}
	else
	{
		var_d646ce1c = self function_da26566c();
		if(isdefined(var_d646ce1c) && var_d646ce1c.size > 0)
		{
			self function_cb53a41e(var_d646ce1c[0]);
		}
	}
}

/*
	Name: function_f61c0df8
	Namespace: namespace_27a45d31
	Checksum: 0x71A266A1
	Offset: 0xD38
	Size: 0xE9
	Parameters: 3
	Flags: None
*/
function function_f61c0df8(var_e39815ad, var_464f9e6e, var_d8d7c010)
{
	var_91efa0da = function_fe0cfd2e(var_e39815ad, "targetname");
	foreach(var_90ca1fdd in var_91efa0da)
	{
		self namespace_69ee7109::function_da308a83(var_90ca1fdd.var_722885f3, var_464f9e6e * 1000, var_d8d7c010 * 1000);
	}
}

/*
	Name: function_a1669688
	Namespace: namespace_27a45d31
	Checksum: 0xEF2AAB5A
	Offset: 0xE30
	Size: 0x93
	Parameters: 4
	Flags: None
*/
function function_a1669688(var_4fa206f4, var_8a7c6b8f, var_b4cff0a8, var_cfc51c56)
{
	if(!isdefined(var_b4cff0a8))
	{
		var_b4cff0a8 = 0;
	}
	if(!isdefined(var_cfc51c56))
	{
		var_cfc51c56 = 0;
	}
	var_56dd1913 = namespace_2f06d687::function_289e6fd1(var_4fa206f4);
	if(isdefined(var_56dd1913))
	{
		var_56dd1913 function_5f83cbd0(var_8a7c6b8f, var_b4cff0a8, var_cfc51c56);
	}
}

/*
	Name: function_5f83cbd0
	Namespace: namespace_27a45d31
	Checksum: 0x99BE592E
	Offset: 0xED0
	Size: 0x171
	Parameters: 3
	Flags: None
*/
function function_5f83cbd0(var_8a7c6b8f, var_b4cff0a8, var_cfc51c56)
{
	if(!isdefined(var_b4cff0a8))
	{
		var_b4cff0a8 = 0;
	}
	if(!isdefined(var_cfc51c56))
	{
		var_cfc51c56 = 0;
	}
	var_45db3dab = function_6ada35ba(var_8a7c6b8f, "targetname");
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_45db3dab), "Dev Block strings are not supported" + var_8a7c6b8f + "Dev Block strings are not supported");
	#/
	if(isdefined(var_45db3dab))
	{
		foreach(var_d84e54db in self)
		{
			if(function_5b49d38c(var_d84e54db))
			{
				var_d84e54db function_169cc712(var_45db3dab, 1);
			}
			if(var_cfc51c56 > var_b4cff0a8)
			{
				wait(function_72a94f05(var_b4cff0a8, var_cfc51c56));
			}
		}
	}
}

/*
	Name: function_753a859
	Namespace: namespace_27a45d31
	Checksum: 0x43E12498
	Offset: 0x1050
	Size: 0x49D
	Parameters: 1
	Flags: None
*/
function function_753a859(var_b04bc952)
{
	switch(var_b04bc952)
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
	Checksum: 0xD3E8B52C
	Offset: 0x14F8
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_d28654c9()
{
	if(function_27c72c1b())
	{
		return;
	}
	var_e1e06c8 = function_fdeedc89(0, "CPUI_OUTFIT_BIODOMES");
	if(self function_e025daa7())
	{
		if(self function_84368297("highestMapReached") <= function_59c5ca75("cp_mi_sing_biodomes"))
		{
			self function_431b00f3(var_e1e06c8);
		}
	}
	else if(!self function_84368297("PlayerStatsByMap", "cp_mi_sing_biodomes", "hasBeenCompleted"))
	{
		self function_431b00f3(var_e1e06c8);
	}
}

/*
	Name: function_cc20e187
	Namespace: namespace_27a45d31
	Checksum: 0x447E3411
	Offset: 0x15F8
	Size: 0x143
	Parameters: 2
	Flags: None
*/
function function_cc20e187(var_97335642, var_da49671a)
{
	if(!isdefined(var_da49671a))
	{
		var_da49671a = 0;
	}
	if(function_27c72c1b())
	{
		return;
	}
	var_9108873 = function_6ada35ba("trig_out_of_bound_" + var_97335642, "targetname");
	var_d874dcf = function_6ada35ba("player_clip_" + var_97335642, "targetname");
	if(var_da49671a)
	{
		var_9108873 function_175e6b8e(0);
		var_d874dcf function_422037f5();
		namespace_4dbf3ae3::function_1ab5ebec("trig_regroup_" + var_97335642, "script_noteworthy");
	}
	var_9108873 function_175e6b8e(1);
	var_d874dcf function_4083a98e();
}

