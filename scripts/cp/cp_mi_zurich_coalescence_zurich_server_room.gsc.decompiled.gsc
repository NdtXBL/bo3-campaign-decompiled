#using scripts\codescripts\struct;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_zurich_coalescence_sound;
#using scripts\cp\cp_mi_zurich_coalescence_util;
#using scripts\cp\cp_mi_zurich_coalescence_zurich_hq;
#using scripts\cp\cp_mi_zurich_coalescence_zurich_plaza_battle;
#using scripts\cp\cp_mi_zurich_coalescence_zurich_sacrifice;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\player_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;
#using scripts\shared\visionset_mgr_shared;

#namespace namespace_e0fbc9fc;

/*
	Name: function_9c1fc2fd
	Namespace: namespace_e0fbc9fc
	Checksum: 0xBC1B28FC
	Offset: 0x660
	Size: 0x38B
	Parameters: 2
	Flags: None
*/
function function_9c1fc2fd(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		level thread namespace_8e9083ff::function_11b424e5(1);
		level function_f62d8d36();
		level namespace_ad23e503::function_74d6b22f("sacrifice_kane_activation_ready");
		level namespace_cc27597::function_5c143f59("cin_zur_06_sacrifice_3rd_sh150");
		level thread function_ef7b97bd();
		namespace_d0ef8521::function_74d6b22f("cp_level_zurich_apprehend_hack_obj");
		namespace_d7916d65::function_a2995f22();
	}
	var_65669d7b = level function_4d2c0fc8();
	namespace_84970cc4::function_966ecb29(level.var_2395e945, &function_7a462130, var_65669d7b);
	namespace_84970cc4::function_1ab5ebec(level.var_2395e945, "pistol_ready");
	namespace_84970cc4::function_966ecb29(level.var_2395e945, &namespace_8e9083ff::function_3e4d643b, 1);
	if(isdefined(level.var_f3caeac8))
	{
		level thread [[level.var_f3caeac8]]();
	}
	level thread namespace_67110270::function_40b3f4d();
	level thread namespace_82b91a51::function_d8eaed3d(3);
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		if(var_5dc5e20a function_e025daa7())
		{
			var_91f5b1a9 = var_5dc5e20a;
			break;
		}
	}
	if(!isdefined(var_91f5b1a9))
	{
		var_91f5b1a9 = var_65669d7b;
	}
	namespace_cc27597::function_8f9f34e0("cin_zur_09_01_standoff_1st_hostage", &function_46f876ee, "play");
	namespace_cc27597::function_8f9f34e0("cin_zur_09_01_standoff_1st_hostage", &function_adc1f7a2, "done");
	level thread namespace_cc27597::function_43718187("cin_zur_09_01_standoff_1st_hostage", var_65669d7b);
	namespace_d0ef8521::function_50ccee8d("cp_level_zurich_apprehend_hack_obj");
	namespace_d0ef8521::function_74d6b22f("cp_level_zurich_apprehend_awaiting_obj");
	level waittill("hash_265469bd");
	level thread namespace_82b91a51::function_7e61de2b(0.1, "white");
	level waittill("hash_a4928ac9");
	level thread namespace_8e9083ff::function_11b424e5(0);
	namespace_1d795d47::function_be8adfb8(var_b04bc952);
}

/*
	Name: function_7a462130
	Namespace: namespace_e0fbc9fc
	Checksum: 0x2939225D
	Offset: 0x9F8
	Size: 0x22B
	Parameters: 1
	Flags: None
*/
function function_7a462130(var_65669d7b)
{
	var_6bfe1586 = self;
	var_b6abbe7a = function_c4d5ec1f("pistol_standard_zur");
	var_6bfe1586 function_901e0817();
	if(var_6bfe1586 == var_65669d7b)
	{
		level.var_df09ae6a = var_6bfe1586;
		level.var_df09ae6a function_3c3596e5();
	}
	if(var_6bfe1586 function_2103ff4b(var_b6abbe7a, 1))
	{
		var_6bfe1586.var_9299077 = 1;
	}
	else
	{
		var_6bfe1586 function_860a040a(var_b6abbe7a);
	}
	var_d13f855e = var_6bfe1586 function_48c6a3a2();
	var_69a83368 = var_6bfe1586 function_21995b5a();
	foreach(var_dfcc01fd in var_69a83368)
	{
		if(var_dfcc01fd.var_8c02d299.var_4be20d44 == var_b6abbe7a.var_8c02d299.var_4be20d44 && var_d13f855e.var_8c02d299.var_4be20d44 != var_b6abbe7a.var_8c02d299.var_4be20d44)
		{
			var_6bfe1586 function_cb53a41e(var_dfcc01fd);
			var_6bfe1586 waittill("hash_9206d256");
			break;
		}
	}
	waittillframeend;
	var_6bfe1586 notify("hash_fa153544");
}

