#using scripts\codescripts\struct;
#using scripts\cp\_accolades;
#using scripts\cp\_challenges;
#using scripts\cp\_decorations;
#using scripts\cp\_laststand;
#using scripts\cp\_skipto;
#using scripts\cp\gametypes\_save;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\dev_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\laststand_shared;
#using scripts\shared\load_shared;
#using scripts\shared\rank_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;
#using scripts\shared\weapons_shared;

#namespace Devgui;

/*
	Name: __init__sytem__
	Namespace: Devgui
	Checksum: 0x56FC5155
	Offset: 0x270
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__sytem__()
{
	/#
		system::register("Dev Block strings are not supported", &__init__, undefined, undefined);
	#/
}

/*
	Name: __init__
	Namespace: Devgui
	Checksum: 0x2E544098
	Offset: 0x2B0
	Size: 0x1BB
	Parameters: 0
	Flags: None
*/
function __init__()
{
	/#
		SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
		SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
		SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
		SetDvar("Dev Block strings are not supported", 0);
		SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
		SetDvar("Dev Block strings are not supported", 0);
		SetDvar("Dev Block strings are not supported", 0);
		SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
		thread function_88dafe6a();
		thread function_dbdf88b3();
		thread function_c0297769();
		thread function_47239612();
		thread init_debug_center_screen();
		level thread dev::function_8ed979e4(2);
		callback::on_start_gametype(&function_6579c4b6);
		callback::on_connect(&function_bbc58bb6);
		callback::on_disconnect(&function_6307b682);
	#/
}

/*
	Name: function_6579c4b6
	Namespace: Devgui
	Checksum: 0xE52F8091
	Offset: 0x478
	Size: 0x1ED
	Parameters: 0
	Flags: None
*/
function function_6579c4b6()
{
	/#
		level flag::wait_till("Dev Block strings are not supported");
		var_dc719734 = "Dev Block strings are not supported";
		AddDebugCommand(var_dc719734);
		players = GetPlayers();
		foreach(player in GetPlayers())
		{
			var_dc719734 = "Dev Block strings are not supported" + player.playerName + "Dev Block strings are not supported";
			AddDebugCommand(var_dc719734);
		}
		thread function_9df6342b();
		level.var_97ae0af9 = "Dev Block strings are not supported";
		function_1b1c9526(level.var_97ae0af9, "Dev Block strings are not supported", 0);
		players = GetPlayers();
		for(i = 0; i < players.size; i++)
		{
			ip1 = i + 1;
			function_1b1c9526(level.var_97ae0af9, players[i].playerName, ip1);
		}
	#/
}

/*
	Name: function_bbc58bb6
	Namespace: Devgui
	Checksum: 0xD1BD5F69
	Offset: 0x670
	Size: 0xAD
	Parameters: 0
	Flags: None
*/
function function_bbc58bb6()
{
	/#
		if(!isdefined(level.var_97ae0af9))
		{
			return;
		}
		players = GetPlayers();
		for(i = 0; i < players.size; i++)
		{
			if(players[i] != self)
			{
				continue;
			}
			function_1b1c9526(level.var_97ae0af9, players[i].playerName, i + 1);
		}
	#/
}

