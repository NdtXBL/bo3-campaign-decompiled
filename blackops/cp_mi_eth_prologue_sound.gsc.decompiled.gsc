#using scripts\codescripts\struct;
#using scripts\cp\_util;
#using scripts\shared\music_shared;
#using scripts\shared\util_shared;

#namespace namespace_7685657b;

/*
	Name: function_d290ebfa
	Namespace: namespace_7685657b
	Checksum: 0x7D8F9123
	Offset: 0x310
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	level thread function_b3c510e0();
	level thread function_96d9cac5();
	level thread function_8066773b();
	level thread function_a4815b6c();
	level thread function_44ee5cb7();
	level thread function_a4312bfe();
	level thread namespace_21b2c1f2::function_7a818f3c();
}

/*
	Name: function_b3c510e0
	Namespace: namespace_7685657b
	Checksum: 0x431F3D21
	Offset: 0x3C8
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_b3c510e0()
{
	var_2936d99 = function_6ada35ba("amb_garbled_screen", "targetname");
	if(isdefined(var_2936d99))
	{
		var_2936d99 function_c2931a36("amb_garbled_voice");
	}
}

/*
	Name: function_96d9cac5
	Namespace: namespace_7685657b
	Checksum: 0x7B3B22D0
	Offset: 0x428
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_96d9cac5()
{
	var_a66f2065 = function_6ada35ba("amb_offices", "targetname");
	if(isdefined(var_a66f2065))
	{
		var_a66f2065 function_c2931a36("amb_offices");
	}
	level waittill("hash_400d768d");
	level thread namespace_21b2c1f2::function_973b77f9();
	if(isdefined(var_a66f2065))
	{
		var_a66f2065 function_eaa69754();
		function_37cbcf1a("amb_power_down", var_a66f2065.var_722885f3);
	}
}

/*
	Name: function_8066773b
	Namespace: namespace_7685657b
	Checksum: 0x231B564A
	Offset: 0x4F0
	Size: 0x75
	Parameters: 0
	Flags: None
*/
function function_8066773b()
{
	var_30031844 = function_99201f25("amb_office_power_on", "targetname");
	for(var_c957f6b6 = 0; var_c957f6b6 < var_30031844.size; var_c957f6b6++)
	{
		var_30031844[var_c957f6b6] thread function_55f749fc();
	}
}

/*
	Name: function_55f749fc
	Namespace: namespace_7685657b
	Checksum: 0x3B7FACF
	Offset: 0x570
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_55f749fc()
{
	self function_c2931a36(self.var_d47f13c);
	level waittill("hash_400d768d");
	self function_eaa69754();
	wait(function_72a94f05(0.2, 3.1));
	self function_921a1574("amb_spark_generic");
}

/*
	Name: function_a4815b6c
	Namespace: namespace_7685657b
	Checksum: 0x40E4FE5A
	Offset: 0x600
	Size: 0x5F
	Parameters: 0
	Flags: None
*/
function function_a4815b6c()
{
	level endon("hash_8e1e9ee");
	level endon("hash_c8ab51de");
	level waittill("hash_62797210");
	while(1)
	{
		wait(2);
		function_37cbcf1a("amb_troop_alarm", (3529, 427, -334));
	}
}

/*
	Name: function_44ee5cb7
	Namespace: namespace_7685657b
	Checksum: 0xEDDAF010
	Offset: 0x668
	Size: 0x5F
	Parameters: 0
	Flags: None
*/
function function_44ee5cb7()
{
	level endon("hash_8e1e9ee");
	level endon("hash_c8ab51de");
	level waittill("hash_5ea48ae9");
	while(1)
	{
		wait(1);
		function_37cbcf1a("amb_troop_alarm", (5945, -2320, -119));
	}
}

/*
	Name: function_a4312bfe
	Namespace: namespace_7685657b
	Checksum: 0x24E3E374
	Offset: 0x6D0
	Size: 0x5D
	Parameters: 0
	Flags: None
*/
function function_a4312bfe()
{
	level endon("hash_f8e975b8");
	level waittill("hash_fc089399");
	while(1)
	{
		wait(1);
		function_37cbcf1a("amb_phone_ring", (-1760, -1624, 384));
		wait(2);
	}
}

#namespace namespace_21b2c1f2;

