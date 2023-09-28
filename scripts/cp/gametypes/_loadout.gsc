#using scripts\codescripts\struct;
#using scripts\cp\_challenges;
#using scripts\cp\_util;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\cp\gametypes\_dev;
#using scripts\cp\gametypes\_save;
#using scripts\cp\teams\_teams;
#using scripts\shared\abilities\_ability_util;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\challenges_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\loadout_shared;
#using scripts\shared\player_shared;
#using scripts\shared\system_shared;
#using scripts\shared\tweakables_shared;
#using scripts\shared\util_shared;

#namespace loadout;

/*
	Name: __init__sytem__
	Namespace: loadout
	Checksum: 0x3F238F1C
	Offset: 0xA20
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__sytem__()
{
	system::register("loadout", &__init__, undefined, undefined);
}

/*
	Name: __init__
	Namespace: loadout
	Checksum: 0x55852F9B
	Offset: 0xA60
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function __init__()
{
	level.player_interactive_model = "c_usa_cia_masonjr_viewbody";
	callback::on_start_gametype(&init);
	callback::on_connect(&on_connect);
	callback::on_disconnect(&function_ef129246);
	level thread function_adca0ced();
}

/*
	Name: on_connect
	Namespace: loadout
	Checksum: 0x99EC1590
	Offset: 0xAF8
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function on_connect()
{
}

/*
	Name: init
	Namespace: loadout
	Checksum: 0xFAEBFA54
	Offset: 0xB08
	Size: 0x7F3
	Parameters: 0
	Flags: None
*/
function init()
{
	level.classMap["class_smg"] = "CLASS_SMG";
	level.classMap["class_cqb"] = "CLASS_CQB";
	level.classMap["class_assault"] = "CLASS_ASSAULT";
	level.classMap["class_lmg"] = "CLASS_LMG";
	level.classMap["class_sniper"] = "CLASS_SNIPER";
	level.classMap["custom0"] = "CLASS_CUSTOM1";
	level.classMap["custom1"] = "CLASS_CUSTOM2";
	level.classMap["custom2"] = "CLASS_CUSTOM3";
	level.classMap["custom3"] = "CLASS_CUSTOM4";
	level.classMap["custom4"] = "CLASS_CUSTOM5";
	level.classMap["custom5"] = "CLASS_CUSTOM6";
	level.classMap["custom6"] = "CLASS_CUSTOM7";
	level.classMap["custom7"] = "CLASS_CUSTOM8";
	level.classMap["custom8"] = "CLASS_CUSTOM9";
	level.classMap["custom9"] = "CLASS_CUSTOM10";
	level.maxKillstreaks = 4;
	level.maxSpecialties = 6;
	level.maxBonuscards = 3;
	level.maxAllocation = GetGametypeSetting("maxAllocation");
	level.loadoutKillstreaksEnabled = GetGametypeSetting("loadoutKillstreaksEnabled");
	level.PrestigeNumber = 5;
	level.defaultClass = "CLASS_CUSTOM1";
	if(tweakables::getTweakableValue("weapon", "allowfrag"))
	{
		level.weapons["frag"] = GetWeapon("frag_grenade");
	}
	else
	{
		level.weapons["frag"] = "";
	}
	if(tweakables::getTweakableValue("weapon", "allowsmoke"))
	{
		level.weapons["smoke"] = GetWeapon("smoke_grenade");
	}
	else
	{
		level.weapons["smoke"] = "";
	}
	if(tweakables::getTweakableValue("weapon", "allowflash"))
	{
		level.weapons["flash"] = GetWeapon("flash_grenade");
	}
	else
	{
		level.weapons["flash"] = "";
	}
	level.weapons["concussion"] = GetWeapon("concussion_grenade");
	if(tweakables::getTweakableValue("weapon", "allowsatchel"))
	{
		level.weapons["satchel_charge"] = GetWeapon("satchel_charge");
	}
	else
	{
		level.weapons["satchel_charge"] = "";
	}
	if(tweakables::getTweakableValue("weapon", "allowbetty"))
	{
		level.weapons["betty"] = GetWeapon("mine_bouncing_betty");
	}
	else
	{
		level.weapons["betty"] = "";
	}
	if(tweakables::getTweakableValue("weapon", "allowrpgs"))
	{
		level.weapons["rpg"] = GetWeapon("rpg");
	}
	else
	{
		level.weapons["rpg"] = "";
	}
	create_class_exclusion_list();
	cac_init();
	load_default_loadout("CLASS_SMG", 10);
	load_default_loadout("CLASS_CQB", 11);
	load_default_loadout("CLASS_ASSAULT", 12);
	load_default_loadout("CLASS_LMG", 13);
	load_default_loadout("CLASS_SNIPER", 14);
	level.primary_weapon_array = [];
	level.side_arm_array = [];
	level.grenade_array = [];
	level.inventory_array = [];
	max_weapon_num = 99;
	for(i = 0; i < max_weapon_num; i++)
	{
		if(!isdefined(level.tbl_weaponIDs[i]) || level.tbl_weaponIDs[i]["group"] == "")
		{
			break;
		}
		if(!isdefined(level.tbl_weaponIDs[i]) || level.tbl_weaponIDs[i]["reference"] == "")
		{
			break;
		}
		weapon_type = level.tbl_weaponIDs[i]["group"];
		weapon = level.tbl_weaponIDs[i]["reference"];
		attachment = level.tbl_weaponIDs[i]["attachment"];
		weapon_class_register(weapon, weapon_type);
		if(isdefined(attachment) && attachment != "")
		{
			attachment_tokens = StrTok(attachment, " ");
			if(isdefined(attachment_tokens))
			{
				if(attachment_tokens.size == 0)
				{
					weapon_class_register(weapon + "_" + attachment, weapon_type);
					break;
				}
				for(K = 0; K < attachment_tokens.size; K++)
				{
					weapon_class_register(weapon + "_" + attachment_tokens[K], weapon_type);
				}
			}
		}
	}
	level thread onPlayerConnecting();
}

