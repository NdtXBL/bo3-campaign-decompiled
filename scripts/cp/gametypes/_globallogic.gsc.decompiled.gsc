#using scripts\cp\_bb;
#using scripts\cp\_challenges;
#using scripts\cp\_decoy;
#using scripts\cp\_gameadvertisement;
#using scripts\cp\_gamerep;
#using scripts\cp\_laststand;
#using scripts\cp\_load;
#using scripts\cp\_rat;
#using scripts\cp\_util;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_deathicons;
#using scripts\cp\gametypes\_dev;
#using scripts\cp\gametypes\_friendicons;
#using scripts\cp\gametypes\_globallogic_defaults;
#using scripts\cp\gametypes\_globallogic_player;
#using scripts\cp\gametypes\_globallogic_score;
#using scripts\cp\gametypes\_globallogic_spawn;
#using scripts\cp\gametypes\_globallogic_ui;
#using scripts\cp\gametypes\_globallogic_utils;
#using scripts\cp\gametypes\_healthoverlay;
#using scripts\cp\gametypes\_loadout;
#using scripts\cp\gametypes\_menus;
#using scripts\cp\gametypes\_save;
#using scripts\cp\gametypes\_scoreboard;
#using scripts\cp\gametypes\_serversettings;
#using scripts\cp\gametypes\_shellshock;
#using scripts\cp\gametypes\_spawnlogic;
#using scripts\cp\gametypes\_spectating;
#using scripts\cp\gametypes\_wager;
#using scripts\cp\gametypes\_weapon_utils;
#using scripts\cp\gametypes\_weapons;
#using scripts\cp\teams\_teams;
#using scripts\shared\_burnplayer;
#using scripts\shared\bb_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\challenges_shared;
#using scripts\shared\damagefeedback_shared;
#using scripts\shared\demo_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\hostmigration_shared;
#using scripts\shared\hud_message_shared;
#using scripts\shared\hud_shared;
#using scripts\shared\hud_util_shared;
#using scripts\shared\laststand_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\math_shared;
#using scripts\shared\music_shared;
#using scripts\shared\objpoints_shared;
#using scripts\shared\persistence_shared;
#using scripts\shared\player_shared;
#using scripts\shared\simple_hostmigration;
#using scripts\shared\tweakables_shared;
#using scripts\shared\util_shared;
#using scripts\shared\weapons\_weapons;
#using scripts\shared\weapons_shared;

#namespace namespace_2282eece;

/*
	Name: function_c35e6aab
	Namespace: namespace_2282eece
	Checksum: 0x294C0BAB
	Offset: 0x17B0
	Size: 0x803
	Parameters: 0
	Flags: None
*/
function function_c35e6aab()
{
	level.var_2016892b = function_33d0d4d7();
	level.var_f14621c9 = function_6f1ebe57("xenonGame") == "true";
	level.var_445f6591 = function_6f1ebe57("ps3Game") == "true";
	level.var_548456d3 = function_6f1ebe57("wiiuGame") == "true";
	level.var_3c34401c = function_6f1ebe57("orbisGame") == "true";
	level.var_a6976069 = function_6f1ebe57("durangoGame") == "true";
	level.var_5eee5d0e = function_bac7e7e9();
	level.var_91cd4e52 = function_9fdc6b85();
	level.var_e89a8a5c = level.var_f14621c9 || level.var_445f6591 || level.var_548456d3 || level.var_3c34401c || level.var_a6976069;
	level.var_5d406297 = function_234d763e();
	level.var_bb9b39ad = 0;
	level.var_d5ab2d45 = 0;
	level.var_b0387bb1 = !function_92a88da3("disableContracts");
	level.var_b0387bb1 = 0;
	/#
		if(function_4bd0142f("Dev Block strings are not supported") == 1)
		{
			level.var_5d406297 = 1;
		}
	#/
	level.var_cd724008 = function_57b2be45(function_6f1ebe57("mapname"));
	level.var_76c6e677 = function_57b2be45(function_6f1ebe57("g_gametype"));
	level.var_de12b72f = 0;
	level.var_940a597 = function_92a88da3("teamCount");
	level.var_c906d2a3 = level.var_940a597 > 2;
	level.var_71739519 = level.var_940a597 + 1;
	if(2 == level.var_71739519)
	{
		level.var_73ce26f0 = "axis";
	}
	else
	{
		level.var_73ce26f0 = "team" + level.var_71739519;
	}
	level.var_e7a38025 = [];
	level.var_37f36656 = [];
	level.var_f9f79134 = [];
	var_940a597 = level.var_940a597;
	level.var_f9f79134["allies"] = "allies";
	level.var_e7a38025["allies"] = "allies";
	level.var_e7a38025["axis"] = "axis";
	level.var_37f36656["neutral"] = 0;
	level.var_37f36656["allies"] = 1;
	level.var_37f36656["axis"] = 2;
	for(var_37f36656 = 3; var_37f36656 <= var_940a597; var_37f36656++)
	{
		level.var_e7a38025["team" + var_37f36656] = "team" + var_37f36656;
		level.var_37f36656["team" + var_37f36656] = var_37f36656;
	}
	level.var_edeba204 = 0;
	level.var_77299e4 = 0;
	level.var_3deacd24 = 0;
	level.var_1ebbb333 = 1;
	level.var_c8fa349a = 1;
	level.var_f1b9c317 = 1;
	level.var_f2ba2abd = 1;
	level.var_f7711ebc = 0;
	level.var_5c7930f2 = 0;
	level.var_71945be3 = 0;
	level.var_3fe9ee34 = 0;
	level.var_41baadf1 = "halftime";
	level.var_4dde7545 = &"MP_SWITCHING_SIDES_CAPS";
	level.var_89aa8af0 = 0;
	level.var_cd1833d0 = [];
	level.var_86d75230 = 0;
	level.var_1d893cda = [];
	foreach(var_3e94206a in level.var_e7a38025)
	{
		level.var_1d893cda[var_3e94206a] = [];
	}
	level.var_1d893cda["all"] = [];
	level.var_fd96027a = 7;
	level.var_8e73036d = 0;
	level.var_d59daf8 = 1;
	level.var_1702b3d0 = 560;
	level.var_bf59452d = function_4bd0142f("sv_maxclients");
	namespace_88a69b2f::function_c35e6aab();
	function_f105374c();
	namespace_a249d1db::function_e4a4bdf7();
	level.var_52bf79c4 = function_4bd0142f("scr_oldschool") == 1;
	if(level.var_52bf79c4)
	{
		/#
			function_3bc5b442("Dev Block strings are not supported");
		#/
		function_6c1294b8("jump_height", 64);
		function_6c1294b8("jump_slowdownEnable", 0);
		function_6c1294b8("bg_fallDamageMinHeight", 256);
		function_6c1294b8("bg_fallDamageMaxHeight", 512);
		function_6c1294b8("player_clipSizeMultiplier", 2);
	}
	function_de82ae91();
	if(!isdefined(game["tiebreaker"]))
	{
		game["tiebreaker"] = 0;
	}
	thread namespace_f048f2fa::function_c35e6aab();
	thread namespace_29301e60::function_c35e6aab();
	level.var_14f14269 = 0;
	if(level.var_bb9b39ad || function_4bd0142f("scr_disableChallenges") > 0)
	{
		level.var_14f14269 = 1;
	}
	level.var_b03ee83a = function_4bd0142f("scr_disableStatTracking") > 0;
	level thread function_51f86b78();
	level.var_ff266e7 = 1;
	level.var_5cdf8f76 = &namespace_b976075a::function_15231ac6;
	level.var_adcdf849 = &namespace_b976075a::function_71d31062;
	level.var_2453cf4a = &namespace_30fc7b57::function_23be4e6b;
}

/*
	Name: function_f105374c
	Namespace: namespace_2282eece
	Checksum: 0x88871CCB
	Offset: 0x1FC0
	Size: 0x2A3
	Parameters: 0
	Flags: None
*/
function function_f105374c()
{
	if(function_6f1ebe57("scr_oldschool") == "")
	{
		function_6c1294b8("scr_oldschool", "0");
	}
	if(function_6f1ebe57("ui_guncycle") == "")
	{
		function_6c1294b8("ui_guncycle", 0);
	}
	if(function_6f1ebe57("ui_weapon_tiers") == "")
	{
		function_6c1294b8("ui_weapon_tiers", 0);
	}
	function_6c1294b8("ui_text_endreason", "");
	function_9d2f1d78("bomb_timer", 0);
	if(function_6f1ebe57("scr_vehicle_damage_scalar") == "")
	{
		function_6c1294b8("scr_vehicle_damage_scalar", "1");
	}
	level.var_2fcfb4f4 = function_f3087faa("scr_vehicle_damage_scalar");
	level.var_12c740db = function_4bd0142f("fire_audio_repeat_duration");
	level.var_b9211dee = function_4bd0142f("fire_audio_random_max_duration");
	var_2c31cef7 = function_7998dac8(level.var_37f36656["allies"]);
	if(isdefined(var_2c31cef7))
	{
		function_6c1294b8("g_customTeamName_Allies", var_2c31cef7);
	}
	else
	{
		function_6c1294b8("g_customTeamName_Allies", "");
	}
	var_2c31cef7 = function_7998dac8(level.var_37f36656["axis"]);
	if(isdefined(var_2c31cef7))
	{
		function_6c1294b8("g_customTeamName_Axis", var_2c31cef7);
	}
	else
	{
		function_6c1294b8("g_customTeamName_Axis", "");
	}
}

/*
	Name: function_90f415c9
	Namespace: namespace_2282eece
	Checksum: 0xC89B9EFF
	Offset: 0x2270
	Size: 0x53
	Parameters: 10
	Flags: None
*/
function function_90f415c9(var_9b32d4cc, var_d3a4407, var_e737c99e, var_292b6591, var_328eb28, var_75305a63, var_4f2ddffa, var_91217bed, var_6b1f0184, var_3d7bf0d4)
{
}

/*
	Name: function_51f86b78
	Namespace: namespace_2282eece
	Checksum: 0x34EE0813
	Offset: 0x22D0
	Size: 0x423
	Parameters: 0
	Flags: None
*/
function function_51f86b78()
{
	level.var_1fee8319 = &namespace_7956eece::function_1fee8319;
	level.var_f868991e = &function_90f415c9;
	level.var_f3db290b = &namespace_7956eece::function_f3db290b;
	level.var_dedbb7c9 = &namespace_7956eece::function_dedbb7c9;
	level.var_8d9835ba = &namespace_7956eece::function_8d9835ba;
	level.var_e0d7d064 = &namespace_e32b5089::function_7e99fb41;
	level.var_b15f9d6d = &namespace_e32b5089::function_8450550f;
	level.var_9ed78565 = &namespace_e32b5089::function_aa0fe5c3;
	level.var_e337eae6 = &function_e337eae6;
	level.var_d4b32a23 = &namespace_7956eece::function_f16225d;
	level.var_19bc9234 = &function_90f415c9;
	level.var_cc747d7a = &function_90f415c9;
	level.var_62209e9a = &namespace_5deb553::function_3127df38;
	level.var_7b3fb2db = &namespace_5deb553::function_91904565;
	level.var_9fcabf9f = &function_90f415c9;
	level.var_f5732ef = &namespace_5deb553::function_7a7141a5;
	level.var_fb734762 = &namespace_5deb553::function_3c98c1e8;
	level.var_67d7b8a9 = &namespace_5deb553::function_8455a753;
	level.var_8a94d3c2 = &namespace_5deb553::function_c4c198b0;
	level.var_e0db18e8 = &namespace_5deb553::function_d617fe3e;
	level.var_4abe31c7 = &namespace_5deb553::function_6ab3de3d;
	level.var_806e3c51 = &namespace_e32b5089::function_806e3c51;
	level.var_a8cf0ca0 = &namespace_5deb553::function_45c10f52;
	level.var_f8e2a6ea = &namespace_5deb553::function_e4443d68;
	level.var_3c9bd810 = &namespace_c46f5728::function_3c9bd810;
	level.var_c2deb19 = &namespace_5deb553::function_3d887edf;
	level.var_8b7e4e17 = &namespace_5deb553::function_da304ba5;
	level.var_1bbcf4be = &namespace_5deb553::function_72921290;
	level.var_11064c6e = &namespace_e32b5089::function_4349658;
	level.var_a5d0acb3 = &namespace_e32b5089::function_a5d0acb3;
	level.var_fffda5bf = &namespace_e32b5089::function_fffda5bf;
	level.var_1dcc90b7 = &namespace_e32b5089::function_1dcc90b7;
	level.var_acc5da4b = &namespace_e32b5089::function_acc5da4b;
	level.var_90f0668f = &function_90f415c9;
	level.var_34685338 = &function_90f415c9;
	level.var_603848d5 = &function_90f415c9;
	level.var_2163426b = &function_90f415c9;
	level.var_f459c6d6 = &function_90f415c9;
	level.var_c2658b46 = &function_90f415c9;
	level.var_c79586a8 = [];
	level.var_d6911678 = &namespace_4d476a30::function_d6911678;
	level.var_257d1c47 = &function_90f415c9;
	level.var_3fcd5617 = &namespace_5deb553::function_aca983ed;
	level.var_4a30341 = &function_90f415c9;
	namespace_88a69b2f::function_51f86b78();
}

/*
	Name: function_de82ae91
	Namespace: namespace_2282eece
	Checksum: 0x5918F82A
	Offset: 0x2700
	Size: 0x21B
	Parameters: 0
	Flags: None
*/
function function_de82ae91()
{
	if(function_75e46361())
	{
		return;
	}
	if(!level.var_5d406297)
	{
		return;
	}
	if(isdefined(level.var_e2c19907) && level.var_e2c19907)
	{
		return;
	}
	var_b78f06c4 = function_6f1ebe57("mapname");
	var_aa8e3dd8 = "LB_MP_GB_XPPRESTIGE LB_MP_GB_SCORE LB_MP_GB_KDRATIO LB_MP_GB_KILLS LB_MP_GB_WINS LB_MP_GB_DEATHS LB_MP_GB_XPMAXPERGAME LB_MP_GB_TACTICALINSERTS LB_MP_GB_TACTICALINSERTSKILLS LB_MP_GB_PRESTIGEXP LB_MP_GB_HEADSHOTS LB_MP_GB_WEAPONS_PRIMARY LB_MP_GB_WEAPONS_SECONDARY";
	var_d059ee00 = "";
	switch(level.var_76c6e677)
	{
		case "gun":
		case "oic":
		case "sas":
		case "shrp":
		{
			break;
		}
		case default:
		{
			var_d059ee00 = " LB_MP_GB_SCOREPERMINUTE";
			break;
		}
	}
	var_ce151e6f = " LB_MP_GM_" + level.var_76c6e677;
	var_bdf3824c = " LB_MP_GM_" + level.var_76c6e677 + "_EXT";
	var_58eaf806 = "";
	var_49e2032b = "";
	var_50527ffe = function_92a88da3("hardcoreMode");
	if(isdefined(var_50527ffe) && var_50527ffe)
	{
		var_58eaf806 = var_ce151e6f + "_HC";
		var_49e2032b = var_bdf3824c + "_HC";
	}
	var_c28e59fe = " LB_MP_MAP_" + function_f45850ec(var_b78f06c4, 3, var_b78f06c4.size);
	function_48bf7696(var_aa8e3dd8 + var_d059ee00 + var_ce151e6f + var_bdf3824c + var_58eaf806 + var_49e2032b + var_c28e59fe);
}

