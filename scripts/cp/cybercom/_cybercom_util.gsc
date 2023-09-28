#using scripts\codescripts\struct;
#using scripts\cp\_bb;
#using scripts\cp\cybercom\_cybercom_dev;
#using scripts\cp\cybercom\_cybercom_gadget;
#using scripts\cp\cybercom\_cybercom_tactical_rig;
#using scripts\cp\cybercom\_cybercom_tactical_rig_emergencyreserve;
#using scripts\cp\gametypes\_save;
#using scripts\shared\ai\systems\blackboard;
#using scripts\shared\ai\systems\gib;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\hud_util_shared;
#using scripts\shared\math_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace cybercom;

/*
	Name: function_da99f3e1
	Namespace: cybercom
	Checksum: 0x4145CA4F
	Offset: 0x808
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_da99f3e1()
{
	level flagsys::wait_till("load_main_complete");
	/#
		level thread namespace_afd2f70b::function_b9907dab();
	#/
	SetDvar("scr_max_simLocks", 5);
}

/*
	Name: function_80fe1bad
	Namespace: cybercom
	Checksum: 0xFB05D0E3
	Offset: 0x870
	Size: 0x2E9
	Parameters: 1
	Flags: None
*/
function function_80fe1bad(vehicle)
{
	if(isdefined(vehicle.archetype))
	{
		vehicle.var_9147087d = [];
		switch(vehicle.archetype)
		{
			case "hunter":
			{
				vehicle.noCybercom = 1;
				break;
			}
			case "quadtank":
			{
				vehicle function_59965309("cybercom_surge");
				vehicle function_59965309("cybercom_servoshortout");
				vehicle function_59965309("cybercom_systemoverload");
				vehicle function_59965309("cybercom_smokescreen");
				vehicle function_59965309("cybercom_immolate");
				vehicle.var_9147087d["cybercom_hijack"] = GetDvarInt("scr_hacktime_quadtank", 11);
				vehicle.var_9147087d["cybercom_iffoverride"] = GetDvarInt("scr_hacktime_quadtank", 11);
				vehicle.var_6c8af4c4 = 0;
				vehicle.var_ced13b2f = 1;
				break;
			}
			case "siegebot":
			{
				vehicle function_59965309("cybercom_surge");
				vehicle function_59965309("cybercom_servoshortout");
				vehicle function_59965309("cybercom_smokescreen");
				vehicle function_59965309("cybercom_immolate");
				vehicle.var_9147087d["cybercom_hijack"] = GetDvarInt("scr_hacktime_siegebot", 9);
				vehicle.var_9147087d["cybercom_iffoverride"] = GetDvarInt("scr_hacktime_siegebot", 9);
				vehicle.var_6c8af4c4 = 0;
				vehicle.var_ced13b2f = 1;
				break;
			}
			case "glaive":
			case "parasite":
			{
				vehicle.noCybercom = 1;
			}
			case default:
			{
				break;
			}
		}
	}
}

/*
	Name: vehicle_destruct_cybercom
	Namespace: cybercom
	Checksum: 0x6561C314
	Offset: 0xB68
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function vehicle_destruct_cybercom(vehicle)
{
	vehicle clientfield::set("cybercom_shortout", 0);
	vehicle clientfield::set("cybercom_surge", 0);
}

/*
	Name: vehicle_update_cybercom_defense
	Namespace: cybercom
	Checksum: 0x8B6F84FA
	Offset: 0xBC0
	Size: 0x4D
	Parameters: 2
	Flags: None
*/
function vehicle_update_cybercom_defense(vehicle, var_b5ddd355)
{
	if(var_b5ddd355)
	{
		vehicle.var_f40d252c = 1;
	}
	else
	{
		vehicle.var_d3f57f67 = undefined;
		vehicle.var_f40d252c = undefined;
	}
}

/*
	Name: function_facd1caa
	Namespace: cybercom
	Checksum: 0x83C8EF19
	Offset: 0xC18
	Size: 0x14B
	Parameters: 0
	Flags: None
*/
function function_facd1caa()
{
	self.cybercom.flags.var_68ec1e9e = self function_814d6f0c();
	self function_4b916b34();
	self.cybercom.flags.type = self function_2eef1193();
	self.cybercom.flags.abilities = [];
	self.cybercom.flags.upgrades = [];
	for(i = 0; i <= 2; i++)
	{
		self.cybercom.flags.abilities[i] = self function_9d0fefb1(i);
		self.cybercom.flags.upgrades[i] = self function_9d36c436(i);
	}
}

/*
	Name: function_b6b97f75
	Namespace: cybercom
	Checksum: 0xEA6ACD9D
	Offset: 0xD70
	Size: 0x7D
	Parameters: 0
	Flags: None
*/
function function_b6b97f75()
{
	self function_facd1caa();
	self.cybercom.var_578ffe14 = self namespace_d00ec32::function_d6be99c6();
	self.cybercom.menu = "AbilityWheel";
	self.pers["cybercom_flags"] = self.cybercom.flags;
}

/*
	Name: function_222dca46
	Namespace: cybercom
	Checksum: 0xDA0CE597
	Offset: 0xDF8
	Size: 0xF5
	Parameters: 0
	Flags: None
*/
function function_222dca46()
{
	self function_7bd2c4b9(self.cybercom.flags.var_68ec1e9e);
	self function_751ff137(self.cybercom.flags.type);
	for(i = 0; i <= 2; i++)
	{
		self function_9a5a502a(self.cybercom.flags.abilities[i], i);
		self function_88655a58(self.cybercom.flags.upgrades[i], i);
	}
}

/*
	Name: function_ddcda2fd
	Namespace: cybercom
	Checksum: 0x72C9F525
	Offset: 0xEF8
	Size: 0x209
	Parameters: 1
	Flags: None
*/
function function_ddcda2fd(flags)
{
	if(isdefined(flags))
	{
		self.cybercom.flags = flags;
	}
	self function_222dca46();
	self function_b6b97f75();
	foreach(ability in self.cybercom.var_578ffe14)
	{
		status = self function_1a9006bd(ability.name);
		if(status == 0)
		{
			continue;
		}
		self namespace_d00ec32::function_c381ce2(ability, status == 2);
	}
	foreach(ability in level.var_ab0cd3b2)
	{
		status = self function_76f34311(ability.name);
		if(status == 0)
		{
			continue;
		}
		self namespace_726a1ef0::function_fea5c2ac(ability.name, status == 2);
	}
}

/*
	Name: function_cc812e3b
	Namespace: cybercom
	Checksum: 0xDC551EBC
	Offset: 0x1110
	Size: 0x5D
	Parameters: 1
	Flags: None
*/
function function_cc812e3b(var_632e4fca)
{
	itemIndex = GetItemIndexFromRef(var_632e4fca + "_pro");
	if(itemIndex != -1)
	{
		return self isItemPurchased(itemIndex);
	}
	return 0;
}

/*
	Name: function_8b088b97
	Namespace: cybercom
	Checksum: 0x8BA64885
	Offset: 0x1178
	Size: 0x1B9
	Parameters: 1
	Flags: None
*/
function function_8b088b97(var_f1362994)
{
	function_aacf4c41("CYBERCORE: " + var_f1362994);
	abilities = namespace_d00ec32::function_ef1b66d4(var_f1362994);
	foreach(ability in abilities)
	{
		itemIndex = GetItemIndexFromRef(ability.name);
		if(self isItemPurchased(itemIndex))
		{
			upgraded = self function_cc812e3b(ability.name);
			self setcybercomability(ability.name, upgraded);
			function_aacf4c41(ability.name + " UPGRADED: " + upgraded);
			continue;
		}
		function_aacf4c41(ability.name + " NOT INSTALLED");
	}
}

/*
	Name: function_1e4531c7
	Namespace: cybercom
	Checksum: 0x9F684B2C
	Offset: 0x1340
	Size: 0xC5
	Parameters: 1
	Flags: None
*/
function function_1e4531c7(var_e4230c26)
{
	switch(var_e4230c26)
	{
		case 0:
		{
			self namespace_d00ec32::function_c381ce2(namespace_d00ec32::function_85c33215("cybercom_ravagecore"));
			break;
		}
		case 1:
		{
			self namespace_d00ec32::function_c381ce2(namespace_d00ec32::function_85c33215("cybercom_rapidstrike"));
			break;
		}
		case 2:
		{
			self namespace_d00ec32::function_c381ce2(namespace_d00ec32::function_85c33215("cybercom_es_strike"));
			break;
		}
	}
}

