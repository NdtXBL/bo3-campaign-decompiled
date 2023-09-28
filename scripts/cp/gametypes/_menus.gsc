#using scripts\codescripts\struct;
#using scripts\cp\_util;
#using scripts\cp\gametypes\_globallogic;
#using scripts\cp\gametypes\_save;
#using scripts\shared\callbacks_shared;
#using scripts\shared\rank_shared;
#using scripts\shared\system_shared;

#namespace menus;

/*
	Name: __init__sytem__
	Namespace: menus
	Checksum: 0x37E3E4C4
	Offset: 0x410
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__sytem__()
{
	system::register("menus", &__init__, undefined, undefined);
}

/*
	Name: __init__
	Namespace: menus
	Checksum: 0x49684029
	Offset: 0x450
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function __init__()
{
	callback::on_start_gametype(&init);
	callback::on_connect(&on_player_connect);
}

/*
	Name: init
	Namespace: menus
	Checksum: 0xBBB85017
	Offset: 0x4A0
	Size: 0x12F
	Parameters: 0
	Flags: None
*/
function init()
{
	game["menu_team"] = "ChangeTeam";
	game["menu_start_menu"] = "StartMenu_Main";
	game["menu_class"] = "class";
	game["menu_changeclass"] = "ChooseClass_InGame";
	game["menu_changeclass_offline"] = "ChooseClass_InGame";
	foreach(team in level.teams)
	{
		game["menu_changeclass_" + team] = "ChooseClass_InGame";
	}
	game["menu_controls"] = "ingame_controls";
	game["menu_options"] = "ingame_options";
	game["menu_leavegame"] = "popup_leavegame";
}

/*
	Name: on_player_connect
	Namespace: menus
	Checksum: 0xA40A712
	Offset: 0x5D8
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function on_player_connect()
{
	self thread on_menu_response();
	self SetDStat("completedFirstTimeFlow", 1);
}

/*
	Name: function_521a4b1f
	Namespace: menus
	Checksum: 0xBE16EA21
	Offset: 0x620
	Size: 0xC3
	Parameters: 1
	Flags: None
*/
function function_521a4b1f(player)
{
	if(!isdefined(player))
	{
		return;
	}
	player SetControllerUIModelValue("MusicPlayer.state", "stop");
	player notify("music_stop");
	player.var_148d9374 = 0;
	if(isdefined(player.var_c6ff6155))
	{
		alias = TableLookupColumnForRow("gamedata/tables/common/music_player.csv", player.var_c6ff6155, 1);
		player stopSound(alias);
	}
}

/*
	Name: on_menu_response
	Namespace: menus
	Checksum: 0x52465265
	Offset: 0x6F0
	Size: 0x927
	Parameters: 0
	Flags: None
*/
function on_menu_response()
{
	self endon("disconnect");
	for(;;)
	{
		self waittill("menuresponse", menu, response);
		if(response == "back")
		{
			self closeInGameMenu();
			if(level.console)
			{
				if(menu == game["menu_changeclass"] || menu == game["menu_changeclass_offline"] || menu == game["menu_team"] || menu == game["menu_controls"])
				{
					if(isdefined(level.teams[self.pers["team"]]))
					{
						self openMenu(game["menu_start_menu"]);
					}
				}
			}
			continue;
		}
		if(response == "changeteam" && level.allow_teamchange == "1")
		{
			self closeInGameMenu();
			self openMenu(game["menu_team"]);
		}
		if(response == "endgame")
		{
			if(level.Splitscreen)
			{
				level.skipVote = 1;
				if(!level.gameEnded)
				{
					level thread globallogic::forceEnd();
				}
			}
			continue;
		}
		if(response == "killserverpc")
		{
			level thread globallogic::killserverPc();
			continue;
		}
		if(response == "endround")
		{
			if(!level.gameEnded)
			{
				self globallogic::gameHistoryPlayerQuit();
				self closeInGameMenu();
				if(self IsHost())
				{
					foreach(player in GetPlayers())
					{
						player function_93f28fc8();
						var_62f6e136 = player GetDStat("unlocks", 0);
						var_7f6b97ce = player GetDStat("PlayerStatsList", "CAREER_TOKENS", "statValue");
						if(var_62f6e136 > var_7f6b97ce)
						{
							player AddPlayerStat("career_tokens", var_62f6e136 - var_7f6b97ce);
						}
					}
					UploadStats();
					level thread globallogic::forceEnd();
				}
			}
			else
			{
				self closeInGameMenu();
				self iprintln(&"MP_HOST_ENDGAME_RESPONSE");
			}
			foreach(player in GetPlayers())
			{
				if(player.var_148d9374 === 1)
				{
					function_521a4b1f(player);
				}
			}
			continue;
		}
		if(response == "restartmission")
		{
			var_c722c1b3 = [];
			var_c722c1b3[0] = "KILLS";
			var_c722c1b3[1] = "SCORE";
			var_c722c1b3[2] = "ASSISTS";
			var_c722c1b3[3] = "INCAPS";
			var_c722c1b3[4] = "REVIVES";
			foreach(player in level.players)
			{
				player savegame::function_bee608f0("saved_weapon", undefined);
				player savegame::function_bee608f0("saved_weapondata", undefined);
				player savegame::function_bee608f0("lives", undefined);
				player savegame::function_bee608f0("savegame_score", undefined);
				player savegame::function_bee608f0("savegame_kills", undefined);
				player savegame::function_bee608f0("savegame_assists", undefined);
				player savegame::function_bee608f0("savegame_incaps", undefined);
				player savegame::function_bee608f0("savegame_revives", undefined);
				if(!isdefined(function_9065d6ea()))
				{
					continue;
				}
				foreach(stat in var_c722c1b3)
				{
					statValue = player GetDStat("PlayerStatsList", stat, "statValue");
					player SetDStat("PlayerStatsByMap", function_9065d6ea(), "currentStats", stat, statValue);
				}
				player function_628760b4();
			}
			world.var_bf966ebd = undefined;
			function_20412792();
			continue;
		}
		if(menu == game["menu_team"] && level.allow_teamchange == "1")
		{
			switch(response)
			{
				case "autoassign":
				{
					self [[level.autoassign]](1);
					break;
				}
				case "spectator":
				{
					self [[level.Spectator]]();
					break;
				}
				case default:
				{
					self [[level.teamMenu]](response);
					break;
				}
			}
			continue;
		}
		if(menu == game["menu_changeclass"] || menu == game["menu_changeclass_offline"])
		{
			if(response != "back" && response != "cancel" && (!isdefined(self.var_3ae8773c) || !self.var_3ae8773c))
			{
				self closeInGameMenu();
				self.selectedClass = 1;
				self [[level.curClass]](response);
			}
			else
			{
				self [[level.curClass]](response);
			}
			continue;
		}
		if(menu == "spectate")
		{
			player = util::getPlayerFromClientNum(Int(response));
			if(isdefined(player))
			{
				self SetCurrentSpectatorClient(player);
			}
		}
	}
}