/*
	Name: function_adca0ced
	Namespace: loadout
	Checksum: 0x123A8588
	Offset: 0x1308
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_adca0ced()
{
	level flag::wait_till("all_players_spawned");
	savegame::function_37ae30c6();
}

/*
	Name: function_ef129246
	Namespace: loadout
	Checksum: 0x439D2521
	Offset: 0x1348
	Size: 0x123
	Parameters: 0
	Flags: None
*/
function function_ef129246()
{
	self savegame::function_bee608f0("playerClass", undefined);
	self savegame::function_bee608f0("altPlayerID", undefined);
	self savegame::function_bee608f0("saved_weapon", undefined);
	self savegame::function_bee608f0("saved_weapondata", undefined);
	self savegame::function_bee608f0("lives", undefined);
	self savegame::function_bee608f0("saved_rig1", undefined);
	self savegame::function_bee608f0("saved_rig1_upgraded", undefined);
	self savegame::function_bee608f0("saved_rig2", undefined);
	self savegame::function_bee608f0("saved_rig2_upgraded", undefined);
}

/*
	Name: create_class_exclusion_list
	Namespace: loadout
	Checksum: 0x21DC74D3
	Offset: 0x1478
	Size: 0xFB
	Parameters: 0
	Flags: None
*/
function create_class_exclusion_list()
{
	currentDvar = 0;
	level.itemExclusions = [];
	while(GetDvarInt("item_exclusion_" + currentDvar))
	{
		level.itemExclusions[currentDvar] = GetDvarInt("item_exclusion_" + currentDvar);
		currentDvar++;
	}
	level.attachmentExclusions = [];
	for(currentDvar = 0; GetDvarString("attachment_exclusion_" + currentDvar) != ""; currentDvar++)
	{
		level.attachmentExclusions[currentDvar] = GetDvarString("attachment_exclusion_" + currentDvar);
	}
}

/*
	Name: is_attachment_excluded
	Namespace: loadout
	Checksum: 0xA940AE62
	Offset: 0x1580
	Size: 0x67
	Parameters: 1
	Flags: None
*/
function is_attachment_excluded(attachment)
{
	numExclusions = level.attachmentExclusions.size;
	for(exclusionIndex = 0; exclusionIndex < numExclusions; exclusionIndex++)
	{
		if(attachment == level.attachmentExclusions[exclusionIndex])
		{
			return 1;
		}
	}
	return 0;
}

/*
	Name: set_statstable_id
	Namespace: loadout
	Checksum: 0x7FE68AEA
	Offset: 0x15F0
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function set_statstable_id()
{
	if(!isdefined(level.statsTableID))
	{
		level.statsTableID = TableLookupFindCoreAsset(util::getStatsTableName());
	}
}

/*
	Name: get_item_count
	Namespace: loadout
	Checksum: 0xD9D32469
	Offset: 0x1638
	Size: 0x7B
	Parameters: 1
	Flags: None
*/
function get_item_count(itemReference)
{
	set_statstable_id();
	itemCount = Int(tableLookup(level.statsTableID, 4, itemReference, 5));
	if(itemCount < 1)
	{
		itemCount = 1;
	}
	return itemCount;
}

/*
	Name: getDefaultClassSlotWithExclusions
	Namespace: loadout
	Checksum: 0xFC8E1E19
	Offset: 0x16C0
	Size: 0xCB
	Parameters: 2
	Flags: None
*/
function getDefaultClassSlotWithExclusions(classname, slotName)
{
	itemReference = GetDefaultClassSlot(classname, slotName);
	set_statstable_id();
	itemIndex = Int(tableLookup(level.statsTableID, 4, itemReference, 0));
	if(is_item_excluded(itemIndex))
	{
		itemReference = tableLookup(level.statsTableID, 0, 0, 4);
	}
	return itemReference;
}

/*
	Name: load_default_loadout
	Namespace: loadout
	Checksum: 0x607C0ABC
	Offset: 0x1798
	Size: 0x25
	Parameters: 2
	Flags: None
*/
function load_default_loadout(weaponClass, classNum)
{
	level.classToClassNum[weaponClass] = classNum;
}

/*
	Name: weapon_class_register
	Namespace: loadout
	Checksum: 0x3388CAE8
	Offset: 0x17C8
	Size: 0x173
	Parameters: 2
	Flags: None
*/
function weapon_class_register(weaponName, weapon_type)
{
	if(IsSubStr("weapon_smg weapon_cqb weapon_assault weapon_lmg weapon_sniper weapon_shotgun weapon_launcher weapon_special", weapon_type))
	{
		level.primary_weapon_array[GetWeapon(weaponName)] = 1;
	}
	else if(IsSubStr("weapon_pistol", weapon_type))
	{
		level.side_arm_array[GetWeapon(weaponName)] = 1;
	}
	else if(weapon_type == "weapon_grenade")
	{
		level.grenade_array[GetWeapon(weaponName)] = 1;
	}
	else if(weapon_type == "weapon_explosive")
	{
		level.inventory_array[GetWeapon(weaponName)] = 1;
	}
	else if(weapon_type == "weapon_rifle")
	{
		level.inventory_array[GetWeapon(weaponName)] = 1;
	}
	else
	{
		Assert(0, "Dev Block strings are not supported" + weapon_type);
	}
	/#
	#/
}

