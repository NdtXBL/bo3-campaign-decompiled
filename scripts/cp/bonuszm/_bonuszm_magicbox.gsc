#using scripts\codescripts\struct;
#using scripts\cp\_objectives;
#using scripts\cp\_oed;
#using scripts\cp\_util;
#using scripts\cp\bonuszm\_bonuszm_data;
#using scripts\cp\bonuszm\_bonuszm_dev;
#using scripts\cp\bonuszm\_bonuszm_spawner_shared;
#using scripts\cp\bonuszm\_bonuszm_weapons;
#using scripts\cp\gametypes\_loadout;
#using scripts\cp\gametypes\_save;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\hud_util_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;
#using scripts\shared\weapons_shared;

#namespace namespace_293e8aad;

/*
	Name: __init__sytem__
	Namespace: namespace_293e8aad
	Checksum: 0xCA80034
	Offset: 0x4C0
	Size: 0x3B
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__sytem__()
{
	system::register("cp_mobile_magicbox", &__init__, &__main__, undefined);
}

/*
	Name: __init__
	Namespace: namespace_293e8aad
	Checksum: 0xABA8E5C8
	Offset: 0x508
	Size: 0xEB
	Parameters: 0
	Flags: None
*/
function __init__()
{
	level.var_40b3237f = &function_999eb742;
	if(!SessionModeIsCampaignZombiesGame())
	{
		return;
	}
	level.BZM_HideAllMagicBoxesCallback = &function_89a0f2a6;
	level.BZM_CleanupMagicBoxOnDeletionCallback = &function_76eab3e;
	clientfield::register("zbarrier", "magicbox_open_glow", 1, 1, "int");
	clientfield::register("zbarrier", "magicbox_closed_glow", 1, 1, "int");
	clientfield::register("scriptmover", "weapon_disappear_fx", 1, 1, "int");
}

/*
	Name: __main__
	Namespace: namespace_293e8aad
	Checksum: 0xE339B3E7
	Offset: 0x600
	Size: 0x301
	Parameters: 0
	Flags: None
*/
function __main__()
{
	if(!SessionModeIsCampaignZombiesGame())
	{
		return;
	}
	wait(0.05);
	a_mdl_mobile_armory_clip = GetEntArray("mobile_armory_clip", "script_noteworthy");
	foreach(clip in a_mdl_mobile_armory_clip)
	{
		clip delete();
	}
	mapname = GetDvarString("mapname");
	var_9f34c934 = GetEntArray("mobile_armory", "script_noteworthy");
	foreach(var_96eb5b14 in var_9f34c934)
	{
		if(mapname == "cp_mi_cairo_lotus")
		{
			if(DistanceSquared(var_96eb5b14.origin, (-7469, 1031, 4029)) < 22500)
			{
				var_9ff80c52 = 1;
			}
		}
		if(isdefined(var_9ff80c52) && var_9ff80c52)
		{
			var_40d9775d = GetEntArray("bonuszm_magicbox", "script_noteworthy");
			var_381b4609 = Array::get_all_closest(var_96eb5b14.origin, var_40d9775d, Array(var_96eb5b14), 1, 100);
			if(isdefined(var_381b4609) && IsArray(var_381b4609) && var_381b4609.size)
			{
				var_381b4609[0] delete();
			}
			var_96eb5b14 show();
			continue;
		}
		var_96eb5b14 thread function_2816573(var_96eb5b14);
	}
}

/*
	Name: function_2816573
	Namespace: namespace_293e8aad
	Checksum: 0xABF81680
	Offset: 0x910
	Size: 0x53
	Parameters: 1
	Flags: None
*/
function function_2816573(var_96eb5b14)
{
	function_9b385ca5();
	var_6982c48a = var_dafbfd8e;
	function_309dd42b(var_6982c48a);
	var_96eb5b14.var_b10011b8 = var_6982c48a;
}

/*
	Name: function_999eb742
	Namespace: namespace_293e8aad
	Checksum: 0x2B34B239
	Offset: 0x970
	Size: 0xB1
	Parameters: 0
	Flags: None
*/
function function_999eb742()
{
	var_40d9775d = GetEntArray("bonuszm_magicbox", "script_noteworthy");
	foreach(magicbox in var_40d9775d)
	{
		magicbox delete();
	}
}

#namespace namespace_dafbfd8e;

/*
	Name: function_9b385ca5
	Namespace: namespace_dafbfd8e
	Checksum: 0x199D3232
	Offset: 0xA30
	Size: 0xF
	Parameters: 0
	Flags: None
*/
function function_9b385ca5()
{
	self.var_2bcbe272 = 0;
}