/*
	Name: function_fb7992f6
	Namespace: namespace_2282eece
	Checksum: 0xBE5BE4F
	Offset: 0x2928
	Size: 0xE5
	Parameters: 4
	Flags: None
*/
function function_fb7992f6(var_694f8ff5, var_d380ce67, var_61795f2c, var_a50c6c7)
{
	var_f49bab78 = undefined;
	if(var_d380ce67 == "tie")
	{
		var_f49bab78 = "tie";
		if(var_a50c6c7 < game[var_694f8ff5][var_61795f2c])
		{
			var_f49bab78 = var_61795f2c;
		}
	}
	else if(game[var_694f8ff5][var_d380ce67] == game[var_694f8ff5][var_61795f2c])
	{
		var_f49bab78 = "tie";
	}
	else if(game[var_694f8ff5][var_61795f2c] > game[var_694f8ff5][var_d380ce67])
	{
		var_f49bab78 = var_61795f2c;
	}
	else
	{
		var_f49bab78 = var_d380ce67;
	}
	return var_f49bab78;
}

/*
	Name: function_f2724c55
	Namespace: namespace_2282eece
	Checksum: 0xA97D1D27
	Offset: 0x2A18
	Size: 0xE1
	Parameters: 1
	Flags: None
*/
function function_f2724c55(var_694f8ff5)
{
	var_f8f52b16 = function_391512da(level.var_e7a38025);
	var_f49bab78 = var_f8f52b16[0];
	var_a50c6c7 = game[var_694f8ff5][var_f49bab78];
	for(var_37f36656 = 1; var_37f36656 < var_f8f52b16.size; var_37f36656++)
	{
		var_f49bab78 = function_fb7992f6(var_694f8ff5, var_f49bab78, var_f8f52b16[var_37f36656], var_a50c6c7);
		if(var_f49bab78 != "tie")
		{
			var_a50c6c7 = game[var_694f8ff5][var_f49bab78];
		}
	}
	return var_f49bab78;
}

/*
	Name: function_ad14e8cd
	Namespace: namespace_2282eece
	Checksum: 0xEF7DAAE8
	Offset: 0x2B08
	Size: 0xED
	Parameters: 3
	Flags: None
*/
function function_ad14e8cd(var_d380ce67, var_61795f2c, var_a50c6c7)
{
	var_f49bab78 = undefined;
	var_7e87610a = [[level.var_1dcc90b7]](var_61795f2c);
	if(var_d380ce67 == "tie")
	{
		var_f49bab78 = "tie";
		if(var_a50c6c7 < var_7e87610a)
		{
			var_f49bab78 = var_61795f2c;
		}
		return var_f49bab78;
	}
	var_5f2d28d7 = [[level.var_1dcc90b7]](var_d380ce67);
	if(var_7e87610a == var_5f2d28d7)
	{
		var_f49bab78 = "tie";
	}
	else if(var_7e87610a > var_5f2d28d7)
	{
		var_f49bab78 = var_61795f2c;
	}
	else
	{
		var_f49bab78 = var_d380ce67;
	}
	return var_f49bab78;
}

/*
	Name: function_776ddb14
	Namespace: namespace_2282eece
	Checksum: 0x69648BC9
	Offset: 0x2C00
	Size: 0xDD
	Parameters: 0
	Flags: None
*/
function function_776ddb14()
{
	var_f8f52b16 = function_391512da(level.var_e7a38025);
	var_f49bab78 = var_f8f52b16[0];
	var_a50c6c7 = [[level.var_1dcc90b7]](var_f49bab78);
	for(var_37f36656 = 1; var_37f36656 < var_f8f52b16.size; var_37f36656++)
	{
		var_f49bab78 = function_ad14e8cd(var_f49bab78, var_f8f52b16[var_37f36656], var_a50c6c7);
		if(var_f49bab78 != "tie")
		{
			var_a50c6c7 = [[level.var_1dcc90b7]](var_f49bab78);
		}
	}
	return var_f49bab78;
}

/*
	Name: function_661a1c05
	Namespace: namespace_2282eece
	Checksum: 0x173ECA5C
	Offset: 0x2CE8
	Size: 0x1CB
	Parameters: 1
	Flags: None
*/
function function_661a1c05(var_98bcf614)
{
	level.var_9260e896 = undefined;
	level.var_a07e59c6 = undefined;
	level.var_1a145538 = undefined;
	if(!isdefined(var_98bcf614))
	{
		var_98bcf614 = 0;
	}
	if(level.var_db7e784b || level.var_73353c45)
	{
		return;
	}
	var_f49bab78 = undefined;
	if(level.var_de12b72f)
	{
		var_f49bab78 = function_f2724c55("teamScores");
		namespace_c46f5728::function_ca399f3("host ended game", var_f49bab78);
	}
	else
	{
		var_f49bab78 = namespace_e32b5089::function_b2a6c667();
		/#
			if(isdefined(var_f49bab78))
			{
				function_3bc5b442("Dev Block strings are not supported" + var_f49bab78.var_4be20d44);
			}
			else
			{
				function_3bc5b442("Dev Block strings are not supported");
			}
		#/
	}
	level.var_73353c45 = 1;
	level.var_db7e784b = 1;
	if(var_98bcf614)
	{
		var_ee59ece7 = &"MP_HOST_SUCKS";
	}
	else if(level.var_2016892b)
	{
		var_ee59ece7 = &"MP_ENDED_GAME";
	}
	else
	{
		var_ee59ece7 = &"MP_HOST_ENDED_GAME";
	}
	function_9d2f1d78("disableIngameMenu", 1);
	function_6c1294b8("ui_text_endreason", var_ee59ece7);
	thread function_11bc1b62(var_f49bab78, var_ee59ece7);
}

/*
	Name: function_ede26a7
	Namespace: namespace_2282eece
	Checksum: 0xB84D1779
	Offset: 0x2EC0
	Size: 0x14B
	Parameters: 0
	Flags: None
*/
function function_ede26a7()
{
	if(level.var_db7e784b || level.var_73353c45)
	{
		return;
	}
	var_f49bab78 = undefined;
	if(level.var_de12b72f)
	{
		var_f49bab78 = function_f2724c55("teamScores");
		namespace_c46f5728::function_ca399f3("host ended game", var_f49bab78);
	}
	else
	{
		var_f49bab78 = namespace_e32b5089::function_b2a6c667();
		/#
			if(isdefined(var_f49bab78))
			{
				function_3bc5b442("Dev Block strings are not supported" + var_f49bab78.var_4be20d44);
			}
			else
			{
				function_3bc5b442("Dev Block strings are not supported");
			}
		#/
	}
	level.var_73353c45 = 1;
	level.var_db7e784b = 1;
	level.var_b2e858fc = 1;
	var_ee59ece7 = &"MP_HOST_ENDED_GAME";
	/#
		function_895b00("Dev Block strings are not supported");
	#/
	thread function_11bc1b62(var_f49bab78, var_ee59ece7);
}

/*
	Name: function_3ffb6ce1
	Namespace: namespace_2282eece
	Checksum: 0xF279230B
	Offset: 0x3018
	Size: 0xB5
	Parameters: 0
	Flags: None
*/
function function_3ffb6ce1()
{
	var_17efdc89 = 0;
	foreach(var_3e94206a in level.var_e7a38025)
	{
		if(level.var_7e2c28b7[var_3e94206a] != 0)
		{
			var_17efdc89++;
		}
	}
	if(var_17efdc89 < 2)
	{
		return 0;
	}
	return 1;
}

/*
	Name: function_54563101
	Namespace: namespace_2282eece
	Checksum: 0x84EC4BEF
	Offset: 0x30D8
	Size: 0x59
	Parameters: 1
	Flags: None
*/
function function_54563101(var_3e94206a)
{
	if(!game["everExisted"][var_3e94206a])
	{
		return 0;
	}
	if(level.var_7e2c28b7[var_3e94206a] < 1 && namespace_82b91a51::function_f97020bf() > 0)
	{
		return 1;
	}
	return 0;
}

/*
	Name: function_c64c7a91
	Namespace: namespace_2282eece
	Checksum: 0x31CC68AC
	Offset: 0x3140
	Size: 0x123
	Parameters: 0
	Flags: None
*/
function function_c64c7a91()
{
	var_4dfb2196 = 0;
	var_9c3f07a7 = undefined;
	foreach(var_3e94206a in level.var_e7a38025)
	{
		if(function_54563101(var_3e94206a))
		{
			var_4dfb2196++;
			if(!level.var_c906d2a3)
			{
				thread [[level.var_f5732ef]](var_3e94206a);
				return 1;
			}
			continue;
		}
		var_9c3f07a7 = var_3e94206a;
	}
	if(level.var_c906d2a3 && var_4dfb2196 == level.var_e7a38025.size - 1)
	{
		thread [[level.var_f5732ef]](var_9c3f07a7);
		return 1;
	}
	return 0;
}

/*
	Name: function_4497fd4e
	Namespace: namespace_2282eece
	Checksum: 0x11E627EE
	Offset: 0x3270
	Size: 0x99
	Parameters: 0
	Flags: None
*/
function function_4497fd4e()
{
	foreach(var_3e94206a in level.var_e7a38025)
	{
		if(level.var_74d78ade[var_3e94206a])
		{
			[[level.var_8a94d3c2]](var_3e94206a);
		}
	}
}

/*
	Name: function_5b9da701
	Namespace: namespace_2282eece
	Checksum: 0x31D17981
	Offset: 0x3318
	Size: 0x3D
	Parameters: 1
	Flags: None
*/
function function_5b9da701(var_3e94206a)
{
	return level.var_1aa7ca25[var_3e94206a] && !level.var_c2f0038d[var_3e94206a] && !level.var_70d9f547[var_3e94206a];
}

/*
	Name: function_339428ba
	Namespace: namespace_2282eece
	Checksum: 0x4EAD2525
	Offset: 0x3360
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_339428ba()
{
	foreach(var_3e94206a in level.var_e7a38025)
	{
		if(!function_5b9da701(var_3e94206a))
		{
			return 0;
		}
	}
	return 1;
}

/*
	Name: function_4f9a4c7f
	Namespace: namespace_2282eece
	Checksum: 0xF2C56CFF
	Offset: 0x3400
	Size: 0x105
	Parameters: 0
	Flags: None
*/
function function_4f9a4c7f()
{
	var_74952a22 = 0;
	var_42bbdeba = 0;
	var_9114f7eb = undefined;
	foreach(var_3e94206a in level.var_e7a38025)
	{
		if(level.var_1aa7ca25[var_3e94206a])
		{
			if(!function_5b9da701(var_3e94206a))
			{
				var_9114f7eb = var_3e94206a;
				var_74952a22++;
			}
			var_42bbdeba++;
		}
	}
	if(var_42bbdeba > 1 && var_74952a22 == 1)
	{
		return var_9114f7eb;
	}
	return undefined;
}

/*
	Name: function_1111b90a
	Namespace: namespace_2282eece
	Checksum: 0xFE3E7A7E
	Offset: 0x3510
	Size: 0x1A3
	Parameters: 0
	Flags: None
*/
function function_1111b90a()
{
	if(level.var_de12b72f)
	{
		if(function_339428ba())
		{
			[[level.var_e0db18e8]]("all");
			return 1;
		}
		if(!isdefined(level.var_e0db18e8))
		{
			var_718021e5 = function_4f9a4c7f();
			if(isdefined(var_718021e5))
			{
				[[level.var_a8cf0ca0]](var_718021e5);
				return 1;
			}
			break;
		}
		foreach(var_3e94206a in level.var_e7a38025)
		{
			if(function_5b9da701(var_3e94206a))
			{
				[[level.var_e0db18e8]](var_3e94206a);
				return 1;
			}
		}
	}
	else if(function_aa2e3925() == 0 && function_5a5df82f() == 0 && level.var_7af77b4f > 1)
	{
		[[level.var_e0db18e8]]("all");
		return 1;
	}
	return 0;
}

/*
	Name: function_659a9809
	Namespace: namespace_2282eece
	Checksum: 0x97DADFB5
	Offset: 0x36C0
	Size: 0x4D
	Parameters: 1
	Flags: None
*/
function function_659a9809(var_3e94206a)
{
	return level.var_f062352d[var_3e94206a] > 1 && level.var_c2f0038d[var_3e94206a] == 1 && level.var_70d9f547[var_3e94206a] == 1;
}

/*
	Name: function_cd299f87
	Namespace: namespace_2282eece
	Checksum: 0x629E97DD
	Offset: 0x3718
	Size: 0x11B
	Parameters: 0
	Flags: None
*/
function function_cd299f87()
{
	if(level.var_de12b72f)
	{
		foreach(var_3e94206a in level.var_e7a38025)
		{
			if(function_659a9809(var_3e94206a))
			{
				[[level.var_4abe31c7]](var_3e94206a);
				return 1;
			}
		}
	}
	else if(function_aa2e3925() == 1 && function_5a5df82f() == 1 && level.var_7af77b4f > 1)
	{
		[[level.var_4abe31c7]]("all");
		return 1;
	}
	return 0;
}

/*
	Name: function_3e0aac29
	Namespace: namespace_2282eece
	Checksum: 0x3735117B
	Offset: 0x3840
	Size: 0x35
	Parameters: 1
	Flags: None
*/
function function_3e0aac29(var_3e94206a)
{
	return level.var_1aa7ca25[var_3e94206a] && level.var_c2f0038d[var_3e94206a] == level.var_83a18a40[var_3e94206a];
}