/*
	Name: function_4d2c0fc8
	Namespace: namespace_e0fbc9fc
	Checksum: 0xAF53EE7E
	Offset: 0xC30
	Size: 0x97
	Parameters: 0
	Flags: None
*/
function function_4d2c0fc8()
{
	var_65669d7b = function_6ada35ba("server_room_door_usetrig", "targetname") namespace_8e9083ff::function_d1996775();
	var_65669d7b function_921a1574("evt_standoff_door");
	function_6ada35ba("sacrifice_server_door", "targetname") function_8bdea13c(128, 2);
	return var_65669d7b;
}

/*
	Name: function_46f876ee
	Namespace: namespace_e0fbc9fc
	Checksum: 0x22A6C481
	Offset: 0xCD0
	Size: 0x1E9
	Parameters: 1
	Flags: None
*/
function function_46f876ee(var_c77d2837)
{
	level.var_c1aa5253["muzzle_flash"] = "weapon/fx_muz_pistol_igc";
	var_6262a4fe = var_c77d2837["hendricks"];
	level waittill("hash_814598ff");
	var_6262a4fe namespace_175490fb::function_f8669cbf(1);
	level waittill("hash_c7569801");
	foreach(var_6bfe1586 in level.var_9b1393e7)
	{
		function_da6acfd2(level.var_c1aa5253["muzzle_flash"], var_6bfe1586, "tag_flash");
		var_6bfe1586 function_e2af603e("pistol_fire");
	}
	wait(0.1);
	level waittill("hash_c7569801");
	foreach(var_6bfe1586 in level.var_2395e945)
	{
		function_da6acfd2(level.var_c1aa5253["muzzle_flash"], var_6bfe1586, "tag_flash");
	}
}

/*
	Name: function_adc1f7a2
	Namespace: namespace_e0fbc9fc
	Checksum: 0xE502AE3B
	Offset: 0xEC8
	Size: 0xE3
	Parameters: 1
	Flags: None
*/
function function_adc1f7a2(var_c77d2837)
{
	foreach(var_6bfe1586 in level.var_2395e945)
	{
		if(!(isdefined(var_6bfe1586.var_9299077) && var_6bfe1586.var_9299077))
		{
			var_6bfe1586 function_1f3745c0(function_c4d5ec1f("pistol_standard_zur"));
		}
	}
	level.var_df09ae6a function_859d37b8();
}

/*
	Name: function_1a4dfaaa
	Namespace: namespace_e0fbc9fc
	Checksum: 0x693E434B
	Offset: 0xFB8
	Size: 0x231
	Parameters: 4
	Flags: None
*/
function function_1a4dfaaa(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	namespace_2f06d687::function_ef554cf7("axis", &namespace_8e9083ff::function_b1d28dc8);
	namespace_2f06d687::function_ef554cf7("axis", &namespace_8e9083ff::function_90de3a76);
	level.var_6b5304af = function_fe0cfd2e("ai_taylor_cover", "script_noteworthy");
	foreach(var_974cc07 in level.var_6b5304af)
	{
		function_d224409e(var_974cc07, 0);
	}
	namespace_d0ef8521::function_74d6b22f("cp_level_zurich_apprehend_awaiting_obj");
	namespace_d0ef8521::function_50ccee8d("cp_level_zurich_apprehend_awaiting_obj");
	namespace_d0ef8521::function_74d6b22f("cp_level_zurich_unavailable_obj");
	namespace_8e9083ff::function_4d032f25(0);
	namespace_b73b0f52::function_8cb99e45();
	namespace_68404a06::function_2d235e66();
	namespace_68404a06::function_1dc45e88();
	namespace_68404a06::function_3f3aadf9();
	level thread namespace_8e9083ff::function_4a00a473("server_room");
	level.var_9b1393e7 function_69ee2ece();
	namespace_84970cc4::function_966ecb29(level.var_2395e945, &namespace_8e9083ff::function_3e4d643b, 0);
	level notify("hash_52e251bc");
}

