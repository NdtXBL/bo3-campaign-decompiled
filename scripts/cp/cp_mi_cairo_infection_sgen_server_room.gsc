#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_cairo_infection_forest;
#using scripts\cp\cp_mi_cairo_infection_util;
#using scripts\cp\cp_mi_cairo_infection2_sound;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\player_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\vehicle_shared;

#namespace namespace_9472df26;

/*
	Name: main
	Namespace: namespace_9472df26
	Checksum: 0xA2322CAC
	Offset: 0x618
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function main()
{
	/#
		IPrintLnBold("Dev Block strings are not supported");
	#/
	clientfield::register("world", "infection_sgen_server_debris", 1, 2, "int");
	clientfield::register("world", "infection_sgen_xcam_models", 1, 1, "int");
	clientfield::register("actor", "infection_taylor_eye_shader", 1, 1, "int");
}

/*
	Name: function_2fcfe223
	Namespace: namespace_9472df26
	Checksum: 0x45706F8D
	Offset: 0x6D8
	Size: 0x343
	Parameters: 2
	Flags: None
*/
function function_2fcfe223(str_objective, var_74cd64bc)
{
	/#
		IPrintLnBold("Dev Block strings are not supported");
	#/
	load::function_73adcefc();
	level scene::add_scene_func("cin_inf_05_taylorinfected_server_3rd_sh010", &function_29252437, "play");
	level scene::add_scene_func("cin_inf_05_taylorinfected_server_3rd_sh050", &function_761c4a4f, "play");
	level scene::add_scene_func("cin_inf_05_taylorinfected_server_3rd_sh060", &function_b7bf88e1, "play");
	level scene::add_scene_func("cin_inf_05_taylorinfected_server_3rd_sh090", &function_bf2e0e2b, "play");
	level scene::add_scene_func("cin_inf_05_taylorinfected_server_3rd_sh080", &function_c705ea04, "done");
	level scene::add_scene_func("cin_inf_05_taylorinfected_server_3rd_sh090", &function_f1d98a99, "done");
	level thread scene::init("cin_inf_05_taylorinfected_server_3rd_sh010");
	level util::function_d8eaed3d(5);
	level thread clientfield::set("infection_sgen_server_debris", 1);
	level thread scene::init("p7_fxanim_cp_infection_sgen_floor_drop_bundle");
	load::function_a2995f22();
	util::screen_fade_out(0);
	level thread namespace_bed101ee::function_33f72a8a();
	util::delay(0.25, undefined, &util::screen_fade_in, 1);
	if(isdefined(level.BZM_INFECTIONDialogue6Callback))
	{
		level thread [[level.BZM_INFECTIONDialogue6Callback]]();
	}
	level thread scene::Play("cin_inf_05_taylorinfected_server_3rd_sh010");
	level waittill("hash_60a79028");
	util::screen_fade_out(0.5, (0.32, 0.33, 0.32));
	level thread util::clear_streamer_hint();
	exploder::exploder("sgen_server_room_fall");
	skipto::teleport_players(str_objective);
	level thread scene::init("cin_inf_06_02_bastogne_vign_intro");
	level function_6d20ff4e();
}

/*
	Name: function_29252437
	Namespace: namespace_9472df26
	Checksum: 0xB4382F6F
	Offset: 0xA28
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_29252437(a_ent)
{
	level clientfield::set("set_exposure_bank", 3);
}

/*
	Name: function_c705ea04
	Namespace: namespace_9472df26
	Checksum: 0x6D60B053
	Offset: 0xA60
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_c705ea04(a_ent)
{
	level clientfield::set("set_exposure_bank", 1);
}

/*
	Name: function_761c4a4f
	Namespace: namespace_9472df26
	Checksum: 0x7E004534
	Offset: 0xA98
	Size: 0x73
	Parameters: 1
	Flags: None
*/
function function_761c4a4f(a_ent)
{
	level waittill("hash_814b4ba1");
	var_e4ac5229 = a_ent["taylor"];
	if(isdefined(var_e4ac5229))
	{
		var_e4ac5229 clientfield::set("infection_taylor_eye_shader", 1);
		var_e4ac5229 cybercom::function_f8669cbf(1);
	}
}