/*
	Name: function_c1a6930
	Namespace: namespace_2282eece
	Checksum: 0x338AD468
	Offset: 0x3880
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_c1a6930()
{
	foreach(var_3e94206a in level.var_e7a38025)
	{
		if(!function_3e0aac29(var_3e94206a))
		{
			return 0;
		}
	}
	return 1;
}

/*
	Name: function_3eec45b4
	Namespace: namespace_2282eece
	Checksum: 0x3758906B
	Offset: 0x3920
	Size: 0x16B
	Parameters: 0
	Flags: None
*/
function function_3eec45b4()
{
	if(!isdefined(level.var_f8e2a6ea))
	{
		return;
	}
	if(level.var_de12b72f)
	{
		if(function_c1a6930())
		{
			[[level.var_f8e2a6ea]]("all");
			return 1;
		}
		foreach(var_3e94206a in level.var_e7a38025)
		{
			if(function_3e0aac29(var_3e94206a))
			{
				[[level.var_f8e2a6ea]](var_3e94206a);
				return 1;
			}
		}
	}
	else
	{
		var_2ebe0111 = function_5eacd238();
		if(var_2ebe0111 > 0 && function_aa2e3925() == var_2ebe0111 && level.var_7af77b4f > 1)
		{
			[[level.var_f8e2a6ea]]("all");
			return 1;
		}
	}
	return 0;
}

/*
	Name: function_56154a57
	Namespace: namespace_2282eece
	Checksum: 0x64426AF
	Offset: 0x3A98
	Size: 0x1F7
	Parameters: 0
	Flags: None
*/
function function_56154a57()
{
	/#
		if(function_4bd0142f("Dev Block strings are not supported") == 1)
		{
			return;
		}
	#/
	if(level.var_5d406297 || level.var_1d0304c || level.var_bb9b39ad && !level.var_266be277)
	{
		if(level.var_de12b72f)
		{
			if(!level.var_71945be3)
			{
				if(game["state"] == "playing" && function_c64c7a91())
				{
					return;
				}
			}
			else if(function_3ffb6ce1())
			{
				level.var_71945be3 = 0;
				level notify("hash_577494dc");
			}
		}
		else if(!level.var_71945be3)
		{
			if(namespace_82b91a51::function_f97020bf() == 1 && level.var_7af77b4f > 1)
			{
				thread [[level.var_f5732ef]]();
				return;
			}
		}
		else if(namespace_82b91a51::function_f97020bf() > 1)
		{
			level.var_71945be3 = 0;
			level notify("hash_577494dc");
		}
	}
	if(!level.var_38a6bf87 && !level.var_e782fb64 && !level.var_8e73036d)
	{
		return;
	}
	if(level.var_266be277)
	{
		return;
	}
	if(level.var_38a6bf87)
	{
		function_4497fd4e();
	}
	if(function_1111b90a())
	{
		return;
	}
	if(function_cd299f87())
	{
		return;
	}
	if(function_3eec45b4())
	{
		return;
	}
}

/*
	Name: function_2a5afb0f
	Namespace: namespace_2282eece
	Checksum: 0xEC424636
	Offset: 0x3C98
	Size: 0x383
	Parameters: 0
	Flags: None
*/
function function_2a5afb0f()
{
	var_a2ceaf69 = namespace_724a4794::function_6aadf29c("objective", 1.5);
	var_a2ceaf69 namespace_724a4794::function_1e912b73("CENTER", "CENTER", 0, -40);
	var_a2ceaf69.var_4d19365 = 1001;
	var_a2ceaf69 function_f6181aca(game["strings"]["waiting_for_teams"]);
	var_a2ceaf69.var_79e0f792 = 0;
	var_a2ceaf69.var_5773c805 = 1;
	function_f9bf27f3();
	var_a2ceaf69 function_f6181aca(game["strings"]["match_starting_in"]);
	var_2a5afb0f = namespace_724a4794::function_6aadf29c("big", 2.2);
	var_2a5afb0f namespace_724a4794::function_1e912b73("CENTER", "CENTER", 0, 0);
	var_2a5afb0f.var_4d19365 = 1001;
	var_2a5afb0f.var_d900369a = (1, 1, 0);
	var_2a5afb0f.var_79e0f792 = 0;
	var_2a5afb0f.var_5773c805 = 1;
	var_2a5afb0f namespace_724a4794::function_1ad5c13d();
	var_ccef27dd = function_b6b79a0(level.var_650bf6e0);
	if(var_ccef27dd >= 2)
	{
		while(var_ccef27dd > 0 && !level.var_6b0d921)
		{
			var_2a5afb0f function_ee69b16e(var_ccef27dd);
			var_2a5afb0f thread namespace_724a4794::function_5e2578bc(level);
			if(var_ccef27dd == 2)
			{
				function_6a90da04(function_6f1ebe57("mapname"), 3);
			}
			var_ccef27dd--;
			foreach(var_5dc5e20a in level.var_2395e945)
			{
				var_5dc5e20a function_8a20e55d("uin_start_count_down");
			}
			wait(1);
		}
	}
	else
	{
		function_6a90da04(function_6f1ebe57("mapname"), 1);
	}
	var_2a5afb0f namespace_724a4794::function_9c3abbf4();
	var_a2ceaf69 namespace_724a4794::function_9c3abbf4();
}

/*
	Name: function_ba0bf416
	Namespace: namespace_2282eece
	Checksum: 0xDAA84BA5
	Offset: 0x4028
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_ba0bf416()
{
	function_6a90da04(function_6f1ebe57("mapname"), 0);
}

/*
	Name: function_3461a893
	Namespace: namespace_2282eece
	Checksum: 0x7BDD2D09
	Offset: 0x4068
	Size: 0x75
	Parameters: 2
	Flags: None
*/
function function_3461a893(var_3e94206a, var_60db70fa)
{
	if(var_60db70fa - level.var_15016852[var_3e94206a] > level.var_310b4cab[var_3e94206a] * 1000)
	{
		level notify("wave_respawn_" + var_3e94206a);
		level.var_15016852[var_3e94206a] = var_60db70fa;
		level.var_24ee2d5a[var_3e94206a] = 0;
	}
}

/*
	Name: function_e337eae6
	Namespace: namespace_2282eece
	Checksum: 0x642E5475
	Offset: 0x40E8
	Size: 0xCF
	Parameters: 0
	Flags: None
*/
function function_e337eae6()
{
	level endon("hash_c8ab51de");
	while(game["state"] == "playing")
	{
		var_60db70fa = GetTime();
		foreach(var_3e94206a in level.var_e7a38025)
		{
			function_3461a893(var_3e94206a, var_60db70fa);
		}
		wait(0.05);
	}
}

/*
	Name: function_a0b93971
	Namespace: namespace_2282eece
	Checksum: 0x656A7C3B
	Offset: 0x41C0
	Size: 0xA1
	Parameters: 0
	Flags: None
*/
function function_a0b93971()
{
	var_83f8f3ec = namespace_82b91a51::function_5e770196();
	/#
		if(function_4bd0142f("Dev Block strings are not supported") == 1 || function_4bd0142f("Dev Block strings are not supported") == 1)
		{
			return 0;
		}
	#/
	if(isdefined(var_83f8f3ec) && !var_83f8f3ec.var_b0c19313 && !isdefined(var_83f8f3ec.var_691143a))
	{
		return 1;
	}
	return 0;
}

/*
	Name: function_d1d6cfbf
	Namespace: namespace_2282eece
	Checksum: 0x87179DD4
	Offset: 0x4270
	Size: 0x53
	Parameters: 3
	Flags: None
*/
function function_d1d6cfbf(var_d6356e96, var_94261db6, var_2461863f)
{
	self function_ab8716a0("gameHistory", var_d6356e96, "modeHistory", var_94261db6, var_2461863f, 1);
}

/*
	Name: function_12eac852
	Namespace: namespace_2282eece
	Checksum: 0xD86BC911
	Offset: 0x42D0
	Size: 0x53
	Parameters: 3
	Flags: None
*/
function function_12eac852(var_d6356e96, var_94261db6, var_2461863f)
{
	self function_8f67433b("gameHistory", var_d6356e96, "modeHistory", var_94261db6, var_2461863f, 1);
}

/*
	Name: function_c2b354fb
	Namespace: namespace_2282eece
	Checksum: 0x75C899C6
	Offset: 0x4330
	Size: 0x169
	Parameters: 0
	Flags: None
*/
function function_c2b354fb()
{
	var_ae273d25 = self.var_44fb8955["team"];
	var_f1242439 = function_a7dca17e(var_ae273d25);
	var_3b0f5078 = 0;
	foreach(var_3e94206a in level.var_e7a38025)
	{
		if(var_3e94206a == var_ae273d25)
		{
			continue;
		}
		var_3b0f5078 = var_3b0f5078 + function_a7dca17e(var_3e94206a);
	}
	if(level.var_e7a38025.size > 1)
	{
		var_3b0f5078 = var_3b0f5078 / level.var_e7a38025.size - 1;
	}
	if(var_3b0f5078 != 0)
	{
		return function_33724181(var_f1242439) / function_33724181(var_3b0f5078);
	}
	return var_f1242439;
}

/*
	Name: function_4f9a094d
	Namespace: namespace_2282eece
	Checksum: 0x599E2635
	Offset: 0x44A8
	Size: 0x8D
	Parameters: 0
	Flags: None
*/
function function_4f9a094d()
{
	var_dec0feaf = -999999999;
	for(var_5e76f0af = 0; var_5e76f0af < level.var_2395e945.size; var_5e76f0af++)
	{
		var_5dc5e20a = level.var_2395e945[var_5e76f0af];
		if(var_5dc5e20a.var_f1242439 > var_dec0feaf)
		{
			var_dec0feaf = var_5dc5e20a.var_f1242439;
		}
	}
	return var_dec0feaf;
}

/*
	Name: function_dffd2d7e
	Namespace: namespace_2282eece
	Checksum: 0xA7489011
	Offset: 0x4540
	Size: 0xB1
	Parameters: 1
	Flags: None
*/
function function_dffd2d7e(var_f1242439)
{
	var_dec0feaf = -999999999;
	for(var_5e76f0af = 0; var_5e76f0af < level.var_2395e945.size; var_5e76f0af++)
	{
		var_5dc5e20a = level.var_2395e945[var_5e76f0af];
		if(var_5dc5e20a.var_f1242439 >= var_f1242439)
		{
			continue;
		}
		if(var_5dc5e20a.var_f1242439 > var_dec0feaf)
		{
			var_dec0feaf = var_5dc5e20a.var_f1242439;
		}
	}
	return var_dec0feaf;
}

/*
	Name: function_4bae177b
	Namespace: namespace_2282eece
	Checksum: 0xEF8F83CF
	Offset: 0x4600
	Size: 0x8B5
	Parameters: 1
	Flags: None
*/
function function_4bae177b(var_f49bab78)
{
	/#
		if(function_4bd0142f("Dev Block strings are not supported") == 1)
		{
			return;
		}
	#/
	for(var_5e76f0af = 0; var_5e76f0af < level.var_2395e945.size; var_5e76f0af++)
	{
		var_5dc5e20a = level.var_2395e945[var_5e76f0af];
		var_803a2b20 = var_5dc5e20a.var_ec0b278c - var_5dc5e20a.var_add55f80;
		if(var_5dc5e20a.var_44fb8955["cur_kill_streak"] > var_5dc5e20a.var_44fb8955["best_kill_streak"])
		{
			var_5dc5e20a.var_44fb8955["best_kill_streak"] = var_5dc5e20a.var_44fb8955["cur_kill_streak"];
		}
		if(level.var_5d406297)
		{
			var_5dc5e20a namespace_fe5e4926::function_2eb5e93("privateMatch", 0);
		}
		else
		{
			var_5dc5e20a namespace_fe5e4926::function_2eb5e93("privateMatch", 1);
		}
		var_5dc5e20a namespace_fe5e4926::function_2eb5e93("demoFileID", function_9c48e5f3());
		if(isdefined(var_f49bab78) && var_f49bab78 == var_5dc5e20a.var_44fb8955["team"])
		{
			var_5dc5e20a namespace_fe5e4926::function_2eb5e93("matchWon", 1);
		}
		else
		{
			var_5dc5e20a namespace_fe5e4926::function_2eb5e93("matchWon", 0);
		}
		var_a4ad5434 = 0;
		var_1e9fcf9e = 0;
		var_94d83f9f = 0;
		for(var_5e76f0af = 0; var_5e76f0af < level.var_2395e945.size; var_5e76f0af++)
		{
			var_5dc5e20a namespace_fe5e4926::function_3ec1e50f(var_5e76f0af, "isActive", 1);
			var_5dc5e20a namespace_fe5e4926::function_3ec1e50f(var_5e76f0af, "name", level.var_2395e945[var_5e76f0af].var_4be20d44);
			var_5dc5e20a namespace_fe5e4926::function_3ec1e50f(var_5e76f0af, "xuid", level.var_2395e945[var_5e76f0af] function_f49dd4fd());
			var_5dc5e20a namespace_fe5e4926::function_3ec1e50f(var_5e76f0af, "prvRank", function_b6b79a0(level.var_2395e945[var_5e76f0af].var_44fb8955["rank"]));
			var_5dc5e20a namespace_fe5e4926::function_3ec1e50f(var_5e76f0af, "curRank", level.var_2395e945[var_5e76f0af] function_84368297("playerstatslist", "rank", "StatValue"));
			var_5dc5e20a namespace_fe5e4926::function_3ec1e50f(var_5e76f0af, "prvXP", function_b6b79a0(level.var_2395e945[var_5e76f0af].var_44fb8955["rankxp"]));
			var_5dc5e20a namespace_fe5e4926::function_3ec1e50f(var_5e76f0af, "curXP", function_b6b79a0(level.var_2395e945[var_5e76f0af] function_84368297("playerstatslist", "rankxp", "StatValue")));
			var_5dc5e20a namespace_fe5e4926::function_3ec1e50f(var_5e76f0af, "deaths", level.var_2395e945[var_5e76f0af].var_add55f80);
			var_5dc5e20a namespace_fe5e4926::function_3ec1e50f(var_5e76f0af, "kills", level.var_2395e945[var_5e76f0af].var_ec0b278c);
			if(level.var_2395e945[var_5e76f0af].var_ec0b278c > level.var_2395e945[var_94d83f9f].var_ec0b278c)
			{
				var_94d83f9f = var_5e76f0af;
			}
			var_5dc5e20a namespace_fe5e4926::function_3ec1e50f(var_5e76f0af, "assists", level.var_2395e945[var_5e76f0af].var_e69b4157);
			if(level.var_2395e945[var_5e76f0af].var_e69b4157 > level.var_2395e945[var_1e9fcf9e].var_e69b4157)
			{
				var_1e9fcf9e = var_5e76f0af;
			}
			var_5dc5e20a namespace_fe5e4926::function_3ec1e50f(var_5e76f0af, "revives", level.var_2395e945[var_5e76f0af].var_a433a6cd);
			if(level.var_2395e945[var_5e76f0af].var_a433a6cd > level.var_2395e945[var_a4ad5434].var_a433a6cd)
			{
				var_a4ad5434 = var_5e76f0af;
			}
		}
		for(var_5e76f0af = 0; var_5e76f0af < level.var_2395e945.size; var_5e76f0af++)
		{
			var_5dc5e20a namespace_fe5e4926::function_ae338cde(var_5e76f0af, 0, var_94d83f9f);
			var_5dc5e20a namespace_fe5e4926::function_ae338cde(var_5e76f0af, 1, var_1e9fcf9e);
			var_5dc5e20a namespace_fe5e4926::function_ae338cde(var_5e76f0af, 2, var_a4ad5434);
		}
		var_fa9bfa35 = var_5dc5e20a function_c2b354fb();
		var_8bdad12a = function_67161136(var_5dc5e20a);
		if(var_8bdad12a < 0)
		{
			var_8bdad12a = level.var_2395e945.size;
		}
		var_5dc5e20a function_ed9310cb(4, var_5dc5e20a.var_ec0b278c, var_5dc5e20a.var_add55f80, var_5dc5e20a.var_f1242439, var_8bdad12a, var_fa9bfa35);
		var_1d893cda = level.var_1d893cda["all"];
		for(var_3b277d0a = 0; var_3b277d0a < var_1d893cda.size; var_3b277d0a++)
		{
			if(level.var_1d893cda["all"][var_3b277d0a] == var_5dc5e20a)
			{
				function_6e910ee6(var_5dc5e20a, "position", var_3b277d0a);
			}
		}
		var_5dc5e20a namespace_fe5e4926::function_2eb5e93("valid", 1);
		var_5dc5e20a namespace_fe5e4926::function_2eb5e93("viewed", 0);
		if(isdefined(var_5dc5e20a.var_44fb8955["matchesPlayedStatsTracked"]))
		{
			var_d6356e96 = namespace_82b91a51::function_2647b1d();
			var_5dc5e20a function_d1d6cfbf(var_d6356e96, "played", "completed");
			if(isdefined(var_5dc5e20a.var_44fb8955["matchesHostedStatsTracked"]))
			{
				var_5dc5e20a function_d1d6cfbf(var_d6356e96, "hosted", "completed");
				var_5dc5e20a.var_44fb8955["matchesHostedStatsTracked"] = undefined;
			}
			var_5dc5e20a.var_44fb8955["matchesPlayedStatsTracked"] = undefined;
		}
	}
}