/*
	Name: cac_init
	Namespace: loadout
	Checksum: 0x7CB62687
	Offset: 0x1948
	Size: 0x4CB
	Parameters: 0
	Flags: None
*/
function cac_init()
{
	level.tbl_weaponIDs = [];
	set_statstable_id();
	for(i = 0; i < 256; i++)
	{
		itemRow = TableLookupRowNum(level.statsTableID, 0, i);
		if(itemRow > -1)
		{
			group_s = TableLookupColumnForRow(level.statsTableID, itemRow, 2);
			if(IsSubStr(group_s, "weapon_") || group_s == "hero")
			{
				reference_s = TableLookupColumnForRow(level.statsTableID, itemRow, 4);
				if(reference_s != "")
				{
					weapon = GetWeapon(reference_s);
					level.tbl_weaponIDs[i]["reference"] = reference_s;
					level.tbl_weaponIDs[i]["group"] = group_s;
					level.tbl_weaponIDs[i]["count"] = Int(TableLookupColumnForRow(level.statsTableID, itemRow, 5));
					level.tbl_weaponIDs[i]["attachment"] = TableLookupColumnForRow(level.statsTableID, itemRow, 8);
				}
			}
		}
	}
	level.perkNames = [];
	for(i = 0; i < 256; i++)
	{
		itemRow = TableLookupRowNum(level.statsTableID, 0, i);
		if(itemRow > -1)
		{
			group_s = TableLookupColumnForRow(level.statsTableID, itemRow, 2);
			if(group_s == "specialty")
			{
				reference_s = TableLookupColumnForRow(level.statsTableID, itemRow, 4);
				if(reference_s != "")
				{
					perkicon = TableLookupColumnForRow(level.statsTableID, itemRow, 6);
					perkname = tableLookupIString(level.statsTableID, 0, i, 3);
					level.perkNames[perkicon] = perkname;
				}
			}
		}
	}
	level.killStreakNames = [];
	level.killStreakIcons = [];
	level.killstreakindices = [];
	for(i = 0; i < 256; i++)
	{
		itemRow = TableLookupRowNum(level.statsTableID, 0, i);
		if(itemRow > -1)
		{
			group_s = TableLookupColumnForRow(level.statsTableID, itemRow, 2);
			if(group_s == "killstreak")
			{
				reference_s = TableLookupColumnForRow(level.statsTableID, itemRow, 4);
				if(reference_s != "")
				{
					level.tbl_KillStreakData[i] = reference_s;
					level.killstreakindices[reference_s] = i;
					icon = TableLookupColumnForRow(level.statsTableID, itemRow, 6);
					name = tableLookupIString(level.statsTableID, 0, i, 3);
					level.killStreakNames[reference_s] = name;
					level.killStreakIcons[reference_s] = icon;
					level.killstreakindices[reference_s] = i;
				}
			}
		}
	}
}

/*
	Name: getClassChoice
	Namespace: loadout
	Checksum: 0x371BBA63
	Offset: 0x1E20
	Size: 0x3F
	Parameters: 1
	Flags: None
*/
function getClassChoice(response)
{
	/#
		Assert(isdefined(level.classMap[response]));
	#/
	return level.classMap[response];
}

/*
	Name: getAttachmentString
	Namespace: loadout
	Checksum: 0xCFF28077
	Offset: 0x1E68
	Size: 0x87
	Parameters: 2
	Flags: None
*/
function getAttachmentString(weaponNum, attachmentNum)
{
	attachmentString = GetItemAttachment(weaponNum, attachmentNum);
	if(attachmentString != "none" && !is_attachment_excluded(attachmentString))
	{
		attachmentString = attachmentString + "_";
	}
	else
	{
		attachmentString = "";
	}
	return attachmentString;
}

/*
	Name: getAttachmentsDisabled
	Namespace: loadout
	Checksum: 0x1B070991
	Offset: 0x1EF8
	Size: 0x19
	Parameters: 0
	Flags: None
*/
function getAttachmentsDisabled()
{
	if(!isdefined(level.attachmentsDisabled))
	{
		return 0;
	}
	return level.attachmentsDisabled;
}

/*
	Name: getKillStreakIndex
	Namespace: loadout
	Checksum: 0x6CDAAFD1
	Offset: 0x1F20
	Size: 0x93
	Parameters: 2
	Flags: None
*/
function getKillStreakIndex(weaponClass, killstreakNum)
{
	killstreakNum++;
	killstreakString = "killstreak" + killstreakNum;
	if(GetDvarInt("custom_killstreak_mode") == 2)
	{
		return GetDvarInt("custom_" + killstreakString);
	}
	else
	{
		return self GetLoadoutItem(weaponClass, killstreakString);
	}
}

/*
	Name: isPerkGroup
	Namespace: loadout
	Checksum: 0xCC2134DA
	Offset: 0x1FC0
	Size: 0x29
	Parameters: 1
	Flags: None
*/
function isPerkGroup(perkname)
{
	return isdefined(perkname) && IsString(perkname);
}

/*
	Name: reset_specialty_slots
	Namespace: loadout
	Checksum: 0x64C94F7
	Offset: 0x1FF8
	Size: 0x17
	Parameters: 1
	Flags: None
*/
function reset_specialty_slots(class_num)
{
	self.specialty = [];
}

/*
	Name: initStaticWeaponsTime
	Namespace: loadout
	Checksum: 0xB12D28C9
	Offset: 0x2018
	Size: 0xF
	Parameters: 0
	Flags: None
*/
function initStaticWeaponsTime()
{
	self.staticWeaponsStartTime = GetTime();
}

/*
	Name: isEquipmentAllowed
	Namespace: loadout
	Checksum: 0xEB3E3950
	Offset: 0x2030
	Size: 0x35
	Parameters: 1
	Flags: None
*/
function isEquipmentAllowed(equipment_name)
{
	if(equipment_name == level.weapontacticalInsertion.name && level.disableTacInsert)
	{
		return 0;
	}
	return 1;
}

/*
	Name: isLeagueItemRestricted
	Namespace: loadout
	Checksum: 0x5DD6CF09
	Offset: 0x2070
	Size: 0x2D
	Parameters: 1
	Flags: None
*/
function isLeagueItemRestricted(item)
{
	if(level.leagueMatch)
	{
		return IsItemRestricted(item);
	}
	return 0;
}

