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
	Name: function_d290ebfa
	Namespace: namespace_9472df26
	Checksum: 0xA2322CAC
	Offset: 0x618
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	/#
		function_2e4b8c78("Dev Block strings are not supported");
	#/
	namespace_71e9cb84::function_50f16166("world", "infection_sgen_server_debris", 1, 2, "int");
	namespace_71e9cb84::function_50f16166("world", "infection_sgen_xcam_models", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("actor", "infection_taylor_eye_shader", 1, 1, "int");
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
function function_2fcfe223(var_b04bc952, var_74cd64bc)
{
	/#
		function_2e4b8c78("Dev Block strings are not supported");
	#/
	namespace_d7916d65::function_73adcefc();
	level namespace_cc27597::function_8f9f34e0("cin_inf_05_taylorinfected_server_3rd_sh010", &function_29252437, "play");
	level namespace_cc27597::function_8f9f34e0("cin_inf_05_taylorinfected_server_3rd_sh050", &function_761c4a4f, "play");
	level namespace_cc27597::function_8f9f34e0("cin_inf_05_taylorinfected_server_3rd_sh060", &function_b7bf88e1, "play");
	level namespace_cc27597::function_8f9f34e0("cin_inf_05_taylorinfected_server_3rd_sh090", &function_bf2e0e2b, "play");
	level namespace_cc27597::function_8f9f34e0("cin_inf_05_taylorinfected_server_3rd_sh080", &function_c705ea04, "done");
	level namespace_cc27597::function_8f9f34e0("cin_inf_05_taylorinfected_server_3rd_sh090", &function_f1d98a99, "done");
	level thread namespace_cc27597::function_c35e6aab("cin_inf_05_taylorinfected_server_3rd_sh010");
	level namespace_82b91a51::function_d8eaed3d(5);
	level thread namespace_71e9cb84::function_74d6b22f("infection_sgen_server_debris", 1);
	level thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_infection_sgen_floor_drop_bundle");
	namespace_d7916d65::function_a2995f22();
	namespace_82b91a51::function_7e61de2b(0);
	level thread namespace_bed101ee::function_33f72a8a();
	namespace_82b91a51::function_67520c6a(0.25, undefined, &namespace_82b91a51::function_593c2af4, 1);
	if(isdefined(level.var_c388df1d))
	{
		level thread [[level.var_c388df1d]]();
	}
	level thread namespace_cc27597::function_43718187("cin_inf_05_taylorinfected_server_3rd_sh010");
	level waittill("hash_60a79028");
	namespace_82b91a51::function_7e61de2b(0.5, (0.32, 0.33, 0.32));
	level thread namespace_82b91a51::function_a0938376();
	namespace_80983c42::function_80983c42("sgen_server_room_fall");
	namespace_1d795d47::function_552e05fb(var_b04bc952);
	level thread namespace_cc27597::function_c35e6aab("cin_inf_06_02_bastogne_vign_intro");
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
function function_29252437(var_38fa6e84)
{
	level namespace_71e9cb84::function_74d6b22f("set_exposure_bank", 3);
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
function function_c705ea04(var_38fa6e84)
{
	level namespace_71e9cb84::function_74d6b22f("set_exposure_bank", 1);
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
function function_761c4a4f(var_38fa6e84)
{
	level waittill("hash_814b4ba1");
	var_e4ac5229 = var_38fa6e84["taylor"];
	if(isdefined(var_e4ac5229))
	{
		var_e4ac5229 namespace_71e9cb84::function_74d6b22f("infection_taylor_eye_shader", 1);
		var_e4ac5229 namespace_175490fb::function_f8669cbf(1);
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
function function_bf2e0e2b(var_38fa6e84)
{
	level waittill("hash_814b4ba1");
	var_34c69af9 = var_38fa6e84["sarah"];
	if(isdefined(var_34c69af9))
	{
		var_34c69af9 namespace_175490fb::function_f8669cbf(1);
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
function function_b7bf88e1(var_c77d2837)
{
	var_7d116593 = namespace_14b42b8a::function_7922262b("s_bastogne_lighting_hint", "targetname");
	namespace_36cbf523::function_7aca917c(var_7d116593.var_722885f3);
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
function function_f1d98a99(var_c77d2837)
{
	level thread namespace_e1dfe97e::function_e8608118();
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
function function_3ef23469(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	/#
		function_2e4b8c78("Dev Block strings are not supported");
	#/
	level thread namespace_71e9cb84::function_74d6b22f("infection_sgen_server_debris", 3);
	var_3edb0ecc = function_99201f25("bastogne_world_falls_away", "script_noteworthy");
	namespace_84970cc4::function_eaab05dc(var_3edb0ecc, &function_50ccee8d);
	var_ce40c475 = function_99201f25("world_falls_away_chasm", "targetname");
	namespace_84970cc4::function_eaab05dc(var_ce40c475, &function_50ccee8d);
	var_9653358 = function_6ada35ba("fallaway_115", "targetname");
	var_9653358 function_48f26766();
	var_9653358 = function_6ada35ba("fallaway_118", "targetname");
	var_9653358 function_48f26766();
	var_9653358 = function_6ada35ba("fallaway_119", "targetname");
	var_9653358 function_48f26766();
	var_9653358 = function_6ada35ba("fallaway_123", "targetname");
	var_9653358 function_48f26766();
	var_9653358 = function_6ada35ba("fallaway_134", "targetname");
	var_9653358 function_48f26766();
	var_9653358 = function_6ada35ba("fallaway_135", "targetname");
	var_9653358 function_48f26766();
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
	level thread namespace_71e9cb84::function_74d6b22f("infection_sgen_server_debris", 2);
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_infection_sgen_floor_drop_bundle");
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
	var_9e4285e9 = namespace_82b91a51::function_b9fd52a4("tag_origin", level.var_2395e945[0].var_722885f3, level.var_2395e945[0].var_6ab6f4fd);
	var_9e4285e9.var_170527fb = "server_fall_align";
	namespace_82b91a51::function_76f13293();
	level thread function_76a77098();
	namespace_82b91a51::function_67520c6a(0.25, undefined, &namespace_82b91a51::function_593c2af4, 1, "white");
	level thread namespace_cc27597::function_43718187("cin_inf_05_02_infection_1st_crumblefall");
	level waittill("hash_9eab0e5b");
	level waittill("hash_786e266e");
	level thread namespace_71e9cb84::function_74d6b22f("infection_sgen_xcam_models", 1);
	namespace_1d795d47::function_be8adfb8("sgen_server_room");
}

