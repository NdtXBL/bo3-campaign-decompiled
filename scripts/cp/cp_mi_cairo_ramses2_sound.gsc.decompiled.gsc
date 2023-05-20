#using scripts\codescripts\struct;
#using scripts\cp\voice\voice_ramses;
#using scripts\cp\voice\voice_ramses2;
#using scripts\shared\flag_shared;
#using scripts\shared\music_shared;
#using scripts\shared\util_shared;

#namespace namespace_b16ee55e;

/*
	Name: function_d290ebfa
	Namespace: namespace_b16ee55e
	Checksum: 0x86D8F9F0
	Offset: 0x2E0
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	namespace_aa1e4213::function_e230521c();
	namespace_4d1dec6b::function_e230521c();
	level thread function_6a579aa5("sndOutroFoley", "outrofoley", "sndOutro", "outroduck");
	level thread namespace_a6a248fc::function_f20b84a9();
	level thread namespace_a6a248fc::function_9f04a172();
}

/*
	Name: function_6a579aa5
	Namespace: namespace_b16ee55e
	Checksum: 0xC1B1DF15
	Offset: 0x378
	Size: 0x63
	Parameters: 4
	Flags: None
*/
function function_6a579aa5(var_9b32d4cc, var_d3a4407, var_e737c99e, var_292b6591)
{
	level waittill(var_9b32d4cc);
	level namespace_82b91a51::function_ef3f75eb(var_d3a4407);
	level waittill(var_e737c99e);
	level namespace_82b91a51::function_ef3f75eb(var_292b6591);
}

#namespace namespace_a6a248fc;

/*
	Name: function_1e7ee1cd
	Namespace: namespace_a6a248fc
	Checksum: 0x8D8F267E
	Offset: 0x3E8
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_1e7ee1cd()
{
	namespace_ccb8d056::function_c1cdedfb("jeep_drive");
}

/*
	Name: function_37e13caa
	Namespace: namespace_a6a248fc
	Checksum: 0x8359FF58
	Offset: 0x410
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_37e13caa()
{
	namespace_ccb8d056::function_c1cdedfb("jeep_drive_short");
}

/*
	Name: function_9574e08d
	Namespace: namespace_a6a248fc
	Checksum: 0x6296FCE6
	Offset: 0x438
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_9574e08d()
{
	namespace_ccb8d056::function_c1cdedfb("spike_launch_arena");
}

/*
	Name: function_7b69c801
	Namespace: namespace_a6a248fc
	Checksum: 0x5E013D56
	Offset: 0x460
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_7b69c801()
{
	namespace_ccb8d056::function_c1cdedfb("retreat");
}

/*
	Name: function_f20b84a9
	Namespace: namespace_a6a248fc
	Checksum: 0xFEB5D7CA
	Offset: 0x488
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_f20b84a9()
{
	level waittill("hash_ca50f688");
	namespace_ccb8d056::function_c1cdedfb("demo_scene");
}

/*
	Name: function_9f04a172
	Namespace: namespace_a6a248fc
	Checksum: 0xE692BC29
	Offset: 0x4C0
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_9f04a172()
{
	level waittill("hash_e6e1d572");
	namespace_ccb8d056::function_c1cdedfb("post_demo_igc");
}

/*
	Name: function_1912af43
	Namespace: namespace_a6a248fc
	Checksum: 0xF9AFA6AF
	Offset: 0x4F8
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_1912af43()
{
	namespace_ccb8d056::function_c1cdedfb("dark_alley_ambient");
}

/*
	Name: function_767cbb3e
	Namespace: namespace_a6a248fc
	Checksum: 0x74FBAA02
	Offset: 0x520
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_767cbb3e()
{
	namespace_ccb8d056::function_c1cdedfb("dark_alley_battle");
}

/*
	Name: function_6b994041
	Namespace: namespace_a6a248fc
	Checksum: 0x6AD0C6E2
	Offset: 0x548
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_6b994041()
{
	wait(5);
	namespace_ccb8d056::function_c1cdedfb("crashed_vtol_checkpoint");
}

/*
	Name: function_bb3105cf
	Namespace: namespace_a6a248fc
	Checksum: 0xD532A55C
	Offset: 0x578
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_bb3105cf()
{
	wait(5);
	namespace_ccb8d056::function_c1cdedfb("crashed_vtol");
}

/*
	Name: function_63054139
	Namespace: namespace_a6a248fc
	Checksum: 0x4EB8C25E
	Offset: 0x5A8
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_63054139()
{
	namespace_ccb8d056::function_c1cdedfb("quad_tank_boss");
}

/*
	Name: function_ff483e3c
	Namespace: namespace_a6a248fc
	Checksum: 0xB2205AB4
	Offset: 0x5D0
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_ff483e3c()
{
	namespace_ccb8d056::function_c1cdedfb("outro");
}

/*
	Name: function_973b77f9
	Namespace: namespace_a6a248fc
	Checksum: 0xACF5C609
	Offset: 0x5F8
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_973b77f9()
{
	namespace_ccb8d056::function_c1cdedfb("none");
}

/*
	Name: function_19e0cb0e
	Namespace: namespace_a6a248fc
	Checksum: 0x567D47C5
	Offset: 0x620
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_19e0cb0e()
{
	namespace_ccb8d056::function_c1cdedfb("vtol_quad_stinger");
}

/*
	Name: function_bd60b52a
	Namespace: namespace_a6a248fc
	Checksum: 0x9A8102DE
	Offset: 0x648
	Size: 0xEF
	Parameters: 0
	Flags: None
*/
function function_bd60b52a()
{
	level endon("hash_44ba5526");
	while(1)
	{
		wait(function_dc99997a(2, 4));
		function_37cbcf1a("vox_egym0_action_reloading", (220, -20633, 477));
		wait(3);
		function_37cbcf1a("vox_egym1_action_reloading_response", (220, -20633, 477));
		wait(5);
		function_37cbcf1a("vox_egym1_action_blindfire", (220, -20633, 477));
		wait(4);
		function_37cbcf1a("vox_egym1_action_flanked", (220, -20633, 477));
	}
}

/*
	Name: function_98c9ec2a
	Namespace: namespace_a6a248fc
	Checksum: 0xA3B8A27B
	Offset: 0x740
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_98c9ec2a()
{
	if(!isdefined(level.var_4ca1964e))
	{
		level.var_4ca1964e = function_9b7fda5e("script_origin", (9264, -14929, 888));
	}
	wait(1);
	function_37cbcf1a("wpn_dead_fire_start_cin", level.var_4ca1964e.var_722885f3);
	wait(0.5);
	level.var_4ca1964e function_c2931a36("wpn_dead_fire_loop_cin");
	wait(2);
	level.var_4ca1964e function_eaa69754();
	wait(4);
	level.var_4ca1964e function_dc8c8404();
}