/*
	Name: function_1adaa876
	Namespace: cybercom
	Checksum: 0xAC7A0738
	Offset: 0x1410
	Size: 0x3A9
	Parameters: 2
	Flags: None
*/
function function_1adaa876(var_e4230c26, var_f4132a83)
{
	if(SessionModeIsCampaignZombiesGame())
	{
		return;
	}
	var_d66f8a9e = Int(self GetDStat("PlayerStatsList", "LAST_CYBERCOM_EQUIPPED", "statValue"));
	var_2324b7c = var_d66f8a9e & 1024 - 1;
	var_768ee804 = var_d66f8a9e >> 10;
	self function_1e4531c7(var_e4230c26);
	if(isdefined(var_f4132a83) && var_f4132a83 && var_2324b7c > 99 && var_2324b7c < 142)
	{
		var_cac3be21 = tableLookup("gamedata/stats/cp/cp_statstable.csv", 0, var_2324b7c, 4);
		var_b5725157 = namespace_d00ec32::function_85c33215(var_cac3be21);
		if(self function_1a9006bd(var_b5725157.name))
		{
			if(var_e4230c26 == var_b5725157.type || self function_6e0bf068() || (isdefined(self.var_fe7a7fe4) && self.var_fe7a7fe4 == 1))
			{
				self function_751ff137(var_b5725157.type);
				self.var_768ee804 = var_768ee804;
				self namespace_d00ec32::function_eb512967(var_b5725157.name, 0);
				self SetControllerUIModelValue("AbilityWheel.Selected" + var_b5725157.type + 1, self.var_768ee804);
				return;
			}
		}
	}
	self clientfield::set_to_player("resetAbilityWheel", 1);
	self function_751ff137(var_e4230c26);
	abilities = namespace_d00ec32::function_ef1b66d4(var_e4230c26);
	var_fb0372cb = 1;
	foreach(ability in abilities)
	{
		if(self function_1a9006bd(ability.name))
		{
			self.var_768ee804 = var_fb0372cb;
			self namespace_d00ec32::function_eb512967(ability.name, 0);
			self SetControllerUIModelValue("AbilityWheel.Selected" + ability.type + 1, var_fb0372cb);
			return;
		}
		var_fb0372cb++;
	}
}

/*
	Name: function_6e0bf068
	Namespace: cybercom
	Checksum: 0xB6C787F1
	Offset: 0x17C8
	Size: 0x39
	Parameters: 0
	Flags: None
*/
function function_6e0bf068()
{
	return self.cur_rankNum + 1 >= 20 || (isdefined(self.var_8201758a) && (isdefined(self.var_8201758a) && self.var_8201758a));
}

/*
	Name: function_674d724c
	Namespace: cybercom
	Checksum: 0x1576CD02
	Offset: 0x1810
	Size: 0x1DB
	Parameters: 3
	Flags: None
*/
function function_674d724c(class_num_for_global_weapons, var_f4132a83, var_f69e782a)
{
	if(!isdefined(var_f69e782a))
	{
		var_f69e782a = 1;
	}
	self endon("death_or_disconnect");
	if(!isdefined(self.var_fe7a7fe4) || self.var_fe7a7fe4 != 1)
	{
		for(var_f1362994 = 0; var_f1362994 <= 2; var_f1362994++)
		{
			self function_8b088b97(var_f1362994);
		}
	}
	var_d1833846["cybercore_control"] = 0;
	var_d1833846["cybercore_martial"] = 1;
	var_d1833846["cybercore_chaos"] = 2;
	var_fb135494 = self GetLoadoutItemRef(0, "cybercore");
	if(var_fb135494 != "weapon_null" && var_fb135494 != "weapon_null_cp" && isdefined(var_d1833846[var_fb135494]))
	{
		self function_1adaa876(var_d1833846[var_fb135494], var_f4132a83);
		self function_b6b97f75();
	}
	if(var_f69e782a)
	{
		ret = self util::waittill_any_timeout(7, "loadout_changed");
		if(ret != "timeout")
		{
			function_674d724c(class_num_for_global_weapons, var_f4132a83, 0);
		}
	}
}

/*
	Name: function_4b8ac464
	Namespace: cybercom
	Checksum: 0x7B0D5022
	Offset: 0x19F8
	Size: 0x51B
	Parameters: 4
	Flags: None
*/
function function_4b8ac464(class_num, class_num_for_global_weapons, var_f4132a83, var_5a13c491)
{
	self function_d8df9418();
	var_40cc9116 = self GetLoadoutItemRef(class_num, "cybercom_tacrig1");
	var_1aca16ad = self GetLoadoutItemRef(class_num, "cybercom_tacrig2");
	if(isdefined(var_5a13c491))
	{
		var_40cc9116 = var_5a13c491 GetLoadoutItemRef(class_num, "cybercom_tacrig1");
		var_1aca16ad = var_5a13c491 GetLoadoutItemRef(class_num, "cybercom_tacrig2");
	}
	if(StrEndsWith(var_40cc9116, "_pro"))
	{
		var_40cc9116 = GetSubStr(var_40cc9116, 0, var_40cc9116.size - 4);
		var_65303699 = 1;
	}
	else
	{
		var_65303699 = 0;
	}
	if(StrEndsWith(var_1aca16ad, "_pro"))
	{
		var_1aca16ad = GetSubStr(var_1aca16ad, 0, var_1aca16ad.size - 4);
		var_2e518e8 = 1;
	}
	else
	{
		var_2e518e8 = 0;
	}
	if(isdefined(self.var_8201758a) && self.var_8201758a)
	{
		var_65303699 = 1;
		var_2e518e8 = 1;
	}
	else if(class_num < 5)
	{
		var_65303699 = self function_cc812e3b(var_40cc9116);
		var_2e518e8 = self function_cc812e3b(var_1aca16ad);
		if(isdefined(var_5a13c491))
		{
			var_65303699 = var_5a13c491 function_cc812e3b(var_40cc9116);
			var_2e518e8 = var_5a13c491 function_cc812e3b(var_1aca16ad);
		}
	}
	self namespace_726a1ef0::function_78908229();
	if(!self flag::exists("in_training_sim") || !self flag::get("in_training_sim"))
	{
		var_9e7e6766 = self savegame::function_36adbb9c("saved_rig1", undefined);
		if(isdefined(var_9e7e6766))
		{
			var_40cc9116 = var_9e7e6766;
			var_65303699 = self savegame::function_36adbb9c("saved_rig1_upgraded", undefined);
			var_1aca16ad = self savegame::function_36adbb9c("saved_rig2", undefined);
			var_2e518e8 = self savegame::function_36adbb9c("saved_rig2_upgraded", undefined);
			/#
				Assert(isdefined(var_65303699));
			#/
		}
	}
	self namespace_726a1ef0::function_8ffa26e2(var_40cc9116, var_65303699, 0, 0);
	self namespace_726a1ef0::function_8ffa26e2(var_1aca16ad, var_2e518e8, 1, 0);
	if(!self flag::exists("in_training_sim") || !self flag::get("in_training_sim"))
	{
		self savegame::function_bee608f0("saved_rig1", var_40cc9116);
		self savegame::function_bee608f0("saved_rig1_upgraded", var_65303699);
		self savegame::function_bee608f0("saved_rig2", var_1aca16ad);
		self savegame::function_bee608f0("saved_rig2_upgraded", var_2e518e8);
	}
	function_aacf4c41("RIG1: " + var_40cc9116 + " UPGRADED:" + var_65303699);
	function_aacf4c41("RIG2: " + var_1aca16ad + " UPGRADED:" + var_2e518e8);
	self thread function_674d724c(class_num_for_global_weapons, var_f4132a83);
}

/*
	Name: function_2006f7d0
	Namespace: cybercom
	Checksum: 0xF4EED652
	Offset: 0x1F20
	Size: 0x12B
	Parameters: 3
	Flags: None
*/
function function_2006f7d0(slot, weapon, var_775ebc1b)
{
	self endon("disconnect");
	self endon("death");
	self function_e4588dde();
	if(!isdefined(self.cybercom.var_d1460543))
	{
		self.cybercom.var_d1460543 = [];
	}
	if(isdefined(var_775ebc1b))
	{
	}
	else
	{
	}
	locks = GetDvarInt("scr_max_simLocks");
	/#
		Assert(locks <= 5, "Dev Block strings are not supported");
	#/
	self thread function_17fea3ed(slot, weapon, locks);
	self thread function_d4f9f451(slot, weapon);
	self thread function_348de0be(slot, weapon);
}

