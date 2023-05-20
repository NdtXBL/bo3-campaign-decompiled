#using scripts\cp\_challenges;
#using scripts\cp\_objectives;
#using scripts\cp\_util;
#using scripts\cp\gametypes\_save;
#using scripts\shared\array_shared;
#using scripts\shared\audio_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\music_shared;
#using scripts\shared\system_shared;

#namespace namespace_d275cebc;

/*
	Name: function_2dc19561
	Namespace: namespace_d275cebc
	Checksum: 0xF37EF3F8
	Offset: 0x5F8
	Size: 0x3B
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("bzm_collectibles", &function_8c87d8eb, &function_5b6b9132, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_d275cebc
	Checksum: 0x484EBC81
	Offset: 0x640
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	if(!function_27c72c1b())
	{
		return;
	}
	namespace_71e9cb84::function_50f16166("world", "cpzm_song_suppression", 1, 1, "int");
	level.var_827b82e9 = function_4794dda();
	level.var_fb4674a9 = function_9065d6ea();
	level.var_3efe1e22 = [];
	level thread function_7c315d3a();
}

/*
	Name: function_5b6b9132
	Namespace: namespace_d275cebc
	Checksum: 0x63F57881
	Offset: 0x6E8
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_5b6b9132()
{
	if(!function_27c72c1b())
	{
		return;
	}
	thread function_ab60ef67();
}

/*
	Name: function_ab60ef67
	Namespace: namespace_d275cebc
	Checksum: 0xAD974EDE
	Offset: 0x720
	Size: 0x20B
	Parameters: 0
	Flags: None
*/
function function_ab60ef67()
{
	wait(2);
	level.var_8a9d11b = 0;
	level.var_7e93a355 = 0;
	level.var_d275cebc = [];
	var_a87c5e50 = function_99201f25("collectible", "script_noteworthy");
	if(var_a87c5e50.size <= 1)
	{
		return;
	}
	var_b78f06c4 = function_6f1ebe57("mapname");
	if(function_5dbf7eca(var_b78f06c4, "blackstation"))
	{
		var_12d65c22 = 1;
	}
	else
	{
		var_12d65c22 = 0;
	}
	level.var_f5f95e45 = -1;
	foreach(var_e81a1399 in var_a87c5e50)
	{
		if(var_12d65c22 && function_cb3d1c9b((-1492, 1690, -640), var_e81a1399.var_722885f3) <= 200 * 200)
		{
			continue;
		}
		level.var_f5f95e45++;
		var_e81a1399.var_5e76f0af = level.var_f5f95e45;
		var_71cdd4fd = function_8765a33c(var_e81a1399);
		namespace_84970cc4::function_69554b3e(level.var_d275cebc, var_71cdd4fd, 0);
	}
	namespace_dabbe128::function_356a4ee1(&function_aebcf025);
}

/*
	Name: function_b963f25
	Namespace: namespace_d275cebc
	Checksum: 0xE2C8EC89
	Offset: 0x938
	Size: 0xE3
	Parameters: 1
	Flags: Private
*/
function private function_b963f25(var_e81a1399)
{
	var_e81a1399.var_f8456b37 = 60;
	var_e81a1399.var_a4e8111c = VectorScale((0, 0, 1), 5);
	var_e81a1399.var_722885f3 = var_e81a1399.var_722885f3 + VectorScale((0, 0, 1), 35);
	var_3efe1e22 = level.var_3efe1e22[var_e81a1399.var_6df9264];
	if(isdefined(var_3efe1e22))
	{
		var_e81a1399.var_f8456b37 = var_3efe1e22.var_f8456b37;
		var_e81a1399.var_a4e8111c = var_e81a1399.var_a4e8111c + var_3efe1e22.var_a4e8111c;
	}
	return var_e81a1399;
}