/*
	Name: function_6307b682
	Namespace: Devgui
	Checksum: 0x2847C4CD
	Offset: 0x728
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_6307b682()
{
	/#
		if(!isdefined(level.var_97ae0af9))
		{
			return;
		}
		var_dc719734 = "Dev Block strings are not supported" + self.playerName + "Dev Block strings are not supported";
		util::function_316771cc(var_dc719734);
	#/
}

/*
	Name: function_1b1c9526
	Namespace: Devgui
	Checksum: 0xABFF2DA0
	Offset: 0x788
	Size: 0x68B
	Parameters: 3
	Flags: None
*/
function function_1b1c9526(root, var_f9bd308a, index)
{
	/#
		var_acce17e = root + var_f9bd308a + "Dev Block strings are not supported";
		pId = "Dev Block strings are not supported" + index;
		function_d2147d9f(var_acce17e, pId, "Dev Block strings are not supported", 1, "Dev Block strings are not supported");
		function_d2147d9f(var_acce17e, pId, "Dev Block strings are not supported", 2, "Dev Block strings are not supported");
		function_d2147d9f(var_acce17e, pId, "Dev Block strings are not supported", 3, "Dev Block strings are not supported");
		function_d2147d9f(var_acce17e, pId, "Dev Block strings are not supported", 4, "Dev Block strings are not supported");
		function_d2147d9f(var_acce17e, pId, "Dev Block strings are not supported", 5, "Dev Block strings are not supported");
		function_d2147d9f(var_acce17e, pId, "Dev Block strings are not supported", 6, "Dev Block strings are not supported");
		function_d2147d9f(var_acce17e, pId, "Dev Block strings are not supported", 7, "Dev Block strings are not supported");
		function_d2147d9f(var_acce17e, pId, "Dev Block strings are not supported", 8, "Dev Block strings are not supported");
		function_d2147d9f(var_acce17e, pId, "Dev Block strings are not supported", 9, "Dev Block strings are not supported");
		function_d2147d9f(var_acce17e, pId, "Dev Block strings are not supported", 10, "Dev Block strings are not supported");
		function_d2147d9f(var_acce17e, pId, "Dev Block strings are not supported", 11, "Dev Block strings are not supported");
		function_d2147d9f(var_acce17e, pId, "Dev Block strings are not supported", 12, "Dev Block strings are not supported");
		function_d2147d9f(var_acce17e, pId, "Dev Block strings are not supported", 13, "Dev Block strings are not supported");
		function_d2147d9f(var_acce17e, pId, "Dev Block strings are not supported", 14, "Dev Block strings are not supported");
		function_d2147d9f(var_acce17e, pId, "Dev Block strings are not supported", 15, "Dev Block strings are not supported");
		function_d2147d9f(var_acce17e, pId, "Dev Block strings are not supported", 16, "Dev Block strings are not supported");
		function_d2147d9f(var_acce17e, pId, "Dev Block strings are not supported", 17, "Dev Block strings are not supported");
		function_d2147d9f(var_acce17e, pId, "Dev Block strings are not supported", 18, "Dev Block strings are not supported");
		function_d2147d9f(var_acce17e, pId, "Dev Block strings are not supported", 19, "Dev Block strings are not supported");
		function_d2147d9f(var_acce17e, pId, "Dev Block strings are not supported", 20, "Dev Block strings are not supported");
		function_d2147d9f(var_acce17e, pId, "Dev Block strings are not supported", 21, "Dev Block strings are not supported");
		function_d2147d9f(var_acce17e, pId, "Dev Block strings are not supported", 22, "Dev Block strings are not supported");
		function_d2147d9f(var_acce17e, pId, "Dev Block strings are not supported", 23, "Dev Block strings are not supported");
		function_d2147d9f(var_acce17e, pId, "Dev Block strings are not supported", 24, "Dev Block strings are not supported");
		function_d2147d9f(var_acce17e, pId, "Dev Block strings are not supported", 25, "Dev Block strings are not supported");
		function_d2147d9f(var_acce17e, pId, "Dev Block strings are not supported", 26, "Dev Block strings are not supported");
		function_d2147d9f(var_acce17e, pId, "Dev Block strings are not supported", 27, "Dev Block strings are not supported");
		function_d2147d9f(var_acce17e, pId, "Dev Block strings are not supported", 28, "Dev Block strings are not supported");
		function_d2147d9f(var_acce17e, pId, "Dev Block strings are not supported", 29, "Dev Block strings are not supported");
		function_d2147d9f(var_acce17e, pId, "Dev Block strings are not supported", 30, "Dev Block strings are not supported");
		function_d2147d9f(var_acce17e, pId, "Dev Block strings are not supported", 31, "Dev Block strings are not supported");
		function_d2147d9f(var_acce17e, pId, "Dev Block strings are not supported", 32, "Dev Block strings are not supported");
		function_d2147d9f(var_acce17e, pId, "Dev Block strings are not supported", 33, "Dev Block strings are not supported");
	#/
}

/*
	Name: function_d2147d9f
	Namespace: Devgui
	Checksum: 0x5CEECD41
	Offset: 0xE20
	Size: 0x93
	Parameters: 5
	Flags: None
*/
function function_d2147d9f(root, pId, var_f8243fba, var_62cae919, var_c9e2ded0)
{
	/#
		AddDebugCommand(root + var_f8243fba + "Dev Block strings are not supported" + "Dev Block strings are not supported" + "Dev Block strings are not supported" + pId + "Dev Block strings are not supported" + "Dev Block strings are not supported" + "Dev Block strings are not supported" + var_c9e2ded0 + "Dev Block strings are not supported");
	#/
}

/*
	Name: function_bcce253a
	Namespace: Devgui
	Checksum: 0x26CFE2CE
	Offset: 0xEC0
	Size: 0x10B
	Parameters: 3
	Flags: None
*/
function function_bcce253a(cmd, var_abf3fa43, var_439858f6)
{
	/#
		pId = GetDvarInt("Dev Block strings are not supported");
		if(pId > 0)
		{
			player = GetPlayers()[pId - 1];
			if(isdefined(player))
			{
				if(isdefined(var_439858f6))
				{
					player thread [[var_abf3fa43]](var_439858f6);
				}
				else
				{
					player thread [[var_abf3fa43]]();
				}
			}
		}
		else
		{
			Array::thread_all(GetPlayers(), var_abf3fa43, var_439858f6);
		}
		SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
	#/
}

