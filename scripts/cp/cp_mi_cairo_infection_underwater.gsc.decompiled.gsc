#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_hazard;
#using scripts\cp\_load;
#using scripts\cp\_skipto;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_cairo_infection_util;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\hud_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\util_shared;

#namespace namespace_bcdc229e;

/*
	Name: function_d290ebfa
	Namespace: namespace_bcdc229e
	Checksum: 0xD1AAAB9A
	Offset: 0x330
	Size: 0x13
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	function_2ea898a8();
}

/*
	Name: function_2ea898a8
	Namespace: namespace_bcdc229e
	Checksum: 0x1428528C
	Offset: 0x350
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_2ea898a8()
{
	namespace_71e9cb84::function_50f16166("world", "infection_underwater_debris", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "water_motes", 1, 1, "int");
}

/*
	Name: function_9157ab7a
	Namespace: namespace_bcdc229e
	Checksum: 0xD4F2FE81
	Offset: 0x3C0
	Size: 0x203
	Parameters: 2
	Flags: None
*/
function function_9157ab7a(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		level namespace_71e9cb84::function_74d6b22f("cathedral_water_state", 1);
		level namespace_cc27597::function_c35e6aab("cin_inf_12_01_underwater_1st_fall_underwater02");
		namespace_d7916d65::function_a2995f22();
	}
	level notify("hash_7b06f432");
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a thread namespace_419e977d::function_e9b126ef(20, 0.9);
	}
	if(isdefined(level.var_abdc59db))
	{
		level thread [[level.var_abdc59db]]();
	}
	level thread function_3598ea7();
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a function_83fd42b5();
	}
	level thread namespace_cc27597::function_43718187("cin_inf_12_01_underwater_1st_fall_underwater02");
	function_37cbcf1a("evt_underwater_outro", (0, 0, 0));
}

/*
	Name: function_3598ea7
	Namespace: namespace_bcdc229e
	Checksum: 0x7AF602AE
	Offset: 0x5D0
	Size: 0x18B
	Parameters: 0
	Flags: None
*/
function function_3598ea7()
{
	level thread namespace_71e9cb84::function_74d6b22f("infection_underwater_debris", 1);
	namespace_84970cc4::function_966ecb29(level.var_2395e945, &namespace_71e9cb84::function_e9c3870b, "water_motes", 1);
	level namespace_82b91a51::function_564f2d81("underwater_scene_fade", "underwater_scene_done");
	level namespace_71e9cb84::function_74d6b22f("sndIGCsnapshot", 4);
	namespace_84970cc4::function_966ecb29(level.var_9b1393e7, &namespace_82b91a51::function_16c71b8, 1);
	if(namespace_cc27597::function_b1f75ee9())
	{
		level thread namespace_82b91a51::function_7e61de2b(0, "black", "end_level_fade");
	}
	else
	{
		level thread namespace_82b91a51::function_7e61de2b(2, "black", "end_level_fade");
	}
	namespace_84970cc4::function_966ecb29(level.var_2395e945, &namespace_71e9cb84::function_e9c3870b, "water_motes", 0);
	level thread namespace_1d795d47::function_be8adfb8("underwater");
}

/*
	Name: function_1c0537db
	Namespace: namespace_bcdc229e
	Checksum: 0x6D9C4E40
	Offset: 0x768
	Size: 0xE9
	Parameters: 4
	Flags: None
*/
function function_1c0537db(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	level thread namespace_71e9cb84::function_74d6b22f("infection_underwater_debris", 0);
	level namespace_71e9cb84::function_74d6b22f("cathedral_water_state", 0);
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a thread namespace_419e977d::function_60455f28("o2");
	}
}

