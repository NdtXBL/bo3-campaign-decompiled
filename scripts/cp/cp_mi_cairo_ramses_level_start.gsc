#using scripts\codescripts\struct;
#using scripts\cp\_load;
#using scripts\cp\_skipto;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_cairo_ramses_fx;
#using scripts\cp\cp_mi_cairo_ramses_sound;
#using scripts\cp\cp_mi_cairo_ramses_station_walk;
#using scripts\cp\cp_mi_cairo_ramses_utility;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\compass;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;

#namespace level_start;

/*
	Name: main
	Namespace: level_start
	Checksum: 0xEDFAA306
	Offset: 0x650
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function main()
{
	clientfield::set("hide_station_miscmodels", 1);
	clientfield::set("turn_on_rotating_fxanim_fans", 1);
	clientfield::set("start_fog_banks", 1);
	exploder::exploder("fx_exploder_sparks_off");
	level function_35e75862();
	level skipto::function_be8adfb8("level_start");
}

/*
	Name: init_heroes
	Namespace: level_start
	Checksum: 0xC5BBC2CF
	Offset: 0x710
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function init_heroes(str_objective)
{
	level.var_2fd26037 = util::function_740f8516("hendricks");
	level.var_7a9855f3 = util::function_740f8516("rachel");
	skipto::teleport_ai(str_objective);
}

/*
	Name: function_e9d1564a
	Namespace: level_start
	Checksum: 0x1053F86D
	Offset: 0x780
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_e9d1564a()
{
	self endon("death");
	self util::function_16c71b8(1);
	self thread function_51740d9d();
}

/*
	Name: function_51740d9d
	Namespace: level_start
	Checksum: 0x39443A4A
	Offset: 0x7C8
	Size: 0x20B
	Parameters: 0
	Flags: None
*/
function function_51740d9d()
{
	self endon("disconnect");
	self endon("death");
	var_d30b00d2 = GetEnt("trig_subway_area_mid", "targetname");
	while(!isdefined(level.var_2fd26037) || !isdefined(level.var_7a9855f3))
	{
		wait(0.15);
	}
	var_28be2d2a = Array(level.var_2fd26037);
	self thread namespace_391e4301::player_walk_speed_adjustment(var_28be2d2a, "kill_player_walkspeed_adjustment", 128, 256, 0.3, 0.8);
	do
	{
		wait(0.25);
	}
	while(!(!level.var_2fd26037 istouching(var_d30b00d2) && !self istouching(var_d30b00d2)));
	self notify("hash_638e4884", 0);
	self thread namespace_391e4301::player_walk_speed_adjustment(var_28be2d2a, "kill_player_walkspeed_adjustment", 192, 512, 0.2, 0.6);
	do
	{
		wait(0.25);
	}
	while(!(!isdefined(level.var_9db406db) || !level flag::get("station_walk_past_stairs")));
	self notify("hash_638e4884", 0);
	var_28be2d2a = Array(level.var_9db406db, level.var_2fd26037, level.var_7a9855f3);
	self thread namespace_391e4301::player_walk_speed_adjustment(var_28be2d2a, "kill_player_walkspeed_adjustment", 192, 512, 0.3, 0.8);
}

/*
	Name: function_8ae96a69
	Namespace: level_start
	Checksum: 0x1CFDD3B0
	Offset: 0x9E0
	Size: 0x49
	Parameters: 0
	Flags: None
*/
function function_8ae96a69()
{
	self endon("death");
	self setMoveSpeedScale(1);
	self util::function_16c71b8(0);
	self notify("hash_638e4884");
}

/*
	Name: function_35e75862
	Namespace: level_start
	Checksum: 0x5DE001D8
	Offset: 0xA38
	Size: 0x2B3
	Parameters: 0
	Flags: None
*/
function function_35e75862()
{
	level scene::init("cin_ram_01_01_enterstation_1st_ride");
	function_50fda83a();
	scene::add_scene_func("cin_ram_01_01_enterstation_1st_ride", &function_859915aa, "play");
	scene::add_scene_func("cin_ram_01_01_enterstation_1st_ride", &function_87629907, "play");
	scene::add_scene_func("cin_ram_01_01_enterstation_1st_ride", &namespace_391e4301::function_3bc57aa8, "done");
	namespace_391e4301::function_ac2b4535("cin_ram_01_01_enterstation_1st_ride", "enterstation_1st_ride_teleport");
	load::function_c32ba481();
	util::do_chyron_text(&"CP_MI_CAIRO_RAMSES_INTRO_LINE_1_FULL", "", &"CP_MI_CAIRO_RAMSES_INTRO_LINE_2_FULL", &"CP_MI_CAIRO_RAMSES_INTRO_LINE_2_SHORT", &"CP_MI_CAIRO_RAMSES_INTRO_LINE_3_FULL", &"CP_MI_CAIRO_RAMSES_INTRO_LINE_3_SHORT", &"CP_MI_CAIRO_RAMSES_INTRO_LINE_4_FULL", &"CP_MI_CAIRO_RAMSES_INTRO_LINE_4_FULL");
	scene::add_scene_func("cin_ram_01_01_enterstation_vign_loading", &function_ba280036, "play");
	level thread util::delay(2, undefined, &scene::Play, "cin_ram_01_01_enterstation_vign_loading");
	if(isdefined(level.BZM_RAMSESDialogue1Callback))
	{
		level thread [[level.BZM_RAMSESDialogue1Callback]]();
	}
	foreach(player in level.players)
	{
		player thread function_b7bac40f();
		player thread function_679d413a();
	}
	level thread namespace_e4c0c552::function_4f8bda39();
	level scene::Play("cin_ram_01_01_enterstation_1st_ride");
	level clientfield::set("gameplay_started", 1);
}

