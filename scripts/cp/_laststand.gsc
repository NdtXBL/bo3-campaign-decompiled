#using scripts\codescripts\struct;
#using scripts\cp\_bb;
#using scripts\cp\_skipto;
#using scripts\cp\_util;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\cp\gametypes\_globallogic_spawn;
#using scripts\cp\gametypes\_healthoverlay;
#using scripts\cp\gametypes\coop;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\demo_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\hud_util_shared;
#using scripts\shared\laststand_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\scoreevents_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace laststand;

/*
	Name: __init__sytem__
	Namespace: laststand
	Checksum: 0x1688B90
	Offset: 0x6B8
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__sytem__()
{
	system::register("laststand", &__init__, undefined, undefined);
}

/*
	Name: __init__
	Namespace: laststand
	Checksum: 0x7BBF750C
	Offset: 0x6F8
	Size: 0x203
	Parameters: 0
	Flags: None
*/
function __init__()
{
	if(level.script == "frontend")
	{
		return;
	}
	level.laststand_update_clientfields = [];
	for(i = 0; i < 4; i++)
	{
		level.laststand_update_clientfields[i] = "laststand_update" + i;
		clientfield::register("world", level.laststand_update_clientfields[i], 1, 5, "counter");
	}
	if(!isdefined(level.playerlaststand_func))
	{
		level.playerlaststand_func = &player_laststand;
	}
	level.weaponReviveTool = GetWeapon("syrette");
	if(!isdefined(level.laststandpistol))
	{
		level.laststandpistol = GetWeapon("noweapon");
	}
	level thread revive_hud_think();
	level.primaryProgressBarX = 0;
	level.primaryProgressBarY = 110;
	level.primaryProgressBarHeight = 4;
	level.primaryProgressBarWidth = 120;
	level.primaryProgressBarY_ss = 280;
	if(GetDvarString("revive_trigger_radius") == "")
	{
		SetDvar("revive_trigger_radius", "100");
	}
	level.lastStandGetupAllowed = 0;
	if(isdefined(level.var_be177839))
	{
		VisionSetLastStand(level.var_be177839);
	}
	else
	{
		VisionSetLastStand("zombie_last_stand");
	}
}

/*
	Name: player_last_stand_stats
	Namespace: laststand
	Checksum: 0x90D7B20F
	Offset: 0x908
	Size: 0xE3
	Parameters: 9
	Flags: None
*/
function player_last_stand_stats(eInflictor, attacker, iDamage, sMeansOfDeath, weapon, vDir, sHitLoc, psOffsetTime, deathAnimDuration)
{
	if(isdefined(attacker) && isPlayer(attacker) && attacker != self)
	{
		attacker.kills++;
		if(isdefined(weapon))
		{
			dmgweapon = weapon;
			attacker addweaponstat(dmgweapon, "kills", 1);
		}
	}
	self increment_downed_stat();
}

/*
	Name: increment_downed_stat
	Namespace: laststand
	Checksum: 0x5E2815BC
	Offset: 0x9F8
	Size: 0x11D
	Parameters: 0
	Flags: None
*/
function increment_downed_stat()
{
	self.downs++;
	self AddPlayerStat("INCAPS", 1);
	if(isdefined(function_9065d6ea()))
	{
		var_e7ce5f85 = self GetDStat("PlayerStatsList", "INCAPS", "statValue");
		self function_b26abbde("INCAPS", var_e7ce5f85);
		self.var_58ef604f = var_e7ce5f85 - self GetDStat("PlayerStatsByMap", function_9065d6ea(), "currentStats", "INCAPS");
		/#
			Assert(self.var_58ef604f > 0);
		#/
		self.pers["incaps"] = self.var_58ef604f;
	}
}

/*
	Name: function_51061490
	Namespace: laststand
	Checksum: 0x29164F23
	Offset: 0xB20
	Size: 0x37
	Parameters: 0
	Flags: Private
*/
function private function_51061490()
{
	/#
		if(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			return 1;
		}
	#/
	return 0;
}

