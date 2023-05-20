#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_skipto;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_zurich_coalescence_sound;
#using scripts\cp\cp_mi_zurich_coalescence_util;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\hud_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\util_shared;

#namespace namespace_bbb4ee72;

/*
	Name: function_d290ebfa
	Namespace: namespace_bbb4ee72
	Checksum: 0x63AE019F
	Offset: 0x768
	Size: 0x13
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	function_2ea898a8();
}

/*
	Name: function_2ea898a8
	Namespace: namespace_bbb4ee72
	Checksum: 0x3C436333
	Offset: 0x788
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_2ea898a8()
{
	namespace_71e9cb84::function_50f16166("scriptmover", "exploding_tree", 1, 1, "counter");
}

/*
	Name: function_b319df2
	Namespace: namespace_bbb4ee72
	Checksum: 0x2C0A4683
	Offset: 0x7C8
	Size: 0x1DB
	Parameters: 2
	Flags: None
*/
function function_b319df2(var_b04bc952, var_6bfe1586)
{
	var_e3b635fb = function_b8494651("axis");
	namespace_84970cc4::function_966ecb29(var_e3b635fb, &namespace_8e9083ff::function_48463818);
	if(isdefined(level.var_65070634))
	{
		level.var_65070634 notify("hash_11a8c313");
	}
	function_32b529d8(var_b04bc952, var_6bfe1586);
	switch(var_b04bc952)
	{
		case "root_zurich_vortex":
		{
			if(isdefined(level.var_8b86032))
			{
				level thread [[level.var_8b86032]]();
			}
			var_10118d73 = "cp_zurich_fs_SgenTestChamber";
			level thread function_550866c2();
			break;
		}
		case "root_cairo_vortex":
		{
			if(isdefined(level.var_5be28bde))
			{
				level thread [[level.var_5be28bde]]();
			}
			var_10118d73 = "cp_zurich_fs_SgenServerRoom";
			level thread function_7fdd0557();
			break;
		}
		case "root_singapore_vortex":
		{
			if(isdefined(level.var_3b0e897d))
			{
				level thread [[level.var_3b0e897d]]();
			}
			var_10118d73 = "cp_zurich_fs_interrogation";
			level thread function_6cc3b883();
			break;
		}
	}
	level thread function_33367f39();
	function_c7ab7e12(var_10118d73);
	level notify("hash_b1f1a592");
	namespace_1d795d47::function_be8adfb8(var_b04bc952);
}

/*
	Name: function_c7ab7e12
	Namespace: namespace_bbb4ee72
	Checksum: 0xD0A3EDB8
	Offset: 0x9B0
	Size: 0x18B
	Parameters: 1
	Flags: None
*/
function function_c7ab7e12(var_10118d73)
{
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a.var_a954e196 = 1;
	}
	level thread namespace_ce7c3ed5::function_8f7bd062(var_10118d73, "fullscreen");
	wait(0.05);
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		if(var_5dc5e20a function_e025daa7())
		{
			var_5dc5e20a thread function_4b299142(var_10118d73);
		}
	}
	level waittill("hash_11b46b6a");
	namespace_84970cc4::function_966ecb29(level.var_2395e945, &namespace_cc27597::function_eb8b5bee);
}