/*
	Name: function_666632bb
	Namespace: namespace_2282eece
	Checksum: 0x1A2DF35C
	Offset: 0x4EC0
	Size: 0x1C9
	Parameters: 0
	Flags: None
*/
function function_666632bb()
{
	var_fa9bfa35 = self function_c2b354fb();
	var_8bdad12a = function_67161136(self);
	if(var_8bdad12a < 0)
	{
		var_8bdad12a = level.var_2395e945.size;
	}
	/#
		/#
			namespace_33b293fd::function_a7ee953(isdefined(self.var_ec0b278c));
		#/
		/#
			namespace_33b293fd::function_a7ee953(isdefined(self.var_add55f80));
		#/
		/#
			namespace_33b293fd::function_a7ee953(isdefined(self.var_f1242439));
		#/
		/#
			namespace_33b293fd::function_a7ee953(isdefined(var_8bdad12a));
		#/
		/#
			namespace_33b293fd::function_a7ee953(isdefined(var_fa9bfa35));
		#/
	#/
	self function_ed9310cb(2, self.var_ec0b278c, self.var_add55f80, self.var_f1242439, var_8bdad12a, var_fa9bfa35);
	if(isdefined(self.var_44fb8955["matchesPlayedStatsTracked"]))
	{
		var_d6356e96 = namespace_82b91a51::function_2647b1d();
		self function_d1d6cfbf(var_d6356e96, "played", "kicked");
		self.var_44fb8955["matchesPlayedStatsTracked"] = undefined;
	}
	function_9a7ed193(self);
	wait(1);
}

/*
	Name: function_1effe5af
	Namespace: namespace_2282eece
	Checksum: 0x53D11759
	Offset: 0x5098
	Size: 0x193
	Parameters: 0
	Flags: None
*/
function function_1effe5af()
{
	var_fa9bfa35 = self function_c2b354fb();
	var_8bdad12a = function_67161136(self);
	if(var_8bdad12a < 0)
	{
		var_8bdad12a = level.var_2395e945.size;
	}
	self function_ed9310cb(3, self.var_ec0b278c, self.var_add55f80, self.var_f1242439, var_8bdad12a, var_fa9bfa35);
	if(isdefined(self.var_44fb8955["matchesPlayedStatsTracked"]))
	{
		var_d6356e96 = namespace_82b91a51::function_2647b1d();
		self function_d1d6cfbf(var_d6356e96, "played", "quit");
		if(isdefined(self.var_44fb8955["matchesHostedStatsTracked"]))
		{
			self function_d1d6cfbf(var_d6356e96, "hosted", "quit");
			self.var_44fb8955["matchesHostedStatsTracked"] = undefined;
		}
		self.var_44fb8955["matchesPlayedStatsTracked"] = undefined;
	}
	function_9a7ed193(self);
	if(!self function_e025daa7())
	{
		wait(1);
	}
}

/*
	Name: function_d87e5c3e
	Namespace: namespace_2282eece
	Checksum: 0x313257F9
	Offset: 0x5238
	Size: 0x2A3
	Parameters: 2
	Flags: None
*/
function function_d87e5c3e(var_f49bab78, var_10ec1005)
{
	if(level.var_1ebbb333)
	{
		if(level.var_de12b72f)
		{
			if(var_f49bab78 == "tie")
			{
				namespace_93ed41ec::function_e2be394("round_result", level.var_37f36656["neutral"], level.var_37f36656["neutral"]);
			}
			else
			{
				namespace_93ed41ec::function_e2be394("round_result", level.var_37f36656[var_f49bab78], level.var_37f36656["neutral"]);
			}
		}
		function_9d2f1d78("cg_drawSpectatorMessages", 0);
		var_2395e945 = level.var_2395e945;
		for(var_5e76f0af = 0; var_5e76f0af < var_2395e945.size; var_5e76f0af++)
		{
			var_5dc5e20a = var_2395e945[var_5e76f0af];
			if(!namespace_82b91a51::function_b8cd89f0())
			{
				var_5dc5e20a notify("hash_950ee516");
			}
			if(!isdefined(var_5dc5e20a.var_44fb8955["team"]))
			{
				var_5dc5e20a [[level.var_8d9835ba]](1);
				continue;
			}
			if(level.var_1d0304c)
			{
				if(level.var_de12b72f)
				{
					var_5dc5e20a thread [[level.var_efea8a44]](var_f49bab78, 1, var_10ec1005);
				}
				else
				{
					var_5dc5e20a thread [[level.var_b60ac87b]](var_f49bab78, var_10ec1005);
				}
			}
			else if(level.var_de12b72f)
			{
				var_5dc5e20a thread [[level.var_76317440]](var_f49bab78, 1, var_10ec1005);
			}
			else
			{
				var_5dc5e20a thread [[level.var_2a30ec71]](var_f49bab78, 1, var_10ec1005);
			}
			var_5dc5e20a namespace_82b91a51::function_c72856fc(0);
			var_5dc5e20a function_1b947e2a("g_compassShowEnemies", 0);
		}
	}
	else if(namespace_82b91a51::function_b8cd89f0())
	{
		function_fc5aa905(level.var_e9b1d7bf, 0);
	}
	else
	{
		function_fc5aa905(level.var_e9b1d7bf, 1);
	}
}

/*
	Name: function_fefc8b03
	Namespace: namespace_2282eece
	Checksum: 0x5783E69D
	Offset: 0x54E8
	Size: 0x22B
	Parameters: 2
	Flags: None
*/
function function_fefc8b03(var_f49bab78, var_10ec1005)
{
	var_3a7dfff5 = level.var_41baadf1;
	if(var_3a7dfff5 == "halftime")
	{
		if(isdefined(level.var_6ddc90e3) && level.var_6ddc90e3)
		{
			var_3a7dfff5 = "overtime";
		}
		else if(level.var_fa404b24)
		{
			if(game["roundsplayed"] * 2 == level.var_fa404b24)
			{
				var_3a7dfff5 = "halftime";
			}
			else
			{
				var_3a7dfff5 = "intermission";
			}
		}
		else if(level.var_e300e83a)
		{
			if(game["roundsplayed"] == level.var_e300e83a - 1)
			{
				var_3a7dfff5 = "halftime";
			}
			else
			{
				var_3a7dfff5 = "intermission";
			}
		}
		else
		{
			var_3a7dfff5 = "intermission";
		}
	}
	function_d299f7a6("EveryoneHearsEveryone", 1);
	var_2395e945 = level.var_2395e945;
	for(var_5e76f0af = 0; var_5e76f0af < var_2395e945.size; var_5e76f0af++)
	{
		var_5dc5e20a = var_2395e945[var_5e76f0af];
		if(!isdefined(var_5dc5e20a.var_44fb8955["team"]))
		{
			var_5dc5e20a [[level.var_8d9835ba]](1);
			continue;
		}
		if(level.var_1d0304c)
		{
			var_5dc5e20a thread [[level.var_efea8a44]](var_3a7dfff5, 1, level.var_4dde7545);
		}
		else
		{
			var_5dc5e20a thread [[level.var_76317440]](var_3a7dfff5, 0, level.var_4dde7545);
		}
		var_5dc5e20a namespace_82b91a51::function_c72856fc(0);
	}
	function_fc5aa905(level.var_4e993783, 0);
}

/*
	Name: function_2a88a806
	Namespace: namespace_2282eece
	Checksum: 0x1B7544AC
	Offset: 0x5720
	Size: 0x2E3
	Parameters: 3
	Flags: None
*/
function function_2a88a806(var_f49bab78, var_10ec1005, var_b091fbbb)
{
	function_d299f7a6("EveryoneHearsEveryone", 1);
	function_9d2f1d78("cg_drawSpectatorMessages", 0);
	if(level.var_de12b72f)
	{
		if(var_f49bab78 == "tie")
		{
			namespace_93ed41ec::function_e2be394("game_result", level.var_37f36656["neutral"], level.var_37f36656["neutral"]);
		}
		else
		{
			namespace_93ed41ec::function_e2be394("game_result", level.var_37f36656[var_f49bab78], level.var_37f36656["neutral"]);
		}
	}
	var_2395e945 = level.var_2395e945;
	for(var_5e76f0af = 0; var_5e76f0af < var_2395e945.size; var_5e76f0af++)
	{
		var_5dc5e20a = var_2395e945[var_5e76f0af];
		if(!isdefined(var_5dc5e20a.var_44fb8955["team"]))
		{
			var_5dc5e20a [[level.var_8d9835ba]](1);
			continue;
		}
		if(level.var_de12b72f)
		{
			if(isdefined(level.var_76317440))
			{
				var_5dc5e20a thread [[level.var_76317440]](var_f49bab78, 0, var_10ec1005);
			}
		}
		else if(isdefined(level.var_2a30ec71))
		{
			var_5dc5e20a thread [[level.var_2a30ec71]](var_f49bab78, 0, var_10ec1005);
		}
		var_5dc5e20a namespace_82b91a51::function_c72856fc(0);
		var_5dc5e20a function_1b947e2a("g_compassShowEnemies", 0);
	}
	if(level.var_de12b72f)
	{
		var_2395e945 = level.var_2395e945;
		for(var_5e76f0af = 0; var_5e76f0af < var_2395e945.size; var_5e76f0af++)
		{
			var_5dc5e20a = var_2395e945[var_5e76f0af];
			var_3e94206a = var_5dc5e20a.var_44fb8955["team"];
		}
	}
	else if(isdefined(level.var_78a27045))
	{
		level thread [[level.var_78a27045]](var_f49bab78, var_10ec1005, var_b091fbbb);
	}
	function_3aedd0a2("global_session_epilogs", "reason %s", var_10ec1005);
	function_fc5aa905(level.var_fd96027a, 1);
}

/*
	Name: function_ccecefd3
	Namespace: namespace_2282eece
	Checksum: 0x5FD324F5
	Offset: 0x5A10
	Size: 0xCF
	Parameters: 0
	Flags: None
*/
function function_ccecefd3()
{
	if(isdefined(level.var_10ec1005))
	{
		return level.var_10ec1005;
	}
	if(namespace_82b91a51::function_64b68f01() || namespace_82b91a51::function_a77dc09f())
	{
		return game["strings"]["round_limit_reached"];
	}
	else if(namespace_82b91a51::function_418b6a33())
	{
		return game["strings"]["score_limit_reached"];
	}
	if(level.var_73353c45)
	{
		if(level.var_db7e784b)
		{
			return &"MP_HOST_ENDED_GAME";
		}
		else
		{
			return &"MP_ENDED_GAME";
		}
	}
	return game["strings"]["time_limit_reached"];
}

/*
	Name: function_3de843e6
	Namespace: namespace_2282eece
	Checksum: 0xA0BBFDB8
	Offset: 0x5AE8
	Size: 0x69
	Parameters: 0
	Flags: None
*/
function function_3de843e6()
{
	var_2395e945 = level.var_2395e945;
	for(var_5e76f0af = 0; var_5e76f0af < var_2395e945.size; var_5e76f0af++)
	{
		var_5dc5e20a = var_2395e945[var_5e76f0af];
		var_5dc5e20a notify("hash_ed2b13");
	}
}

/*
	Name: function_26850b50
	Namespace: namespace_2282eece
	Checksum: 0x5D81E6BA
	Offset: 0x5B60
	Size: 0x25B
	Parameters: 2
	Flags: None
*/
function function_26850b50(var_f49bab78, var_10ec1005)
{
	if(!namespace_82b91a51::function_5b94904d())
	{
		function_d87e5c3e(var_f49bab78, var_10ec1005);
		namespace_c46f5728::function_ea1bb317();
		if(!namespace_82b91a51::function_b8cd89f0())
		{
			if(function_7ccf891d())
			{
				function_fefc8b03(var_f49bab78, var_10ec1005);
			}
			if(isdefined(level.var_6ddc90e3) && level.var_6ddc90e3)
			{
				if(!isdefined(game["overtime_round"]))
				{
					game["overtime_round"] = 1;
				}
				else
				{
					game["overtime_round"]++;
				}
			}
			function_d299f7a6("DeadChatWithDead", level.var_56421277.var_2bb7d85b);
			function_d299f7a6("DeadChatWithTeam", level.var_56421277.var_510fec6a);
			function_d299f7a6("DeadHearTeamLiving", level.var_56421277.var_e511471f);
			function_d299f7a6("DeadHearAllLiving", level.var_56421277.var_5edcbe07);
			function_d299f7a6("EveryoneHearsEveryone", level.var_56421277.var_7b692416);
			function_d299f7a6("DeadHearKiller", level.var_56421277.var_cf617cd2);
			function_d299f7a6("KillersHearVictim", level.var_56421277.var_c226b8ef);
			game["state"] = "playing";
			level.var_ca3202d["bc"] = function_92a88da3("allowBattleChatter");
			function_764c8221(1);
			return 1;
		}
	}
	return 0;
}

