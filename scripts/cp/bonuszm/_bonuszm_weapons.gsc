#using scripts\codescripts\struct;
#using scripts\shared\array_shared;
#using scripts\shared\math_shared;
#using scripts\shared\weapons\_weapons;

#namespace namespace_a17e6f03;

/*
	Name: function_9b385ca5
	Namespace: namespace_a17e6f03
	Checksum: 0x99EC1590
	Offset: 0x198
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_9b385ca5()
{
}

/*
	Name: function_5fba2032
	Namespace: namespace_a17e6f03
	Checksum: 0x99EC1590
	Offset: 0x1A8
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_5fba2032()
{
}

#namespace namespace_fdfaa57d;

/*
	Name: function_a17e6f03
	Namespace: namespace_fdfaa57d
	Checksum: 0x708CCDEE
	Offset: 0x1B8
	Size: 0x85
	Parameters: 0
	Flags: 6
*/
function private autoexec function_a17e6f03()
{
	classes.var_a17e6f03[0] = spawnstruct();
	classes.var_a17e6f03[0].__vtable[1606033458] = &namespace_a17e6f03::function_5fba2032;
	classes.var_a17e6f03[0].__vtable[-1690805083] = &namespace_a17e6f03::function_9b385ca5;
}

/*
	Name: function_58d5283a
	Namespace: namespace_fdfaa57d
	Checksum: 0x30387A33
	Offset: 0x248
	Size: 0x153
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_58d5283a()
{
	if(!SessionModeIsCampaignZombiesGame())
	{
		return;
	}
	mapname = GetDvarString("mapname");
	level.var_acba406b = [];
	level.var_ed11f8b7 = [];
	level.var_5e3f3853 = 0;
	level.var_24893e7 = spawn("script_model", (0, 0, 0));
	level.var_24893e7 SetHighDetail(1);
	level.var_24893e7 ghost();
	level.var_a432d965 = struct::get_script_bundle("bonuszmdata", mapname);
	var_6a173bd1 = GetStructField(level.var_a432d965, "weaponsTable");
	/#
		Assert(isdefined(var_6a173bd1));
	#/
	function_549c28ac("gamedata/tables/cpzm/" + var_6a173bd1);
}

/*
	Name: function_549c28ac
	Namespace: namespace_fdfaa57d
	Checksum: 0x9597F221
	Offset: 0x3A8
	Size: 0x24D
	Parameters: 1
	Flags: None
*/
function function_549c28ac(var_6a173bd1)
{
	noneWeapon = GetWeapon("none");
	var_adeb478a = function_1556496c(var_6a173bd1);
	for(i = 0; i < var_adeb478a; i++)
	{
		function_9b385ca5();
		var_279890e8 = var_a17e6f03;
		var_279890e8.weaponName = TableLookupColumnForRow(var_6a173bd1, i, 0);
		var_279890e8.var_bc6ce097 = Int(TableLookupColumnForRow(var_6a173bd1, i, 1));
		var_279890e8.var_2b758e89 = Int(TableLookupColumnForRow(var_6a173bd1, i, 2));
		var_279890e8.var_83fbee4b = TableLookupColumnForRow(var_6a173bd1, i, 3);
		if(!isdefined(var_279890e8.weaponName) || GetWeapon(var_279890e8.weaponName) == noneWeapon)
		{
			continue;
		}
		if(var_279890e8.var_83fbee4b == "")
		{
			var_279890e8.var_83fbee4b = 0;
		}
		else
		{
			var_279890e8.var_83fbee4b = Int(var_279890e8.var_83fbee4b);
		}
		if(var_279890e8.var_83fbee4b)
		{
			Array::add(level.var_ed11f8b7, var_279890e8);
			continue;
		}
		Array::add(level.var_acba406b, var_279890e8);
	}
}

/*
	Name: function_1e2e0936
	Namespace: namespace_fdfaa57d
	Checksum: 0x97A564D
	Offset: 0x600
	Size: 0xE9
	Parameters: 1
	Flags: None
*/
function function_1e2e0936(var_1010f96a)
{
	if(!isdefined(var_1010f96a))
	{
		var_1010f96a = 0;
	}
	if(isdefined(level.var_fd21e404))
	{
		weaponinfo = level.var_fd21e404;
	}
	level.var_fd21e404 = function_53200e4d(var_1010f96a);
	level.var_24893e7 UseWeaponModel(level.var_fd21e404[0], level.var_fd21e404[0].worldmodel);
	level.var_24893e7 SetWeaponRenderOptions(level.var_fd21e404[2], 0, 0, 0, 0);
	if(isdefined(weaponinfo))
	{
		return weaponinfo;
	}
	return function_53200e4d(var_1010f96a);
}

