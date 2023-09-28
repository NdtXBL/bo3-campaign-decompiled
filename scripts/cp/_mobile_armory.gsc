#using scripts\codescripts\struct;
#using scripts\cp\_bb;
#using scripts\cp\_objectives;
#using scripts\cp\_oed;
#using scripts\cp\_skipto;
#using scripts\cp\_util;
#using scripts\cp\cybercom\_cybercom_util;
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
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;
#using scripts\shared\weapons\_weapons;

#namespace namespace_c034d2a8;

/*
	Name: __init__sytem__
	Namespace: namespace_c034d2a8
	Checksum: 0x6A74FB30
	Offset: 0x5A0
	Size: 0x3B
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__sytem__()
{
	system::register("cp_mobile_armory", &__init__, &__main__, undefined);
}

/*
	Name: __init__
	Namespace: namespace_c034d2a8
	Checksum: 0x811C6AA6
	Offset: 0x5E8
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function __init__()
{
	clientfield::register("toplayer", "mobile_armory_cac", 1, 4, "int");
}

/*
	Name: __main__
	Namespace: namespace_c034d2a8
	Checksum: 0x97DB59A0
	Offset: 0x628
	Size: 0x111
	Parameters: 0
	Flags: None
*/
function __main__()
{
	if(SessionModeIsCampaignZombiesGame())
	{
		return;
	}
	else if(isdefined(level.var_40b3237f))
	{
		[[level.var_40b3237f]]();
	}
	wait(0.05);
	var_9f34c934 = GetEntArray("mobile_armory", "script_noteworthy");
	foreach(var_96eb5b14 in var_9f34c934)
	{
		function_9b385ca5();
		var_c034d2a8 = var_b4b9e1e4;
		function_c3b04569(var_c034d2a8);
	}
}

#namespace namespace_b4b9e1e4;

/*
	Name: function_9b385ca5
	Namespace: namespace_b4b9e1e4
	Checksum: 0x99EC1590
	Offset: 0x748
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_9b385ca5()
{
}

/*
	Name: function_5fba2032
	Namespace: namespace_b4b9e1e4
	Checksum: 0x99EC1590
	Offset: 0x758
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_5fba2032()
{
}

/*
	Name: function_c3b04569
	Namespace: namespace_b4b9e1e4
	Checksum: 0x50923CCC
	Offset: 0x768
	Size: 0x503
	Parameters: 1
	Flags: None
*/
function function_c3b04569(var_96eb5b14)
{
	t_use = spawn("trigger_radius_use", var_96eb5b14.origin + VectorScale((0, 0, 1), 24), 0, 94, 64);
	t_use TriggerIgnoreTeam();
	t_use SetVisibleToAll();
	t_use UseTriggerRequireLookAt();
	t_use SetTeamForTrigger("none");
	t_use setcursorhint("HINT_INTERACTIVE_PROMPT");
	t_use setHintString(&"COOP_SELECT_LOADOUT");
	if(isdefined(var_96eb5b14.script_linkto))
	{
		var_1063f543 = GetEnt(var_96eb5b14.script_linkto, "targetname");
		var_96eb5b14 LinkTo(var_1063f543);
		t_use EnableLinkTo();
		t_use LinkTo(var_1063f543);
	}
	var_96eb5b14 namespace_16f9ecd3::function_e228c18a(1);
	var_96eb5b14 HidePart("tag_weapons_01_jnt");
	var_96eb5b14 HidePart("tag_weapons_02_jnt");
	var_96eb5b14 HidePart("tag_weapons_03_jnt");
	var_96eb5b14 HidePart("tag_weapons_04_jnt");
	var_96e62168 = gameobjects::create_use_object("any", t_use, Array(var_96eb5b14), VectorScale((0, 0, 1), 68), &"cp_mobile_armory");
	var_96e62168 gameobjects::allow_use("any");
	var_96e62168 gameobjects::set_use_time(0.35);
	var_96e62168 gameobjects::set_use_text(&"COOP_SELECT_LOADOUT");
	var_96e62168 gameobjects::set_owner_team("allies");
	var_96e62168 gameobjects::set_visible_team("any");
	var_96e62168.onUse = &onUse;
	var_96e62168.onBeginUse = &onBeginUse;
	var_96e62168.onEndUse = &onEndUse;
	var_96e62168.onUse_thread = 1;
	var_96e62168.useWeapon = undefined;
	var_96e62168.var_db0f901 = 0;
	var_96e62168.classObj = self;
	var_96e62168.origin = var_96eb5b14.origin;
	var_96e62168.angles = var_96e62168.angles;
	if(!isdefined(var_96eb5b14.script_linkto))
	{
		var_96e62168 EnableLinkTo();
		var_96e62168 LinkTo(t_use);
	}
	var_96eb5b14.gameobject = var_96e62168;
	self.var_ab455203 = var_96eb5b14;
	self.var_ab455203.var_ce22f999 = 0;
	var_bd13c94b = spawn("trigger_radius", t_use.origin, 0, 94, 64);
	var_bd13c94b SetVisibleToAll();
	var_bd13c94b SetTeamForTrigger("allies");
	var_bd13c94b thread function_e76edd0b(self.var_ab455203);
	self.var_ab455203 thread function_71f6269a(var_bd13c94b);
}