/*
	Name: function_fe2db310
	Namespace: namespace_2282eece
	Checksum: 0xDB32B331
	Offset: 0x5DC8
	Size: 0x341
	Parameters: 0
	Flags: None
*/
function function_fe2db310()
{
	if(level.var_5d406297 || level.var_1d0304c)
	{
		var_1d893cda = level.var_1d893cda["all"];
		var_e09fc4e4 = function_95d0212b(3, var_1d893cda.size);
		for(var_5e76f0af = 0; var_5e76f0af < var_e09fc4e4; var_5e76f0af++)
		{
			if(level.var_1d893cda["all"][var_5e76f0af].var_f1242439)
			{
				if(!var_5e76f0af)
				{
					level.var_1d893cda["all"][var_5e76f0af] function_1ba616a5("TOPPLAYER", 1);
					level.var_1d893cda["all"][var_5e76f0af] notify("hash_77d2de15");
				}
				else
				{
					level.var_1d893cda["all"][var_5e76f0af] notify("hash_654bc6be");
				}
				level.var_1d893cda["all"][var_5e76f0af] function_1ba616a5("TOP3", 1);
				level.var_1d893cda["all"][var_5e76f0af] function_aa67c13b("TOP3ANY", 1);
				if(level.var_50527ffe)
				{
					level.var_1d893cda["all"][var_5e76f0af] function_aa67c13b("TOP3ANY_HC", 1);
				}
				if(level.var_c906d2a3)
				{
					level.var_1d893cda["all"][var_5e76f0af] function_aa67c13b("TOP3ANY_MULTITEAM", 1);
				}
				level.var_1d893cda["all"][var_5e76f0af] notify("hash_e3f895a5");
			}
		}
		for(var_5e76f0af = 3; var_5e76f0af < var_1d893cda.size; var_5e76f0af++)
		{
			level.var_1d893cda["all"][var_5e76f0af] notify("hash_1fc5ff08");
			level.var_1d893cda["all"][var_5e76f0af] notify("hash_654bc6be");
		}
		if(level.var_de12b72f)
		{
			foreach(var_3e94206a in level.var_e7a38025)
			{
				function_cc3ae2fc(var_3e94206a);
			}
		}
	}
}

/*
	Name: function_cc3ae2fc
	Namespace: namespace_2282eece
	Checksum: 0xC4B6BD4F
	Offset: 0x6118
	Size: 0x175
	Parameters: 1
	Flags: None
*/
function function_cc3ae2fc(var_3e94206a)
{
	var_f43a8455 = level.var_1d893cda[var_3e94206a];
	var_d73408dd = function_95d0212b(3, var_f43a8455.size);
	if(var_f43a8455.size < 5)
	{
		return;
	}
	for(var_5e76f0af = 0; var_5e76f0af < var_d73408dd; var_5e76f0af++)
	{
		if(var_f43a8455[var_5e76f0af].var_f1242439)
		{
			var_f43a8455[var_5e76f0af] function_aa67c13b("TOP3TEAM", 1);
			var_f43a8455[var_5e76f0af] function_aa67c13b("TOP3ANY", 1);
			if(level.var_50527ffe)
			{
				var_f43a8455[var_5e76f0af] function_aa67c13b("TOP3ANY_HC", 1);
			}
			if(level.var_c906d2a3)
			{
				var_f43a8455[var_5e76f0af] function_aa67c13b("TOP3ANY_MULTITEAM", 1);
			}
			var_f43a8455[var_5e76f0af] function_1ba616a5("TOP3TEAM", 1);
		}
	}
}

/*
	Name: function_e20f20d1
	Namespace: namespace_2282eece
	Checksum: 0x83EA325B
	Offset: 0x6298
	Size: 0x79
	Parameters: 0
	Flags: None
*/
function function_e20f20d1()
{
	if(!level.var_6d251637 || level.var_73353c45)
	{
		var_b0d9a04f = namespace_c46f5728::function_3c9bd810() / 1000;
		var_b0d9a04f = function_95d0212b(var_b0d9a04f, 1200);
	}
	else
	{
		var_b0d9a04f = level.var_6d251637 * 60;
	}
	return var_b0d9a04f;
}

/*
	Name: function_f8e35b5
	Namespace: namespace_2282eece
	Checksum: 0x93534FEC
	Offset: 0x6320
	Size: 0x6D
	Parameters: 1
	Flags: None
*/
function function_f8e35b5(var_f49bab78)
{
	var_2395e945 = level.var_2395e945;
	for(var_5e76f0af = 0; var_5e76f0af < var_2395e945.size; var_5e76f0af++)
	{
		namespace_b976075a::function_be51e5e1(var_2395e945[var_5e76f0af], var_f49bab78);
	}
}

/*
	Name: function_11bc1b62
	Namespace: namespace_2282eece
	Checksum: 0x7987EF4E
	Offset: 0x6398
	Size: 0x9A3
	Parameters: 3
	Flags: None
*/
function function_11bc1b62(var_f49bab78, var_10ec1005, var_b091fbbb)
{
	if(game["state"] == "postgame" || level.var_6b0d921)
	{
		return;
	}
	if(isdefined(level.var_257d1c47))
	{
		[[level.var_257d1c47]](var_f49bab78);
	}
	if(!isdefined(level.var_cdd3641c) || level.var_cdd3641c == 0)
	{
		function_6a90da04("mpOutro", 2);
	}
	function_9d2f1d78("cg_drawSpectatorMessages", 0);
	function_9d2f1d78("game_ended", 1);
	game["state"] = "postgame";
	level.var_37b8dc91 = GetTime();
	level.var_6b0d921 = 1;
	function_6c1294b8("g_gameEnded", 1);
	level.var_266be277 = 0;
	level notify("hash_c8ab51de");
	level.var_ca3202d = [];
	foreach(var_3e94206a in level.var_e7a38025)
	{
		game["lastroundscore"][var_3e94206a] = function_a7dca17e(var_3e94206a);
	}
	if(!isdefined(game["overtime_round"]) || namespace_82b91a51::function_b8cd89f0())
	{
		game["roundsplayed"]++;
		game["roundwinner"][game["roundsplayed"]] = var_f49bab78;
		if(level.var_de12b72f)
		{
			game["roundswon"][var_f49bab78]++;
		}
	}
	function_dc61703f(0);
	function_8509b2ab();
	function_dafe7166(var_f49bab78);
	var_2395e945 = level.var_2395e945;
	var_e22aebfa = GetTime();
	var_b0d9a04f = function_e20f20d1();
	function_d299f7a6("EveryoneHearsEveryone", 1);
	var_4a73bfbd = 0;
	if(namespace_82b91a51::function_5b94904d() || namespace_82b91a51::function_b8cd89f0())
	{
		var_4a73bfbd = 1;
	}
	for(var_5e76f0af = 0; var_5e76f0af < var_2395e945.size; var_5e76f0af++)
	{
		var_5dc5e20a = var_2395e945[var_5e76f0af];
		var_5dc5e20a namespace_b976075a::function_890f5017();
		var_5dc5e20a thread function_b1f3bc79(4);
		var_5dc5e20a function_628760b4();
		var_5dc5e20a namespace_88a69b2f::function_ebdcf8b2();
		var_5dc5e20a namespace_f996a5bc::function_93c4286e(var_e22aebfa);
		var_5dc5e20a function_ee01b9c(var_b0d9a04f, var_10ec1005, var_4a73bfbd);
		if(level.var_5d406297 || level.var_1d0304c || level.var_bb9b39ad && !var_5dc5e20a function_33d0d4d7())
		{
			if(level.var_bb9b39ad)
			{
				var_5dc5e20a function_8f67433b("AfterActionReportStats", "lobbyPopup", "leaguesummary");
				continue;
			}
			if(isdefined(var_5dc5e20a.var_3e85c2ee))
			{
				var_5dc5e20a function_8f67433b("AfterActionReportStats", "lobbyPopup", "promotion");
				continue;
			}
			var_5dc5e20a function_8f67433b("AfterActionReportStats", "lobbyPopup", "summary");
		}
	}
	namespace_ccb8d056::function_c1cdedfb("silent");
	namespace_29301e60::function_b1e1fd9c();
	thread namespace_f74b04eb::function_8183ce36(var_f49bab78);
	function_b0c6f02d(1, level.var_6c41e242);
	function_f8e35b5(var_f49bab78);
	function_e73290af("draw");
	namespace_b976075a::function_5637de0a();
	function_db4939d1();
	if(function_26850b50(var_f49bab78, var_10ec1005))
	{
		return;
	}
	if(!namespace_82b91a51::function_5b94904d())
	{
		if(isdefined(level.var_3fcd5617))
		{
			var_f49bab78 = [[level.var_3fcd5617]](var_f49bab78);
		}
		var_10ec1005 = function_ccecefd3();
	}
	function_e00edcbf(var_f49bab78, level.var_de12b72f);
	function_c00dcb58(var_f49bab78);
	function_fe2db310();
	thread namespace_f74b04eb::function_50f6f0de(var_f49bab78);
	level namespace_ce7c3ed5::function_7e61de2b(1);
	wait(0.3);
	if(!isdefined(level.var_8defbe41) || !level.var_8defbe41)
	{
		function_2a88a806(var_f49bab78, var_10ec1005, var_b091fbbb);
	}
	if(namespace_82b91a51::function_5b94904d())
	{
		namespace_c46f5728::function_ea1bb317();
	}
	level.var_4b93af95 = 1;
	namespace_29301e60::function_437ea181();
	thread function_4bae177b(var_f49bab78);
	function_9d2f1d78("disableIngameMenu", 1);
	foreach(var_5dc5e20a in var_2395e945)
	{
		var_5dc5e20a function_eb306581();
	}
	function_d299f7a6("EveryoneHearsEveryone", 1);
	var_2395e945 = level.var_2395e945;
	for(var_5e76f0af = 0; var_5e76f0af < var_2395e945.size; var_5e76f0af++)
	{
		var_5dc5e20a = var_2395e945[var_5e76f0af];
		function_6e910ee6(var_5dc5e20a, "presentAtEnd", 1);
		var_5dc5e20a notify("hash_ed2b13");
	}
	if(isdefined(level.var_a59e087e))
	{
		level thread [[level.var_a59e087e]]();
	}
	var_2395e945 = function_3f10449f();
	for(var_c957f6b6 = 0; var_c957f6b6 < var_2395e945.size; var_c957f6b6++)
	{
		var_2395e945[var_c957f6b6] function_1b947e2a("weapon_hud_visible", 0);
		var_2395e945[var_c957f6b6] function_74268ebd(1);
	}
	level notify("hash_e502d96");
	/#
		function_3bc5b442("Dev Block strings are not supported");
	#/
	if(isdefined(level.var_4c3d1a55))
	{
		[[level.var_4c3d1a55]]();
		level.var_4c3d1a55 = undefined;
	}
	var_2395e945 = function_3f10449f();
	for(var_c957f6b6 = 0; var_c957f6b6 < var_2395e945.size; var_c957f6b6++)
	{
		var_2395e945[var_c957f6b6] function_7198d073(0);
	}
	function_7d3cac7d(0);
}

/*
	Name: function_ee01b9c
	Namespace: namespace_2282eece
	Checksum: 0xA339347E
	Offset: 0x6D48
	Size: 0xBF
	Parameters: 3
	Flags: None
*/
function function_ee01b9c(var_b0d9a04f, var_35492f1b, var_1da937dd)
{
	var_c7bbb4d8 = function_67161136(self);
	var_c3876d3b = 0;
	if(isdefined(self.var_d066f1a3) && isdefined(self.var_d066f1a3["total"]))
	{
		var_c3876d3b = self.var_d066f1a3["total"];
		if(var_c3876d3b > var_b0d9a04f)
		{
			var_c3876d3b = var_b0d9a04f;
		}
	}
	var_eb07a0c7 = self function_f49dd4fd();
}

/*
	Name: function_fc5aa905
	Namespace: namespace_2282eece
	Checksum: 0x85D70CD0
	Offset: 0x6E10
	Size: 0x13
	Parameters: 2
	Flags: None
*/
function function_fc5aa905(var_f78f4b95, var_da8550d)
{
}

/*
	Name: function_b1f3bc79
	Namespace: namespace_2282eece
	Checksum: 0xB39336D5
	Offset: 0x6E30
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_b1f3bc79(var_60db70fa)
{
	self function_dc5518f(0, 128, 512, 4000, 6, 1.8);
}

/*
	Name: function_a6140b51
	Namespace: namespace_2282eece
	Checksum: 0xE19C1DE
	Offset: 0x6E78
	Size: 0x12F
	Parameters: 0
	Flags: None
*/
function function_a6140b51()
{
	if(isdefined(level.var_ee237f3f) && level.var_ee237f3f)
	{
		return;
	}
	if(game["state"] != "playing")
	{
		function_dc61703f(0);
		return;
	}
	if(level.var_6d251637 <= 0)
	{
		function_dc61703f(0);
		return;
	}
	if(level.var_35a23885)
	{
		function_dc61703f(0);
		return;
	}
	if(level.var_c8a2359f)
	{
		function_dc61703f(0);
		return;
	}
	if(!isdefined(level.var_a4ad846c))
	{
		return;
	}
	var_885895d1 = namespace_c46f5728::function_a5369db4();
	function_dc61703f(GetTime() + function_b6b79a0(var_885895d1));
	if(var_885895d1 > 0)
	{
		return;
	}
	[[level.var_fb734762]]();
}

/*
	Name: function_a78c417d
	Namespace: namespace_2282eece
	Checksum: 0xD2D1A752
	Offset: 0x6FB0
	Size: 0x99
	Parameters: 0
	Flags: None
*/
function function_a78c417d()
{
	foreach(var_3e94206a in level.var_e7a38025)
	{
		if(game["teamScores"][var_3e94206a] >= level.var_e300e83a)
		{
			return 0;
		}
	}
	return 1;
}

