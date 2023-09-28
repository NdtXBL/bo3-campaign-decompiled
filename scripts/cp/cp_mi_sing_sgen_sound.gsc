#using scripts\codescripts\struct;
#using scripts\cp\_util;
#using scripts\cp\voice\voice_sgen;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\music_shared;
#using scripts\shared\util_shared;

#namespace namespace_172c963;

/*
	Name: main
	Namespace: namespace_172c963
	Checksum: 0xDE4DF6E2
	Offset: 0x548
	Size: 0x11B
	Parameters: 0
	Flags: None
*/
function main()
{
	namespace_929c1dbf::init_voice();
	level thread function_42f39c7b();
	level thread function_8f05138d();
	level thread function_41c3c62c();
	level thread function_2a750521();
	level thread function_e96144ad();
	level thread function_409fc957();
	level thread function_1b47c9c3();
	level thread function_f0745581();
	level thread function_4f035629();
	level thread function_a56ceafc();
	level thread namespace_d40478f6::function_af9045f8();
}

/*
	Name: function_a56ceafc
	Namespace: namespace_172c963
	Checksum: 0x745541E
	Offset: 0x670
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_a56ceafc()
{
	level flag::wait_till("exterior_gone_hot");
	util::clientNotify("kw");
}

/*
	Name: function_9e8ca719
	Namespace: namespace_172c963
	Checksum: 0xF5F91DA
	Offset: 0x6B8
	Size: 0x197
	Parameters: 2
	Flags: None
*/
function function_9e8ca719(area, var_ca37d98d)
{
	if(!isdefined(var_ca37d98d))
	{
		var_ca37d98d = 0;
	}
	if(!isdefined(area))
	{
		return;
	}
	var_52aeda65 = undefined;
	var_1f3dfba0 = undefined;
	switch(area)
	{
		case "igc_intro":
		{
			var_52aeda65 = "Oneshot: IGC Intro Music";
			break;
		}
		case "quadtank_intro":
		{
			if(!var_ca37d98d)
			{
			}
			break;
		}
		case "sgen_enter":
		{
			break;
		}
		case "dark_battle":
		{
			if(!var_ca37d98d)
			{
			}
			break;
		}
		case "pallas":
		{
			if(!var_ca37d98d)
			{
			}
			else
			{
				var_52aeda65 = "StopLooper: Pallas Battle Music";
				var_1f3dfba0 = "Oneshot: Pallas Defeat Stinger";
			}
			break;
		}
		case "water_exit":
		{
			if(!var_ca37d98d)
			{
				var_52aeda65 = "Looper: Water Exit";
			}
			else
			{
				var_52aeda65 = "StopLooper: Water Exit";
				var_1f3dfba0 = "Oneshot: Level End";
			}
			break;
		}
	}
	foreach(player in level.players)
	{
	}
}