/*
	Name: function_db96b564
	Namespace: loadout
	Checksum: 0x7CD601EC
	Offset: 0x20A8
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_db96b564(var_dc236bc8)
{
	if(level.gametype === "coop")
	{
		self thread cybercom::function_674d724c(0, !isdefined(var_dc236bc8) && var_dc236bc8);
	}
}

/*
	Name: giveLoadoutLevelSpecific
	Namespace: loadout
	Checksum: 0xE0E214D9
	Offset: 0x20F8
	Size: 0x73
	Parameters: 2
	Flags: None
*/
function giveLoadoutLevelSpecific(team, weaponClass)
{
	PixBeginEvent("giveLoadoutLevelSpecific");
	if(isdefined(level.giveCustomCharacters))
	{
		self [[level.giveCustomCharacters]]();
	}
	if(isdefined(level.giveCustomLoadout))
	{
		self [[level.giveCustomLoadout]]();
	}
	PixEndEvent();
}

/*
	Name: giveLoadout
	Namespace: loadout
	Checksum: 0x74E170FE
	Offset: 0x2178
	Size: 0x19C3
	Parameters: 4
	Flags: None
*/
function giveLoadout(team, weaponClass, var_dc236bc8, var_5a13c491)
{
	PixBeginEvent("giveLoadout");
	self TakeAllWeapons();
	primaryIndex = 0;
	self.specialty = [];
	self.killstreak = [];
	self notify("give_map");
	class_num_for_global_weapons = 0;
	primaryWeaponOptions = 0;
	secondaryWeaponOptions = 0;
	playerRenderOptions = 0;
	primaryGrenadeCount = 0;
	isCustomClass = 0;
	if(IsSubStr(weaponClass, "CLASS_CUSTOM"))
	{
		PixBeginEvent("custom class");
		class_num = Int(weaponClass[weaponClass.size - 1]) - 1;
		if(-1 == class_num)
		{
			class_num = 9;
		}
		self.class_num = class_num;
		if(isdefined(var_5a13c491))
		{
			self.var_6f9a6c8e = 1;
		}
		else
		{
			self.var_6f9a6c8e = undefined;
		}
		self reset_specialty_slots(class_num);
		playerRenderOptions = self CalcPlayerOptions(class_num);
		class_num_for_global_weapons = class_num;
		isCustomClass = 1;
		PixEndEvent();
	}
	else
	{
		PixBeginEvent("default class");
		/#
			Assert(isdefined(self.pers["Dev Block strings are not supported"]), "Dev Block strings are not supported");
		#/
		class_num = level.classToClassNum[weaponClass];
		if(!isdefined(class_num))
		{
			if(self util::is_bot())
			{
				class_num = Array::random(level.classToClassNum);
			}
			else
			{
				Assert(0, "Dev Block strings are not supported" + weaponClass + "Dev Block strings are not supported");
			}
			/#
			#/
		}
		self.class_num = class_num;
		PixEndEvent();
	}
	knifeWeaponOptions = self CalcWeaponOptions(class_num, 2);
	/#
		println("Dev Block strings are not supported" + self.name + "Dev Block strings are not supported" + level.weaponBaseMelee.name + "Dev Block strings are not supported");
	#/
	self GiveWeapon(level.weaponBaseMelee, knifeWeaponOptions);
	self.specialty = self GetLoadoutPerks(class_num);
	if(level.leagueMatch)
	{
		for(i = 0; i < self.specialty.size; i++)
		{
			if(isLeagueItemRestricted(self.specialty[i]))
			{
				ArrayRemoveIndex(self.specialty, i);
				i--;
			}
		}
	}
	self SetPlayerStateLoadoutWeapons(class_num);
	self register_perks();
	self SetActionSlot(3, "altMode");
	self SetActionSlot(4, "");
	spawnWeapon = "";
	initialWeaponCount = 0;
	if(isdefined(self.pers["weapon"]) && self.pers["weapon"] != level.weaponNone && !self.pers["weapon"].isCarriedKillstreak)
	{
		primaryWeapon = self.pers["weapon"];
	}
	else
	{
		primaryWeapon = self GetLoadoutWeapon(class_num, "primary");
		if(isdefined(var_5a13c491))
		{
			primaryWeapon = var_5a13c491 GetLoadoutWeapon(class_num, "primary");
		}
	}
	if(primaryWeapon.isCarriedKillstreak)
	{
		primaryWeapon = level.weaponNull;
	}
	sidearm = self GetLoadoutWeapon(class_num, "secondary");
	if(isdefined(var_5a13c491))
	{
		sidearm = var_5a13c491 GetLoadoutWeapon(class_num, "secondary");
	}
	if(sidearm.isCarriedKillstreak)
	{
		sidearm = level.weaponNull;
	}
	self.primaryWeaponKill = 0;
	self.secondaryWeaponKill = 0;
	if(sidearm != level.weaponNull)
	{
		secondaryWeaponOptions = self CalcWeaponOptions(class_num, 1);
		if(isdefined(var_5a13c491))
		{
			secondaryWeaponOptions = var_5a13c491 CalcWeaponOptions(class_num, 1);
		}
		/#
			println("Dev Block strings are not supported" + self.name + "Dev Block strings are not supported" + sidearm.name + "Dev Block strings are not supported");
		#/
		acvi = self GetAttachmentCosmeticVariantForWeapon(class_num, "secondary");
		if(isdefined(var_5a13c491))
		{
			acvi = var_5a13c491 GetAttachmentCosmeticVariantForWeapon(class_num, "secondary");
		}
		self GiveWeapon(sidearm, secondaryWeaponOptions, acvi);
		self.secondaryLoadoutWeapon = sidearm;
		self.secondaryLoadoutAltWeapon = sidearm.altweapon;
		self.secondaryLoadoutGunSmithVariantIndex = self GetLoadoutGunSmithVariantIndex(self.class_num, 1);
		if(isdefined(var_5a13c491))
		{
			self.secondaryLoadoutGunSmithVariantIndex = var_5a13c491 GetLoadoutGunSmithVariantIndex(self.class_num, 1);
		}
		self giveMaxAmmo(sidearm);
		spawnWeapon = sidearm;
		initialWeaponCount++;
	}
	self.pers["primaryWeapon"] = primaryWeapon;
	if(primaryWeapon != level.weaponNull)
	{
		primaryWeaponOptions = self CalcWeaponOptions(class_num, 0);
		if(isdefined(var_5a13c491))
		{
			primaryWeaponOptions = var_5a13c491 CalcWeaponOptions(class_num, 0);
		}
		/#
			println("Dev Block strings are not supported" + self.name + "Dev Block strings are not supported" + primaryWeapon.name + "Dev Block strings are not supported");
		#/
		acvi = self GetAttachmentCosmeticVariantForWeapon(class_num, "primary");
		if(isdefined(var_5a13c491))
		{
			acvi = var_5a13c491 GetAttachmentCosmeticVariantForWeapon(class_num, "primary");
		}
		self GiveWeapon(primaryWeapon, primaryWeaponOptions, acvi);
		self.primaryLoadoutWeapon = primaryWeapon;
		self.primaryLoadoutAltWeapon = primaryWeapon.altweapon;
		self.primaryLoadoutGunSmithVariantIndex = self GetLoadoutGunSmithVariantIndex(self.class_num, 0);
		if(isdefined(var_5a13c491))
		{
			self.primaryLoadoutGunSmithVariantIndex = var_5a13c491 GetLoadoutGunSmithVariantIndex(self.class_num, 0);
		}
		self giveMaxAmmo(primaryWeapon);
		spawnWeapon = primaryWeapon;
		initialWeaponCount++;
	}
	if(isdefined(self.var_82325a18))
	{
		var_82325a18 = StrTok(self.var_82325a18, ",");
		foreach(weaponName in var_82325a18)
		{
			heroWeapon = GetWeapon(weaponName);
			self GiveWeapon(heroWeapon);
			self giveMaxAmmo(heroWeapon);
		}
	}
	else if(!self HasMaxPrimaryWeapons())
	{
		if(!isUsingT7Melee())
		{
			/#
				println("Dev Block strings are not supported" + self.name + "Dev Block strings are not supported" + level.weaponBaseMeleeHeld.name + "Dev Block strings are not supported");
			#/
			self GiveWeapon(level.weaponBaseMeleeHeld, knifeWeaponOptions);
		}
		if(initialWeaponCount == 0)
		{
			spawnWeapon = level.weaponBaseMeleeHeld;
		}
	}
	if(!isdefined(self.spawnWeapon) && isdefined(self.pers["spawnWeapon"]))
	{
		self.spawnWeapon = self.pers["spawnWeapon"];
	}
	if(isdefined(self.spawnWeapon) && DoesWeaponReplaceSpawnWeapon(self.spawnWeapon, spawnWeapon) && !self.pers["changed_class"])
	{
		spawnWeapon = self.spawnWeapon;
	}
	changedClass = self.pers["changed_class"];
	roundBased = !util::isOneRound();
	firstRound = util::isFirstRound();
	self.pers["changed_class"] = 0;
	self.spawnWeapon = spawnWeapon;
	self.pers["spawnWeapon"] = self.spawnWeapon;
	self setSpawnWeapon(spawnWeapon);
	self.grenadeTypePrimary = level.weaponNone;
	self.grenadeTypePrimaryCount = 0;
	self.grenadeTypeSecondary = level.weaponNone;
	self.grenadeTypeSecondaryCount = 0;
	primaryOffhand = level.weaponNone;
	primaryOffhandCount = 0;
	secondaryOffhand = level.weaponNone;
	secondaryOffhandCount = 0;
	specialOffhand = level.weaponNone;
	specialOffhandCount = 0;
	if(GetDvarInt("gadgetEnabled") == 1 || GetDvarInt("equipmentAsGadgets") == 1)
	{
		primaryOffhand = self GetLoadoutWeapon(class_num, "primaryGadget");
		if(isdefined(var_5a13c491))
		{
			primaryOffhand = var_5a13c491 GetLoadoutWeapon(class_num, "primaryGadget");
		}
		primaryOffhandCount = primaryOffhand.startammo;
	}
	else
	{
		primaryOffhandName = self GetLoadoutItemRef(class_num, "primarygrenade");
		if(isdefined(var_5a13c491))
		{
			primaryOffhandName = var_5a13c491 GetLoadoutItemRef(class_num, "primarygrenade");
		}
		if(primaryOffhandName != "" && primaryOffhandName != "weapon_null")
		{
			primaryOffhand = GetWeapon(primaryOffhand);
			primaryOffhandCount = self GetLoadoutItem(class_num, "primarygrenadecount");
			if(isdefined(var_5a13c491))
			{
				primaryOffhandCount = var_5a13c491 GetLoadoutItem(class_num, "primarygrenadecount");
			}
		}
	}
	if(isLeagueItemRestricted(primaryOffhand.name) || !isEquipmentAllowed(primaryOffhand.name))
	{
		primaryOffhand = level.weaponNone;
		primaryOffhandCount = 0;
	}
	if(primaryOffhand == level.weaponNone)
	{
		primaryOffhand = level.weapons["frag"];
		primaryOffhandCount = 0;
	}
	if(primaryOffhand != level.weaponNull)
	{
		/#
			println("Dev Block strings are not supported" + self.name + "Dev Block strings are not supported" + primaryOffhand.name + "Dev Block strings are not supported");
		#/
		self GiveWeapon(primaryOffhand);
		self SetWeaponAmmoClip(primaryOffhand, primaryOffhandCount);
		self SwitchToOffhand(primaryOffhand);
		self.grenadeTypePrimary = primaryOffhand;
		self.grenadeTypePrimaryCount = primaryOffhandCount;
		self ability_util::gadget_reset(primaryOffhand, changedClass, roundBased, firstRound);
	}
	if(GetDvarInt("gadgetEnabled") == 1 || GetDvarInt("equipmentAsGadgets") == 1)
	{
		secondaryOffhand = self GetLoadoutWeapon(class_num, "secondaryGadget");
		if(isdefined(var_5a13c491))
		{
			secondaryOffhand = var_5a13c491 GetLoadoutWeapon(class_num, "secondaryGadget");
		}
		secondaryOffhandCount = secondaryOffhand.startammo;
	}
	else
	{
		secondaryOffhandName = self GetLoadoutItemRef(class_num, "specialgrenade");
		if(isdefined(var_5a13c491))
		{
			secondaryOffhandName = var_5a13c491 GetLoadoutItemRef(class_num, "specialgrenade");
		}
		if(secondaryOffhandName != "" && secondaryOffhandName != "weapon_null")
		{
			secondaryOffhand = GetWeapon(secondaryOffhand);
			secondaryOffhandCount = self GetLoadoutItem(class_num, "specialgrenadecount");
			if(isdefined(var_5a13c491))
			{
				secondaryOffhandCount = var_5a13c491 GetLoadoutItem(class_num, "specialgrenadecount");
			}
		}
	}
	if(isLeagueItemRestricted(secondaryOffhand.name) || !isEquipmentAllowed(secondaryOffhand.name))
	{
		secondaryOffhand = level.weaponNone;
		secondaryOffhandCount = 0;
	}
	if(secondaryOffhand == level.weaponNone)
	{
		secondaryOffhand = level.weapons["flash"];
		secondaryOffhandCount = 0;
	}
	if(secondaryOffhand != level.weaponNull)
	{
		/#
			println("Dev Block strings are not supported" + self.name + "Dev Block strings are not supported" + secondaryOffhand.name + "Dev Block strings are not supported");
		#/
		self GiveWeapon(secondaryOffhand);
		self SetWeaponAmmoClip(secondaryOffhand, secondaryOffhandCount);
		self SwitchToOffhand(secondaryOffhand);
		self.grenadeTypeSecondary = secondaryOffhand;
		self.grenadeTypeSecondaryCount = secondaryOffhandCount;
		self ability_util::gadget_reset(secondaryOffhand, changedClass, roundBased, firstRound);
	}
	if(GetDvarInt("gadgetEnabled") == 1 || GetDvarInt("equipmentAsGadgets") == 1)
	{
		specialOffhand = self GetLoadoutWeapon(class_num, "specialGadget");
		if(isdefined(var_5a13c491))
		{
			specialOffhand = var_5a13c491 GetLoadoutWeapon(class_num, "specialGadget");
		}
		specialOffhandCount = specialOffhand.startammo;
	}
	if(isLeagueItemRestricted(specialOffhand.name) || !isEquipmentAllowed(specialOffhand.name))
	{
		specialOffhand = level.weaponNone;
		specialOffhandCount = 0;
	}
	if(specialOffhand == level.weaponNone)
	{
		specialOffhand = level.weaponNull;
		specialOffhandCount = 0;
	}
	if(specialOffhand != level.weaponNull)
	{
		/#
			println("Dev Block strings are not supported" + self.name + "Dev Block strings are not supported" + specialOffhand.name + "Dev Block strings are not supported");
		#/
		self GiveWeapon(specialOffhand);
		self SetWeaponAmmoClip(specialOffhand, specialOffhandCount);
		self SwitchToOffhand(specialOffhand);
		self.grenadeTypeSpecial = specialOffhand;
		self.grenadeTypeSpecialCount = specialOffhandCount;
		self ability_util::gadget_reset(specialOffhand, changedClass, roundBased, firstRound);
	}
	if(level.gametype === "coop")
	{
		cybercom::function_4b8ac464(class_num, class_num_for_global_weapons, !isdefined(var_dc236bc8) && var_dc236bc8, var_5a13c491);
	}
	self bbClassChoice(class_num, primaryWeapon, sidearm);
	for(i = 0; i < 3; i++)
	{
		if(level.loadoutKillstreaksEnabled && isdefined(self.killstreak[i]) && isdefined(level.killstreakindices[self.killstreak[i]]))
		{
			killstreaks[i] = level.killstreakindices[self.killstreak[i]];
			continue;
		}
		killstreaks[i] = 0;
	}
	self RecordLoadoutPerksAndKillstreaks(primaryWeapon, sidearm, self.grenadeTypePrimary, self.grenadeTypeSecondary, killstreaks[0], killstreaks[1], killstreaks[2]);
	self teams::set_player_model(team, primaryWeapon);
	self initStaticWeaponsTime();
	self thread initWeaponAttachments(spawnWeapon);
	self SetPlayerRenderOptions(playerRenderOptions);
	if(isdefined(self.movementSpeedModifier))
	{
		self setMoveSpeedScale(self.movementSpeedModifier * self getMoveSpeedScale());
	}
	if(isdefined(level.giveCustomLoadout))
	{
		spawnWeapon = self [[level.giveCustomLoadout]]();
		if(isdefined(spawnWeapon))
		{
			self thread initWeaponAttachments(spawnWeapon);
		}
	}
	self cac_selector();
	if(!isdefined(self.firstSpawn))
	{
		if(isdefined(spawnWeapon))
		{
			self InitialWeaponRaise(spawnWeapon);
		}
		else
		{
			self InitialWeaponRaise(primaryWeapon);
		}
	}
	else
	{
		self SetEverHadWeaponAll(1);
	}
	var_f0b98892 = self savegame::function_36adbb9c("saved_weapon", undefined);
	if(isdefined(var_f0b98892) && (!isdefined(level.is_safehouse) && level.is_safehouse))
	{
		self player::take_weapons();
		self._current_weapon = util::get_weapon_by_name(var_f0b98892);
		self._weapons = self savegame::function_36adbb9c("saved_weapondata", undefined);
		self.lives = self savegame::function_36adbb9c("lives", 0);
		self player::give_back_weapons(0);
	}
	self.firstSpawn = 0;
	self.switchedTeamsResetGadgets = 0;
	if(system::is_system_running("cybercom"))
	{
		self flagsys::wait_till("cybercom_init");
	}
	self.initialLoadoutGiven = 1;
	self flagsys::set("loadout_given");
	callback::callback("hash_33bba039");
	PixEndEvent();
}

