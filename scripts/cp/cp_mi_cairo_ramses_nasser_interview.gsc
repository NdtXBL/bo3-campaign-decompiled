#using scripts\codescripts\struct;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_oed;
#using scripts\cp\_skipto;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_cairo_ramses_fx;
#using scripts\cp\cp_mi_cairo_ramses_level_start;
#using scripts\cp\cp_mi_cairo_ramses_sound;
#using scripts\cp\cp_mi_cairo_ramses_station_fight;
#using scripts\cp\cp_mi_cairo_ramses_station_walk;
#using scripts\cp\cp_mi_cairo_ramses_utility;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\compass;
#using scripts\shared\flag_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;

#namespace namespace_e55eaf53;

/*
	Name: main
	Namespace: namespace_e55eaf53
	Checksum: 0xFBBB10F8
	Offset: 0x898
	Size: 0x1F3
	Parameters: 1
	Flags: None
*/
function main(var_74cd64bc)
{
	level flag::init("raps_door_used");
	Precache();
	if(var_74cd64bc)
	{
		init_heroes();
		level thread function_2ed0dd8e();
		level scene::skipto_end("cin_ram_02_04_walk_1st_introduce_04");
		level thread namespace_7434c6b7::function_bc43c2f8(0);
		load::function_a2995f22();
		function_b760b954();
		namespace_391e4301::function_e7ebe596();
	}
	function_c99967dc(1);
	scene::add_scene_func("cin_ram_02_interview_3rd_sh010", &function_57bc36e6, "play");
	scene::add_scene_func("cin_ram_02_interview_3rd_sh270", &namespace_391e4301::function_eabc6e2f, "play");
	scene::add_scene_func("cin_ram_02_interview_3rd_sh270", &function_830dd1fa, "done");
	scene::add_scene_func("cin_ram_02_interview_3rd_sh270", &function_57bc36e6, "done", 0);
	scene::add_scene_func("cin_ram_02_04_interview_part04", &function_f568f95f, "players_done");
	function_bf7cc686(var_74cd64bc);
}

/*
	Name: Precache
	Namespace: namespace_e55eaf53
	Checksum: 0x99EC1590
	Offset: 0xA98
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function Precache()
{
}

/*
	Name: init_heroes
	Namespace: namespace_e55eaf53
	Checksum: 0x4A3F1FC6
	Offset: 0xAA8
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function init_heroes()
{
	level.var_2fd26037 = util::function_740f8516("hendricks");
	level.var_7a9855f3 = util::function_740f8516("rachel");
	level.var_9db406db = util::function_740f8516("khalil");
	skipto::teleport_ai("interview_dr_nasser", level.var_9db406db);
}

/*
	Name: function_2ed0dd8e
	Namespace: namespace_e55eaf53
	Checksum: 0xE3BBCAAB
	Offset: 0xB38
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_2ed0dd8e()
{
	level thread scene::init("cin_ram_02_interview_3rd_sh010_static_props");
	scene::Play("cin_ram_02_04_interview_salim_wait");
}

/*
	Name: function_1bcd464b
	Namespace: namespace_e55eaf53
	Checksum: 0xC2F902EA
	Offset: 0xB80
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_1bcd464b()
{
	self notify("hash_638e4884");
	self util::function_16c71b8(1);
	self setMoveSpeedScale(1);
}

/*
	Name: function_bf7cc686
	Namespace: namespace_e55eaf53
	Checksum: 0x21FCC2A8
	Offset: 0xBD0
	Size: 0x19B
	Parameters: 1
	Flags: None
*/
function function_bf7cc686(var_74cd64bc)
{
	if(!var_74cd64bc)
	{
		foreach(e_player in level.activePlayers)
		{
			e_player thread function_1bcd464b();
		}
	}
	function_6a80eecf();
	level flag::wait_till("dr_nasser_interview_started");
	namespace_391e4301::function_e7ebe596(0);
	level thread namespace_e4c0c552::function_53de5c02();
	level thread namespace_bedc6a60::function_e5ed2910();
	function_e9053432();
	if(isdefined(level.BZM_RAMSESDialogue2Callback))
	{
		level thread [[level.BZM_RAMSESDialogue2Callback]]();
	}
	level scene::Play("cin_ram_02_interview_3rd_sh010", level.var_c8b5ad07);
	level flag::wait_till("raps_door_used");
	skipto::function_be8adfb8("interview_dr_nasser");
}

/*
	Name: function_830dd1fa
	Namespace: namespace_e55eaf53
	Checksum: 0x43DB97CB
	Offset: 0xD78
	Size: 0x11B
	Parameters: 1
	Flags: None
*/
function function_830dd1fa(a_ents)
{
	level thread function_7995f971();
	function_c99967dc(2);
	objectives::complete("cp_level_ramses_interrogate_salim");
	objectives::complete("cp_level_ramses_determine_what_salim_knows");
	namespace_391e4301::function_e7ebe596();
	level.var_9db406db thread function_370a5671();
	level util::clientNotify("alert_on");
	level thread function_66a8939();
	battlechatter::function_d9f49fba(1, "bc");
	level thread namespace_7434c6b7::function_bbd12ed2(0);
	level thread function_7452fdb5();
}