/*
	Name: PlayerLastStand
	Namespace: laststand
	Checksum: 0x440C5589
	Offset: 0xB60
	Size: 0x6A3
	Parameters: 9
	Flags: None
*/
function PlayerLastStand(eInflictor, attacker, iDamage, sMeansOfDeath, weapon, vDir, sHitLoc, psOffsetTime, delayOverride)
{
	if(isdefined(self.var_32218fc7) && self.var_32218fc7)
	{
		return;
	}
	self notify("entering_last_stand");
	if(isdefined(level._game_module_player_laststand_callback))
	{
		self [[level._game_module_player_laststand_callback]](eInflictor, attacker, iDamage, sMeansOfDeath, weapon, vDir, sHitLoc, psOffsetTime, delayOverride);
	}
	if(self player_is_in_laststand())
	{
		return;
	}
	if(level.players.size == 1 && self.lives == 0 && !function_51061490())
	{
		return;
	}
	self CloseMenu(game["menu_changeclass"]);
	self clientfield::set_to_player("mobile_armory_cac", 0);
	if(!self util::isWeaponEnabled())
	{
		self util::_enableWeapon();
	}
	self.lastStandParams = spawnstruct();
	self.var_afe5253c = spawnstruct();
	self.lastStandParams.eInflictor = eInflictor;
	self.var_afe5253c.var_a21e8eb8 = -1;
	if(isdefined(eInflictor))
	{
		self.var_afe5253c.var_a21e8eb8 = eInflictor GetEntityNumber();
	}
	self.var_afe5253c.attackerNum = -1;
	if(isdefined(attacker))
	{
		self.var_afe5253c.attackerNum = eInflictor GetEntityNumber();
	}
	self.lastStandParams.attacker = attacker;
	self.lastStandParams.iDamage = iDamage;
	self.lastStandParams.sMeansOfDeath = sMeansOfDeath;
	self.lastStandParams.sWeapon = weapon;
	self.lastStandParams.vDir = vDir;
	self.lastStandParams.sHitLoc = sHitLoc;
	self.lastStandParams.lastStandStartTime = GetTime();
	self thread player_last_stand_stats(eInflictor, attacker, iDamage, sMeansOfDeath, weapon, vDir, sHitLoc, psOffsetTime, delayOverride);
	bb::logplayermapnotification("enter_last_stand", self);
	self RecordMapEvent(1, GetTime(), self.origin, skipto::function_52c50cb8());
	if(isdefined(level.playerlaststand_func))
	{
		[[level.playerlaststand_func]](eInflictor, attacker, iDamage, sMeansOfDeath, weapon, vDir, sHitLoc, psOffsetTime, delayOverride);
	}
	self.health = 1;
	self.laststand = 1;
	self.ignoreme = 1;
	self EnableInvulnerability();
	self.meleeAttackers = undefined;
	self util::show_hud(0);
	callback::callback("hash_6751ab5b");
	if(!(isdefined(self.no_revive_trigger) && self.no_revive_trigger))
	{
		self revive_trigger_spawn();
	}
	else
	{
		self UndoLastStand();
	}
	if(!isdefined(level.var_83405e54) || !level.var_83405e54)
	{
		self thread function_188d6155();
	}
	self laststand_disable_player_weapons();
	if(!isdefined(level.var_83405e54) || !level.var_83405e54)
	{
		self laststand_give_pistol();
	}
	if(isdefined(level.playerSuicideAllowed) && level.playerSuicideAllowed && GetPlayers().size > 1)
	{
		if(!isdefined(level.canPlayerSuicide) || self [[level.canPlayerSuicide]]())
		{
			self thread suicide_trigger_spawn();
		}
	}
	if(isdefined(self.disabled_perks))
	{
		self.disabled_perks = [];
	}
	if(level.lastStandGetupAllowed && delayOverride != -1)
	{
		self thread laststand_getup();
	}
	else
	{
		bleedout_time = GetDvarFloat("player_lastStandBleedoutTime");
		if(delayOverride != 0)
		{
			if(delayOverride == -1)
			{
				delayOverride = 0;
			}
			bleedout_time = delayOverride;
		}
		level clientfield::increment("laststand_update" + self GetEntityNumber(), 30);
		self thread laststand_bleedout(bleedout_time);
	}
	demo::bookmark("player_downed", GetTime(), self);
	self notify("player_downed");
	self thread refire_player_downed();
	self thread cleanup_laststand_on_disconnect();
	self thread function_f6242780();
	self thread function_fb3dd978();
}

/*
	Name: function_fb3dd978
	Namespace: laststand
	Checksum: 0x94689A8A
	Offset: 0x1210
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_fb3dd978()
{
	self endon("player_revived");
	self endon("disconnect");
	self waittill("death");
	self UndoLastStand();
}

/*
	Name: refire_player_downed
	Namespace: laststand
	Checksum: 0x1D5A518F
	Offset: 0x1258
	Size: 0x3D
	Parameters: 0
	Flags: None
*/
function refire_player_downed()
{
	self endon("player_revived");
	self endon("death");
	self endon("disconnect");
	wait(1);
	self notify("player_downed");
}

/*
	Name: function_515f3287
	Namespace: laststand
	Checksum: 0x9034C2EC
	Offset: 0x12A0
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_515f3287()
{
	self endon("weapon_change");
	while(!self AttackButtonPressed())
	{
		wait(0.05);
	}
}

/*
	Name: function_188d6155
	Namespace: laststand
	Checksum: 0x4711B1ED
	Offset: 0x12E0
	Size: 0x20B
	Parameters: 0
	Flags: None
*/
function function_188d6155()
{
	self endon("bled_out");
	self endon("disconnect");
	self endon("player_revived");
	while(1)
	{
		self waittill("weapon_change", newWeapon);
		/#
			Assert(isdefined(self.laststandpistol));
		#/
		/#
			Assert(self.laststandpistol != level.weaponNone);
		#/
		if(newWeapon == self.laststandpistol)
		{
			break;
		}
		else
		{
			weaponInventory = self GetWeaponsList(1);
			self.lastActiveWeapon = self GetCurrentWeapon();
			if(self IsThrowingGrenade() || self cybercom::function_1be27df7())
			{
				primaryWeapons = self GetWeaponsListPrimaries();
				if(isdefined(primaryWeapons) && primaryWeapons.size > 0)
				{
					self.lastActiveWeapon = primaryWeapons[0];
					self SwitchToWeaponImmediate(self.lastActiveWeapon);
				}
			}
			self SetLastStandPrevWeap(self.lastActiveWeapon);
		}
	}
	self function_515f3287();
	self laststand_enable_player_weapons(0);
	self.ignoreme = 0;
	self DisableInvulnerability();
	self util::show_hud(1);
}

/*
	Name: laststand_disable_player_weapons
	Namespace: laststand
	Checksum: 0x994AC592
	Offset: 0x14F8
	Size: 0x169
	Parameters: 0
	Flags: None
*/
function laststand_disable_player_weapons()
{
	weaponInventory = self GetWeaponsList(1);
	self.lastActiveWeapon = self GetCurrentWeapon();
	if(self IsThrowingGrenade() || self cybercom::function_1be27df7())
	{
		primaryWeapons = self GetWeaponsListPrimaries();
		if(isdefined(primaryWeapons) && primaryWeapons.size > 0)
		{
			self.lastActiveWeapon = primaryWeapons[0];
			self SwitchToWeaponImmediate(self.lastActiveWeapon);
		}
	}
	self SetLastStandPrevWeap(self.lastActiveWeapon);
	self.laststandpistol = undefined;
	if(!isdefined(self.laststandpistol))
	{
		self.laststandpistol = level.laststandpistol;
	}
	if(isdefined(self.var_deb71c1e))
	{
		self.laststandpistol = self.var_deb71c1e;
	}
	if(isdefined(level.var_f7507137))
	{
		[[level.var_f7507137]]();
	}
	self notify("weapons_taken_for_last_stand");
}