/*
	Name: setWeaponAmmoOverall
	Namespace: loadout
	Checksum: 0x597D816B
	Offset: 0x3B48
	Size: 0xD3
	Parameters: 2
	Flags: None
*/
function setWeaponAmmoOverall(weapon, amount)
{
	if(weapon.isClipOnly)
	{
		self SetWeaponAmmoClip(weapon, amount);
	}
	else
	{
		self SetWeaponAmmoClip(weapon, amount);
		diff = amount - self GetWeaponAmmoClip(weapon);
		/#
			Assert(diff >= 0);
		#/
		self SetWeaponAmmoStock(weapon, diff);
	}
}

/*
	Name: onPlayerConnecting
	Namespace: loadout
	Checksum: 0x878C629
	Offset: 0x3C28
	Size: 0xEF
	Parameters: 0
	Flags: None
*/
function onPlayerConnecting()
{
	for(;;)
	{
		level waittill("connecting", player);
		if(!level.oldschool)
		{
			if(!isdefined(player.pers["class"]))
			{
				player.pers["class"] = "";
			}
			player.curClass = player.pers["class"];
			player.lastClass = "";
		}
		player.detectExplosives = 0;
		player.bombSquadIcons = [];
		player.bombSquadIds = [];
		player.reviveIcons = [];
		player.reviveIds = [];
	}
}