/*
	Name: function_1f8e97be
	Namespace: level_start
	Checksum: 0xEA762AB5
	Offset: 0xCF8
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_1f8e97be()
{
	level util::screen_fade_out(0);
	wait(1);
	level thread util::screen_fade_in(1);
}

/*
	Name: function_50fda83a
	Namespace: level_start
	Checksum: 0xF34634D3
	Offset: 0xD40
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_50fda83a()
{
	var_f7ae14aa = GetEnt("traincar_primary", "targetname");
	var_f7ae14aa.script_objective = "interview_dr_nasser";
	var_f7ae14aa link_ents("lgt_subway_car", "script_noteworthy");
	var_f7ae14aa link_ents("traincar_primary_cab");
}

/*
	Name: function_859915aa
	Namespace: level_start
	Checksum: 0xBBF4445E
	Offset: 0xDD8
	Size: 0x41
	Parameters: 1
	Flags: None
*/
function function_859915aa(a_ents)
{
	var_f7ae14aa = a_ents["traincar_primary"];
	var_f7ae14aa waittill("stopped");
	level notify("hash_30462a58");
}

/*
	Name: function_87629907
	Namespace: level_start
	Checksum: 0x857EF657
	Offset: 0xE28
	Size: 0x53
	Parameters: 1
	Flags: None
*/
function function_87629907(a_ents)
{
	level waittill("hash_d73ff968");
	level.var_2fd26037 SetDedicatedShadow(0);
	streamerRequest("clear", "cin_ram_01_01_enterstation_1st_ride");
}

/*
	Name: function_80df7cd
	Namespace: level_start
	Checksum: 0xA609A21F
	Offset: 0xE88
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_80df7cd(var_fcd89369)
{
	var_fcd89369 clientfield::set("attach_cam_to_train", 1);
}

/*
	Name: function_b7bac40f
	Namespace: level_start
	Checksum: 0x264B2F8B
	Offset: 0xEC0
	Size: 0x47
	Parameters: 0
	Flags: None
*/
function function_b7bac40f()
{
	self endon("disconnect");
	level endon("hash_88bd4b7");
	while(1)
	{
		self PlayRumbleOnEntity("tank_rumble");
		wait(1);
	}
}

/*
	Name: function_679d413a
	Namespace: level_start
	Checksum: 0x2E7AA1A8
	Offset: 0xF10
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_679d413a()
{
	self endon("disconnect");
	level waittill("hash_5ba360b8");
	self PlayRumbleOnEntity("tank_fire");
}

/*
	Name: function_ba280036
	Namespace: level_start
	Checksum: 0x534C07B6
	Offset: 0xF58
	Size: 0xF9
	Parameters: 1
	Flags: None
*/
function function_ba280036(a_ents)
{
	level waittill("hash_c466417");
	var_9224b839 = GetEntArray("elevator_door", "targetname");
	foreach(e_piece in var_9224b839)
	{
		e_piece MoveZ(-108, 1.5);
		e_piece playsound("evt_postint_door_open");
	}
}

/*
	Name: function_6c8b50b0
	Namespace: level_start
	Checksum: 0xED6F33D2
	Offset: 0x1060
	Size: 0x91
	Parameters: 0
	Flags: None
*/
function function_6c8b50b0()
{
	foreach(e_player in level.players)
	{
		e_player clientfield::set_to_player("intro_reflection_extracam", 1);
	}
}

/*
	Name: function_d4fa36aa
	Namespace: level_start
	Checksum: 0xBD71D8C7
	Offset: 0x1100
	Size: 0x91
	Parameters: 0
	Flags: None
*/
function function_d4fa36aa()
{
	foreach(e_player in level.players)
	{
		e_player clientfield::set_to_player("intro_reflection_extracam", 0);
	}
}

/*
	Name: link_ents
	Namespace: level_start
	Checksum: 0x73C21EA9
	Offset: 0x11A0
	Size: 0xED
	Parameters: 2
	Flags: None
*/
function link_ents(str_name, str_key)
{
	if(!isdefined(str_key))
	{
		str_key = "targetname";
	}
	a_e_ents = GetEntArray(str_name, str_key);
	foreach(e_ent in a_e_ents)
	{
		e_ent LinkTo(self);
		e_ent.script_objective = "interview_dr_nasser";
	}
}

/*
	Name: function_ef108c0a
	Namespace: level_start
	Checksum: 0x742E52BE
	Offset: 0x1298
	Size: 0xE1
	Parameters: 0
	Flags: None
*/
function function_ef108c0a()
{
	foreach(e_player in level.players)
	{
		e_player SetOrigin(self.var_b3cfd3f2.origin);
		e_player SetPlayerAngles(self.angles);
		e_player playerLinkTo(self.var_b3cfd3f2, undefined, 0, 0, 0, 0, 0);
	}
}