/*
	Name: function_33392f48
	Namespace: namespace_2282eece
	Checksum: 0x2FED31
	Offset: 0x7058
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_33392f48()
{
	if(game["state"] != "playing")
	{
		return 0;
	}
	if(level.var_e300e83a <= 0)
	{
		return 0;
	}
	if(level.var_de12b72f)
	{
		if(function_a78c417d())
		{
			return 0;
		}
	}
	else if(!function_65f192a6(self))
	{
		return 0;
	}
	if(self.var_246bf1cb < level.var_e300e83a)
	{
		return 0;
	}
	[[level.var_67d7b8a9]]();
}

/*
	Name: function_843e8b8a
	Namespace: namespace_2282eece
	Checksum: 0x1078E133
	Offset: 0x7108
	Size: 0x20D
	Parameters: 0
	Flags: None
*/
function function_843e8b8a()
{
	level endon("hash_c8ab51de");
	while(game["state"] == "playing")
	{
		var_fa404b24 = namespace_d73b9283::function_31931862(function_92a88da3("roundLimit"), level.var_d504a980, level.var_427c87de);
		if(var_fa404b24 != level.var_fa404b24)
		{
			level.var_fa404b24 = var_fa404b24;
			level notify("hash_daacf758");
		}
		var_6d251637 = [[level.var_c2deb19]]();
		if(var_6d251637 != level.var_6d251637)
		{
			level.var_6d251637 = var_6d251637;
			function_6c1294b8("ui_timelimit", level.var_6d251637);
			level notify("hash_fbbd88db");
		}
		thread function_a6140b51();
		var_e300e83a = namespace_d73b9283::function_31931862(function_92a88da3("scoreLimit"), level.var_a74a74fe, level.var_fa21e3c0);
		if(var_e300e83a != level.var_e300e83a)
		{
			level.var_e300e83a = var_e300e83a;
			function_6c1294b8("ui_scorelimit", level.var_e300e83a);
			level notify("hash_d9f1c12e");
		}
		thread function_33392f48();
		if(isdefined(level.var_a4ad846c))
		{
			var_30e0b999 = namespace_c46f5728::function_a5369db4();
			if(isdefined(var_30e0b999) && var_30e0b999 < 3000)
			{
				wait(0.1);
				continue;
			}
		}
		wait(1);
	}
}

/*
	Name: function_3cf22630
	Namespace: namespace_2282eece
	Checksum: 0x1AD228A6
	Offset: 0x7320
	Size: 0x1D5
	Parameters: 0
	Flags: None
*/
function function_3cf22630()
{
	var_a4e8111c = 0;
	var_fa9ec3b3 = level.var_1d893cda["all"].size;
	var_eb568523 = 0;
	for(var_c957f6b6 = 0; var_c957f6b6 < var_fa9ec3b3; var_c957f6b6++)
	{
		if(level.var_1d893cda["all"][var_c957f6b6] == self)
		{
			var_eb568523 = 1;
		}
		if(var_eb568523)
		{
			level.var_1d893cda["all"][var_c957f6b6] = level.var_1d893cda["all"][var_c957f6b6 + 1];
		}
	}
	if(!var_eb568523)
	{
		return;
	}
	level.var_1d893cda["all"][var_fa9ec3b3 - 1] = undefined;
	/#
		namespace_33b293fd::function_a7ee953(level.var_1d893cda["Dev Block strings are not supported"].size == var_fa9ec3b3 - 1);
	#/
	/#
		namespace_c46f5728::function_36f2a476();
	#/
	function_7277d032();
	if(level.var_de12b72f)
	{
		return;
	}
	var_fa9ec3b3 = level.var_1d893cda["all"].size;
	for(var_c957f6b6 = 0; var_c957f6b6 < var_fa9ec3b3; var_c957f6b6++)
	{
		var_5dc5e20a = level.var_1d893cda["all"][var_c957f6b6];
		var_5dc5e20a notify("hash_86364673");
	}
}

/*
	Name: function_8509b2ab
	Namespace: namespace_2282eece
	Checksum: 0xBD7F336C
	Offset: 0x7500
	Size: 0x37B
	Parameters: 0
	Flags: None
*/
function function_8509b2ab()
{
	if(!level.var_2395e945.size)
	{
		return;
	}
	level.var_1d893cda["all"] = [];
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		if(!level.var_de12b72f || isdefined(level.var_e7a38025[var_5dc5e20a.var_3e94206a]))
		{
			level.var_1d893cda["all"][level.var_1d893cda["all"].size] = var_5dc5e20a;
		}
	}
	var_bbadf37 = level.var_1d893cda["all"];
	if(level.var_de12b72f)
	{
		for(var_c957f6b6 = 1; var_c957f6b6 < var_bbadf37.size; var_c957f6b6++)
		{
			var_5dc5e20a = var_bbadf37[var_c957f6b6];
			var_1eea6b54 = var_5dc5e20a.var_f1242439;
			for(var_a3557c4d = var_c957f6b6 - 1; var_a3557c4d >= 0 && (var_1eea6b54 > var_bbadf37[var_a3557c4d].var_f1242439 || (var_1eea6b54 == var_bbadf37[var_a3557c4d].var_f1242439 && var_5dc5e20a.var_add55f80 < var_bbadf37[var_a3557c4d].var_add55f80)); var_a3557c4d--)
			{
				var_bbadf37[var_a3557c4d + 1] = var_bbadf37[var_a3557c4d];
			}
			var_bbadf37[var_a3557c4d + 1] = var_5dc5e20a;
		}
		break;
	}
	for(var_c957f6b6 = 1; var_c957f6b6 < var_bbadf37.size; var_c957f6b6++)
	{
		var_5dc5e20a = var_bbadf37[var_c957f6b6];
		var_1eea6b54 = var_5dc5e20a.var_246bf1cb;
		for(var_a3557c4d = var_c957f6b6 - 1; var_a3557c4d >= 0 && (var_1eea6b54 > var_bbadf37[var_a3557c4d].var_246bf1cb || (var_1eea6b54 == var_bbadf37[var_a3557c4d].var_246bf1cb && var_5dc5e20a.var_add55f80 < var_bbadf37[var_a3557c4d].var_add55f80)); var_a3557c4d--)
		{
			var_bbadf37[var_a3557c4d + 1] = var_bbadf37[var_a3557c4d];
		}
		var_bbadf37[var_a3557c4d + 1] = var_5dc5e20a;
	}
	level.var_1d893cda["all"] = var_bbadf37;
	/#
		namespace_c46f5728::function_36f2a476();
	#/
	function_7277d032();
}

/*
	Name: function_7277d032
	Namespace: namespace_2282eece
	Checksum: 0x87375B97
	Offset: 0x7888
	Size: 0x1D3
	Parameters: 0
	Flags: None
*/
function function_7277d032()
{
	foreach(var_3e94206a in level.var_e7a38025)
	{
		var_1d893cda[var_3e94206a] = [];
	}
	var_1d893cda["spectator"] = [];
	if(!level.var_de12b72f)
	{
		return;
	}
	var_bbadf37 = level.var_1d893cda["all"];
	var_cbdba7cc = var_bbadf37.size;
	for(var_c957f6b6 = 0; var_c957f6b6 < var_cbdba7cc; var_c957f6b6++)
	{
		var_5dc5e20a = var_bbadf37[var_c957f6b6];
		var_3e94206a = var_5dc5e20a.var_44fb8955["team"];
		var_1d893cda[var_3e94206a][var_1d893cda[var_3e94206a].size] = var_5dc5e20a;
	}
	foreach(var_3e94206a in level.var_e7a38025)
	{
		level.var_1d893cda[var_3e94206a] = var_1d893cda[var_3e94206a];
	}
}

/*
	Name: function_67161136
	Namespace: namespace_2282eece
	Checksum: 0x186DCFB6
	Offset: 0x7A68
	Size: 0xB1
	Parameters: 1
	Flags: None
*/
function function_67161136(var_5dc5e20a)
{
	function_8509b2ab();
	var_c7bbb4d8 = -1;
	var_1d893cda = level.var_1d893cda["all"];
	for(var_a1bed546 = 0; var_a1bed546 < var_1d893cda.size; var_a1bed546++)
	{
		if(level.var_1d893cda["all"][var_a1bed546] == var_5dc5e20a)
		{
			var_c7bbb4d8 = var_a1bed546 + 1;
			break;
		}
	}
	return var_c7bbb4d8;
}

/*
	Name: function_9dab4f8e
	Namespace: namespace_2282eece
	Checksum: 0x26AF8EFC
	Offset: 0x7B28
	Size: 0x253
	Parameters: 1
	Flags: None
*/
function function_9dab4f8e(var_5dc5e20a)
{
	var_77d2de15 = 0;
	function_8509b2ab();
	/#
		namespace_33b293fd::function_a7ee953(level.var_1d893cda["Dev Block strings are not supported"].size > 0);
	#/
	if(level.var_1d893cda["all"].size == 0)
	{
		return 0;
	}
	if(level.var_de12b72f)
	{
		var_a812a174 = level.var_1d893cda["all"][0].var_f1242439;
		for(var_5e76f0af = 0; var_5e76f0af < level.var_1d893cda["all"].size; var_5e76f0af++)
		{
			if(level.var_1d893cda["all"][var_5e76f0af].var_f1242439 == 0)
			{
				break;
			}
			if(var_a812a174 > level.var_1d893cda["all"][var_5e76f0af].var_f1242439)
			{
				break;
			}
			if(self == level.var_1d893cda["all"][var_5e76f0af])
			{
				var_360c4f0a = 1;
				break;
			}
		}
		break;
	}
	var_a812a174 = level.var_1d893cda["all"][0].var_246bf1cb;
	for(var_5e76f0af = 0; var_5e76f0af < level.var_1d893cda["all"].size; var_5e76f0af++)
	{
		if(level.var_1d893cda["all"][var_5e76f0af].var_246bf1cb == 0)
		{
			break;
		}
		if(var_a812a174 > level.var_1d893cda["all"][var_5e76f0af].var_246bf1cb)
		{
			break;
		}
		if(self == level.var_1d893cda["all"][var_5e76f0af])
		{
			var_77d2de15 = 1;
			break;
		}
	}
	return var_77d2de15;
}

/*
	Name: function_15439307
	Namespace: namespace_2282eece
	Checksum: 0xC7D7EAAB
	Offset: 0x7D88
	Size: 0x199
	Parameters: 1
	Flags: None
*/
function function_15439307(var_3e94206a)
{
	if(!level.var_38a6bf87)
	{
		return;
	}
	for(var_c957f6b6 = 1; var_c957f6b6 < level.var_27015faf[var_3e94206a].size; var_c957f6b6++)
	{
		var_5dc5e20a = level.var_27015faf[var_3e94206a][var_c957f6b6];
		for(var_a3557c4d = var_c957f6b6 - 1; var_a3557c4d >= 0 && var_5dc5e20a.var_9f66af5e < level.var_27015faf[var_3e94206a][var_a3557c4d].var_9f66af5e; var_a3557c4d--)
		{
			level.var_27015faf[var_3e94206a][var_a3557c4d + 1] = level.var_27015faf[var_3e94206a][var_a3557c4d];
		}
		level.var_27015faf[var_3e94206a][var_a3557c4d + 1] = var_5dc5e20a;
	}
	for(var_c957f6b6 = 0; var_c957f6b6 < level.var_27015faf[var_3e94206a].size; var_c957f6b6++)
	{
		if(level.var_27015faf[var_3e94206a][var_c957f6b6].var_4c049c79 != var_c957f6b6)
		{
			level.var_74d78ade[var_3e94206a] = 1;
		}
		level.var_27015faf[var_3e94206a][var_c957f6b6].var_4c049c79 = var_c957f6b6;
	}
}

/*
	Name: function_aa2e3925
	Namespace: namespace_2282eece
	Checksum: 0x744F8469
	Offset: 0x7F30
	Size: 0xA1
	Parameters: 0
	Flags: None
*/
function function_aa2e3925()
{
	var_74952a22 = 0;
	foreach(var_3e94206a in level.var_e7a38025)
	{
		var_74952a22 = var_74952a22 + level.var_c2f0038d[var_3e94206a];
	}
	return var_74952a22;
}

/*
	Name: function_5a5df82f
	Namespace: namespace_2282eece
	Checksum: 0x9CFBB13C
	Offset: 0x7FE0
	Size: 0xA1
	Parameters: 0
	Flags: None
*/
function function_5a5df82f()
{
	var_74952a22 = 0;
	foreach(var_3e94206a in level.var_e7a38025)
	{
		var_74952a22 = var_74952a22 + level.var_70d9f547[var_3e94206a];
	}
	return var_74952a22;
}

/*
	Name: function_5eacd238
	Namespace: namespace_2282eece
	Checksum: 0x712B71A6
	Offset: 0x8090
	Size: 0xA1
	Parameters: 0
	Flags: None
*/
function function_5eacd238()
{
	var_74952a22 = 0;
	foreach(var_3e94206a in level.var_e7a38025)
	{
		var_74952a22 = var_74952a22 + level.var_83a18a40[var_3e94206a];
	}
	return var_74952a22;
}

/*
	Name: function_b436c23
	Namespace: namespace_2282eece
	Checksum: 0xC4CD44D
	Offset: 0x8140
	Size: 0x113
	Parameters: 1
	Flags: None
*/
function function_b436c23(var_3e94206a)
{
	if(!isdefined(level.var_c2f0038d))
	{
		level.var_c2f0038d = [];
	}
	if(!isdefined(level.var_83a18a40))
	{
		level.var_83a18a40 = [];
	}
	level.var_c2f0038d[var_3e94206a] = 0;
	level.var_f062352d[var_3e94206a] = 0;
	level.var_83a18a40[var_3e94206a] = 0;
	if(!isdefined(game["everExisted"]))
	{
		game["everExisted"] = [];
	}
	if(!isdefined(game["everExisted"][var_3e94206a]))
	{
		game["everExisted"][var_3e94206a] = 0;
	}
	level.var_1aa7ca25[var_3e94206a] = 0;
	level.var_310b4cab[var_3e94206a] = 0;
	level.var_15016852[var_3e94206a] = 0;
	level.var_24ee2d5a[var_3e94206a] = 0;
	function_4828a1f8(var_3e94206a);
}

/*
	Name: function_4828a1f8
	Namespace: namespace_2282eece
	Checksum: 0x7D5BE72C
	Offset: 0x8260
	Size: 0xA9
	Parameters: 1
	Flags: None
*/
function function_4828a1f8(var_3e94206a)
{
	level.var_7e2c28b7[var_3e94206a] = 0;
	level.var_f062352d[var_3e94206a] = level.var_c2f0038d[var_3e94206a];
	level.var_c2f0038d[var_3e94206a] = 0;
	level.var_83a18a40[var_3e94206a] = 0;
	level.var_70d9f547[var_3e94206a] = 0;
	level.var_bbd67d26[var_3e94206a] = [];
	level.var_27015faf[var_3e94206a] = [];
	level.var_431673b8[var_3e94206a] = [];
	level.var_74d78ade[var_3e94206a] = 0;
}