/*
	Name: function_5fba2032
	Namespace: namespace_dafbfd8e
	Checksum: 0x99EC1590
	Offset: 0xA48
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_5fba2032()
{
}

/*
	Name: function_309dd42b
	Namespace: namespace_dafbfd8e
	Checksum: 0x8BC511E3
	Offset: 0xA58
	Size: 0x403
	Parameters: 1
	Flags: None
*/
function function_309dd42b(var_96eb5b14)
{
	e_trigger = spawn("trigger_radius_use", var_96eb5b14.origin + VectorScale((0, 0, 1), 3), 0, 94, 64);
	e_trigger TriggerIgnoreTeam();
	e_trigger SetVisibleToAll();
	e_trigger UseTriggerRequireLookAt();
	e_trigger SetTeamForTrigger("none");
	e_trigger setcursorhint("HINT_INTERACTIVE_PROMPT");
	e_trigger setHintString(&"COOP_MAGICBOX");
	var_9fd18135 = GetEntArray("bonuszm_magicbox", "script_noteworthy");
	self.var_b8eeb0fe = ArrayGetClosest(e_trigger.origin, var_9fd18135);
	self.var_b8eeb0fe.origin = var_96eb5b14.origin;
	self.var_b8eeb0fe.angles = var_96eb5b14.angles + VectorScale((0, -1, 0), 90);
	self.var_b8eeb0fe HideZBarrierPiece(1);
	if(isdefined(var_96eb5b14.script_linkto))
	{
		var_1063f543 = GetEnt(var_96eb5b14.script_linkto, "targetname");
		var_96eb5b14 LinkTo(var_1063f543);
		self.var_b8eeb0fe LinkTo(var_1063f543);
		e_trigger EnableLinkTo();
		e_trigger LinkTo(var_1063f543);
	}
	var_96e62168 = util::function_14518e76(e_trigger, &"cp_magic_box", &"COOP_OPEN", &onUse);
	var_96e62168.dontLinkPlayerToTrigger = 1;
	var_96e62168.classObj = self;
	if(!isdefined(var_96eb5b14.script_linkto))
	{
		var_96e62168 EnableLinkTo();
		var_96e62168 LinkTo(e_trigger);
	}
	var_96eb5b14.gameobject = var_96e62168;
	self.var_b8eeb0fe.gameobject = var_96e62168;
	self.var_3f29a509 = var_96eb5b14;
	self.var_7c66997c = e_trigger;
	self.var_b8eeb0fe HideZBarrierPiece(0);
	self.var_b8eeb0fe clientfield::set("magicbox_closed_glow", 1);
	self.var_b8eeb0fe clientfield::set("magicbox_open_glow", 0);
	self.var_b8eeb0fe PlayLoopSound("zmb_box_zcamp_loop");
	self.var_3f29a509 ghost();
	self.var_3f29a509 notsolid();
}

/*
	Name: function_b471f57b
	Namespace: namespace_dafbfd8e
	Checksum: 0xA68DEB28
	Offset: 0xE68
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_b471f57b()
{
	if(!self.var_2bcbe272)
	{
		self.var_3f29a509.gameobject gameobjects::destroy_object(1, 1);
		self.var_b8eeb0fe clientfield::set("magicbox_closed_glow", 0);
		util::wait_network_frame();
		self.var_b8eeb0fe Hide();
	}
}

/*
	Name: onUse
	Namespace: namespace_dafbfd8e
	Checksum: 0xEED7F6D2
	Offset: 0xEF0
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function onUse(e_player)
{
	if(!self.var_2bcbe272)
	{
		self thread function_83bb9b69(e_player);
	}
	else
	{
		e_player thread function_7429abd1(self.var_b8eeb0fe.var_7983c848, self.var_b8eeb0fe.weaponinfo, e_player);
	}
}

/*
	Name: onBeginUse
	Namespace: namespace_dafbfd8e
	Checksum: 0xA9DF236C
	Offset: 0xF68
	Size: 0xB
	Parameters: 1
	Flags: None
*/
function onBeginUse(e_player)
{
}