/*
	Name: fadeAway
	Namespace: loadout
	Checksum: 0x31393425
	Offset: 0x3D20
	Size: 0x3F
	Parameters: 2
	Flags: None
*/
function fadeAway(waitDelay, fadeDelay)
{
	wait(waitDelay);
	self fadeOverTime(fadeDelay);
	self.alpha = 0;
}

/*
	Name: setClass
	Namespace: loadout
	Checksum: 0x5F10957A
	Offset: 0x3D68
	Size: 0x17
	Parameters: 1
	Flags: None
*/
function setClass(newClass)
{
	self.curClass = newClass;
}

/*
	Name: initPerkDvars
	Namespace: loadout
	Checksum: 0x8D23C057
	Offset: 0x3D88
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function initPerkDvars()
{
	level.cac_armorpiercing_data = GetDvarInt("perk_armorpiercing", 40) / 100;
	level.cac_bulletdamage_data = GetDvarInt("perk_bulletDamage", 35);
	level.cac_fireproof_data = GetDvarInt("perk_fireproof", 95);
	level.cac_armorvest_data = GetDvarInt("perk_armorVest", 80);
	level.cac_flakjacket_data = GetDvarInt("perk_flakJacket", 35);
	level.cac_flakjacket_hardcore_data = GetDvarInt("perk_flakJacket_hardcore", 9);
}

/*
	Name: cac_selector
	Namespace: loadout
	Checksum: 0x60BCFEF8
	Offset: 0x3E88
	Size: 0x81
	Parameters: 0
	Flags: None
*/
function cac_selector()
{
	PERKS = self.specialty;
	self.detectExplosives = 0;
	for(i = 0; i < PERKS.size; i++)
	{
		perk = PERKS[i];
		if(perk == "specialty_detectexplosive")
		{
			self.detectExplosives = 1;
		}
	}
}