/*
	Name: function_aebcf025
	Namespace: namespace_d275cebc
	Checksum: 0x99EC1590
	Offset: 0xA28
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_aebcf025()
{
}

/*
	Name: function_8765a33c
	Namespace: namespace_d275cebc
	Checksum: 0xEFD0FCB2
	Offset: 0xA38
	Size: 0x3A7
	Parameters: 1
	Flags: None
*/
function function_8765a33c(var_e81a1399)
{
	var_e81a1399 function_48f26766();
	var_e81a1399 = function_b963f25(var_e81a1399);
	var_9cec4e17 = function_9b7fda5e("trigger_radius_use", var_e81a1399.var_722885f3 + var_e81a1399.var_a4e8111c, 0, 100, var_e81a1399.var_f8456b37);
	var_9cec4e17 function_1d5013fa();
	var_9cec4e17 function_bb863f19();
	var_9cec4e17 function_1f80b3d5();
	var_9cec4e17 function_dc378587("none");
	var_9cec4e17 function_e68ee88a("HINT_INTERACTIVE_PROMPT");
	var_9cec4e17 function_d5eb00e3(&"COLLECTIBLE_PICK_UP");
	var_837a6185 = namespace_a230c2b1::function_be21f511("any", var_9cec4e17, function_84970cc4(var_e81a1399), (0, 0, 0), &"cp_magic_song");
	var_837a6185 namespace_a230c2b1::function_1e5cb2cc("any");
	var_837a6185 namespace_a230c2b1::function_df0e9e69(0.35);
	var_837a6185 namespace_a230c2b1::function_a09b1ac1("allies");
	var_837a6185 namespace_a230c2b1::function_bd903f5c("any");
	var_837a6185.var_e81a1399 = var_e81a1399;
	var_837a6185.var_3c8ea097 = &function_3c8ea097;
	var_837a6185.var_cfce9b82 = &function_cfce9b82;
	var_837a6185.var_db0f901 = 1;
	var_837a6185.var_722885f3 = var_e81a1399.var_722885f3;
	var_837a6185.var_6ab6f4fd = var_837a6185.var_6ab6f4fd;
	if(isdefined(var_e81a1399.var_8202763a))
	{
		var_837a6185.var_5e76f0af = var_e81a1399.var_8202763a - 1;
	}
	else
	{
		var_837a6185.var_5e76f0af = function_b6b79a0(function_f45850ec(var_e81a1399.var_6df9264, var_e81a1399.var_6df9264.size - 2)) - 1;
	}
	var_e81a1399 function_e48f905e("p7_zm_teddybear_sitting");
	var_e81a1399 namespace_71e9cb84::function_74d6b22f("powerup_on_fx", 2);
	var_e81a1399 function_7d0838b3(0.7);
	/#
		level thread function_c7d0d818(var_837a6185.var_722885f3);
	#/
	return var_837a6185;
}

/*
	Name: function_9b46b73e
	Namespace: namespace_d275cebc
	Checksum: 0xC218DE9A
	Offset: 0xDE8
	Size: 0x19F
	Parameters: 0
	Flags: None
*/
function function_9b46b73e()
{
	var_b78f06c4 = function_9065d6ea();
	foreach(var_71cdd4fd in level.var_d275cebc)
	{
		foreach(var_5dc5e20a in level.var_2395e945)
		{
			if(var_5dc5e20a function_84368297("PlayerStatsByMap", var_b78f06c4, "collectibles", var_71cdd4fd.var_5e76f0af))
			{
				var_71cdd4fd.var_e81a1399 function_64218ffc(var_5dc5e20a);
				function_e09b765c(var_71cdd4fd.var_79f5c705, var_5dc5e20a);
				var_71cdd4fd.var_4dbf3ae3 function_64218ffc(var_5dc5e20a);
			}
		}
	}
}