/*
	Name: laststand_enable_player_weapons
	Namespace: laststand
	Checksum: 0x97EE6C0C
	Offset: 0x1670
	Size: 0x16F
	Parameters: 1
	Flags: None
*/
function laststand_enable_player_weapons(b_allow_grenades)
{
	if(!isdefined(b_allow_grenades))
	{
		b_allow_grenades = 1;
	}
	if(isdefined(self.laststandpistol))
	{
		self TakeWeapon(self.laststandpistol);
	}
	self SetLowReady(0);
	self EnableWeaponCycling();
	if(b_allow_grenades)
	{
		self EnableOffhandWeapons();
	}
	if(isdefined(self.lastActiveWeapon) && self.lastActiveWeapon != level.weaponNone && self HasWeapon(self.lastActiveWeapon))
	{
		self SwitchToWeapon(self.lastActiveWeapon);
	}
	else
	{
		primaryWeapons = self GetWeaponsListPrimaries();
		if(isdefined(primaryWeapons) && primaryWeapons.size > 0)
		{
			self SwitchToWeapon(primaryWeapons[0]);
		}
	}
	if(isdefined(level.var_4c76230a))
	{
		[[level.var_4c76230a]]();
	}
}

/*
	Name: laststand_clean_up_on_interrupt
	Namespace: laststand
	Checksum: 0x53493740
	Offset: 0x17E8
	Size: 0x103
	Parameters: 2
	Flags: None
*/
function laststand_clean_up_on_interrupt(playerBeingRevived, reviverGun)
{
	self endon("do_revive_ended_normally");
	reviveTrigger = playerBeingRevived.reviveTrigger;
	playerBeingRevived util::waittill_any("disconnect", "game_ended", "death");
	if(isdefined(reviveTrigger))
	{
		reviveTrigger delete();
	}
	self cleanup_suicide_hud();
	if(isdefined(self.reviveProgressBar))
	{
		self.reviveProgressBar hud::destroyElem();
	}
	if(isdefined(self.reviveTextHud))
	{
		self.reviveTextHud destroy();
	}
	self revive_give_back_weapons(reviverGun);
}

/*
	Name: laststand_clean_up_reviving_any
	Namespace: laststand
	Checksum: 0x622E8813
	Offset: 0x18F8
	Size: 0x67
	Parameters: 1
	Flags: None
*/
function laststand_clean_up_reviving_any(playerBeingRevived)
{
	self endon("do_revive_ended_normally");
	playerBeingRevived util::waittill_any("disconnect", "zombified", "stop_revive_trigger");
	self.is_reviving_any--;
	if(0 > self.is_reviving_any)
	{
		self.is_reviving_any = 0;
	}
}

/*
	Name: laststand_give_pistol
	Namespace: laststand
	Checksum: 0x854E5097
	Offset: 0x1968
	Size: 0xC7
	Parameters: 0
	Flags: None
*/
function laststand_give_pistol()
{
	/#
		Assert(isdefined(self.laststandpistol));
	#/
	/#
		Assert(self.laststandpistol != level.weaponNone);
	#/
	self GiveWeapon(self.laststandpistol);
	self giveMaxAmmo(self.laststandpistol);
	self SwitchToWeapon(self.laststandpistol);
	if(isdefined(level.var_d33a5232))
	{
		[[level.var_d33a5232]]();
	}
}

/*
	Name: function_ee6922c8
	Namespace: laststand
	Checksum: 0x7D270D12
	Offset: 0x1A38
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_ee6922c8()
{
	self.bleedout_time = self.bleedout_time - 1;
	wait(1);
	while(isdefined(self.reviveTrigger) && isdefined(self.reviveTrigger.beingRevived) && self.reviveTrigger.beingRevived == 1)
	{
		wait(0.1);
	}
}

/*
	Name: function_c690c6b2
	Namespace: laststand
	Checksum: 0xDBB93507
	Offset: 0x1AA8
	Size: 0x1C5
	Parameters: 0
	Flags: Private
*/
function private function_c690c6b2()
{
	players = GetPlayers();
	if(players.size == 1)
	{
		if(self.lives == 0)
		{
			self.bleedout_time = 3;
		}
		break;
	}
	var_6b49ec9d = 0;
	foreach(player in players)
	{
		if(isalive(player) && (!isdefined(player.laststand) && player.laststand || player.lives > 0))
		{
			var_6b49ec9d = 1;
			break;
		}
	}
	if(!var_6b49ec9d)
	{
		level.var_ee7cb602 = 1;
		foreach(player in players)
		{
			player.bleedout_time = 3;
		}
	}
}

/*
	Name: function_fdb7e3be
	Namespace: laststand
	Checksum: 0x4E1B4267
	Offset: 0x1C78
	Size: 0x97
	Parameters: 0
	Flags: None
*/
function function_fdb7e3be()
{
	self endon("player_revived");
	self endon("player_suicide");
	self endon("disconnect");
	self endon("bled_out");
	if(level.players.size == 1)
	{
		return;
	}
	while(1)
	{
		self waittill("hash_b79afd4d", amt);
		if(!self.ignoreme)
		{
			self.bleedout_time = self.bleedout_time - 0.02 * amt;
		}
	}
}

/*
	Name: laststand_bleedout
	Namespace: laststand
	Checksum: 0x17C3DA39
	Offset: 0x1D18
	Size: 0x19B
	Parameters: 1
	Flags: None
*/
function laststand_bleedout(delay)
{
	self endon("player_revived");
	self endon("player_suicide");
	self endon("disconnect");
	self endon("death");
	self clientfield::set_to_player("sndHealth", 2);
	self.var_320b6880 = delay;
	self.bleedout_time = delay;
	if(delay != 0 && !function_51061490())
	{
		function_c690c6b2();
	}
	if(isdefined(level.var_ee7cb602) && level.var_ee7cb602)
	{
		playsoundatposition("evt_death_down", (0, 0, 0));
	}
	self thread function_fdb7e3be();
	do
	{
		function_ee6922c8();
		level clientfield::increment("laststand_update" + self GetEntityNumber(), self.bleedout_time + 1);
	}
	while(!self.bleedout_time > 0);
	self notify("bled_out");
	bb::logplayermapnotification("player_bled_out", self);
	util::wait_network_frame();
	self bleed_out();
}