/*
	Name: function_53200e4d
	Namespace: namespace_fdfaa57d
	Checksum: 0x93E48692
	Offset: 0x6F8
	Size: 0x88F
	Parameters: 1
	Flags: None
*/
function function_53200e4d(var_1010f96a)
{
	/#
		Assert(isdefined(level.var_acba406b));
	#/
	/#
		Assert(isdefined(level.var_ed11f8b7));
	#/
	/#
		Assert(isdefined(level.var_a9e78bf7["Dev Block strings are not supported"]));
	#/
	var_82d771df = undefined;
	var_d9cb0358 = [];
	if(var_1010f96a && level.var_5e3f3853 < level.var_a9e78bf7["maxmagicboxonlyweapons"] && RandomInt(100) < level.var_a9e78bf7["magicboxonlyweaponchance"] && level.var_ed11f8b7.size)
	{
		level.var_5e3f3853++;
		var_279890e8 = Array::random(level.var_ed11f8b7);
	}
	else
	{
		var_279890e8 = Array::random(level.var_acba406b);
	}
	numAttachments = 0;
	if(var_279890e8.var_bc6ce097 >= 0 && var_279890e8.var_2b758e89 > 0)
	{
		numAttachments = randomIntRange(var_279890e8.var_bc6ce097, var_279890e8.var_2b758e89);
	}
	if(numAttachments > 0)
	{
		weapon = GetWeapon(var_279890e8.weaponName);
		var_d9cb0358 = function_2df9fb87(weapon, numAttachments);
	}
	acvi = undefined;
	var_2106259a = 0;
	if(isdefined(var_d9cb0358) && IsArray(var_d9cb0358) && var_d9cb0358.size)
	{
		var_82d771df = GetWeapon(var_279890e8.weaponName, var_d9cb0358);
		if(isdefined(var_82d771df))
		{
			var_2106259a = 1;
			switch(var_d9cb0358.size)
			{
				case 8:
				{
					acvi = GetAttachmentCosmeticVariantIndexes(var_82d771df, var_d9cb0358[0], math::cointoss(), var_d9cb0358[1], math::cointoss(), var_d9cb0358[2], math::cointoss(), var_d9cb0358[3], math::cointoss(), var_d9cb0358[4], math::cointoss(), var_d9cb0358[5], math::cointoss(), var_d9cb0358[6], math::cointoss(), var_d9cb0358[7], math::cointoss());
					break;
				}
				case 7:
				{
					acvi = GetAttachmentCosmeticVariantIndexes(var_82d771df, var_d9cb0358[0], math::cointoss(), var_d9cb0358[1], math::cointoss(), var_d9cb0358[2], math::cointoss(), var_d9cb0358[3], math::cointoss(), var_d9cb0358[4], math::cointoss(), var_d9cb0358[5], math::cointoss(), var_d9cb0358[6], math::cointoss());
					break;
				}
				case 6:
				{
					acvi = GetAttachmentCosmeticVariantIndexes(var_82d771df, var_d9cb0358[0], math::cointoss(), var_d9cb0358[1], math::cointoss(), var_d9cb0358[2], math::cointoss(), var_d9cb0358[3], math::cointoss(), var_d9cb0358[4], math::cointoss(), var_d9cb0358[5], math::cointoss());
					break;
				}
				case 5:
				{
					acvi = GetAttachmentCosmeticVariantIndexes(var_82d771df, var_d9cb0358[0], math::cointoss(), var_d9cb0358[1], math::cointoss(), var_d9cb0358[2], math::cointoss(), var_d9cb0358[3], math::cointoss(), var_d9cb0358[4], math::cointoss());
					break;
				}
				case 4:
				{
					acvi = GetAttachmentCosmeticVariantIndexes(var_82d771df, var_d9cb0358[0], math::cointoss(), var_d9cb0358[1], math::cointoss(), var_d9cb0358[2], math::cointoss(), var_d9cb0358[3], math::cointoss());
					break;
				}
				case 3:
				{
					acvi = GetAttachmentCosmeticVariantIndexes(var_82d771df, var_d9cb0358[0], math::cointoss(), var_d9cb0358[1], math::cointoss(), var_d9cb0358[2], math::cointoss());
					break;
				}
				case 2:
				{
					acvi = GetAttachmentCosmeticVariantIndexes(var_82d771df, var_d9cb0358[0], math::cointoss(), var_d9cb0358[1], math::cointoss());
					break;
				}
				case 1:
				{
					acvi = GetAttachmentCosmeticVariantIndexes(var_82d771df, var_d9cb0358[0], math::cointoss());
					break;
				}
			}
		}
	}
	if(!var_2106259a)
	{
		var_82d771df = GetWeapon(var_279890e8.weaponName);
	}
	weaponinfo = [];
	weaponinfo[0] = var_82d771df;
	weaponinfo[1] = acvi;
	if(RandomInt(100) < level.var_a9e78bf7["camochance"])
	{
		weaponinfo[2] = Array::random(Array(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 18, 19, 20, 21, 22, 23, 24, 25));
	}
	else
	{
		weaponinfo[2] = 0;
	}
	/#
		Assert(weaponinfo[0] != level.weaponNone);
	#/
	return weaponinfo;
}