/*
	Name: function_3c8ea097
	Namespace: namespace_d275cebc
	Checksum: 0xB72548EA
	Offset: 0xF90
	Size: 0x4E1
	Parameters: 1
	Flags: None
*/
function function_3c8ea097(var_6bfe1586)
{
	var_b78f06c4 = function_9065d6ea();
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a function_b8862210("uin_collectible_pickup", var_5dc5e20a);
		self.var_e81a1399 function_64218ffc(var_5dc5e20a);
		self namespace_a230c2b1::function_5815ab75(var_5dc5e20a);
		self.var_4dbf3ae3 function_64218ffc(var_5dc5e20a);
		var_5dc5e20a function_8f67433b("PlayerStatsByMap", var_b78f06c4, "collectibles", self.var_5e76f0af, 1);
		function_9a7ed193(var_5dc5e20a);
		namespace_82b91a51::function_964b7eb7(var_5dc5e20a, function_483c3c51("COLLECTIBLE_DISCOVERED"));
	}
	level.var_8a9d11b++;
	var_27fba3a4 = level.var_d275cebc.size;
	if(var_27fba3a4 > 3)
	{
		if(level.var_8a9d11b < 3)
		{
			return;
		}
	}
	else if(var_27fba3a4 - level.var_8a9d11b > 0)
	{
		return;
	}
	level thread function_9b46b73e();
	if(level.var_7e93a355 <= 1)
	{
		var_b78f06c4 = function_9065d6ea();
		level.var_7e93a355++;
		var_86c93e40 = undefined;
		var_57455d0c = undefined;
		switch(var_b78f06c4)
		{
			case "cp_mi_cairo_aquifer_nightmares":
			{
				var_86c93e40 = "zm_abra";
				var_57455d0c = "mus_abra_cadavre_intro";
				break;
			}
			case "cp_mi_cairo_lotus_nightmares":
			{
				var_86c93e40 = "zm_always_running";
				var_57455d0c = "mus_always_running_intro";
				break;
			}
			case "cp_mi_cairo_ramses_nightmares":
			{
				var_86c93e40 = "zm_wafd";
				var_57455d0c = "mus_we_all_fall_down_intro";
				break;
			}
			case "cp_mi_eth_prologue_nightmares":
			{
				var_86c93e40 = "zm_pareidolia";
				var_57455d0c = "mus_pareidolia_intro";
				break;
			}
			case "cp_mi_sing_biodomes_nightmares":
			{
				var_86c93e40 = "zm_boa";
				var_57455d0c = "mus_beauty_of_annihilation_intro";
				break;
			}
			case "cp_mi_sing_blackstation_nightmares":
			{
				var_86c93e40 = "zm_carrion";
				var_57455d0c = "mus_carrion_intro";
				break;
			}
			case "cp_mi_sing_sgen_nightmares":
			{
				var_86c93e40 = "zm_lullaby";
				var_57455d0c = "mus_lullaby_for_a_dead_man_intro";
				break;
			}
			case "cp_mi_sing_vengeance_nightmares":
			{
				var_86c93e40 = "zm_coming_home";
				var_57455d0c = "mus_coming_home_intro";
				break;
			}
			case "cp_mi_zurich_coalescence_nightmares":
			{
				var_86c93e40 = "zm_archangel";
				var_57455d0c = "mus_archangel_intro";
				break;
			}
			case "cp_mi_zurich_newworld_nightmares":
			{
				var_86c93e40 = "zm_the_one";
				var_57455d0c = "mus_the_one_intro";
				break;
			}
			case "cp_mi_cairo_infection_nightmares":
			{
				var_86c93e40 = "zm_wawg";
				var_57455d0c = "mus_where_are_we_going_intro";
				break;
			}
		}
		if(isdefined(var_86c93e40))
		{
			/#
				function_d52b076d("Dev Block strings are not supported" + var_57455d0c);
			#/
			namespace_ccb8d056::function_c1cdedfb(var_86c93e40);
			level.var_effda531 = 1;
			level thread function_d789d2e(var_86c93e40);
		}
		foreach(var_5dc5e20a in level.var_2395e945)
		{
			if(isdefined(var_57455d0c))
			{
				var_5dc5e20a function_7060862b(var_57455d0c);
			}
		}
	}
}

/*
	Name: function_d789d2e
	Namespace: namespace_d275cebc
	Checksum: 0x5B565DEB
	Offset: 0x1480
	Size: 0xA3
	Parameters: 1
	Flags: None
*/
function function_d789d2e(var_86c93e40)
{
	var_261c0846 = "mus_" + var_86c93e40 + "_intro";
	var_e20459b1 = function_799102f2(var_261c0846);
	if(!isdefined(var_e20459b1) || var_e20459b1 <= 0)
	{
		var_77a7fe7d = 1;
	}
	else
	{
		var_77a7fe7d = var_e20459b1 * 0.001;
	}
	wait(var_77a7fe7d);
	level.var_effda531 = 0;
}

/*
	Name: function_cfce9b82
	Namespace: namespace_d275cebc
	Checksum: 0x2BED3B14
	Offset: 0x1530
	Size: 0xB
	Parameters: 1
	Flags: None
*/
function function_cfce9b82(var_6bfe1586)
{
}

/*
	Name: function_c7d0d818
	Namespace: namespace_d275cebc
	Checksum: 0xDD46CDE6
	Offset: 0x1548
	Size: 0x57
	Parameters: 1
	Flags: None
*/
function function_c7d0d818(var_22a0bc90)
{
	/#
		while(1)
		{
			function_8afd7e24(var_22a0bc90, var_22a0bc90 + VectorScale((0, 0, 1), 2000), (1, 1, 1), "Dev Block strings are not supported");
			wait(0.05);
		}
	#/
}

/*
	Name: function_7c315d3a
	Namespace: namespace_d275cebc
	Checksum: 0xF6B94855
	Offset: 0x15A8
	Size: 0x77
	Parameters: 0
	Flags: None
*/
function function_7c315d3a()
{
	while(1)
	{
		level waittill("hash_1c353a4f");
		if(isdefined(level.var_effda531) && level.var_effda531)
		{
			level namespace_71e9cb84::function_74d6b22f("cpzm_song_suppression", 1);
		}
		level waittill("hash_14c06c0c");
		level namespace_71e9cb84::function_74d6b22f("cpzm_song_suppression", 0);
	}
}