/*
	Name: function_348de0be
	Namespace: cybercom
	Checksum: 0x349145F9
	Offset: 0x2058
	Size: 0x233
	Parameters: 2
	Flags: None
*/
function function_348de0be(slot, weapon)
{
	self endon("disconnect");
	self endon("death");
	self endon("hash_d51412df");
	self endon("hash_e9579630");
	self notify("hash_348de0be");
	self endon("hash_348de0be");
	if(!isdefined(self.cybercom.var_46483c8f))
	{
		return;
	}
	if(self.cybercom.var_46483c8f & 1)
	{
		self thread function_86113d72("weapon_change");
	}
	if(self.cybercom.var_46483c8f & 2)
	{
		self thread function_86113d72("reload");
	}
	if(self.cybercom.var_46483c8f & 4)
	{
		self thread function_86113d72("weapon_fired");
	}
	if(self.cybercom.var_46483c8f & 8)
	{
		self thread function_86113d72("weapon_melee");
		self thread function_86113d72("melee_end");
	}
	if(self.cybercom.var_46483c8f & 16)
	{
		self thread function_86113d72("weapon_ads");
	}
	if(self.cybercom.var_46483c8f & 32)
	{
		self thread function_86113d72("damage");
	}
	self waittill("hash_3b3a12de", reason);
	self function_29bf9dee(undefined, 8);
	self GadgetDeactivate(slot, weapon, 1);
}

/*
	Name: function_86113d72
	Namespace: cybercom
	Checksum: 0x2E07B05E
	Offset: 0x2298
	Size: 0x3D
	Parameters: 1
	Flags: None
*/
function function_86113d72(note)
{
	self endon("hash_e9579630");
	self endon("hash_3b3a12de");
	self waittill(note);
	self notify("hash_3b3a12de", note);
}

/*
	Name: function_d4f9f451
	Namespace: cybercom
	Checksum: 0x99A54AB2
	Offset: 0x22E0
	Size: 0x1E3
	Parameters: 2
	Flags: None
*/
function function_d4f9f451(slot, weapon)
{
	self notify("hash_d4f9f451");
	self endon("hash_d4f9f451");
	self endon("disconnect");
	self endon("death");
	self endon("hash_d51412df");
	self endon("hash_e9579630");
	while(1)
	{
		for(i = 0; i < self.cybercom.var_d1460543.size; i++)
		{
			if(!isdefined(self.cybercom.var_d1460543[i].target))
			{
				continue;
			}
			if(!isdefined(self.cybercom.var_d1460543[i].target.lockon_owner) || self.cybercom.var_d1460543[i].target.lockon_owner != self)
			{
				continue;
			}
			if(isdefined(self.cybercom.var_d1460543[i].target.var_1e1a5e6f) && self.cybercom.var_d1460543[i].target.var_1e1a5e6f != 1)
			{
				continue;
			}
			if(isdefined(self.cybercom.var_73d069a7))
			{
				function_c5b2f654(self);
				[[self.cybercom.var_73d069a7]](slot, weapon);
				return;
			}
		}
		wait(0.05);
	}
}

/*
	Name: function_d51412df
	Namespace: cybercom
	Checksum: 0x220A16AA
	Offset: 0x24D0
	Size: 0x61
	Parameters: 1
	Flags: None
*/
function function_d51412df(weapon)
{
	self function_a3e55896(weapon);
	waittillframeend;
	function_b04ec032(1);
	self function_f5799ee1();
	self notify("hash_e9579630");
}

/*
	Name: function_f5c296aa
	Namespace: cybercom
	Checksum: 0xDB7C2801
	Offset: 0x2540
	Size: 0x9B
	Parameters: 1
	Flags: None
*/
function function_f5c296aa(weapon)
{
	self notify("hash_d51412df");
	self endon("hash_d51412df");
	self endon("hash_e9579630");
	self waittill("hash_45ea3ed1", slot, var_188a4cc0);
	if(weapon == var_188a4cc0)
	{
		self function_d51412df(weapon);
	}
	else
	{
		self thread function_f5c296aa(weapon);
	}
}

/*
	Name: function_7806352d
	Namespace: cybercom
	Checksum: 0x944238D
	Offset: 0x25E8
	Size: 0x18B
	Parameters: 1
	Flags: Private
*/
function private function_7806352d(weapon)
{
	self endon("disconnect");
	self endon("death");
	self endon("hash_e9579630");
	event = self util::waittill_any_return(weapon.name + "_fired");
	level notify("hash_825eb47e", self, weapon);
	foreach(item in self.cybercom.var_d1460543)
	{
		if(isdefined(item.target))
		{
			item.target notify("hash_825eb47e", self, weapon);
			if(isdefined(item.target.lockon_owner) && item.target.lockon_owner == self)
			{
				item.target.lockon_owner = undefined;
			}
		}
	}
	self function_d51412df(weapon);
}

/*
	Name: function_9c5e5a9b
	Namespace: cybercom
	Checksum: 0x9030ED22
	Offset: 0x2780
	Size: 0x56F
	Parameters: 2
	Flags: Private
*/
function private function_9c5e5a9b(target, var_b3464abe)
{
	if(!isdefined(var_b3464abe))
	{
		var_b3464abe = 1;
	}
	eyePos = self GetEye();
	if(!isdefined(target))
	{
		return 0;
	}
	if(!isalive(target))
	{
		return 0;
	}
	if(target IsRagdoll())
	{
		return 0;
	}
	if(!isdefined(target.cybercom))
	{
		target.cybercom = spawnstruct();
	}
	if(!isdefined(target.cybercom.var_8d2f4636))
	{
		target.cybercom.var_8d2f4636 = [];
	}
	pos = target GetShootAtPos();
	if(isdefined(pos))
	{
		passed = BulletTracePassed(eyePos, pos, 0, target, undefined, 1, 1);
		if(passed)
		{
			target.cybercom.var_8d2f4636[self GetEntityNumber()] = GetTime();
			return 1;
		}
	}
	pos = target GetCentroid();
	if(isdefined(pos))
	{
		passed = BulletTracePassed(eyePos, pos, 0, target, undefined, 1, 1);
		if(passed)
		{
			target.cybercom.var_8d2f4636[self GetEntityNumber()] = GetTime();
			return 1;
		}
	}
	if(var_b3464abe)
	{
		mins = target GetMins();
		maxs = target GetMaxs();
		var_d11e725f = maxs[2] - mins[2] / 4;
		for(i = 0; i <= 4; i++)
		{
			pos = target.origin + (0, 0, var_d11e725f * i);
			passed = BulletTracePassed(eyePos, pos, 0, target, undefined, 1, 1);
			if(passed)
			{
				target.cybercom.var_8d2f4636[self GetEntityNumber()] = GetTime();
				return 1;
			}
			pos = target.origin + (mins[0], mins[1], var_d11e725f * i);
			passed = BulletTracePassed(eyePos, pos, 0, target, undefined, 1, 1);
			if(passed)
			{
				target.cybercom.var_8d2f4636[self GetEntityNumber()] = GetTime();
				return 1;
			}
			pos = target.origin + (maxs[0], maxs[1], var_d11e725f * i);
			passed = BulletTracePassed(eyePos, pos, 0, target, undefined, 1, 1);
			if(passed)
			{
				target.cybercom.var_8d2f4636[self GetEntityNumber()] = GetTime();
				return 1;
			}
		}
		var_cb365fdc = target.cybercom.var_8d2f4636[self GetEntityNumber()];
		if(isdefined(var_cb365fdc) && var_cb365fdc + GetDvarInt("scr_los_latency", 3000) > GetTime())
		{
			trace = bullettrace(eyePos, pos, 0, target);
			distSq = DistanceSquared(pos, trace["position"]);
			if(distSq <= GetDvarInt("scr_cached_dist_threshhold", 315 * 315))
			{
				return 2;
			}
			else
			{
				return 0;
			}
		}
	}
	return 0;
}

/*
	Name: function_7a7d1608
	Namespace: cybercom
	Checksum: 0x682E7666
	Offset: 0x2CF8
	Size: 0x317
	Parameters: 3
	Flags: None
*/
function function_7a7d1608(target, weapon, var_112e5b60)
{
	if(!isdefined(var_112e5b60))
	{
		var_112e5b60 = 1;
	}
	result = 1;
	if(!isdefined(target))
	{
		return 0;
	}
	if(!isalive(target))
	{
		return 0;
	}
	if(target IsRagdoll())
	{
		return 0;
	}
	if(isdefined(target.is_disabled) && target.is_disabled)
	{
		return 0;
	}
	if(!(isdefined(target.takedamage) && target.takedamage))
	{
		return 0;
	}
	if(isdefined(target._ai_melee_opponent))
	{
		return 0;
	}
	if(IsActor(target) && (!target IsOnGround() || isdefined(target.traverseStartNode)))
	{
		return 0;
	}
	if(isdefined(target.var_69dd5d62))
	{
		if(target.var_69dd5d62 == 0)
		{
			return 0;
		}
	}
	else if(isdefined(target.magic_bullet_shield) && target.magic_bullet_shield)
	{
		return 0;
	}
	if(IsActor(target) && target isInScriptedState())
	{
		if(isdefined(self.rider_info))
		{
			if(isdefined(self.rider_info.position) && IsSubStr(self.rider_info.position, "gunner"))
			{
				return 1;
			}
		}
	}
	if(isdefined(target.allowdeath) && !target.allowdeath)
	{
		return 0;
	}
	if(var_112e5b60 && isdefined(self.cybercom) && isdefined(self.cybercom.var_c40accd3))
	{
		result = self [[self.cybercom.var_c40accd3]](target);
	}
	if(result && isdefined(level.var_732e9c7d))
	{
		result = result & [[level.var_732e9c7d]](self, target, weapon);
	}
	if(isdefined(target.var_fb7ce72a))
	{
		temp_result = target [[target.var_fb7ce72a]](self, weapon);
		if(isdefined(temp_result))
		{
			return temp_result;
		}
	}
	return result;
}

