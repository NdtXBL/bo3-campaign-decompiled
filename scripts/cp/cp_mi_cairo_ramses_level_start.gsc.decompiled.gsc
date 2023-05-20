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

#namespace namespace_50196384;

/*
	Name: function_d290ebfa
	Namespace: namespace_50196384
	Checksum: 0xEDFAA306
	Offset: 0x650
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	namespace_71e9cb84::function_74d6b22f("hide_station_miscmodels", 1);
	namespace_71e9cb84::function_74d6b22f("turn_on_rotating_fxanim_fans", 1);
	namespace_71e9cb84::function_74d6b22f("start_fog_banks", 1);
	namespace_80983c42::function_80983c42("fx_exploder_sparks_off");
	level function_35e75862();
	level namespace_1d795d47::function_be8adfb8("level_start");
}

/*
	Name: function_e29f0dd6
	Namespace: namespace_50196384
	Checksum: 0xC5BBC2CF
	Offset: 0x710
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function function_e29f0dd6(var_b04bc952)
{
	level.var_2fd26037 = namespace_82b91a51::function_740f8516("hendricks");
	level.var_7a9855f3 = namespace_82b91a51::function_740f8516("rachel");
	namespace_1d795d47::function_3096a6fd(var_b04bc952);
}

/*
	Name: function_e9d1564a
	Namespace: namespace_50196384
	Checksum: 0x1053F86D
	Offset: 0x780
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_e9d1564a()
{
	self endon("hash_128f8789");
	self namespace_82b91a51::function_16c71b8(1);
	self thread function_51740d9d();
}

/*
	Name: function_51740d9d
	Namespace: namespace_50196384
	Checksum: 0x39443A4A
	Offset: 0x7C8
	Size: 0x20B
	Parameters: 0
	Flags: None
*/
function function_51740d9d()
{
	self endon("hash_643a7daf");
	self endon("hash_128f8789");
	var_d30b00d2 = function_6ada35ba("trig_subway_area_mid", "targetname");
	while(!isdefined(level.var_2fd26037) || !isdefined(level.var_7a9855f3))
	{
		wait(0.15);
	}
	var_28be2d2a = function_84970cc4(level.var_2fd26037);
	self thread namespace_391e4301::function_24b86d60(var_28be2d2a, "kill_player_walkspeed_adjustment", 128, 256, 0.3, 0.8);
	do
	{
		wait(0.25);
	}
	while(!(!level.var_2fd26037 function_32fa5072(var_d30b00d2) && !self function_32fa5072(var_d30b00d2)));
	self notify("hash_638e4884", 0);
	self thread namespace_391e4301::function_24b86d60(var_28be2d2a, "kill_player_walkspeed_adjustment", 192, 512, 0.2, 0.6);
	do
	{
		wait(0.25);
	}
	while(!(!isdefined(level.var_9db406db) || !level namespace_ad23e503::function_7922262b("station_walk_past_stairs")));
	self notify("hash_638e4884", 0);
	var_28be2d2a = function_84970cc4(level.var_9db406db, level.var_2fd26037, level.var_7a9855f3);
	self thread namespace_391e4301::function_24b86d60(var_28be2d2a, "kill_player_walkspeed_adjustment", 192, 512, 0.3, 0.8);
}

/*
	Name: function_8ae96a69
	Namespace: namespace_50196384
	Checksum: 0x1CFDD3B0
	Offset: 0x9E0
	Size: 0x49
	Parameters: 0
	Flags: None
*/
function function_8ae96a69()
{
	self endon("hash_128f8789");
	self function_5a7dd25d(1);
	self namespace_82b91a51::function_16c71b8(0);
	self notify("hash_638e4884");
}