/*
	Name: function_7995f971
	Namespace: namespace_e55eaf53
	Checksum: 0x7F8DAF25
	Offset: 0xEA0
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_7995f971()
{
	level waittill("hash_362049d4");
	objectives::set("cp_level_ramses_protect_salim");
	Array::thread_all(GetEntArray("mobile_armory", "script_noteworthy"), &namespace_16f9ecd3::function_e228c18a, 1);
	level thread scene::init("cin_ram_03_01_defend_1st_rapsintro");
	function_e4a01869();
	function_7648e769();
	level thread namespace_bedc6a60::function_91e74b85();
}

/*
	Name: function_f568f95f
	Namespace: namespace_e55eaf53
	Checksum: 0x4614D1C4
	Offset: 0xF78
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_f568f95f(a_ents)
{
	util::function_93831e79("interview_igc_done");
}

/*
	Name: function_370a5671
	Namespace: namespace_e55eaf53
	Checksum: 0x5EF200
	Offset: 0xFA8
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_370a5671()
{
	var_8279bcd1 = struct::get("defend_ramses_station_khalil_start_spot", "targetname");
	self ClearForcedGoal();
	self.goalRadius = 32;
	self ForceTeleport(var_8279bcd1.origin, var_8279bcd1.angles);
}

/*
	Name: function_57bc36e6
	Namespace: namespace_e55eaf53
	Checksum: 0x32D9DE77
	Offset: 0x1030
	Size: 0x27
	Parameters: 2
	Flags: None
*/
function function_57bc36e6(a_ents, b_on)
{
	if(!isdefined(b_on))
	{
		b_on = 1;
	}
}

/*
	Name: function_66a8939
	Namespace: namespace_e55eaf53
	Checksum: 0x8EDDA486
	Offset: 0x1060
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_66a8939()
{
	sndent = spawn("script_origin", (7763, -48, 53));
	sndent PlayLoopSound("evt_postint_battle_walla", 0.25);
	flag::wait_till("raps_door_used");
	sndent StopLoopSound(2);
	wait(2);
	sndent delete();
}

/*
	Name: function_7452fdb5
	Namespace: namespace_e55eaf53
	Checksum: 0x8F3AC47
	Offset: 0x1118
	Size: 0xAB
	Parameters: 1
	Flags: None
*/
function function_7452fdb5(a_ents)
{
	scene::init("cin_ram_03_01_defend_1st_rapsintro_doors_only");
	var_94312345 = GetEnt("raps_intro_door_clip", "targetname");
	var_da30185c = struct::get(var_94312345.target, "targetname");
	var_94312345 moveto(var_da30185c.origin, 0.05);
}

/*
	Name: function_6a80eecf
	Namespace: namespace_e55eaf53
	Checksum: 0x9A8350D6
	Offset: 0x11D0
	Size: 0x209
	Parameters: 2
	Flags: None
*/
function function_6a80eecf(var_41b16c2b, var_a083aff5)
{
	if(!isdefined(var_a083aff5))
	{
		var_a083aff5 = 0;
	}
	if(isdefined(var_41b16c2b))
	{
		level waittill(var_41b16c2b);
	}
	if(var_a083aff5)
	{
		level flag::wait_till("rs_walkthrough_safehouse_enter");
	}
	var_80f9be56 = GetEnt("armory_door_collision", "targetname");
	var_80f9be56 solid();
	var_9224b839 = GetEntArray("interrogation_door", "targetname");
	var_169a71c6 = struct::get("armory_door_down", "targetname");
	foreach(e_piece in var_9224b839)
	{
		e_piece.old_origin = e_piece.origin;
		var_5d789cd = (e_piece.origin[0], e_piece.origin[1], var_169a71c6.origin[2]);
		e_piece moveto(var_5d789cd, 1.5);
		e_piece playsound("evt_postint_door_open");
	}
}

/*
	Name: function_e4a01869
	Namespace: namespace_e55eaf53
	Checksum: 0xE5C0C3D5
	Offset: 0x13E8
	Size: 0x179
	Parameters: 1
	Flags: None
*/
function function_e4a01869(a_ents)
{
	var_9224b839 = GetEntArray("interrogation_door", "targetname");
	var_169a71c6 = struct::get("armory_door_down", "targetname");
	var_80f9be56 = GetEnt("armory_door_collision", "targetname");
	var_80f9be56 notsolid();
	foreach(e_piece in var_9224b839)
	{
		if(isdefined(e_piece.old_origin))
		{
			e_piece moveto(e_piece.old_origin, 1.5);
			e_piece playsound("evt_postint_door_open");
		}
	}
}