/*
	Name: register_perks
	Namespace: loadout
	Checksum: 0xA24FF510
	Offset: 0x3F18
	Size: 0x133
	Parameters: 0
	Flags: None
*/
function register_perks()
{
	PERKS = self.specialty;
	self ClearPerks();
	for(i = 0; i < PERKS.size; i++)
	{
		perk = PERKS[i];
		if(perk == "specialty_null" || IsSubStr(perk, "specialty_weapon_") || perk == "weapon_null")
		{
			continue;
		}
		if(!level.perksEnabled)
		{
			continue;
		}
		/#
			println("Dev Block strings are not supported" + self.name + "Dev Block strings are not supported" + perk + "Dev Block strings are not supported");
		#/
		self setPerk(perk);
	}
	/#
		dev::giveExtraPerks();
	#/
}

/*
	Name: cac_modified_vehicle_damage
	Namespace: loadout
	Checksum: 0x1B85A4A2
	Offset: 0x4058
	Size: 0x1E9
	Parameters: 6
	Flags: None
*/
function cac_modified_vehicle_damage(victim, attacker, damage, meansOfDeath, weapon, inflictor)
{
	if(!isdefined(victim) || !isdefined(attacker) || !isPlayer(attacker))
	{
		return damage;
	}
	if(!isdefined(damage) || !isdefined(meansOfDeath) || !isdefined(weapon))
	{
		return damage;
	}
	old_damage = damage;
	final_damage = damage;
	if(attacker hasPerk("specialty_bulletdamage") && isPrimaryDamage(meansOfDeath))
	{
		final_damage = damage * 100 + level.cac_bulletdamage_data / 100;
		/#
			if(GetDvarInt("Dev Block strings are not supported"))
			{
				println("Dev Block strings are not supported" + attacker.name + "Dev Block strings are not supported");
			}
		#/
	}
	else
	{
		final_damage = old_damage;
	}
	/#
		if(GetDvarInt("Dev Block strings are not supported"))
		{
			println("Dev Block strings are not supported" + final_damage / old_damage + "Dev Block strings are not supported" + old_damage + "Dev Block strings are not supported" + final_damage);
		}
	#/
	return Int(final_damage);
}