/*
	Name: function_95dfb5f4
	Namespace: cybercom
	Checksum: 0xF31E072
	Offset: 0x3018
	Size: 0xC3
	Parameters: 3
	Flags: None
*/
function function_95dfb5f4(target, maxRange, weapon)
{
	if(isdefined(target.var_fb7ce72a))
	{
		var_a3ded052 = target [[target.var_fb7ce72a]](self, weapon);
		if(isdefined(var_a3ded052))
		{
			return var_a3ded052;
		}
	}
	if(isdefined(maxRange))
	{
		distanceSqr = DistanceSquared(target.origin, self.origin);
		if(distanceSqr > maxRange * maxRange)
		{
			return 0;
		}
	}
	return 1;
}

/*
	Name: function_2e65f35d
	Namespace: cybercom
	Checksum: 0xD6AC58B7
	Offset: 0x30E8
	Size: 0x267
	Parameters: 4
	Flags: None
*/
function function_2e65f35d(target, radius, weapon, maxRange)
{
	result = 1;
	if(isdefined(target.var_fb7ce72a))
	{
		var_a3ded052 = target [[target.var_fb7ce72a]](self, weapon);
		if(isdefined(var_a3ded052))
		{
			return var_a3ded052;
		}
	}
	isValid = self function_7a7d1608(target, weapon);
	if(!(isdefined(isValid) && isValid))
	{
		self function_29bf9dee(target, 1);
		return 0;
	}
	if(isdefined(maxRange))
	{
		distanceSqr = DistanceSquared(target.origin, self.origin);
		if(distanceSqr > maxRange * maxRange)
		{
			self function_29bf9dee(target, 3);
			return 0;
		}
	}
	var_edc325e = self function_9c5e5a9b(target);
	if(var_edc325e == 0)
	{
		self function_29bf9dee(target, 5);
		return 0;
	}
	if(var_edc325e == 2)
	{
		radius = radius * 2;
	}
	if(isdefined(radius))
	{
		distSq = DistanceSquared(self.origin, target.origin);
		if(distSq > 144 * 144)
		{
			result = Target_IsInCircle(target, self, 65, radius);
		}
	}
	if(result == 0)
	{
		self function_29bf9dee(target, 1);
	}
	return result;
}

/*
	Name: TargetInsertionSortCompare
	Namespace: cybercom
	Checksum: 0x39735DC
	Offset: 0x3358
	Size: 0x5F
	Parameters: 2
	Flags: None
*/
function TargetInsertionSortCompare(a, b)
{
	if(a.dot < b.dot)
	{
		return -1;
	}
	if(a.dot > b.dot)
	{
		return 1;
	}
	return 0;
}

/*
	Name: function_18d9de78
	Namespace: cybercom
	Checksum: 0xCFAB4795
	Offset: 0x33C0
	Size: 0xE9
	Parameters: 1
	Flags: None
*/
function function_18d9de78(target)
{
	if(isdefined(target.lockon_owner) && target.lockon_owner == self)
	{
		function_c5b2f654(self);
		target.var_6c8af4c4 = GetTime() - target.var_9d876bed;
		target thread function_5ad57748();
		target.var_9d876bed = undefined;
		target.var_87aa3c26 = GetTime() + 150;
		target.lockon_owner = undefined;
		target.var_9d876bed = undefined;
		target.var_1e1a5e6f = undefined;
		self notify("hash_9641f650");
		self notify("hash_de3c9ffe", target);
	}
}

/*
	Name: function_d23326c3
	Namespace: cybercom
	Checksum: 0xBB559609
	Offset: 0x34B8
	Size: 0x111
	Parameters: 3
	Flags: None
*/
function function_d23326c3(slot, note, clearProgress)
{
	if(isdefined(self.cybercom.var_d1460543[slot]))
	{
		item = self.cybercom.var_d1460543[slot];
		if(isdefined(item.target))
		{
			if(isdefined(note))
			{
				item.target notify(note);
			}
			self WeaponLockNoClearance(0, item.var_b88e0bc);
			self WeaponLockRemoveSlot(item.var_b88e0bc);
			if(isdefined(clearProgress) && clearProgress)
			{
				self function_18d9de78(item.target);
			}
			item.target = undefined;
		}
	}
}

/*
	Name: function_27fa88d6
	Namespace: cybercom
	Checksum: 0x139CCEE0
	Offset: 0x35D8
	Size: 0xB3
	Parameters: 1
	Flags: Private
*/
function private function_27fa88d6(player)
{
	self endon("hash_de3c9ffe");
	self notify("hash_27fa88d6");
	self endon("hash_27fa88d6");
	slot = player function_aecdfd5e(self);
	self util::waittill_any("death", "ccom_lock_fired", "ccom_lock_aborted_unique");
	player WeaponLockNoClearance(0, slot);
	player WeaponLockRemoveSlot(slot);
}

/*
	Name: function_f5c2844
	Namespace: cybercom
	Checksum: 0xCD9A3CF8
	Offset: 0x3698
	Size: 0x5E3
	Parameters: 4
	Flags: None
*/
function function_f5c2844(slot, target, maxRange, weapon)
{
	if(slot == -1 || slot >= GetDvarInt("scr_max_simLocks"))
	{
		return;
	}
	if(isdefined(target.var_87aa3c26) && GetTime() < target.var_87aa3c26)
	{
		return;
	}
	if(isdefined(self.cybercom.var_d1460543[slot]))
	{
		self function_d23326c3(slot, "ccom_lost_lock");
		newItem = self.cybercom.var_d1460543[slot];
		newItem.target = target;
	}
	else
	{
		newItem = spawnstruct();
		newItem.target = target;
		newItem.var_b88e0bc = slot;
		self.cybercom.var_d1460543[slot] = newItem;
	}
	if(isdefined(newItem.target))
	{
		if(isdefined(newItem.target.var_9147087d) && isdefined(newItem.target.var_9147087d[self.cybercom.var_b6fd26ae.name]))
		{
			if(!isdefined(newItem.target.lockon_owner))
			{
				newItem.target.var_9d876bed = GetTime() - newItem.target.var_6c8af4c4;
				newItem.target.lockon_owner = self;
				newItem.target notify("hash_1bf7ef5");
				var_9df7c303 = newItem.target.var_6c8af4c4 / newItem.target.var_9147087d[self.cybercom.var_b6fd26ae.name] * 1000;
				function_eae88e7f(self, newItem.target.var_9147087d[self.cybercom.var_b6fd26ae.name], var_9df7c303);
				level thread function_9641f650(self);
			}
			if(isdefined(newItem.target.lockon_owner) && newItem.target.lockon_owner == self)
			{
				newItem.target.var_1e1a5e6f = math::clamp(GetTime() - newItem.target.var_9d876bed / newItem.target.var_9147087d[self.cybercom.var_b6fd26ae.name] * 1000, 0, 1);
			}
		}
		self WeaponLockStart(newItem.target, newItem.var_b88e0bc);
		newItem.inRange = 1;
		if(!self function_95dfb5f4(newItem.target, maxRange, weapon))
		{
			newItem.inRange = 0;
			self WeaponLockNoClearance(1, slot);
		}
		if(isdefined(newItem.target.var_1e1a5e6f))
		{
			if(newItem.target.lockon_owner == self)
			{
				if(newItem.target.var_1e1a5e6f != 1)
				{
					newItem.inRange = 2;
					self WeaponLockNoClearance(1, slot);
				}
			}
			else
			{
				newItem.inRange = 0;
				self WeaponLockNoClearance(1, slot);
			}
		}
		if(newItem.inRange == 1)
		{
			function_c5b2f654(self);
			self WeaponLockNoClearance(0, slot);
			self WeaponLockFinalize(newItem.target, newItem.var_b88e0bc);
			newItem.target notify("hash_92698df4", self);
			level notify("hash_92698df4", newItem.target, self);
		}
		else
		{
			newItem.target notify("hash_4a129f22", self);
			level notify("hash_4a129f22", newItem.target, self);
		}
		newItem.target thread function_27fa88d6(self);
	}
}