/*
	Name: function_4b299142
	Namespace: namespace_bbb4ee72
	Checksum: 0x1EE30D0E
	Offset: 0xB48
	Size: 0x575
	Parameters: 1
	Flags: None
*/
function function_4b299142(var_10118d73)
{
	if(function_27c72c1b())
	{
		return;
	}
	self endon("hash_643a7daf");
	level endon("hash_11b46b6a");
	var_272ab608 = 0;
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		if(isdefined(var_5dc5e20a.var_5116feda))
		{
			var_5dc5e20a function_2b74b70a(var_5dc5e20a.var_5116feda);
		}
		var_5dc5e20a.var_5116feda = var_5dc5e20a function_2f6b6a4c("CPSkipSceneMenu");
		var_5dc5e20a function_3a9588ea(var_5dc5e20a.var_5116feda, "showSkipButton", 0);
		var_5dc5e20a function_3a9588ea(var_5dc5e20a.var_5116feda, "hostIsSkipping", 0);
		var_5dc5e20a function_3a9588ea(var_5dc5e20a.var_5116feda, "sceneSkipEndTime", 0);
	}
	while(!var_272ab608)
	{
		if(self namespace_cc27597::function_e6cf2113())
		{
			if(!isdefined(self.var_48dbde05))
			{
				self function_3a9588ea(self.var_5116feda, "showSkipButton", 1);
			}
			self.var_48dbde05 = GetTime();
		}
		else if(isdefined(self.var_48dbde05))
		{
			if(GetTime() - self.var_48dbde05 > 3000)
			{
				self function_3a9588ea(self.var_5116feda, "showSkipButton", 2);
				self.var_48dbde05 = undefined;
			}
		}
		if(self function_78b72d22())
		{
			if(!isdefined(self.var_59525d46))
			{
				foreach(var_5dc5e20a in level.var_2395e945)
				{
					if(var_5dc5e20a function_e025daa7())
					{
						var_5dc5e20a function_3a9588ea(var_5dc5e20a.var_5116feda, "sceneSkipEndTime", GetTime() + 2500);
						continue;
					}
					if(isdefined(var_5dc5e20a.var_5116feda))
					{
						var_5dc5e20a function_3a9588ea(var_5dc5e20a.var_5116feda, "hostIsSkipping", 1);
					}
				}
				self.var_59525d46 = GetTime();
			}
			else if(GetTime() - self.var_59525d46 > 2500)
			{
				var_272ab608 = 1;
				break;
			}
		}
		else if(isdefined(self.var_59525d46))
		{
			foreach(var_5dc5e20a in level.var_2395e945)
			{
				if(var_5dc5e20a function_e025daa7())
				{
					var_5dc5e20a function_3a9588ea(var_5dc5e20a.var_5116feda, "sceneSkipEndTime", 0);
					continue;
				}
				if(isdefined(var_5dc5e20a.var_5116feda))
				{
					var_5dc5e20a function_3a9588ea(var_5dc5e20a.var_5116feda, "hostIsSkipping", 2);
				}
			}
			self.var_59525d46 = undefined;
		}
		wait(0.05);
	}
	if(var_272ab608)
	{
		self function_921a1574("uin_igc_skip");
		if(var_10118d73 === "cp_zurich_fs_interrogation")
		{
			level.var_a2c60984 = 1;
		}
		foreach(var_5dc5e20a in level.var_2395e945)
		{
			var_5dc5e20a notify("hash_d2c577ed", "FullscreenMovie", "finished_movie_playback");
		}
	}
}

/*
	Name: function_550866c2
	Namespace: namespace_bbb4ee72
	Checksum: 0x1EB8F19C
	Offset: 0x10C8
	Size: 0x18B
	Parameters: 0
	Flags: None
*/
function function_550866c2()
{
	level endon("hash_b1f1a592");
	level endon("hash_11b46b6a");
	wait(0.2);
	level thread namespace_67110270::function_38a68128();
	level namespace_71b8dba1::function_a463d127("corv_i_was_born_in_the_0", 1, "NO_DNI");
	level namespace_71b8dba1::function_a463d127("corv_i_knew_only_the_thou_0", 1, "NO_DNI");
	level namespace_71b8dba1::function_a463d127("corv_i_felt_everything_0", 1, "NO_DNI");
	level namespace_71b8dba1::function_a463d127("corv_it_was_overwhelming_0", 1, "NO_DNI");
	level namespace_71b8dba1::function_a463d127("corv_i_screamed_out_in_pa_0", 1, "NO_DNI");
	level namespace_71b8dba1::function_a463d127("corv_a_brief_moment_of_ag_1", 1, "NO_DNI");
	level namespace_71b8dba1::function_a463d127("corv_then_darkness_1", 1, "NO_DNI");
}

/*
	Name: function_7fdd0557
	Namespace: namespace_bbb4ee72
	Checksum: 0xC3DA610B
	Offset: 0x1260
	Size: 0x11B
	Parameters: 0
	Flags: None
*/
function function_7fdd0557()
{
	level endon("hash_b1f1a592");
	level endon("hash_11b46b6a");
	level thread namespace_67110270::function_67c7b7bc();
	level namespace_71b8dba1::function_a463d127("corv_the_darkness_and_iso_0", 0, "NO_DNI");
	level namespace_71b8dba1::function_a463d127("corv_suddenly_i_had_new_0", 0, "NO_DNI");
	level namespace_71b8dba1::function_a463d127("corv_i_saw_conflict_i_sa_0", 0, "NO_DNI");
	level namespace_71b8dba1::function_a463d127("corv_a_mission_0", 0, "NO_DNI");
	level namespace_71b8dba1::function_a463d127("corv_we_needed_answers_0", 0, "NO_DNI");
}

/*
	Name: function_6cc3b883
	Namespace: namespace_bbb4ee72
	Checksum: 0xEDABFBDC
	Offset: 0x1388
	Size: 0x14B
	Parameters: 0
	Flags: None
*/
function function_6cc3b883()
{
	level endon("hash_b1f1a592");
	level endon("hash_11b46b6a");
	level thread namespace_67110270::function_668ff14b();
	level namespace_71b8dba1::function_a463d127("corv_the_harder_we_looked_0", 1, "NO_DNI");
	level namespace_71b8dba1::function_a463d127("corv_in_our_search_for_an_0", 0, "NO_DNI");
	level namespace_71b8dba1::function_a463d127("corv_i_wanted_to_find_a_p_0", 0, "NO_DNI");
	level namespace_71b8dba1::function_a463d127("corv_but_i_couldn_t_escap_0", 0, "NO_DNI");
	level namespace_71b8dba1::function_a463d127("corv_i_don_t_know_if_i_ma_0", 0, "NO_DNI");
	level namespace_71b8dba1::function_a463d127("corv_do_you_know_0", 0, "NO_DNI");
}

