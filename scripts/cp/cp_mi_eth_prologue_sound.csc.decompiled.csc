#using scripts\codescripts\struct;
#using scripts\shared\audio_shared;

#namespace namespace_7685657b;

/*
	Name: function_d290ebfa
	Namespace: namespace_7685657b
	Checksum: 0x28A3CB86
	Offset: 0x218
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	level thread function_aca4761();
	level thread function_669e0ca5();
	level thread function_6ce0e63();
	level thread function_35acdae6();
	level thread function_9806d032();
	level thread function_c943c5e5();
	level thread function_4b8b96fe();
	level thread function_7ec0e1ae();
	level thread function_eb4e50fb();
	level thread function_889a9ace();
}

/*
	Name: function_4b8b96fe
	Namespace: namespace_7685657b
	Checksum: 0xCBBBE1A0
	Offset: 0x318
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_4b8b96fe()
{
	level namespace_4fe3eef1::function_11908f52("amb_jail_scene_2", (5582, -2060, -218));
	level namespace_4fe3eef1::function_11908f52("amb_jail_scene_3", (5528, -1844, -209));
	level namespace_4fe3eef1::function_11908f52("amb_jail_scene_4", (6289, -1689, -163));
	level namespace_4fe3eef1::function_11908f52("amb_jail_scene_5", (5530, -1634, -265));
}

/*
	Name: function_aca4761
	Namespace: namespace_7685657b
	Checksum: 0x94CFB865
	Offset: 0x3C8
	Size: 0x113
	Parameters: 0
	Flags: None
*/
function function_aca4761()
{
	level namespace_4fe3eef1::function_11908f52("amb_firetruck_distant_alarm", (-1287, -1872, 535));
	level namespace_4fe3eef1::function_11908f52("evt_firehose", (581, -857, 130));
	level waittill("hash_cfcc0f30");
	level namespace_4fe3eef1::function_11908f52("amb_firetruck_close_alarm", (-169, -585, 161));
	level waittill("hash_da4c530f");
	level namespace_4fe3eef1::function_b2f15380("amb_firetruck_distant_alarm", (-1287, -1872, 535));
	level namespace_4fe3eef1::function_b2f15380("amb_firetruck_close_alarm", (-169, -585, 161));
	level namespace_4fe3eef1::function_b2f15380("evt_firehose", (-169, -585, 161));
}

/*
	Name: function_669e0ca5
	Namespace: namespace_7685657b
	Checksum: 0xDAF665E6
	Offset: 0x4E8
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_669e0ca5()
{
	level namespace_4fe3eef1::function_11908f52("vox_garbled_radio_a", (-840, -721, -13259));
	level namespace_4fe3eef1::function_11908f52("vox_garbled_radio_b", (-1003, -580, -13262));
}

/*
	Name: function_6ce0e63
	Namespace: namespace_7685657b
	Checksum: 0x2173CA22
	Offset: 0x548
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_6ce0e63()
{
	level namespace_4fe3eef1::function_11908f52("evt_halway_equipment", (3437, 597, -341));
}

/*
	Name: function_eddf6028
	Namespace: namespace_7685657b
	Checksum: 0x8C01DE15
	Offset: 0x580
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_eddf6028()
{
	level waittill("hash_6e2fd964");
	namespace_4fe3eef1::function_36bbd2b2("cp_prologue_exit_apc");
	level waittill("hash_36f74bd3");
	namespace_4fe3eef1::function_36bbd2b2("default");
}

/*
	Name: function_35acdae6
	Namespace: namespace_7685657b
	Checksum: 0x99EC1590
	Offset: 0x5E0
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_35acdae6()
{
}

/*
	Name: function_9806d032
	Namespace: namespace_7685657b
	Checksum: 0x6EA67287
	Offset: 0x5F0
	Size: 0xFB
	Parameters: 0
	Flags: None
*/
function function_9806d032()
{
	level waittill("hash_ef5b1f55");
	level endon("hash_73c9d58d");
	var_768ccc21 = (15816, -749, 454);
	var_9c8f468a = (15248, -749, 463);
	var_c291c0f3 = (15807, -1927, 478);
	var_74952a22 = 0;
	while(1)
	{
		level thread function_ab91e7b9(var_768ccc21);
		if(var_74952a22 > 5)
		{
			level thread function_ab91e7b9(var_9c8f468a);
		}
		if(var_74952a22 > 10)
		{
			level thread function_ab91e7b9(var_c291c0f3);
		}
		wait(1);
		var_74952a22++;
	}
}