/*
	Name: function_973b77f9
	Namespace: namespace_21b2c1f2
	Checksum: 0x7A8EFCEE
	Offset: 0x738
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_973b77f9()
{
	namespace_ccb8d056::function_c1cdedfb("none");
}

/*
	Name: function_5712e4e2
	Namespace: namespace_21b2c1f2
	Checksum: 0x5B48BA16
	Offset: 0x760
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_5712e4e2()
{
	namespace_ccb8d056::function_c1cdedfb("intro_igc");
}

/*
	Name: function_2b0842cd
	Namespace: namespace_21b2c1f2
	Checksum: 0x97E11DE2
	Offset: 0x788
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_2b0842cd()
{
	namespace_ccb8d056::function_c1cdedfb("outro_igc");
}

/*
	Name: function_e245d17f
	Namespace: namespace_21b2c1f2
	Checksum: 0xCFF039FA
	Offset: 0x7B0
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_e245d17f()
{
	namespace_ccb8d056::function_c1cdedfb("nrc_knocks");
}

/*
	Name: function_fd00a4f2
	Namespace: namespace_21b2c1f2
	Checksum: 0xAF16D98B
	Offset: 0x7D8
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_fd00a4f2()
{
	namespace_ccb8d056::function_c1cdedfb("door_breach");
}

/*
	Name: function_e847067
	Namespace: namespace_21b2c1f2
	Checksum: 0x43338B69
	Offset: 0x800
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_e847067()
{
	namespace_ccb8d056::function_c1cdedfb("scanning_for_minister");
}

/*
	Name: function_fa2e45b8
	Namespace: namespace_21b2c1f2
	Checksum: 0xA1956EFF
	Offset: 0x828
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_fa2e45b8()
{
	wait(16);
	namespace_ccb8d056::function_c1cdedfb("battle_1");
}

/*
	Name: function_baefe66d
	Namespace: namespace_21b2c1f2
	Checksum: 0x72B6E03E
	Offset: 0x858
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_baefe66d()
{
	namespace_ccb8d056::function_c1cdedfb("battle_1");
}

/*
	Name: function_d4c52995
	Namespace: namespace_21b2c1f2
	Checksum: 0x1CEBCDF
	Offset: 0x880
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_d4c52995()
{
	namespace_ccb8d056::function_c1cdedfb("tension_loop");
}

/*
	Name: function_2f85277b
	Namespace: namespace_21b2c1f2
	Checksum: 0xA41F761
	Offset: 0x8A8
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_2f85277b()
{
	wait(1.5);
	namespace_ccb8d056::function_c1cdedfb("minister_rescued");
}

/*
	Name: function_fb4a2ce1
	Namespace: namespace_21b2c1f2
	Checksum: 0x620F5A1D
	Offset: 0x8D8
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_fb4a2ce1()
{
	namespace_ccb8d056::function_c1cdedfb("khalil_rescue");
}

/*
	Name: function_1c0460dd
	Namespace: namespace_21b2c1f2
	Checksum: 0x6DA5B558
	Offset: 0x900
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_1c0460dd()
{
	namespace_ccb8d056::function_c1cdedfb("battle_2_intro_loop");
}

/*
	Name: function_6c35b4f3
	Namespace: namespace_21b2c1f2
	Checksum: 0x9C00E8FB
	Offset: 0x928
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_6c35b4f3()
{
	namespace_ccb8d056::function_c1cdedfb("battle_2");
}

/*
	Name: function_49fef8f4
	Namespace: namespace_21b2c1f2
	Checksum: 0xBD49E2C9
	Offset: 0x950
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_49fef8f4()
{
	namespace_ccb8d056::function_c1cdedfb("gather_loop");
}

/*
	Name: function_9f50ebc2
	Namespace: namespace_21b2c1f2
	Checksum: 0xBB226428
	Offset: 0x978
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_9f50ebc2()
{
	wait(3);
	namespace_ccb8d056::function_c1cdedfb("none");
}

/*
	Name: function_c4c71c7
	Namespace: namespace_21b2c1f2
	Checksum: 0xC43ECD20
	Offset: 0x9A8
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_c4c71c7()
{
	wait(3);
	namespace_ccb8d056::function_c1cdedfb("drop_your_weapons");
}

/*
	Name: function_43ead72c
	Namespace: namespace_21b2c1f2
	Checksum: 0x89AFB627
	Offset: 0x9D8
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_43ead72c(var_c77d2837)
{
	wait(10);
	namespace_ccb8d056::function_c1cdedfb("taylor_entrance");
}

/*
	Name: function_46333a8a
	Namespace: namespace_21b2c1f2
	Checksum: 0x9AD2347
	Offset: 0xA10
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_46333a8a()
{
	wait(3);
	namespace_ccb8d056::function_c1cdedfb("battle_3");
}

/*
	Name: function_37906040
	Namespace: namespace_21b2c1f2
	Checksum: 0x4A6CAB2
	Offset: 0xA40
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_37906040()
{
	namespace_ccb8d056::function_c1cdedfb("hall_stinger");
}

/*
	Name: function_7a818f3c
	Namespace: namespace_21b2c1f2
	Checksum: 0xB701C906
	Offset: 0xA68
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_7a818f3c()
{
	level waittill("hash_64976832");
	namespace_ccb8d056::function_c1cdedfb("hall_heroic_run");
}

/*
	Name: function_b83aa9c5
	Namespace: namespace_21b2c1f2
	Checksum: 0xFB7005B0
	Offset: 0xAA0
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_b83aa9c5()
{
	wait(6);
	namespace_ccb8d056::function_c1cdedfb("battle_4");
}

/*
	Name: function_3c37ec50
	Namespace: namespace_21b2c1f2
	Checksum: 0xE379A6EA
	Offset: 0xAD0
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_3c37ec50()
{
	namespace_ccb8d056::function_c1cdedfb("dark_pad");
}

/*
	Name: function_a0f24f9b
	Namespace: namespace_21b2c1f2
	Checksum: 0xFAEA072D
	Offset: 0xAF8
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_a0f24f9b()
{
	namespace_ccb8d056::function_c1cdedfb("office_battle");
}

/*
	Name: function_2a66b344
	Namespace: namespace_21b2c1f2
	Checksum: 0x4D48B479
	Offset: 0xB20
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_2a66b344()
{
	namespace_ccb8d056::function_c1cdedfb("post_office_drone");
}

/*
	Name: function_63ffe714
	Namespace: namespace_21b2c1f2
	Checksum: 0xDC13404
	Offset: 0xB48
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_63ffe714()
{
	namespace_ccb8d056::function_c1cdedfb("vtol_approach");
}

/*
	Name: function_f573bcb9
	Namespace: namespace_21b2c1f2
	Checksum: 0x878CEB63
	Offset: 0xB70
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_f573bcb9()
{
	namespace_ccb8d056::function_c1cdedfb("taylor_is_a_hero");
	namespace_82b91a51::function_ef3f75eb("saw");
}

/*
	Name: function_448421b7
	Namespace: namespace_21b2c1f2
	Checksum: 0xFA6A4B08
	Offset: 0xBB0
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_448421b7()
{
	namespace_ccb8d056::function_c1cdedfb("robot_entrance");
}

/*
	Name: function_fb0b7bb6
	Namespace: namespace_21b2c1f2
	Checksum: 0x67F28591
	Offset: 0xBD8
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_fb0b7bb6()
{
	namespace_ccb8d056::function_c1cdedfb("post_robot_horde");
}

/*
	Name: function_37a511a
	Namespace: namespace_21b2c1f2
	Checksum: 0xC05FB016
	Offset: 0xC00
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_37a511a()
{
	namespace_ccb8d056::function_c1cdedfb("dark_loop_pre_apc");
}

/*
	Name: function_da98f0c7
	Namespace: namespace_21b2c1f2
	Checksum: 0x831D7D3C
	Offset: 0xC28
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_da98f0c7()
{
	namespace_ccb8d056::function_c1cdedfb("apc_rail");
}

/*
	Name: function_27bc11a3
	Namespace: namespace_21b2c1f2
	Checksum: 0x4FA4E787
	Offset: 0xC50
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_27bc11a3()
{
	namespace_ccb8d056::function_c1cdedfb("crash");
}

/*
	Name: function_8feece84
	Namespace: namespace_21b2c1f2
	Checksum: 0xFD7DF0E9
	Offset: 0xC78
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_8feece84()
{
	namespace_ccb8d056::function_c1cdedfb("apc_rail");
}

/*
	Name: function_92382f5c
	Namespace: namespace_21b2c1f2
	Checksum: 0xA74DA0E3
	Offset: 0xCA0
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_92382f5c()
{
	wait(3);
	namespace_ccb8d056::function_c1cdedfb("battle_5");
}

/*
	Name: function_fcb67450
	Namespace: namespace_21b2c1f2
	Checksum: 0x1D0C5408
	Offset: 0xCD0
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_fcb67450()
{
	namespace_ccb8d056::function_c1cdedfb("skycrane");
}