/*
	Name: function_35e75862
	Namespace: namespace_50196384
	Checksum: 0x5DE001D8
	Offset: 0xA38
	Size: 0x2B3
	Parameters: 0
	Flags: None
*/
function function_35e75862()
{
	level namespace_cc27597::function_c35e6aab("cin_ram_01_01_enterstation_1st_ride");
	function_50fda83a();
	namespace_cc27597::function_8f9f34e0("cin_ram_01_01_enterstation_1st_ride", &function_859915aa, "play");
	namespace_cc27597::function_8f9f34e0("cin_ram_01_01_enterstation_1st_ride", &function_87629907, "play");
	namespace_cc27597::function_8f9f34e0("cin_ram_01_01_enterstation_1st_ride", &namespace_391e4301::function_3bc57aa8, "done");
	namespace_391e4301::function_ac2b4535("cin_ram_01_01_enterstation_1st_ride", "enterstation_1st_ride_teleport");
	namespace_d7916d65::function_c32ba481();
	namespace_82b91a51::function_46d3a558(&"CP_MI_CAIRO_RAMSES_INTRO_LINE_1_FULL", "", &"CP_MI_CAIRO_RAMSES_INTRO_LINE_2_FULL", &"CP_MI_CAIRO_RAMSES_INTRO_LINE_2_SHORT", &"CP_MI_CAIRO_RAMSES_INTRO_LINE_3_FULL", &"CP_MI_CAIRO_RAMSES_INTRO_LINE_3_SHORT", &"CP_MI_CAIRO_RAMSES_INTRO_LINE_4_FULL", &"CP_MI_CAIRO_RAMSES_INTRO_LINE_4_FULL");
	namespace_cc27597::function_8f9f34e0("cin_ram_01_01_enterstation_vign_loading", &function_ba280036, "play");
	level thread namespace_82b91a51::function_67520c6a(2, undefined, &namespace_cc27597::function_43718187, "cin_ram_01_01_enterstation_vign_loading");
	if(isdefined(level.var_af94f480))
	{
		level thread [[level.var_af94f480]]();
	}
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a thread function_b7bac40f();
		var_5dc5e20a thread function_679d413a();
	}
	level thread namespace_e4c0c552::function_4f8bda39();
	level namespace_cc27597::function_43718187("cin_ram_01_01_enterstation_1st_ride");
	level namespace_71e9cb84::function_74d6b22f("gameplay_started", 1);
}

/*
	Name: function_1f8e97be
	Namespace: namespace_50196384
	Checksum: 0xEA762AB5
	Offset: 0xCF8
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_1f8e97be()
{
	level namespace_82b91a51::function_7e61de2b(0);
	wait(1);
	level thread namespace_82b91a51::function_593c2af4(1);
}

/*
	Name: function_50fda83a
	Namespace: namespace_50196384
	Checksum: 0xF34634D3
	Offset: 0xD40
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_50fda83a()
{
	var_f7ae14aa = function_6ada35ba("traincar_primary", "targetname");
	var_f7ae14aa.var_ff1f6868 = "interview_dr_nasser";
	var_f7ae14aa function_2257eb5a("lgt_subway_car", "script_noteworthy");
	var_f7ae14aa function_2257eb5a("traincar_primary_cab");
}

/*
	Name: function_859915aa
	Namespace: namespace_50196384
	Checksum: 0xBBF4445E
	Offset: 0xDD8
	Size: 0x41
	Parameters: 1
	Flags: None
*/
function function_859915aa(var_c77d2837)
{
	var_f7ae14aa = var_c77d2837["traincar_primary"];
	var_f7ae14aa waittill("hash_f2040cc4");
	level notify("hash_30462a58");
}

/*
	Name: function_87629907
	Namespace: namespace_50196384
	Checksum: 0x857EF657
	Offset: 0xE28
	Size: 0x53
	Parameters: 1
	Flags: None
*/
function function_87629907(var_c77d2837)
{
	level waittill("hash_d73ff968");
	level.var_2fd26037 function_b97730be(0);
	function_d4f82627("clear", "cin_ram_01_01_enterstation_1st_ride");
}