/*
	Name: function_bf2e0e2b
	Namespace: namespace_9472df26
	Checksum: 0x1CB88809
	Offset: 0xB18
	Size: 0x53
	Parameters: 1
	Flags: None
*/
function function_bf2e0e2b(a_ent)
{
	level waittill("hash_814b4ba1");
	var_34c69af9 = a_ent["sarah"];
	if(isdefined(var_34c69af9))
	{
		var_34c69af9 cybercom::function_f8669cbf(1);
	}
}

/*
	Name: function_b7bf88e1
	Namespace: namespace_9472df26
	Checksum: 0xC87E6558
	Offset: 0xB78
	Size: 0x53
	Parameters: 1
	Flags: None
*/
function function_b7bf88e1(a_ents)
{
	var_7d116593 = struct::get("s_bastogne_lighting_hint", "targetname");
	namespace_36cbf523::function_7aca917c(var_7d116593.origin);
}

/*
	Name: function_f1d98a99
	Namespace: namespace_9472df26
	Checksum: 0x1CE191BA
	Offset: 0xBD8
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_f1d98a99(a_ents)
{
	level thread forest::function_e8608118();
}

/*
	Name: function_3ef23469
	Namespace: namespace_9472df26
	Checksum: 0x54EBF4F6
	Offset: 0xC08
	Size: 0x25B
	Parameters: 4
	Flags: None
*/
function function_3ef23469(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	/#
		IPrintLnBold("Dev Block strings are not supported");
	#/
	level thread clientfield::set("infection_sgen_server_debris", 3);
	var_3edb0ecc = GetEntArray("bastogne_world_falls_away", "script_noteworthy");
	Array::run_all(var_3edb0ecc, &Hide);
	var_ce40c475 = GetEntArray("world_falls_away_chasm", "targetname");
	Array::run_all(var_ce40c475, &Hide);
	var_9653358 = GetEnt("fallaway_115", "targetname");
	var_9653358 show();
	var_9653358 = GetEnt("fallaway_118", "targetname");
	var_9653358 show();
	var_9653358 = GetEnt("fallaway_119", "targetname");
	var_9653358 show();
	var_9653358 = GetEnt("fallaway_123", "targetname");
	var_9653358 show();
	var_9653358 = GetEnt("fallaway_134", "targetname");
	var_9653358 show();
	var_9653358 = GetEnt("fallaway_135", "targetname");
	var_9653358 show();
}

/*
	Name: function_76a77098
	Namespace: namespace_9472df26
	Checksum: 0x8214484A
	Offset: 0xE70
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_76a77098()
{
	level thread clientfield::set("infection_sgen_server_debris", 2);
	level thread scene::Play("p7_fxanim_cp_infection_sgen_floor_drop_bundle");
}

/*
	Name: function_6d20ff4e
	Namespace: namespace_9472df26
	Checksum: 0x659A481D
	Offset: 0xEC0
	Size: 0x133
	Parameters: 0
	Flags: None
*/
function function_6d20ff4e()
{
	var_9e4285e9 = util::spawn_model("tag_origin", level.players[0].origin, level.players[0].angles);
	var_9e4285e9.targetname = "server_fall_align";
	util::wait_network_frame();
	level thread function_76a77098();
	util::delay(0.25, undefined, &util::screen_fade_in, 1, "white");
	level thread scene::Play("cin_inf_05_02_infection_1st_crumblefall");
	level waittill("hash_9eab0e5b");
	level waittill("hash_786e266e");
	level thread clientfield::set("infection_sgen_xcam_models", 1);
	skipto::function_be8adfb8("sgen_server_room");
}