/*
	Name: function_83bb9b69
	Namespace: namespace_dafbfd8e
	Checksum: 0x37FBCE72
	Offset: 0xF80
	Size: 0x377
	Parameters: 1
	Flags: None
*/
function function_83bb9b69(e_player)
{
	if(self.var_2bcbe272)
	{
		return;
	}
	self.var_3f29a509.gameobject gameobjects::disable_object(1);
	self.var_2bcbe272 = 1;
	self.var_b8eeb0fe clientfield::set("magicbox_closed_glow", 0);
	self.var_b8eeb0fe clientfield::set("magicbox_open_glow", 1);
	weaponinfo = function_c3e9e1ab(e_player);
	var_7983c848 = spawn("trigger_radius_use", self.var_3f29a509.origin + VectorScale((0, 0, 1), 3), 0, 94, 64);
	var_7983c848 TriggerIgnoreTeam();
	var_7983c848 SetVisibleToAll();
	var_7983c848 UseTriggerRequireLookAt();
	var_7983c848 SetTeamForTrigger("none");
	var_7983c848 setcursorhint("HINT_INTERACTIVE_PROMPT");
	var_7983c848 setHintString(&"COOP_MAGICBOX_SWAP_WEAPON");
	self.var_b8eeb0fe.var_7983c848 = var_7983c848;
	var_aafa484e = util::function_14518e76(var_7983c848, &"cp_magic_box", &"COOP_MAGICBOX_SWAP_WEAPON", &onUse);
	var_aafa484e.dontLinkPlayerToTrigger = 1;
	var_aafa484e.classObj = self;
	var_aafa484e EnableLinkTo();
	var_aafa484e LinkTo(var_7983c848);
	e_player Unlink();
	var_7983c848 util::waittill_any_timeout(6, "player_took_weapon");
	var_7983c848 notify("hash_49d64e9");
	var_aafa484e gameobjects::destroy_object(1, 1);
	self thread function_b449e467();
	var_aafa484e delete();
	self.var_b8eeb0fe waittill("closed");
	self.var_b8eeb0fe clientfield::set("magicbox_closed_glow", 1);
	self.var_b8eeb0fe clientfield::set("magicbox_open_glow", 0);
	self.var_3f29a509.gameobject gameobjects::enable_object(1);
	self.var_2bcbe272 = 0;
}

/*
	Name: function_7429abd1
	Namespace: namespace_dafbfd8e
	Checksum: 0x75EDB728
	Offset: 0x1300
	Size: 0x83
	Parameters: 3
	Flags: None
*/
function function_7429abd1(var_7983c848, weaponinfo, e_player)
{
	/#
		Assert(isdefined(weaponinfo));
	#/
	e_player namespace_fdfaa57d::function_43128d49(weaponinfo, 0);
	var_7983c848 notify("hash_1285c563");
	e_player Unlink();
}

/*
	Name: function_c3e9e1ab
	Namespace: namespace_dafbfd8e
	Checksum: 0x982E330E
	Offset: 0x1390
	Size: 0x29F
	Parameters: 1
	Flags: None
*/
function function_c3e9e1ab(e_player)
{
	weapon = level.weaponNone;
	modelName = undefined;
	rand = undefined;
	number_cycles = 40;
	self thread function_cf5042c5();
	for(i = 0; i < number_cycles; i++)
	{
		if(i < 20)
		{
			wait(0.05);
			continue;
		}
		if(i < 30)
		{
			wait(0.1);
			continue;
		}
		if(i < 35)
		{
			wait(0.2);
			continue;
		}
		if(i < 38)
		{
			wait(0.3);
		}
	}
	wait(1);
	self.var_b8eeb0fe.weaponinfo = function_f555c05b();
	v_float = anglesToUp(self.var_b8eeb0fe.angles) * 40;
	self.var_b8eeb0fe.weapon_model = spawn("script_model", self.var_b8eeb0fe.origin + v_float, 0);
	self.var_b8eeb0fe.weapon_model.angles = (self.var_b8eeb0fe.angles[0] * -1, self.var_b8eeb0fe.angles[1] + 180, self.var_b8eeb0fe.angles[2] * -1);
	self.var_b8eeb0fe.weapon_model UseWeaponModel(self.var_b8eeb0fe.weaponinfo[0], self.var_b8eeb0fe.weaponinfo[0].worldmodel);
	self.var_b8eeb0fe.weapon_model SetWeaponRenderOptions(self.var_b8eeb0fe.weaponinfo[2], 0, 0, 0, 0);
	self.var_b8eeb0fe notify("randomization_done");
}

/*
	Name: function_f555c05b
	Namespace: namespace_dafbfd8e
	Checksum: 0x502C7259
	Offset: 0x1638
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_f555c05b()
{
	weaponinfo = namespace_fdfaa57d::function_1e2e0936(1);
	return weaponinfo;
}

/*
	Name: function_cf5042c5
	Namespace: namespace_dafbfd8e
	Checksum: 0xE41281E5
	Offset: 0x1670
	Size: 0x20B
	Parameters: 0
	Flags: None
*/
function function_cf5042c5()
{
	self.var_b8eeb0fe SetZBarrierPieceState(2, "opening");
	while(self.var_b8eeb0fe GetZBarrierPieceState(2) != "open")
	{
		wait(0.1);
	}
	self.var_b8eeb0fe SetZBarrierPieceState(3, "closed");
	self.var_b8eeb0fe SetZBarrierPieceState(4, "closed");
	util::wait_network_frame();
	self.var_b8eeb0fe ZBarrierPieceUseBoxRiseLogic(3);
	self.var_b8eeb0fe ZBarrierPieceUseBoxRiseLogic(4);
	self.var_b8eeb0fe ShowZBarrierPiece(3);
	self.var_b8eeb0fe ShowZBarrierPiece(4);
	self.var_b8eeb0fe SetZBarrierPieceState(3, "opening");
	self.var_b8eeb0fe SetZBarrierPieceState(4, "opening");
	while(self.var_b8eeb0fe GetZBarrierPieceState(3) != "open")
	{
		wait(0.5);
	}
	self.var_b8eeb0fe HideZBarrierPiece(3);
	self.var_b8eeb0fe HideZBarrierPiece(4);
}

