#using scripts\codescripts\struct;
#using scripts\cp\_util;
#using scripts\shared\_oob;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\laststand_shared;
#using scripts\shared\load_shared;
#using scripts\shared\player_shared;
#using scripts\shared\system_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;

#namespace savegame;

/*
	Name: __init__sytem__
	Namespace: savegame
	Checksum: 0x941DE505
	Offset: 0x348
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__sytem__()
{
	system::register("save", &__init__, undefined, undefined);
}

/*
	Name: __init__
	Namespace: savegame
	Checksum: 0xA7F8EFEA
	Offset: 0x388
	Size: 0x11B
	Parameters: 0
	Flags: None
*/
function __init__()
{
	if(!isdefined(world.loadout))
	{
		world.loadout = [];
	}
	if(!isdefined(world.var_ddd24795))
	{
		world.var_ddd24795 = [];
	}
	if(!isdefined(world.var_7fd0dd8a))
	{
		world.var_7fd0dd8a = [];
	}
	foreach(trig in trigger::get_all())
	{
		if(isdefined(trig.var_d981bb2d) && trig.var_d981bb2d)
		{
			trig thread function_908f2d2a();
		}
	}
	level.var_67e1f60e = [];
}

/*
	Name: save
	Namespace: savegame
	Checksum: 0x10F70FC8
	Offset: 0x4B0
	Size: 0x1F
	Parameters: 0
	Flags: None
*/
function save()
{
	if(!isdefined(world.loadout))
	{
		world.loadout = [];
	}
}

/*
	Name: load
	Namespace: savegame
	Checksum: 0x99EC1590
	Offset: 0x4D8
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function load()
{
}

/*
	Name: function_8c0c4b3a
	Namespace: savegame
	Checksum: 0xFFAAD58A
	Offset: 0x4E8
	Size: 0x77
	Parameters: 1
	Flags: None
*/
function function_8c0c4b3a(name)
{
	if(isdefined(level.savename) && level.savename != name)
	{
		/#
			errormsg("Dev Block strings are not supported" + level.savename + "Dev Block strings are not supported" + name + "Dev Block strings are not supported");
		#/
	}
	level.savename = name;
}

/*
	Name: function_1bfdd60e
	Namespace: savegame
	Checksum: 0x6AF5884B
	Offset: 0x568
	Size: 0x31
	Parameters: 0
	Flags: None
*/
function function_1bfdd60e()
{
	if(!isdefined(level.savename))
	{
		function_8c0c4b3a(level.script);
	}
	return level.savename;
}

/*
	Name: function_b263cd27
	Namespace: savegame
	Checksum: 0x5D629A5E
	Offset: 0x5A8
	Size: 0x8F
	Parameters: 2
	Flags: None
*/
function function_b263cd27(name, value)
{
	id = function_1bfdd60e();
	if(!isdefined(world.var_ddd24795))
	{
		world.var_ddd24795 = [];
	}
	if(!isdefined(world.var_ddd24795[id]))
	{
		world.var_ddd24795[id] = [];
	}
	world.var_ddd24795[id][name] = value;
}

/*
	Name: function_30cdba3
	Namespace: savegame
	Checksum: 0x633206B1
	Offset: 0x640
	Size: 0x8B
	Parameters: 2
	Flags: None
*/
function function_30cdba3(name, defVal)
{
	id = function_1bfdd60e();
	if(isdefined(world.var_ddd24795) && isdefined(world.var_ddd24795[id]) && isdefined(world.var_ddd24795[id][name]))
	{
		return world.var_ddd24795[id][name];
	}
	return defVal;
}

/*
	Name: function_18a1a0fe
	Namespace: savegame
	Checksum: 0xA4EE0264
	Offset: 0x6D8
	Size: 0x59
	Parameters: 0
	Flags: None
*/
function function_18a1a0fe()
{
	id = function_1bfdd60e();
	if(isdefined(world.var_ddd24795) && isdefined(world.var_ddd24795[id]))
	{
		world.var_ddd24795[id] = [];
	}
}