/*
	Name: cac_modified_damage
	Namespace: loadout
	Checksum: 0xA2D23203
	Offset: 0x4250
	Size: 0x6B3
	Parameters: 7
	Flags: None
*/
function cac_modified_damage(victim, attacker, damage, mod, weapon, inflictor, hitLoc)
{
	/#
		Assert(isdefined(victim));
	#/
	/#
		Assert(isdefined(attacker));
	#/
	/#
		Assert(isPlayer(victim));
	#/
	if(damage <= 0)
	{
		return damage;
	}
	/#
		debug = 0;
		if(GetDvarInt("Dev Block strings are not supported"))
		{
			debug = 1;
		}
	#/
	final_damage = damage;
	if(isPlayer(attacker) && attacker hasPerk("specialty_bulletdamage") && isPrimaryDamage(mod))
	{
		if(victim hasPerk("specialty_armorvest") && !isHeadDamage(hitLoc))
		{
			/#
				if(debug)
				{
					println("Dev Block strings are not supported" + victim.name + "Dev Block strings are not supported" + attacker.name + "Dev Block strings are not supported");
				}
			#/
		}
		else
		{
			final_damage = damage * 100 + level.cac_bulletdamage_data / 100;
			/#
				if(debug)
				{
					println("Dev Block strings are not supported" + attacker.name + "Dev Block strings are not supported" + victim.name);
				}
			#/
		}
	}
	else if(victim hasPerk("specialty_armorvest") && isPrimaryDamage(mod) && !isHeadDamage(hitLoc))
	{
		final_damage = damage * level.cac_armorvest_data * 0.01;
		/#
			if(debug)
			{
				println("Dev Block strings are not supported" + attacker.name + "Dev Block strings are not supported" + victim.name);
			}
		#/
	}
	else if(victim hasPerk("specialty_fireproof") && isFireDamage(weapon, mod))
	{
		final_damage = damage * 100 - level.cac_fireproof_data / 100;
		/#
			if(debug)
			{
				println("Dev Block strings are not supported" + attacker.name + "Dev Block strings are not supported" + victim.name);
			}
		#/
	}
	else if(victim hasPerk("specialty_flakjacket") && isExplosiveDamage(mod) && !weapon.ignoresFlakJacket && !victim grenadeStuck(inflictor))
	{
		if(level.hardcoreMode)
		{
		}
		else
		{
		}
		cac_data = level.cac_flakjacket_data;
		if(level.teambased && attacker.team != victim.team)
		{
			victim thread challenges::flakjacketProtected(weapon, attacker);
		}
		else if(attacker != victim)
		{
			victim thread challenges::flakjacketProtected(weapon, attacker);
		}
		final_damage = Int(damage * cac_data / 100);
		/#
			if(debug)
			{
				println("Dev Block strings are not supported" + victim.name + "Dev Block strings are not supported" + attacker.name + "Dev Block strings are not supported");
			}
		#/
	}
	/#
		victim.cac_debug_damage_type = ToLower(mod);
		victim.cac_debug_original_damage = damage;
		victim.cac_debug_final_damage = final_damage;
		victim.cac_debug_location = ToLower(hitLoc);
		victim.cac_debug_weapon = ToLower(weapon.name);
		victim.cac_debug_range = Int(Distance(attacker.origin, victim.origin));
		if(debug)
		{
			println("Dev Block strings are not supported" + final_damage / damage + "Dev Block strings are not supported" + damage + "Dev Block strings are not supported" + final_damage);
		}
	#/
	final_damage = Int(final_damage);
	if(final_damage < 1)
	{
		final_damage = 1;
	}
	return final_damage;
}

/*
	Name: isExplosiveDamage
	Namespace: loadout
	Checksum: 0xF7BAD875
	Offset: 0x4910
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function isExplosiveDamage(meansOfDeath)
{
	switch(meansOfDeath)
	{
		case "MOD_EXPLOSIVE":
		case "MOD_GRENADE":
		case "MOD_GRENADE_SPLASH":
		case "MOD_PROJECTILE_SPLASH":
		{
			return 1;
		}
	}
	return 0;
}

/*
	Name: hasTacticalMask
	Namespace: loadout
	Checksum: 0x608F1DC
	Offset: 0x4960
	Size: 0x69
	Parameters: 1
	Flags: None
*/
function hasTacticalMask(player)
{
	return player hasPerk("specialty_stunprotection") || player hasPerk("specialty_flashprotection") || player hasPerk("specialty_proximityprotection");
}

/*
	Name: isPrimaryDamage
	Namespace: loadout
	Checksum: 0xB68B04CB
	Offset: 0x49D8
	Size: 0x27
	Parameters: 1
	Flags: None
*/
function isPrimaryDamage(meansOfDeath)
{
	return meansOfDeath == "MOD_RIFLE_BULLET" || meansOfDeath == "MOD_PISTOL_BULLET";
}

/*
	Name: isFireDamage
	Namespace: loadout
	Checksum: 0x4340341D
	Offset: 0x4A08
	Size: 0x5F
	Parameters: 2
	Flags: None
*/
function isFireDamage(weapon, meansOfDeath)
{
	if(weapon.doesFireDamage && (meansOfDeath == "MOD_BURNED" || meansOfDeath == "MOD_GRENADE" || meansOfDeath == "MOD_GRENADE_SPLASH"))
	{
		return 1;
	}
	return 0;
}

/*
	Name: isHeadDamage
	Namespace: loadout
	Checksum: 0xDA8B9793
	Offset: 0x4A70
	Size: 0x37
	Parameters: 1
	Flags: None
*/
function isHeadDamage(hitLoc)
{
	return hitLoc == "helmet" || hitLoc == "head" || hitLoc == "neck";
}

/*
	Name: grenadeStuck
	Namespace: loadout
	Checksum: 0x4E4CD6FD
	Offset: 0x4AB0
	Size: 0x39
	Parameters: 1
	Flags: None
*/
function grenadeStuck(inflictor)
{
	return isdefined(inflictor) && isdefined(inflictor.stuckToPlayer) && inflictor.stuckToPlayer == self;
}