/*
	Name: ensureLastStandParamsValidity
	Namespace: laststand
	Checksum: 0x25D88984
	Offset: 0x1EC0
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function ensureLastStandParamsValidity()
{
	if(!isdefined(self.lastStandParams.attacker))
	{
		self.lastStandParams.attacker = self;
	}
}

/*
	Name: bleed_out
	Namespace: laststand
	Checksum: 0xD0CD3520
	Offset: 0x1EF8
	Size: 0x223
	Parameters: 0
	Flags: None
*/
function bleed_out()
{
	if(GetDvarInt("enable_new_death_cam", 1))
	{
		var_6afb4351 = GetDvarFloat("bleed_out_screen_fade_speed", 1.5);
		self playlocalsound("chr_health_laststand_bleedout");
		self LUI::screen_fade(var_6afb4351, 1, 0, "black", 0);
		wait(var_6afb4351 + 0.2);
	}
	self cleanup_suicide_hud();
	if(isdefined(self.reviveTrigger))
	{
		self.reviveTrigger delete();
	}
	self.reviveTrigger = undefined;
	self clientfield::set_to_player("sndHealth", 0);
	level clientfield::increment("laststand_update" + self GetEntityNumber(), 1);
	demo::bookmark("player_bledout", GetTime(), self, undefined, 1);
	level notify("bleed_out", self.characterindex);
	self notify("hash_a31e5729");
	self coop::function_6dc12009();
	self UndoLastStand();
	self.ignoreme = 0;
	self util::show_hud(1);
	self.useLastStandParams = 1;
	self ensureLastStandParamsValidity();
	self suicide();
	self thread function_dc445542(15);
}

/*
	Name: function_dc445542
	Namespace: laststand
	Checksum: 0x29E1B9EF
	Offset: 0x2128
	Size: 0x9B
	Parameters: 1
	Flags: None
*/
function function_dc445542(var_76a6ebb1)
{
	self endon("disconnect");
	players = GetPlayers();
	if(players.size == 1)
	{
		return;
	}
	self waittill("spawned_spectator");
	self endon("spawned");
	level endon("hash_4b5852e7");
	wait(var_76a6ebb1);
	if(self.sessionstate == "spectator")
	{
		self thread globallogic_spawn::waitAndSpawnClient();
	}
}

/*
	Name: suicide_trigger_spawn
	Namespace: laststand
	Checksum: 0x5A265427
	Offset: 0x21D0
	Size: 0x15B
	Parameters: 0
	Flags: None
*/
function suicide_trigger_spawn()
{
	self.suicidePrompt = newClientHudElem(self);
	self.suicidePrompt.alignX = "center";
	self.suicidePrompt.alignY = "middle";
	self.suicidePrompt.horzAlign = "center";
	self.suicidePrompt.vertAlign = "bottom";
	self.suicidePrompt.y = -170;
	if(self IsSplitscreen())
	{
		self.suicidePrompt.y = -132;
	}
	self.suicidePrompt.foreground = 1;
	self.suicidePrompt.font = "default";
	self.suicidePrompt.fontscale = 1.5;
	self.suicidePrompt.alpha = 1;
	self.suicidePrompt.color = (1, 1, 1);
	self.suicidePrompt.hidewheninmenu = 1;
	self thread suicide_trigger_think();
}

/*
	Name: suicide_trigger_think
	Namespace: laststand
	Checksum: 0x9DAEF907
	Offset: 0x2338
	Size: 0x249
	Parameters: 0
	Flags: None
*/
function suicide_trigger_think()
{
	self endon("disconnect");
	self endon("stop_revive_trigger");
	self endon("player_revived");
	self endon("bled_out");
	self endon("fake_death");
	level endon("game_ended");
	level endon("stop_suicide_trigger");
	self thread clean_up_suicide_hud_on_end_game();
	self thread clean_up_suicide_hud_on_bled_out();
	while(self useButtonPressed())
	{
		wait(1);
	}
	if(!isdefined(self.suicidePrompt))
	{
		return;
	}
	while(1)
	{
		wait(0.1);
		if(!isdefined(self.suicidePrompt))
		{
			continue;
		}
		self.suicidePrompt setText(&"COOP_BUTTON_TO_SUICIDE");
		if(!self is_suiciding())
		{
			continue;
		}
		self.pre_suicide_weapon = self GetCurrentWeapon();
		self GiveWeapon(level.suicide_weapon);
		self SwitchToWeapon(level.suicide_weapon);
		duration = self doCowardsWayAnims();
		suicide_success = suicide_do_suicide(duration);
		self.laststand = undefined;
		self TakeWeapon(level.suicide_weapon);
		if(suicide_success)
		{
			self notify("player_suicide");
			util::wait_network_frame();
			self bleed_out();
			return;
		}
		self SwitchToWeapon(self.pre_suicide_weapon);
		self.pre_suicide_weapon = undefined;
	}
}

/*
	Name: suicide_do_suicide
	Namespace: laststand
	Checksum: 0xAE46B3E2
	Offset: 0x2590
	Size: 0x31F
	Parameters: 1
	Flags: None
*/
function suicide_do_suicide(duration)
{
	level endon("game_ended");
	level endon("stop_suicide_trigger");
	suicideTime = duration;
	timer = 0;
	suicided = 0;
	self.suicidePrompt setText("");
	if(!isdefined(self.suicideProgressBar))
	{
		self.suicideProgressBar = self hud::createPrimaryProgressBar();
	}
	if(!isdefined(self.suicideTextHud))
	{
		self.suicideTextHud = newClientHudElem(self);
	}
	self.suicideProgressBar hud::updateBar(0.01, 1 / suicideTime);
	self.suicideTextHud.alignX = "center";
	self.suicideTextHud.alignY = "middle";
	self.suicideTextHud.horzAlign = "center";
	self.suicideTextHud.vertAlign = "bottom";
	self.suicideTextHud.y = -173;
	if(self IsSplitscreen())
	{
		self.suicideTextHud.y = -147;
	}
	self.suicideTextHud.foreground = 1;
	self.suicideTextHud.font = "default";
	self.suicideTextHud.fontscale = 1.8;
	self.suicideTextHud.alpha = 1;
	self.suicideTextHud.color = (1, 1, 1);
	self.suicideTextHud.hidewheninmenu = 1;
	self.suicideTextHud setText(&"COOP_SUICIDING");
	bb::logplayermapnotification("last_stand_suicide", self);
	while(self is_suiciding())
	{
		wait(0.05);
		timer = timer + 0.05;
		if(timer >= suicideTime)
		{
			suicided = 1;
			break;
		}
	}
	if(isdefined(self.suicideProgressBar))
	{
		self.suicideProgressBar hud::destroyElem();
	}
	if(isdefined(self.suicideTextHud))
	{
		self.suicideTextHud destroy();
	}
	if(isdefined(self.suicidePrompt))
	{
		self.suicidePrompt setText(&"COOP_BUTTON_TO_SUICIDE");
	}
	return suicided;
}