/*
	Name: function_eae88e7f
	Namespace: cybercom
	Checksum: 0x75E99DFA
	Offset: 0x3C88
	Size: 0xE3
	Parameters: 3
	Flags: None
*/
function function_eae88e7f(hacker, duration, startRatio)
{
	VAL = duration & 31;
	if(startRatio > 0)
	{
		cur = math::clamp(startRatio, 0, 1);
		offset = Int(cur * 128) << 5;
		VAL = VAL + offset;
	}
	hacker clientfield::set_to_player("hacking_progress", VAL);
	hacker clientfield::set_to_player("sndCCHacking", 1);
}

/*
	Name: function_c5b2f654
	Namespace: cybercom
	Checksum: 0xDC432AEA
	Offset: 0x3D78
	Size: 0x53
	Parameters: 1
	Flags: None
*/
function function_c5b2f654(hacker)
{
	if(isdefined(hacker))
	{
		hacker clientfield::set_to_player("hacking_progress", 0);
		hacker clientfield::set_to_player("sndCCHacking", 0);
	}
}

/*
	Name: function_9641f650
	Namespace: cybercom
	Checksum: 0xEF551414
	Offset: 0x3DD8
	Size: 0x83
	Parameters: 1
	Flags: None
*/
function function_9641f650(hacker)
{
	hacker endon("disconnect");
	hacker notify("hash_9641f650");
	hacker endon("hash_9641f650");
	hacker util::waittill_any("death", "ccom_lockOnProgress_Cleared", "ccom_lost_lock", "ccom_locked_on");
	function_c5b2f654(hacker);
}

/*
	Name: function_aecdfd5e
	Namespace: cybercom
	Checksum: 0xF74302BD
	Offset: 0x3E68
	Size: 0x9B
	Parameters: 1
	Flags: None
*/
function function_aecdfd5e(target)
{
	for(i = 0; i < self.cybercom.var_d1460543.size; i++)
	{
		if(!isdefined(self.cybercom.var_d1460543[i].target))
		{
			continue;
		}
		if(self.cybercom.var_d1460543[i].target == target)
		{
			return i;
		}
	}
	return -1;
}

/*
	Name: function_47af001d
	Namespace: cybercom
	Checksum: 0x717D8181
	Offset: 0x3F10
	Size: 0xA1
	Parameters: 0
	Flags: None
*/
function function_47af001d()
{
	targets = [];
	for(i = 0; i < self.cybercom.var_d1460543.size; i++)
	{
		if(!isdefined(self.cybercom.var_d1460543[i].target))
		{
			continue;
		}
		targets[targets.size] = self.cybercom.var_d1460543[i].target;
	}
	return targets;
}

/*
	Name: function_70bb0188
	Namespace: cybercom
	Checksum: 0xEE1FA0CB
	Offset: 0x3FC0
	Size: 0x363
	Parameters: 2
	Flags: None
*/
function function_70bb0188(target, force)
{
	if(!isdefined(force))
	{
		force = 0;
	}
	if(self.cybercom.var_d1460543.size < GetDvarInt("scr_max_simLocks"))
	{
		return self.cybercom.var_d1460543.size;
	}
	var_2b28b05a = self function_aecdfd5e(target);
	if(var_2b28b05a != -1)
	{
		return var_2b28b05a;
	}
	else
	{
		slot = -1;
		playerForward = AnglesToForward(self getPlayerAngles());
		dots = [];
		for(i = 0; i < self.cybercom.var_d1460543.size; i++)
		{
			lockTarget = self.cybercom.var_d1460543[i].target;
			if(!isdefined(lockTarget))
			{
				return i;
			}
			newItem = spawnstruct();
			newItem.dot = VectorDot(playerForward, VectorNormalize(lockTarget.origin - self.origin));
			if(isdefined(self.cybercom.var_f72b478f))
			{
			}
			else
			{
			}
			var_f72b478f = 0.83;
			if(newItem.dot > var_f72b478f)
			{
				newItem.target = lockTarget;
				Array::insertion_sort(dots, &TargetInsertionSortCompare, newItem);
			}
		}
		newItem = spawnstruct();
		newItem.dot = VectorDot(playerForward, VectorNormalize(target.origin - self.origin));
		newItem.target = target;
		Array::insertion_sort(dots, &TargetInsertionSortCompare, newItem);
		var_20abbd09 = dots[dots.size - 1].target;
		if(!force && var_20abbd09 == target)
		{
			return -1;
		}
		return self function_aecdfd5e(var_20abbd09);
	}
}

/*
	Name: function_b04ec032
	Namespace: cybercom
	Checksum: 0xC6E9F9CF
	Offset: 0x4330
	Size: 0xBF
	Parameters: 1
	Flags: None
*/
function function_b04ec032(clearProgress)
{
	if(!isdefined(clearProgress))
	{
		clearProgress = 0;
	}
	if(isdefined(self.cybercom) && isdefined(self.cybercom.var_d1460543))
	{
		for(i = 0; i < self.cybercom.var_d1460543.size; i++)
		{
			self function_d23326c3(i, undefined, clearProgress);
		}
	}
	self WeaponLockRemoveSlot(-1);
	self.cybercom.var_d1460543 = [];
}

/*
	Name: function_b5f4e597
	Namespace: cybercom
	Checksum: 0x6EFEC0A0
	Offset: 0x43F8
	Size: 0x303
	Parameters: 1
	Flags: None
*/
function function_b5f4e597(weapon)
{
	self endon("disconnect");
	self notify("hash_b5f4e597");
	self endon("hash_b5f4e597");
	if(weapon.requireLockOnToFire)
	{
		maxRange = 1500;
		if(isdefined(weapon.lockOnMaxRange))
		{
			maxRange = weapon.lockOnMaxRange;
		}
		maxRangeSqr = maxRange * maxRange;
	}
	else
	{
		maxRangeSqr = 0;
	}
	var_6f023b72 = 0;
	while(self HasWeapon(weapon))
	{
		if(maxRangeSqr > 0)
		{
			if(isdefined(self.cybercom.var_9d8e0758))
			{
				enemies = self [[self.cybercom.var_9d8e0758]](weapon);
			}
			else
			{
				enemies = ArrayCombine(GetAITeamArray("axis"), GetAITeamArray("team3"), 0, 0);
			}
			foreach(enemy in enemies)
			{
				distSq = DistanceSquared(self.origin, enemy.origin);
				if(distSq > maxRangeSqr)
				{
					continue;
				}
				var_b766574c = self.cybercom.var_b766574c;
				var_42d20903 = self.cybercom.var_42d20903;
				if(!function_7a7d1608(enemy, weapon))
				{
					self.cybercom.var_b766574c = var_b766574c;
					self.cybercom.var_42d20903 = var_42d20903;
					continue;
				}
				var_6f023b72 = 1;
				break;
			}
		}
		else
		{
			var_6f023b72 = 1;
		}
		self clientfield::set_player_uimodel("playerAbilities.inRange", var_6f023b72);
		wait(0.05);
	}
	var_6f023b72 = 0;
	self clientfield::set_player_uimodel("playerAbilities.inRange", var_6f023b72);
}

/*
	Name: function_5ad57748
	Namespace: cybercom
	Checksum: 0x61CAC150
	Offset: 0x4708
	Size: 0xBF
	Parameters: 0
	Flags: None
*/
function function_5ad57748()
{
	self endon("death");
	self notify("hash_5ad57748");
	self endon("hash_5ad57748");
	self endon("hash_1bf7ef5");
	var_82361971 = Int(GetDvarFloat("scr_hacktime_decay_rate", 0.25) / 20 * 1000);
	while(self.var_6c8af4c4 > 0)
	{
		wait(0.05);
		self.var_6c8af4c4 = self.var_6c8af4c4 - var_82361971;
		if(self.var_6c8af4c4 < 0)
		{
			self.var_6c8af4c4 = 0;
		}
	}
}

/*
	Name: function_f5799ee1
	Namespace: cybercom
	Checksum: 0xF4FE5F35
	Offset: 0x47D0
	Size: 0x213
	Parameters: 0
	Flags: None
*/
function function_f5799ee1()
{
	if(!isdefined(self.cybercom.var_4eb8cd67) || self.cybercom.var_4eb8cd67.size == 0)
	{
		return;
	}
	var_4eb8cd67 = [];
	foreach(target in self.cybercom.var_4eb8cd67)
	{
		if(!isdefined(target))
		{
			continue;
		}
		found = 0;
		if(self.cybercom.var_d1460543.size)
		{
			foreach(var_9ddde835 in self.cybercom.var_d1460543)
			{
				if(!isdefined(var_9ddde835.target))
				{
					continue;
				}
				if(var_9ddde835.target == target)
				{
					found = 1;
					break;
				}
			}
		}
		else if(!found)
		{
			target notify("hash_de3c9ffe", self);
			level notify("hash_de3c9ffe", target, self);
			self function_18d9de78(target);
			continue;
		}
		var_4eb8cd67[var_4eb8cd67.size] = target;
	}
	self.cybercom.var_4eb8cd67 = var_4eb8cd67;
}