/*
	Name: function_88dafe6a
	Namespace: Devgui
	Checksum: 0xF24B2B68
	Offset: 0xFD8
	Size: 0x7A7
	Parameters: 0
	Flags: None
*/
function function_88dafe6a()
{
	/#
		for(;;)
		{
			cmd = GetDvarString("Dev Block strings are not supported");
			if(cmd == "Dev Block strings are not supported")
			{
				wait(0.05);
				continue;
			}
			switch(cmd)
			{
				case "Dev Block strings are not supported":
				{
					function_bcce253a(cmd, &function_2612a7ee);
					break;
				}
				case "Dev Block strings are not supported":
				{
					function_bcce253a(cmd, &devgui_toggle_ammo);
					break;
				}
				case "Dev Block strings are not supported":
				{
					function_bcce253a(cmd, &function_f1e00eaf);
					break;
				}
				case "Dev Block strings are not supported":
				{
					function_bcce253a(cmd, &function_c4332467, 1);
					break;
				}
				case "Dev Block strings are not supported":
				{
					function_bcce253a(cmd, &function_c4332467, 0);
					break;
				}
				case "Dev Block strings are not supported":
				{
					function_bcce253a(cmd, &function_e412b252);
					break;
				}
				case "Dev Block strings are not supported":
				{
					function_bcce253a(cmd, &function_70cef21d);
					break;
				}
				case "Dev Block strings are not supported":
				{
					function_bcce253a(cmd, &function_32101c84);
					break;
				}
				case "Dev Block strings are not supported":
				{
					function_bcce253a(cmd, &function_cac73614, 100);
					break;
				}
				case "Dev Block strings are not supported":
				{
					function_bcce253a(cmd, &function_cac73614, 1000);
					break;
				}
				case "Dev Block strings are not supported":
				{
					function_bcce253a(cmd, &function_9f78d70e, 100);
					break;
				}
				case "Dev Block strings are not supported":
				{
					function_bcce253a(cmd, &function_9f78d70e, 1000);
					break;
				}
				case "Dev Block strings are not supported":
				{
					function_bcce253a(cmd, &function_d7b26538);
				}
				case "Dev Block strings are not supported":
				{
					function_bcce253a(cmd, &function_fcd3cf3f);
					break;
				}
				case "Dev Block strings are not supported":
				{
					function_bcce253a(cmd, &function_192ef5eb);
					break;
				}
				case "Dev Block strings are not supported":
				{
					function_bcce253a(cmd, &function_b79fb0fe, 0);
					break;
				}
				case "Dev Block strings are not supported":
				{
					function_bcce253a(cmd, &function_b79fb0fe, 1);
					break;
				}
				case "Dev Block strings are not supported":
				{
					function_bcce253a(cmd, &function_b79fb0fe, 2);
					break;
				}
				case "Dev Block strings are not supported":
				{
					function_bcce253a(cmd, &function_b79fb0fe, 3);
					break;
				}
				case "Dev Block strings are not supported":
				{
					function_bcce253a(cmd, &function_b79fb0fe, 4);
					break;
				}
				case "Dev Block strings are not supported":
				{
					function_bcce253a(cmd, &function_b79fb0fe, 5);
					break;
				}
				case "Dev Block strings are not supported":
				{
					function_bcce253a(cmd, &function_b79fb0fe, 6);
					break;
				}
				case "Dev Block strings are not supported":
				{
					function_bcce253a(cmd, &function_b79fb0fe, 7);
					break;
				}
				case "Dev Block strings are not supported":
				{
					function_bcce253a(cmd, &function_b79fb0fe, 8);
					break;
				}
				case "Dev Block strings are not supported":
				{
					function_bcce253a(cmd, &function_b79fb0fe, 9);
					break;
				}
				case "Dev Block strings are not supported":
				{
					function_bcce253a(cmd, &function_b79fb0fe, 10);
					break;
				}
				case "Dev Block strings are not supported":
				{
					function_bcce253a(cmd, &function_f61fdbaf);
					break;
				}
				case "Dev Block strings are not supported":
				{
					function_bcce253a(cmd, &function_408729cd);
					break;
				}
				case "Dev Block strings are not supported":
				{
					function_bcce253a(cmd, &function_4edb34ed);
					break;
				}
				case "Dev Block strings are not supported":
				{
					function_bcce253a(cmd, &function_4533d882);
					break;
				}
				case "Dev Block strings are not supported":
				{
					function_bcce253a(cmd, &function_cac73614, 1000000);
					break;
				}
				case "Dev Block strings are not supported":
				{
					function_bcce253a(cmd, &function_e2643869);
					break;
				}
				case "Dev Block strings are not supported":
				{
					function_bcce253a(cmd, &function_9c35ef50, "Dev Block strings are not supported");
				}
				case "Dev Block strings are not supported":
				{
					break;
				}
				case default:
				{
					if(isdefined(level.custom_devgui))
					{
						if(IsArray(level.custom_devgui))
						{
							foreach(Devgui in level.custom_devgui)
							{
								if(isdefined([[Devgui]](cmd)) && [[Devgui]](cmd))
								{
									break;
								}
							}
						}
						else
						{
							[[level.custom_devgui]](cmd);
						}
					}
					break;
				}
			}
			SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
			wait(0.5);
		}
	#/
}

/*
	Name: function_9c35ef50
	Namespace: Devgui
	Checksum: 0x925FBE7C
	Offset: 0x1788
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_9c35ef50(stat_name)
{
	/#
		self challenges::function_96ed590f(stat_name, 50);
	#/
}

/*
	Name: function_e2643869
	Namespace: Devgui
	Checksum: 0xC82906BA
	Offset: 0x17C0
	Size: 0xE1
	Parameters: 0
	Flags: None
*/
function function_e2643869()
{
	/#
		mission_names = skipto::function_23eda99c();
		foreach(mission in mission_names)
		{
			self AddPlayerStat("Dev Block strings are not supported" + GetSubStr(function_4794dda(mission), 0, 3), 1);
		}
	#/
}

/*
	Name: function_4533d882
	Namespace: Devgui
	Checksum: 0xA800F7E8
	Offset: 0x18B0
	Size: 0x6D
	Parameters: 0
	Flags: None
*/
function function_4533d882()
{
	/#
		for(itemIndex = 1; itemIndex < 76; itemIndex++)
		{
			self SetDStat("Dev Block strings are not supported", itemIndex, "Dev Block strings are not supported", "Dev Block strings are not supported", "Dev Block strings are not supported", 999);
		}
	#/
}

/*
	Name: function_4edb34ed
	Namespace: Devgui
	Checksum: 0x2ABEB0F6
	Offset: 0x1928
	Size: 0x65
	Parameters: 0
	Flags: None
*/
function function_4edb34ed()
{
	/#
		for(itemIndex = 1; itemIndex < 76; itemIndex++)
		{
			self SetDStat("Dev Block strings are not supported", itemIndex, "Dev Block strings are not supported", 1000000);
		}
	#/
}