/*
	Name: function_cd14a993
	Namespace: namespace_2282eece
	Checksum: 0x80FA82D2
	Offset: 0x8318
	Size: 0x3F3
	Parameters: 0
	Flags: None
*/
function function_cd14a993()
{
	if(game["state"] == "postgame")
	{
		return;
	}
	function_5254e3eb();
	foreach(var_3e94206a in level.var_e7a38025)
	{
		function_4828a1f8(var_3e94206a);
	}
	level.var_9b1393e7 = [];
	var_2395e945 = level.var_2395e945;
	for(var_c957f6b6 = 0; var_c957f6b6 < var_2395e945.size; var_c957f6b6++)
	{
		var_5dc5e20a = var_2395e945[var_c957f6b6];
		if(!isdefined(var_5dc5e20a) && level.var_2016892b)
		{
			continue;
		}
		var_3e94206a = var_5dc5e20a.var_3e94206a;
		var_6b05d4a = var_5dc5e20a.var_808c68ef;
		if(var_3e94206a != "spectator" && (isdefined(var_6b05d4a) && var_6b05d4a != ""))
		{
			level.var_7e2c28b7[var_3e94206a]++;
			if(var_5dc5e20a.var_e0beb6ee == "playing")
			{
				level.var_c2f0038d[var_3e94206a]++;
				level.var_70d9f547[var_3e94206a]++;
				var_5dc5e20a.var_4c049c79 = -1;
				if(function_5b49d38c(var_5dc5e20a))
				{
					level.var_bbd67d26[var_3e94206a][level.var_bbd67d26[var_3e94206a].size] = var_5dc5e20a;
					level.var_9b1393e7[level.var_9b1393e7.size] = var_5dc5e20a;
					if(isdefined(var_5dc5e20a.var_564407fb) && var_5dc5e20a.var_564407fb)
					{
						level.var_83a18a40[var_3e94206a]++;
					}
				}
				else
				{
					level.var_27015faf[var_3e94206a][level.var_27015faf[var_3e94206a].size] = var_5dc5e20a;
				}
				continue;
			}
			level.var_27015faf[var_3e94206a][level.var_27015faf[var_3e94206a].size] = var_5dc5e20a;
			if(var_5dc5e20a namespace_7956eece::function_cc406c51())
			{
				level.var_70d9f547[var_3e94206a]++;
			}
		}
	}
	var_ef9bd338 = function_aa2e3925();
	if(var_ef9bd338 > level.var_7af77b4f)
	{
		level.var_7af77b4f = var_ef9bd338;
	}
	foreach(var_3e94206a in level.var_e7a38025)
	{
		if(level.var_c2f0038d[var_3e94206a])
		{
			game["everExisted"][var_3e94206a] = 1;
			level.var_1aa7ca25[var_3e94206a] = 1;
		}
		function_15439307(var_3e94206a);
	}
	level function_56154a57();
}

/*
	Name: function_b0063f2
	Namespace: namespace_2282eece
	Checksum: 0x7A5EC269
	Offset: 0x8718
	Size: 0xB1
	Parameters: 1
	Flags: None
*/
function function_b0063f2(var_3e94206a)
{
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_3e94206a));
	#/
	if(level.var_e300e83a <= 0)
	{
		return;
	}
	if(!level.var_de12b72f)
	{
		return;
	}
	if(namespace_c46f5728::function_3c9bd810() < 60000)
	{
		return;
	}
	var_885895d1 = namespace_c46f5728::function_f5639177(var_3e94206a);
	if(var_885895d1 < 1)
	{
		level notify("hash_a0446b30", "score");
	}
}

/*
	Name: function_58b5666
	Namespace: namespace_2282eece
	Checksum: 0x85C4DEB6
	Offset: 0x87D8
	Size: 0xA9
	Parameters: 0
	Flags: None
*/
function function_58b5666()
{
	/#
		namespace_33b293fd::function_a7ee953(function_65f192a6(self));
	#/
	if(level.var_e300e83a <= 0)
	{
		return;
	}
	if(level.var_de12b72f)
	{
		return;
	}
	if(namespace_c46f5728::function_3c9bd810() < 60000)
	{
		return;
	}
	var_885895d1 = namespace_c46f5728::function_f5639177(undefined);
	if(var_885895d1 < 1)
	{
		level notify("hash_a0446b30", "score");
	}
}

/*
	Name: function_d0dbffbf
	Namespace: namespace_2282eece
	Checksum: 0xBD358753
	Offset: 0x8890
	Size: 0x29B
	Parameters: 0
	Flags: None
*/
function function_d0dbffbf()
{
	level endon("hash_c8ab51de");
	wait(0.05);
	var_ac8458c0 = function_9b7fda5e("script_origin", (0, 0, 0));
	while(game["state"] == "playing")
	{
		if(!level.var_c8a2359f && level.var_6d251637)
		{
			var_885895d1 = namespace_c46f5728::function_a5369db4() / 1000;
			var_f16fceec = function_b6b79a0(var_885895d1 + 0.5);
			if(var_f16fceec == 601)
			{
				namespace_82b91a51::function_ef3f75eb("notify_10");
			}
			if(var_f16fceec == 301)
			{
				namespace_82b91a51::function_ef3f75eb("notify_5");
			}
			if(var_f16fceec == 60)
			{
				namespace_82b91a51::function_ef3f75eb("notify_1");
			}
			if(var_f16fceec == 12)
			{
				namespace_82b91a51::function_ef3f75eb("notify_count");
			}
			if(var_f16fceec >= 40 && var_f16fceec <= 60)
			{
				level notify("hash_a0446b30", "time");
			}
			if(var_f16fceec >= 30 && var_f16fceec <= 40)
			{
				level notify("hash_7b0712a1", "time");
			}
			if(var_f16fceec <= 32)
			{
				level notify("hash_9d59b680");
			}
			if(var_f16fceec <= 10 || (var_f16fceec <= 30 && var_f16fceec % 2 == 0))
			{
				level notify("hash_825d3371", "time");
				if(var_f16fceec == 0)
				{
					break;
				}
				var_ac8458c0 function_921a1574("mpl_ui_timer_countdown");
			}
			if(var_885895d1 - function_ed96839(var_885895d1) >= 0.05)
			{
				wait(var_885895d1 - function_ed96839(var_885895d1));
			}
		}
		wait(1);
	}
}

/*
	Name: function_968aaf56
	Namespace: namespace_2282eece
	Checksum: 0xF8E8C6B3
	Offset: 0x8B38
	Size: 0xAF
	Parameters: 1
	Flags: None
*/
function function_968aaf56(var_77a7fe7d)
{
	function_dc61703f(GetTime() + function_b6b79a0(var_77a7fe7d * 1000));
	var_ac8458c0 = function_9b7fda5e("script_origin", (0, 0, 0));
	if(var_77a7fe7d >= 10)
	{
		wait(var_77a7fe7d - 10);
	}
	for(;;)
	{
		var_ac8458c0 function_921a1574("mpl_ui_timer_countdown");
		wait(1);
	}
}

/*
	Name: function_59b8efe0
	Namespace: namespace_2282eece
	Checksum: 0x18E2A8E4
	Offset: 0x8BF0
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_59b8efe0()
{
	level endon("hash_c8ab51de");
	while(1)
	{
		for(var_c957f6b6 = 0; var_c957f6b6 < level.var_2395e945.size; var_c957f6b6++)
		{
			var_5dc5e20a = level.var_2395e945[var_c957f6b6];
			if(function_5b49d38c(var_5dc5e20a))
			{
				function_eda3e315(var_5dc5e20a, undefined);
			}
		}
		wait(15);
	}
}

/*
	Name: function_5b819c85
	Namespace: namespace_2282eece
	Checksum: 0x2514E735
	Offset: 0x8C98
	Size: 0x1FB
	Parameters: 0
	Flags: None
*/
function function_5b819c85()
{
	thread namespace_c46f5728::function_97cbb4c6();
	level.var_c8a2359f = 0;
	function_d299f7a6("DeadChatWithDead", level.var_56421277.var_2bb7d85b);
	function_d299f7a6("DeadChatWithTeam", level.var_56421277.var_510fec6a);
	function_d299f7a6("DeadHearTeamLiving", level.var_56421277.var_e511471f);
	function_d299f7a6("DeadHearAllLiving", level.var_56421277.var_5edcbe07);
	function_d299f7a6("EveryoneHearsEveryone", level.var_56421277.var_7b692416);
	function_d299f7a6("DeadHearKiller", level.var_56421277.var_cf617cd2);
	function_d299f7a6("KillersHearVictim", level.var_56421277.var_c226b8ef);
	if(isdefined(level.var_b47a7aef))
	{
		[[level.var_b47a7aef]]();
	}
	else
	{
		function_650bf6e0();
	}
	level notify("hash_5f6f3990");
	thread function_d0dbffbf();
	thread function_637e0994();
	thread function_97e7701d();
	function_875ac970();
	if(!(isdefined(level.var_3da0c335) && level.var_3da0c335))
	{
		thread function_59b8efe0();
		thread namespace_d8129fdd::function_543e7299("cpbreadcrumb");
	}
}

/*
	Name: function_f9bf27f3
	Namespace: namespace_2282eece
	Checksum: 0xDA0FC671
	Offset: 0x8EA0
	Size: 0x5F
	Parameters: 0
	Flags: None
*/
function function_f9bf27f3()
{
	var_a4ad846c = GetTime();
	while(function_6c6e7b10() < 1)
	{
		wait(0.05);
		if(GetTime() - var_a4ad846c > 120000)
		{
			function_7d3cac7d(0);
		}
	}
}

/*
	Name: function_650bf6e0
	Namespace: namespace_2282eece
	Checksum: 0x589B1795
	Offset: 0x8F08
	Size: 0x135
	Parameters: 0
	Flags: None
*/
function function_650bf6e0()
{
	function_9d2f1d78("hud_hardcore", level.var_50527ffe);
	level endon("hash_c8ab51de");
	if(level.var_650bf6e0 > 0)
	{
		thread function_2a5afb0f();
		function_f9bf27f3();
		wait(level.var_650bf6e0);
	}
	else
	{
		function_ba0bf416();
		wait(0.05);
	}
	level.var_35a23885 = 0;
	for(var_5e76f0af = 0; var_5e76f0af < level.var_2395e945.size; var_5e76f0af++)
	{
		level.var_2395e945[var_5e76f0af] namespace_82b91a51::function_56cee95(0);
		level.var_2395e945[var_5e76f0af] function_901e0817();
	}
	namespace_93432369::function_fdda44f9();
	if(game["state"] != "playing")
	{
		return;
	}
}

/*
	Name: function_637e0994
	Namespace: namespace_2282eece
	Checksum: 0xA7736049
	Offset: 0x9048
	Size: 0x14B
	Parameters: 0
	Flags: None
*/
function function_637e0994()
{
	level endon("hash_c8ab51de");
	if(isdefined(level.var_4c94a76e))
	{
		[[level.var_4c94a76e]]();
	}
	else
	{
		wait(level.var_637e0994);
	}
	level notify("hash_e7e9d341");
	wait(0.05);
	level.var_266be277 = 0;
	if(game["state"] != "playing")
	{
		return;
	}
	if(level.var_e782fb64)
	{
		var_2395e945 = level.var_2395e945;
		for(var_c957f6b6 = 0; var_c957f6b6 < var_2395e945.size; var_c957f6b6++)
		{
			var_5dc5e20a = var_2395e945[var_c957f6b6];
			if(!var_5dc5e20a.var_b0c19313 && var_5dc5e20a.var_b2e5a818 != "spectator" && !function_5b49d38c(var_5dc5e20a))
			{
				var_5dc5e20a.var_8cf1797c = "hud_status_dead";
			}
		}
	}
	function_cd14a993();
}

/*
	Name: function_97e7701d
	Namespace: namespace_2282eece
	Checksum: 0x32D8BA44
	Offset: 0x91A0
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_97e7701d()
{
	function_6c1294b8("xblive_matchEndingSoon", 0);
	level waittill("hash_a0446b30", var_de4046a1);
	function_6c1294b8("xblive_matchEndingSoon", 1);
}

/*
	Name: function_37ef23b2
	Namespace: namespace_2282eece
	Checksum: 0x9D336D38
	Offset: 0x9200
	Size: 0x8D
	Parameters: 0
	Flags: None
*/
function function_37ef23b2()
{
	foreach(var_3e94206a in level.var_e7a38025)
	{
		if(level.var_310b4cab[var_3e94206a])
		{
			return 1;
		}
	}
	return 0;
}