/*
	Name: function_17fea3ed
	Namespace: cybercom
	Checksum: 0xEE5F5D4A
	Offset: 0x49F0
	Size: 0x9A5
	Parameters: 3
	Flags: None
*/
function function_17fea3ed(slot, weapon, maxTargets)
{
	self notify("hash_e9579630");
	self endon("hash_e9579630");
	self endon("weapon_change");
	self endon("disconnect");
	self endon("death");
	if(isdefined(self.cybercom.var_23d4a73a))
	{
	}
	else
	{
	}
	radius = 130;
	if(!isdefined(maxTargets))
	{
		maxTargets = 3;
	}
	self thread function_7806352d(weapon);
	self thread function_f5c296aa(weapon);
	if(maxTargets < 1)
	{
		maxTargets = 1;
	}
	if(maxTargets > 5)
	{
		maxTargets = 5;
	}
	maxRange = 1500;
	if(isdefined(weapon.lockOnMaxRange))
	{
		maxRange = weapon.lockOnMaxRange;
	}
	validTargets = [];
	dots = [];
	while(self HasWeapon(weapon))
	{
		wait(0.05);
		self function_f5799ee1();
		self function_b04ec032();
		self.cybercom.var_b766574c = 0;
		if(isdefined(self.cybercom.var_9d8e0758))
		{
			enemies = self [[self.cybercom.var_9d8e0758]](weapon);
		}
		else
		{
			enemies = ArrayCombine(GetAITeamArray("axis"), GetAITeamArray("team3"), 0, 0);
		}
		if(enemies.size == 0)
		{
			self function_29bf9dee(undefined, 1);
		}
		var_ab2554ab = [];
		playerForward = AnglesToForward(self getPlayerAngles());
		var_6f14dd02 = self GetTagOrigin("tag_aim");
		foreach(enemy in enemies)
		{
			center = enemy GetCentroid();
			dirToTarget = VectorNormalize(center - var_6f14dd02);
			enemy.var_4ddba9ea = VectorDot(dirToTarget, playerForward);
			if(isdefined(enemy.var_fb7ce72a))
			{
				result = enemy [[enemy.var_fb7ce72a]](self, weapon);
				if(isdefined(result) && result)
				{
					var_ab2554ab[var_ab2554ab.size] = enemy;
					continue;
				}
			}
			if(isdefined(self.cybercom.var_f72b478f))
			{
			}
			else
			{
			}
			var_f72b478f = 0.83;
			if(enemy.var_4ddba9ea > var_f72b478f)
			{
				var_ab2554ab[var_ab2554ab.size] = enemy;
			}
		}
		if(var_ab2554ab.size == 0)
		{
			self function_29bf9dee(undefined, 1);
			continue;
		}
		validTargets = [];
		potentialTargets = [];
		foreach(enemy in var_ab2554ab)
		{
			if(!isdefined(enemy))
			{
				continue;
			}
			if(!self function_2e65f35d(enemy, radius, weapon, maxRange))
			{
				continue;
			}
			validTargets[validTargets.size] = enemy;
		}
		var_304647c9 = dots.size;
		dots = [];
		foreach(target in validTargets)
		{
			newItem = spawnstruct();
			newItem.dot = target.var_4ddba9ea;
			newItem.target = target;
			Array::insertion_sort(dots, &TargetInsertionSortCompare, newItem);
		}
		if(dots.size)
		{
			i = 0;
			foreach(item in dots)
			{
				i++;
				if(i > maxTargets)
				{
					break;
				}
				if(isdefined(item.target))
				{
					if(isdefined(item.target.var_ced13b2f) && item.target.var_ced13b2f && self function_aecdfd5e(item.target) == -1)
					{
						foreach(other in self.cybercom.var_4eb8cd67)
						{
							if(other == item.target)
							{
								continue;
							}
							if(isdefined(other.var_ced13b2f) && other.var_ced13b2f)
							{
								item.target = undefined;
								break;
							}
						}
					}
					else if(!isdefined(item.target))
					{
						continue;
					}
					if(self function_aecdfd5e(item.target) != -1)
					{
						continue;
					}
					slot = self function_70bb0188(item.target);
					if(slot == -1)
					{
						continue;
					}
					if(!IsInArray(self.cybercom.var_4eb8cd67, item.target))
					{
						self.cybercom.var_4eb8cd67[self.cybercom.var_4eb8cd67.size] = item.target;
					}
					self function_f5c2844(slot, item.target, maxRange, weapon);
				}
			}
			self PlayRumbleOnEntity("damage_light");
		}
	}
	self notify("hash_e9579630", self.cybercom.var_f72b478f, self.cybercom.var_23d4a73a);
}

/*
	Name: drawOriginForever
	Namespace: cybercom
	Checksum: 0x5441E03A
	Offset: 0x53A0
	Size: 0x3F
	Parameters: 0
	Flags: None
*/
function drawOriginForever()
{
	/#
		self endon("death");
		for(;;)
		{
			function_edbf1dc8(self.origin, self.angles);
			wait(0.05);
		}
	#/
}

/*
	Name: function_edbf1dc8
	Namespace: cybercom
	Checksum: 0xAECE29D4
	Offset: 0x53E8
	Size: 0x2BB
	Parameters: 3
	Flags: None
*/
function function_edbf1dc8(org, ang, opcolor)
{
	/#
		FORWARD = AnglesToForward(ang);
		forwardFar = VectorScale(FORWARD, 50);
		forwardClose = VectorScale(FORWARD, 50 * 0.8);
		right = AnglesToRight(ang);
		leftdraw = VectorScale(right, 50 * -0.2);
		rightdraw = VectorScale(right, 50 * 0.2);
		up = anglesToUp(ang);
		right = VectorScale(right, 50);
		up = VectorScale(up, 50);
		red = (0.9, 0.2, 0.2);
		green = (0.2, 0.9, 0.2);
		blue = (0.2, 0.2, 0.9);
		if(isdefined(opcolor))
		{
			red = opcolor;
			green = opcolor;
			blue = opcolor;
		}
		line(org, org + forwardFar, red, 0.9);
		line(org + forwardFar, org + forwardClose + rightdraw, red, 0.9);
		line(org + forwardFar, org + forwardClose + leftdraw, red, 0.9);
		line(org, org + right, blue, 0.9);
		line(org, org + up, green, 0.9);
	#/
}

/*
	Name: debug_circle
	Namespace: cybercom
	Checksum: 0xBDA5FF5
	Offset: 0x56B0
	Size: 0xA3
	Parameters: 4
	Flags: None
*/
function debug_circle(origin, radius, seconds, color)
{
	/#
		if(!isdefined(seconds))
		{
			seconds = 1;
		}
		if(!isdefined(color))
		{
			color = (1, 0, 0);
		}
		frames = Int(20 * seconds);
		circle(origin, radius, color, 0, 1, frames);
	#/
}

/*
	Name: getClosestTo
	Namespace: cybercom
	Checksum: 0xE137CF18
	Offset: 0x5760
	Size: 0x73
	Parameters: 3
	Flags: None
*/
function getClosestTo(origin, entArray, max)
{
	if(!isdefined(entArray))
	{
		return;
	}
	if(entArray.size == 0)
	{
		return;
	}
	if(isdefined(max))
	{
	}
	else
	{
	}
	ArraySortClosest(entArray, origin, 1, 0, 2048);
	return entArray[0];
}

/*
	Name: function_cf41922d
	Namespace: cybercom
	Checksum: 0x689E4A2C
	Offset: 0x57E0
	Size: 0xB1
	Parameters: 1
	Flags: None
*/
function function_cf41922d(name)
{
	ability = namespace_d00ec32::function_85c33215(name);
	if(isdefined(ability))
	{
		shift = 8 * ability.type;
		return ability.flag << shift;
	}
	else if(isdefined(level.var_ab0cd3b2[name]))
	{
		return 1 << 24 + level.var_ab0cd3b2[name].type;
	}
	else
	{
		return;
	}
}

