#using scripts\codescripts\struct;
#using scripts\cp\_objectives;
#using scripts\cp\_oed;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\cp\gametypes\_save;
#using scripts\cp\gametypes\_spawning;
#using scripts\cp\gametypes\_spawnlogic;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\load_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace hacking;

/*
	Name: __init__sytem__
	Namespace: hacking
	Checksum: 0xA04A14DF
	Offset: 0x340
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__sytem__()
{
	system::register("hacking", &__init__, undefined, undefined);
}

/*
	Name: __init__
	Namespace: hacking
	Checksum: 0xCA384341
	Offset: 0x380
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function __init__()
{
	level.hacking = spawnstruct();
	level.hacking flag::init("in_progress");
}

/*
	Name: hack
	Namespace: hacking
	Checksum: 0x67B3E7C1
	Offset: 0x3C8
	Size: 0x4B
	Parameters: 2
	Flags: None
*/
function hack(var_498bbabf, var_c08cc2da)
{
	onBeginUse(var_c08cc2da);
	wait(var_498bbabf);
	onEndUse(undefined, var_c08cc2da, 1);
}

/*
	Name: function_68df65d8
	Namespace: hacking
	Checksum: 0x791D6C21
	Offset: 0x420
	Size: 0x2D7
	Parameters: 6
	Flags: None
*/
function function_68df65d8(var_498bbabf, str_objective, var_884d30e8, var_84221fce, var_87f7a2d, var_27d1693f)
{
	if(!isdefined(var_498bbabf))
	{
		var_498bbabf = 0.5;
	}
	if(!isdefined(str_objective))
	{
		str_objective = &"cp_hacking";
	}
	if(isdefined(var_884d30e8))
	{
		self setHintString(var_884d30e8);
	}
	self setcursorhint("HINT_INTERACTIVE_PROMPT");
	if(!isdefined(var_87f7a2d))
	{
		var_87f7a2d = [];
		break;
	}
	if(!isdefined(var_87f7a2d))
	{
		var_87f7a2d = [];
	}
	else if(!IsArray(var_87f7a2d))
	{
		var_87f7a2d = Array(var_87f7a2d);
	}
	foreach(mdl in var_87f7a2d)
	{
		mdl namespace_16f9ecd3::function_e228c18a(1);
	}
	visuals = [];
	var_38c85157 = gameobjects::create_use_object("any", self, visuals, (0, 0, 0), str_objective);
	var_38c85157 gameobjects::allow_use("any");
	var_38c85157 gameobjects::set_use_time(0.35);
	var_38c85157 gameobjects::set_owner_team("allies");
	var_38c85157 gameobjects::set_visible_team("any");
	var_38c85157.onUse = &onUse;
	var_38c85157.onBeginUse = &onBeginUse;
	var_38c85157.onEndUse = &onEndUse;
	var_38c85157.var_84221fce = var_84221fce;
	var_38c85157.keepWeapon = 1;
	var_38c85157.var_27d1693f = var_27d1693f;
	return var_38c85157;
}

/*
	Name: trigger_wait
	Namespace: hacking
	Checksum: 0xFCBD28CB
	Offset: 0x700
	Size: 0x1F
	Parameters: 0
	Flags: None
*/
function trigger_wait()
{
	self waittill("hash_1253961", e_who);
	return e_who;
}

/*
	Name: onBeginUse
	Namespace: hacking
	Checksum: 0xEF3157B8
	Offset: 0x728
	Size: 0xB
	Parameters: 1
	Flags: None
*/
function onBeginUse(player)
{
}

/*
	Name: onEndUse
	Namespace: hacking
	Checksum: 0x2DF3C2E7
	Offset: 0x740
	Size: 0x1B
	Parameters: 3
	Flags: None
*/
function onEndUse(team, player, result)
{
}

/*
	Name: onUse
	Namespace: hacking
	Checksum: 0x827BCF4C
	Offset: 0x768
	Size: 0x2C3
	Parameters: 1
	Flags: None
*/
function onUse(player)
{
	self gameobjects::disable_object();
	if(isdefined(player))
	{
		level.hacking flag::set("in_progress");
		player cybercom::function_f8669cbf(1);
		player clientfield::set_to_player("sndCCHacking", 2);
		player util::delay(1, undefined, &clientfield::increment_to_player, "hack_dni_fx");
		if(isdefined(self.var_27d1693f))
		{
			var_c4ed51d5 = util::spawn_model("tag_origin", player.origin, player.angles);
			var_c4ed51d5 LinkTo(self.var_27d1693f);
			player playerLinkTo(var_c4ed51d5, "tag_origin");
			var_c4ed51d5 scene::Play("cin_gen_player_hack_start", player);
			var_c4ed51d5 delete();
		}
		else
		{
			s_align = player;
			if(isdefined(self.trigger.target))
			{
				s_align = struct::get(self.trigger.target, "targetname");
			}
			s_align scene::Play("cin_gen_player_hack_start", player);
		}
		level notify("hash_221e0b70", 1, player);
		self.trigger notify("hash_1253961", player);
		if(isdefined(player))
		{
			player clientfield::set_to_player("sndCCHacking", 0);
		}
		level.hacking flag::clear("in_progress");
	}
	if(isdefined(self.var_84221fce))
	{
		[[self.var_84221fce]]();
	}
	objective_clearentity(self.objectiveId);
	self gameobjects::destroy_object(1, undefined, 1);
}

