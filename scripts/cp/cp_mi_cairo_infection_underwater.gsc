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

#namespace UNDERWATER;

/*
	Name: main
	Namespace: UNDERWATER
	Checksum: 0xD1AAAB9A
	Offset: 0x330
	Size: 0x13
	Parameters: 0
	Flags: None
*/
function main()
{
	init_clientfields();
}

/*
	Name: init_clientfields
	Namespace: UNDERWATER
	Checksum: 0x1428528C
	Offset: 0x350
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function init_clientfields()
{
	clientfield::register("world", "infection_underwater_debris", 1, 1, "int");
	clientfield::register("toplayer", "water_motes", 1, 1, "int");
}

/*
	Name: function_9157ab7a
	Namespace: UNDERWATER
	Checksum: 0xD4F2FE81
	Offset: 0x3C0
	Size: 0x203
	Parameters: 2
	Flags: None
*/
function function_9157ab7a(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		level clientfield::set("cathedral_water_state", 1);
		level scene::init("cin_inf_12_01_underwater_1st_fall_underwater02");
		load::function_a2995f22();
	}
	level notify("update_billboard");
	foreach(player in level.activePlayers)
	{
		player thread hazard::function_e9b126ef(20, 0.9);
	}
	if(isdefined(level.BZM_INFECTIONDialogue13Callback))
	{
		level thread [[level.BZM_INFECTIONDialogue13Callback]]();
	}
	level thread function_3598ea7();
	foreach(player in level.players)
	{
		player EnableInvulnerability();
	}
	level thread scene::Play("cin_inf_12_01_underwater_1st_fall_underwater02");
	playsoundatposition("evt_underwater_outro", (0, 0, 0));
}

/*
	Name: function_3598ea7
	Namespace: UNDERWATER
	Checksum: 0x7AF602AE
	Offset: 0x5D0
	Size: 0x18B
	Parameters: 0
	Flags: None
*/
function function_3598ea7()
{
	level thread clientfield::set("infection_underwater_debris", 1);
	Array::thread_all(level.players, &clientfield::set_to_player, "water_motes", 1);
	level util::waittill_either("underwater_scene_fade", "underwater_scene_done");
	level clientfield::set("sndIGCsnapshot", 4);
	Array::thread_all(level.activePlayers, &util::function_16c71b8, 1);
	if(scene::is_skipping_in_progress())
	{
		level thread util::screen_fade_out(0, "black", "end_level_fade");
	}
	else
	{
		level thread util::screen_fade_out(2, "black", "end_level_fade");
	}
	Array::thread_all(level.players, &clientfield::set_to_player, "water_motes", 0);
	level thread skipto::function_be8adfb8("underwater");
}

/*
	Name: function_1c0537db
	Namespace: UNDERWATER
	Checksum: 0x6D9C4E40
	Offset: 0x768
	Size: 0xE9
	Parameters: 4
	Flags: None
*/
function function_1c0537db(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	level thread clientfield::set("infection_underwater_debris", 0);
	level clientfield::set("cathedral_water_state", 0);
	foreach(player in level.activePlayers)
	{
		player thread hazard::function_60455f28("o2");
	}
}