/*
	Name: function_58c312f2
	Namespace: cybercom
	Checksum: 0xDBC7E41
	Offset: 0x58A0
	Size: 0x105
	Parameters: 0
	Flags: None
*/
function function_58c312f2()
{
	if(!isdefined(self))
	{
		return;
	}
	self function_e4588dde();
	foreach(ability in level.cybercom.abilities)
	{
		if(!isdefined(ability))
		{
			continue;
		}
		flag = function_cf41922d(ability.name);
		if(isdefined(flag))
		{
			self.cybercom.var_6f227ef9 = self.cybercom.var_6f227ef9 | flag;
		}
	}
}

/*
	Name: function_59965309
	Namespace: cybercom
	Checksum: 0xA21D9079
	Offset: 0x59B0
	Size: 0x7F
	Parameters: 1
	Flags: None
*/
function function_59965309(name)
{
	if(!isdefined(self))
	{
		return;
	}
	flag = function_cf41922d(name);
	if(!isdefined(flag))
	{
		return;
	}
	self function_e4588dde();
	self.cybercom.var_6f227ef9 = self.cybercom.var_6f227ef9 | flag;
}

/*
	Name: function_a1f70a02
	Namespace: cybercom
	Checksum: 0x2060018B
	Offset: 0x5A38
	Size: 0x83
	Parameters: 1
	Flags: None
*/
function function_a1f70a02(name)
{
	if(!isdefined(self))
	{
		return;
	}
	self function_e4588dde();
	flag = function_cf41922d(name);
	if(!isdefined(flag))
	{
		return;
	}
	~flag;
	self.cybercom.var_6f227ef9 = self.cybercom.var_6f227ef9 & flag;
}

/*
	Name: function_8fd8f5b1
	Namespace: cybercom
	Checksum: 0xA112F33
	Offset: 0x5AC8
	Size: 0x9F
	Parameters: 1
	Flags: None
*/
function function_8fd8f5b1(name)
{
	if(!isdefined(self))
	{
		return 0;
	}
	if(isdefined(self.noCybercom) && self.noCybercom)
	{
		return 1;
	}
	self function_e4588dde();
	flag = function_cf41922d(name);
	if(!isdefined(flag))
	{
		return 0;
	}
	if(self.cybercom.var_6f227ef9 & flag)
	{
		return 1;
	}
	return 0;
}

/*
	Name: function_e4588dde
	Namespace: cybercom
	Checksum: 0xD2BFAEAC
	Offset: 0x5B70
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_e4588dde()
{
	if(!isdefined(self.cybercom))
	{
		self.cybercom = spawnstruct();
	}
	if(!isdefined(self.cybercom.var_6f227ef9))
	{
		self.cybercom.var_6f227ef9 = 0;
	}
}

/*
	Name: function_28d7b2ad
	Namespace: cybercom
	Checksum: 0x179C50D2
	Offset: 0x5BD0
	Size: 0x43
	Parameters: 2
	Flags: None
*/
function function_28d7b2ad(note, animName)
{
	self endon(note);
	self endon("death");
	self waittillmatch(animName);
	self notify(note, "end");
}