/*
	Name: function_80df7cd
	Namespace: namespace_50196384
	Checksum: 0xA609A21F
	Offset: 0xE88
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_80df7cd(var_fcd89369)
{
	var_fcd89369 namespace_71e9cb84::function_74d6b22f("attach_cam_to_train", 1);
}

/*
	Name: function_b7bac40f
	Namespace: namespace_50196384
	Checksum: 0x264B2F8B
	Offset: 0xEC0
	Size: 0x47
	Parameters: 0
	Flags: None
*/
function function_b7bac40f()
{
	self endon("hash_643a7daf");
	level endon("hash_88bd4b7");
	while(1)
	{
		self function_e2af603e("tank_rumble");
		wait(1);
	}
}

/*
	Name: function_679d413a
	Namespace: namespace_50196384
	Checksum: 0x2E7AA1A8
	Offset: 0xF10
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_679d413a()
{
	self endon("hash_643a7daf");
	level waittill("hash_5ba360b8");
	self function_e2af603e("tank_fire");
}

/*
	Name: function_ba280036
	Namespace: namespace_50196384
	Checksum: 0x534C07B6
	Offset: 0xF58
	Size: 0xF9
	Parameters: 1
	Flags: None
*/
function function_ba280036(var_c77d2837)
{
	level waittill("hash_c466417");
	var_9224b839 = function_99201f25("elevator_door", "targetname");
	foreach(var_56ef6b49 in var_9224b839)
	{
		var_56ef6b49 function_8bdea13c(-108, 1.5);
		var_56ef6b49 function_921a1574("evt_postint_door_open");
	}
}

/*
	Name: function_6c8b50b0
	Namespace: namespace_50196384
	Checksum: 0xED6F33D2
	Offset: 0x1060
	Size: 0x91
	Parameters: 0
	Flags: None
*/
function function_6c8b50b0()
{
	foreach(var_6bfe1586 in level.var_2395e945)
	{
		var_6bfe1586 namespace_71e9cb84::function_e9c3870b("intro_reflection_extracam", 1);
	}
}

/*
	Name: function_d4fa36aa
	Namespace: namespace_50196384
	Checksum: 0xBD71D8C7
	Offset: 0x1100
	Size: 0x91
	Parameters: 0
	Flags: None
*/
function function_d4fa36aa()
{
	foreach(var_6bfe1586 in level.var_2395e945)
	{
		var_6bfe1586 namespace_71e9cb84::function_e9c3870b("intro_reflection_extracam", 0);
	}
}

/*
	Name: function_2257eb5a
	Namespace: namespace_50196384
	Checksum: 0x73C21EA9
	Offset: 0x11A0
	Size: 0xED
	Parameters: 2
	Flags: None
*/
function function_2257eb5a(var_cbb15570, var_5e953b6)
{
	if(!isdefined(var_5e953b6))
	{
		var_5e953b6 = "targetname";
	}
	var_643b9d1b = function_99201f25(var_cbb15570, var_5e953b6);
	foreach(var_4c9c8550 in var_643b9d1b)
	{
		var_4c9c8550 function_37f7858a(self);
		var_4c9c8550.var_ff1f6868 = "interview_dr_nasser";
	}
}

/*
	Name: function_ef108c0a
	Namespace: namespace_50196384
	Checksum: 0x742E52BE
	Offset: 0x1298
	Size: 0xE1
	Parameters: 0
	Flags: None
*/
function function_ef108c0a()
{
	foreach(var_6bfe1586 in level.var_2395e945)
	{
		var_6bfe1586 function_a30814d(self.var_b3cfd3f2.var_722885f3);
		var_6bfe1586 function_eda2be50(self.var_6ab6f4fd);
		var_6bfe1586 function_87b6cda1(self.var_b3cfd3f2, undefined, 0, 0, 0, 0, 0);
	}
}