/*
	Name: function_408729cd
	Namespace: Devgui
	Checksum: 0x16E5AFEC
	Offset: 0x1998
	Size: 0xC9
	Parameters: 0
	Flags: None
*/
function function_408729cd()
{
	/#
		if(!isdefined(function_9065d6ea()))
		{
			return;
		}
		foreach(mission in skipto::function_23eda99c())
		{
			self SetDStat("Dev Block strings are not supported", mission, "Dev Block strings are not supported", 4, 1);
		}
	#/
}

/*
	Name: function_192ef5eb
	Namespace: Devgui
	Checksum: 0xEC45DA43
	Offset: 0x1A70
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_192ef5eb()
{
	/#
		if(isdefined(self.var_f0080358) && self.var_f0080358)
		{
			self CloseLUIMenu(self.var_f0080358);
		}
		self.var_f0080358 = self OpenLUIMenu("Dev Block strings are not supported");
		self waittill("menuresponse", menu, response);
		while(response != "Dev Block strings are not supported")
		{
			self waittill("menuresponse", menu, response);
		}
		self CloseLUIMenu(self.var_f0080358);
	#/
}

/*
	Name: function_b79fb0fe
	Namespace: Devgui
	Checksum: 0x30B2578E
	Offset: 0x1B48
	Size: 0x73
	Parameters: 1
	Flags: None
*/
function function_b79fb0fe(var_b931f6fe)
{
	/#
		a_decorations = self GetDecorations();
		self GiveDecoration(a_decorations[var_b931f6fe].name);
		UploadStats(self);
	#/
}

/*
	Name: function_f61fdbaf
	Namespace: Devgui
	Checksum: 0x25B6FFAA
	Offset: 0x1BC8
	Size: 0xC1
	Parameters: 0
	Flags: None
*/
function function_f61fdbaf()
{
	/#
		mission_names = skipto::function_23eda99c();
		foreach(mission_name in mission_names)
		{
			self SetDStat("Dev Block strings are not supported", mission_name, "Dev Block strings are not supported", 1);
		}
	#/
}

/*
	Name: function_d7b26538
	Namespace: Devgui
	Checksum: 0x9756E50F
	Offset: 0x1C98
	Size: 0xEB
	Parameters: 0
	Flags: None
*/
function function_d7b26538()
{
	/#
		mission_names = skipto::function_23eda99c();
		foreach(mission in mission_names)
		{
			for(i = 0; i < 10; i++)
			{
				self SetDStat("Dev Block strings are not supported", mission, "Dev Block strings are not supported", i, 1);
			}
		}
	#/
}

/*
	Name: function_fcd3cf3f
	Namespace: Devgui
	Checksum: 0xC919A945
	Offset: 0x1D90
	Size: 0xC1
	Parameters: 0
	Flags: None
*/
function function_fcd3cf3f()
{
	/#
		mission_names = skipto::function_23eda99c();
		foreach(mission_name in mission_names)
		{
			self SetDStat("Dev Block strings are not supported", mission_name, "Dev Block strings are not supported", 1);
		}
	#/
}

/*
	Name: function_cac73614
	Namespace: Devgui
	Checksum: 0x2CE7E4A4
	Offset: 0x1E60
	Size: 0x73
	Parameters: 1
	Flags: None
*/
function function_cac73614(var_735c65d7)
{
	/#
		/#
			Assert(isdefined(self));
		#/
		/#
			Assert(isPlayer(self));
		#/
		self AddRankXPValue("Dev Block strings are not supported", var_735c65d7);
	#/
}

/*
	Name: function_9f78d70e
	Namespace: Devgui
	Checksum: 0x9B374B38
	Offset: 0x1EE0
	Size: 0x113
	Parameters: 1
	Flags: None
*/
function function_9f78d70e(var_735c65d7)
{
	/#
		/#
			Assert(isdefined(self));
		#/
		/#
			Assert(isPlayer(self));
		#/
		weaponNum = Int(tableLookup("Dev Block strings are not supported", 3, self.currentWeapon.rootweapon.displayName, 0));
		var_b51b0d94 = self GetDStat("Dev Block strings are not supported", weaponNum, "Dev Block strings are not supported");
		self SetDStat("Dev Block strings are not supported", weaponNum, "Dev Block strings are not supported", var_735c65d7 + var_b51b0d94);
	#/
}

/*
	Name: function_c4332467
	Namespace: Devgui
	Checksum: 0xCD32BAF
	Offset: 0x2000
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_c4332467(onOff)
{
	/#
		if(onOff)
		{
			self EnableInvulnerability();
		}
		else
		{
			self DisableInvulnerability();
		}
	#/
}

/*
	Name: function_e412b252
	Namespace: Devgui
	Checksum: 0xD5803204
	Offset: 0x2050
	Size: 0xFB
	Parameters: 0
	Flags: None
*/
function function_e412b252()
{
	/#
		/#
			Assert(isdefined(self));
		#/
		/#
			Assert(isPlayer(self));
		#/
		if(isalive(self))
		{
			self DisableInvulnerability();
			death_from = (RandomFloatRange(-20, 20), RandomFloatRange(-20, 20), RandomFloatRange(-20, 20));
			self DoDamage(self.health + 666, self.origin + death_from);
		}
	#/
}