/*
	Name: function_cf64f12c
	Namespace: cybercom
	Checksum: 0x4E962AAC
	Offset: 0x5C20
	Size: 0x163
	Parameters: 5
	Flags: None
*/
function function_cf64f12c()
{
System.InvalidOperationException: Stack empty.
   at System.ThrowHelper.ThrowInvalidOperationException(ExceptionResource resource)
   at System.Collections.Generic.Stack`1.Pop()
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.⁫⁮⁭‮⁮⁪‬⁮‎‌‮⁪‏‍⁬‏⁪‮‎‏‪‌‎‍‎‪⁮​‬⁪‮⁭‏⁭‌‏‎‭⁪‫‮(String , Int32 , Boolean , Boolean )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‮​⁬⁭⁮‍‏‏‫‎‭‫⁮‪‮⁭‮⁬​‌⁯‮⁭‬​‪⁭‍‏‪⁪‎⁭⁭‌⁪‌‭​⁯‮(ScriptOp , ‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‭⁭⁫‭⁪‫‭‮‪⁬‏‎‪⁯⁪⁬‪‏‫⁯⁯‭​‫⁯‍‮⁫‪‏⁫⁪‎‏‫‫‪⁬‌⁯‮(‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ , Int32 )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‭⁭⁫‭⁪‫‭‮‪⁬‏‎‪⁯⁪⁬‪‏‫⁯⁯‭​‫⁯‍‮⁫‪‏⁫⁪‎‏‫‫‪⁬‌⁯‮(‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ , Int32 )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮..ctor(ScriptExport , ScriptBase )
}

/*
	Name: function_421746e0
	Namespace: cybercom
	Checksum: 0x8221DF29
	Offset: 0x5D90
	Size: 0xCF
	Parameters: 0
	Flags: None
*/
function function_421746e0()
{
	if(isdefined(self.allowdeath))
	{
		if(self.allowdeath == 0)
		{
			return 0;
		}
	}
	if(isdefined(self.var_770a8906) && self.var_770a8906)
	{
		return 1;
	}
	if(isdefined(self.rider_info))
	{
		return 1;
	}
	if(isdefined(self.archetype) && self.archetype == "robot" && !function_76e3026d(self))
	{
		return 1;
	}
	if(IsActor(self) && !self IsOnGround())
	{
		return 1;
	}
	return 0;
}

/*
	Name: islinked
	Namespace: cybercom
	Checksum: 0x154C4168
	Offset: 0x5E68
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function islinked()
{
	return isdefined(self GetLinkedEnt());
}

/*
	Name: function_8257bcb3
	Namespace: cybercom
	Checksum: 0x10157C9F
	Offset: 0x5E90
	Size: 0xEF
	Parameters: 2
	Flags: None
*/
function function_8257bcb3(context, max)
{
	if(!isdefined(max))
	{
		max = 2;
	}
	if(!isdefined(self.cybercom.variants))
	{
		self.cybercom.variants = [];
	}
	if(isdefined(self.cybercom.variants[context]))
	{
		self.cybercom.variants[context] = undefined;
	}
	self.cybercom.variants[context] = spawnstruct();
	self.cybercom.variants[context].var_9689b47c = 0;
	self.cybercom.variants[context].var_51b4aeb8 = max;
}

/*
	Name: function_e06423b6
	Namespace: cybercom
	Checksum: 0x87E89E14
	Offset: 0x5F88
	Size: 0x131
	Parameters: 1
	Flags: None
*/
function function_e06423b6(context)
{
	if(!isdefined(self.cybercom) || !isdefined(self.cybercom.variants) || !isdefined(self.cybercom.variants[context]))
	{
		return "";
	}
	cur = self.cybercom.variants[context].var_9689b47c;
	self.cybercom.variants[context].var_9689b47c++;
	if(self.cybercom.variants[context].var_9689b47c > self.cybercom.variants[context].var_51b4aeb8)
	{
		self.cybercom.variants[context].var_9689b47c = 0;
	}
	if(cur == 0)
	{
		return "";
	}
	else
	{
		return "_" + cur;
	}
}

/*
	Name: function_a2ec096c
	Namespace: cybercom
	Checksum: 0xF70E5F51
	Offset: 0x60C8
	Size: 0xA3
	Parameters: 6
	Flags: None
*/
function function_a2ec096c(origin, mins, maxs, yaw, frames, color)
{
	if(!isdefined(yaw))
	{
		yaw = 0;
	}
	if(!isdefined(frames))
	{
		frames = 20;
	}
	if(!isdefined(color))
	{
		color = (1, 0, 0);
	}
	/#
		box(origin, mins, maxs, yaw, color, 1, 0, frames);
	#/
}

/*
	Name: debug_sphere
	Namespace: cybercom
	Checksum: 0xF77BD5EE
	Offset: 0x6178
	Size: 0xE3
	Parameters: 5
	Flags: None
*/
function debug_sphere(origin, radius, color, alpha, var_91d025bc)
{
	if(!isdefined(color))
	{
		color = (1, 0, 0);
	}
	if(!isdefined(alpha))
	{
		alpha = 0.1;
	}
	if(!isdefined(var_91d025bc))
	{
		var_91d025bc = 1;
	}
	/#
		sides = Int(10 * 1 + Int(radius) % 100);
		sphere(origin, radius, color, alpha, 1, sides, var_91d025bc);
	#/
}

/*
	Name: notifyMeInNSec
	Namespace: cybercom
	Checksum: 0xD840CE16
	Offset: 0x6268
	Size: 0x35
	Parameters: 2
	Flags: None
*/
function notifyMeInNSec(note, seconds)
{
	self endon(note);
	self endon("death");
	wait(seconds);
	self notify(note);
}

/*
	Name: function_b4daec13
	Namespace: cybercom
	Checksum: 0xFBCD0FC8
	Offset: 0x62A8
	Size: 0x39
	Parameters: 2
	Flags: None
*/
function function_b4daec13(note, waitNote)
{
	self endon(note);
	self endon("death");
	self waittill(waitNote);
	self notify(note);
}

/*
	Name: function_f569ef38
	Namespace: cybercom
	Checksum: 0xE2091ED3
	Offset: 0x62F0
	Size: 0x4B
	Parameters: 2
	Flags: None
*/
function function_f569ef38(note, ent)
{
	ent endon("death");
	self waittill(note);
	if(isdefined(ent))
	{
		ent delete();
	}
}

/*
	Name: function_f8669cbf
	Namespace: cybercom
	Checksum: 0x382F8377
	Offset: 0x6348
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_f8669cbf(var_9b185703)
{
	clientfield::increment("cyber_arm_pulse", var_9b185703);
}

/*
	Name: function_78525729
	Namespace: cybercom
	Checksum: 0x99770FB6
	Offset: 0x6380
	Size: 0x51
	Parameters: 0
	Flags: None
*/
function function_78525729()
{
	/#
		Assert(IsActor(self), "Dev Block strings are not supported");
	#/
	return blackboard::GetBlackBoardAttribute(self, "_stance");
}

/*
	Name: function_5e3d3aa
	Namespace: cybercom
	Checksum: 0xF4EEEFAE
	Offset: 0x63E0
	Size: 0x8D
	Parameters: 0
	Flags: None
*/
function function_5e3d3aa()
{
	/#
		Assert(IsActor(self), "Dev Block strings are not supported");
	#/
	stance = self function_78525729();
	if(stance == "stand")
	{
		return "stn";
	}
	if(stance == "crouch")
	{
		return "crc";
	}
	return "";
}

/*
	Name: function_aacf4c41
	Namespace: cybercom
	Checksum: 0xD5D761FD
	Offset: 0x6478
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function function_aacf4c41(txt)
{
	/#
		println("Dev Block strings are not supported" + txt);
	#/
}

/*
	Name: function_76e3026d
	Namespace: cybercom
	Checksum: 0x7C69E97B
	Offset: 0x64B8
	Size: 0x8B
	Parameters: 1
	Flags: None
*/
function function_76e3026d(entity)
{
	if(isdefined(entity.missingLegs) && entity.missingLegs)
	{
		return 0;
	}
	if(isdefined(entity.isCrawler) && entity.isCrawler)
	{
		return 0;
	}
	if(GibServerUtils::IsGibbed(entity, 384) == 0)
	{
	}
	else
	{
	}
	return 0;
}

/*
	Name: function_c3c6aff4
	Namespace: cybercom
	Checksum: 0x45ED2F18
	Offset: 0x6550
	Size: 0x5B
	Parameters: 4
	Flags: None
*/
function function_c3c6aff4(slot, weapon, var_ecc9d566, endNote)
{
	self endon("death");
	self endon(endNote);
	self waittill(var_ecc9d566);
	self GadgetDeactivate(slot, weapon);
}

/*
	Name: function_adc40f11
	Namespace: cybercom
	Checksum: 0x9A705051
	Offset: 0x65B8
	Size: 0xC5
	Parameters: 2
	Flags: None
*/
function function_adc40f11(weapon, fired)
{
	if(fired)
	{
		self notify(weapon.name + "_fired");
		level notify(weapon.name + "_fired");
		self notify("hash_81c0052c", weapon);
		bb::logcybercomevent(self, "fired", weapon);
		self GadgetTargetResult(1);
	}
	else
	{
		self GadgetTargetResult(0);
		self notify("hash_2bc5d416", weapon);
	}
}

/*
	Name: function_a3e55896
	Namespace: cybercom
	Checksum: 0x75A0197C
	Offset: 0x6688
	Size: 0x26F
	Parameters: 1
	Flags: None
*/
function function_a3e55896(weapon)
{
	if(self.cybercom.var_b766574c != 0 && (self.cybercom.var_d1460543.size == 0 || self.cybercom.var_b766574c == 8))
	{
		if(self.cybercom.var_b766574c == 2 && isdefined(self.cybercom.var_42d20903))
		{
			var_edc325e = self function_9c5e5a9b(self.cybercom.var_42d20903, 0);
			if(var_edc325e == 0)
			{
				self.cybercom.var_b766574c = 1;
			}
		}
		switch(self.cybercom.var_b766574c)
		{
			case 2:
			{
				self function_ee220b8(weapon);
				break;
			}
			case 3:
			{
				self function_e9b941d7(weapon);
				break;
			}
			case 4:
			{
				self function_6d40d95(weapon);
				break;
			}
			case 1:
			{
				self function_ddef5f43(weapon);
				break;
			}
			case 5:
			{
				self function_85a9f38c(weapon);
				break;
			}
			case 6:
			{
				self function_499e813(weapon);
				break;
			}
			case 7:
			{
				self function_a8c06c37(weapon);
				break;
			}
			case 8:
			{
				self function_d2a51f76(weapon);
				break;
			}
		}
		level notify("hash_dce473f9", self, self.cybercom.var_b766574c);
		self notify("hash_dce473f9", self.cybercom.var_b766574c);
		self.cybercom.var_b766574c = 0;
	}
}

/*
	Name: function_29bf9dee
	Namespace: cybercom
	Checksum: 0xAD17D725
	Offset: 0x6900
	Size: 0x147
	Parameters: 4
	Flags: None
*/
function function_29bf9dee(var_42d20903, var_b766574c, var_10853dc3, priority)
{
	if(!isdefined(var_10853dc3))
	{
		var_10853dc3 = 1;
	}
	if(!isdefined(priority))
	{
		priority = 1;
	}
	if(!isPlayer(self) || !isdefined(self.cybercom))
	{
		return;
	}
	if(var_10853dc3 && (!isdefined(self.cybercom.var_301030f7) && self.cybercom.var_301030f7))
	{
		return;
	}
	if(!(isdefined(self.cybercom.allowedstate) && self.cybercom.allowedstate))
	{
		return;
	}
	if(priority)
	{
		if(var_b766574c > self.cybercom.var_b766574c)
		{
			self.cybercom.var_b766574c = var_b766574c;
			self.cybercom.var_42d20903 = var_42d20903;
		}
	}
	else
	{
		self.cybercom.var_b766574c = var_b766574c;
		self.cybercom.var_42d20903 = var_42d20903;
	}
}

/*
	Name: GetYawToSpot
	Namespace: cybercom
	Checksum: 0x81828564
	Offset: 0x6A50
	Size: 0x73
	Parameters: 1
	Flags: None
*/
function GetYawToSpot(spot)
{
	pos = spot;
	yaw = self.angles[1] - GetYaw(pos);
	yaw = AngleClamp180(yaw);
	return yaw;
}

/*
	Name: GetYaw
	Namespace: cybercom
	Checksum: 0x9BF0CA
	Offset: 0x6AD0
	Size: 0x41
	Parameters: 1
	Flags: None
*/
function GetYaw(org)
{
	angles = VectorToAngles(org - self.origin);
	return angles[1];
}

/*
	Name: function_5ad6b98d
	Namespace: cybercom
	Checksum: 0xB46EB2C0
	Offset: 0x6B20
	Size: 0x195
	Parameters: 3
	Flags: None
*/
function function_5ad6b98d(eAttacker, ePlayer, iDamage)
{
	if(!isPlayer(ePlayer) || !isdefined(eAttacker) || !isdefined(eAttacker.aitype))
	{
		return iDamage;
	}
	if(!isdefined(ePlayer.cybercom.var_5e76d31b) || !ePlayer.cybercom.var_5e76d31b)
	{
		return iDamage;
	}
	var_31dd08f5 = level.var_e4e6dd84[eAttacker.aitype];
	if(!isdefined(var_31dd08f5))
	{
		var_31dd08f5 = level.var_e4e6dd84["default"];
	}
	damage_scale = 1;
	distanceToPlayer = Distance(eAttacker.origin, ePlayer.origin);
	if(distanceToPlayer < 750)
	{
		damage_scale = var_31dd08f5.var_974cd16f;
	}
	else if(distanceToPlayer < 1500)
	{
		damage_scale = var_31dd08f5.var_e909f6f0;
	}
	else
	{
		damage_scale = var_31dd08f5.var_3d1b9c0c;
	}
	return iDamage * damage_scale;
}

/*
	Name: function_1be27df7
	Namespace: cybercom
	Checksum: 0xA4FB3533
	Offset: 0x6CC0
	Size: 0x57
	Parameters: 0
	Flags: None
*/
function function_1be27df7()
{
	if(isdefined(self.currentWeapon) && (self.currentWeapon == GetWeapon("gadget_unstoppable_force") || self.currentWeapon == GetWeapon("gadget_unstoppable_force_upgraded")))
	{
		return 1;
	}
	return 0;
}