/*
	Name: function_1f201c0b
	Namespace: savegame
	Checksum: 0x40514082
	Offset: 0x740
	Size: 0x9
	Parameters: 0
	Flags: Private
*/
function private function_1f201c0b()
{
	return self.playerName;
}

/*
	Name: function_bee608f0
	Namespace: savegame
	Checksum: 0xAAD627EC
	Offset: 0x758
	Size: 0x141
	Parameters: 2
	Flags: None
*/
function function_bee608f0(name, value)
{
	if(SessionModeIsCampaignZombiesGame())
	{
		var_98e91480 = "offline";
		if(SessionModeIsOnlineGame())
		{
			var_98e91480 = "online";
		}
		var_c98fc56a = "CPZM" + var_98e91480;
	}
	else
	{
		var_c98fc56a = "CP";
	}
	id = self function_1f201c0b();
	if(!isdefined(world.var_7fd0dd8a))
	{
		world.var_7fd0dd8a = [];
	}
	if(!isdefined(world.var_7fd0dd8a[var_c98fc56a]))
	{
		world.var_7fd0dd8a[var_c98fc56a] = [];
	}
	if(!isdefined(world.var_7fd0dd8a[var_c98fc56a][id]))
	{
		world.var_7fd0dd8a[var_c98fc56a][id] = [];
	}
	world.var_7fd0dd8a[var_c98fc56a][id][name] = value;
}

/*
	Name: function_36adbb9c
	Namespace: savegame
	Checksum: 0xC99594FE
	Offset: 0x8A8
	Size: 0x129
	Parameters: 2
	Flags: None
*/
function function_36adbb9c(name, defVal)
{
	if(SessionModeIsCampaignZombiesGame())
	{
		var_98e91480 = "offline";
		if(SessionModeIsOnlineGame())
		{
			var_98e91480 = "online";
		}
		var_c98fc56a = "CPZM" + var_98e91480;
	}
	else
	{
		var_c98fc56a = "CP";
	}
	id = self function_1f201c0b();
	if(isdefined(world.var_7fd0dd8a) && isdefined(world.var_7fd0dd8a[var_c98fc56a]) && isdefined(world.var_7fd0dd8a[var_c98fc56a][id]) && isdefined(world.var_7fd0dd8a[var_c98fc56a][id][name]))
	{
		return world.var_7fd0dd8a[var_c98fc56a][id][name];
	}
	return defVal;
}

/*
	Name: function_cd9b21ef
	Namespace: savegame
	Checksum: 0xEB4B79E7
	Offset: 0x9E0
	Size: 0xD1
	Parameters: 0
	Flags: None
*/
function function_cd9b21ef()
{
	if(SessionModeIsCampaignZombiesGame())
	{
		var_98e91480 = "offline";
		if(SessionModeIsOnlineGame())
		{
			var_98e91480 = "online";
		}
		var_c98fc56a = "CPZM" + var_98e91480;
	}
	else
	{
		var_c98fc56a = "CP";
	}
	id = self function_1f201c0b();
	if(isdefined(world.var_7fd0dd8a) && isdefined(world.var_7fd0dd8a[var_c98fc56a]))
	{
		world.var_7fd0dd8a[var_c98fc56a] = [];
	}
}