/*
	Name: onBeginUse
	Namespace: namespace_b4b9e1e4
	Checksum: 0x7389B2E6
	Offset: 0xC78
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function onBeginUse(e_player)
{
	e_player playsound("fly_ammo_crate_refill");
	e_player util::_disableWeapon();
	e_player flagsys::set("mobile_armory_begin_use");
}

/*
	Name: onEndUse
	Namespace: namespace_b4b9e1e4
	Checksum: 0x5C5F10D9
	Offset: 0xCE8
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
	Namespace: namespace_b4b9e1e4
	Checksum: 0xD34DBD72
	Offset: 0xD30
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function onUse(e_player)
{
	self thread function_ecdbdfeb(e_player);
}

/*
	Name: function_ecdbdfeb
	Namespace: namespace_b4b9e1e4
	Checksum: 0x2B3EAF8D
	Offset: 0xD60
	Size: 0x993
	Parameters: 1
	Flags: None
*/
function function_ecdbdfeb(e_player)
{
	e_player endon("death");
	e_player endon("entering_last_stand");
	e_player flagsys::clear("mobile_armory_begin_use");
	var_9cba4a73 = 1;
	if(isdefined(self.var_ab455203.script_int))
	{
		var_9cba4a73 = 3;
		var_9cba4a73 = var_9cba4a73 + self.var_ab455203.script_int - 6 << 2;
	}
	e_player clientfield::set_to_player("mobile_armory_cac", var_9cba4a73);
	e_player flagsys::set("mobile_armory_in_use");
	var_eb5bcea7 = e_player GetLoadoutItemRef(0, "cybercore");
	e_player waittill("menuresponse", str_menu, response);
	a_weaponlist = e_player GetWeaponsList();
	var_5b2a650 = e_player GetLoadoutWeapon(e_player.class_num, "primary");
	var_95cf88cc = e_player GetLoadoutWeapon(e_player.class_num, "secondary");
	var_961f11b8 = [];
	foreach(weapon in a_weaponlist)
	{
		if(isdefined(weapon.isHeroWeapon) && weapon.isHeroWeapon)
		{
			if(!isdefined(var_961f11b8))
			{
				var_961f11b8 = [];
			}
			else if(!IsArray(var_961f11b8))
			{
				var_961f11b8 = Array(var_961f11b8);
			}
			var_961f11b8[var_961f11b8.size] = weapon;
			continue;
		}
		if(e_player function_76f34311("cybercom_copycat") && (weapon.inventoryType == "primary" || weapon.inventoryType == "secondary") && (weapon != var_5b2a650 && weapon != var_95cf88cc))
		{
			/#
				iprintln("Dev Block strings are not supported");
			#/
			if(response != "cancel")
			{
				e_player function_6b1fa4df(weapon);
			}
		}
	}
	if(str_menu == "ChooseClass_InGame")
	{
		var_d3a640a8 = e_player GetLoadoutItemRef(0, "cybercore");
		var_63a103f4 = var_d3a640a8 == var_eb5bcea7 || e_player cybercom::function_6e0bf068();
		e_player savegame::function_bee608f0("lives", undefined);
		if(response == "cancel")
		{
			e_player loadout::function_db96b564(!isdefined(var_63a103f4) && var_63a103f4);
		}
		else
		{
			var_5dc22ce3 = StrTok(response, ",");
			if(var_5dc22ce3.size > 1)
			{
				var_bd5d3f48 = var_5dc22ce3[0];
				clientNum = Int(var_5dc22ce3[1]);
				var_5a13c491 = util::getPlayerFromClientNum(clientNum);
			}
			else
			{
				var_bd5d3f48 = response;
			}
			playerclass = e_player loadout::getClassChoice(var_bd5d3f48);
			e_player savegame::function_bee608f0("playerClass", playerclass);
			if(isdefined(var_5a13c491))
			{
				xuid = var_5a13c491 getXuid();
				e_player savegame::function_bee608f0("altPlayerID", xuid);
			}
			else
			{
				e_player savegame::function_bee608f0("altPlayerID", undefined);
			}
			e_player savegame::function_bee608f0("saved_weapon", undefined);
			e_player savegame::function_bee608f0("saved_weapondata", undefined);
			e_player savegame::function_bee608f0("saved_rig1", undefined);
			e_player savegame::function_bee608f0("saved_rig1_upgraded", undefined);
			e_player savegame::function_bee608f0("saved_rig2", undefined);
			e_player savegame::function_bee608f0("saved_rig2_upgraded", undefined);
			e_player loadout::setClass(playerclass);
			e_player.tag_stowed_back = undefined;
			e_player.tag_stowed_hip = undefined;
			e_player loadout::giveLoadout(e_player.pers["team"], playerclass, !isdefined(var_63a103f4) && var_63a103f4, var_5a13c491);
		}
	}
	foreach(weapon in var_961f11b8)
	{
		e_player GiveWeapon(weapon);
	}
	a_weapons = e_player GetWeaponsList();
	foreach(weapon in a_weapons)
	{
		e_player giveMaxAmmo(weapon);
		e_player SetWeaponAmmoClip(weapon, weapon.clipSize);
	}
	if(e_player flagsys::get("cancel_mobile_armory"))
	{
		e_player flagsys::clear("cancel_mobile_armory");
		e_player util::_enableWeapon();
	}
	else
	{
		self thread function_afd39ac7(e_player);
		e_player HideViewModel();
		e_player DisableWeapons(1);
		wait(0.5);
		e_player ShowViewModel();
		e_player util::_enableWeapon();
	}
	e_player clientfield::set_to_player("mobile_armory_cac", 0);
	bb::logplayermapnotification("mobile_armory_used", e_player);
	e_player function_8a492eee(skipto::function_52c50cb8(), "mobileArmoryUsedCount");
	waittillframeend;
	e_player flagsys::clear("mobile_armory_in_use");
}

