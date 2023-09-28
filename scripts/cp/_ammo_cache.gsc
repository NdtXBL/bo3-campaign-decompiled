#using scripts\codescripts\struct;
#using scripts\cp\_objectives;
#using scripts\cp\_oed;
#using scripts\shared\array_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\hud_util_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\system_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;

#namespace namespace_fb5b04f4;

/*
	Name: __init__sytem__
	Namespace: namespace_fb5b04f4
	Checksum: 0x33878D37
	Offset: 0x330
	Size: 0x3B
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__sytem__()
{
	system::register("cp_supply_manager", &__init__, &__main__, undefined);
}

/*
	Name: __init__
	Namespace: namespace_fb5b04f4
	Checksum: 0x99EC1590
	Offset: 0x378
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function __init__()
{
}

/*
	Name: __main__
	Namespace: namespace_fb5b04f4
	Checksum: 0x647B572C
	Offset: 0x388
	Size: 0x203
	Parameters: 0
	Flags: None
*/
function __main__()
{
	wait(0.05);
	if(isdefined(level.var_7ba8d184))
	{
		level thread [[level.var_7ba8d184]]();
		return;
	}
	level.var_bd9a76fb = 31;
	var_8e327af8 = GetEntArray("ammo_cache", "script_noteworthy");
	foreach(var_455957d8 in var_8e327af8)
	{
		function_9b385ca5();
		var_fb5b04f4 = var_1e7268a3;
		function_35dd0243(var_fb5b04f4);
	}
	var_6c2e87ca = struct::get_array("ammo_cache", "script_noteworthy");
	foreach(var_cd9300aa in var_6c2e87ca)
	{
		function_9b385ca5();
		var_fb5b04f4 = var_1e7268a3;
		function_82b8e134(var_fb5b04f4, var_cd9300aa.origin);
	}
	SetDvar("AmmoBoxPickupTime", 0.75);
}

#namespace namespace_1e7268a3;

/*
	Name: function_9b385ca5
	Namespace: namespace_1e7268a3
	Checksum: 0x99EC1590
	Offset: 0x598
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_9b385ca5()
{
}

/*
	Name: function_5fba2032
	Namespace: namespace_1e7268a3
	Checksum: 0x99EC1590
	Offset: 0x5A8
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_5fba2032()
{
}

/*
	Name: function_35dd0243
	Namespace: namespace_1e7268a3
	Checksum: 0x1EE86CE1
	Offset: 0x5B8
	Size: 0x543
	Parameters: 1
	Flags: None
*/
function function_35dd0243(var_455957d8)
{
	t_use = spawn("trigger_radius_use", var_455957d8.origin + VectorScale((0, 0, 1), 30), 0, 94, 64);
	t_use TriggerIgnoreTeam();
	t_use SetVisibleToAll();
	t_use UseTriggerRequireLookAt();
	t_use SetTeamForTrigger("none");
	t_use setcursorhint("HINT_INTERACTIVE_PROMPT");
	t_use setHintString(&"COOP_REFILL_AMMO");
	if(isdefined(var_455957d8.script_linkto))
	{
		var_1063f543 = GetEnt(var_455957d8.script_linkto, "targetname");
		var_455957d8 LinkTo(var_1063f543);
	}
	t_use EnableLinkTo();
	t_use LinkTo(var_455957d8);
	var_455957d8 namespace_16f9ecd3::function_e228c18a(1);
	if(var_455957d8.script_string === "single_use")
	{
		var_988e928 = gameobjects::create_use_object("any", t_use, Array(var_455957d8), VectorScale((0, 0, 1), 32), &"cp_ammo_box");
	}
	else
	{
		var_988e928 = gameobjects::create_use_object("any", t_use, Array(var_455957d8), VectorScale((0, 0, 1), 32), &"cp_ammo_crate");
	}
	var_988e928 gameobjects::allow_use("any");
	var_988e928 gameobjects::set_use_text(&"COOP_AMMO_REFILL");
	var_988e928 gameobjects::set_owner_team("allies");
	var_988e928 gameobjects::set_visible_team("any");
	var_988e928.onUse = &onUse;
	var_988e928.useWeapon = undefined;
	var_988e928.origin = var_455957d8.origin;
	var_988e928.angles = var_988e928.angles;
	if(var_455957d8.script_string === "single_use")
	{
		var_988e928 gameobjects::set_use_time(0.75);
		var_988e928.onBeginUse = &onBeginUse;
		var_988e928.onEndUse = &onEndUse;
		var_988e928.var_db0f901 = 1;
	}
	else
	{
		var_988e928 gameobjects::set_use_time(0.75);
		var_988e928.onBeginUse = &onBeginUse;
		var_988e928.onEndUse = &onEndUse;
		var_988e928.var_db0f901 = 0;
		var_455957d8.gameobject = var_988e928;
		self.var_60a09143 = var_455957d8;
		self.var_60a09143.var_ce22f999 = 0;
		var_bd13c94b = spawn("trigger_radius", t_use.origin, 0, 94, 64);
		var_bd13c94b SetVisibleToAll();
		var_bd13c94b SetTeamForTrigger("allies");
		var_bd13c94b EnableLinkTo();
		var_bd13c94b LinkTo(var_455957d8);
		var_bd13c94b thread function_e76edd0b(self.var_60a09143);
	}
	var_455957d8.gameobject = var_988e928;
	var_455957d8 thread function_71f6269a(var_bd13c94b);
}