/*
	Name: can_suicide
	Namespace: laststand
	Checksum: 0x68BEEDA0
	Offset: 0x28B8
	Size: 0x69
	Parameters: 0
	Flags: None
*/
function can_suicide()
{
	if(!isalive(self))
	{
		return 0;
	}
	if(!self player_is_in_laststand())
	{
		return 0;
	}
	if(!isdefined(self.suicidePrompt))
	{
		return 0;
	}
	if(isdefined(level.intermission) && level.intermission)
	{
		return 0;
	}
	return 1;
}

/*
	Name: is_suiciding
	Namespace: laststand
	Checksum: 0x8BC5549B
	Offset: 0x2930
	Size: 0x39
	Parameters: 1
	Flags: None
*/
function is_suiciding(revivee)
{
	return self useButtonPressed() && can_suicide();
}

/*
	Name: revive_trigger_spawn
	Namespace: laststand
	Checksum: 0x92960DA2
	Offset: 0x2978
	Size: 0x15B
	Parameters: 0
	Flags: None
*/
function revive_trigger_spawn()
{
	if(isdefined(level.revive_trigger_spawn_override_link))
	{
		[[level.revive_trigger_spawn_override_link]](self);
	}
	else
	{
		radius = GetDvarInt("revive_trigger_radius");
		self.reviveTrigger = spawn("trigger_radius", (0, 0, 0), 0, radius, radius);
		self.reviveTrigger setHintString("");
		self.reviveTrigger setcursorhint("HINT_NOICON");
		self.reviveTrigger SetMovingPlatformEnabled(1);
		self.reviveTrigger EnableLinkTo();
		self.reviveTrigger.origin = self.origin;
		self.reviveTrigger LinkTo(self);
		self.reviveTrigger.beingRevived = 0;
		self.reviveTrigger.createtime = GetTime();
	}
	self thread revive_trigger_think();
}

/*
	Name: revive_trigger_think
	Namespace: laststand
	Checksum: 0x56017297
	Offset: 0x2AE0
	Size: 0x303
	Parameters: 0
	Flags: None
*/
function revive_trigger_think()
{
	self endon("disconnect");
	self endon("stop_revive_trigger");
	level endon("game_ended");
	self endon("death");
	while(1)
	{
		wait(0.1);
		if(!isdefined(self.reviveTrigger))
		{
			self notify("stop_revive_trigger");
		}
		self.reviveTrigger setHintString("");
		players = GetPlayers();
		for(i = 0; i < players.size; i++)
		{
			if(players[i] can_revive(self))
			{
				self.reviveTrigger setReviveHintString(&"COOP_BUTTON_TO_REVIVE_PLAYER", self.team);
				break;
			}
		}
		for(i = 0; i < players.size; i++)
		{
			reviver = players[i];
			if(self == reviver || !reviver is_reviving(self))
			{
				continue;
			}
			gun = reviver GetCurrentWeapon();
			/#
				Assert(isdefined(gun));
			#/
			if(gun == level.weaponReviveTool)
			{
				continue;
			}
			reviver GiveWeapon(level.weaponReviveTool);
			reviver SwitchToWeapon(level.weaponReviveTool);
			reviver SetWeaponAmmoStock(level.weaponReviveTool, 1);
			reviver DisableWeaponFire();
			reviver DisableWeaponCycling();
			reviver disableUsability();
			reviver disableOffhandWeapons();
			revive_success = reviver revive_do_revive(self, gun);
			reviver revive_give_back_weapons(gun);
			if(revive_success)
			{
				self thread revive_success(reviver);
				self cleanup_suicide_hud();
				return;
			}
		}
	}
}

/*
	Name: revive_give_back_weapons
	Namespace: laststand
	Checksum: 0xDE8F2A50
	Offset: 0x2DF0
	Size: 0x133
	Parameters: 1
	Flags: None
*/
function revive_give_back_weapons(gun)
{
	self TakeWeapon(level.weaponReviveTool);
	self EnableWeaponFire();
	self EnableWeaponCycling();
	self enableUsability();
	self EnableOffhandWeapons();
	if(self player_is_in_laststand())
	{
		return;
	}
	if(self HasWeapon(gun))
	{
		self SwitchToWeapon(gun);
	}
	else
	{
		primaryWeapons = self GetWeaponsListPrimaries();
		if(isdefined(primaryWeapons) && primaryWeapons.size > 0)
		{
			self SwitchToWeapon(primaryWeapons[0]);
		}
	}
}