/*
	Name: function_66708329
	Namespace: namespace_b4b9e1e4
	Checksum: 0x9ADEB507
	Offset: 0x1700
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_66708329(e_player)
{
	if(self.var_3df2554f === e_player)
	{
		return 0;
	}
	return 1;
}

/*
	Name: function_afd39ac7
	Namespace: namespace_b4b9e1e4
	Checksum: 0x90B7FA8A
	Offset: 0x1730
	Size: 0x6D
	Parameters: 1
	Flags: None
*/
function function_afd39ac7(e_player)
{
	self.var_ab455203.gameobject.canInteractWithPlayer = &function_66708329;
	self.var_ab455203.gameobject.var_3df2554f = e_player;
	wait(0.25);
	self.var_ab455203.gameobject.canInteractWithPlayer = undefined;
}

/*
	Name: function_6b1fa4df
	Namespace: namespace_b4b9e1e4
	Checksum: 0xA5AC5582
	Offset: 0x17A8
	Size: 0x173
	Parameters: 1
	Flags: None
*/
function function_6b1fa4df(weapon)
{
	clipAmmo = self GetWeaponAmmoClip(weapon);
	stockAmmo = self GetWeaponAmmoStock(weapon);
	stockMax = weapon.maxAmmo;
	if(stockAmmo > stockMax)
	{
		stockAmmo = stockMax;
	}
	item = self dropItem(weapon, "tag_origin");
	if(!isdefined(item))
	{
		/#
			IPrintLnBold("Dev Block strings are not supported" + weapon.name + "Dev Block strings are not supported");
		#/
		return;
	}
	level weapons::drop_limited_weapon(weapon, self, item);
	item ItemWeaponSetAmmo(clipAmmo, stockAmmo);
	item.owner = self;
	item thread weapons::watch_pickup();
	item thread weapons::delete_pickup_after_aWhile();
}

/*
	Name: function_e76edd0b
	Namespace: namespace_b4b9e1e4
	Checksum: 0x958274B8
	Offset: 0x1928
	Size: 0x87
	Parameters: 1
	Flags: None
*/
function function_e76edd0b(var_ab455203)
{
	self endon("death");
	var_ab455203 endon("death");
	while(1)
	{
		self waittill("trigger", entity);
		if(!isdefined(var_ab455203))
		{
			break;
		}
		if(isPlayer(entity))
		{
			function_69cca2a0(var_ab455203);
		}
	}
}

