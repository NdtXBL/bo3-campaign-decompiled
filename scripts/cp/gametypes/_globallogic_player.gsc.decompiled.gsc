#using scripts\cp\_bb;
#using scripts\cp\_challenges;
#using scripts\cp\_flashgrenades;
#using scripts\cp\_gamerep;
#using scripts\cp\_hazard;
#using scripts\cp\_laststand;
#using scripts\cp\_scoreevents;
#using scripts\cp\_skipto;
#using scripts\cp\_util;
#using scripts\cp\cybercom\_cybercom;
#using scripts\cp\cybercom\_cybercom_tactical_rig;
#using scripts\cp\cybercom\_cybercom_tactical_rig_emergencyreserve;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_globallogic;
#using scripts\cp\gametypes\_globallogic_score;
#using scripts\cp\gametypes\_globallogic_spawn;
#using scripts\cp\gametypes\_globallogic_ui;
#using scripts\cp\gametypes\_globallogic_utils;
#using scripts\cp\gametypes\_globallogic_vehicle;
#using scripts\cp\gametypes\_killcam;
#using scripts\cp\gametypes\_loadout;
#using scripts\cp\gametypes\_player_cam;
#using scripts\cp\gametypes\_save;
#using scripts\cp\gametypes\_spawning;
#using scripts\cp\gametypes\_spawnlogic;
#using scripts\cp\gametypes\_spectating;
#using scripts\cp\gametypes\_weapon_utils;
#using scripts\cp\gametypes\_weapons;
#using scripts\cp\teams\_teams;
#using scripts\shared\_burnplayer;
#using scripts\shared\abilities\_ability_power;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\challenges_shared;
#using scripts\shared\damagefeedback_shared;
#using scripts\shared\demo_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\gameskill_shared;
#using scripts\shared\hostmigration_shared;
#using scripts\shared\hud_message_shared;
#using scripts\shared\hud_util_shared;
#using scripts\shared\laststand_shared;
#using scripts\shared\math_shared;
#using scripts\shared\medals_shared;
#using scripts\shared\persistence_shared;
#using scripts\shared\rank_shared;
#using scripts\shared\scoreevents_shared;
#using scripts\shared\tweakables_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\weapons\_weapon_utils;
#using scripts\shared\weapons\_weapons;
#using scripts\shared\weapons_shared;

#namespace namespace_b976075a;

/*
	Name: function_890f5017
	Namespace: namespace_b976075a
	Checksum: 0x2842F2F7
	Offset: 0x18F8
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_890f5017()
{
	self namespace_82b91a51::function_d848704c();
	self function_eb306581();
	self namespace_82b91a51::function_56cee95(1);
}

/*
	Name: function_93bd348d
	Namespace: namespace_b976075a
	Checksum: 0xA1D19E41
	Offset: 0x1950
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_93bd348d()
{
	if(isdefined(level.var_8f7c5cd0) && !self namespace_ad23e503::function_dbca4c5d(level.var_8f7c5cd0))
	{
		self namespace_ad23e503::function_c35e6aab(level.var_8f7c5cd0);
	}
	self namespace_ad23e503::function_c35e6aab("initial_streamer_ready");
}

/*
	Name: function_be51e5e1
	Namespace: namespace_b976075a
	Checksum: 0xB3D7B0B3
	Offset: 0x19C8
	Size: 0x36B
	Parameters: 2
	Flags: None
*/
function function_be51e5e1(var_5dc5e20a, var_3c61bfc2)
{
	var_dc172949 = var_5dc5e20a function_c7f3ce11();
	var_7aa87b9b = var_5dc5e20a function_f49dd4fd(1);
	function_3aedd0a2("global_leave", "name %s client %s xuid %s", var_5dc5e20a.var_4be20d44, var_dc172949, var_7aa87b9b);
	var_cfcc2d7b = var_3c61bfc2;
	if(isdefined(var_5dc5e20a.var_3e94206a) && var_3c61bfc2 == var_5dc5e20a.var_3e94206a)
	{
		var_cfcc2d7b = "win";
	}
	else if(var_3c61bfc2 == "allies" || var_3c61bfc2 == "axis")
	{
		var_cfcc2d7b = "lose";
	}
	var_d066f1a3 = game["timepassed"] / 1000;
	function_59b5106b("end_match", "match_id", function_9c48e5f3(), "game_variant", "cp", "game_mode", level.var_76c6e677, "game_playlist", "N/A", "private_match", function_16f43f1b(), "game_map", function_6f1ebe57("mapname"), "player_xuid", var_5dc5e20a function_f49dd4fd(1), "player_ip", var_5dc5e20a function_4b1bf30(), "match_kills", var_5dc5e20a.var_ec0b278c, "match_deaths", var_5dc5e20a.var_add55f80, "match_score", var_5dc5e20a.var_f1242439, "match_streak", var_5dc5e20a.var_44fb8955["best_kill_streak"], "match_captures", var_5dc5e20a.var_44fb8955["captures"], "match_defends", var_5dc5e20a.var_44fb8955["defends"], "match_headshots", var_5dc5e20a.var_44fb8955["headshots"], "match_longshots", var_5dc5e20a.var_44fb8955["longshots"], "prestige_max", var_5dc5e20a.var_44fb8955["plevel"], "level_max", var_5dc5e20a.var_44fb8955["rank"], "match_result", var_cfcc2d7b, "season_pass_owned", var_5dc5e20a function_31cc1bb(0), "match_hits", var_5dc5e20a.var_3804cf0b, "player_gender", var_5dc5e20a function_303f31c3(function_e618351d()));
}

/*
	Name: function_b0d17fc2
	Namespace: namespace_b976075a
	Checksum: 0x32F46064
	Offset: 0x1D40
	Size: 0x7B
	Parameters: 3
	Flags: None
*/
function function_b0d17fc2(var_b78f06c4, var_66db3636, var_26b0fd19)
{
	var_38fbfebf = self function_84368297("PlayerStatsByMap", var_b78f06c4, var_66db3636);
	if(isdefined(var_38fbfebf))
	{
		self function_56242533(var_26b0fd19, var_b78f06c4, var_38fbfebf);
	}
}

/*
	Name: function_3b38bcc7
	Namespace: namespace_b976075a
	Checksum: 0x69360215
	Offset: 0x1DC8
	Size: 0x7B
	Parameters: 3
	Flags: None
*/
function function_3b38bcc7(var_b78f06c4, var_66db3636, var_26b0fd19)
{
	var_c1be5d83 = self function_84368297("PlayerStatsByMap", var_b78f06c4, var_66db3636);
	if(isdefined(var_c1be5d83))
	{
		self function_6e2b6a0b(var_26b0fd19, var_b78f06c4, var_c1be5d83);
	}
}

/*
	Name: function_6c559425
	Namespace: namespace_b976075a
	Checksum: 0x99C635A8
	Offset: 0x1E50
	Size: 0x259
	Parameters: 0
	Flags: None
*/
function function_6c559425()
{
	if(!function_bac7e7e9())
	{
		return;
	}
	var_5c75060b = namespace_1d795d47::function_23eda99c();
	foreach(var_b78f06c4 in var_5c75060b)
	{
		var_2b7a9536 = namespace_1d795d47::function_97bb1111(var_b78f06c4);
		self function_3b38bcc7(var_b78f06c4, "hasBeenCompleted", "completed");
		self function_3b38bcc7(var_2b7a9536, "hasBeenCompleted", "completed");
		self function_b0d17fc2(var_b78f06c4, "firstTimeCompletedUTC", "firstTimeCompleted");
		self function_b0d17fc2(var_2b7a9536, "firstTimeCompletedUTC", "firstTimeCompleted");
		self function_b0d17fc2(var_b78f06c4, "lastCompletedUTC", "lastTimeCompleted");
		self function_b0d17fc2(var_2b7a9536, "lastCompletedUTC", "lastTimeCompleted");
		self function_b0d17fc2(var_b78f06c4, "numCompletions", "numberTimesCompleted");
		self function_b0d17fc2(var_2b7a9536, "numCompletions", "numberTimesCompleted");
		self function_3b38bcc7(var_b78f06c4, "allAccoladesComplete", "allAccoladesComplete");
		self function_3b38bcc7(var_2b7a9536, "allAccoladesComplete", "allAccoladesComplete");
	}
}

/*
	Name: function_b18d61a5
	Namespace: namespace_b976075a
	Checksum: 0xE3119383
	Offset: 0x20B8
	Size: 0x203
	Parameters: 0
	Flags: None
*/
function function_b18d61a5()
{
	if(!function_bac7e7e9())
	{
		return;
	}
	self function_6c559425();
	var_b0af8b0a = self function_84368297("PlayerStatsList", "CAREER_TOTAL_TIME_PAUSED", "statValue");
	self function_5367705a("duration_total_paused_seconds", var_b0af8b0a);
	var_add23082 = self function_84368297("PlayerStatsList", "CAREER_TOTAL_PLAY_TIME", "statValue");
	self function_5367705a("duration_total_seconds", var_add23082);
	var_25ebea36 = self function_84368297("PlayerStatsList", "KILLS", "statValue");
	self function_5367705a("kills_Total", var_25ebea36);
	var_184f557a = self function_84368297("PlayerStatsList", "DEATHS", "statValue");
	self function_5367705a("deaths_Total", var_184f557a);
	var_ff16b041 = self function_84368297("deadOpsArcade", "totalGamesPlayed");
	self function_5367705a("deadOps_Total", var_ff16b041);
}