/*
	Name: function_b449e467
	Namespace: namespace_dafbfd8e
	Checksum: 0xD4BDFC92
	Offset: 0x1888
	Size: 0xD7
	Parameters: 0
	Flags: None
*/
function function_b449e467()
{
	self.var_b8eeb0fe.weapon_model clientfield::set("weapon_disappear_fx", 1);
	util::wait_network_frame();
	self.var_b8eeb0fe.weapon_model delete();
	wait(1);
	self.var_b8eeb0fe SetZBarrierPieceState(2, "closing");
	while(self.var_b8eeb0fe GetZBarrierPieceState(2) == "closing")
	{
		wait(0.1);
	}
	self.var_b8eeb0fe notify("closed");
}

#namespace namespace_293e8aad;

/*
	Name: function_dafbfd8e
	Namespace: namespace_293e8aad
	Checksum: 0x677BED00
	Offset: 0x1968
	Size: 0x265
	Parameters: 0
	Flags: 6
*/
function private autoexec function_dafbfd8e()
{
	classes.var_dafbfd8e[0] = spawnstruct();
	classes.var_dafbfd8e[0].__vtable[-1270225817] = &namespace_dafbfd8e::function_b449e467;
	classes.var_dafbfd8e[0].__vtable[-816823611] = &namespace_dafbfd8e::function_cf5042c5;
	classes.var_dafbfd8e[0].__vtable[-178929573] = &namespace_dafbfd8e::function_f555c05b;
	classes.var_dafbfd8e[0].__vtable[-1008082517] = &namespace_dafbfd8e::function_c3e9e1ab;
	classes.var_dafbfd8e[0].__vtable[1948888017] = &namespace_dafbfd8e::function_7429abd1;
	classes.var_dafbfd8e[0].__vtable[-2084856983] = &namespace_dafbfd8e::function_83bb9b69;
	classes.var_dafbfd8e[0].__vtable[-808543358] = &namespace_dafbfd8e::onBeginUse;
	classes.var_dafbfd8e[0].__vtable[1015980183] = &namespace_dafbfd8e::onUse;
	classes.var_dafbfd8e[0].__vtable[-1267600005] = &namespace_dafbfd8e::function_b471f57b;
	classes.var_dafbfd8e[0].__vtable[815649835] = &namespace_dafbfd8e::function_309dd42b;
	classes.var_dafbfd8e[0].__vtable[1606033458] = &namespace_dafbfd8e::function_5fba2032;
	classes.var_dafbfd8e[0].__vtable[-1690805083] = &namespace_dafbfd8e::function_9b385ca5;
}

/*
	Name: function_89a0f2a6
	Namespace: namespace_293e8aad
	Checksum: 0xAB63D8B8
	Offset: 0x1BD8
	Size: 0x121
	Parameters: 0
	Flags: None
*/
function function_89a0f2a6()
{
	if(!SessionModeIsCampaignZombiesGame())
	{
		return;
	}
	var_7e526b74 = GetEntArray("bonuszm_magicbox", "script_noteworthy");
	foreach(magicbox in var_7e526b74)
	{
		magicbox.gameobject gameobjects::destroy_object(1, 1);
		magicbox clientfield::set("magicbox_closed_glow", 0);
		util::wait_network_frame();
		magicbox Hide();
	}
}

/*
	Name: function_76eab3e
	Namespace: namespace_293e8aad
	Checksum: 0x26114334
	Offset: 0x1D08
	Size: 0x7B
	Parameters: 1
	Flags: None
*/
function function_76eab3e(magicbox)
{
	if(magicbox.script_noteworthy === "bonuszm_magicbox")
	{
		if(isdefined(magicbox.gameobject))
		{
			magicbox.gameobject gameobjects::destroy_object(1, 1);
		}
		magicbox thread function_73ea8d16(magicbox);
	}
}

/*
	Name: function_73ea8d16
	Namespace: namespace_293e8aad
	Checksum: 0x301860B3
	Offset: 0x1D90
	Size: 0x5B
	Parameters: 1
	Flags: None
*/
function function_73ea8d16(magicbox)
{
	magicbox endon("death");
	magicbox clientfield::set("magicbox_closed_glow", 0);
	util::wait_network_frame();
	magicbox delete();
}

