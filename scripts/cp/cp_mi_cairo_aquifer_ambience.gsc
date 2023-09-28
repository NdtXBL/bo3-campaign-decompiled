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
	Name: __init__sytem__
	Namespace: namespace_1254c007
	Checksum: 0x7FF6E376
	Offset: 0x418
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__sytem__()
{
	system::register("aquifer_ambience", &__init__, undefined, undefined);
}

/*
	Name: __init__
	Namespace: namespace_1254c007
	Checksum: 0xE8605DDA
	Offset: 0x458
	Size: 0x123
	Parameters: 0
	Flags: None
*/
function __init__()
{
	clientfield::register("world", "hide_sand_storm", 1, 1, "int");
	clientfield::register("toplayer", "show_sand_storm", 1, 1, "int");
	clientfield::register("world", "play_trucks", 1, 1, "int");
	clientfield::register("world", "start_ambience", 1, 1, "int");
	clientfield::register("world", "stop_ambience", 1, 1, "int");
	clientfield::register("world", "kill_ambience", 1, 1, "int");
}

/*
	Name: main
	Namespace: namespace_1254c007
	Checksum: 0x7F6AC514
	Offset: 0x588
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function main()
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
	level flag::wait_till("player_active_in_level");
	num = 1;
	if(!level flag::get("water_room_completed") && !level flag::get("inside_water_room"))
	{
		clientfield::set("start_ambience", num);
		num = 0;
		level flag::wait_till("inside_water_room");
		clientfield::set("stop_ambience", 1);
	}
	if(level flag::get("water_room_exit") || level flag::get("water_room"))
	{
		level flag::wait_till("flag_khalil_water_exit");
	}
	if(level flag::get("inside_water_room"))
	{
		level flag::clear("inside_water_room");
	}
	if(!level flag::get("inside_aquifer"))
	{
		clientfield::set("start_ambience", num);
		level flag::wait_till("inside_aquifer");
		clientfield::set("kill_ambience", 1);
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
	var_9ca5f644 = GetEntArray("aqu_intro_vista_cards_01", "targetname");
	if(level flag::exists("level_long_fly_in_completed") && !level flag::get("level_long_fly_in_completed"))
	{
		level waittill("hash_1486d0dc");
	}
	if(isdefined(var_9ca5f644))
	{
		Array::delete_all(var_9ca5f644);
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
	level endon("intro_finished");
	var_f92ecad5 = [];
	redundant = 0;
	level flag::wait_till("player_active_in_level");
	if(level flag::get("level_long_fly_in"))
	{
		clientfield::set("hide_sand_storm", 1);
		while(1)
		{
			t = trigger::wait_till("Sand_Storm_Trigger");
			foreach(num in var_f92ecad5)
			{
				if(t.who.player_num == num)
				{
					redundant = 1;
				}
			}
			if(redundant == 0)
			{
				t.who clientfield::set_to_player("show_sand_storm", 1);
				Array::add(var_f92ecad5, t.who.player_num);
			}
			redundant = 0;
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
function function_8f28e703(tname, start_flag, interval)
{
	var_f2ceeb93 = struct::get_array(tname, "targetname");
	while(!flag::exists(start_flag))
	{
		wait(0.5);
	}
	level flag::wait_till(start_flag);
	foreach(hunter in var_f2ceeb93)
	{
		wait(interval);
		seen = 1;
		while(seen == 1)
		{
			wait(0.5);
			seen = 0;
			foreach(player in level.players)
			{
				if(0 == player playersighttrace(hunter.origin, 50000, 0))
				{
					seen = 1;
				}
			}
		}
		hunter scene::Play(hunter.scriptbundlename);
		hunter scene::stop(1);
		hunter.scene_played = 0;
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
	level flag::wait_till("player_active_in_level");
	if(level flag::get("level_long_fly_in_completed"))
	{
		return;
	}
	wait(1);
	level.players[0].var_8fedf36c waittill("hash_2bc810f9");
	clientfield::set("play_trucks", 1);
}

