#using scripts\codescripts\struct;
#using scripts\cp\_util;
#using scripts\shared\music_shared;
#using scripts\shared\util_shared;

#namespace namespace_7685657b;

/*
	Name: main
	Namespace: namespace_7685657b
	Checksum: 0x7D8F9123
	Offset: 0x310
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function main()
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
	var_2936d99 = GetEnt("amb_garbled_screen", "targetname");
	if(isdefined(var_2936d99))
	{
		var_2936d99 PlayLoopSound("amb_garbled_voice");
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
	sound_org = GetEnt("amb_offices", "targetname");
	if(isdefined(sound_org))
	{
		sound_org PlayLoopSound("amb_offices");
	}
	level waittill("hash_400d768d");
	level thread namespace_21b2c1f2::function_973b77f9();
	if(isdefined(sound_org))
	{
		sound_org StopLoopSound();
		playsoundatposition("amb_power_down", sound_org.origin);
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
	var_30031844 = GetEntArray("amb_office_power_on", "targetname");
	for(i = 0; i < var_30031844.size; i++)
	{
		var_30031844[i] thread function_55f749fc();
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
	self PlayLoopSound(self.script_sound);
	level waittill("hash_400d768d");
	self StopLoopSound();
	wait(RandomFloatRange(0.2, 3.1));
	self playsound("amb_spark_generic");
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
	level endon("breech");
	level endon("game_ended");
	level waittill("siren");
	while(1)
	{
		wait(2);
		playsoundatposition("amb_troop_alarm", (3529, 427, -334));
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
	level endon("breech");
	level endon("game_ended");
	level waittill("hash_5ea48ae9");
	while(1)
	{
		wait(1);
		playsoundatposition("amb_troop_alarm", (5945, -2320, -119));
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
		playsoundatposition("amb_phone_ring", (-1760, -1624, 384));
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
	music::setmusicstate("none");
}

/*
	Name: play_intro_igc
	Namespace: namespace_21b2c1f2
	Checksum: 0x5B48BA16
	Offset: 0x760
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function play_intro_igc()
{
	music::setmusicstate("intro_igc");
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
	music::setmusicstate("outro_igc");
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
	music::setmusicstate("nrc_knocks");
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
	music::setmusicstate("door_breach");
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
	music::setmusicstate("scanning_for_minister");
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
	music::setmusicstate("battle_1");
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
	music::setmusicstate("battle_1");
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
	music::setmusicstate("tension_loop");
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
	music::setmusicstate("minister_rescued");
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
	music::setmusicstate("khalil_rescue");
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
	music::setmusicstate("battle_2_intro_loop");
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
	music::setmusicstate("battle_2");
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
	music::setmusicstate("gather_loop");
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
	music::setmusicstate("none");
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
	music::setmusicstate("drop_your_weapons");
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
function function_43ead72c(a_ents)
{
	wait(10);
	music::setmusicstate("taylor_entrance");
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
	music::setmusicstate("battle_3");
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
	music::setmusicstate("hall_stinger");
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
	music::setmusicstate("hall_heroic_run");
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
	music::setmusicstate("battle_4");
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
	music::setmusicstate("dark_pad");
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
	music::setmusicstate("office_battle");
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
	music::setmusicstate("post_office_drone");
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
	music::setmusicstate("vtol_approach");
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
	music::setmusicstate("taylor_is_a_hero");
	util::clientNotify("saw");
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
	music::setmusicstate("robot_entrance");
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
	music::setmusicstate("post_robot_horde");
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
	music::setmusicstate("dark_loop_pre_apc");
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
	music::setmusicstate("apc_rail");
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
	music::setmusicstate("crash");
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
	music::setmusicstate("apc_rail");
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
	music::setmusicstate("battle_5");
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
	music::setmusicstate("skycrane");
}