/*
	Name: function_37ae30c6
	Namespace: savegame
	Checksum: 0x8CB05BA6
	Offset: 0xAC0
	Size: 0x249
	Parameters: 0
	Flags: None
*/
function function_37ae30c6()
{
	if(SessionModeIsCampaignZombiesGame())
	{
		var_98e91480 = "offline";
		if(SessionModeIsOnlineGame())
		{
			var_98e91480 = "online";
		}
		var_c98fc56a = "CPZM" + var_98e91480;
	}
	else
	{
		var_c98fc56a = "CP";
	}
	if(!isdefined(world.var_7fd0dd8a))
	{
		world.var_7fd0dd8a = [];
	}
	if(!isdefined(world.var_7fd0dd8a[var_c98fc56a]))
	{
		world.var_7fd0dd8a[var_c98fc56a] = [];
	}
	keys = getArrayKeys(world.var_7fd0dd8a[var_c98fc56a]);
	if(isdefined(keys))
	{
		foreach(key in keys)
		{
			var_9f2fde67 = 0;
			foreach(player in level.players)
			{
				if(key === player function_1f201c0b())
				{
					var_9f2fde67 = 1;
					break;
				}
			}
			if(!var_9f2fde67)
			{
				ArrayRemoveIndex(world.var_7fd0dd8a[var_c98fc56a], key, 1);
			}
		}
	}
}

/*
	Name: function_f6ab8f28
	Namespace: savegame
	Checksum: 0x89B48C00
	Offset: 0xD18
	Size: 0x25
	Parameters: 0
	Flags: None
*/
function function_f6ab8f28()
{
	return GetDvarInt("ui_blocksaves", 1) == 0;
}

/*
	Name: function_fb150717
	Namespace: savegame
	Checksum: 0x3F0242E0
	Offset: 0xD48
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_fb150717()
{
	if(isdefined(level.var_cc93e6eb) && level.var_cc93e6eb || GetDvarInt("scr_no_checkpoints", 0))
	{
		return;
	}
	level thread function_74fcb9ca();
}

/*
	Name: function_74fcb9ca
	Namespace: savegame
	Checksum: 0x7B915531
	Offset: 0xDA0
	Size: 0x8B
	Parameters: 0
	Flags: Private
*/
function private function_74fcb9ca()
{
	level notify("hash_5d2cdd99");
	level endon("hash_5d2cdd99");
	level endon("save_restore");
	function_d2250e2f();
	wait(0.05);
	wait(0.05);
	function_297d2d7c();
	function_d5bb3a54();
	level thread function_152fdd8c(0);
}

/*
	Name: function_908f2d2a
	Namespace: savegame
	Checksum: 0xC87FDA4F
	Offset: 0xE38
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_908f2d2a()
{
	self endon("death");
	self waittill("trigger");
	function_5d2cdd99();
}

/*
	Name: function_5d2cdd99
	Namespace: savegame
	Checksum: 0x82F1B4C4
	Offset: 0xE70
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function function_5d2cdd99(var_c36855a9)
{
	if(!isdefined(var_c36855a9))
	{
		var_c36855a9 = 0;
	}
	level thread function_1add9d4a(var_c36855a9);
}

/*
	Name: function_d5bb3a54
	Namespace: savegame
	Checksum: 0x99EC1590
	Offset: 0xEB0
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_d5bb3a54()
{
}

/*
	Name: function_152fdd8c
	Namespace: savegame
	Checksum: 0x3A937828
	Offset: 0xEC0
	Size: 0x29B
	Parameters: 1
	Flags: None
*/
function function_152fdd8c(delay)
{
	if(function_f6ab8f28())
	{
		wait(0.2);
		foreach(player in level.players)
		{
			player player::generate_weapon_data();
			player function_bee608f0("saved_weapon", player._generated_current_weapon.name);
			player function_bee608f0("saved_weapondata", player._generated_weapons);
			player function_bee608f0("lives", player.lives);
			player._generated_current_weapon = undefined;
			player._generated_weapons = undefined;
		}
		player = util::getHostPlayer();
		if(isdefined(player))
		{
			player function_bee608f0("savegame_score", player.pers["score"]);
			player function_bee608f0("savegame_kills", player.pers["kills"]);
			player function_bee608f0("savegame_assists", player.pers["assists"]);
			player function_bee608f0("savegame_incaps", player.pers["incaps"]);
			player function_bee608f0("savegame_revives", player.pers["revives"]);
		}
		function_ba933d27();
		wait(delay);
		if(isdefined(player))
		{
			util::function_964b7eb7(player, &"COOP_REACHED_SKIPTO");
		}
	}
}