/*
	Name: function_42f39c7b
	Namespace: namespace_172c963
	Checksum: 0x26B0435
	Offset: 0x858
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_42f39c7b()
{
	trigger = GetEnt("amb_raven_fly", "targetname");
	if(isdefined(trigger))
	{
		trigger waittill("trigger");
		wait(2);
		playsoundatposition("evt_raven_caw", (420, -2031, 590));
	}
}

/*
	Name: function_8f05138d
	Namespace: namespace_172c963
	Checksum: 0x989ED2EE
	Offset: 0x8D8
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_8f05138d()
{
	trigger = GetEnt("amb_door_bang_silo_office", "targetname");
	if(isdefined(trigger))
	{
		trigger waittill("trigger");
		wait(0.5);
		playsoundatposition("evt_door_bang", (660, -608, -1195));
	}
}

/*
	Name: function_2fccad00
	Namespace: namespace_172c963
	Checksum: 0x7CCE8C57
	Offset: 0x960
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_2fccad00()
{
	trigger = GetEnt("silo_door_scare", "targetname");
	if(isdefined(trigger))
	{
		trigger waittill("trigger");
		wait(0.5);
		playsoundatposition("evt_silo_door_scare", (-780, 874, -2806));
	}
}

/*
	Name: function_f0745581
	Namespace: namespace_172c963
	Checksum: 0xEC7A283A
	Offset: 0x9E8
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_f0745581()
{
	trigger = GetEnt("evt_metal_groan_undersilo", "targetname");
	if(isdefined(trigger))
	{
		trigger waittill("trigger");
		wait(3);
		playsoundatposition("evt_dist_metal", (82, -863, -4551));
	}
}

/*
	Name: function_41c3c62c
	Namespace: namespace_172c963
	Checksum: 0xF886A6EF
	Offset: 0xA68
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_41c3c62c()
{
	trigger = GetEnt("evt_water_monster", "targetname");
	if(isdefined(trigger))
	{
		trigger waittill("trigger");
		wait(0.5);
	}
}

/*
	Name: function_2a750521
	Namespace: namespace_172c963
	Checksum: 0xFA81813F
	Offset: 0xAC8
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_2a750521()
{
	trigger = GetEnt("amb_robot_hallway", "targetname");
	if(isdefined(trigger))
	{
		trigger waittill("trigger");
		wait(0.5);
		playsoundatposition("evt_robot_hallway", (216, -2624, -5120));
	}
}

/*
	Name: function_e96144ad
	Namespace: namespace_172c963
	Checksum: 0xC5882343
	Offset: 0xB50
	Size: 0x75
	Parameters: 0
	Flags: None
*/
function function_e96144ad()
{
	var_85d66a76 = GetEntArray("evt_underwater_exp", "targetname");
	for(i = 0; i < var_85d66a76.size; i++)
	{
		var_85d66a76[i] thread function_dc4d56aa();
	}
}

/*
	Name: function_dc4d56aa
	Namespace: namespace_172c963
	Checksum: 0x2DE4CC84
	Offset: 0xBD0
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_dc4d56aa()
{
	target = struct::get(self.target, "targetname");
	self waittill("trigger");
	playsoundatposition(self.script_sound, target.origin);
}

/*
	Name: function_409fc957
	Namespace: namespace_172c963
	Checksum: 0x9B8CD85C
	Offset: 0xC40
	Size: 0x75
	Parameters: 0
	Flags: None
*/
function function_409fc957()
{
	var_7710e8e5 = GetEntArray("amb_underwater_bump", "targetname");
	for(i = 0; i < var_7710e8e5.size; i++)
	{
		var_7710e8e5[i] thread function_b08929ff();
	}
}

/*
	Name: function_b08929ff
	Namespace: namespace_172c963
	Checksum: 0xF9FCAE55
	Offset: 0xCC0
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_b08929ff()
{
	self waittill("trigger");
	self playsound(self.script_sound);
}

/*
	Name: function_1b47c9c3
	Namespace: namespace_172c963
	Checksum: 0x7A37392D
	Offset: 0xCF8
	Size: 0x75
	Parameters: 0
	Flags: None
*/
function function_1b47c9c3()
{
	var_36784234 = GetEntArray("evt_robots_awaken", "targetname");
	for(i = 0; i < var_36784234.size; i++)
	{
		var_36784234[i] thread function_232d9e54();
	}
}

/*
	Name: function_232d9e54
	Namespace: namespace_172c963
	Checksum: 0xD23A1601
	Offset: 0xD78
	Size: 0x6F
	Parameters: 0
	Flags: None
*/
function function_232d9e54()
{
	self.counter = 0;
	level waittill("ambush");
	while(self.counter < 2)
	{
		wait(randomIntRange(0, 4));
		self playsound("evt_robots_awaken");
		self.counter++;
	}
}