/*
	Name: function_82b8e134
	Namespace: namespace_1e7268a3
	Checksum: 0xB92ECB5B
	Offset: 0xB08
	Size: 0x5B
	Parameters: 2
	Flags: None
*/
function function_82b8e134(origin, angles)
{
	var_62a5879d = util::spawn_model("p6_ammo_resupply_future_01", origin, angles, 1);
	function_35dd0243(var_62a5879d);
}

/*
	Name: onBeginUse
	Namespace: namespace_1e7268a3
	Checksum: 0x276B7BC3
	Offset: 0xB70
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function onBeginUse(e_player)
{
	e_player playsound("fly_ammo_crate_refill");
	e_player util::_disableWeapon();
}

/*
	Name: onEndUse
	Namespace: namespace_1e7268a3
	Checksum: 0x39C03398
	Offset: 0xBC0
	Size: 0x3B
	Parameters: 3
	Flags: None
*/
function onEndUse(team, e_player, b_result)
{
	if(!b_result)
	{
		e_player util::_enableWeapon();
	}
}

/*
	Name: onUse
	Namespace: namespace_1e7268a3
	Checksum: 0x4982B758
	Offset: 0xC08
	Size: 0x17B
	Parameters: 1
	Flags: None
*/
function onUse(e_player)
{
	var_8ea4a872 = e_player GetWeaponsList();
	foreach(w_weapon in var_8ea4a872)
	{
		if(_is_banned_refill_weapon(w_weapon))
		{
			continue;
		}
		e_player giveMaxAmmo(w_weapon);
		e_player SetWeaponAmmoClip(w_weapon, w_weapon.clipSize);
	}
	e_player notify("ammo_refilled");
	e_player PlayRumbleOnEntity("damage_light");
	e_player util::_enableWeapon();
	if(self.var_db0f901)
	{
		objective_clearentity(self.objectiveId);
		self gameobjects::destroy_object(1, undefined, 1);
	}
}

/*
	Name: _is_banned_refill_weapon
	Namespace: namespace_1e7268a3
	Checksum: 0xA82182A2
	Offset: 0xD90
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function _is_banned_refill_weapon(w_weapon)
{
	switch(w_weapon.name)
	{
		case "minigun_warlord_raid":
		{
			return 1;
			break;
		}
	}
	return 0;
}

/*
	Name: function_e76edd0b
	Namespace: namespace_1e7268a3
	Checksum: 0xD085A242
	Offset: 0xDD8
	Size: 0x87
	Parameters: 1
	Flags: None
*/
function function_e76edd0b(var_60a09143)
{
	self endon("death");
	var_60a09143 endon("death");
	while(1)
	{
		self waittill("trigger", entity);
		if(!isdefined(var_60a09143))
		{
			break;
		}
		if(isPlayer(entity))
		{
			function_2902ab6c(var_60a09143);
		}
	}
}