/*
	Name: can_revive
	Namespace: laststand
	Checksum: 0x5451A421
	Offset: 0x2F30
	Size: 0x25D
	Parameters: 1
	Flags: None
*/
function can_revive(revivee)
{
	if(!isdefined(revivee.reviveTrigger))
	{
		return 0;
	}
	if(!isalive(self))
	{
		return 0;
	}
	if(self player_is_in_laststand())
	{
		return 0;
	}
	if(self.team != revivee.team)
	{
		return 0;
	}
	if(isdefined(level.can_revive) && ![[level.can_revive]](revivee))
	{
		return 0;
	}
	if(isdefined(level.can_revive_game_module) && ![[level.can_revive_game_module]](revivee))
	{
		return 0;
	}
	ignore_sight_checks = 0;
	ignore_touch_checks = 0;
	if(isdefined(level.revive_trigger_should_ignore_sight_checks))
	{
		ignore_sight_checks = [[level.revive_trigger_should_ignore_sight_checks]](self);
		if(ignore_sight_checks && isdefined(revivee.reviveTrigger.beingRevived) && revivee.reviveTrigger.beingRevived == 1)
		{
			ignore_touch_checks = 1;
		}
	}
	if(!ignore_touch_checks)
	{
		if(!self istouching(revivee.reviveTrigger))
		{
			return 0;
		}
	}
	if(!ignore_sight_checks)
	{
		if(!self is_facing(revivee, 0.8))
		{
			return 0;
		}
		if(!SightTracePassed(self.origin + VectorScale((0, 0, 1), 50), revivee.origin + VectorScale((0, 0, 1), 30), 0, undefined))
		{
			return 0;
		}
		if(!BulletTracePassed(self.origin + VectorScale((0, 0, 1), 50), revivee.origin + VectorScale((0, 0, 1), 30), 0, undefined))
		{
			return 0;
		}
	}
	return 1;
}

/*
	Name: is_reviving
	Namespace: laststand
	Checksum: 0x59900967
	Offset: 0x3198
	Size: 0x39
	Parameters: 1
	Flags: None
*/
function is_reviving(revivee)
{
	return self useButtonPressed() && can_revive(revivee);
}

/*
	Name: is_reviving_any
	Namespace: laststand
	Checksum: 0x5FE0804A
	Offset: 0x31E0
	Size: 0x15
	Parameters: 0
	Flags: None
*/
function is_reviving_any()
{
	return isdefined(self.is_reviving_any) && self.is_reviving_any;
}

/*
	Name: revive_do_revive
	Namespace: laststand
	Checksum: 0x89711EBD
	Offset: 0x3200
	Size: 0x637
	Parameters: 2
	Flags: None
*/
function revive_do_revive(playerBeingRevived, reviverGun)
{
	/#
		Assert(self is_reviving(playerBeingRevived));
	#/
	reviveTime = GetDvarFloat("g_reviveTime", 3);
	if(self hasPerk("specialty_quickrevive"))
	{
		reviveTime = reviveTime / 2;
	}
	timer = 0;
	revived = 0;
	playerBeingRevived.reviveTrigger.beingRevived = 1;
	playerBeingRevived.revive_hud setText(&"COOP_PLAYER_IS_REVIVING_YOU", self);
	playerBeingRevived revive_hud_show_n_fade(3);
	playerBeingRevived.reviveTrigger setHintString("");
	if(isPlayer(playerBeingRevived))
	{
		playerBeingRevived startrevive(self);
	}
	if(0 && !isdefined(self.reviveProgressBar))
	{
		self.reviveProgressBar = self hud::createPrimaryProgressBar();
	}
	if(!isdefined(self.reviveTextHud))
	{
		self.reviveTextHud = newClientHudElem(self);
	}
	self cybercom::function_f8669cbf(2);
	self thread laststand_clean_up_on_interrupt(playerBeingRevived, reviverGun);
	if(!isdefined(self.is_reviving_any))
	{
		self.is_reviving_any = 0;
	}
	self.is_reviving_any++;
	self thread laststand_clean_up_reviving_any(playerBeingRevived);
	if(isdefined(self.reviveProgressBar))
	{
		self.reviveProgressBar hud::updateBar(0.01, 1 / reviveTime);
	}
	self.reviveTextHud.alignX = "center";
	self.reviveTextHud.alignY = "middle";
	self.reviveTextHud.horzAlign = "center";
	self.reviveTextHud.vertAlign = "bottom";
	self.reviveTextHud.y = -113;
	if(self IsSplitscreen())
	{
		self.reviveTextHud.y = -347;
	}
	self.reviveTextHud.foreground = 1;
	self.reviveTextHud.font = "default";
	self.reviveTextHud.fontscale = 1.8;
	self.reviveTextHud.alpha = 1;
	self.reviveTextHud.color = (1, 1, 1);
	self.reviveTextHud.hidewheninmenu = 1;
	self.reviveTextHud setText(&"COOP_REVIVING");
	self thread check_for_failed_revive(playerBeingRevived);
	self playlocalsound("chr_revive_start");
	while(self is_reviving(playerBeingRevived))
	{
		wait(0.05);
		timer = timer + 0.05;
		if(self player_is_in_laststand())
		{
			break;
		}
		if(isdefined(playerBeingRevived.reviveTrigger.auto_revive) && playerBeingRevived.reviveTrigger.auto_revive == 1)
		{
			break;
		}
		if(timer >= reviveTime)
		{
			revived = 1;
			if(!isdefined(self.revives) || self.revives <= 10)
			{
				scoreevents::processScoreEvent("player_did_revived", self);
			}
			break;
		}
	}
	self playlocalsound("chr_revive_end");
	if(isdefined(self.reviveProgressBar))
	{
		self.reviveProgressBar hud::destroyElem();
	}
	if(isdefined(self.reviveTextHud))
	{
		self.reviveTextHud destroy();
	}
	if(isdefined(playerBeingRevived.reviveTrigger.auto_revive) && playerBeingRevived.reviveTrigger.auto_revive == 1)
	{
	}
	else if(!revived)
	{
		if(isPlayer(playerBeingRevived))
		{
			playerBeingRevived stoprevive(self);
		}
	}
	playerBeingRevived.reviveTrigger setHintString(&"COOP_BUTTON_TO_REVIVE_PLAYER");
	playerBeingRevived.reviveTrigger.beingRevived = 0;
	self notify("do_revive_ended_normally");
	self.is_reviving_any--;
	if(!revived)
	{
		playerBeingRevived thread checkforbleedout(self);
	}
	return revived;
}

