#using scripts\codescripts\struct;
#using scripts\cp\_load;
#using scripts\cp\_util;
#using scripts\shared\animation_shared;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\fx_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\system_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\vehicles\_hunter;

#namespace namespace_1254c007;

/*
	Name: function_2dc19561
	Namespace: namespace_1254c007
	Checksum: 0x7FF6E376
	Offset: 0x418
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("aquifer_ambience", &function_8c87d8eb, undefined, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_1254c007
	Checksum: 0xE8605DDA
	Offset: 0x458
	Size: 0x123
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	namespace_71e9cb84::function_50f16166("world", "hide_sand_storm", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "show_sand_storm", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "play_trucks", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "start_ambience", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "stop_ambience", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "kill_ambience", 1, 1, "int");
}

/*
	Name: function_d290ebfa
	Namespace: namespace_1254c007
	Checksum: 0x7F6AC514
	Offset: 0x588
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	thread function_4b099a44();
	thread function_8f28e703("lotus_hunter1", "exterior_hack_trig_left_1_started", 10);
	thread function_8f28e703("lotus_hunter2", "exterior_hack_trig_right_1_started", 10);
	thread function_febb5e1e();
	thread function_9f32fed2();
	thread function_bf52f93f();
}

/*
	Name: function_9f32fed2
	Namespace: namespace_1254c007
	Checksum: 0x9B94703F
	Offset: 0x628
	Size: 0x1FB
	Parameters: 0
	Flags: None
*/
function function_9f32fed2()
{
	level namespace_ad23e503::function_1ab5ebec("player_active_in_level");
	var_791757 = 1;
	if(!level namespace_ad23e503::function_7922262b("water_room_completed") && !level namespace_ad23e503::function_7922262b("inside_water_room"))
	{
		namespace_71e9cb84::function_74d6b22f("start_ambience", var_791757);
		var_791757 = 0;
		level namespace_ad23e503::function_1ab5ebec("inside_water_room");
		namespace_71e9cb84::function_74d6b22f("stop_ambience", 1);
	}
	if(level namespace_ad23e503::function_7922262b("water_room_exit") || level namespace_ad23e503::function_7922262b("water_room"))
	{
		level namespace_ad23e503::function_1ab5ebec("flag_khalil_water_exit");
	}
	if(level namespace_ad23e503::function_7922262b("inside_water_room"))
	{
		level namespace_ad23e503::function_9d134160("inside_water_room");
	}
	if(!level namespace_ad23e503::function_7922262b("inside_aquifer"))
	{
		namespace_71e9cb84::function_74d6b22f("start_ambience", var_791757);
		level namespace_ad23e503::function_1ab5ebec("inside_aquifer");
		namespace_71e9cb84::function_74d6b22f("kill_ambience", 1);
	}
}

/*
	Name: function_4b099a44
	Namespace: namespace_1254c007
	Checksum: 0xF5F2CE85
	Offset: 0x830
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_4b099a44()
{
	var_9ca5f644 = function_99201f25("aqu_intro_vista_cards_01", "targetname");
	if(level namespace_ad23e503::function_dbca4c5d("level_long_fly_in_completed") && !level namespace_ad23e503::function_7922262b("level_long_fly_in_completed"))
	{
		level waittill("hash_1486d0dc");
	}
	if(isdefined(var_9ca5f644))
	{
		namespace_84970cc4::function_7e64f710(var_9ca5f644);
	}
}

/*
	Name: function_febb5e1e
	Namespace: namespace_1254c007
	Checksum: 0x18028A
	Offset: 0x8D8
	Size: 0x1B7
	Parameters: 0
	Flags: None
*/
function function_febb5e1e()
{
	level endon("hash_935c5b8e");
	var_f92ecad5 = [];
	var_8f76637c = 0;
	level namespace_ad23e503::function_1ab5ebec("player_active_in_level");
	if(level namespace_ad23e503::function_7922262b("level_long_fly_in"))
	{
		namespace_71e9cb84::function_74d6b22f("hide_sand_storm", 1);
		while(1)
		{
			var_e78c0153 = namespace_4dbf3ae3::function_1ab5ebec("Sand_Storm_Trigger");
			foreach(var_791757 in var_f92ecad5)
			{
				if(var_e78c0153.var_aef176e7.var_1e9fba3 == var_791757)
				{
					var_8f76637c = 1;
				}
			}
			if(var_8f76637c == 0)
			{
				var_e78c0153.var_aef176e7 namespace_71e9cb84::function_e9c3870b("show_sand_storm", 1);
				namespace_84970cc4::function_69554b3e(var_f92ecad5, var_e78c0153.var_aef176e7.var_1e9fba3);
			}
			var_8f76637c = 0;
		}
	}
}

/*
	Name: function_8f28e703
	Namespace: namespace_1254c007
	Checksum: 0x9182EEED
	Offset: 0xA98
	Size: 0x221
	Parameters: 3
	Flags: None
*/
function function_8f28e703(var_a87ad6ce, var_4a891a20, var_32b93aca)
{
	var_f2ceeb93 = namespace_14b42b8a::function_7faf4c39(var_a87ad6ce, "targetname");
	while(!namespace_ad23e503::function_dbca4c5d(var_4a891a20))
	{
		wait(0.5);
	}
	level namespace_ad23e503::function_1ab5ebec(var_4a891a20);
	foreach(var_5e7ee507 in var_f2ceeb93)
	{
		wait(var_32b93aca);
		var_2c10ad3c = 1;
		while(var_2c10ad3c == 1)
		{
			wait(0.5);
			var_2c10ad3c = 0;
			foreach(var_5dc5e20a in level.var_2395e945)
			{
				if(0 == var_5dc5e20a function_4294bbb0(var_5e7ee507.var_722885f3, 50000, 0))
				{
					var_2c10ad3c = 1;
				}
			}
		}
		var_5e7ee507 namespace_cc27597::function_43718187(var_5e7ee507.var_1157a889);
		var_5e7ee507 namespace_cc27597::function_fcf56ab5(1);
		var_5e7ee507.var_123e33cb = 0;
	}
}

/*
	Name: function_bf52f93f
	Namespace: namespace_1254c007
	Checksum: 0x7123127A
	Offset: 0xCC8
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_bf52f93f()
{
	level namespace_ad23e503::function_1ab5ebec("player_active_in_level");
	if(level namespace_ad23e503::function_7922262b("level_long_fly_in_completed"))
	{
		return;
	}
	wait(1);
	level.var_2395e945[0].var_8fedf36c waittill("hash_2bc810f9");
	namespace_71e9cb84::function_74d6b22f("play_trucks", 1);
}

