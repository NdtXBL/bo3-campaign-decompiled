#using scripts\codescripts\struct;
#using scripts\shared\audio_shared;

#namespace namespace_b16ee55e;

/*
	Name: function_d290ebfa
	Namespace: namespace_b16ee55e
	Checksum: 0x81D01CB3
	Offset: 0x1A8
	Size: 0x153
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	level thread function_e8b9718f();
	level thread function_8e749446("igcds1", "cp_ramses_demostreet_1");
	level thread function_8e749446("igcds2", "cp_ramses_demostreet_2");
	level thread function_8e749446("igcds3", "cp_ramses_demostreet_3", "igc");
	level thread function_8e749446("igcds4", "default", "normal");
	level thread function_50ce4e74("outrofoley", "outroduck");
	level thread function_a615421();
	level thread function_81ca5345();
	level thread function_6a0726e7();
	level thread function_671db01b();
}

/*
	Name: function_e8b9718f
	Namespace: namespace_b16ee55e
	Checksum: 0xB70B7838
	Offset: 0x308
	Size: 0x11
	Parameters: 0
	Flags: None
*/
function function_e8b9718f()
{
	level notify("hash_afeba490");
}

/*
	Name: function_8e749446
	Namespace: namespace_b16ee55e
	Checksum: 0xDABFCF58
	Offset: 0x328
	Size: 0x63
	Parameters: 3
	Flags: None
*/
function function_8e749446(var_9b32d4cc, var_d3a4407, var_e737c99e)
{
	level waittill(var_9b32d4cc);
	namespace_4fe3eef1::function_36bbd2b2(var_d3a4407);
	if(isdefined(var_e737c99e))
	{
		function_23e91425("foley", var_e737c99e);
	}
}

/*
	Name: function_50ce4e74
	Namespace: namespace_b16ee55e
	Checksum: 0x87AE2966
	Offset: 0x398
	Size: 0x5B
	Parameters: 2
	Flags: None
*/
function function_50ce4e74(var_9b32d4cc, var_d3a4407)
{
	level waittill(var_9b32d4cc);
	function_23e91425("foley", "normal");
	level waittill(var_d3a4407);
	namespace_4fe3eef1::function_36bbd2b2("cp_ramses_outro");
}

/*
	Name: function_a615421
	Namespace: namespace_b16ee55e
	Checksum: 0x6D0C6C7A
	Offset: 0x400
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_a615421()
{
	level waittill("hash_559d9463");
	namespace_4fe3eef1::function_36bbd2b2("cp_ramses_pre_vtol");
	level waittill("hash_81cd2f5e");
	namespace_4fe3eef1::function_36bbd2b2("cp_ramses_plaza_battle");
}

/*
	Name: function_81ca5345
	Namespace: namespace_b16ee55e
	Checksum: 0x8F543522
	Offset: 0x460
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_81ca5345()
{
	namespace_4fe3eef1::function_11908f52("amb_vtol_fire_loop", (8101, -16182, 322));
}

/*
	Name: function_6a0726e7
	Namespace: namespace_b16ee55e
	Checksum: 0xD448991E
	Offset: 0x498
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_6a0726e7()
{
	level waittill("hash_24819a18");
	namespace_4fe3eef1::function_36bbd2b2("cp_ramses_vtol_walk");
}

/*
	Name: function_671db01b
	Namespace: namespace_b16ee55e
	Checksum: 0xA6ABCFC0
	Offset: 0x4D0
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_671db01b()
{
	level waittill("hash_81cd2f5e");
	wait(0.5);
	namespace_4fe3eef1::function_36bbd2b2("cp_ramses_plaza_battle");
}