/*
	Name: function_43128d49
	Namespace: namespace_fdfaa57d
	Checksum: 0xE01C7CC
	Offset: 0xF90
	Size: 0x48B
	Parameters: 2
	Flags: None
*/
function function_43128d49(weaponinfo, var_fe7b5ca3)
{
	if(!isdefined(var_fe7b5ca3))
	{
		var_fe7b5ca3 = 1;
	}
	/#
		Assert(isdefined(weaponinfo));
	#/
	randomWeapon = weaponinfo[0];
	var_d6c5d457 = weaponinfo[1];
	var_54a70e6e = weaponinfo[2];
	if(!isdefined(randomWeapon))
	{
		return;
	}
	if(randomWeapon == level.weaponNone)
	{
		return;
	}
	a_weaponlist = self GetWeaponsList();
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
		}
	}
	var_4044e31f = self GetWeaponsListPrimaries();
	foreach(weapon in var_4044e31f)
	{
		if(weapon.isHeroWeapon || !var_fe7b5ca3)
		{
			self TakeWeapon(weapon);
			continue;
		}
		self function_132d9eee(weapon);
	}
	var_a817a92d = self CalcWeaponOptions(var_54a70e6e, 0, 0, 0);
	if(isdefined(var_d6c5d457))
	{
		self GiveWeapon(randomWeapon, var_a817a92d, var_d6c5d457);
	}
	else
	{
		self GiveWeapon(randomWeapon, var_a817a92d);
	}
	if(self HasWeapon(randomWeapon))
	{
		self SetWeaponAmmoClip(randomWeapon, randomWeapon.clipSize);
		self giveMaxAmmo(randomWeapon);
	}
	foreach(weapon in var_961f11b8)
	{
		self GiveWeapon(weapon);
		self SetWeaponAmmoClip(weapon, weapon.clipSize);
		self giveMaxAmmo(weapon);
	}
	if(self HasWeapon(randomWeapon))
	{
		self SwitchToWeapon(randomWeapon);
	}
	else if(var_4044e31f.size)
	{
		self SwitchToWeapon(var_4044e31f[0]);
	}
}

/*
	Name: function_7e774306
	Namespace: namespace_fdfaa57d
	Checksum: 0xA9502087
	Offset: 0x1428
	Size: 0x155
	Parameters: 0
	Flags: None
*/
function function_7e774306()
{
	level.var_3d2f81f1 = GetWeapon("ar_standard");
	while(1)
	{
		level waittill("scene_sequence_started");
		foreach(player in level.activePlayers)
		{
			player function_be94c003();
		}
		level waittill("scene_sequence_ended");
		foreach(player in level.activePlayers)
		{
			player function_d5efb07f();
		}
	}
}

/*
	Name: function_be94c003
	Namespace: namespace_fdfaa57d
	Checksum: 0x639C1FBF
	Offset: 0x1588
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_be94c003()
{
	self.var_c74b20c1 = self GetCurrentWeapon();
	if(self HasWeapon(level.var_3d2f81f1))
	{
		self.var_7a5a5490 = 1;
	}
	else
	{
		self GiveWeapon(level.var_3d2f81f1);
	}
	self SwitchToWeapon(level.var_3d2f81f1);
}

/*
	Name: function_d5efb07f
	Namespace: namespace_fdfaa57d
	Checksum: 0x5600CDC8
	Offset: 0x1628
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_d5efb07f()
{
	if(!(isdefined(self.var_7a5a5490) && self.var_7a5a5490))
	{
		self TakeWeapon(level.var_3d2f81f1);
	}
	if(isdefined(self.var_c74b20c1) && self HasWeapon(self.var_c74b20c1))
	{
		self SwitchToWeapon(self.var_c74b20c1);
	}
}

/*
	Name: function_132d9eee
	Namespace: namespace_fdfaa57d
	Checksum: 0xEC9D94B6
	Offset: 0x16B0
	Size: 0x173
	Parameters: 1
	Flags: None
*/
function function_132d9eee(weapon)
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