/*
	Name: function_4f035629
	Namespace: namespace_172c963
	Checksum: 0x6E2A122F
	Offset: 0xDF0
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_4f035629()
{
	level waittill("hash_7336a7fd");
	sound_org = GetEnt("amb_dni_chamber_origin", "targetname");
	if(isdefined(sound_org))
	{
		sound_org PlayLoopSound("amb_dni_chamber_hum", 0);
	}
}

/*
	Name: function_2b89e6e8
	Namespace: namespace_172c963
	Checksum: 0xAF8B3FDB
	Offset: 0xE68
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_2b89e6e8()
{
	level waittill("hash_6d5c2e76");
	playsoundatposition("fly_hendricks_kick_debris_beam_b", (-562, -326, -135));
}

#namespace namespace_d40478f6;

/*
	Name: function_973b77f9
	Namespace: namespace_d40478f6
	Checksum: 0xF2DC225A
	Offset: 0xEA8
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_973b77f9()
{
	music::setmusicstate("none");
}

/*
	Name: function_3440789f
	Namespace: namespace_d40478f6
	Checksum: 0xF15F76FB
	Offset: 0xED0
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_3440789f()
{
	music::setmusicstate("quad_awaken");
}

/*
	Name: function_b345d175
	Namespace: namespace_d40478f6
	Checksum: 0xD2E6C9DE
	Offset: 0xEF8
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_b345d175()
{
	music::setmusicstate("genlab");
	level clientfield::set("sndLabWalla", 0);
}

/*
	Name: function_d930fe43
	Namespace: namespace_d40478f6
	Checksum: 0x3791A247
	Offset: 0xF40
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_d930fe43()
{
	wait(6);
	music::setmusicstate("knockbot");
}

/*
	Name: function_98762d53
	Namespace: namespace_d40478f6
	Checksum: 0x96E0B574
	Offset: 0xF70
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_98762d53()
{
	music::setmusicstate("pre_silo");
}

/*
	Name: function_e596bdfd
	Namespace: namespace_d40478f6
	Checksum: 0xB6409947
	Offset: 0xF98
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_e596bdfd()
{
	music::setmusicstate("ambush");
}

/*
	Name: function_55f6ee71
	Namespace: namespace_d40478f6
	Checksum: 0xA044CAEF
	Offset: 0xFC0
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_55f6ee71()
{
	music::setmusicstate("corvus_entrance");
}

/*
	Name: function_3eb3d06
	Namespace: namespace_d40478f6
	Checksum: 0xED4FFFA5
	Offset: 0xFE8
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_3eb3d06()
{
	music::setmusicstate("gas_battle_silo");
}

/*
	Name: function_874f01d
	Namespace: namespace_d40478f6
	Checksum: 0x26C38EAC
	Offset: 0x1010
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_874f01d()
{
	music::setmusicstate("elevator_ride");
}

/*
	Name: function_ad14681b
	Namespace: namespace_d40478f6
	Checksum: 0xB4898008
	Offset: 0x1038
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_ad14681b()
{
	music::setmusicstate("diaz_fight_part_one");
}

/*
	Name: function_3d554ba8
	Namespace: namespace_d40478f6
	Checksum: 0x7B37207E
	Offset: 0x1060
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_3d554ba8()
{
	music::setmusicstate("none");
	wait(12);
	level thread function_fdf54ba5();
}

/*
	Name: function_fdf54ba5
	Namespace: namespace_d40478f6
	Checksum: 0x7B516C9
	Offset: 0x10A0
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_fdf54ba5()
{
	music::setmusicstate("diaz_fight_part_two");
}

/*
	Name: function_af5cbae3
	Namespace: namespace_d40478f6
	Checksum: 0xC51B2A8E
	Offset: 0x10C8
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_af5cbae3()
{
	music::setmusicstate("none");
	wait(10);
	level thread function_7881343b();
}

/*
	Name: function_7881343b
	Namespace: namespace_d40478f6
	Checksum: 0x6F143D7C
	Offset: 0x1108
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_7881343b()
{
	music::setmusicstate("diaz_fight_part_three");
}

/*
	Name: function_895a407a
	Namespace: namespace_d40478f6
	Checksum: 0x6E752E40
	Offset: 0x1130
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_895a407a()
{
	wait(3);
	music::setmusicstate("none");
}

/*
	Name: function_72ef07c3
	Namespace: namespace_d40478f6
	Checksum: 0xE67ED9F5
	Offset: 0x1160
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_72ef07c3()
{
	wait(1);
	music::setmusicstate("defend_hendrix");
}

/*
	Name: function_5d6d7c60
	Namespace: namespace_d40478f6
	Checksum: 0x395624CB
	Offset: 0x1190
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_5d6d7c60()
{
	wait(1);
	music::setmusicstate("depth_charge_ambience");
}

/*
	Name: function_71f06599
	Namespace: namespace_d40478f6
	Checksum: 0x63EB81DA
	Offset: 0x11C0
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_71f06599()
{
	wait(4);
	music::setmusicstate("silo_water");
}

/*
	Name: function_29597dc9
	Namespace: namespace_d40478f6
	Checksum: 0x56705D5D
	Offset: 0x11F0
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_29597dc9()
{
	music::setmusicstate("robot_hallway");
}

/*
	Name: function_89871797
	Namespace: namespace_d40478f6
	Checksum: 0x2A410033
	Offset: 0x1218
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_89871797()
{
	music::setmusicstate("robot_hallway_underscore");
}

/*
	Name: function_af9045f8
	Namespace: namespace_d40478f6
	Checksum: 0xB3F965D0
	Offset: 0x1240
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_af9045f8()
{
	level waittill("hash_ddeafd5d");
	music::setmusicstate("diaz_igc3");
}

/*
	Name: function_34465ae6
	Namespace: namespace_d40478f6
	Checksum: 0xB69EDE30
	Offset: 0x1278
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_34465ae6()
{
	music::setmusicstate("dark_battle_stg");
}

/*
	Name: function_4a262c0b
	Namespace: namespace_d40478f6
	Checksum: 0xD88B49DB
	Offset: 0x12A0
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_4a262c0b()
{
	wait(2);
	music::setmusicstate("dni_lab_igc2");
}

/*
	Name: function_6cad5ce0
	Namespace: namespace_d40478f6
	Checksum: 0xDCDB2645
	Offset: 0x12D0
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_6cad5ce0()
{
	music::setmusicstate("flyin_igc1");
}

/*
	Name: function_26fc5a92
	Namespace: namespace_d40478f6
	Checksum: 0x5CDF2ED2
	Offset: 0x12F8
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_26fc5a92()
{
	wait(3);
	music::setmusicstate("hendricks_bodies");
}

/*
	Name: function_fb17452c
	Namespace: namespace_d40478f6
	Checksum: 0xB5701DBA
	Offset: 0x1328
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_fb17452c()
{
	music::setmusicstate("descent");
}

/*
	Name: function_e71fc67f
	Namespace: namespace_d40478f6
	Checksum: 0xFD20EF38
	Offset: 0x1350
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_e71fc67f()
{
	music::setmusicstate("outro");
}

/*
	Name: function_22982c6e
	Namespace: namespace_d40478f6
	Checksum: 0x88A1CAEB
	Offset: 0x1378
	Size: 0xDB
	Parameters: 0
	Flags: None
*/
function function_22982c6e()
{
	playsoundatposition("evt_sgen_hallway_scare", (182, -1189, -4560));
	ent = spawn("script_origin", (182, -1189, -4560));
	ent PlayLoopSound("amb_sgen_corporate_jingle_scripted");
	wait(25);
	playsoundatposition("evt_sgen_hallway_scare_off", (182, -1189, -4560));
	ent StopLoopSound();
	ent delete();
}