/*
	Name: function_69cca2a0
	Namespace: namespace_b4b9e1e4
	Checksum: 0x6F2CD033
	Offset: 0x19B8
	Size: 0x283
	Parameters: 1
	Flags: None
*/
function function_69cca2a0(var_ab455203)
{
	if(var_ab455203.var_ce22f999)
	{
		return;
	}
	var_ab455203.var_ce22f999 = 1;
	var_ab455203 ShowPart("tag_weapons_01_jnt");
	var_ab455203 ShowPart("tag_weapons_02_jnt");
	var_ab455203 ShowPart("tag_weapons_03_jnt");
	var_ab455203 ShowPart("tag_weapons_04_jnt");
	var_ab455203 scene::Play("p7_fxanim_gp_mobile_armory_open_bundle", var_ab455203);
	wait(1);
	var_d3571721 = 1;
	while(var_d3571721 > 0)
	{
		var_d3571721 = 0;
		foreach(e_player in level.players)
		{
			dist_sq = DistanceSquared(e_player.origin, var_ab455203.origin);
			if(dist_sq <= 15400)
			{
				var_d3571721++;
			}
		}
		wait(0.5);
	}
	var_ab455203 scene::Play("p7_fxanim_gp_mobile_armory_close_bundle", var_ab455203);
	var_ab455203 HidePart("tag_weapons_01_jnt");
	var_ab455203 HidePart("tag_weapons_02_jnt");
	var_ab455203 HidePart("tag_weapons_03_jnt");
	var_ab455203 HidePart("tag_weapons_04_jnt");
	var_ab455203.var_ce22f999 = 0;
}

/*
	Name: function_71f6269a
	Namespace: namespace_b4b9e1e4
	Checksum: 0x41601D6A
	Offset: 0x1C48
	Size: 0xCB
	Parameters: 1
	Flags: None
*/
function function_71f6269a(var_bd13c94b)
{
	self waittill("death");
	self.gameobject gameobjects::destroy_object(1);
	self.gameobject delete();
	if(isdefined(self.target))
	{
		var_5ba2ceb4 = GetEnt(self.target, "targetname");
		if(isdefined(var_5ba2ceb4))
		{
			var_5ba2ceb4 delete();
		}
	}
	if(isdefined(var_bd13c94b))
	{
		var_bd13c94b delete();
	}
}

#namespace namespace_c034d2a8;

/*
	Name: function_b4b9e1e4
	Namespace: namespace_c034d2a8
	Checksum: 0xABCB4023
	Offset: 0x1D20
	Size: 0x295
	Parameters: 0
	Flags: 6
*/
function private autoexec function_b4b9e1e4()
{
	classes.var_b4b9e1e4[0] = spawnstruct();
	classes.var_b4b9e1e4[0].__vtable[1911957146] = &namespace_b4b9e1e4::function_71f6269a;
	classes.var_b4b9e1e4[0].__vtable[1775018656] = &namespace_b4b9e1e4::function_69cca2a0;
	classes.var_b4b9e1e4[0].__vtable[-412164853] = &namespace_b4b9e1e4::function_e76edd0b;
	classes.var_b4b9e1e4[0].__vtable[1797235935] = &namespace_b4b9e1e4::function_6b1fa4df;
	classes.var_b4b9e1e4[0].__vtable[-1345086777] = &namespace_b4b9e1e4::function_afd39ac7;
	classes.var_b4b9e1e4[0].__vtable[1718649641] = &namespace_b4b9e1e4::function_66708329;
	classes.var_b4b9e1e4[0].__vtable[-321134613] = &namespace_b4b9e1e4::function_ecdbdfeb;
	classes.var_b4b9e1e4[0].__vtable[1015980183] = &namespace_b4b9e1e4::onUse;
	classes.var_b4b9e1e4[0].__vtable[-1537956454] = &namespace_b4b9e1e4::onEndUse;
	classes.var_b4b9e1e4[0].__vtable[-808543358] = &namespace_b4b9e1e4::onBeginUse;
	classes.var_b4b9e1e4[0].__vtable[-1011858071] = &namespace_b4b9e1e4::function_c3b04569;
	classes.var_b4b9e1e4[0].__vtable[1606033458] = &namespace_b4b9e1e4::function_5fba2032;
	classes.var_b4b9e1e4[0].__vtable[-1690805083] = &namespace_b4b9e1e4::function_9b385ca5;
}