/*
	Name: function_b760b954
	Namespace: namespace_e55eaf53
	Checksum: 0x306550A3
	Offset: 0x1570
	Size: 0x133
	Parameters: 0
	Flags: None
*/
function function_b760b954()
{
	var_fc044dad = struct::get("interview_start_obj", "targetname");
	var_d30cdb6 = spawn("trigger_radius_use", var_fc044dad.origin + (-15, 0, 20), 0, 64, 64);
	var_d30cdb6 TriggerIgnoreTeam();
	var_d30cdb6 SetVisibleToAll();
	var_d30cdb6 UseTriggerRequireLookAt();
	var_d30cdb6 SetTeamForTrigger("none");
	objectives::complete("cp_level_ramses_determine_what_salim_knows");
	util::function_14518e76(var_d30cdb6, &"cp_level_ramses_start_interview", &"CP_MI_CAIRO_RAMSES_START_INTERVIEW", &function_4f753dd2);
}

/*
	Name: function_4f753dd2
	Namespace: namespace_e55eaf53
	Checksum: 0x2FCD504B
	Offset: 0x16B0
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function function_4f753dd2(e_player)
{
	level.var_c8b5ad07 = e_player;
	level flag::set("dr_nasser_interview_started");
	objectives::complete("cp_level_ramses_start_interview");
	self gameobjects::destroy_object(1);
}

/*
	Name: function_7648e769
	Namespace: namespace_e55eaf53
	Checksum: 0xBF0FC942
	Offset: 0x1720
	Size: 0xFB
	Parameters: 0
	Flags: None
*/
function function_7648e769()
{
	s_exit = struct::get("interview_exit_obj", "targetname");
	t_exit = spawn("trigger_radius_use", s_exit.origin, 0, 100, 64);
	t_exit TriggerIgnoreTeam();
	t_exit SetVisibleToAll();
	t_exit SetTeamForTrigger("none");
	util::function_14518e76(t_exit, &"cp_level_ramses_exit_interview", &"CP_MI_CAIRO_RAMSES_EXIT_INTERVIEW", &function_c4bcf67b);
}

/*
	Name: function_c4bcf67b
	Namespace: namespace_e55eaf53
	Checksum: 0x99045231
	Offset: 0x1828
	Size: 0x7B
	Parameters: 1
	Flags: None
*/
function function_c4bcf67b(e_player)
{
	level.var_be0fc6c8 = e_player;
	level flag::set("raps_door_used");
	objectives::complete("cp_level_ramses_exit_interview");
	objectives::set("cp_level_ramses_defend_station");
	self gameobjects::destroy_object(1);
}

/*
	Name: function_c99967dc
	Namespace: namespace_e55eaf53
	Checksum: 0xDB9FA396
	Offset: 0x18B0
	Size: 0x133
	Parameters: 1
	Flags: None
*/
function function_c99967dc(var_2f9491f0)
{
	if(!isdefined(var_2f9491f0))
	{
		var_2f9491f0 = 0;
	}
	var_f5b75111 = GetEnt("nasser_interview_screen_before", "targetname");
	var_9f1f82be = GetEnt("nasser_interview_screen_after", "targetname");
	if(var_2f9491f0 == 0)
	{
		var_f5b75111 Hide();
		var_9f1f82be Hide();
	}
	else if(var_2f9491f0 == 1)
	{
		var_f5b75111 show();
		var_9f1f82be Hide();
	}
	else if(var_2f9491f0 == 2)
	{
		var_f5b75111 Hide();
		var_9f1f82be Hide();
	}
}

/*
	Name: function_e9053432
	Namespace: namespace_e55eaf53
	Checksum: 0xF882D9B
	Offset: 0x19F0
	Size: 0x291
	Parameters: 0
	Flags: None
*/
function function_e9053432()
{
	var_89a5068f = [];
	if(!isdefined(var_89a5068f))
	{
		var_89a5068f = [];
	}
	else if(!IsArray(var_89a5068f))
	{
		var_89a5068f = Array(var_89a5068f);
	}
	var_89a5068f[var_89a5068f.size] = "cin_ram_02_04_walk_1st_introduce_01";
	if(!isdefined(var_89a5068f))
	{
		var_89a5068f = [];
	}
	else if(!IsArray(var_89a5068f))
	{
		var_89a5068f = Array(var_89a5068f);
	}
	var_89a5068f[var_89a5068f.size] = "cin_ram_02_04_walk_1st_introduce_02";
	if(!isdefined(var_89a5068f))
	{
		var_89a5068f = [];
	}
	else if(!IsArray(var_89a5068f))
	{
		var_89a5068f = Array(var_89a5068f);
	}
	var_89a5068f[var_89a5068f.size] = "cin_ram_02_04_walk_1st_introduce_03";
	if(!isdefined(var_89a5068f))
	{
		var_89a5068f = [];
	}
	else if(!IsArray(var_89a5068f))
	{
		var_89a5068f = Array(var_89a5068f);
	}
	var_89a5068f[var_89a5068f.size] = "cin_ram_02_04_walk_1st_introduce_04";
	if(!isdefined(var_89a5068f))
	{
		var_89a5068f = [];
	}
	else if(!IsArray(var_89a5068f))
	{
		var_89a5068f = Array(var_89a5068f);
	}
	var_89a5068f[var_89a5068f.size] = "cin_ram_02_04_interview_part01_static_props";
	foreach(str_anim in var_89a5068f)
	{
		if(scene::is_active(str_anim))
		{
			scene::stop(str_anim);
		}
	}
}