/*
	Name: devgui_toggle_ammo
	Namespace: Devgui
	Checksum: 0x6A46AD73
	Offset: 0x2158
	Size: 0x155
	Parameters: 0
	Flags: None
*/
function devgui_toggle_ammo()
{
System.InvalidOperationException: Stack empty.
   at System.ThrowHelper.ThrowInvalidOperationException(ExceptionResource resource)
   at System.Collections.Generic.Stack`1.Pop()
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.⁬‬​⁯‏‬‪⁬‪‌‌​‪‭‬‮‪‏⁮‌⁫‬⁫⁪‌⁭​⁮⁪⁮‫⁬⁫‮‏‪⁫⁪‎‪‮(ScriptOp )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‮​⁬⁭⁮‍‏‏‫‎‭‫⁮‪‮⁭‮⁬​‌⁯‮⁭‬​‪⁭‍‏‪⁪‎⁭⁭‌⁪‌‭​⁯‮(ScriptOp , ‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‭⁭⁫‭⁪‫‭‮‪⁬‏‎‪⁯⁪⁬‪‏‫⁯⁯‭​‫⁯‍‮⁫‪‏⁫⁪‎‏‫‫‪⁬‌⁯‮(‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ , Int32 )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‭⁭⁫‭⁪‫‭‮‪⁬‏‎‪⁯⁪⁬‪‏‫⁯⁯‭​‫⁯‍‮⁫‪‏⁫⁪‎‏‫‫‪⁬‌⁯‮(‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ , Int32 )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮..ctor(ScriptExport , ScriptBase )
}

/*
	Name: function_f1e00eaf
	Namespace: Devgui
	Checksum: 0x4E997271
	Offset: 0x22B8
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_f1e00eaf()
{
	/#
		/#
			Assert(isdefined(self));
		#/
		/#
			Assert(isPlayer(self));
		#/
		/#
			Assert(isalive(self));
		#/
		self.ignoreme = !self.ignoreme;
	#/
}

/*
	Name: function_32101c84
	Namespace: Devgui
	Checksum: 0x3472D07B
	Offset: 0x2348
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_32101c84()
{
	/#
		/#
			Assert(isdefined(self));
		#/
		/#
			Assert(isPlayer(self));
		#/
		/#
			Assert(isalive(self));
		#/
		self.var_6c733586 = !self.var_6c733586;
	#/
}

/*
	Name: function_70cef21d
	Namespace: Devgui
	Checksum: 0x6D39044C
	Offset: 0x23D8
	Size: 0x13D
	Parameters: 0
	Flags: None
*/
function function_70cef21d()
{
	/#
		/#
			Assert(isdefined(self));
		#/
		/#
			Assert(isPlayer(self));
		#/
		/#
			Assert(isalive(self));
		#/
		self RevivePlayer();
		if(isdefined(self.reviveTrigger))
		{
			self.reviveTrigger delete();
			self.reviveTrigger = undefined;
		}
		self laststand::cleanup_suicide_hud();
		self laststand::laststand_enable_player_weapons();
		self AllowJump(1);
		self.ignoreme = 0;
		self DisableInvulnerability();
		self.laststand = undefined;
		self notify("player_revived", self);
	#/
}

/*
	Name: function_ec2ac25f
	Namespace: Devgui
	Checksum: 0xF0E202D3
	Offset: 0x2520
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function function_ec2ac25f(maxhealth)
{
	/#
		self endon("disconnect");
		self endon("hash_2612a7ee");
		while(1)
		{
			wait(1);
			if(self.maxhealth != maxhealth)
			{
				self.maxhealth = maxhealth;
				self.health = self.maxhealth;
			}
		}
	#/
}

/*
	Name: function_2612a7ee
	Namespace: Devgui
	Checksum: 0x539C5EF2
	Offset: 0x2590
	Size: 0xFB
	Parameters: 0
	Flags: None
*/
function function_2612a7ee()
{
	/#
		/#
			Assert(isdefined(self));
		#/
		/#
			Assert(isPlayer(self));
		#/
		/#
			Assert(isalive(self));
		#/
		self notify("hash_2612a7ee");
		if(self.maxhealth >= 2000 && isdefined(self.var_1bcb5997))
		{
			self.maxhealth = self.var_1bcb5997;
		}
		else
		{
			self.var_1bcb5997 = self.maxhealth;
			self.maxhealth = 2000;
			self thread function_ec2ac25f(self.maxhealth);
		}
		self.health = self.maxhealth;
	#/
}

/*
	Name: function_9df6342b
	Namespace: Devgui
	Checksum: 0x290F738B
	Offset: 0x2698
	Size: 0x517
	Parameters: 0
	Flags: None
*/
function function_9df6342b()
{
	/#
		if(isdefined(game["Dev Block strings are not supported"]) && game["Dev Block strings are not supported"])
		{
			return;
		}
		level flag::wait_till("Dev Block strings are not supported");
		wait(0.1);
		a_weapons = EnumerateWeapons("Dev Block strings are not supported");
		var_f021b516 = [];
		var_f66252b6 = [];
		var_439d85 = [];
		for(i = 0; i < a_weapons.size; i++)
		{
			if(weapons::is_primary_weapon(a_weapons[i]) || weapons::is_side_arm(a_weapons[i]))
			{
				ArrayInsert(var_f021b516, a_weapons[i], 0);
				continue;
			}
			if(weapons::is_grenade(a_weapons[i]))
			{
				ArrayInsert(var_f66252b6, a_weapons[i], 0);
				continue;
			}
			ArrayInsert(var_439d85, a_weapons[i], 0);
		}
		var_476218ad = "Dev Block strings are not supported";
		AddDebugCommand(var_476218ad + "Dev Block strings are not supported" + "Dev Block strings are not supported" + "Dev Block strings are not supported" + "Dev Block strings are not supported");
		AddDebugCommand(var_476218ad + "Dev Block strings are not supported" + "Dev Block strings are not supported" + "Dev Block strings are not supported" + "Dev Block strings are not supported");
		AddDebugCommand(var_476218ad + "Dev Block strings are not supported" + "Dev Block strings are not supported" + "Dev Block strings are not supported" + "Dev Block strings are not supported");
		function_c71c01bb(var_476218ad, "Dev Block strings are not supported", 0, var_f66252b6, "Dev Block strings are not supported");
		function_c71c01bb(var_476218ad, "Dev Block strings are not supported", 0, var_f021b516, "Dev Block strings are not supported");
		function_c71c01bb(var_476218ad, "Dev Block strings are not supported", 0, var_439d85, "Dev Block strings are not supported");
		function_fcadbfcd(var_476218ad, "Dev Block strings are not supported", 0, var_f021b516, "Dev Block strings are not supported");
		players = GetPlayers();
		for(i = 0; i < players.size; i++)
		{
			ip1 = i + 1;
			AddDebugCommand(var_476218ad + players[i].playerName + "Dev Block strings are not supported" + "Dev Block strings are not supported" + "Dev Block strings are not supported");
			AddDebugCommand(var_476218ad + players[i].playerName + "Dev Block strings are not supported" + "Dev Block strings are not supported" + "Dev Block strings are not supported");
			AddDebugCommand(var_476218ad + players[i].playerName + "Dev Block strings are not supported" + "Dev Block strings are not supported" + "Dev Block strings are not supported");
			function_c71c01bb(var_476218ad, players[i].playerName, ip1, var_f66252b6, "Dev Block strings are not supported");
			function_c71c01bb(var_476218ad, players[i].playerName, ip1, var_f021b516, "Dev Block strings are not supported");
			function_c71c01bb(var_476218ad, players[i].playerName, ip1, var_439d85, "Dev Block strings are not supported");
			function_fcadbfcd(var_476218ad, players[i].playerName, ip1, var_f021b516, "Dev Block strings are not supported");
		}
		game["Dev Block strings are not supported"] = 1;
	#/
}

/*
	Name: function_fcadbfcd
	Namespace: Devgui
	Checksum: 0xADB12274
	Offset: 0x2BB8
	Size: 0x221
	Parameters: 5
	Flags: None
*/
function function_fcadbfcd(root, var_f9bd308a, index, a_weapons, weapon_type)
{
	/#
		var_acce17e = root + var_f9bd308a + "Dev Block strings are not supported" + "Dev Block strings are not supported" + weapon_type + "Dev Block strings are not supported";
		attachments = [];
		foreach(weapon in a_weapons)
		{
			foreach(var_fc760a22 in weapon.supportedAttachments)
			{
				Array::add(attachments, var_fc760a22, 0);
			}
		}
		pId = "Dev Block strings are not supported" + index;
		foreach(att in attachments)
		{
			function_2e546d79(var_acce17e, pId, att, 1);
		}
	#/
}

/*
	Name: function_c71c01bb
	Namespace: Devgui
	Checksum: 0xBF1495A4
	Offset: 0x2DE8
	Size: 0x24D
	Parameters: 5
	Flags: None
*/
function function_c71c01bb(root, var_f9bd308a, index, a_weapons, weapon_type)
{
	/#
		var_acce17e = root + var_f9bd308a + "Dev Block strings are not supported" + "Dev Block strings are not supported" + weapon_type + "Dev Block strings are not supported";
		pId = "Dev Block strings are not supported" + index;
		if(isdefined(a_weapons))
		{
			for(i = 0; i < a_weapons.size; i++)
			{
				if(weapon_type == "Dev Block strings are not supported")
				{
					attachments = [];
				}
				else
				{
					attachments = a_weapons[i].supportedAttachments;
				}
				name = a_weapons[i].name;
				if(attachments.size)
				{
					function_3294eaad(var_acce17e + name + "Dev Block strings are not supported", pId, name, i + 1);
					foreach(att in attachments)
					{
						if(att != "Dev Block strings are not supported")
						{
							function_3294eaad(var_acce17e + name + "Dev Block strings are not supported", pId, name + "Dev Block strings are not supported" + att, i + 1);
						}
					}
				}
				else
				{
					function_3294eaad(var_acce17e, pId, name, i + 1);
				}
				wait(0.05);
			}
		}
	#/
}

/*
	Name: function_3294eaad
	Namespace: Devgui
	Checksum: 0x2E75D6E
	Offset: 0x3040
	Size: 0x8B
	Parameters: 4
	Flags: None
*/
function function_3294eaad(root, pId, weap_name, var_62cae919)
{
	/#
		AddDebugCommand(root + weap_name + "Dev Block strings are not supported" + "Dev Block strings are not supported" + "Dev Block strings are not supported" + pId + "Dev Block strings are not supported" + "Dev Block strings are not supported" + "Dev Block strings are not supported" + weap_name + "Dev Block strings are not supported");
	#/
}

/*
	Name: function_2e546d79
	Namespace: Devgui
	Checksum: 0x65801849
	Offset: 0x30D8
	Size: 0x8B
	Parameters: 4
	Flags: None
*/
function function_2e546d79(root, pId, var_ea9ecd24, var_62cae919)
{
	/#
		AddDebugCommand(root + var_ea9ecd24 + "Dev Block strings are not supported" + "Dev Block strings are not supported" + "Dev Block strings are not supported" + pId + "Dev Block strings are not supported" + "Dev Block strings are not supported" + "Dev Block strings are not supported" + var_ea9ecd24 + "Dev Block strings are not supported");
	#/
}

/*
	Name: function_dbdf88b3
	Namespace: Devgui
	Checksum: 0x11A6E8F8
	Offset: 0x3170
	Size: 0x107
	Parameters: 0
	Flags: None
*/
function function_dbdf88b3()
{
	/#
		for(;;)
		{
			weapon_name = GetDvarString("Dev Block strings are not supported");
			if(weapon_name != "Dev Block strings are not supported")
			{
				function_bcce253a(weapon_name, &function_820cf1c0, weapon_name);
				SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
			}
			attachmentName = GetDvarString("Dev Block strings are not supported");
			if(attachmentName != "Dev Block strings are not supported")
			{
				function_bcce253a(attachmentName, &function_1734411b, attachmentName);
				SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
			}
			wait(0.5);
		}
	#/
}

/*
	Name: function_c0297769
	Namespace: Devgui
	Checksum: 0x76BEFB20
	Offset: 0x3280
	Size: 0x3DF
	Parameters: 0
	Flags: None
*/
function function_c0297769()
{
	/#
		update_time = 0.5;
		print_duration = Int(update_time / 0.05);
		var_5418427f = Int(1 / update_time);
		var_a392d308 = 0;
		colors = [];
		colors[colors.size] = (1, 1, 1);
		colors[colors.size] = (1, 0, 0);
		colors[colors.size] = (0, 1, 0);
		colors[colors.size] = (1, 1, 0);
		colors[colors.size] = (1, 0, 1);
		colors[colors.size] = (0, 1, 1);
		for(;;)
		{
			wait(update_time);
			display = GetDvarInt("Dev Block strings are not supported");
			if(!display)
			{
				break;
			}
			if(!var_a392d308)
			{
				IPrintLnBold(level.players[0] GetCurrentWeapon().name);
			}
			var_a392d308++;
			if(var_a392d308 >= var_5418427f)
			{
				var_a392d308 = 0;
			}
			var_d9fe904b = 0;
			for(i = 1; i < level.players.size; i++)
			{
				player = level.players[i];
				weapon = player GetCurrentWeapon();
				if(!isdefined(weapon) || level.weaponNone == weapon)
				{
					continue;
				}
				print3d(player GetTagOrigin("Dev Block strings are not supported"), weapon.name, colors[var_d9fe904b], 1, 0.15, print_duration);
				var_d9fe904b++;
				if(var_d9fe904b >= colors.size)
				{
					var_d9fe904b = 0;
				}
			}
			var_d9fe904b = 0;
			ai_list = GetAIArray();
			for(i = 0; i < ai_list.size; i++)
			{
				ai = ai_list[i];
				if(isVehicle(ai))
				{
					weapon = ai.turretWeapon;
				}
				else
				{
					weapon = ai.weapon;
				}
				if(!isdefined(weapon) || level.weaponNone == weapon)
				{
					continue;
				}
				print3d(ai GetTagOrigin("Dev Block strings are not supported"), weapon.name, colors[var_d9fe904b], 1, 0.15, print_duration);
				var_d9fe904b++;
				if(var_d9fe904b >= colors.size)
				{
					var_d9fe904b = 0;
				}
			}
		}
	#/
}

/*
	Name: function_47239612
	Namespace: Devgui
	Checksum: 0x9149A16C
	Offset: 0x3668
	Size: 0x20B
	Parameters: 0
	Flags: None
*/
function function_47239612()
{
	/#
		wait(0.05);
		var_bcd2016c = GetDvarInt("Dev Block strings are not supported");
		for(;;)
		{
			VAL = GetDvarInt("Dev Block strings are not supported");
			if(var_bcd2016c != VAL)
			{
				if(isdefined(level.var_315b8892))
				{
					level.var_315b8892 delete();
					level.var_315b8892 = undefined;
				}
				if(VAL)
				{
					player = GetPlayers()[0];
					direction = player getPlayerAngles();
					direction_vec = AnglesToForward((0, direction[1], 0));
					scale = 120;
					direction_vec = (direction_vec[0] * scale, direction_vec[1] * scale, direction_vec[2] * scale);
					level.var_315b8892 = spawn("Dev Block strings are not supported", player GetEye() + direction_vec);
					level.var_315b8892 SetModel("Dev Block strings are not supported");
					level.var_315b8892.angles = (0, direction[1], 0) + VectorScale((0, 1, 0), 90);
				}
			}
			var_bcd2016c = VAL;
			wait(0.05);
		}
	#/
}

/*
	Name: function_820cf1c0
	Namespace: Devgui
	Checksum: 0xE77AE077
	Offset: 0x3880
	Size: 0x323
	Parameters: 1
	Flags: None
*/
function function_820cf1c0(weapon_name)
{
	/#
		/#
			Assert(isdefined(self));
		#/
		/#
			Assert(isPlayer(self));
		#/
		/#
			Assert(isalive(self));
		#/
		self notify("hash_e52a8b96");
		self endon("hash_e52a8b96");
		currentWeapon = self GetCurrentWeapon();
		split = StrTok(weapon_name, "Dev Block strings are not supported");
		switch(split.size)
		{
			case 1:
			case default:
			{
				weapon = GetWeapon(split[0]);
				break;
			}
			case 2:
			{
				weapon = GetWeapon(split[0], split[1]);
				break;
			}
			case 3:
			{
				weapon = GetWeapon(split[0], split[1], split[2]);
				break;
			}
			case 4:
			{
				weapon = GetWeapon(split[0], split[1], split[2], split[3]);
				break;
			}
			case 5:
			{
				weapon = GetWeapon(split[0], split[1], split[2], split[3], split[4]);
				break;
			}
		}
		if(currentWeapon != weapon)
		{
			if(GetDvarInt("Dev Block strings are not supported"))
			{
				AddDebugCommand("Dev Block strings are not supported" + weapon_name);
				wait(0.05);
			}
			else
			{
				self TakeWeapon(currentWeapon);
				self GiveWeapon(weapon);
				self SwitchToWeapon(weapon);
			}
			max = weapon.maxAmmo;
			if(max)
			{
				self SetWeaponAmmoStock(weapon, max);
			}
		}
	#/
}

/*
	Name: function_1734411b
	Namespace: Devgui
	Checksum: 0x500D3027
	Offset: 0x3BB0
	Size: 0x46B
	Parameters: 1
	Flags: None
*/
function function_1734411b(var_ea9ecd24)
{
	/#
		/#
			Assert(isdefined(self));
		#/
		/#
			Assert(isPlayer(self));
		#/
		/#
			Assert(isalive(self));
		#/
		self notify("hash_1734411b");
		self endon("hash_1734411b");
		currentWeapon = self GetCurrentWeapon();
		var_2ee2f0c0 = 0;
		split = StrTok(currentWeapon.name, "Dev Block strings are not supported");
		foreach(attachment in currentWeapon.supportedAttachments)
		{
			if(attachment == var_ea9ecd24)
			{
				var_2ee2f0c0 = 1;
			}
		}
		if(var_2ee2f0c0 == 0)
		{
			IPrintLnBold("Dev Block strings are not supported" + var_ea9ecd24 + "Dev Block strings are not supported" + split[0]);
			var_3d3b647a = "Dev Block strings are not supported";
			if(currentWeapon.supportedAttachments.size == 0)
			{
				var_3d3b647a = var_3d3b647a + "Dev Block strings are not supported";
			}
			foreach(attachment in currentWeapon.supportedAttachments)
			{
				var_3d3b647a = var_3d3b647a + "Dev Block strings are not supported" + attachment;
			}
			IPrintLnBold(var_3d3b647a);
			return;
		}
		foreach(currentAttachment in split)
		{
			if(currentAttachment == var_ea9ecd24)
			{
				IPrintLnBold("Dev Block strings are not supported" + var_ea9ecd24 + "Dev Block strings are not supported" + currentWeapon.name);
				return;
			}
		}
		split[split.size] = var_ea9ecd24;
		for(index = split.size; index < 9; index++)
		{
			split[index] = "Dev Block strings are not supported";
		}
		self TakeWeapon(currentWeapon);
		newWeapon = GetWeapon(split[0], split[1], split[2], split[3], split[4], split[5], split[6], split[7], split[8]);
		self GiveWeapon(newWeapon);
		self SwitchToWeapon(newWeapon);
	#/
}

/*
	Name: init_debug_center_screen
	Namespace: Devgui
	Checksum: 0x40452B25
	Offset: 0x4028
	Size: 0x12B
	Parameters: 0
	Flags: None
*/
function init_debug_center_screen()
{
	/#
		zero_idle_movement = "Dev Block strings are not supported";
		while(GetDvarInt("Dev Block strings are not supported"))
		{
			if(!isdefined(level.center_screen_debug_hudelem_active) || level.center_screen_debug_hudelem_active == 0)
			{
				thread debug_center_screen();
				zero_idle_movement = GetDvarString("Dev Block strings are not supported");
				if(isdefined(zero_idle_movement) && zero_idle_movement == "Dev Block strings are not supported")
				{
					SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
					zero_idle_movement = "Dev Block strings are not supported";
				}
			}
			continue;
			level notify("stop center screen debug");
			if(zero_idle_movement == "Dev Block strings are not supported")
			{
				SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
				zero_idle_movement = "Dev Block strings are not supported";
			}
			wait(0.05);
		}
	#/
}

/*
	Name: debug_center_screen
	Namespace: Devgui
	Checksum: 0x13C6FC57
	Offset: 0x4160
	Size: 0x227
	Parameters: 0
	Flags: None
*/
function debug_center_screen()
{
	/#
		level.center_screen_debug_hudelem_active = 1;
		wait(0.1);
		level.center_screen_debug_hudelem1 = newClientHudElem(level.players[0]);
		level.center_screen_debug_hudelem1.alignX = "Dev Block strings are not supported";
		level.center_screen_debug_hudelem1.alignY = "Dev Block strings are not supported";
		level.center_screen_debug_hudelem1.fontscale = 1;
		level.center_screen_debug_hudelem1.alpha = 0.5;
		level.center_screen_debug_hudelem1.x = 320 - 1;
		level.center_screen_debug_hudelem1.y = 240;
		level.center_screen_debug_hudelem1 SetShader("Dev Block strings are not supported", 1000, 1);
		level.center_screen_debug_hudelem2 = newClientHudElem(level.players[0]);
		level.center_screen_debug_hudelem2.alignX = "Dev Block strings are not supported";
		level.center_screen_debug_hudelem2.alignY = "Dev Block strings are not supported";
		level.center_screen_debug_hudelem2.fontscale = 1;
		level.center_screen_debug_hudelem2.alpha = 0.5;
		level.center_screen_debug_hudelem2.x = 320 - 1;
		level.center_screen_debug_hudelem2.y = 240;
		level.center_screen_debug_hudelem2 SetShader("Dev Block strings are not supported", 1, 480);
		level waittill("stop center screen debug");
		level.center_screen_debug_hudelem1 destroy();
		level.center_screen_debug_hudelem2 destroy();
		level.center_screen_debug_hudelem_active = 0;
	#/
}