/*
	Name: function_c2d22707
	Namespace: namespace_2282eece
	Checksum: 0xFB4E82E5
	Offset: 0x9298
	Size: 0x150B
	Parameters: 0
	Flags: None
*/
function function_c2d22707()
{
	level.var_650bf6e0 = 0;
	level.var_4b93af95 = 0;
	function_9d2f1d78("cg_drawSpectatorMessages", 1);
	function_9d2f1d78("game_ended", 0);
	if(!isdefined(game["gamestarted"]))
	{
		if(!isdefined(game["allies"]))
		{
			game["allies"] = "seals";
		}
		if(!isdefined(game["axis"]))
		{
			game["axis"] = "pmc";
		}
		if(!isdefined(game["attackers"]))
		{
			game["attackers"] = "allies";
		}
		if(!isdefined(game["defenders"]))
		{
			game["defenders"] = "axis";
		}
		/#
			namespace_33b293fd::function_a7ee953(game["Dev Block strings are not supported"] != game["Dev Block strings are not supported"]);
		#/
		foreach(var_3e94206a in level.var_e7a38025)
		{
			if(!isdefined(game[var_3e94206a]))
			{
				game[var_3e94206a] = "pmc";
			}
		}
		if(!isdefined(game["state"]))
		{
			game["state"] = "playing";
		}
		function_6c1294b8("cg_thirdPersonAngle", 354);
		game["strings"]["press_to_spawn"] = &"PLATFORM_PRESS_TO_SPAWN";
		if(level.var_de12b72f)
		{
			game["strings"]["waiting_for_teams"] = &"MP_WAITING_FOR_TEAMS";
			game["strings"]["opponent_forfeiting_in"] = &"MP_OPPONENT_FORFEITING_IN";
		}
		else
		{
			game["strings"]["waiting_for_teams"] = &"MP_WAITING_FOR_PLAYERS";
			game["strings"]["opponent_forfeiting_in"] = &"MP_OPPONENT_FORFEITING_IN";
		}
		game["strings"]["match_starting_in"] = &"MP_MATCH_STARTING_IN";
		game["strings"]["spawn_next_round"] = &"COOP_SPAWN_NEXT_ROUND";
		game["strings"]["waiting_to_spawn"] = &"MP_WAITING_TO_SPAWN";
		game["strings"]["waiting_to_spawn_ss"] = &"MP_WAITING_TO_SPAWN_SS";
		game["strings"]["you_will_spawn"] = &"MP_YOU_WILL_RESPAWN";
		game["strings"]["match_starting"] = &"MP_MATCH_STARTING";
		game["strings"]["change_class"] = &"MP_CHANGE_CLASS_NEXT_SPAWN";
		game["strings"]["last_stand"] = &"MPUI_LAST_STAND";
		game["strings"]["cowards_way"] = &"PLATFORM_COWARDS_WAY_OUT";
		game["strings"]["tie"] = &"MP_MATCH_TIE";
		game["strings"]["round_draw"] = &"MP_ROUND_DRAW";
		game["strings"]["enemies_eliminated"] = &"MP_ENEMIES_ELIMINATED";
		game["strings"]["score_limit_reached"] = &"MP_SCORE_LIMIT_REACHED";
		game["strings"]["round_limit_reached"] = &"MP_ROUND_LIMIT_REACHED";
		game["strings"]["time_limit_reached"] = &"MP_TIME_LIMIT_REACHED";
		game["strings"]["players_forfeited"] = &"MP_PLAYERS_FORFEITED";
		game["strings"]["other_teams_forfeited"] = &"MP_OTHER_TEAMS_FORFEITED";
		[[level.var_90f0668f]]();
		game["gamestarted"] = 1;
		game["totalKills"] = 0;
		foreach(var_3e94206a in level.var_e7a38025)
		{
			game["teamScores"][var_3e94206a] = 0;
			game["totalKillsTeam"][var_3e94206a] = 0;
		}
		level.var_650bf6e0 = function_92a88da3("prematchperiod");
		if(function_4bd0142f("xblive_clanmatch") != 0)
		{
			foreach(var_3e94206a in level.var_e7a38025)
			{
				game["icons"][var_3e94206a] = "composite_emblem_team_axis";
			}
			game["icons"]["allies"] = "composite_emblem_team_allies";
			game["icons"]["axis"] = "composite_emblem_team_axis";
		}
	}
	else if(!level.var_2016892b)
	{
		level.var_650bf6e0 = function_92a88da3("preroundperiod");
	}
	if(!isdefined(game["timepassed"]))
	{
		game["timepassed"] = 0;
	}
	if(!isdefined(game["roundsplayed"]))
	{
		game["roundsplayed"] = 0;
	}
	function_9e53f601(game["roundsplayed"]);
	if(isdefined(game["overtime_round"]))
	{
		function_9d2f1d78("overtime", 1);
	}
	else
	{
		function_9d2f1d78("overtime", 0);
	}
	if(!isdefined(game["roundwinner"]))
	{
		game["roundwinner"] = [];
	}
	if(!isdefined(game["lastroundscore"]))
	{
		game["lastroundscore"] = [];
	}
	if(!isdefined(game["roundswon"]))
	{
		game["roundswon"] = [];
	}
	if(!isdefined(game["roundswon"]["tie"]))
	{
		game["roundswon"]["tie"] = 0;
	}
	foreach(var_3e94206a in level.var_e7a38025)
	{
		if(!isdefined(game["roundswon"][var_3e94206a]))
		{
			game["roundswon"][var_3e94206a] = 0;
		}
		level.var_57486c1a[var_3e94206a] = [];
		level.var_38a63f67[var_3e94206a] = [];
	}
	level.var_3bb2dd28 = 0;
	level.var_6b0d921 = 0;
	function_6c1294b8("g_gameEnded", 0);
	level.var_cc445ed1 = 0;
	level.var_73353c45 = 0;
	level.var_db7e784b = 0;
	level.var_50527ffe = function_92a88da3("hardcoreMode");
	if(level.var_50527ffe)
	{
		/#
			function_3bc5b442("Dev Block strings are not supported");
		#/
		if(!isdefined(level.var_512cd40a))
		{
			level.var_512cd40a = 0;
		}
	}
	if(function_6f1ebe57("scr_max_rank") == "")
	{
		function_6c1294b8("scr_max_rank", "0");
	}
	level.var_8e608ce9 = function_4bd0142f("scr_max_rank");
	if(function_6f1ebe57("scr_min_prestige") == "")
	{
		function_6c1294b8("scr_min_prestige", "0");
	}
	level.var_e03474a4 = function_4bd0142f("scr_min_prestige");
	level.var_a93e40a6 = 1;
	level.var_f2ba2abd = function_92a88da3("cumulativeRoundScores");
	level.var_efaf4d6c = function_92a88da3("allowhitmarkers");
	level.var_38a6bf87 = function_92a88da3("playerQueuedRespawn");
	level.var_d87e5cbd = function_92a88da3("playerForceRespawn");
	level.var_a6aa36b3 = function_92a88da3("roundStartExplosiveDelay");
	level.var_d664f00c = function_92a88da3("roundStartKillstreakDelay");
	level.var_cf1be84f = function_92a88da3("perksEnabled");
	level.var_6f8ff77f = function_92a88da3("disableAttachments");
	level.var_3802ed0e = function_92a88da3("disableTacInsert");
	level.var_cec536 = function_92a88da3("disableCAC");
	if(!isdefined(level.var_83a2ce8d))
	{
		level.var_83a2ce8d = function_92a88da3("disableClassSelection");
	}
	level.var_82ea317c = function_92a88da3("disableweapondrop");
	level.var_32807bac = function_92a88da3("onlyHeadshots");
	level.var_fb0abb41 = function_92a88da3("teamKillPunishCount") - 1;
	level.var_67bc1493 = function_92a88da3("teamKillReducedPenalty");
	level.var_a04731a9 = function_92a88da3("teamKillPointLoss");
	level.var_f5257fb4 = function_92a88da3("teamKillSpawnDelay");
	level.var_fb250194 = function_92a88da3("deathPointLoss");
	level.var_3be79be7 = function_92a88da3("leaderBonus");
	level.var_a1b39c66 = function_92a88da3("forceRadar");
	level.var_2595cc35 = function_92a88da3("playerSprintTime");
	level.var_efb793da = function_92a88da3("bulletDamageScalar");
	level.var_6da13ee2 = function_92a88da3("playerMaxHealth");
	level.var_b5fba254 = function_92a88da3("playerHealthRegenTime");
	level.var_2e53984b = function_92a88da3("playerRespawnDelay");
	level.var_2c3d1587 = function_92a88da3("playerObjectiveHeldRespawnDelay");
	level.var_726dcf43 = function_92a88da3("waveRespawnDelay");
	level.var_fdf3981d = function_92a88da3("spawnsuicidepenalty");
	level.var_ea20354b = function_92a88da3("spawnteamkilledpenalty");
	level.var_8bfaa195 = function_92a88da3("maxsuicidesbeforekick");
	level.var_21bdb21c = function_92a88da3("spectateType");
	level.var_56421277 = function_a8fb77bd();
	level.var_56421277.var_2bb7d85b = function_92a88da3("voipDeadChatWithDead");
	level.var_56421277.var_510fec6a = function_92a88da3("voipDeadChatWithTeam");
	level.var_56421277.var_5edcbe07 = function_92a88da3("voipDeadHearAllLiving");
	level.var_56421277.var_e511471f = function_92a88da3("voipDeadHearTeamLiving");
	level.var_56421277.var_7b692416 = function_92a88da3("voipEveryoneHearsEveryone");
	level.var_56421277.var_cf617cd2 = function_92a88da3("voipDeadHearKiller");
	level.var_56421277.var_c226b8ef = function_92a88da3("voipKillersHearVictim");
	namespace_a230c2b1::function_d290ebfa();
	namespace_dabbe128::function_dabbe128("hash_cc62acca");
	foreach(var_3e94206a in level.var_e7a38025)
	{
		function_b436c23(var_3e94206a);
	}
	level.var_7af77b4f = 0;
	level.var_9b1393e7 = [];
	level.var_8bf9afd1 = function_92a88da3("allowAnnouncer");
	if(!isdefined(level.var_6d251637))
	{
		namespace_82b91a51::function_aa42b85a(1, 1440);
	}
	if(!isdefined(level.var_e300e83a))
	{
		namespace_82b91a51::function_d094fb41(1, 500);
	}
	if(!isdefined(level.var_fa404b24))
	{
		namespace_82b91a51::function_549dd2f3(0, 10);
	}
	if(!isdefined(level.var_483c59b0))
	{
		namespace_82b91a51::function_779e30c5(0, 10);
	}
	namespace_c46f5728::function_10704124(&namespace_93432369::function_fdf4c650);
	var_310b4cab = level.var_726dcf43;
	if(var_310b4cab)
	{
		foreach(var_3e94206a in level.var_e7a38025)
		{
			level.var_310b4cab[var_3e94206a] = var_310b4cab;
			level.var_15016852[var_3e94206a] = 0;
		}
		level thread [[level.var_e337eae6]]();
	}
	level.var_35a23885 = 1;
	if(level.var_650bf6e0 > 2)
	{
		level.var_650bf6e0 = level.var_650bf6e0 + function_62e4226e(4) - 2;
	}
	if(level.var_e782fb64 || function_37ef23b2() || level.var_38a6bf87)
	{
		level.var_637e0994 = 1500;
	}
	else
	{
		level.var_637e0994 = 1500;
	}
	level.var_266be277 = 1;
	level.var_e9b1d7bf = 5;
	level.var_4e993783 = 3;
	namespace_e32b5089::function_16ca2e25();
	level.var_338951e1 = 1;
	if(function_6f1ebe57("scr_game_rankenabled") == "")
	{
		function_6c1294b8("scr_game_rankenabled", 1);
	}
	level.var_67eb0cc2 = function_4bd0142f("scr_game_rankenabled");
	if(function_6f1ebe57("scr_game_medalsenabled") == "")
	{
		function_6c1294b8("scr_game_medalsenabled", 1);
	}
	level.var_a111ce90 = function_4bd0142f("scr_game_medalsenabled");
	if(level.var_50527ffe && level.var_5d406297 && function_6f1ebe57("scr_game_friendlyFireDelay") == "")
	{
		function_6c1294b8("scr_game_friendlyFireDelay", 1);
	}
	level.var_54b946d = function_4bd0142f("scr_game_friendlyFireDelay");
	[[level.var_34685338]]();
	if(function_4bd0142f("custom_killstreak_mode") == 1)
	{
		level.var_338951e1 = 0;
	}
	if(isdefined(level.var_6c41e242))
	{
		function_b0c6f02d(0, level.var_6c41e242);
	}
	thread function_5b819c85();
	level thread function_843e8b8a();
	level thread namespace_5b838834::function_7430898c();
	/#
		if(function_4bd0142f("Dev Block strings are not supported") == 1)
		{
			level.var_8defbe41 = 1;
			level.var_fa404b24 = 1;
			wait(1);
			thread function_661a1c05(0);
		}
		if(function_4bd0142f("Dev Block strings are not supported") == 1)
		{
			thread function_419d528b();
		}
	#/
}

/*
	Name: function_419d528b
	Namespace: namespace_2282eece
	Checksum: 0x6DAC059C
	Offset: 0xA7B0
	Size: 0x4F
	Parameters: 0
	Flags: None
*/
function function_419d528b()
{
	/#
		while(1)
		{
			namespace_6c1d04bd::function_8ef8da7f();
			wait(60);
			function_56d1b8f3();
			namespace_6c1d04bd::function_8ef8da7f();
		}
	#/
}

/*
	Name: function_9f81beec
	Namespace: namespace_2282eece
	Checksum: 0x634D1BDA
	Offset: 0xA808
	Size: 0x10B
	Parameters: 4
	Flags: None
*/
function function_9f81beec(var_2a5ad9e9, var_9744f3ab, var_5b9badc2, var_37b8b994)
{
	var_2a5ad9e9 = "scr_" + var_2a5ad9e9 + "_friendlyFireDelayTime";
	if(function_6f1ebe57(var_2a5ad9e9) == "")
	{
		function_6c1294b8(var_2a5ad9e9, var_9744f3ab);
	}
	if(function_4bd0142f(var_2a5ad9e9) > var_37b8b994)
	{
		function_6c1294b8(var_2a5ad9e9, var_37b8b994);
	}
	else if(function_4bd0142f(var_2a5ad9e9) < var_5b9badc2)
	{
		function_6c1294b8(var_2a5ad9e9, var_5b9badc2);
	}
	level.var_512cd40a = function_4bd0142f(var_2a5ad9e9);
}

/*
	Name: function_7ccf891d
	Namespace: namespace_2282eece
	Checksum: 0x5A5E1360
	Offset: 0xA920
	Size: 0x8F
	Parameters: 0
	Flags: None
*/
function function_7ccf891d()
{
	if(!isdefined(level.var_cc6df7fb) || !level.var_cc6df7fb)
	{
		return 0;
	}
	if(!isdefined(level.var_e4e885e6))
	{
		return 0;
	}
	/#
		namespace_33b293fd::function_a7ee953(game["Dev Block strings are not supported"] > 0);
	#/
	if(game["roundsplayed"] % level.var_cc6df7fb == 0)
	{
		[[level.var_e4e885e6]]();
		return 1;
	}
	return 0;
}

/*
	Name: function_dadad686
	Namespace: namespace_2282eece
	Checksum: 0x39069411
	Offset: 0xA9B8
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_dadad686()
{
	self endon("hash_ae13f274");
	self waittill("hash_5ef9c3e");
	level.var_3bb2dd28 = 1;
	if(!level.var_6b0d921)
	{
		level thread function_661a1c05(1);
	}
}

/*
	Name: function_5abc8628
	Namespace: namespace_2282eece
	Checksum: 0x6E9C3BE6
	Offset: 0xAA10
	Size: 0x10B
	Parameters: 1
	Flags: None
*/
function function_5abc8628(var_5dc5e20a)
{
	for(var_29b40335 = 0; var_29b40335 < level.var_76935a62; var_29b40335++)
	{
		var_463e2ebb[var_29b40335] = "killstreak_null";
	}
	if(function_65f192a6(var_5dc5e20a) && !level.var_52bf79c4 && level.var_83a2ce8d != 1 && isdefined(var_5dc5e20a.var_463e2ebb))
	{
		var_7a50f216 = 0;
		for(var_29b40335 = 0; var_29b40335 < level.var_76935a62; var_29b40335++)
		{
			if(isdefined(var_5dc5e20a.var_463e2ebb[var_29b40335]))
			{
				var_463e2ebb[var_7a50f216] = var_5dc5e20a.var_463e2ebb[var_29b40335];
				var_7a50f216++;
			}
		}
	}
	return var_463e2ebb;
}

/*
	Name: function_dafe7166
	Namespace: namespace_2282eece
	Checksum: 0x43D67CDF
	Offset: 0xAB28
	Size: 0xBB
	Parameters: 1
	Flags: None
*/
function function_dafe7166(var_f49bab78)
{
	if(level.var_5d406297)
	{
		if(function_a0b93971())
		{
			level.var_db7e784b = 1;
			/#
				function_3bc5b442("Dev Block strings are not supported");
			#/
			function_d14a0054();
		}
	}
	if(!level.var_1d0304c && !function_75e46361() && (!isdefined(level.var_f0ca204d) && level.var_f0ca204d))
	{
		namespace_e32b5089::function_ef6804eb(var_f49bab78);
	}
}