/*
	Name: function_319d38eb
	Namespace: savegame
	Checksum: 0x856B9D76
	Offset: 0x1168
	Size: 0x16B
	Parameters: 0
	Flags: None
*/
function function_319d38eb()
{
	if(isdefined(level.missionfailed) && level.missionfailed)
	{
		return 0;
	}
	foreach(player in level.players)
	{
		if(!isalive(player))
		{
			return 0;
		}
		if(player clientfield::get("burn"))
		{
			return 0;
		}
		if(player laststand::player_is_in_laststand())
		{
			return 0;
		}
		if(player.sessionstate == "spectator")
		{
			if(isdefined(self.firstSpawn))
			{
				return 0;
			}
			else
			{
				return 1;
			}
		}
		if(player oob::IsOutOfBounds())
		{
			return 0;
		}
		if(isdefined(player.burning) && player.burning)
		{
			return 0;
		}
	}
	return 1;
}

/*
	Name: function_1add9d4a
	Namespace: savegame
	Checksum: 0x46ADFA6B
	Offset: 0x12E0
	Size: 0x13B
	Parameters: 1
	Flags: Private
*/
function private function_1add9d4a(var_c36855a9)
{
	level notify("hash_1add9d4a");
	level endon("hash_1add9d4a");
	level endon("kill_save");
	level endon("save_restore");
	wait(0.1);
	while(1)
	{
		if(function_147f4ca3())
		{
			wait(0.1);
			function_d2250e2f();
			wait(6);
			for(var_e2502f23 = 0; var_e2502f23 < 5; var_e2502f23++)
			{
				if(function_319d38eb())
				{
					break;
				}
				wait(1);
			}
			if(var_e2502f23 == 5)
			{
				continue;
			}
			function_297d2d7c();
			function_d5bb3a54();
			if(var_c36855a9)
			{
				level thread function_152fdd8c(1.5);
			}
			return;
		}
		wait(1);
	}
}

/*
	Name: function_147f4ca3
	Namespace: savegame
	Checksum: 0xF03359C1
	Offset: 0x1428
	Size: 0x1EF
	Parameters: 0
	Flags: None
*/
function function_147f4ca3()
{
	if(isdefined(level.var_cc93e6eb) && level.var_cc93e6eb)
	{
		return 0;
	}
	if(GetDvarInt("scr_no_checkpoints", 0))
	{
		return 0;
	}
	if(isdefined(level.missionfailed) && level.missionfailed)
	{
		return 0;
	}
	var_3d59bfa3 = 0;
	foreach(player in level.players)
	{
		if(player function_2c89c30c())
		{
			var_3d59bfa3++;
		}
	}
	var_24cd4120 = level.players.size;
	if(var_3d59bfa3 < var_24cd4120)
	{
		return 0;
	}
	if(!function_8dc86b60())
	{
		return 0;
	}
	if(!function_a3a9b003())
	{
		return 0;
	}
	if(isdefined(level.var_67e1f60e))
	{
		foreach(func in level.var_67e1f60e)
		{
			if(!level [[func]]())
			{
				return 0;
			}
		}
	}
	return 1;
}