/*
	Name: function_3c0d2fc2
	Namespace: namespace_b976075a
	Checksum: 0x23F67C8C
	Offset: 0x22C8
	Size: 0x1DD3
	Parameters: 0
	Flags: None
*/
function function_3c0d2fc2()
{
	function_93bd348d();
	thread function_b9f48d20();
	self.var_8cf1797c = "hud_status_connecting";
	self waittill("hash_f38736d0");
	if(isdefined(level.var_b5059bb2))
	{
		self [[level.var_b5059bb2]]();
	}
	waittillframeend;
	self.var_8cf1797c = "";
	self.var_41acfae = self function_72a499c8();
	function_4216042e();
	namespace_9f824288::function_5d2cdd99();
	self function_33d9b2e3();
	self thread function_dc541b6d();
	function_bef6a4e6(4, "ship");
	level notify("hash_8339876", self);
	namespace_dabbe128::function_dabbe128("hash_eaffea17");
	if(self function_e025daa7())
	{
		self thread namespace_2282eece::function_dadad686();
	}
	if(!level.var_2016892b && !isdefined(self.var_44fb8955["score"]))
	{
		function_d52b076d(&"MP_CONNECTED", self);
	}
	if(!isdefined(self.var_44fb8955["score"]))
	{
		self thread namespace_fe5e4926::function_b33a7ae2();
		self namespace_fe5e4926::function_2eb5e93("valid", 0);
	}
	if(level.var_5d406297 || level.var_1d0304c || level.var_bb9b39ad && !isdefined(self.var_44fb8955["matchesPlayedStatsTracked"]))
	{
		var_d6356e96 = namespace_82b91a51::function_2647b1d();
		self namespace_2282eece::function_d1d6cfbf(var_d6356e96, "played", "started");
		if(!isdefined(self.var_44fb8955["matchesHostedStatsTracked"]) && self function_15caaab3())
		{
			self namespace_2282eece::function_d1d6cfbf(var_d6356e96, "hosted", "started");
			self.var_44fb8955["matchesHostedStatsTracked"] = 1;
		}
		self.var_44fb8955["matchesPlayedStatsTracked"] = 1;
		self thread namespace_fe5e4926::function_9392f054();
	}
	self namespace_29301e60::function_8a39c0e0();
	self.var_edd32051 = function_a8fb77bd();
	self thread namespace_82b91a51::function_975c673e();
	self thread namespace_82b91a51::function_cb6703ef();
	self thread namespace_82b91a51::function_b95a5c48();
	var_dc172949 = self function_c7f3ce11();
	var_9f5b154a = self function_72a499c8();
	function_14eb892("J;" + var_9f5b154a + ";" + var_dc172949 + ";" + self.var_4be20d44 + "
");
	var_7aa87b9b = self function_f49dd4fd(1);
	function_3aedd0a2("global_joins", "name %s client %s xuid %s", self.var_4be20d44, var_dc172949, var_7aa87b9b);
	if(!function_75e46361())
	{
		self namespace_82b91a51::function_c72856fc(1);
		self function_1b947e2a("weapon_hud_visible", 1);
	}
	if(level.var_a1b39c66 == 1)
	{
		self.var_44fb8955["hasRadar"] = 1;
		self.var_dcba9cef = 1;
		level.var_1303e940[self function_c7f3ce11()] = 1;
	}
	if(level.var_a1b39c66 == 2)
	{
		self function_1b947e2a("g_compassShowEnemies", level.var_a1b39c66);
	}
	else
	{
		self function_1b947e2a("g_compassShowEnemies", 0);
	}
	self function_329ce926(level.var_2595cc35);
	self function_579369bf(level.var_e782fb64);
	self.var_dc4a16f6 = level.var_e782fb64;
	/#
		self.var_6c733586 = 0;
	#/
	if(level.var_50527ffe)
	{
		self function_a5385772(3);
	}
	if(function_75e46361())
	{
		self [[level.var_22498e97]]();
	}
	else
	{
		self namespace_e32b5089::function_f4f342c9("score");
		if(level.var_5c7930f2)
		{
			self.var_44fb8955["score"] = 0;
		}
		self.var_f1242439 = self.var_44fb8955["score"];
		self namespace_e32b5089::function_f4f342c9("pointstowin");
		if(level.var_f7711ebc)
		{
			self.var_44fb8955["pointstowin"] = 0;
		}
		self.var_246bf1cb = self.var_44fb8955["pointstowin"];
		self namespace_e32b5089::function_f4f342c9("momentum", 0);
		self.var_a072e07b = self namespace_e32b5089::function_9142ee49("momentum");
		self namespace_e32b5089::function_f4f342c9("suicides");
		self.var_7bdaa8ee = self namespace_e32b5089::function_9142ee49("suicides");
		self namespace_e32b5089::function_f4f342c9("headshots");
		self.var_b79a4566 = self namespace_e32b5089::function_9142ee49("headshots");
		self namespace_e32b5089::function_f4f342c9("challenges");
		self.var_f74b04eb = self namespace_e32b5089::function_9142ee49("challenges");
		self namespace_e32b5089::function_f4f342c9("kills");
		self.var_ec0b278c = self namespace_e32b5089::function_9142ee49("kills");
		self namespace_e32b5089::function_f4f342c9("deaths");
		self.var_add55f80 = self namespace_e32b5089::function_9142ee49("deaths");
		self namespace_e32b5089::function_f4f342c9("assists");
		self.var_e69b4157 = self namespace_e32b5089::function_9142ee49("assists");
		self namespace_e32b5089::function_f4f342c9("incaps");
		self.var_58ef604f = self namespace_e32b5089::function_9142ee49("incaps");
		self namespace_e32b5089::function_f4f342c9("chickens", 0);
		self.var_973689b1 = self namespace_e32b5089::function_9142ee49("chickens");
		self namespace_e32b5089::function_f4f342c9("revives");
		self.var_a433a6cd = self namespace_e32b5089::function_9142ee49("revives");
		self namespace_e32b5089::function_f4f342c9("defends", 0);
		self.var_d2b735b8 = self namespace_e32b5089::function_9142ee49("defends");
		self namespace_e32b5089::function_f4f342c9("offends", 0);
		self.var_de585812 = self namespace_e32b5089::function_9142ee49("offends");
		self namespace_e32b5089::function_f4f342c9("plants", 0);
		self.var_463523bf = self namespace_e32b5089::function_9142ee49("plants");
		self namespace_e32b5089::function_f4f342c9("defuses", 0);
		self.var_8e1a3a0a = self namespace_e32b5089::function_9142ee49("defuses");
		self namespace_e32b5089::function_f4f342c9("returns", 0);
		self.var_d1c88d2e = self namespace_e32b5089::function_9142ee49("returns");
		self namespace_e32b5089::function_f4f342c9("captures", 0);
		self.var_9720d694 = self namespace_e32b5089::function_9142ee49("captures");
		self namespace_e32b5089::function_f4f342c9("destructions", 0);
		self.var_a0f0f076 = self namespace_e32b5089::function_9142ee49("destructions");
		self namespace_e32b5089::function_f4f342c9("disables", 0);
		self.var_7f776682 = self namespace_e32b5089::function_9142ee49("disables");
		self namespace_e32b5089::function_f4f342c9("escorts", 0);
		self.var_558039bc = self namespace_e32b5089::function_9142ee49("escorts");
		self namespace_e32b5089::function_f4f342c9("carries", 0);
		self.var_1b861326 = self namespace_e32b5089::function_9142ee49("carries");
		self namespace_e32b5089::function_f4f342c9("throws", 0);
		self.var_a0f0f076 = self namespace_e32b5089::function_9142ee49("throws");
		self namespace_e32b5089::function_f4f342c9("backstabs", 0);
		self.var_32c33103 = self namespace_e32b5089::function_9142ee49("backstabs");
		self namespace_e32b5089::function_f4f342c9("longshots", 0);
		self.var_8ec8835a = self namespace_e32b5089::function_9142ee49("longshots");
		self namespace_e32b5089::function_f4f342c9("survived", 0);
		self.var_56d8f697 = self namespace_e32b5089::function_9142ee49("survived");
		self namespace_e32b5089::function_f4f342c9("stabs", 0);
		self.var_a6bba610 = self namespace_e32b5089::function_9142ee49("stabs");
		self namespace_e32b5089::function_f4f342c9("tomahawks", 0);
		self.var_23de6272 = self namespace_e32b5089::function_9142ee49("tomahawks");
		self namespace_e32b5089::function_f4f342c9("humiliated", 0);
		self.var_e958d617 = self namespace_e32b5089::function_9142ee49("humiliated");
		self namespace_e32b5089::function_f4f342c9("x2score", 0);
		self.var_8a90400f = self namespace_e32b5089::function_9142ee49("x2score");
		self namespace_e32b5089::function_f4f342c9("agrkills", 0);
		self.var_8a90400f = self namespace_e32b5089::function_9142ee49("agrkills");
		self namespace_e32b5089::function_f4f342c9("hacks", 0);
		self.var_8a90400f = self namespace_e32b5089::function_9142ee49("hacks");
		self namespace_e32b5089::function_f4f342c9("killsconfirmed", 0);
		self.var_19fba777 = self namespace_e32b5089::function_9142ee49("killsconfirmed");
		self namespace_e32b5089::function_f4f342c9("killsdenied", 0);
		self.var_475c83ed = self namespace_e32b5089::function_9142ee49("killsdenied");
		self namespace_e32b5089::function_f4f342c9("sessionbans", 0);
		self.var_77f142c1 = self namespace_e32b5089::function_9142ee49("sessionbans");
		self namespace_e32b5089::function_f4f342c9("gametypeban", 0);
		self namespace_e32b5089::function_f4f342c9("time_played_total", 0);
		self namespace_e32b5089::function_f4f342c9("time_played_alive", 0);
		self namespace_e32b5089::function_f4f342c9("teamkills", 0);
		self namespace_e32b5089::function_f4f342c9("teamkills_nostats", 0);
		self.var_d9e008c5 = 0;
		if(level.var_fb0abb41 >= 0 && self.var_44fb8955["teamkills_nostats"] > level.var_fb0abb41)
		{
			self thread function_a1ea27f6();
		}
	}
	self.var_b75dfe9b = [];
	if(!isdefined(self.var_44fb8955["best_kill_streak"]))
	{
		self.var_44fb8955["killed_players"] = [];
		self.var_44fb8955["killed_by"] = [];
		self.var_44fb8955["nemesis_tracking"] = [];
		self.var_44fb8955["artillery_kills"] = 0;
		self.var_44fb8955["dog_kills"] = 0;
		self.var_44fb8955["nemesis_name"] = "";
		self.var_44fb8955["nemesis_rank"] = 0;
		self.var_44fb8955["nemesis_rankIcon"] = 0;
		self.var_44fb8955["nemesis_xp"] = 0;
		self.var_44fb8955["nemesis_xuid"] = "";
		self.var_44fb8955["best_kill_streak"] = 0;
	}
	if(!isdefined(self.var_44fb8955["music"]))
	{
		self.var_44fb8955["music"] = function_a8fb77bd();
		self.var_44fb8955["music"].var_9b7fda5e = 0;
		self.var_44fb8955["music"].var_2c1cbb93 = 0;
		self.var_44fb8955["music"].var_615e3c8f = "SILENT";
		self.var_44fb8955["music"].var_99cc27d5 = "SILENT";
		self.var_44fb8955["music"].var_ddd562e9 = "UNDERSCORE";
		self.var_44fb8955["music"].var_3a680d6a = "UNDERSCORE";
	}
	self.var_fdbdc097 = [];
	self.var_1a2f1204 = 0;
	self.var_5cb31cee = [];
	self.var_2c6be564 = "";
	self.var_4b6a621f = "";
	self.var_55e2bcec = 0;
	if(!isdefined(self.var_44fb8955["cur_kill_streak"]))
	{
		self.var_44fb8955["cur_kill_streak"] = 0;
	}
	if(!isdefined(self.var_44fb8955["cur_total_kill_streak"]))
	{
		self.var_44fb8955["cur_total_kill_streak"] = 0;
		self function_ea323cd9(0);
	}
	if(!isdefined(self.var_44fb8955["totalKillstreakCount"]))
	{
		self.var_44fb8955["totalKillstreakCount"] = 0;
	}
	if(!isdefined(self.var_44fb8955["killstreaksEarnedThisKillstreak"]))
	{
		self.var_44fb8955["killstreaksEarnedThisKillstreak"] = 0;
	}
	if(isdefined(level.var_67ff4934) && level.var_67ff4934 && !isdefined(self.var_44fb8955["killstreak_quantity"]))
	{
		self.var_44fb8955["killstreak_quantity"] = [];
	}
	if(isdefined(level.var_67ff4934) && level.var_67ff4934 && !isdefined(self.var_44fb8955["held_killstreak_ammo_count"]))
	{
		self.var_44fb8955["held_killstreak_ammo_count"] = [];
	}
	if(isdefined(level.var_67ff4934) && level.var_67ff4934 && !isdefined(self.var_44fb8955["held_killstreak_clip_count"]))
	{
		self.var_44fb8955["held_killstreak_clip_count"] = [];
	}
	if(!isdefined(self.var_44fb8955["changed_class"]))
	{
		self.var_44fb8955["changed_class"] = 0;
	}
	self.var_61af974a = 0;
	self.var_974918af = 0;
	self function_e9ba3885();
	self.var_ca46b382 = 0;
	self.var_d17010d6 = 0;
	self.var_45210d9b = 0;
	self.var_4c049c79 = -1;
	self.var_9f66af5e = 0;
	if(level.var_5eee5d0e)
	{
		self.var_ca46b382 = self function_84368297("HighestStats", "death_streak");
		self.var_d17010d6 = self function_84368297("HighestStats", "kill_streak");
		self.var_45210d9b = self namespace_fe5e4926::function_2369852e("kill_streak");
	}
	self.var_686f75e4 = -1;
	self.var_c9bca7d3 = 0;
	if(!isdefined(level.var_226b2ae5) || !level.var_226b2ae5 || !isdefined(self.var_44fb8955["lives"]))
	{
		self.var_44fb8955["lives"] = level.var_e782fb64;
	}
	if(!level.var_de12b72f)
	{
		self.var_44fb8955["team"] = undefined;
	}
	self.var_b0c19313 = 0;
	self.var_9fa69eee = 0;
	self.var_bb4b0e31 = 0;
	self.var_9ae398f6 = 0;
	self.var_5df1dd49 = GetTime();
	self.var_247e0696 = 0;
	self.var_bc077625 = 0;
	self.var_c1acde73 = 0;
	level.var_2395e945[level.var_2395e945.size] = self;
	if(level.var_2016892b)
	{
		function_6c1294b8("splitscreen_playerNum", level.var_2395e945.size);
	}
	if(game["state"] == "postgame")
	{
		self.var_44fb8955["needteam"] = 1;
		self.var_44fb8955["team"] = "spectator";
		self.var_3e94206a = "spectator";
		self.var_b2e5a818 = "spectator";
		self namespace_82b91a51::function_c72856fc(0);
		self [[level.var_8d9835ba]]();
		self function_eb306581();
		function_506ba7ea(4, "gs=" + game["state"] + " zom=" + function_75e46361());
		return;
	}
	if(level.var_5d406297 || level.var_1d0304c || level.var_bb9b39ad && !isdefined(self.var_44fb8955["lossAlreadyReported"]))
	{
		if(level.var_bb9b39ad)
		{
			self function_ce78831b();
		}
		namespace_e32b5089::function_214b6780(self);
		self.var_44fb8955["lossAlreadyReported"] = 1;
	}
	if(!isdefined(self.var_44fb8955["winstreakAlreadyCleared"]))
	{
		self namespace_e32b5089::function_af12c08a();
		self.var_44fb8955["winstreakAlreadyCleared"] = 1;
	}
	if(self function_26ce3b38())
	{
		self.var_44fb8955["isBot"] = 1;
	}
	if(level.var_5d406297 || level.var_bb9b39ad)
	{
		self namespace_fe5e4926::function_2eb5e93("demoFileID", "0");
	}
	level endon("hash_c8ab51de");
	if(isdefined(level.var_5f3b0fcc))
	{
		self thread namespace_6c1d04bd::function_41818acc();
	}
	if(level.var_52bf79c4)
	{
		self.var_44fb8955["class"] = undefined;
		self.var_808c68ef = self.var_44fb8955["class"];
	}
	if(isdefined(self.var_44fb8955["team"]))
	{
		self.var_3e94206a = self.var_44fb8955["team"];
	}
	if(isdefined(self.var_44fb8955["class"]))
	{
		self.var_808c68ef = self.var_44fb8955["class"];
	}
	if(!isdefined(self.var_44fb8955["team"]) || isdefined(self.var_44fb8955["needteam"]))
	{
		self.var_44fb8955["needteam"] = undefined;
		self.var_44fb8955["team"] = "spectator";
		self.var_3e94206a = "spectator";
		self.var_e0beb6ee = "dead";
		self namespace_88a69b2f::function_5c7708d6();
		[[level.var_dedbb7c9]]();
		[[level.var_d3d54a87]](0);
		if(level.var_5d406297 || level.var_bb9b39ad)
		{
			self thread namespace_7956eece::function_a418f7cc();
		}
		if(self.var_44fb8955["team"] == "spectator")
		{
			self.var_b2e5a818 = "spectator";
			self thread function_9933a9b1();
		}
		if(level.var_de12b72f)
		{
			self.var_b2e5a818 = self.var_44fb8955["team"];
			if(!function_5b49d38c(self))
			{
				self.var_8cf1797c = "hud_status_dead";
			}
			self thread namespace_54e5555d::function_c3d72c52();
		}
	}
	else if(self.var_44fb8955["team"] == "spectator")
	{
		self function_d7812975(game["menu_start_menu"]);
		[[level.var_dedbb7c9]]();
		self.var_b2e5a818 = "spectator";
		self.var_e0beb6ee = "spectator";
		self thread function_9933a9b1();
	}
	else
	{
		self.var_b2e5a818 = self.var_44fb8955["team"];
		self.var_e0beb6ee = "dead";
		self namespace_88a69b2f::function_5c7708d6();
		[[level.var_dedbb7c9]]();
		if(namespace_c46f5728::function_d0b6aba3(self.var_44fb8955["class"]))
		{
			self thread [[level.var_f3db290b]]();
		}
		else
		{
			self namespace_88a69b2f::function_845b492e();
		}
		self thread namespace_54e5555d::function_c3d72c52();
	}
	if(self.var_b2e5a818 != "spectator")
	{
		self [[level.var_19bc9234]](1);
	}
	function_506ba7ea(4, "gs=" + game["state"] + " zom=" + function_75e46361());
	namespace_2282eece::function_cd14a993();
	self function_b18d61a5();
	var_e04e8527 = self function_84368297("zmCampaignData", "unlocked");
	function_6e910ee6(self, "cpzmUnlocked", var_e04e8527);
}

/*
	Name: function_33d9b2e3
	Namespace: namespace_b976075a
	Checksum: 0x904131A7
	Offset: 0x40A8
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_33d9b2e3()
{
	var_58ef604f = self function_84368297("PlayerStatsList", "INCAPS", "statValue");
	var_a433a6cd = self function_84368297("PlayerStatsList", "REVIVES", "statValue");
	self function_b26abbde("INCAPS", var_58ef604f);
	self function_b26abbde("REVIVES", var_a433a6cd);
}

/*
	Name: function_dc541b6d
	Namespace: namespace_b976075a
	Checksum: 0x574E5587
	Offset: 0x4170
	Size: 0x3AF
	Parameters: 0
	Flags: None
*/
function function_dc541b6d()
{
	self endon("hash_643a7daf");
	if(!isdefined(function_9065d6ea()))
	{
		return;
	}
	while(1)
	{
		level waittill("hash_2693b45");
		var_7fc849de = self function_ebacf39a("INCAPS");
		if(isdefined(var_7fc849de))
		{
			/#
				namespace_33b293fd::function_a7ee953(var_7fc849de >= self function_84368297("Dev Block strings are not supported", "Dev Block strings are not supported", "Dev Block strings are not supported"));
			#/
			/#
				namespace_33b293fd::function_a7ee953(var_7fc849de >= self function_84368297("Dev Block strings are not supported", function_9065d6ea(), "Dev Block strings are not supported", "Dev Block strings are not supported"));
			#/
			self function_8f67433b("PlayerStatsList", "INCAPS", "statValue", var_7fc849de);
			self.var_58ef604f = var_7fc849de - self function_84368297("PlayerStatsByMap", function_9065d6ea(), "currentStats", "INCAPS");
			self.var_44fb8955["incaps"] = self.var_58ef604f;
		}
		var_be0f9382 = self function_ebacf39a("REVIVES");
		if(isdefined(var_be0f9382))
		{
			/#
				namespace_33b293fd::function_a7ee953(var_be0f9382 >= self function_84368297("Dev Block strings are not supported", "Dev Block strings are not supported", "Dev Block strings are not supported"));
			#/
			/#
				namespace_33b293fd::function_a7ee953(var_be0f9382 >= self function_84368297("Dev Block strings are not supported", function_9065d6ea(), "Dev Block strings are not supported", "Dev Block strings are not supported"));
			#/
			self function_8f67433b("PlayerStatsList", "REVIVES", "statValue", var_be0f9382);
			self.var_a433a6cd = var_be0f9382 - self function_84368297("PlayerStatsByMap", function_9065d6ea(), "currentStats", "REVIVES");
			/#
				namespace_33b293fd::function_a7ee953(self.var_a433a6cd >= 0);
			#/
			self.var_44fb8955["revives"] = self.var_a433a6cd;
		}
		var_e8695a49 = self function_ebacf39a("lives");
		if(isdefined(var_e8695a49))
		{
			self.var_dc4a16f6 = var_e8695a49;
			self function_b016cdb3("lives");
		}
		self function_5b7e454a(&"offsite_comms_complete");
	}
}

/*
	Name: function_9933a9b1
	Namespace: namespace_b976075a
	Checksum: 0x212857EE
	Offset: 0x4528
	Size: 0x23B
	Parameters: 0
	Flags: None
*/
function function_9933a9b1()
{
	self endon("hash_643a7daf");
	if(!level.var_2016892b && !level.var_50527ffe && function_4bd0142f("scr_showperksonspawn") == 1 && game["state"] != "postgame" && !isdefined(self.var_154c7505))
	{
		if(level.var_cf1be84f == 1)
		{
			self namespace_724a4794::function_1b1daa35();
		}
	}
	self.var_7877db21 = 1;
	self.var_f2e9a21a = undefined;
	while(1)
	{
		if(self.var_44fb8955["team"] != "spectator" || level.var_6b0d921)
		{
			self namespace_4d476a30::function_b17b90b9();
			self function_faf8f736(0);
			self.var_7877db21 = 0;
			break;
		}
		else
		{
			var_74952a22 = 0;
			for(var_c957f6b6 = 0; var_c957f6b6 < level.var_2395e945.size; var_c957f6b6++)
			{
				if(level.var_2395e945[var_c957f6b6].var_3e94206a != "spectator")
				{
					var_74952a22++;
					break;
				}
			}
			if(var_74952a22 > 0)
			{
				if(!self.var_7877db21)
				{
					self namespace_4d476a30::function_b17b90b9();
					self function_faf8f736(0);
				}
				self.var_7877db21 = 1;
			}
			else if(self.var_7877db21)
			{
				[[level.var_62209e9a]]();
				self function_faf8f736(1);
				self namespace_4d476a30::function_b5203d90();
			}
			self.var_7877db21 = 0;
			wait(0.5);
		}
	}
}

/*
	Name: function_238aedd1
	Namespace: namespace_b976075a
	Checksum: 0x55603C54
	Offset: 0x4770
	Size: 0xB9
	Parameters: 0
	Flags: None
*/
function function_238aedd1()
{
	/#
		function_895b00("Dev Block strings are not supported" + self.var_4be20d44 + "Dev Block strings are not supported" + GetTime());
	#/
	if(isdefined(self.var_8339876) && self.var_8339876)
	{
		self namespace_88a69b2f::function_5c7708d6();
	}
	level.var_7ec47890++;
	if(level.var_7ec47890 >= level.var_2395e945.size * 2 / 3)
	{
		/#
			function_895b00("Dev Block strings are not supported");
		#/
		level notify("hash_11225a52");
	}
}

/*
	Name: function_3ac6a6ae
	Namespace: namespace_b976075a
	Checksum: 0x82D8C19A
	Offset: 0x4838
	Size: 0x4E3
	Parameters: 0
	Flags: None
*/
function function_3ac6a6ae()
{
	function_bef6a4e6(5, "ship");
	if(game["state"] != "postgame" && !level.var_6b0d921)
	{
		var_b0d9a04f = namespace_2282eece::function_e20f20d1();
		self namespace_2282eece::function_ee01b9c(var_b0d9a04f, "MP_PLAYER_DISCONNECT", 0);
	}
	function_4216042e();
	namespace_9f824288::function_5d2cdd99();
	function_81403b2f(level.var_2395e945, self);
	if(level.var_2016892b)
	{
		var_2395e945 = level.var_2395e945;
		if(var_2395e945.size <= 1)
		{
			level thread namespace_2282eece::function_661a1c05();
		}
		function_6c1294b8("splitscreen_playerNum", var_2395e945.size);
	}
	if(isdefined(self.var_f1242439) && isdefined(self.var_44fb8955["team"]))
	{
		/#
			function_3bc5b442("Dev Block strings are not supported" + self.var_44fb8955["Dev Block strings are not supported"] + "Dev Block strings are not supported" + self.var_f1242439);
		#/
		level.var_bf59452d = level.var_bf59452d + 1;
	}
	[[level.var_2163426b]]();
	var_dc172949 = self function_c7f3ce11();
	var_9f5b154a = self function_72a499c8();
	function_14eb892("Q;" + var_9f5b154a + ";" + var_dc172949 + ";" + self.var_4be20d44 + "
");
	self namespace_29301e60::function_fd7b00ce();
	for(var_fcf5ae5b = 0; var_fcf5ae5b < level.var_2395e945.size; var_fcf5ae5b++)
	{
		if(isdefined(level.var_2395e945[var_fcf5ae5b].var_44fb8955["killed_players"][self.var_4be20d44]))
		{
			level.var_2395e945[var_fcf5ae5b].var_44fb8955["killed_players"][self.var_4be20d44] = undefined;
		}
		if(isdefined(level.var_2395e945[var_fcf5ae5b].var_b75dfe9b[self.var_4be20d44]))
		{
			level.var_2395e945[var_fcf5ae5b].var_b75dfe9b[self.var_4be20d44] = undefined;
		}
		if(isdefined(level.var_2395e945[var_fcf5ae5b].var_44fb8955["killed_by"][self.var_4be20d44]))
		{
			level.var_2395e945[var_fcf5ae5b].var_44fb8955["killed_by"][self.var_4be20d44] = undefined;
		}
		if(isdefined(level.var_2395e945[var_fcf5ae5b].var_44fb8955["nemesis_tracking"][self.var_4be20d44]))
		{
			level.var_2395e945[var_fcf5ae5b].var_44fb8955["nemesis_tracking"][self.var_4be20d44] = undefined;
		}
		if(level.var_2395e945[var_fcf5ae5b].var_44fb8955["nemesis_name"] == self.var_4be20d44)
		{
			level.var_2395e945[var_fcf5ae5b] function_78e81f9();
		}
	}
	function_be51e5e1(self, "disconnected");
	if(level.var_6b0d921)
	{
		self namespace_2282eece::function_3cf22630();
	}
	namespace_2282eece::function_cd14a993();
	function_506ba7ea(5, "gs=" + game["state"] + " zom=" + function_75e46361());
	self function_628760b4();
}

/*
	Name: function_2d14c1f4
	Namespace: namespace_b976075a
	Checksum: 0xC0B44AC5
	Offset: 0x4D28
	Size: 0xC3
	Parameters: 8
	Flags: None
*/
function function_2d14c1f4(var_3a212fd7, var_f9a179ed, var_dfcc01fd, var_bae4d31f, var_e8bb43ee, var_faf17161, var_51fdba3d, var_f99f1ccd)
{
	var_a5861930 = 1;
	if(level.var_de12b72f && self.var_3e94206a == var_3a212fd7.var_3e94206a)
	{
		if(level.var_98df9150 == 0)
		{
			var_a5861930 = 0;
		}
	}
	self function_e558ef0b(var_3a212fd7, var_dfcc01fd, var_bae4d31f, var_e8bb43ee, var_faf17161, var_51fdba3d, var_a5861930, var_f99f1ccd);
}

/*
	Name: function_78e81f9
	Namespace: namespace_b976075a
	Checksum: 0x10E5B686
	Offset: 0x4DF8
	Size: 0x241
	Parameters: 0
	Flags: None
*/
function function_78e81f9()
{
	var_cd81e6ce = self.var_44fb8955["nemesis_tracking"];
	var_661a1d52 = function_391512da(var_cd81e6ce);
	var_13dfcd67 = 0;
	var_29b07e5e = "";
	if(var_661a1d52.size > 0)
	{
		for(var_c957f6b6 = 0; var_c957f6b6 < var_661a1d52.size; var_c957f6b6++)
		{
			var_8923763 = var_661a1d52[var_c957f6b6];
			if(var_cd81e6ce[var_8923763] > var_13dfcd67)
			{
				var_29b07e5e = var_8923763;
				var_13dfcd67 = var_cd81e6ce[var_8923763];
			}
		}
	}
	self.var_44fb8955["nemesis_name"] = var_29b07e5e;
	if(var_29b07e5e != "")
	{
		for(var_d91dfa76 = 0; var_d91dfa76 < level.var_2395e945.size; var_d91dfa76++)
		{
			if(level.var_2395e945[var_d91dfa76].var_4be20d44 == var_29b07e5e)
			{
				var_4a4628f4 = level.var_2395e945[var_d91dfa76];
				self.var_44fb8955["nemesis_rank"] = var_4a4628f4.var_44fb8955["rank"];
				self.var_44fb8955["nemesis_rankIcon"] = var_4a4628f4.var_44fb8955["rankxp"];
				self.var_44fb8955["nemesis_xp"] = var_4a4628f4.var_44fb8955["prestige"];
				self.var_44fb8955["nemesis_xuid"] = var_4a4628f4 function_f49dd4fd();
				break;
			}
		}
	}
	else
	{
		self.var_44fb8955["nemesis_xuid"] = "";
	}
}

/*
	Name: function_b245f6c9
	Namespace: namespace_b976075a
	Checksum: 0x12D58A6E
	Offset: 0x5048
	Size: 0xEB
	Parameters: 7
	Flags: None
*/
function function_b245f6c9(var_8bcb913d, var_3a212fd7, var_f9a179ed, var_ba36487d, var_dfcc01fd, var_51e6a548, var_a77ad8eb)
{
	if(level.var_5eee5d0e && !function_16f43f1b())
	{
		return var_f9a179ed;
	}
	if(isdefined(var_3a212fd7) && isdefined(var_3a212fd7.var_3cb9cc19))
	{
		var_f9a179ed = var_f9a179ed * var_3a212fd7.var_3cb9cc19;
	}
	if(var_ba36487d == "MOD_PISTOL_BULLET" || var_ba36487d == "MOD_RIFLE_BULLET")
	{
		var_f9a179ed = function_b6b79a0(var_f9a179ed * level.var_efb793da);
	}
	return var_f9a179ed;
}

/*
	Name: function_15231ac6
	Namespace: namespace_b976075a
	Checksum: 0x30463C88
	Offset: 0x5140
	Size: 0x18F
	Parameters: 1
	Flags: None
*/
function function_15231ac6(var_3a212fd7)
{
	if(isdefined(var_3a212fd7))
	{
		if(function_e70ab977(var_3a212fd7) && isdefined(var_3a212fd7.var_c294c7fc))
		{
			var_3e94206a = self.var_3e94206a;
			if(function_e70ab977(self) && isdefined(self.var_3e94206a))
			{
				var_3e94206a = self.var_3e94206a;
			}
			if(var_3a212fd7.var_c294c7fc.var_3e94206a != var_3e94206a)
			{
				var_3a212fd7 = var_3a212fd7.var_c294c7fc;
			}
		}
		if(var_3a212fd7.var_e6e9b8de == "script_vehicle" && isdefined(var_3a212fd7.var_5e36fd2e) && !function_5cfb84bb(var_3a212fd7))
		{
			var_3a212fd7 = var_3a212fd7.var_5e36fd2e;
		}
		else if(var_3a212fd7.var_e6e9b8de == "auto_turret" && isdefined(var_3a212fd7.var_5e36fd2e))
		{
			var_3a212fd7 = var_3a212fd7.var_5e36fd2e;
		}
		if(isdefined(var_3a212fd7.var_6319d77b))
		{
			var_3a212fd7 = var_3a212fd7.var_6319d77b;
		}
	}
	return var_3a212fd7;
}

/*
	Name: function_406ab9b7
	Namespace: namespace_b976075a
	Checksum: 0xFFDAB1D6
	Offset: 0x52D8
	Size: 0xD3
	Parameters: 2
	Flags: None
*/
function function_406ab9b7(var_dfcc01fd, var_51e6a548)
{
	if(var_dfcc01fd == level.var_6c3e6703 && isdefined(var_51e6a548))
	{
		if(isdefined(var_51e6a548.var_170527fb) && var_51e6a548.var_170527fb == "explodable_barrel")
		{
			var_dfcc01fd = function_c4d5ec1f("explodable_barrel");
		}
		else if(isdefined(var_51e6a548.var_92dff85a) && function_5dbf7eca(var_51e6a548.var_92dff85a, "vehicle_"))
		{
			var_dfcc01fd = function_c4d5ec1f("destructible_car");
		}
	}
	return var_dfcc01fd;
}

/*
	Name: function_71d31062
	Namespace: namespace_b976075a
	Checksum: 0xFD4E0E9D
	Offset: 0x53B8
	Size: 0x11
	Parameters: 1
	Flags: None
*/
function function_71d31062(var_8bcb913d)
{
	return level.var_98df9150;
}

/*
	Name: function_f698740
	Namespace: namespace_b976075a
	Checksum: 0x94942CFE
	Offset: 0x53D8
	Size: 0x4D
	Parameters: 2
	Flags: None
*/
function function_f698740(var_3a212fd7, var_dfcc01fd)
{
	if(level.var_50527ffe)
	{
		return 0;
	}
	if(!isdefined(var_3a212fd7))
	{
		return 0;
	}
	if(self != var_3a212fd7)
	{
		return 0;
	}
	return var_dfcc01fd.var_6b1a911b;
}

/*
	Name: function_6e816103
	Namespace: namespace_b976075a
	Checksum: 0xCF968BF7
	Offset: 0x5430
	Size: 0x1D8B
	Parameters: 13
	Flags: None
*/
function function_6e816103(var_51e6a548, var_3a212fd7, var_f9a179ed, var_bf827987, var_ba36487d, var_dfcc01fd, var_88482219, var_e8bb43ee, var_a77ad8eb, var_6eb5fc54, var_a5cf2304, var_faf17161, var_7419ba1f)
{
	function_bef6a4e6(6, "ship");
	if(game["state"] == "postgame")
	{
		return;
	}
	if(self.var_b2e5a818 == "spectator")
	{
		return;
	}
	if(isdefined(self.var_f80930e6) && !self.var_f80930e6)
	{
		return;
	}
	if(self.var_ecba7dd8 === 0)
	{
		return;
	}
	if(isdefined(self.var_b41cccf7) && self.var_b41cccf7)
	{
		return;
	}
	if(isdefined(self.var_4c1451) && self.var_4c1451)
	{
		return;
	}
	if(isdefined(var_3a212fd7) && function_65f192a6(var_3a212fd7) && isdefined(var_3a212fd7.var_f80930e6) && !var_3a212fd7.var_f80930e6)
	{
		return;
	}
	if(isdefined(level.var_5f3b0fcc))
	{
		return;
	}
	if(var_ba36487d === "MOD_TRIGGER_HURT" && isdefined(var_51e6a548) && function_2477ac2(var_51e6a548.var_75dbd7))
	{
		if(var_51e6a548.var_75dbd7 != "none" && var_51e6a548.var_75dbd7 != "false")
		{
			namespace_419e977d::function_d65827ea(var_51e6a548.var_75dbd7, var_f9a179ed, var_51e6a548, self.var_8dcb3948);
			return;
		}
	}
	if(self namespace_564407fb::function_38a9aff8())
	{
		self notify("hash_b79afd4d", var_f9a179ed);
		return;
	}
	var_e3a45b44 = var_dfcc01fd.var_4be20d44;
	if(var_e3a45b44 == "ai_tank_drone_gun" || var_e3a45b44 == "ai_tank_drone_rocket" && !level.var_50527ffe)
	{
		if(isdefined(var_3a212fd7) && var_3a212fd7 == self)
		{
			if(isdefined(var_51e6a548) && isdefined(var_51e6a548.var_b25a8016))
			{
				return;
			}
		}
		if(isdefined(var_3a212fd7) && isdefined(var_3a212fd7.var_5e36fd2e) && var_3a212fd7.var_5e36fd2e == self)
		{
			return;
		}
	}
	if(var_dfcc01fd.var_83023915)
	{
		if(self function_88542fcf("specialty_immuneemp"))
		{
			return;
		}
		self notify("hash_34364bee", var_3a212fd7);
	}
	if(isdefined(self.var_1554f271))
	{
		var_1554f271 = self.var_1554f271;
	}
	else if(isdefined(level.var_1554f271))
	{
		var_1554f271 = level.var_1554f271;
	}
	if(isdefined(var_1554f271))
	{
		var_b60718f7 = self [[var_1554f271]](var_51e6a548, var_3a212fd7, var_f9a179ed, var_bf827987, var_ba36487d, var_dfcc01fd, var_88482219, var_e8bb43ee, var_a77ad8eb, var_a5cf2304, var_faf17161);
		if(isdefined(var_b60718f7))
		{
			if(var_b60718f7 <= 0)
			{
				return;
			}
			var_f9a179ed = var_b60718f7;
		}
	}
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_f9a179ed), "Dev Block strings are not supported");
	#/
	self namespace_dabbe128::function_dabbe128("hash_ab5ecf6c");
	if(isdefined(var_3a212fd7))
	{
		var_f9a179ed = namespace_a249d1db::function_923da066(self, var_3a212fd7, var_f9a179ed, var_ba36487d, var_dfcc01fd, var_51e6a548, var_a77ad8eb);
		if(isdefined(var_b60718f7))
		{
			if(var_b60718f7 <= 0)
			{
				return;
			}
			var_f9a179ed = var_b60718f7;
		}
	}
	var_f9a179ed = function_b245f6c9(self, var_3a212fd7, var_f9a179ed, var_ba36487d, var_dfcc01fd, var_51e6a548, var_a77ad8eb);
	var_f9a179ed = function_b6b79a0(var_f9a179ed);
	self.var_bf827987 = var_bf827987;
	self.var_1ec50a94 = GetTime();
	var_3a212fd7 = function_15231ac6(var_3a212fd7);
	var_f9a179ed = namespace_175490fb::function_2b5f1af7(self, var_3a212fd7, var_51e6a548, var_f9a179ed, var_dfcc01fd, var_a77ad8eb, var_ba36487d);
	if(var_ba36487d != "MOD_FALLING")
	{
		var_f9a179ed = namespace_6c41e242::function_57ab3c9d(self, var_3a212fd7, var_51e6a548, var_f9a179ed, var_dfcc01fd, var_a77ad8eb, var_ba36487d);
	}
	var_f9a179ed = namespace_6c41e242::function_904126cf(self, var_3a212fd7, var_51e6a548, var_f9a179ed, var_dfcc01fd, var_a77ad8eb, var_ba36487d);
	var_f9a179ed = namespace_175490fb::function_5ad6b98d(var_3a212fd7, self, var_f9a179ed);
	var_f9a179ed = function_b6b79a0(var_f9a179ed);
	function_c22bfa61("PlayerDamage flags/tweaks");
	if(!isdefined(var_e8bb43ee))
	{
		var_bf827987 = var_bf827987 | 4;
	}
	var_3e820b54 = 0;
	if(self.var_3a90f16b != self.var_47c252e3)
	{
		self notify("hash_b6c93e47", var_ba36487d);
	}
	if(isdefined(var_51e6a548) && isdefined(var_51e6a548.var_caae374e))
	{
		if(var_51e6a548.var_caae374e == "ragdoll_now")
		{
			var_ba36487d = "MOD_FALLING";
		}
		if(isdefined(level.var_a11526e7))
		{
			var_dfcc01fd = [[level.var_a11526e7]](var_dfcc01fd, var_51e6a548.var_caae374e);
		}
	}
	if(namespace_c46f5728::function_7874f1ab(var_dfcc01fd, var_a77ad8eb, var_ba36487d, var_51e6a548) && function_65f192a6(var_3a212fd7))
	{
		var_ba36487d = "MOD_HEAD_SHOT";
	}
	if(level.var_f459c6d6 != &namespace_2282eece::function_90f415c9)
	{
		var_b60718f7 = [[level.var_f459c6d6]](var_51e6a548, var_3a212fd7, var_f9a179ed, var_bf827987, var_ba36487d, var_dfcc01fd, var_88482219, var_e8bb43ee, var_a77ad8eb, var_a5cf2304);
		if(isdefined(var_b60718f7))
		{
			if(var_b60718f7 <= 0)
			{
				return;
			}
			var_f9a179ed = var_b60718f7;
		}
	}
	if(level.var_32807bac)
	{
		if(var_ba36487d == "MOD_PISTOL_BULLET" || var_ba36487d == "MOD_RIFLE_BULLET")
		{
			return;
		}
		else if(var_ba36487d == "MOD_HEAD_SHOT")
		{
			var_f9a179ed = 150;
		}
	}
	if(self function_683a7bd(var_ba36487d))
	{
		return;
	}
	if(isdefined(var_3a212fd7) && function_65f192a6(var_3a212fd7) && self.var_3e94206a != var_3a212fd7.var_3e94206a)
	{
		self.var_47331425 = var_dfcc01fd;
	}
	var_dfcc01fd = function_406ab9b7(var_dfcc01fd, var_51e6a548);
	function_7905cb51();
	if(isdefined(var_3a212fd7) && function_e70ab977(var_3a212fd7))
	{
		if(self.var_3e94206a == var_3a212fd7.var_3e94206a && var_ba36487d == "MOD_MELEE")
		{
			return;
		}
	}
	var_d2e71a2f = function_65f192a6(var_3a212fd7) && self namespace_82b91a51::function_b074c98c(var_3a212fd7) == 0;
	if(var_a77ad8eb == "riotshield")
	{
		if(var_d2e71a2f && level.var_98df9150 == 0)
		{
			return;
		}
		if(var_ba36487d == "MOD_PISTOL_BULLET" || var_ba36487d == "MOD_RIFLE_BULLET" && !var_d2e71a2f)
		{
			if(self.var_fd3f68e1)
			{
				if(function_65f192a6(var_3a212fd7))
				{
					var_3a212fd7.var_386de34e = self;
					var_3a212fd7.var_2c5d4906 = GetTime();
				}
				var_41b8264e = self.var_85660ebf;
				self.var_85660ebf = self.var_85660ebf + var_f9a179ed;
				if(self.var_85660ebf % 400 < var_41b8264e % 400)
				{
					var_13b2f144 = "shield_blocked_damage";
					if(self.var_85660ebf > 2000)
					{
						var_13b2f144 = "shield_blocked_damage_reduced";
					}
					if(isdefined(level.var_e92e5e75[var_13b2f144]["value"]))
					{
						self function_1f4288c0(level.var_fa27506c, "score_from_blocked_damage", level.var_e92e5e75[var_13b2f144]["value"]);
					}
					thread namespace_a1cb6b52::function_ea11cfd6(var_13b2f144, self);
				}
			}
		}
		if(var_bf827987 & 32)
		{
			var_a77ad8eb = "none";
			if(!var_bf827987 & 64)
			{
				var_f9a179ed = var_f9a179ed * 0;
			}
		}
		else if(var_bf827987 & 128)
		{
			if(isdefined(var_51e6a548) && isdefined(var_51e6a548.var_67b7913) && var_51e6a548.var_67b7913 == self)
			{
				var_f9a179ed = 101;
			}
			var_a77ad8eb = "none";
		}
		else
		{
			return;
		}
	}
	if(!var_bf827987 & 2048)
	{
		if(isdefined(var_51e6a548) && (var_ba36487d == "MOD_GAS" || namespace_a249d1db::function_261a5dc5(var_ba36487d)))
		{
			if(var_51e6a548.var_e6e9b8de == "grenade" || var_e3a45b44 == "tabun_gas" && self.var_f5190531 + 3500 > GetTime() && function_cb3d1c9b(var_51e6a548.var_722885f3, self.var_40952794.var_722885f3) < 62500)
			{
				return;
			}
			if(self function_f698740(var_3a212fd7, var_dfcc01fd))
			{
				return;
			}
			self.var_8a47b972 = [];
			self.var_8a47b972["damageTime"] = GetTime();
			self.var_8a47b972["damageId"] = var_51e6a548 function_c7f3ce11();
			self.var_8a47b972["originalOwnerKill"] = 0;
			self.var_8a47b972["bulletPenetrationKill"] = 0;
			self.var_8a47b972["chainKill"] = 0;
			self.var_8a47b972["damageExplosiveKill"] = 0;
			self.var_8a47b972["chainKill"] = 0;
			self.var_8a47b972["cookedKill"] = 0;
			self.var_8a47b972["weapon"] = var_dfcc01fd;
			self.var_8a47b972["originalowner"] = var_51e6a548.var_152a6ab9;
			var_1bb0c45d = var_e3a45b44 == "frag_grenade";
			if(isdefined(var_3a212fd7) && var_3a212fd7 != self)
			{
				if(isdefined(var_3a212fd7) && isdefined(var_51e6a548.var_5e36fd2e) && (var_dfcc01fd.var_4be20d44 == "satchel_charge" || var_dfcc01fd.var_4be20d44 == "claymore" || var_dfcc01fd.var_4be20d44 == "bouncingbetty"))
				{
					self.var_8a47b972["originalOwnerKill"] = var_51e6a548.var_5e36fd2e == self;
					self.var_8a47b972["damageExplosiveKill"] = isdefined(var_51e6a548.var_7c79c635);
					self.var_8a47b972["chainKill"] = isdefined(var_51e6a548.var_7828acd8);
					self.var_8a47b972["wasJustPlanted"] = isdefined(var_51e6a548.var_566ad116);
					self.var_8a47b972["bulletPenetrationKill"] = isdefined(var_51e6a548.var_f8d26a4c);
					self.var_8a47b972["cookedKill"] = 0;
				}
				if(isdefined(var_51e6a548) && isdefined(var_51e6a548.var_67b7913) && var_dfcc01fd.var_fa7d969 == "grenade")
				{
					self.var_8a47b972["stuckToPlayer"] = var_51e6a548.var_67b7913;
				}
				if(var_dfcc01fd.var_fb58cd4d)
				{
					self.var_e2e6a75d = var_3a212fd7;
					self.var_d964b64d = self.var_1ec50a94;
				}
				if(isdefined(var_3a212fd7.var_686f75e4) && var_3a212fd7.var_686f75e4 >= GetTime() - 50 && var_1bb0c45d)
				{
					self.var_8a47b972["suicideGrenadeKill"] = 1;
				}
				else
				{
					self.var_8a47b972["suicideGrenadeKill"] = 0;
				}
			}
			if(var_1bb0c45d)
			{
				self.var_8a47b972["cookedKill"] = isdefined(var_51e6a548.var_9cb131c2);
				self.var_8a47b972["throwbackKill"] = isdefined(var_51e6a548.var_6810c540);
			}
			if(isdefined(var_3a212fd7) && function_65f192a6(var_3a212fd7) && var_3a212fd7 != self)
			{
				self namespace_e32b5089::function_50ec476d(var_51e6a548, var_3a212fd7, var_dfcc01fd);
			}
		}
		if(var_ba36487d == "MOD_IMPACT" && isdefined(var_3a212fd7) && function_65f192a6(var_3a212fd7) && var_3a212fd7 != self)
		{
			if(var_dfcc01fd != level.var_2febfe79)
			{
				self namespace_e32b5089::function_50ec476d(var_51e6a548, var_3a212fd7, var_dfcc01fd);
			}
			if(var_dfcc01fd.var_4be20d44 == "hatchet" && isdefined(var_51e6a548))
			{
				self.var_8a47b972["projectile_bounced"] = isdefined(var_51e6a548.var_7ed4153b);
			}
		}
		if(function_65f192a6(var_3a212fd7))
		{
			var_3a212fd7.var_44fb8955["participation"]++;
		}
		var_644dc4a9 = self.var_3a90f16b / self.var_47c252e3;
		if(var_ba36487d == "MOD_PISTOL_BULLET" || var_ba36487d == "MOD_RIFLE_BULLET" || var_ba36487d == "MOD_PROJECTILE" || var_ba36487d == "MOD_GRENADE_SPLASH" || var_ba36487d == "MOD_PROJECTILE_SPLASH")
		{
			if(var_f9a179ed >= self.var_3a90f16b && var_3a212fd7 != self && self.var_3e94206a != var_3a212fd7.var_3e94206a)
			{
				var_535d0dae = self namespace_6c41e242::function_10a2e0f5();
				if(var_535d0dae)
				{
					self function_e17e9c98(2 / self.var_47c252e3);
					var_f9a179ed = 1;
				}
			}
		}
		if(var_dfcc01fd.var_1adbc7b4 === "riotshield" && self != var_3a212fd7 && self.var_3e94206a != var_3a212fd7.var_3e94206a)
		{
			function_9cf04c2e(0.25, 0.1, self.var_722885f3, 16, self);
		}
		if(level.var_de12b72f && function_5cfb84bb(var_3a212fd7) && self != var_3a212fd7 && self.var_3e94206a == var_3a212fd7.var_3e94206a)
		{
			function_97a88ab2("BEGIN: PlayerDamage player");
			if(level.var_98df9150 == 0)
			{
				if(var_dfcc01fd.var_e2165e3b)
				{
					self function_3c70a91e(var_3a212fd7, var_51e6a548, var_dfcc01fd, var_ba36487d, var_f9a179ed);
				}
				return;
			}
			else if(level.var_98df9150 == 1)
			{
				if(var_f9a179ed < 1)
				{
					var_f9a179ed = 1;
				}
				if(level.var_54b946d && level.var_512cd40a >= GetTime() - level.var_a4ad846c - level.var_7f9f5cee / 1000)
				{
					var_3a212fd7.var_f5649d63 = 0;
					var_3a212fd7.var_e5f0cd07 = 1;
					var_3a212fd7 function_8cc0a609(var_51e6a548, var_3a212fd7, var_f9a179ed, var_bf827987, var_ba36487d, var_dfcc01fd, var_88482219, var_e8bb43ee, var_a77ad8eb, var_6eb5fc54, var_a5cf2304, var_faf17161, var_7419ba1f);
					var_3a212fd7.var_e5f0cd07 = undefined;
				}
				else
				{
					self.var_f5649d63 = 0;
					self function_8cc0a609(var_51e6a548, var_3a212fd7, var_f9a179ed, var_bf827987, var_ba36487d, var_dfcc01fd, var_88482219, var_e8bb43ee, var_a77ad8eb, var_6eb5fc54, var_a5cf2304, var_faf17161, var_7419ba1f);
				}
			}
			else if(level.var_98df9150 == 2 && function_5b49d38c(var_3a212fd7))
			{
				var_f9a179ed = function_b6b79a0(var_f9a179ed * 0.5);
				if(var_f9a179ed < 1)
				{
					var_f9a179ed = 1;
				}
				var_3a212fd7.var_f5649d63 = 0;
				var_3a212fd7.var_e5f0cd07 = 1;
				var_3a212fd7 function_8cc0a609(var_51e6a548, var_3a212fd7, var_f9a179ed, var_bf827987, var_ba36487d, var_dfcc01fd, var_88482219, var_e8bb43ee, var_a77ad8eb, var_6eb5fc54, var_a5cf2304, var_faf17161, var_7419ba1f);
				var_3a212fd7.var_e5f0cd07 = undefined;
			}
			else if(level.var_98df9150 == 3 && function_5b49d38c(var_3a212fd7))
			{
				var_f9a179ed = function_b6b79a0(var_f9a179ed * 0.5);
				if(var_f9a179ed < 1)
				{
					var_f9a179ed = 1;
				}
				self.var_f5649d63 = 0;
				var_3a212fd7.var_f5649d63 = 0;
				self function_8cc0a609(var_51e6a548, var_3a212fd7, var_f9a179ed, var_bf827987, var_ba36487d, var_dfcc01fd, var_88482219, var_e8bb43ee, var_a77ad8eb, var_6eb5fc54, var_a5cf2304, var_faf17161, var_7419ba1f);
				var_3a212fd7.var_e5f0cd07 = 1;
				var_3a212fd7 function_8cc0a609(var_51e6a548, var_3a212fd7, var_f9a179ed, var_bf827987, var_ba36487d, var_dfcc01fd, var_88482219, var_e8bb43ee, var_a77ad8eb, var_6eb5fc54, var_a5cf2304, var_faf17161, var_7419ba1f);
				var_3a212fd7.var_e5f0cd07 = undefined;
			}
			var_3e820b54 = 1;
			function_97a88ab2("END: PlayerDamage player");
		}
		else if(var_f9a179ed < 1)
		{
			var_f9a179ed = 1;
		}
		function_85b1d74(var_3a212fd7, var_51e6a548, var_f9a179ed, var_ba36487d, var_dfcc01fd);
		if(isdefined(var_3a212fd7))
		{
			level.var_90a6a9eb = var_3a212fd7;
		}
		if(var_ba36487d == "MOD_GRENADE" || var_ba36487d == "MOD_GRENADE_SPLASH" && isdefined(var_51e6a548) && isdefined(var_51e6a548.var_9cb131c2))
		{
			self.var_38c4a787 = GetTime();
		}
		else
		{
			self.var_38c4a787 = undefined;
		}
		self.var_f5649d63 = isdefined(var_3a212fd7) && var_3a212fd7 != self;
		if(self.var_f5649d63)
		{
			if(function_65f192a6(var_3a212fd7))
			{
				if(isdefined(var_3a212fd7.var_13fed2e4[self.var_9ee32e67]) == 0)
				{
					var_3a212fd7.var_13fed2e4[self.var_9ee32e67] = function_a8fb77bd();
				}
				var_3a212fd7.var_13fed2e4[self.var_9ee32e67].var_60db70fa = GetTime();
				var_3a212fd7.var_13fed2e4[self.var_9ee32e67].var_aa10fce8 = self;
			}
		}
		self function_8cc0a609(var_51e6a548, var_3a212fd7, var_f9a179ed, var_bf827987, var_ba36487d, var_dfcc01fd, var_88482219, var_e8bb43ee, var_a77ad8eb, var_6eb5fc54, var_a5cf2304, var_faf17161, var_7419ba1f);
		if(isdefined(var_3a212fd7) && function_65f192a6(var_3a212fd7) && var_3a212fd7 != self)
		{
			if(namespace_fc79db9f::function_a2f24e04(var_dfcc01fd, var_51e6a548, var_f9a179ed, var_ba36487d))
			{
				if(var_f9a179ed > 0)
				{
					if(self.var_3a90f16b > 0)
					{
						var_9f31b29c = function_6b151027(self, var_dfcc01fd, var_ba36487d, var_51e6a548);
					}
					var_3a212fd7 thread namespace_fc79db9f::function_debccd1a(var_ba36487d, var_51e6a548, var_9f31b29c);
				}
			}
		}
		if(function_27c72c1b() && isdefined(level.var_652674d2))
		{
			self [[level.var_652674d2]](var_dfcc01fd, var_3a212fd7, var_f9a179ed, var_ba36487d);
		}
		self.var_8061ea77 = 1;
	}
	function_c22bfa61("PlayerDamage log");
	/#
		if(function_4bd0142f("Dev Block strings are not supported"))
		{
			if(isdefined(var_3a212fd7.var_9ee32e67))
			{
				function_895b00("Dev Block strings are not supported" + self function_c7f3ce11() + "Dev Block strings are not supported" + self.var_3a90f16b + "Dev Block strings are not supported" + var_3a212fd7.var_9ee32e67 + "Dev Block strings are not supported" + function_65f192a6(var_51e6a548) + "Dev Block strings are not supported" + var_f9a179ed + "Dev Block strings are not supported" + var_a77ad8eb);
			}
			else
			{
				function_895b00("Dev Block strings are not supported" + self function_c7f3ce11() + "Dev Block strings are not supported" + self.var_3a90f16b + "Dev Block strings are not supported" + var_3a212fd7 function_c7f3ce11() + "Dev Block strings are not supported" + function_65f192a6(var_51e6a548) + "Dev Block strings are not supported" + var_f9a179ed + "Dev Block strings are not supported" + var_a77ad8eb);
			}
		}
	#/
	if(self.var_e0beb6ee != "dead")
	{
		var_dc172949 = self function_c7f3ce11();
		var_3e663292 = self.var_4be20d44;
		var_a78c1b64 = self.var_3e94206a;
		var_4b494164 = self function_72a499c8();
		var_7be9724b = "";
		var_f23089ea = self namespace_564407fb::function_38a9aff8();
		if(function_65f192a6(var_3a212fd7))
		{
			var_e2304bd3 = var_3a212fd7 function_c7f3ce11();
			var_98af58b2 = var_3a212fd7 function_72a499c8();
			var_62c01908 = var_3a212fd7.var_4be20d44;
			var_7be9724b = var_3a212fd7.var_3e94206a;
		}
		else
		{
			var_90a0048 = "world";
			var_7be9724b = "world";
			var_e2304bd3 = -1;
			var_98af58b2 = "";
			var_62c01908 = "";
		}
		namespace_d8129fdd::function_2aa586aa(var_3a212fd7, self, var_dfcc01fd, var_f9a179ed, var_ba36487d, var_a77ad8eb, 0, var_f23089ea);
		function_14eb892("D;" + var_4b494164 + ";" + var_dc172949 + ";" + var_a78c1b64 + ";" + var_3e663292 + ";" + var_98af58b2 + ";" + var_e2304bd3 + ";" + var_7be9724b + ";" + var_62c01908 + ";" + var_dfcc01fd.var_4be20d44 + ";" + var_f9a179ed + ";" + var_ba36487d + ";" + var_a77ad8eb + "
");
	}
	function_7905cb51();
	function_506ba7ea(6, "gs=" + game["state"] + " zom=" + function_75e46361());
}

/*
	Name: function_683a7bd
	Namespace: namespace_b976075a
	Checksum: 0xF03A05A0
	Offset: 0x71C8
	Size: 0x73
	Parameters: 1
	Flags: None
*/
function function_683a7bd(var_ba36487d)
{
	if(self function_445e3712())
	{
		return 0;
	}
	if(!isdefined(level.var_88cb5f62))
	{
		level.var_88cb5f62 = 0;
	}
	var_7d9d2c38 = level.var_88cb5f62 && self namespace_96fa87af::function_64e68872();
	return var_7d9d2c38;
}

/*
	Name: function_2b8bc4cb
	Namespace: namespace_b976075a
	Checksum: 0xA6C42DE4
	Offset: 0x7248
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_2b8bc4cb()
{
	self.var_f5c59027 = [];
	self.var_f9d53f6c = [];
	self.var_ca1ab1e7 = [];
	self.var_46fd7603 = 0;
}

/*
	Name: function_6b151027
	Namespace: namespace_b976075a
	Checksum: 0x9B616641
	Offset: 0x7288
	Size: 0x137
	Parameters: 4
	Flags: None
*/
function function_6b151027(var_5dc5e20a, var_dfcc01fd, var_ba36487d, var_51e6a548)
{
	var_9f31b29c = undefined;
	var_bb61b344 = namespace_a249d1db::function_bb61b344(var_5dc5e20a);
	var_b6f6c8a7 = var_5dc5e20a function_88542fcf("specialty_flakjacket");
	var_261a5dc5 = namespace_a249d1db::function_261a5dc5(var_ba36487d);
	var_4cf0410d = namespace_30fc7b57::function_4cf0410d(var_dfcc01fd, var_ba36487d);
	if(var_4cf0410d && var_bb61b344)
	{
		var_9f31b29c = "tacticalMask";
	}
	else if(var_261a5dc5 && var_b6f6c8a7 && !var_dfcc01fd.var_fa4b89ee && !function_81c21d0a(var_dfcc01fd, var_51e6a548))
	{
		var_9f31b29c = "flakjacket";
	}
	return var_9f31b29c;
}

/*
	Name: function_81c21d0a
	Namespace: namespace_b976075a
	Checksum: 0x84A15E51
	Offset: 0x73C8
	Size: 0x5B
	Parameters: 2
	Flags: None
*/
function function_81c21d0a(var_dfcc01fd, var_51e6a548)
{
	if(var_dfcc01fd.var_81c21d0a)
	{
		if(var_dfcc01fd.var_4be20d44 != "ai_tank_drone_rocket" || isdefined(var_51e6a548.var_97b9f9ce))
		{
			return 1;
		}
	}
	return 0;
}

/*
	Name: function_8cc0a609
	Namespace: namespace_b976075a
	Checksum: 0x9A23BEA7
	Offset: 0x7430
	Size: 0x25B
	Parameters: 13
	Flags: None
*/
function function_8cc0a609(var_51e6a548, var_3a212fd7, var_f9a179ed, var_bf827987, var_ba36487d, var_dfcc01fd, var_88482219, var_e8bb43ee, var_a77ad8eb, var_6eb5fc54, var_a5cf2304, var_faf17161, var_7419ba1f)
{
	function_c22bfa61("finishPlayerDamageWrapper");
	if(!level.var_e89a8a5c && var_bf827987 & 8 && function_65f192a6(var_3a212fd7))
	{
		/#
			function_895b00("Dev Block strings are not supported" + self function_c7f3ce11() + "Dev Block strings are not supported" + self.var_3a90f16b + "Dev Block strings are not supported" + var_3a212fd7.var_9ee32e67 + "Dev Block strings are not supported" + function_65f192a6(var_51e6a548) + "Dev Block strings are not supported" + var_f9a179ed + "Dev Block strings are not supported" + var_a77ad8eb);
		#/
		var_3a212fd7 function_aa67c13b("penetration_shots", 1);
	}
	if(function_6f1ebe57("scr_csmode") != "")
	{
		self function_f1aa5a21("damage_mp", 0.2);
	}
	self function_3c70a91e(var_3a212fd7, var_51e6a548, var_dfcc01fd, var_ba36487d, var_f9a179ed);
	self namespace_fcced877::function_4111b469(var_3a212fd7, var_51e6a548, var_dfcc01fd, var_ba36487d, var_f9a179ed);
	self function_788e5cb8(var_51e6a548, var_3a212fd7, var_f9a179ed, var_bf827987, var_ba36487d, var_dfcc01fd, var_88482219, var_e8bb43ee, var_a77ad8eb, var_6eb5fc54, var_a5cf2304, var_faf17161, var_7419ba1f);
	function_7905cb51();
}

/*
	Name: function_44ee63ae
	Namespace: namespace_b976075a
	Checksum: 0x7F8E66A8
	Offset: 0x7698
	Size: 0xD
	Parameters: 1
	Flags: None
*/
function function_44ee63ae(var_dfcc01fd)
{
	return 0;
}

/*
	Name: function_da9b1acd
	Namespace: namespace_b976075a
	Checksum: 0x575A1958
	Offset: 0x76B0
	Size: 0x309
	Parameters: 2
	Flags: None
*/
function function_da9b1acd(var_a0ad4f34, var_dfcc01fd)
{
	if(!isdefined(self.var_320486a0))
	{
		if(function_65f192a6(var_a0ad4f34) && level.var_de12b72f && var_a0ad4f34 != self && self.var_3e94206a == var_a0ad4f34.var_3e94206a)
		{
			self.var_44fb8955["cur_kill_streak"] = 0;
			self.var_44fb8955["cur_total_kill_streak"] = 0;
			self.var_44fb8955["totalKillstreakCount"] = 0;
			self.var_44fb8955["killstreaksEarnedThisKillstreak"] = 0;
			self function_ea323cd9(0);
		}
		else
		{
			self namespace_e32b5089::function_ec3c08d5("deaths", 1, 1, 1);
			self.var_add55f80 = self namespace_e32b5089::function_9142ee49("deaths");
			self function_9e74b5ad("kdratio", "kills", "deaths");
			if(self.var_44fb8955["cur_kill_streak"] > self.var_44fb8955["best_kill_streak"])
			{
				self.var_44fb8955["best_kill_streak"] = self.var_44fb8955["cur_kill_streak"];
			}
			self.var_44fb8955["kill_streak_before_death"] = self.var_44fb8955["cur_kill_streak"];
			self.var_44fb8955["cur_kill_streak"] = 0;
			self.var_44fb8955["cur_total_kill_streak"] = 0;
			self.var_44fb8955["totalKillstreakCount"] = 0;
			self.var_44fb8955["killstreaksEarnedThisKillstreak"] = 0;
			self function_ea323cd9(0);
			self.var_974918af++;
			if(self.var_974918af > self.var_ca46b382)
			{
				if(level.var_5d406297 && !level.var_b03ee83a)
				{
					self function_8f67433b("HighestStats", "death_streak", self.var_974918af);
				}
				self.var_ca46b382 = self.var_974918af;
			}
			if(self.var_974918af >= function_4bd0142f("perk_deathStreakCountRequired"))
			{
				self function_9a74770();
			}
		}
	}
	else
	{
		self.var_44fb8955["totalKillstreakCount"] = 0;
		self.var_44fb8955["killstreaksEarnedThisKillstreak"] = 0;
	}
}

/*
	Name: function_6c73fce1
	Namespace: namespace_b976075a
	Checksum: 0xE3A9073B
	Offset: 0x79C8
	Size: 0x253
	Parameters: 6
	Flags: None
*/
function function_6c73fce1(var_a0ad4f34, var_dfcc01fd, var_ba36487d, var_93b580b3, var_a3ad44ab, var_178903fd)
{
	if(function_65f192a6(var_a0ad4f34) && var_a0ad4f34 != self && (!level.var_de12b72f || (level.var_de12b72f && self.var_3e94206a != var_a0ad4f34.var_3e94206a)))
	{
		self function_1f4288c0(var_dfcc01fd, "deaths", 1);
		if(var_93b580b3 && isdefined(var_a3ad44ab))
		{
			var_fad7926c = var_a3ad44ab;
		}
		else
		{
			var_fad7926c = self.var_5acbf4e2;
		}
		if(isdefined(var_fad7926c))
		{
			self function_1f4288c0(var_fad7926c, "deathsDuringUse", 1);
		}
		if(var_ba36487d != "MOD_FALLING")
		{
			if(var_dfcc01fd.var_4be20d44 == "explosive_bolt" && isdefined(var_178903fd) && isdefined(var_178903fd.var_6e1aa5b0) && var_178903fd.var_188b928e)
			{
				var_a0ad4f34 function_1f4288c0(var_178903fd.var_6e1aa5b0, "kills", 1, var_a0ad4f34.var_b54d1a86, 0, 1);
			}
			else
			{
				var_a0ad4f34 function_1f4288c0(var_dfcc01fd, "kills", 1, var_a0ad4f34.var_b54d1a86);
			}
		}
		if(var_ba36487d == "MOD_HEAD_SHOT")
		{
			var_a0ad4f34 function_1f4288c0(var_dfcc01fd, "headshots", 1);
		}
		if(var_ba36487d == "MOD_PROJECTILE")
		{
			var_a0ad4f34 function_1f4288c0(var_dfcc01fd, "direct_hit_kills", 1);
		}
	}
}

/*
	Name: function_caa6d8d5
	Namespace: namespace_b976075a
	Checksum: 0x7D4921C5
	Offset: 0x7C28
	Size: 0x223
	Parameters: 4
	Flags: None
*/
function function_caa6d8d5(var_a0ad4f34, var_51e6a548, var_dfcc01fd, var_ba36487d)
{
	if(!function_65f192a6(var_a0ad4f34) || self namespace_82b91a51::function_b074c98c(var_a0ad4f34) == 0)
	{
		level notify("hash_cb4cf160");
		level.var_b4442b9c = 0;
		level.var_87f1be9f = undefined;
	}
	else if(isdefined(level.var_87f1be9f) && level.var_87f1be9f == var_a0ad4f34)
	{
		level.var_b4442b9c++;
	}
	else
	{
		level notify("hash_cb4cf160");
		level.var_87f1be9f = var_a0ad4f34;
		level.var_b4442b9c = 1;
	}
	level thread namespace_a1cb6b52::function_14a866a5();
	if(level.var_b4442b9c >= 4)
	{
		level notify("hash_cb4cf160");
		level.var_b4442b9c = 0;
		level.var_87f1be9f = undefined;
		self thread namespace_a1cb6b52::function_5d4b8e75(var_a0ad4f34, var_dfcc01fd);
	}
	if(level.var_de12b72f && isdefined(var_a0ad4f34.var_44fb8955) && self.var_3e94206a == var_a0ad4f34.var_3e94206a && var_ba36487d == "MOD_GRENADE" && level.var_98df9150 == 0)
	{
		function_68cb2cb0(self, self, var_dfcc01fd, var_ba36487d);
		namespace_93ed41ec::function_20ea24d9("kill", GetTime(), self, self, 0, var_51e6a548);
	}
	else
	{
		function_68cb2cb0(self, var_a0ad4f34, var_dfcc01fd, var_ba36487d);
		namespace_93ed41ec::function_20ea24d9("kill", GetTime(), self, var_a0ad4f34, 0, var_51e6a548);
	}
}

/*
	Name: function_41055c90
	Namespace: namespace_b976075a
	Checksum: 0x657BC51D
	Offset: 0x7E58
	Size: 0x33F
	Parameters: 5
	Flags: None
*/
function function_41055c90(var_51e6a548, var_a0ad4f34, var_ba36487d, var_dfcc01fd, var_a77ad8eb)
{
	var_3da5c48 = 0;
	if(isdefined(self.var_320486a0))
	{
		if(!level.var_de12b72f && (isdefined(level.var_e7a38025[self.var_dc37327d]) && isdefined(level.var_e7a38025[self.var_4d315089]) && level.var_e7a38025[self.var_dc37327d] != level.var_e7a38025[self.var_4d315089]))
		{
			var_1c5eebee = self namespace_e7a38025::function_193a1a91();
			var_1c5eebee[self.var_dc37327d]--;
			var_1c5eebee[self.var_4d315089]++;
			if(var_1c5eebee[self.var_4d315089] - var_1c5eebee[self.var_dc37327d] > 1)
			{
				thread namespace_a1cb6b52::function_ea11cfd6("suicide", self);
				self thread namespace_f3970517::function_2589caf0("suicide");
				self namespace_e32b5089::function_ec3c08d5("suicides", 1);
				self.var_7bdaa8ee = self namespace_e32b5089::function_9142ee49("suicides");
			}
		}
	}
	else
	{
		thread namespace_a1cb6b52::function_ea11cfd6("suicide", self);
		self namespace_e32b5089::function_ec3c08d5("suicides", 1);
		self.var_7bdaa8ee = self namespace_e32b5089::function_9142ee49("suicides");
		if(var_ba36487d == "MOD_SUICIDE" && var_a77ad8eb == "none" && self.var_82eb803d)
		{
			self.var_686f75e4 = GetTime();
		}
		if(level.var_8bfaa195 > 0 && level.var_8bfaa195 <= self.var_7bdaa8ee)
		{
			self notify("hash_a428a027");
			self function_361da015();
		}
		var_3da5c48 = 1;
		self.var_584b97b7 = 1;
	}
	if(isdefined(self.var_e5f0cd07))
	{
		self function_d52b076d(&"MP_FRIENDLY_FIRE_WILL_NOT");
		if(level.var_a04731a9)
		{
			var_4a818ca5 = self [[level.var_1bbcf4be]](var_51e6a548, var_a0ad4f34, var_ba36487d, var_dfcc01fd);
			var_f1242439 = namespace_e32b5089::function_acc5da4b(var_a0ad4f34) - var_4a818ca5;
			if(var_f1242439 < 0)
			{
				var_f1242439 = 0;
			}
			namespace_e32b5089::function_fffda5bf(var_a0ad4f34, var_f1242439);
		}
	}
	return var_3da5c48;
}

/*
	Name: function_d7a6cc2b
	Namespace: namespace_b976075a
	Checksum: 0xC61CF281
	Offset: 0x81A0
	Size: 0x2BB
	Parameters: 5
	Flags: None
*/
function function_d7a6cc2b(var_51e6a548, var_a0ad4f34, var_ba36487d, var_dfcc01fd, var_a77ad8eb)
{
	thread namespace_a1cb6b52::function_ea11cfd6("team_kill", var_a0ad4f34);
	self.var_4f57d739 = 1;
	if(!function_916c0917(var_dfcc01fd, var_ba36487d))
	{
		var_b7976fb0 = self [[level.var_8b7e4e17]](var_51e6a548, var_a0ad4f34, var_ba36487d, var_dfcc01fd);
		var_a0ad4f34 namespace_e32b5089::function_ec3c08d5("teamkills_nostats", var_b7976fb0, 0);
		var_a0ad4f34 namespace_e32b5089::function_ec3c08d5("teamkills", 1);
		var_a0ad4f34.var_c9bca7d3++;
		if(level.var_a04731a9)
		{
			var_4a818ca5 = self [[level.var_1bbcf4be]](var_51e6a548, var_a0ad4f34, var_ba36487d, var_dfcc01fd);
			var_f1242439 = namespace_e32b5089::function_acc5da4b(var_a0ad4f34) - var_4a818ca5;
			if(var_f1242439 < 0)
			{
				var_f1242439 = 0;
			}
			namespace_e32b5089::function_fffda5bf(var_a0ad4f34, var_f1242439);
		}
		if(namespace_c46f5728::function_3c9bd810() < 5000)
		{
			var_bd37ccff = 1;
		}
		else if(var_a0ad4f34.var_44fb8955["teamkills_nostats"] > 1 && namespace_c46f5728::function_3c9bd810() < 8000 + var_a0ad4f34.var_44fb8955["teamkills_nostats"] * 1000)
		{
			var_bd37ccff = 1;
		}
		else
		{
			var_bd37ccff = var_a0ad4f34 function_bd37ccff();
		}
		if(var_bd37ccff > 0)
		{
			var_a0ad4f34.var_d9e008c5 = 1;
			var_a0ad4f34 thread function_ca6b9929();
			if(var_a0ad4f34 function_a4451c91(var_bd37ccff))
			{
				var_a0ad4f34 notify("hash_a428a027");
				var_a0ad4f34 function_b8f126c4();
			}
			var_a0ad4f34 thread function_a1ea27f6();
		}
	}
}

/*
	Name: function_ca6b9929
	Namespace: namespace_b976075a
	Checksum: 0x5987C612
	Offset: 0x8468
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_ca6b9929()
{
	self endon("hash_643a7daf");
	self namespace_82b91a51::function_56cee95(1);
	wait(0.25);
	self function_584b97b7();
}

/*
	Name: function_3f735e1d
	Namespace: namespace_b976075a
	Checksum: 0x43A42D3E
	Offset: 0x84B8
	Size: 0x1A3
	Parameters: 4
	Flags: None
*/
function function_3f735e1d(var_51e6a548, var_a0ad4f34, var_dfcc01fd, var_86d8c0ce)
{
	function_c22bfa61("PlayerKilled assists");
	if(isdefined(self.var_f5c59027))
	{
		for(var_a3557c4d = 0; var_a3557c4d < self.var_f5c59027.size; var_a3557c4d++)
		{
			var_5dc5e20a = self.var_f5c59027[var_a3557c4d];
			if(!isdefined(var_5dc5e20a))
			{
				continue;
			}
			if(var_5dc5e20a == var_a0ad4f34)
			{
				continue;
			}
			if(var_5dc5e20a.var_3e94206a != var_86d8c0ce)
			{
				continue;
			}
			var_cb26f92d = self.var_ca1ab1e7[var_5dc5e20a.var_9ee32e67].var_f9348fda;
			var_5dc5e20a thread namespace_e32b5089::function_43256951(self, var_cb26f92d, self.var_ca1ab1e7[var_5dc5e20a.var_9ee32e67].var_dfcc01fd);
		}
	}
	else if(isdefined(self.var_386de34e) && isdefined(self.var_2c5d4906) && self.var_386de34e != var_a0ad4f34)
	{
		if(GetTime() - self.var_2c5d4906 < 4000)
		{
			self.var_386de34e thread namespace_e32b5089::function_1e129e72(self);
		}
	}
	function_7905cb51();
}

/*
	Name: function_489d248c
	Namespace: namespace_b976075a
	Checksum: 0xE8A9F810
	Offset: 0x8668
	Size: 0x73B
	Parameters: 5
	Flags: None
*/
function function_489d248c(var_51e6a548, var_a0ad4f34, var_ba36487d, var_dfcc01fd, var_a77ad8eb)
{
	namespace_e32b5089::function_7bf7d322(var_a0ad4f34.var_3e94206a);
	var_a0ad4f34 thread namespace_e32b5089::function_f4f11e83(var_ba36487d, var_dfcc01fd, self);
	if(function_5b49d38c(var_a0ad4f34))
	{
		function_c22bfa61("killstreak");
		if(!isdefined(var_51e6a548) || !isdefined(var_51e6a548.var_2b359f25) || var_a0ad4f34.var_9ae398f6 == var_51e6a548.var_2b359f25)
		{
			var_a0ad4f34.var_44fb8955["cur_total_kill_streak"]++;
			var_a0ad4f34 function_ea323cd9(var_a0ad4f34.var_44fb8955["cur_total_kill_streak"]);
			if(isdefined(level.var_d50db15a))
			{
				var_a0ad4f34.var_44fb8955["cur_kill_streak"]++;
				if(var_a0ad4f34.var_44fb8955["cur_kill_streak"] >= 2)
				{
					if(var_a0ad4f34.var_44fb8955["cur_kill_streak"] == 10)
					{
						var_a0ad4f34 namespace_f74b04eb::function_c7a32438();
					}
					if(var_a0ad4f34.var_44fb8955["cur_kill_streak"] <= 30)
					{
						namespace_a1cb6b52::function_ea11cfd6("killstreak_" + var_a0ad4f34.var_44fb8955["cur_kill_streak"], var_a0ad4f34, self, var_dfcc01fd);
					}
					else
					{
						namespace_a1cb6b52::function_ea11cfd6("killstreak_more_than_30", var_a0ad4f34, self, var_dfcc01fd);
					}
				}
			}
		}
		function_7905cb51();
	}
	if(var_a0ad4f34.var_44fb8955["cur_kill_streak"] > var_a0ad4f34.var_d17010d6)
	{
		if(level.var_5d406297 && !level.var_b03ee83a)
		{
			var_a0ad4f34 function_8f67433b("HighestStats", "kill_streak", var_a0ad4f34.var_44fb8955["totalKillstreakCount"]);
		}
		var_a0ad4f34.var_d17010d6 = var_a0ad4f34.var_44fb8955["cur_kill_streak"];
	}
	if(var_a0ad4f34.var_44fb8955["cur_kill_streak"] > var_a0ad4f34.var_45210d9b)
	{
		var_a0ad4f34 namespace_fe5e4926::function_e885624a("kill_streak", var_a0ad4f34.var_44fb8955["cur_kill_streak"]);
		var_a0ad4f34.var_45210d9b = var_a0ad4f34.var_44fb8955["cur_kill_streak"];
	}
	if(var_ba36487d == "MOD_MELEE" || var_ba36487d == "MOD_MELEE_ASSASSINATE" && level.var_76c6e677 == "gun")
	{
	}
	else
	{
		namespace_a1cb6b52::function_ea11cfd6("kill", var_a0ad4f34, self, var_dfcc01fd);
	}
	if(var_ba36487d == "MOD_HEAD_SHOT")
	{
		namespace_a1cb6b52::function_ea11cfd6("headshot", var_a0ad4f34, self, var_dfcc01fd);
	}
	else if(var_ba36487d == "MOD_MELEE" || var_ba36487d == "MOD_MELEE_ASSASSINATE")
	{
		if(var_dfcc01fd.var_788e9bb0)
		{
			namespace_a1cb6b52::function_ea11cfd6("melee_kill_with_riot_shield", var_a0ad4f34, self, var_dfcc01fd);
			if(isdefined(var_a0ad4f34.var_b54d1a86))
			{
				var_d5c933b7 = var_a0ad4f34 function_4be09268(var_a0ad4f34.var_b54d1a86, "primary");
				var_68cc767b = var_a0ad4f34 function_4be09268(var_a0ad4f34.var_b54d1a86, "secondary");
				if(var_d5c933b7 && level.var_328710ea[var_d5c933b7]["reference"] == "riotshield" && !var_68cc767b || (var_68cc767b && level.var_328710ea[var_68cc767b]["reference"] == "riotshield" && !var_d5c933b7))
				{
					var_a0ad4f34 function_1f4288c0(var_dfcc01fd, "NoLethalKills", 1);
				}
			}
		}
		else
		{
			namespace_a1cb6b52::function_ea11cfd6("melee_kill", var_a0ad4f34, self, var_dfcc01fd);
		}
	}
	var_a0ad4f34 thread namespace_e32b5089::function_d252c0d3(self.var_4be20d44, self.var_44fb8955["rank"], self.var_44fb8955["rankxp"], self.var_44fb8955["prestige"], self function_f49dd4fd());
	var_8a68755 = var_a0ad4f34.var_4be20d44;
	self thread namespace_e32b5089::function_19bc0e4e(var_8a68755, var_a0ad4f34.var_44fb8955["rank"], var_a0ad4f34.var_44fb8955["rankxp"], var_a0ad4f34.var_44fb8955["prestige"], var_a0ad4f34 function_f49dd4fd());
	self thread namespace_36c796f1::function_6532223(var_a0ad4f34);
	var_a0ad4f34 thread namespace_e32b5089::function_c66a74a3(var_dfcc01fd);
	if(level.var_de12b72f && var_a0ad4f34.var_3e94206a != "spectator")
	{
		namespace_e32b5089::function_806e3c51("kill", var_a0ad4f34.var_3e94206a, var_a0ad4f34, self);
	}
	var_4a818ca5 = level.var_fb250194;
	if(var_4a818ca5 != 0)
	{
		namespace_e32b5089::function_fffda5bf(self, namespace_e32b5089::function_acc5da4b(self) - var_4a818ca5);
	}
	level thread function_57f41ad8(var_a0ad4f34, var_dfcc01fd, self);
}

/*
	Name: function_4c629ef3
	Namespace: namespace_b976075a
	Checksum: 0x1021CFE6
	Offset: 0x8DB0
	Size: 0x1E11
	Parameters: 9
	Flags: None
*/
function function_4c629ef3(var_51e6a548, var_a0ad4f34, var_f9a179ed, var_ba36487d, var_dfcc01fd, var_e8bb43ee, var_a77ad8eb, var_a5cf2304, var_b2e5f7d2)
{
	function_bef6a4e6(7, "ship");
	self endon("hash_ab1f9ea1");
	self notify("hash_5b910b26");
	self namespace_dabbe128::function_dabbe128("hash_bc435202");
	self namespace_957e94ce::function_9d134160("loadout_given");
	if(self.var_b2e5a818 == "spectator")
	{
		return;
	}
	if(game["state"] == "postgame")
	{
		return;
	}
	self function_3c3100e3(0);
	if(isdefined(self.var_31863fce) && self.var_31863fce == 1)
	{
		self function_4603618(0);
	}
	self.var_584b97b7 = 0;
	self.var_4f57d739 = 0;
	self.var_85c35cc9 = undefined;
	if(isdefined(level.var_e6613238) && level.var_e6613238 == 1)
	{
		if(self.var_44fb8955["lives"])
		{
			self.var_44fb8955["lives"]--;
			if(self.var_44fb8955["lives"] == 0)
			{
				level notify("hash_51039135");
				self notify("hash_51039135");
			}
		}
	}
	var_dfcc01fd = function_389dcc6a(var_51e6a548, var_dfcc01fd);
	function_c22bfa61("PlayerKilled pre constants");
	var_93b580b3 = 0;
	var_4e147bc7 = 0;
	var_a3ad44ab = undefined;
	var_c1a0028c = undefined;
	self.var_18ed0905 = undefined;
	self.var_a2edc186 = undefined;
	if(isdefined(self.var_4ad7aecc))
	{
		self.var_4ad7aecc = undefined;
		/#
			namespace_33b293fd::function_a7ee953(isdefined(self.var_e3f4954d));
		#/
		if(!level.var_de12b72f || (!isdefined(var_a0ad4f34) || !function_65f192a6(var_a0ad4f34) || var_a0ad4f34.var_3e94206a != self.var_3e94206a || var_a0ad4f34 == self))
		{
			var_51e6a548 = self.var_e3f4954d.var_51e6a548;
			var_a0ad4f34 = self.var_e3f4954d.var_a0ad4f34;
			var_c1a0028c = self.var_e3f4954d.var_c1a0028c;
			var_f9a179ed = self.var_e3f4954d.var_f9a179ed;
			var_ba36487d = self.var_e3f4954d.var_ba36487d;
			var_dfcc01fd = self.var_e3f4954d.var_ac1ce8c8;
			var_e8bb43ee = self.var_e3f4954d.var_e8bb43ee;
			var_a77ad8eb = self.var_e3f4954d.var_a77ad8eb;
			self.var_a2edc186 = self.var_e3f4954d.var_a2edc186;
			var_4e147bc7 = GetTime() - self.var_e3f4954d.var_c86dbf56 / 1000;
			if(isdefined(self.var_54a2d6ec))
			{
				var_93b580b3 = 1;
				var_a3ad44ab = self.var_54a2d6ec;
			}
		}
		self.var_e3f4954d = undefined;
	}
	var_520c2cd4 = undefined;
	var_6e8c8755 = undefined;
	var_2e9d0261 = undefined;
	var_6c275140 = undefined;
	var_2befefec = var_dfcc01fd;
	var_1f60a0b5 = 0;
	if(!isdefined(var_a0ad4f34) || var_a0ad4f34.var_e6e9b8de == "trigger_hurt" || var_a0ad4f34.var_e6e9b8de == "worldspawn" || (isdefined(var_a0ad4f34.var_f5220efe) && var_a0ad4f34.var_f5220efe == 1) || var_a0ad4f34 == self && isdefined(self.var_f5c59027))
	{
		if(!isdefined(var_520c2cd4))
		{
			for(var_c957f6b6 = 0; var_c957f6b6 < self.var_f5c59027.size; var_c957f6b6++)
			{
				var_5dc5e20a = self.var_f5c59027[var_c957f6b6];
				if(!isdefined(var_5dc5e20a))
				{
					continue;
				}
				if(!isdefined(self.var_ca1ab1e7[var_5dc5e20a.var_9ee32e67]) || !isdefined(self.var_ca1ab1e7[var_5dc5e20a.var_9ee32e67].var_f9348fda))
				{
					continue;
				}
				if(var_5dc5e20a == self || (level.var_de12b72f && var_5dc5e20a.var_3e94206a == self.var_3e94206a))
				{
					continue;
				}
				if(self.var_ca1ab1e7[var_5dc5e20a.var_9ee32e67].var_1a393187 + 2500 < GetTime())
				{
					continue;
				}
				if(!function_44ee63ae(self.var_ca1ab1e7[var_5dc5e20a.var_9ee32e67].var_dfcc01fd))
				{
					continue;
				}
				if(self.var_ca1ab1e7[var_5dc5e20a.var_9ee32e67].var_f9348fda > 1 && !isdefined(var_520c2cd4))
				{
					var_520c2cd4 = var_5dc5e20a;
					var_6e8c8755 = self.var_ca1ab1e7[var_5dc5e20a.var_9ee32e67].var_597cacac;
					var_6c275140 = self.var_ca1ab1e7[var_5dc5e20a.var_9ee32e67].var_dfcc01fd;
					continue;
				}
				if(isdefined(var_520c2cd4) && self.var_ca1ab1e7[var_5dc5e20a.var_9ee32e67].var_f9348fda > self.var_ca1ab1e7[var_520c2cd4.var_9ee32e67].var_f9348fda)
				{
					var_520c2cd4 = var_5dc5e20a;
					var_6e8c8755 = self.var_ca1ab1e7[var_5dc5e20a.var_9ee32e67].var_597cacac;
					var_6c275140 = self.var_ca1ab1e7[var_5dc5e20a.var_9ee32e67].var_dfcc01fd;
				}
			}
		}
		else if(isdefined(var_520c2cd4))
		{
			namespace_a1cb6b52::function_ea11cfd6("assisted_suicide", var_520c2cd4, self, var_dfcc01fd);
			self function_2d465945("assistedsuicide");
			var_1f60a0b5 = 1;
		}
	}
	if(isdefined(var_520c2cd4))
	{
		var_a0ad4f34 = var_520c2cd4;
		var_2e9d0261 = var_6e8c8755;
		var_2befefec = var_6c275140;
		if(isdefined(var_6c275140))
		{
			var_dfcc01fd = var_6c275140;
		}
	}
	if(function_65f192a6(var_a0ad4f34))
	{
		var_a0ad4f34.var_13fed2e4[self.var_9ee32e67] = undefined;
	}
	self.var_9f66af5e = GetTime();
	var_a0ad4f34 = function_9cedb097(var_a0ad4f34, var_dfcc01fd);
	var_51e6a548 = function_1e4d3508(var_51e6a548);
	var_ba36487d = self function_d7eade4e(var_a0ad4f34, var_51e6a548, var_dfcc01fd, var_ba36487d, var_a77ad8eb);
	if(!isdefined(var_2e9d0261))
	{
		var_2e9d0261 = var_ba36487d;
	}
	if(isdefined(self.var_fd3f68e1) && self.var_fd3f68e1 == 1)
	{
		self function_f2fe79aa(level.var_978c7595, "tag_weapon_left");
		self.var_8e7b3a52 = 0;
		self.var_fd3f68e1 = 0;
	}
	self thread function_117043();
	self function_6c73fce1(var_a0ad4f34, var_dfcc01fd, var_ba36487d, var_93b580b3, var_a3ad44ab, var_51e6a548);
	self function_caa6d8d5(var_a0ad4f34, var_51e6a548, var_2befefec, var_2e9d0261);
	namespace_4a43ba8::function_d5c89a1f(self, var_a0ad4f34);
	self.var_e0beb6ee = "dead";
	self.var_8cf1797c = "hud_status_dead";
	self.var_44fb8955["weapon"] = undefined;
	self.var_b75dfe9b = [];
	self.var_9ae398f6++;
	/#
		function_895b00("Dev Block strings are not supported" + self.var_9ee32e67 + "Dev Block strings are not supported" + self.var_9ae398f6);
	#/
	self function_da9b1acd(var_a0ad4f34, var_dfcc01fd);
	var_dc172949 = self function_c7f3ce11();
	var_3e663292 = self.var_4be20d44;
	var_98af58b2 = "";
	var_62c01908 = "";
	var_a78c1b64 = self.var_3e94206a;
	var_4b494164 = self function_72a499c8();
	var_86d8c0ce = "";
	var_e2304bd3 = -1;
	var_3da5c48 = 0;
	var_9d69f9f = 0;
	var_ca6a4fec = 0;
	function_7905cb51();
	namespace_a1cb6b52::function_ea11cfd6("death", self, self, var_dfcc01fd);
	self.var_44fb8955["resetMomentumOnSpawn"] = 1;
	if(function_65f192a6(var_a0ad4f34))
	{
		var_98af58b2 = var_a0ad4f34 function_72a499c8();
		var_62c01908 = var_a0ad4f34.var_4be20d44;
		var_86d8c0ce = var_a0ad4f34.var_3e94206a;
		if(var_a0ad4f34 == self || var_1f60a0b5 == 1)
		{
			var_ca6a4fec = 1;
			var_3da5c48 = self function_41055c90(var_51e6a548, var_a0ad4f34, var_ba36487d, var_dfcc01fd, var_a77ad8eb);
		}
		else
		{
			function_c22bfa61("PlayerKilled attacker");
			var_e2304bd3 = var_a0ad4f34 function_c7f3ce11();
			if(level.var_de12b72f && self.var_3e94206a == var_a0ad4f34.var_3e94206a && var_ba36487d == "MOD_GRENADE" && level.var_98df9150 == 0)
			{
			}
			else if(level.var_de12b72f && self.var_3e94206a == var_a0ad4f34.var_3e94206a)
			{
				var_9d69f9f = 1;
				self function_d7a6cc2b(var_51e6a548, var_a0ad4f34, var_ba36487d, var_dfcc01fd, var_a77ad8eb);
			}
			else
			{
				self function_489d248c(var_51e6a548, var_a0ad4f34, var_ba36487d, var_dfcc01fd, var_a77ad8eb);
				if(level.var_de12b72f)
				{
					var_3da5c48 = 1;
				}
			}
			function_7905cb51();
		}
	}
	else if(isdefined(var_a0ad4f34) && (var_a0ad4f34.var_e6e9b8de == "trigger_hurt" || var_a0ad4f34.var_e6e9b8de == "worldspawn"))
	{
		var_e2304bd3 = -1;
		var_98af58b2 = "";
		var_62c01908 = "";
		var_86d8c0ce = "world";
		thread namespace_a1cb6b52::function_ea11cfd6("suicide", self);
		self namespace_e32b5089::function_ec3c08d5("suicides", 1);
		self.var_7bdaa8ee = self namespace_e32b5089::function_9142ee49("suicides");
		self.var_584b97b7 = 1;
		var_3da5c48 = 1;
		if(level.var_8bfaa195 > 0 && level.var_8bfaa195 <= self.var_7bdaa8ee)
		{
			self notify("hash_a428a027");
			self function_361da015();
		}
	}
	else
	{
		var_e2304bd3 = -1;
		var_98af58b2 = "";
		var_62c01908 = "";
		var_86d8c0ce = "world";
		var_ca6a4fec = 1;
		if(isdefined(var_51e6a548) && isdefined(var_51e6a548.var_ec9e5b09))
		{
			var_e2304bd3 = self function_c7f3ce11();
			var_ca6a4fec = 0;
		}
		if(isdefined(var_a0ad4f34) && isdefined(var_a0ad4f34.var_3e94206a) && isdefined(level.var_e7a38025[var_a0ad4f34.var_3e94206a]))
		{
			if(var_a0ad4f34.var_3e94206a != self.var_3e94206a)
			{
				if(level.var_de12b72f)
				{
					namespace_e32b5089::function_806e3c51("kill", var_a0ad4f34.var_3e94206a, var_a0ad4f34, self);
				}
				var_ca6a4fec = 0;
			}
		}
		var_3da5c48 = 1;
	}
	if(!level.var_266be277)
	{
		if(var_ba36487d != "MOD_GRENADE" && var_ba36487d != "MOD_GRENADE_SPLASH" && var_ba36487d != "MOD_EXPLOSIVE" && var_ba36487d != "MOD_EXPLOSIVE_SPLASH" && var_ba36487d != "MOD_PROJECTILE_SPLASH")
		{
			self namespace_f996a5bc::function_880a4054(var_a0ad4f34);
		}
		if(!var_9d69f9f && !var_ca6a4fec)
		{
			self namespace_f996a5bc::function_b0130315(var_a0ad4f34, var_dfcc01fd, var_ba36487d);
		}
	}
	if(function_75e46361())
	{
		var_3da5c48 = 0;
	}
	if(var_3da5c48)
	{
		self function_3f735e1d(var_51e6a548, var_a0ad4f34, var_dfcc01fd, var_86d8c0ce);
	}
	function_c22bfa61("PlayerKilled post constants");
	self.var_1f2befd4 = var_a0ad4f34;
	self.var_894cbf99 = self.var_722885f3;
	if(isdefined(var_a0ad4f34) && function_65f192a6(var_a0ad4f34) && var_a0ad4f34 != self && (!level.var_de12b72f || var_a0ad4f34.var_3e94206a != self.var_3e94206a))
	{
		self thread namespace_f74b04eb::function_36b8f1d9(var_51e6a548, var_a0ad4f34, var_f9a179ed, var_ba36487d, var_dfcc01fd, var_a77ad8eb, var_c1a0028c);
	}
	else
	{
		self notify("hash_19612a29");
	}
	if(isdefined(self.var_f5c59027))
	{
		self.var_f5c59027 = [];
	}
	namespace_d8129fdd::function_2aa586aa(var_a0ad4f34, self, var_dfcc01fd, var_f9a179ed, var_ba36487d, var_a77ad8eb, 1, !var_93b580b3);
	function_14eb892("K;" + var_4b494164 + ";" + var_dc172949 + ";" + var_a78c1b64 + ";" + var_3e663292 + ";" + var_98af58b2 + ";" + var_e2304bd3 + ";" + var_86d8c0ce + ";" + var_62c01908 + ";" + var_dfcc01fd.var_4be20d44 + ";" + var_f9a179ed + ";" + var_ba36487d + ";" + var_a77ad8eb + "
");
	var_b718efa7 = "none";
	if(function_65f192a6(var_a0ad4f34))
	{
		var_b718efa7 = var_a0ad4f34 function_f49dd4fd() + "(" + var_62c01908 + ")";
	}
	/#
		function_895b00("Dev Block strings are not supported" + var_ba36487d + "Dev Block strings are not supported" + var_dfcc01fd.var_4be20d44 + "Dev Block strings are not supported" + var_b718efa7 + "Dev Block strings are not supported" + var_f9a179ed + "Dev Block strings are not supported" + var_a77ad8eb + "Dev Block strings are not supported" + function_b6b79a0(self.var_722885f3[0]) + "Dev Block strings are not supported" + function_b6b79a0(self.var_722885f3[1]) + "Dev Block strings are not supported" + function_b6b79a0(self.var_722885f3[2]));
	#/
	namespace_2282eece::function_cd14a993();
	self namespace_f996a5bc::function_4243b4b4();
	var_7614a86e = 0;
	if(isdefined(self.var_e1700654))
	{
		var_7614a86e = self.var_e1700654;
	}
	var_ba89d8df = 0;
	if(isdefined(var_a0ad4f34) && isdefined(var_a0ad4f34.var_170527fb) && var_a0ad4f34.var_170527fb == "train")
	{
		var_ba89d8df = 1;
	}
	function_7905cb51();
	function_c22bfa61("PlayerKilled body and gibbing");
	if(!var_7614a86e && !var_ba89d8df && (!isdefined(level.var_d59daf8) && level.var_d59daf8 || level.var_2395e945.size > 1))
	{
		var_a2edc186 = undefined;
		if(isdefined(var_a0ad4f34))
		{
			var_a2edc186 = var_a0ad4f34.var_722885f3;
		}
		var_648a3c9b = 0;
		if(isdefined(self.var_91c8e9a9) && self.var_91c8e9a9 && isdefined(self.var_f9f3d62e) && self.var_f9f3d62e == 1)
		{
			var_648a3c9b = 1;
		}
		var_bcd9ef1c = 0;
		if(!var_a0ad4f34 function_8029a253() && var_ba36487d == "MOD_MELEE_ASSASSINATE")
		{
			var_bcd9ef1c = 1;
		}
		var_75b85c5 = self function_963fd853(var_b2e5f7d2, var_dfcc01fd, var_a0ad4f34);
		if(isdefined(var_75b85c5))
		{
			self function_39d71623(var_f9a179ed, var_ba36487d, var_dfcc01fd, var_a77ad8eb, var_e8bb43ee, var_a2edc186, var_b2e5f7d2, var_51e6a548, var_648a3c9b, var_75b85c5, var_bcd9ef1c);
		}
	}
	function_7905cb51();
	thread namespace_7956eece::function_dcb186d4(self.var_3e94206a, var_a0ad4f34);
	self.var_320486a0 = undefined;
	self.var_4d315089 = undefined;
	self.var_dc37327d = undefined;
	if(var_e2304bd3 < 0)
	{
		if(isdefined(self.var_afe5253c))
		{
			if(self.var_afe5253c.var_a21e8eb8 >= 0 && self.var_afe5253c.var_ca793e94 == self function_c7f3ce11())
			{
				var_e2304bd3 = self.var_afe5253c.var_a21e8eb8;
			}
			else if(self.var_afe5253c.var_ca793e94 >= 0)
			{
				var_e2304bd3 = self.var_afe5253c.var_ca793e94;
			}
			else if(self.var_afe5253c.var_a21e8eb8 >= 0)
			{
				var_e2304bd3 = self.var_afe5253c.var_a21e8eb8;
			}
		}
		else if(isdefined(var_51e6a548) && var_a0ad4f34 == self)
		{
			var_e2304bd3 = var_51e6a548 function_c7f3ce11();
		}
		else if(isdefined(var_a0ad4f34))
		{
			var_e2304bd3 = var_a0ad4f34 function_c7f3ce11();
		}
		else if(isdefined(var_51e6a548))
		{
			var_e2304bd3 = var_51e6a548 function_c7f3ce11();
		}
	}
	self.var_ebd83169 = 1;
	self.var_1b7a74aa = var_e2304bd3;
	self.var_ca78829f = var_a0ad4f34;
	self.var_d9dd0142 = var_dfcc01fd;
	self.var_8c0347ee = var_4e147bc7;
	self.var_2b1ad8b = var_a5cf2304;
	if(var_e2304bd3 < 0 || var_e2304bd3 === self function_c7f3ce11() || var_e2304bd3 > 1023)
	{
		self.var_ebd83169 = 0;
	}
	self thread [[level.var_c2658b46]](var_51e6a548, var_a0ad4f34, var_f9a179ed, var_ba36487d, var_dfcc01fd, var_e8bb43ee, var_a77ad8eb, var_a5cf2304, var_b2e5f7d2);
	for(var_4eb9549 = 0; var_4eb9549 < level.var_c79586a8.size; var_4eb9549++)
	{
		self [[level.var_c79586a8[var_4eb9549]]](var_51e6a548, var_a0ad4f34, var_f9a179ed, var_ba36487d, var_dfcc01fd, var_e8bb43ee, var_a77ad8eb, var_a5cf2304, var_b2e5f7d2);
	}
	self.var_bb4b0e31 = 0;
	var_133ce9dc = [];
	var_d50db15a = namespace_2282eece::function_5abc8628(var_a0ad4f34);
	if(!isdefined(self.var_814158b9))
	{
		self thread [[level.var_f868991e]]();
	}
	function_506ba7ea(7, "gs=" + game["state"] + " zom=" + function_75e46361());
	if(!isdefined(level.var_d59daf8) && level.var_d59daf8 || level.var_2395e945.size > 1)
	{
		wait(0.25);
	}
	else if(isdefined(var_75b85c5))
	{
		function_ab6d39b5(var_75b85c5, "hide_body", 1);
	}
	self.var_44fb8955["incaps"]++;
	self.var_58ef604f = self.var_44fb8955["incaps"];
	self function_aa67c13b("INCAPS", 1);
	var_e7ce5f85 = self function_84368297("PlayerStatsList", "INCAPS", "statValue");
	self function_b26abbde("INCAPS", var_e7ce5f85);
	namespace_5f11fb0b::function_8e835895(var_51e6a548, var_a0ad4f34, var_f9a179ed, var_ba36487d, var_dfcc01fd, var_e8bb43ee, var_a77ad8eb, var_a5cf2304, var_b2e5f7d2);
	self namespace_82b91a51::function_9fcf3cd8(5, "cp_deathcam_ended");
	var_d30bcd43 = 4;
	if(function_b453fd6e() && level.var_2395e945.size > 1)
	{
		if(function_4bd0142f("enable_new_death_cam", 1))
		{
			var_d30bcd43 = function_f3087faa("defaultPlayerDeathWatchTime", 2.5);
		}
	}
	if(var_ba36487d == "MOD_MELEE_ASSASSINATE" || 0 > var_dfcc01fd.var_cb05b1d1)
	{
		var_d30bcd43 = var_b2e5f7d2 * 0.001 + 0.5;
	}
	else if(0 < var_dfcc01fd.var_cb05b1d1)
	{
		var_d30bcd43 = var_dfcc01fd.var_cb05b1d1;
	}
	if(isdefined(level.var_23a0975c))
	{
		var_d30bcd43 = [[level.var_23a0975c]](var_d30bcd43);
	}
	self notify("hash_a7fcb1d6");
	if(isdefined(level.var_3a9f9a38) && level.var_3a9f9a38 && (isdefined(self.var_acfedf1c) && self.var_acfedf1c))
	{
		var_6d42c33a = 0;
		self namespace_367908b2::function_367908b2(self function_c7f3ce11(), self function_c7f3ce11(), var_a0ad4f34, var_e2304bd3, var_6d42c33a, var_dfcc01fd, self.var_9f66af5e, var_4e147bc7, var_a5cf2304, 1, undefined, var_133ce9dc, var_d50db15a, self, var_75b85c5);
	}
	if(isdefined(self.var_e8880dea) && self.var_e8880dea)
	{
		self namespace_82b91a51::function_9fcf3cd8(5, "camera_sequence_completed");
		self.var_e8880dea = undefined;
		return;
	}
	self.var_fa504f21 = GetTime();
	if(game["state"] != "playing")
	{
		self.var_e0beb6ee = "dead";
		self.var_9e110015 = -1;
		self.var_654f262a = 0;
		self.var_a5cf2304 = 0;
		return;
	}
	function_188bdae1();
	var_e9e32f5 = 1;
	if(isdefined(level.var_5f3b0fcc))
	{
		var_e9e32f5 = 0;
	}
	namespace_6c1d04bd::function_2e67d944();
	if(isdefined(level.var_ad1a71f5))
	{
		return;
	}
	if(namespace_c46f5728::function_d0b6aba3(self.var_808c68ef))
	{
		var_aa61e82a = undefined;
		if(isdefined(self.var_fa504f21) && var_e9e32f5)
		{
			var_aa61e82a = GetTime() - self.var_fa504f21 / 1000;
		}
		self thread [[level.var_f3db290b]](var_aa61e82a);
		self.var_fa504f21 = undefined;
	}
}

/*
	Name: function_117043
	Namespace: namespace_b976075a
	Checksum: 0x98E8E722
	Offset: 0xABD0
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_117043()
{
	if(isdefined(self.var_44fb8955["isBot"]))
	{
		level.var_2508c1ca++;
	}
}

/*
	Name: function_188bdae1
	Namespace: namespace_b976075a
	Checksum: 0xF89EB00
	Offset: 0xAC00
	Size: 0x75
	Parameters: 0
	Flags: None
*/
function function_188bdae1()
{
	if(isdefined(self.var_814158b9))
	{
		var_a4ad846c = GetTime();
		var_77a7fe7d = self.var_814158b9 * 1000;
		while(GetTime() < var_a4ad846c + var_77a7fe7d && isdefined(self.var_814158b9))
		{
			wait(0.1);
		}
		wait(2);
		self.var_814158b9 = undefined;
	}
}

/*
	Name: function_361da015
	Namespace: namespace_b976075a
	Checksum: 0xDEC11250
	Offset: 0xAC80
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_361da015()
{
	self namespace_e32b5089::function_ec3c08d5("sessionbans", 1);
	self endon("hash_643a7daf");
	waittillframeend;
	namespace_2282eece::function_666632bb();
	function_7c633cec(self function_c7f3ce11());
}

/*
	Name: function_b8f126c4
	Namespace: namespace_b976075a
	Checksum: 0x476E990F
	Offset: 0xACF8
	Size: 0x1D3
	Parameters: 0
	Flags: None
*/
function function_b8f126c4()
{
	self namespace_e32b5089::function_ec3c08d5("sessionbans", 1);
	self endon("hash_643a7daf");
	waittillframeend;
	var_a8f31c2d = namespace_15cb3ff6::function_9471660c("team", "teamkillerplaylistbanquantum");
	var_34d81d05 = namespace_15cb3ff6::function_9471660c("team", "teamkillerplaylistbanpenalty");
	if(var_a8f31c2d > 0 && var_34d81d05 > 0)
	{
		var_3ce3d4d3 = self function_84368297("playerstatslist", "time_played_total", "StatValue");
		var_29b14c5d = var_3ce3d4d3 / 60;
		var_226ebc24 = 2;
		var_7aacca0a = function_b6b79a0(function_ed96839(var_29b14c5d / var_a8f31c2d)) + var_226ebc24;
		if(self.var_77f142c1 > var_7aacca0a)
		{
			self function_8f67433b("playerstatslist", "gametypeban", "StatValue", var_3ce3d4d3 + var_34d81d05 * 60);
		}
	}
	namespace_2282eece::function_666632bb();
	function_7c633cec(self function_c7f3ce11());
}

/*
	Name: function_bd37ccff
	Namespace: namespace_b976075a
	Checksum: 0xC4788C87
	Offset: 0xAED8
	Size: 0x6F
	Parameters: 0
	Flags: None
*/
function function_bd37ccff()
{
	var_f2dfc269 = self.var_44fb8955["teamkills_nostats"];
	if(level.var_fb0abb41 < 0 || var_f2dfc269 <= level.var_fb0abb41)
	{
		return 0;
	}
	var_174e5f06 = var_f2dfc269 - level.var_fb0abb41;
	return level.var_f5257fb4 * var_174e5f06;
}

/*
	Name: function_a4451c91
	Namespace: namespace_b976075a
	Checksum: 0x5AA45AD4
	Offset: 0xAF50
	Size: 0x65
	Parameters: 1
	Flags: None
*/
function function_a4451c91(var_bd37ccff)
{
	if(var_bd37ccff && level.var_fb0abb41 >= 0)
	{
		if(namespace_c46f5728::function_3c9bd810() >= 5000)
		{
			return 1;
		}
		if(self.var_44fb8955["teamkills_nostats"] > 1)
		{
			return 1;
		}
	}
	return 0;
}

/*
	Name: function_a1ea27f6
	Namespace: namespace_b976075a
	Checksum: 0xF713A79C
	Offset: 0xAFC0
	Size: 0xBF
	Parameters: 0
	Flags: None
*/
function function_a1ea27f6()
{
	var_4af9985 = 20;
	var_1b9244dd = 1 / var_4af9985;
	while(1)
	{
		if(function_5b49d38c(self))
		{
			self.var_44fb8955["teamkills_nostats"] = self.var_44fb8955["teamkills_nostats"] - var_1b9244dd;
			if(self.var_44fb8955["teamkills_nostats"] < level.var_fb0abb41)
			{
				self.var_44fb8955["teamkills_nostats"] = level.var_fb0abb41;
				break;
			}
		}
		wait(1);
	}
}

/*
	Name: function_916c0917
	Namespace: namespace_b976075a
	Checksum: 0xF1E595E1
	Offset: 0xB088
	Size: 0x51
	Parameters: 2
	Flags: None
*/
function function_916c0917(var_dfcc01fd, var_ba36487d)
{
	if(var_ba36487d == "MOD_MELEE" || var_ba36487d == "MOD_MELEE_ASSASSINATE")
	{
		return 0;
	}
	if(var_dfcc01fd.var_916c0917)
	{
		return 1;
	}
	return 0;
}

/*
	Name: function_568ddde0
	Namespace: namespace_b976075a
	Checksum: 0xE50AE63E
	Offset: 0xB0E8
	Size: 0xDB
	Parameters: 9
	Flags: None
*/
function function_568ddde0(var_51e6a548, var_3a212fd7, var_f9a179ed, var_ba36487d, var_dfcc01fd, var_e8bb43ee, var_a77ad8eb, var_a5cf2304, var_8866d74a)
{
	if(self function_76f34311("cybercom_emergencyreserve") && namespace_e3074452::function_9248cfb4(var_ba36487d))
	{
		self namespace_726a1ef0::function_de82b8b4("cybercom_emergencyreserve");
	}
	namespace_564407fb::function_1bbd62(var_51e6a548, var_3a212fd7, var_f9a179ed, var_ba36487d, var_dfcc01fd, var_e8bb43ee, var_a77ad8eb, var_a5cf2304, var_8866d74a);
}

/*
	Name: function_3c70a91e
	Namespace: namespace_b976075a
	Checksum: 0xBFF2F515
	Offset: 0xB1D0
	Size: 0x73
	Parameters: 5
	Flags: None
*/
function function_3c70a91e(var_3a212fd7, var_51e6a548, var_dfcc01fd, var_ba36487d, var_f9a179ed)
{
	self thread namespace_f996a5bc::function_1a61261a(var_3a212fd7, var_51e6a548, var_dfcc01fd, var_ba36487d, var_f9a179ed);
	self function_e2af603e("damage_heavy");
}

/*
	Name: function_39d71623
	Namespace: namespace_b976075a
	Checksum: 0xEF631279
	Offset: 0xB250
	Size: 0x27F
	Parameters: 11
	Flags: None
*/
function function_39d71623(var_f9a179ed, var_ba36487d, var_dfcc01fd, var_a77ad8eb, var_e8bb43ee, var_a2edc186, var_b2e5f7d2, var_51e6a548, var_64a5a080, var_75b85c5, var_bcd9ef1c)
{
	if(var_ba36487d == "MOD_HIT_BY_OBJECT" && self function_653ba713() == "prone")
	{
		self.var_75b85c5 = var_75b85c5;
		return;
	}
	if(isdefined(level.var_c877b52d) && self [[level.var_c877b52d]](var_f9a179ed, var_ba36487d, var_dfcc01fd, var_a77ad8eb, var_e8bb43ee, var_a2edc186, var_b2e5f7d2, var_51e6a548, var_64a5a080, var_75b85c5))
	{
		return;
	}
	if(var_64a5a080 || self function_4fd05cd2() || self function_df991e41() || var_ba36487d == "MOD_CRUSH" || var_ba36487d == "MOD_HIT_BY_OBJECT")
	{
		var_75b85c5 function_d7a0a9d8();
	}
	if(!self function_8029a253())
	{
		if(function_4bd0142f("scr_disable_air_death_ragdoll") == 0)
		{
			var_75b85c5 function_d7a0a9d8();
		}
	}
	if(var_ba36487d == "MOD_MELEE_ASSASSINATE" && isdefined(var_bcd9ef1c) && var_bcd9ef1c)
	{
		var_75b85c5 function_83e1e325(var_e8bb43ee);
	}
	if(self function_f23edd25(var_dfcc01fd, var_51e6a548))
	{
		var_75b85c5 function_e955ff9b(var_e8bb43ee, var_dfcc01fd);
	}
	thread function_10085183(var_75b85c5, var_a77ad8eb, var_e8bb43ee, var_dfcc01fd, var_51e6a548, var_ba36487d);
	if(var_ba36487d == "MOD_CRUSH")
	{
		var_75b85c5 namespace_deaef99f::function_4d18350c();
	}
	self.var_75b85c5 = var_75b85c5;
}

/*
	Name: function_f23edd25
	Namespace: namespace_b976075a
	Checksum: 0x12BA16A9
	Offset: 0xB4D8
	Size: 0xB1
	Parameters: 2
	Flags: None
*/
function function_f23edd25(var_dfcc01fd, var_178903fd)
{
	if(!isdefined(var_dfcc01fd))
	{
		return 0;
	}
	if(var_dfcc01fd.var_4be20d44 == "destructible_car" || var_dfcc01fd.var_4be20d44 == "explodable_barrel")
	{
		return 1;
	}
	if(var_dfcc01fd.var_fa7d969 == "grenade")
	{
		if(isdefined(var_178903fd) && isdefined(var_178903fd.var_67b7913))
		{
			if(var_178903fd.var_67b7913 == self)
			{
				return 1;
			}
		}
	}
	return 0;
}

/*
	Name: function_e955ff9b
	Namespace: namespace_b976075a
	Checksum: 0x56E61DB
	Offset: 0xB598
	Size: 0x1B3
	Parameters: 2
	Flags: None
*/
function function_e955ff9b(var_bd00ff2a, var_dfcc01fd)
{
	if(!isdefined(self))
	{
		return;
	}
	var_4f8217af = function_dc99997a(50, 100);
	var_297f9d46 = function_dc99997a(50, 100);
	var_37d22dd = function_dc99997a(10, 20);
	if(isdefined(var_dfcc01fd) && (var_dfcc01fd.var_4be20d44 == "sticky_grenade" || var_dfcc01fd.var_4be20d44 == "explosive_bolt"))
	{
		if(isdefined(var_bd00ff2a) && function_f781860c(var_bd00ff2a) > 0)
		{
			var_4f8217af = var_bd00ff2a[0] * var_4f8217af;
			var_297f9d46 = var_bd00ff2a[1] * var_297f9d46;
		}
	}
	else if(namespace_d73b9283::function_d2c92ee7())
	{
		var_4f8217af = var_4f8217af * -1;
	}
	if(namespace_d73b9283::function_d2c92ee7())
	{
		var_297f9d46 = var_297f9d46 * -1;
	}
	self function_d7a0a9d8();
	self function_8461d2b1((var_4f8217af, var_297f9d46, var_37d22dd));
}

/*
	Name: function_83e1e325
	Namespace: namespace_b976075a
	Checksum: 0xC5A1F0C0
	Offset: 0xB758
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_83e1e325(var_bd00ff2a)
{
	if(!isdefined(self))
	{
		return;
	}
	self function_d7a0a9d8();
	self function_8461d2b1(VectorScale((0, 0, -1), 100));
}

/*
	Name: function_b9f48d20
	Namespace: namespace_b976075a
	Checksum: 0xAFFD67A7
	Offset: 0xB7B0
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_b9f48d20()
{
	waittillframeend;
	if(isdefined(self))
	{
		level notify("hash_f0cd13ff", self);
		namespace_dabbe128::function_dabbe128("hash_fefe13f5");
	}
}

/*
	Name: function_10085183
	Namespace: namespace_b976075a
	Checksum: 0xF07E2A50
	Offset: 0xB7F0
	Size: 0x313
	Parameters: 6
	Flags: None
*/
function function_10085183(var_a3d46ee4, var_a77ad8eb, var_e8bb43ee, var_dfcc01fd, var_51e6a548, var_ba36487d)
{
	if(isdefined(var_a3d46ee4))
	{
		var_853099ee = var_a3d46ee4 function_dcd08aa4();
		if(function_4a177cf3(var_853099ee, "ignore_ragdoll"))
		{
			return;
		}
	}
	if(level.var_52bf79c4)
	{
		if(!isdefined(var_e8bb43ee))
		{
			var_e8bb43ee = (0, 0, 0);
		}
		var_39181614 = var_a3d46ee4.var_722885f3 + (0, 0, namespace_c46f5728::function_aa585f9(var_a77ad8eb));
		var_39181614 = var_39181614 - var_e8bb43ee * 20;
		var_e34299fc = 40;
		var_a207fba7 = 0.75;
		if(var_ba36487d == "MOD_IMPACT" || var_ba36487d == "MOD_EXPLOSIVE" || function_5dbf7eca(var_ba36487d, "MOD_GRENADE") || function_5dbf7eca(var_ba36487d, "MOD_PROJECTILE") || var_a77ad8eb == "head" || var_a77ad8eb == "helmet")
		{
			var_a207fba7 = 2.5;
		}
		var_a3d46ee4 function_d7a0a9d8(1);
		wait(0.05);
		if(!isdefined(var_a3d46ee4))
		{
			return;
		}
		function_534b3cba(var_39181614, var_e34299fc, var_e34299fc / 2, var_a207fba7);
		return;
	}
	wait(0.2);
	if(!isdefined(var_a3d46ee4))
	{
		return;
	}
	if(var_a3d46ee4 function_10fe46aa())
	{
		return;
	}
	var_853099ee = var_a3d46ee4 function_dcd08aa4();
	var_b536650b = 0.35;
	if(function_4a177cf3(var_853099ee, "start_ragdoll"))
	{
		var_2cf96b75 = function_d8959c32(var_853099ee, "start_ragdoll");
		if(isdefined(var_2cf96b75))
		{
			var_b536650b = var_2cf96b75[0];
		}
	}
	var_77a7fe7d = var_b536650b * function_e1c7a0c8(var_853099ee);
	wait(var_77a7fe7d);
	if(isdefined(var_a3d46ee4))
	{
		var_a3d46ee4 function_d7a0a9d8(1);
	}
}

/*
	Name: function_127ea28
	Namespace: namespace_b976075a
	Checksum: 0x88F3AF77
	Offset: 0xBB10
	Size: 0x339
	Parameters: 4
	Flags: None
*/
function function_127ea28(var_3a212fd7, var_f9a179ed, var_ba36487d, var_dfcc01fd)
{
	if(!isdefined(var_3a212fd7))
	{
		return;
	}
	if(!function_65f192a6(var_3a212fd7))
	{
		return;
	}
	/#
		namespace_33b293fd::function_a7ee953(function_6e2770d8(self.var_f9d53f6c));
	#/
	if(self.var_f9d53f6c.size == 0)
	{
		self.var_46fd7603 = GetTime();
	}
	if(self.var_f9d53f6c.size == 0 || !isdefined(self.var_f9d53f6c[var_3a212fd7.var_9ee32e67]))
	{
		self.var_ca1ab1e7[var_3a212fd7.var_9ee32e67] = function_a8fb77bd();
		self.var_ca1ab1e7[var_3a212fd7.var_9ee32e67].var_f9348fda = var_f9a179ed;
		self.var_ca1ab1e7[var_3a212fd7.var_9ee32e67].var_597cacac = var_ba36487d;
		self.var_ca1ab1e7[var_3a212fd7.var_9ee32e67].var_dfcc01fd = var_dfcc01fd;
		self.var_ca1ab1e7[var_3a212fd7.var_9ee32e67].var_60db70fa = GetTime();
		self.var_f5c59027[self.var_f5c59027.size] = var_3a212fd7;
		self.var_f9d53f6c[var_3a212fd7.var_9ee32e67] = 0;
		/#
			namespace_33b293fd::function_a7ee953(self.var_f9d53f6c.size);
		#/
	}
	else
	{
		self.var_ca1ab1e7[var_3a212fd7.var_9ee32e67].var_f9348fda = self.var_ca1ab1e7[var_3a212fd7.var_9ee32e67].var_f9348fda + var_f9a179ed;
		self.var_ca1ab1e7[var_3a212fd7.var_9ee32e67].var_597cacac = var_ba36487d;
		self.var_ca1ab1e7[var_3a212fd7.var_9ee32e67].var_dfcc01fd = var_dfcc01fd;
		if(!isdefined(self.var_ca1ab1e7[var_3a212fd7.var_9ee32e67].var_60db70fa))
		{
			self.var_ca1ab1e7[var_3a212fd7.var_9ee32e67].var_60db70fa = GetTime();
		}
	}
	/#
		namespace_33b293fd::function_a7ee953(self.var_f9d53f6c.size);
	#/
	self.var_ca1ab1e7[var_3a212fd7.var_9ee32e67].var_1a393187 = GetTime();
	if(namespace_f996a5bc::function_afc1125(var_dfcc01fd))
	{
		self.var_f9d53f6c[var_3a212fd7.var_9ee32e67] = 1;
	}
}

/*
	Name: function_85b1d74
	Namespace: namespace_b976075a
	Checksum: 0xC840D279
	Offset: 0xBE58
	Size: 0x103
	Parameters: 5
	Flags: None
*/
function function_85b1d74(var_3a212fd7, var_51e6a548, var_f9a179ed, var_ba36487d, var_dfcc01fd)
{
	if(!function_44ee63ae(var_dfcc01fd))
	{
		return;
	}
	self function_127ea28(var_3a212fd7, var_f9a179ed, var_ba36487d, var_dfcc01fd);
	if(!isdefined(var_51e6a548))
	{
		return;
	}
	if(!isdefined(var_51e6a548.var_5e36fd2e))
	{
		return;
	}
	if(!isdefined(var_51e6a548.var_5a5c7f74))
	{
		return;
	}
	if(!var_51e6a548.var_5a5c7f74)
	{
		return;
	}
	if(isdefined(var_3a212fd7) && var_3a212fd7 == var_51e6a548.var_5e36fd2e)
	{
		return;
	}
	self function_127ea28(var_51e6a548.var_5e36fd2e, var_f9a179ed, var_ba36487d, var_dfcc01fd);
}

/*
	Name: function_d7eade4e
	Namespace: namespace_b976075a
	Checksum: 0x5D3B174D
	Offset: 0xBF68
	Size: 0xD9
	Parameters: 5
	Flags: None
*/
function function_d7eade4e(var_a0ad4f34, var_51e6a548, var_dfcc01fd, var_ba36487d, var_a77ad8eb)
{
	if(namespace_c46f5728::function_7874f1ab(var_dfcc01fd, var_a77ad8eb, var_ba36487d, var_51e6a548) && function_65f192a6(var_a0ad4f34))
	{
		return "MOD_HEAD_SHOT";
	}
	switch(var_dfcc01fd.var_4be20d44)
	{
		case "dog_bite":
		{
			var_ba36487d = "MOD_PISTOL_BULLET";
			break;
		}
		case "destructible_car":
		{
			var_ba36487d = "MOD_EXPLOSIVE";
			break;
		}
		case "explodable_barrel":
		{
			var_ba36487d = "MOD_EXPLOSIVE";
			break;
		}
	}
	return var_ba36487d;
}

/*
	Name: function_9cedb097
	Namespace: namespace_b976075a
	Checksum: 0xDE4A0C5A
	Offset: 0xC050
	Size: 0x207
	Parameters: 2
	Flags: None
*/
function function_9cedb097(var_a0ad4f34, var_dfcc01fd)
{
	if(function_e70ab977(var_a0ad4f34) && isdefined(var_a0ad4f34.var_c294c7fc))
	{
		if(!level.var_de12b72f || var_a0ad4f34.var_c294c7fc.var_3e94206a != self.var_3e94206a)
		{
			var_a0ad4f34 = var_a0ad4f34.var_c294c7fc;
		}
	}
	if(var_a0ad4f34.var_e6e9b8de == "script_vehicle" && isdefined(var_a0ad4f34.var_5e36fd2e))
	{
		var_a0ad4f34 notify("hash_39d3d8ba", self);
		var_a0ad4f34 = var_a0ad4f34.var_5e36fd2e;
	}
	if(function_e70ab977(var_a0ad4f34))
	{
		var_a0ad4f34 notify("hash_39d3d8ba", self);
	}
	if(isdefined(self.var_38cec496) && self.var_38cec496 == 1)
	{
		var_a0ad4f34.var_21fbe15e = 1;
	}
	if(isdefined(var_a0ad4f34) && isdefined(var_dfcc01fd) && var_dfcc01fd.var_4be20d44 == "planemortar")
	{
		if(!isdefined(var_a0ad4f34.var_c945e72d))
		{
			var_a0ad4f34.var_c945e72d = 0;
		}
		var_a0ad4f34.var_c945e72d++;
	}
	if(isdefined(var_a0ad4f34) && isdefined(var_dfcc01fd) && (var_dfcc01fd.var_4be20d44 == "straferun_rockets" || var_dfcc01fd.var_4be20d44 == "straferun_gun"))
	{
		if(isdefined(var_a0ad4f34.var_c6a3e2b6))
		{
			var_a0ad4f34.var_c6a3e2b6++;
		}
	}
	return var_a0ad4f34;
}

/*
	Name: function_1e4d3508
	Namespace: namespace_b976075a
	Checksum: 0xC166D1BB
	Offset: 0xC260
	Size: 0x67
	Parameters: 1
	Flags: None
*/
function function_1e4d3508(var_51e6a548)
{
	if(isdefined(var_51e6a548) && var_51e6a548.var_e6e9b8de == "script_vehicle")
	{
		var_51e6a548 notify("hash_39d3d8ba", self);
		if(isdefined(var_51e6a548.var_1ed11508))
		{
			var_51e6a548.var_1ed11508++;
		}
	}
	return var_51e6a548;
}

/*
	Name: function_389dcc6a
	Namespace: namespace_b976075a
	Checksum: 0x89A03EB4
	Offset: 0xC2D0
	Size: 0xD3
	Parameters: 2
	Flags: None
*/
function function_389dcc6a(var_51e6a548, var_dfcc01fd)
{
	if(var_dfcc01fd == level.var_6c3e6703 && isdefined(var_51e6a548))
	{
		if(isdefined(var_51e6a548.var_170527fb) && var_51e6a548.var_170527fb == "explodable_barrel")
		{
			var_dfcc01fd = function_c4d5ec1f("explodable_barrel");
		}
		else if(isdefined(var_51e6a548.var_92dff85a) && function_5dbf7eca(var_51e6a548.var_92dff85a, "vehicle_"))
		{
			var_dfcc01fd = function_c4d5ec1f("destructible_car");
		}
	}
	return var_dfcc01fd;
}

/*
	Name: function_57f41ad8
	Namespace: namespace_b976075a
	Checksum: 0x53E24D
	Offset: 0xC3B0
	Size: 0x1B
	Parameters: 3
	Flags: None
*/
function function_57f41ad8(var_a0ad4f34, var_dfcc01fd, var_8bcb913d)
{
}

/*
	Name: function_ece4ca01
	Namespace: namespace_b976075a
	Checksum: 0xB673303E
	Offset: 0xC3D8
	Size: 0x239
	Parameters: 0
	Flags: None
*/
function function_ece4ca01()
{
	if(self == level)
	{
		foreach(var_5dc5e20a in level.var_2395e945)
		{
			var_5dc5e20a function_ece4ca01();
		}
		break;
	}
	if(function_65f192a6(self))
	{
		var_8ea4a872 = self function_21995b5a();
		foreach(var_dfcc01fd in var_8ea4a872)
		{
			if(isdefined(var_dfcc01fd.var_84690dfd) && var_dfcc01fd.var_84690dfd)
			{
				var_c44df3d1 = self namespace_9f824288::function_36adbb9c(namespace_9f824288::function_1bfdd60e() + "hero_weapon", undefined);
				if(!isdefined(var_c44df3d1))
				{
					var_c44df3d1 = "";
				}
				if(!function_5dbf7eca(var_c44df3d1, var_dfcc01fd.var_4be20d44 + ","))
				{
					var_c44df3d1 = var_c44df3d1 + var_dfcc01fd.var_4be20d44 + ",";
					self namespace_9f824288::function_bee608f0(namespace_9f824288::function_1bfdd60e() + "hero_weapon", var_c44df3d1);
				}
			}
		}
	}
}

/*
	Name: function_7a152f99
	Namespace: namespace_b976075a
	Checksum: 0x8C6BCE2E
	Offset: 0xC620
	Size: 0x91
	Parameters: 1
	Flags: Private
*/
function private function_7a152f99(var_4259ae32)
{
	var_9792a8bf = self function_84368297("PlayerStatsByMap", function_9065d6ea(), "currentStats", var_4259ae32);
	var_56aa772d = self function_84368297("PlayerStatsList", var_4259ae32, "statValue");
	return var_56aa772d - var_9792a8bf;
}

/*
	Name: function_a5ac6877
	Namespace: namespace_b976075a
	Checksum: 0x4BD58E3E
	Offset: 0xC6C0
	Size: 0x29F
	Parameters: 0
	Flags: None
*/
function function_a5ac6877()
{
	if(isdefined(function_9065d6ea()))
	{
		if(function_27c72c1b() && !function_7ddcd415() && (!isdefined(self.var_bf1a9bd5) && self.var_bf1a9bd5))
		{
			var_a6f47549 = function_9065d6ea();
			if(isdefined(var_a6f47549))
			{
				foreach(var_5dc5e20a in level.var_2395e945)
				{
					var_5dc5e20a function_4cef9872(var_a6f47549);
				}
			}
			function_9a7ed193();
			self.var_bf1a9bd5 = 1;
		}
		self.var_44fb8955["score"] = self function_7a152f99("score");
		self.var_44fb8955["kills"] = self function_7a152f99("kills");
		self.var_44fb8955["incaps"] = self function_7a152f99("incaps");
		self.var_44fb8955["assists"] = self function_7a152f99("assists");
		self.var_44fb8955["revives"] = self function_7a152f99("revives");
		self.var_ec0b278c = self.var_44fb8955["kills"];
		self.var_f1242439 = self.var_44fb8955["score"];
		self.var_e69b4157 = self.var_44fb8955["assists"];
		self.var_58ef604f = self.var_44fb8955["incaps"];
		self.var_a433a6cd = self.var_44fb8955["revives"];
	}
}

/*
	Name: function_7bdf5497
	Namespace: namespace_b976075a
	Checksum: 0x59F4F87E
	Offset: 0xC968
	Size: 0x3F
	Parameters: 0
	Flags: None
*/
function function_7bdf5497()
{
	self.var_ec0b278c = 0;
	self.var_f1242439 = 0;
	self.var_e69b4157 = 0;
	self.var_58ef604f = 0;
	self.var_a433a6cd = 0;
}

/*
	Name: function_4cef9872
	Namespace: namespace_b976075a
	Checksum: 0xDE77B8EC
	Offset: 0xC9B0
	Size: 0x403
	Parameters: 1
	Flags: None
*/
function function_4cef9872(var_5df3645b)
{
	if(!isdefined(var_5df3645b))
	{
		return;
	}
	for(var_c957f6b6 = 1; var_c957f6b6 < 58; var_c957f6b6++)
	{
		var_b47d78c4 = self function_bc8e235e(var_c957f6b6);
		if(!isdefined(var_b47d78c4))
		{
			var_b47d78c4 = 0;
		}
		self function_8f67433b("currentWeaponLevels", var_c957f6b6, var_b47d78c4);
	}
	var_72c4032 = self function_84368297("PlayerStatsList", "RANKXP", "statValue");
	self function_8f67433b("currentRankXP", var_72c4032);
	var_b4728b19 = [];
	namespace_84970cc4::function_69554b3e(var_b4728b19, "KILLS");
	namespace_84970cc4::function_69554b3e(var_b4728b19, "SCORE");
	namespace_84970cc4::function_69554b3e(var_b4728b19, "ASSISTS");
	namespace_84970cc4::function_69554b3e(var_b4728b19, "INCAPS");
	namespace_84970cc4::function_69554b3e(var_b4728b19, "REVIVES");
	foreach(var_2461863f in var_b4728b19)
	{
		var_5a18ba9e = self function_84368297("PlayerStatsList", var_2461863f, "statValue");
		self function_8f67433b("PlayerStatsByMap", var_5df3645b, "currentStats", var_2461863f, var_5a18ba9e);
	}
	for(var_c957f6b6 = 0; var_c957f6b6 < 6; var_c957f6b6++)
	{
		var_b53e21eb = self function_84368297("PlayerStatsByMap", var_5df3645b, "completedDifficulties", var_c957f6b6);
		self function_8f67433b("PlayerStatsByMap", var_5df3645b, "previousCompletedDifficulties", var_c957f6b6, var_b53e21eb);
		var_16925818 = self function_84368297("PlayerStatsBymap", var_5df3645b, "receivedXPForDifficulty", var_c957f6b6);
		self function_8f67433b("PlayerStatsByMap", var_5df3645b, "previousReceivedXPForDifficulty", var_c957f6b6, var_16925818);
	}
	for(var_c957f6b6 = 0; var_c957f6b6 < 20; var_c957f6b6++)
	{
		var_8514318e = self function_84368297("PlayerCPDecorations", var_c957f6b6);
		self function_8f67433b("currentPlayerCPDecorations", var_c957f6b6, var_8514318e);
	}
	function_9a7ed193(self);
}

/*
	Name: function_5637de0a
	Namespace: namespace_b976075a
	Checksum: 0xBB78BFEE
	Offset: 0xCDC0
	Size: 0xA9
	Parameters: 0
	Flags: None
*/
function function_5637de0a()
{
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		function_98b36a07(var_5dc5e20a);
		function_6e910ee6(var_5dc5e20a, "presentAtEnd", 1);
	}
}