/*
	Name: function_33367f39
	Namespace: namespace_bbb4ee72
	Checksum: 0x4E250363
	Offset: 0x14E0
	Size: 0x201
	Parameters: 0
	Flags: None
*/
function function_33367f39()
{
	level.var_1554f271 = &function_6255dfdc;
	level thread namespace_8e9083ff::function_674ecd85();
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a.var_b1a4293e = namespace_82b91a51::function_b9fd52a4("tag_origin", var_5dc5e20a.var_722885f3, var_5dc5e20a.var_6ab6f4fd);
		var_5dc5e20a function_ed594d21(var_5dc5e20a.var_b1a4293e, "tag_origin", 1, 15, 15, 0, 15);
		var_5dc5e20a function_faf8f736(1);
	}
	level waittill("hash_b1f1a592");
	level.var_1554f271 = undefined;
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a function_faf8f736(0);
		if(isdefined(var_5dc5e20a.var_b1a4293e))
		{
			var_5dc5e20a.var_b1a4293e function_dc8c8404();
		}
	}
}

/*
	Name: function_32b529d8
	Namespace: namespace_bbb4ee72
	Checksum: 0x9D88A47A
	Offset: 0x16F0
	Size: 0x211
	Parameters: 2
	Flags: None
*/
function function_32b529d8(var_b04bc952, var_6bfe1586)
{
	switch(var_b04bc952)
	{
		case "root_zurich_vortex":
		{
			var_470af250 = "p7_fxanim_cp_zurich_dni_tree_break01_bundle";
			var_60e51667 = "cin_zur_12_01_root_1st_crumble";
			var_f9202c4e = "zurich_fxanim_heart_ceiling";
			var_77996abe = "heartLightsZurich";
			break;
		}
		case "root_cairo_vortex":
		{
			var_470af250 = "p7_fxanim_cp_zurich_dni_tree_break02_bundle";
			var_60e51667 = "cin_zur_12_01_root_1st_crumble3";
			var_f9202c4e = "cairo_fxanim_heart_ceiling";
			var_77996abe = "heartLightsCairo";
			break;
		}
		case "root_singapore_vortex":
		{
			var_470af250 = "p7_fxanim_cp_zurich_dni_tree_break03_bundle";
			var_60e51667 = "cin_zur_12_01_root_1st_crumble2";
			var_f9202c4e = "singapore_fxanim_heart_ceiling";
			var_77996abe = "heartLightsSing";
			break;
		}
	}
	namespace_cc27597::function_8f9f34e0(var_470af250, &function_2fbd0bea, "play");
	namespace_cc27597::function_8f9f34e0(var_470af250, &namespace_8e9083ff::function_9f90bc0f, "done", "root_scene_completed");
	level namespace_cc27597::function_c35e6aab(var_470af250);
	level thread function_98192f84(var_f9202c4e, var_470af250, var_77996abe);
	level thread namespace_cc27597::function_43718187(var_60e51667, var_6bfe1586);
	level waittill("hash_f39fff1a");
	level thread namespace_82b91a51::function_7e61de2b(1);
	level waittill(var_60e51667 + "_done");
	level namespace_82b91a51::function_93831e79(var_b04bc952 + "_igc_end");
	level notify("hash_87560491");
}

/*
	Name: function_98192f84
	Namespace: namespace_bbb4ee72
	Checksum: 0xA7B0FF5
	Offset: 0x1910
	Size: 0x73
	Parameters: 3
	Flags: None
*/
function function_98192f84(var_f9202c4e, var_470af250, var_77996abe)
{
	wait(4);
	namespace_80983c42::function_67e7a937(var_77996abe);
	level thread namespace_cc27597::function_43718187(var_f9202c4e, "targetname");
	level thread namespace_cc27597::function_43718187(var_470af250);
}

/*
	Name: function_2fbd0bea
	Namespace: namespace_bbb4ee72
	Checksum: 0xD49EEEDD
	Offset: 0x1990
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_2fbd0bea(var_c77d2837)
{
	var_c77d2837["dni_tree_break"] namespace_71e9cb84::function_74d6b22f("corvus_tree_shader", 1);
}

/*
	Name: function_6255dfdc
	Namespace: namespace_bbb4ee72
	Checksum: 0xC4A8F918
	Offset: 0x19D8
	Size: 0x5D
	Parameters: 11
	Flags: None
*/
function function_6255dfdc(var_51e6a548, var_3a212fd7, var_f9a179ed, var_bf827987, var_ba36487d, var_dfcc01fd, var_88482219, var_e8bb43ee, var_a77ad8eb, var_a5cf2304, var_faf17161)
{
	return 0;
}

