#using scripts\codescripts\struct;
#using scripts\cp\_util;
#using scripts\cp\gametypes\_globallogic;
#using scripts\cp\gametypes\_save;
#using scripts\shared\callbacks_shared;
#using scripts\shared\rank_shared;
#using scripts\shared\system_shared;

#namespace namespace_c0a9fbab;

/*
	Name: function_2dc19561
	Namespace: namespace_c0a9fbab
	Checksum: 0x37E3E4C4
	Offset: 0x410
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("menus", &function_8c87d8eb, undefined, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_c0a9fbab
	Checksum: 0x49684029
	Offset: 0x450
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	namespace_dabbe128::function_c61b24c4(&function_c35e6aab);
	namespace_dabbe128::function_eb99da89(&function_fb4f96b5);
}

/*
	Name: function_c35e6aab
	Namespace: namespace_c0a9fbab
	Checksum: 0xBBB85017
	Offset: 0x4A0
	Size: 0x12F
	Parameters: 0
	Flags: None
*/
function function_c35e6aab()
{
	game["menu_team"] = "ChangeTeam";
	game["menu_start_menu"] = "StartMenu_Main";
	game["menu_class"] = "class";
	game["menu_changeclass"] = "ChooseClass_InGame";
	game["menu_changeclass_offline"] = "ChooseClass_InGame";
	foreach(var_3e94206a in level.var_e7a38025)
	{
		game["menu_changeclass_" + var_3e94206a] = "ChooseClass_InGame";
	}
	game["menu_controls"] = "ingame_controls";
	game["menu_options"] = "ingame_options";
	game["menu_leavegame"] = "popup_leavegame";
}

/*
	Name: function_fb4f96b5
	Namespace: namespace_c0a9fbab
	Checksum: 0xA40A712
	Offset: 0x5D8
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_fb4f96b5()
{
	self thread function_f44a9d12();
	self function_8f67433b("completedFirstTimeFlow", 1);
}

/*
	Name: function_521a4b1f
	Namespace: namespace_c0a9fbab
	Checksum: 0xBE16EA21
	Offset: 0x620
	Size: 0xC3
	Parameters: 1
	Flags: None
*/
function function_521a4b1f(var_5dc5e20a)
{
	if(!isdefined(var_5dc5e20a))
	{
		return;
	}
	var_5dc5e20a function_f2e7970f("MusicPlayer.state", "stop");
	var_5dc5e20a notify("hash_fb4d907d");
	var_5dc5e20a.var_148d9374 = 0;
	if(isdefined(var_5dc5e20a.var_c6ff6155))
	{
		var_48b937ab = function_5a31ce6c("gamedata/tables/common/music_player.csv", var_5dc5e20a.var_c6ff6155, 1);
		var_5dc5e20a function_356a1c2a(var_48b937ab);
	}
}