/*
	Name: checkforbleedout
	Namespace: laststand
	Checksum: 0x7FA89FF8
	Offset: 0x3840
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function checkforbleedout(player)
{
	self endon("player_revived");
	self endon("player_suicide");
	self endon("disconnect");
	player endon("disconnect");
	player notify("player_failed_revive");
}

/*
	Name: function_f6242780
	Namespace: laststand
	Checksum: 0xCCCB16AA
	Offset: 0x3898
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_f6242780()
{
	self endon("player_revived");
	self waittill("auto_revive", reviver, dont_enable_weapons);
	auto_revive(reviver, dont_enable_weapons);
}

/*
	Name: auto_revive
	Namespace: laststand
	Checksum: 0xDF95879E
	Offset: 0x38F0
	Size: 0x351
	Parameters: 2
	Flags: None
*/
function auto_revive(reviver, dont_enable_weapons)
{
	if(isdefined(self.reviveTrigger))
	{
		self.reviveTrigger.auto_revive = 1;
		if(self.reviveTrigger.beingRevived == 1)
		{
			while(1)
			{
				if(self.reviveTrigger.beingRevived == 0)
				{
					break;
				}
				util::wait_network_frame();
			}
		}
		self.reviveTrigger.auto_trigger = 0;
	}
	self RevivePlayer();
	self clientfield::set_to_player("sndHealth", 0);
	self notify("stop_revive_trigger");
	if(isdefined(self.reviveTrigger))
	{
		self.reviveTrigger delete();
		self.reviveTrigger = undefined;
	}
	self cleanup_suicide_hud();
	if(!isdefined(dont_enable_weapons) || dont_enable_weapons == 0)
	{
		self laststand_enable_player_weapons();
	}
	self AllowJump(1);
	self.ignoreme = 0;
	self DisableInvulnerability();
	self.laststand = undefined;
	self util::show_hud(1);
	self LUI::screen_close_menu();
	if(!(isdefined(level.isresetting_grief) && level.isresetting_grief))
	{
		if(isdefined(reviver))
		{
			if(isPlayer(reviver) && isdefined(function_9065d6ea()))
			{
				reviver AddPlayerStat("REVIVES", 1);
				var_8642deaf = reviver GetDStat("PlayerStatsList", "REVIVES", "statValue");
				reviver function_b26abbde("REVIVES", var_8642deaf);
				reviver.revives = var_8642deaf - reviver GetDStat("PlayerStatsByMap", function_9065d6ea(), "currentStats", "REVIVES");
				/#
					Assert(reviver.revives > 0);
				#/
				reviver.pers["revives"] = reviver.revives;
			}
		}
	}
	self notify("player_revived", reviver);
}

/*
	Name: remote_revive
	Namespace: laststand
	Checksum: 0x7C831957
	Offset: 0x3C50
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function remote_revive(reviver)
{
	if(!self player_is_in_laststand())
	{
		return;
	}
	self auto_revive(reviver);
}

/*
	Name: revive_success
	Namespace: laststand
	Checksum: 0x8B1AB81E
	Offset: 0x3CA0
	Size: 0x363
	Parameters: 2
	Flags: None
*/
function revive_success(reviver, b_track_stats)
{
	if(!isdefined(b_track_stats))
	{
		b_track_stats = 1;
	}
	if(!isPlayer(self))
	{
		self notify("player_revived", reviver);
		return;
	}
	if(isdefined(b_track_stats) && b_track_stats)
	{
		demo::bookmark("player_revived", GetTime(), reviver, self);
	}
	if(isPlayer(self))
	{
		self AllowJump(1);
	}
	self.laststand = undefined;
	self notify("player_revived", reviver);
	bb::logplayermapnotification("player_revived", self);
	self RevivePlayer();
	if(isPlayer(reviver) && isdefined(function_9065d6ea()))
	{
		reviver AddPlayerStat("REVIVES", 1);
		var_8642deaf = reviver GetDStat("PlayerStatsList", "REVIVES", "statValue");
		reviver function_b26abbde("REVIVES", var_8642deaf);
		reviver.revives = var_8642deaf - reviver GetDStat("PlayerStatsByMap", function_9065d6ea(), "currentStats", "REVIVES");
		/#
			Assert(reviver.revives > 0);
		#/
		reviver.pers["revives"] = reviver.revives;
	}
	reviver.upgrade_fx_origin = self.origin;
	if(isdefined(b_track_stats) && b_track_stats)
	{
		reviver thread check_for_sacrifice();
	}
	self clientfield::set_to_player("sndHealth", 0);
	self.reviveTrigger delete();
	self.reviveTrigger = undefined;
	self cleanup_suicide_hud();
	self laststand_enable_player_weapons();
	self LUI::screen_close_menu();
	self.ignoreme = 0;
	self DisableInvulnerability();
	self util::show_hud(1);
}

/*
	Name: revive_force_revive
	Namespace: laststand
	Checksum: 0xB644743C
	Offset: 0x4010
	Size: 0x8B
	Parameters: 1
	Flags: None
*/
function revive_force_revive(reviver)
{
	/#
		Assert(isdefined(self));
	#/
	/#
		Assert(isPlayer(self));
	#/
	/#
		Assert(self player_is_in_laststand());
	#/
	self thread revive_success(reviver);
}

/*
	Name: revive_hud_think
	Namespace: laststand
	Checksum: 0x3C63FE80
	Offset: 0x40A8
	Size: 0x2AB
	Parameters: 0
	Flags: None
*/
function revive_hud_think()
{
	level endon("game_ended");
	while(1)
	{
		wait(0.1);
		if(!player_any_player_in_laststand())
		{
			continue;
		}
		revived = 0;
		foreach(team in level.teams)
		{
			playerToRevive = undefined;
			foreach(player in level.aliveplayers[team])
			{
				if(!isdefined(player.reviveTrigger) || !isdefined(player.reviveTrigger.createtime))
				{
					continue;
				}
				if(!isdefined(playerToRevive) || playerToRevive.reviveTrigger.createtime > player.reviveTrigger.createtime)
				{
					playerToRevive = player;
				}
			}
			if(isdefined(playerToRevive))
			{
				foreach(player in level.aliveplayers[team])
				{
					if(player player_is_in_laststand())
					{
						continue;
					}
					player thread fadeReviveMessageOver(playerToRevive, 3);
				}
				playerToRevive.reviveTrigger.createtime = undefined;
				revived = 1;
			}
		}
		if(revived)
		{
			wait(3.5);
		}
	}
}