/*
	Name: function_f62d8d36
	Namespace: namespace_e0fbc9fc
	Checksum: 0x8BF7B791
	Offset: 0x11F8
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_f62d8d36()
{
	var_2fd26037 = namespace_2f06d687::function_7387a40a("hendricks_server_igc_spawner");
	var_2fd26037 namespace_d84e54db::function_7901ac63(var_2fd26037.var_c11924ba, "right");
	var_2fd26037 function_ca711294("neutral");
	level namespace_cc27597::function_c35e6aab("cin_zur_09_01_standoff_1st_hostage", var_2fd26037);
}

/*
	Name: function_69ee2ece
	Namespace: namespace_e0fbc9fc
	Checksum: 0x81DAE11A
	Offset: 0x1298
	Size: 0x147
	Parameters: 0
	Flags: None
*/
function function_69ee2ece()
{
	foreach(var_6bfe1586 in self)
	{
		var_3d29e443 = var_6bfe1586 function_21995b5a();
		foreach(var_cdee635d in var_3d29e443)
		{
			if(isdefined(var_cdee635d.var_84690dfd) && var_cdee635d.var_84690dfd)
			{
				var_6bfe1586 function_1f3745c0(var_cdee635d);
			}
		}
	}
}

/*
	Name: function_ef7b97bd
	Namespace: namespace_e0fbc9fc
	Checksum: 0x9B42C5F8
	Offset: 0x13E8
	Size: 0x3A9
	Parameters: 0
	Flags: None
*/
function function_ef7b97bd()
{
	level namespace_cc27597::function_8f9f34e0("cin_gen_ambient_raven_idle_eating_raven", &namespace_8e9083ff::function_e547724d, "init");
	level namespace_cc27597::function_8f9f34e0("cin_gen_ambient_raven_idle", &namespace_8e9083ff::function_e547724d, "init");
	level namespace_cc27597::function_8f9f34e0("cin_gen_traversal_raven_fly_away", &namespace_8e9083ff::function_86b1cd8a, "init");
	var_575a3d6e = namespace_14b42b8a::function_7faf4c39("server_hallway_ravens");
	namespace_84970cc4::function_966ecb29(var_575a3d6e, &namespace_cc27597::function_c35e6aab);
	namespace_8e9083ff::function_1b3dfa61("server_hallway_hallucination_struct_trig", undefined, 96, 512);
	namespace_84970cc4::function_966ecb29(level.var_2395e945, &namespace_71e9cb84::function_e9c3870b, "raven_hallucinations", 1);
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		namespace_e216c11c::function_25294cfe("visionset", "cp_zurich_hallucination", var_5dc5e20a);
	}
	function_37cbcf1a("evt_server_ravens_f", (0, 0, 0));
	level notify("hash_755edaa4");
	foreach(var_1cbcb46d in var_575a3d6e)
	{
		var_1cbcb46d namespace_82b91a51::function_67520c6a(function_62e4226e(1), undefined, &namespace_cc27597::function_43718187);
	}
	wait(1);
	namespace_84970cc4::function_966ecb29(level.var_2395e945, &namespace_71e9cb84::function_e9c3870b, "raven_hallucinations", 0);
	wait(0.5);
	namespace_84970cc4::function_966ecb29(var_575a3d6e, &namespace_cc27597::function_fcf56ab5);
	wait(2);
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		namespace_e216c11c::function_a5218027("visionset", "cp_zurich_hallucination", var_5dc5e20a);
	}
}