/*
	Name: function_f44a9d12
	Namespace: namespace_c0a9fbab
	Checksum: 0x52465265
	Offset: 0x6F0
	Size: 0x927
	Parameters: 0
	Flags: None
*/
function function_f44a9d12()
{
	self endon("hash_643a7daf");
	for(;;)
	{
		self waittill("hash_d2c577ed", var_1df81780, var_d62110b4);
		if(var_d62110b4 == "back")
		{
			self function_eb306581();
			if(level.var_e89a8a5c)
			{
				if(var_1df81780 == game["menu_changeclass"] || var_1df81780 == game["menu_changeclass_offline"] || var_1df81780 == game["menu_team"] || var_1df81780 == game["menu_controls"])
				{
					if(isdefined(level.var_e7a38025[self.var_44fb8955["team"]]))
					{
						self function_4aa9caac(game["menu_start_menu"]);
					}
				}
			}
			continue;
		}
		if(var_d62110b4 == "changeteam" && level.var_e3c7e564 == "1")
		{
			self function_eb306581();
			self function_4aa9caac(game["menu_team"]);
		}
		if(var_d62110b4 == "endgame")
		{
			if(level.var_2016892b)
			{
				level.var_3bb2dd28 = 1;
				if(!level.var_6b0d921)
				{
					level thread namespace_2282eece::function_661a1c05();
				}
			}
			continue;
		}
		if(var_d62110b4 == "killserverpc")
		{
			level thread namespace_2282eece::function_ede26a7();
			continue;
		}
		if(var_d62110b4 == "endround")
		{
			if(!level.var_6b0d921)
			{
				self namespace_2282eece::function_1effe5af();
				self function_eb306581();
				if(self function_e025daa7())
				{
					foreach(var_5dc5e20a in function_3f10449f())
					{
						var_5dc5e20a function_93f28fc8();
						var_62f6e136 = var_5dc5e20a function_84368297("unlocks", 0);
						var_7f6b97ce = var_5dc5e20a function_84368297("PlayerStatsList", "CAREER_TOKENS", "statValue");
						if(var_62f6e136 > var_7f6b97ce)
						{
							var_5dc5e20a function_aa67c13b("career_tokens", var_62f6e136 - var_7f6b97ce);
						}
					}
					function_9a7ed193();
					level thread namespace_2282eece::function_661a1c05();
				}
			}
			else
			{
				self function_eb306581();
				self function_d52b076d(&"MP_HOST_ENDGAME_RESPONSE");
			}
			foreach(var_5dc5e20a in function_3f10449f())
			{
				if(var_5dc5e20a.var_148d9374 === 1)
				{
					function_521a4b1f(var_5dc5e20a);
				}
			}
			continue;
		}
		if(var_d62110b4 == "restartmission")
		{
			var_c722c1b3 = [];
			var_c722c1b3[0] = "KILLS";
			var_c722c1b3[1] = "SCORE";
			var_c722c1b3[2] = "ASSISTS";
			var_c722c1b3[3] = "INCAPS";
			var_c722c1b3[4] = "REVIVES";
			foreach(var_5dc5e20a in level.var_2395e945)
			{
				var_5dc5e20a namespace_9f824288::function_bee608f0("saved_weapon", undefined);
				var_5dc5e20a namespace_9f824288::function_bee608f0("saved_weapondata", undefined);
				var_5dc5e20a namespace_9f824288::function_bee608f0("lives", undefined);
				var_5dc5e20a namespace_9f824288::function_bee608f0("savegame_score", undefined);
				var_5dc5e20a namespace_9f824288::function_bee608f0("savegame_kills", undefined);
				var_5dc5e20a namespace_9f824288::function_bee608f0("savegame_assists", undefined);
				var_5dc5e20a namespace_9f824288::function_bee608f0("savegame_incaps", undefined);
				var_5dc5e20a namespace_9f824288::function_bee608f0("savegame_revives", undefined);
				if(!isdefined(function_9065d6ea()))
				{
					continue;
				}
				foreach(var_2461863f in var_c722c1b3)
				{
					var_5a18ba9e = var_5dc5e20a function_84368297("PlayerStatsList", var_2461863f, "statValue");
					var_5dc5e20a function_8f67433b("PlayerStatsByMap", function_9065d6ea(), "currentStats", var_2461863f, var_5a18ba9e);
				}
				var_5dc5e20a function_628760b4();
			}
			world.var_bf966ebd = undefined;
			function_20412792();
			continue;
		}
		if(var_1df81780 == game["menu_team"] && level.var_e3c7e564 == "1")
		{
			switch(var_d62110b4)
			{
				case "autoassign":
				{
					self [[level.var_d3d54a87]](1);
					break;
				}
				case "spectator":
				{
					self [[level.var_e1253a8]]();
					break;
				}
				case default:
				{
					self [[level.var_38a7c573]](var_d62110b4);
					break;
				}
			}
			continue;
		}
		if(var_1df81780 == game["menu_changeclass"] || var_1df81780 == game["menu_changeclass_offline"])
		{
			if(var_d62110b4 != "back" && var_d62110b4 != "cancel" && (!isdefined(self.var_3ae8773c) || !self.var_3ae8773c))
			{
				self function_eb306581();
				self.var_691143a = 1;
				self [[level.var_808c68ef]](var_d62110b4);
			}
			else
			{
				self [[level.var_808c68ef]](var_d62110b4);
			}
			continue;
		}
		if(var_1df81780 == "spectate")
		{
			var_5dc5e20a = namespace_82b91a51::function_292b6cbb(function_b6b79a0(var_d62110b4));
			if(isdefined(var_5dc5e20a))
			{
				self function_3e3799ac(var_5dc5e20a);
			}
		}
	}
}