/*
	Name: function_2902ab6c
	Namespace: namespace_1e7268a3
	Checksum: 0x13613CCB
	Offset: 0xE68
	Size: 0x193
	Parameters: 1
	Flags: None
*/
function function_2902ab6c(var_60a09143)
{
	var_60a09143 endon("death");
	if(var_60a09143.var_ce22f999)
	{
		return;
	}
	var_60a09143.var_ce22f999 = 1;
	var_60a09143 scene::Play("p7_fxanim_gp_ammo_resupply_02_open_bundle", var_60a09143);
	wait(1);
	var_d3571721 = 1;
	while(var_d3571721 > 0)
	{
		var_d3571721 = 0;
		foreach(e_player in level.players)
		{
			dist_sq = DistanceSquared(e_player.origin, var_60a09143.origin);
			if(dist_sq <= 14400)
			{
				var_d3571721++;
			}
		}
		wait(0.5);
	}
	var_60a09143 scene::Play("p7_fxanim_gp_ammo_resupply_02_close_bundle", var_60a09143);
	var_60a09143.var_ce22f999 = 0;
}

/*
	Name: function_71f6269a
	Namespace: namespace_1e7268a3
	Checksum: 0x52045C14
	Offset: 0x1008
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_71f6269a(var_bd13c94b)
{
	self waittill("death");
	self.gameobject gameobjects::destroy_object(1);
	self.gameobject delete();
	if(isdefined(var_bd13c94b))
	{
		var_bd13c94b delete();
	}
}

#namespace namespace_fb5b04f4;

/*
	Name: function_1e7268a3
	Namespace: namespace_fb5b04f4
	Checksum: 0x5C4405D0
	Offset: 0x1080
	Size: 0x235
	Parameters: 0
	Flags: 6
*/
function private autoexec function_1e7268a3()
{
	classes.var_1e7268a3[0] = spawnstruct();
	classes.var_1e7268a3[0].__vtable[1911957146] = &namespace_1e7268a3::function_71f6269a;
	classes.var_1e7268a3[0].__vtable[688040812] = &namespace_1e7268a3::function_2902ab6c;
	classes.var_1e7268a3[0].__vtable[-412164853] = &namespace_1e7268a3::function_e76edd0b;
	classes.var_1e7268a3[0].__vtable[1474560529] = &namespace_1e7268a3::_is_banned_refill_weapon;
	classes.var_1e7268a3[0].__vtable[1015980183] = &namespace_1e7268a3::onUse;
	classes.var_1e7268a3[0].__vtable[-1537956454] = &namespace_1e7268a3::onEndUse;
	classes.var_1e7268a3[0].__vtable[-808543358] = &namespace_1e7268a3::onBeginUse;
	classes.var_1e7268a3[0].__vtable[-2101812940] = &namespace_1e7268a3::function_82b8e134;
	classes.var_1e7268a3[0].__vtable[903676483] = &namespace_1e7268a3::function_35dd0243;
	classes.var_1e7268a3[0].__vtable[1606033458] = &namespace_1e7268a3::function_5fba2032;
	classes.var_1e7268a3[0].__vtable[-1690805083] = &namespace_1e7268a3::function_9b385ca5;
}

/*
	Name: hide_waypoint
	Namespace: namespace_fb5b04f4
	Checksum: 0x1C1E7F56
	Offset: 0x12C0
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function hide_waypoint(e_player)
{
	self.gameobject gameobjects::hide_waypoint(e_player);
}

/*
	Name: show_waypoint
	Namespace: namespace_fb5b04f4
	Checksum: 0xBEF11540
	Offset: 0x12F8
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function show_waypoint(e_player)
{
	self.gameobject gameobjects::show_waypoint(e_player);
}