/*
	Name: function_ab91e7b9
	Namespace: namespace_7685657b
	Checksum: 0x682AB48B
	Offset: 0x6F8
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_ab91e7b9(var_35940ed8)
{
	wait(function_72a94f05(0.25, 2));
	function_921a1574(0, "evt_garage_robot_hit", var_35940ed8);
}

/*
	Name: function_c943c5e5
	Namespace: namespace_7685657b
	Checksum: 0x9CB278CC
	Offset: 0x750
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_c943c5e5()
{
	level waittill("hash_cd190858");
	wait(5);
	level notify("hash_f8c8ddf6");
	namespace_4fe3eef1::function_11908f52("amb_base_distant_walla", (12187, -167, 1183));
	namespace_4fe3eef1::function_11908f52("amb_base_alert_outside", (14740, -1188, 751));
}

/*
	Name: function_7ec0e1ae
	Namespace: namespace_7685657b
	Checksum: 0x56A57403
	Offset: 0x7D0
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_7ec0e1ae()
{
	level waittill("hash_dade54fb");
	namespace_4fe3eef1::function_11908f52("amb_distant_soldier_walla", (8160, 756, 270));
	level waittill("hash_d1ef0d27");
	level waittill("hash_d1ef0d27");
	namespace_4fe3eef1::function_b2f15380("amb_distant_soldier_walla", (8160, 756, 270));
}

/*
	Name: function_eb4e50fb
	Namespace: namespace_7685657b
	Checksum: 0xA8CA2E
	Offset: 0x850
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_eb4e50fb()
{
	level waittill("hash_caebb0ab");
	namespace_4fe3eef1::function_11908f52("amb_distant_soldier_walla", (12604, 1857, 357));
	level waittill("hash_f8c8ddf6");
	namespace_4fe3eef1::function_b2f15380("amb_distant_soldier_walla", (12604, 1857, 357));
}

/*
	Name: function_889a9ace
	Namespace: namespace_7685657b
	Checksum: 0xDA0C9E29
	Offset: 0x8C0
	Size: 0x293
	Parameters: 0
	Flags: None
*/
function function_889a9ace()
{
	level waittill("hash_dccb7956");
	namespace_4fe3eef1::function_11908f52("amb_darkbattle_battery_beep", (13849, 2832, 226));
	namespace_4fe3eef1::function_11908f52("amb_darkbattle_battery_beep", (13521, 3259, 229));
	namespace_4fe3eef1::function_11908f52("amb_darkbattle_battery_beep", (13287, 3267, 226));
	namespace_4fe3eef1::function_11908f52("amb_darkbattle_battery_beep", (13584, 2694, 253));
	namespace_4fe3eef1::function_11908f52("amb_darkbattle_battery_beep", (13008, 2740, 249));
	namespace_4fe3eef1::function_11908f52("amb_darkbattle_battery_beep", (13008, 2549, 249));
	namespace_4fe3eef1::function_11908f52("amb_darkbattle_battery_beep", (13147, 2544, 245));
	namespace_4fe3eef1::function_11908f52("amb_darkbattle_battery_beep", (13870, 2403, 242));
	level waittill("hash_e94a4dcf");
	namespace_4fe3eef1::function_b2f15380("amb_darkbattle_battery_beep", (13849, 2832, 226));
	namespace_4fe3eef1::function_b2f15380("amb_darkbattle_battery_beep", (13521, 3259, 229));
	namespace_4fe3eef1::function_b2f15380("amb_darkbattle_battery_beep", (13287, 3267, 226));
	namespace_4fe3eef1::function_b2f15380("amb_darkbattle_battery_beep", (13584, 2694, 253));
	namespace_4fe3eef1::function_b2f15380("amb_darkbattle_battery_beep", (13008, 2740, 249));
	namespace_4fe3eef1::function_b2f15380("amb_darkbattle_battery_beep", (13008, 2549, 249));
	namespace_4fe3eef1::function_b2f15380("amb_darkbattle_battery_beep", (13147, 2544, 245));
	namespace_4fe3eef1::function_b2f15380("amb_darkbattle_battery_beep", (13870, 2403, 242));
}