/*
	Name: function_2c89c30c
	Namespace: savegame
	Checksum: 0xF56B5C4E
	Offset: 0x1620
	Size: 0x265
	Parameters: 0
	Flags: Private
*/
function private function_2c89c30c()
{
	healthFraction = 1;
	if(isdefined(self.health) && isdefined(self.maxhealth) && self.maxhealth > 0)
	{
		healthFraction = self.health / self.maxhealth;
	}
	if(healthFraction < 0.7)
	{
		return 0;
	}
	if(isdefined(self.lastDamageTime) && self.lastDamageTime > GetTime() - 1500)
	{
		return 0;
	}
	if(self clientfield::get("burn"))
	{
		return 0;
	}
	if(self IsMeleeing())
	{
		return 0;
	}
	if(self IsThrowingGrenade())
	{
		return 0;
	}
	if(self isFiring())
	{
		return 0;
	}
	if(self util::isFlashed())
	{
		return 0;
	}
	if(self laststand::player_is_in_laststand())
	{
		return 0;
	}
	if(self.sessionstate == "spectator")
	{
		if(isdefined(self.firstSpawn))
		{
			return 0;
		}
		else
		{
			return 1;
		}
	}
	if(self oob::IsOutOfBounds())
	{
		return 0;
	}
	if(isdefined(self.burning) && self.burning)
	{
		return 0;
	}
	if(self flagsys::get("mobile_armory_in_use"))
	{
		return 0;
	}
	foreach(weapon in self GetWeaponsList())
	{
		fraction = self GetFractionMaxAmmo(weapon);
		if(fraction > 0.1)
		{
			return 1;
		}
	}
	return 0;
}

/*
	Name: function_a3a9b003
	Namespace: savegame
	Checksum: 0x640ECE73
	Offset: 0x1890
	Size: 0x183
	Parameters: 0
	Flags: Private
*/
function private function_a3a9b003()
{
	if(!GetDvarInt("tu1_saveGameAiProximityCheck", 1))
	{
		return 1;
	}
	ais = GetAITeamArray("axis");
	foreach(ai in ais)
	{
		if(!isdefined(ai))
		{
			continue;
		}
		if(!isalive(ai))
		{
			continue;
		}
		if(IsActor(ai) && ai isInScriptedState())
		{
			continue;
		}
		if(isdefined(ai.ignoreall) && ai.ignoreall)
		{
			continue;
		}
		var_e0fabc1 = ai function_2808d83d();
		if(var_e0fabc1 <= 80)
		{
			return 0;
		}
	}
	return 1;
}

/*
	Name: function_f70dd749
	Namespace: savegame
	Checksum: 0x800E3BA6
	Offset: 0x1A20
	Size: 0x125
	Parameters: 0
	Flags: Private
*/
function private function_f70dd749()
{
	if(!isdefined(self.enemy))
	{
		return 1;
	}
	if(!isPlayer(self.enemy))
	{
		return 1;
	}
	if(isdefined(self.melee) && isdefined(self.melee.target) && isPlayer(self.melee.target))
	{
		return 0;
	}
	var_e0fabc1 = self function_2808d83d();
	if(var_e0fabc1 < 500)
	{
		return 0;
	}
	else if(var_e0fabc1 > 1000 || var_e0fabc1 < 0)
	{
		return 1;
	}
	else if(IsActor(self) && self cansee(self.enemy) && self CanShootEnemy())
	{
		return 0;
	}
	return 1;
}

/*
	Name: function_2808d83d
	Namespace: savegame
	Checksum: 0x3D97FDB9
	Offset: 0x1B50
	Size: 0xDD
	Parameters: 0
	Flags: None
*/
function function_2808d83d()
{
	mindist = -1;
	foreach(player in level.activePlayers)
	{
		dist = Distance(player.origin, self.origin);
		if(dist < mindist || mindist < 0)
		{
			mindist = dist;
		}
	}
	return mindist;
}

/*
	Name: function_8dc86b60
	Namespace: savegame
	Checksum: 0xDE2A5E1F
	Offset: 0x1C38
	Size: 0x181
	Parameters: 0
	Flags: Private
*/
function private function_8dc86b60()
{
	var_db6b9d9f = 0;
	foreach(grenade in GetEntArray("grenade", "classname"))
	{
		foreach(player in level.activePlayers)
		{
			distSq = DistanceSquared(grenade.origin, player.origin);
			if(distSq < 90000)
			{
				var_db6b9d9f++;
			}
		}
	}
	if(var_db6b9d9f > 0 && var_db6b9d9f >= level.activePlayers.size)
	{
		return 0;
	}
	return 1;
}