/*
	Name: fadeReviveMessageOver
	Namespace: laststand
	Checksum: 0xD3AE4C7E
	Offset: 0x4360
	Size: 0x8F
	Parameters: 2
	Flags: None
*/
function fadeReviveMessageOver(playerToRevive, time)
{
	revive_hud_show();
	self.revive_hud.hidewheninkillcam = 1;
	self.revive_hud setText(&"COOP_PLAYER_NEEDS_TO_BE_REVIVED", playerToRevive);
	self.revive_hud fadeOverTime(time);
	self.revive_hud.alpha = 0;
}

/*
	Name: laststand_getup
	Namespace: laststand
	Checksum: 0x8FD0A96
	Offset: 0x43F8
	Size: 0x14B
	Parameters: 0
	Flags: None
*/
function laststand_getup()
{
	self endon("player_revived");
	self endon("disconnect");
	/#
		println("Dev Block strings are not supported");
	#/
	self update_lives_remaining(0);
	self clientfield::set_to_player("sndHealth", 2);
	self.laststand_info.getup_bar_value = 0.5;
	self thread laststand_getup_hud();
	self thread laststand_getup_damage_watcher();
	while(self.laststand_info.getup_bar_value < 1)
	{
		self.laststand_info.getup_bar_value = self.laststand_info.getup_bar_value + 0.0025;
		wait(0.05);
	}
	self auto_revive(self);
	bb::logplayermapnotification("last_stand_getup", self);
	self clientfield::set_to_player("sndHealth", 0);
}

/*
	Name: check_for_sacrifice
	Namespace: laststand
	Checksum: 0x5FFC96A5
	Offset: 0x4550
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function check_for_sacrifice()
{
	self util::delay_notify("sacrifice_denied", 1);
	self endon("sacrifice_denied");
	self waittill("player_downed");
}

/*
	Name: check_for_failed_revive
	Namespace: laststand
	Checksum: 0xF15870C9
	Offset: 0x4598
	Size: 0x65
	Parameters: 1
	Flags: None
*/
function check_for_failed_revive(playerBeingRevived)
{
	self endon("disconnect");
	playerBeingRevived endon("disconnect");
	playerBeingRevived endon("player_suicide");
	self notify("checking_for_failed_revive");
	self endon("checking_for_failed_revive");
	playerBeingRevived endon("player_revived");
	playerBeingRevived waittill("bled_out");
}

/*
	Name: add_weighted_down
	Namespace: laststand
	Checksum: 0x98B22813
	Offset: 0x4608
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function add_weighted_down()
{
	weighted_down = 1000;
	if(level.round_number > 0)
	{
		weighted_down = Int(1000 / ceil(level.round_number / 5));
	}
	self AddPlayerStat("weighted_downs", weighted_down);
}

/*
	Name: function_863079e7
	Namespace: laststand
	Checksum: 0xDD41C149
	Offset: 0x46A0
	Size: 0x33
	Parameters: 2
	Flags: None
*/
function function_863079e7(duration, var_343833b4)
{
	level endon(var_343833b4);
	self healthoverlay::function_ec5615ca(duration);
}

/*
	Name: wait_and_revive
	Namespace: laststand
	Checksum: 0x1A2B9B7D
	Offset: 0x46E0
	Size: 0x2BB
	Parameters: 1
	Flags: None
*/
function wait_and_revive(var_a5aee4b9)
{
	if(!isdefined(var_a5aee4b9))
	{
		var_a5aee4b9 = 0;
	}
	self endon("disconnect");
	self endon("death");
	level flag::set("wait_and_revive");
	if(isdefined(self.waiting_to_revive) && self.waiting_to_revive == 1)
	{
		return;
	}
	self.waiting_to_revive = 1;
	solo_revive_time = 10;
	bleedout_time = GetDvarFloat("player_lastStandBleedoutTime");
	if(bleedout_time <= solo_revive_time)
	{
		solo_revive_time = bleedout_time * 0.5;
	}
	if(isdefined(var_a5aee4b9) && var_a5aee4b9)
	{
		if(level.players.size == 1)
		{
			self.revive_hud setText(&"COOP_REVIVE_EMERGENCY_RESERVE_ONCE");
		}
		else
		{
			self.revive_hud setText(&"COOP_REVIVE_EMERGENCY_RESERVE");
		}
	}
	self startrevive(self);
	self revive_hud_show_n_fade(solo_revive_time);
	self thread function_863079e7(solo_revive_time, "instant_revive");
	level flag::wait_till_timeout(solo_revive_time, "instant_revive");
	self stoprevive(self);
	self.var_78f63664 = 1;
	self SetControllerUIModelValue("hudItems.regenDelayProgress", 1);
	if(level flag::get("instant_revive"))
	{
		self revive_hud_show_n_fade(1);
	}
	level flag::clear("wait_and_revive");
	self auto_revive(self);
	self.lives--;
	/#
		if(isdefined(self.var_6c733586) && self.var_6c733586)
		{
			self.lives = level.numLives;
		}
	#/
	self.waiting_to_revive = 0;
}

/*
	Name: remote_revive_watch
	Namespace: laststand
	Checksum: 0xB07D7281
	Offset: 0x49A8
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function remote_revive_watch()
{
	self endon("death");
	self endon("player_revived");
	keep_checking = 1;
	while(keep_checking)
	{
		self waittill("remote_revive", reviver);
		if(reviver.team == self.team)
		{
			keep_checking = 0;
		}
	}
	self remote_revive(reviver);
}

/*
	Name: player_laststand
	Namespace: laststand
	Checksum: 0xA444627F
	Offset: 0x4A40
	Size: 0x12B
	Parameters: 9
	Flags: None
*/
function player_laststand(eInflictor, attacker, iDamage, sMeansOfDeath, weapon, vDir, sHitLoc, psOffsetTime, deathAnimDuration)
{
	b_alt_visionset = 0;
	self AllowJump(0);
	currWeapon = self GetCurrentWeapon();
	statWeapon = currWeapon;
	if(isdefined(self.lives) && self.lives > 0)
	{
		self thread wait_and_revive(self function_76f34311("cybercom_emergencyreserve") != 0);
	}
	self thread remote_revive_watch();
	self disableOffhandWeapons();
}

