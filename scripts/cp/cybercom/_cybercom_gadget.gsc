#using scripts\codescripts\struct;
#using scripts\cp\_bb;
#using scripts\cp\cybercom\_cybercom;
#using scripts\cp\cybercom\_cybercom_dev;
#using scripts\cp\cybercom\_cybercom_gadget_active_camo;
#using scripts\cp\cybercom\_cybercom_gadget_cacophany;
#using scripts\cp\cybercom\_cybercom_gadget_concussive_wave;
#using scripts\cp\cybercom\_cybercom_gadget_electrostatic_strike;
#using scripts\cp\cybercom\_cybercom_gadget_exosuitbreakdown;
#using scripts\cp\cybercom\_cybercom_gadget_firefly;
#using scripts\cp\cybercom\_cybercom_gadget_forced_malfunction;
#using scripts\cp\cybercom\_cybercom_gadget_iff_override;
#using scripts\cp\cybercom\_cybercom_gadget_immolation;
#using scripts\cp\cybercom\_cybercom_gadget_misdirection;
#using scripts\cp\cybercom\_cybercom_gadget_mrpukey;
#using scripts\cp\cybercom\_cybercom_gadget_overdrive;
#using scripts\cp\cybercom\_cybercom_gadget_rapid_strike;
#using scripts\cp\cybercom\_cybercom_gadget_ravage_core;
#using scripts\cp\cybercom\_cybercom_gadget_security_breach;
#using scripts\cp\cybercom\_cybercom_gadget_sensory_overload;
#using scripts\cp\cybercom\_cybercom_gadget_servo_shortout;
#using scripts\cp\cybercom\_cybercom_gadget_smokescreen;
#using scripts\cp\cybercom\_cybercom_gadget_surge;
#using scripts\cp\cybercom\_cybercom_gadget_system_overload;
#using scripts\cp\cybercom\_cybercom_gadget_unstoppable_force;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\hud_util_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace namespace_d00ec32;

/*
	Name: init
	Namespace: namespace_d00ec32
	Checksum: 0xAF966D7D
	Offset: 0x750
	Size: 0x153
	Parameters: 0
	Flags: None
*/
function init()
{
	namespace_ea01175::init();
	namespace_7cb6cd95::init();
	namespace_528b4613::init();
	namespace_4bc37cb1::init();
	namespace_491e7803::init();
	namespace_63d98895::init();
	namespace_9cc756f9::init();
	namespace_f388b961::init();
	namespace_354e20c0::init();
	namespace_687c8387::init();
	namespace_eda43fb2::init();
	namespace_6dcc04c7::init();
	namespace_328b6406::init();
	namespace_a56eec64::init();
	namespace_64276cf9::init();
	namespace_9c3956fd::init();
	namespace_3ed98204::init();
	namespace_11fb1f28::init();
	namespace_d9c8cca1::init();
	namespace_690a49a::init();
	namespace_e44205a2::init();
}

/*
	Name: main
	Namespace: namespace_d00ec32
	Checksum: 0x7591850A
	Offset: 0x8B0
	Size: 0x193
	Parameters: 0
	Flags: None
*/
function main()
{
	callback::on_connect(&on_player_connect);
	callback::on_spawned(&on_player_spawned);
	namespace_528b4613::main();
	namespace_491e7803::main();
	namespace_63d98895::main();
	namespace_ea01175::main();
	namespace_7cb6cd95::main();
	namespace_4bc37cb1::main();
	namespace_9cc756f9::main();
	namespace_f388b961::main();
	namespace_11fb1f28::main();
	namespace_9c3956fd::main();
	namespace_eda43fb2::main();
	namespace_687c8387::main();
	namespace_354e20c0::main();
	namespace_328b6406::main();
	namespace_64276cf9::main();
	namespace_d9c8cca1::main();
	namespace_6dcc04c7::main();
	namespace_e44205a2::main();
	namespace_3ed98204::main();
	namespace_a56eec64::main();
	namespace_690a49a::main();
}

/*
	Name: on_player_connect
	Namespace: namespace_d00ec32
	Checksum: 0x78F4B70C
	Offset: 0xA50
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function on_player_connect()
{
	self thread function_48868896();
}

/*
	Name: on_player_spawned
	Namespace: namespace_d00ec32
	Checksum: 0x2C271FD7
	Offset: 0xA78
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function on_player_spawned()
{
	self thread function_12bffd86();
}

/*
	Name: function_12bffd86
	Namespace: namespace_d00ec32
	Checksum: 0xB6388276
	Offset: 0xAA0
	Size: 0x18F
	Parameters: 0
	Flags: None
*/
function function_12bffd86()
{
	self notify("hash_12bffd86");
	self endon("hash_12bffd86");
	self endon("disconnect");
	while(1)
	{
		ret = self util::waittill_any_return("cybercom_activation_failed", "cybercom_activation_succeeded");
		if(!isdefined(ret))
		{
			continue;
		}
		if(!isdefined(self.cybercom.var_2e20c9bd))
		{
			continue;
		}
		ability = function_1a6a2760(self.cybercom.var_2e20c9bd);
		upgraded = self function_1a9006bd(ability.name) == 2;
		if(ret == "cybercom_activation_succeeded")
		{
			if(isdefined(upgraded) && upgraded)
			{
			}
			else
			{
			}
			alias = "_upgraded" + "";
		}
		else
		{
			alias = "gdt_cybercore_activate_fail";
		}
		if(!(isdefined(ability.passive) && ability.passive))
		{
			self playsound(alias);
		}
	}
}

/*
	Name: function_36b56038
	Namespace: namespace_d00ec32
	Checksum: 0x3998C94E
	Offset: 0xC38
	Size: 0x15D
	Parameters: 3
	Flags: None
*/
function function_36b56038(type, flag, passive)
{
	if(!isdefined(passive))
	{
		passive = 0;
	}
	if(!isdefined(level.cybercom))
	{
		cybercom::Initialize();
	}
	if(function_b6bf05b2(type, flag) == undefined)
	{
		ability = spawnstruct();
		ability.type = type;
		ability.flag = flag;
		ability.passive = passive;
		ability.name = function_b5a28a10(type, flag);
		ability.weapon = function_f586ae95(type, flag, 0);
		ability.var_b3a36101 = function_f586ae95(type, flag, 1);
		level.cybercom.abilities[level.cybercom.abilities.size] = ability;
	}
}

/*
	Name: function_1fe42fa3
	Namespace: namespace_d00ec32
	Checksum: 0x11E6971
	Offset: 0xDA0
	Size: 0xAF
	Parameters: 1
	Flags: None
*/
function function_1fe42fa3(ability)
{
	if(isdefined(ability))
	{
		if(ability.type == 1 && ability.flag == 64)
		{
			return 1;
		}
		if(ability.type == 2 && ability.flag == 2)
		{
			return 1;
		}
		if(ability.type == 0 && ability.flag == 16)
		{
			return 1;
		}
	}
	return 0;
}

/*
	Name: function_c381ce2
	Namespace: namespace_d00ec32
	Checksum: 0x15EE666F
	Offset: 0xE58
	Size: 0x1D7
	Parameters: 2
	Flags: None
*/
function function_c381ce2(ability, upgrade)
{
	if(!isdefined(ability))
	{
		return;
	}
	if(!function_1fe42fa3(ability))
	{
		return;
	}
	if(!isdefined(upgrade))
	{
		status = self function_1a9006bd(ability.name);
		if(status == 0)
		{
			return;
		}
		upgrade = status == 2;
	}
	if(upgrade)
	{
		weapon = ability.var_b3a36101;
	}
	else
	{
		weapon = ability.weapon;
	}
	if(isdefined(self.cybercom.var_90eb6ca7) && self.cybercom.var_90eb6ca7 != weapon)
	{
		self TakeWeapon(self.cybercom.var_90eb6ca7);
		self notify("hash_7812f695", self.cybercom.var_90eb6ca7);
		level notify("hash_7812f695", self.cybercom.var_90eb6ca7, self);
		self.cybercom.var_90eb6ca7 = undefined;
	}
	if(!self HasWeapon(weapon))
	{
		self GiveWeapon(weapon);
		self notify("hash_ce6dc32f", weapon);
		level notify("hash_ce6dc32f", weapon, self);
	}
	self.cybercom.var_90eb6ca7 = weapon;
}

/*
	Name: function_1364f13e
	Namespace: namespace_d00ec32
	Checksum: 0xE590A98C
	Offset: 0x1038
	Size: 0x229
	Parameters: 1
	Flags: None
*/
function function_1364f13e(ability)
{
	if(!isdefined(ability))
	{
		return;
	}
	if(self HasWeapon(ability.weapon))
	{
		self TakeWeapon(ability.weapon);
		self notify("hash_7812f695", ability.weapon);
		level notify("hash_7812f695", ability.weapon, self);
	}
	if(isdefined(self.cybercom.var_90eb6ca7) && self.cybercom.var_90eb6ca7 == ability.weapon)
	{
		self.cybercom.var_90eb6ca7 = undefined;
	}
	if(isdefined(self.cybercom.var_2e20c9bd) && self.cybercom.var_2e20c9bd == ability.weapon)
	{
		self.cybercom.var_2e20c9bd = undefined;
	}
	if(self HasWeapon(ability.var_b3a36101))
	{
		self TakeWeapon(ability.var_b3a36101);
		self notify("hash_7812f695", ability.var_b3a36101);
		level notify("hash_7812f695", ability.var_b3a36101, self);
	}
	if(isdefined(self.cybercom.var_90eb6ca7) && self.cybercom.var_90eb6ca7 == ability.var_b3a36101)
	{
		self.cybercom.var_90eb6ca7 = undefined;
	}
	if(isdefined(self.cybercom.var_2e20c9bd) && self.cybercom.var_2e20c9bd == ability.var_b3a36101)
	{
		self.cybercom.var_2e20c9bd = undefined;
	}
}

/*
	Name: giveAbility
	Namespace: namespace_d00ec32
	Checksum: 0xC5CFE761
	Offset: 0x1270
	Size: 0xD3
	Parameters: 2
	Flags: None
*/
function giveAbility(name, upgrade)
{
	/#
		Assert(GetDvarInt("Dev Block strings are not supported"), "Dev Block strings are not supported");
	#/
	ability = function_85c33215(name);
	if(!isdefined(ability))
	{
		return;
	}
	self setcybercomability(name, upgrade);
	self cybercom::function_b6b97f75();
	self function_c381ce2(ability, upgrade);
}

/*
	Name: giveallabilities
	Namespace: namespace_d00ec32
	Checksum: 0xE4CD7446
	Offset: 0x1350
	Size: 0xA1
	Parameters: 0
	Flags: None
*/
function giveallabilities()
{
	foreach(ability in level.cybercom.abilities)
	{
		self giveAbility(ability.name, 1);
	}
}

/*
	Name: function_eb512967
	Namespace: namespace_d00ec32
	Checksum: 0x9A5868F6
	Offset: 0x1400
	Size: 0x597
	Parameters: 2
	Flags: None
*/
function function_eb512967(name, var_a67a6c08)
{
	if(!isdefined(var_a67a6c08))
	{
		var_a67a6c08 = 0;
	}
	/#
		Assert(GetDvarInt("Dev Block strings are not supported"), "Dev Block strings are not supported");
	#/
	var_ab80161f = self function_1a9006bd(name);
	if(var_ab80161f == 0)
	{
		return;
	}
	ability = function_85c33215(name);
	if(!isdefined(ability))
	{
		return;
	}
	self.cybercom.flags.type = ability.type;
	self function_751ff137(ability.type);
	self.cybercom.var_b6fd26ae = ability;
	if(var_ab80161f == 2)
	{
		weapon = ability.var_b3a36101;
	}
	else
	{
		weapon = ability.weapon;
	}
	if(!function_1fe42fa3(ability))
	{
		if(isdefined(self.cybercom.var_90eb6ca7) && self HasWeapon(self.cybercom.var_90eb6ca7))
		{
			var_7116dac7 = self.cybercom.var_90eb6ca7;
			self TakeWeapon(self.cybercom.var_90eb6ca7);
			self.cybercom.var_90eb6ca7 = undefined;
		}
		if(isdefined(self.cybercom.var_2e20c9bd) && weapon != self.cybercom.var_2e20c9bd)
		{
			self TakeWeapon(self.cybercom.var_2e20c9bd);
			self notify("hash_7812f695", self.cybercom.var_2e20c9bd);
			level notify("hash_7812f695", self.cybercom.var_2e20c9bd, self);
		}
		if(!self HasWeapon(weapon))
		{
			self GiveWeapon(weapon);
			self notify("hash_ce6dc32f", weapon);
			level notify("hash_ce6dc32f", weapon, self);
		}
		self.cybercom.var_2e20c9bd = weapon;
		if(!(isdefined(self.cybercom.var_161c9be8) && self.cybercom.var_161c9be8))
		{
			var_a67a6c08 = 1;
			self.cybercom.var_161c9be8 = 1;
		}
		if(isdefined(var_7116dac7))
		{
			self GiveWeapon(var_7116dac7);
			self.cybercom.var_90eb6ca7 = var_7116dac7;
			var_7116dac7 = undefined;
		}
		abilities = function_ef1b66d4(self.cybercom.var_b6fd26ae.type);
		var_fb0372cb = 1;
		foreach(ability in abilities)
		{
			if(ability.name == self.cybercom.var_b6fd26ae.name)
			{
				self SetControllerUIModelValue("AbilityWheel.Selected" + ability.type + 1, var_fb0372cb);
				break;
			}
			var_fb0372cb++;
		}
	}
	self function_d2260497();
	if(var_a67a6c08)
	{
		self thread function_cae3643b();
	}
	bb::logcybercomevent(self, "equipped", name);
	var_6f5af609 = Int(tableLookup("gamedata/stats/cp/cp_statstable.csv", 4, ability.name, 0));
	if(isdefined(self.var_768ee804))
	{
		var_6f5af609 = var_6f5af609 | self.var_768ee804 << 10;
	}
	self SetDStat("PlayerStatsList", "LAST_CYBERCOM_EQUIPPED", "statValue", var_6f5af609);
	return ability;
}

/*
	Name: function_cae3643b
	Namespace: namespace_d00ec32
	Checksum: 0xFFA8B90B
	Offset: 0x19A0
	Size: 0x63
	Parameters: 0
	Flags: Private
*/
function private function_cae3643b()
{
	waittillframeend;
	self GadgetPowerSet(0, 100);
	self GadgetPowerSet(1, 100);
	self GadgetPowerSet(2, 100);
}

/*
	Name: function_c219b381
	Namespace: namespace_d00ec32
	Checksum: 0x63DB31CA
	Offset: 0x1A10
	Size: 0x1B3
	Parameters: 0
	Flags: None
*/
function function_c219b381()
{
	abilities = self function_d6be99c6();
	foreach(ability in abilities)
	{
		self function_1364f13e(ability);
	}
	self function_d8df9418();
	if(isdefined(self.cybercom.var_2e20c9bd) && self HasWeapon(self.cybercom.var_2e20c9bd))
	{
		self TakeWeapon(self.cybercom.var_2e20c9bd);
	}
	self.cybercom.var_2e20c9bd = undefined;
	if(isdefined(self.cybercom.var_90eb6ca7) && self HasWeapon(self.cybercom.var_90eb6ca7))
	{
		self TakeWeapon(self.cybercom.var_90eb6ca7);
	}
	self.cybercom.var_90eb6ca7 = undefined;
	self cybercom::function_b6b97f75();
}

/*
	Name: function_85c33215
	Namespace: namespace_d00ec32
	Checksum: 0xF0637D4D
	Offset: 0x1BD0
	Size: 0xAF
	Parameters: 1
	Flags: None
*/
function function_85c33215(name)
{
	foreach(ability in level.cybercom.abilities)
	{
		if(!isdefined(ability))
		{
			continue;
		}
		if(ability.name == name)
		{
			return ability;
		}
	}
}

/*
	Name: function_59e099
	Namespace: namespace_d00ec32
	Checksum: 0x37742727
	Offset: 0x1C88
	Size: 0xE7
	Parameters: 1
	Flags: None
*/
function function_59e099(name)
{
	weapon = GetWeapon(name);
	foreach(ability in level.cybercom.abilities)
	{
		if(isdefined(ability.weapon) && weapon.name == ability.weapon.name)
		{
			return ability;
		}
	}
}

/*
	Name: function_1a6a2760
	Namespace: namespace_d00ec32
	Checksum: 0x71D7DB1C
	Offset: 0x1D78
	Size: 0xEF
	Parameters: 1
	Flags: None
*/
function function_1a6a2760(weapon)
{
	if(!isdefined(weapon))
	{
		return;
	}
	foreach(ability in level.cybercom.abilities)
	{
		if(isdefined(ability.weapon) && weapon == ability.weapon)
		{
			return ability;
		}
		if(isdefined(ability.var_b3a36101) && weapon == ability.var_b3a36101)
		{
			return ability;
		}
	}
}

/*
	Name: function_b6bf05b2
	Namespace: namespace_d00ec32
	Checksum: 0x1251879E
	Offset: 0x1E70
	Size: 0xC1
	Parameters: 2
	Flags: None
*/
function function_b6bf05b2(type, flag)
{
	foreach(ability in level.cybercom.abilities)
	{
		if(ability.type == type && ability.flag == flag)
		{
			return ability;
		}
	}
	return undefined;
}

/*
	Name: function_d6be99c6
	Namespace: namespace_d00ec32
	Checksum: 0x640646C9
	Offset: 0x1F40
	Size: 0x127
	Parameters: 0
	Flags: None
*/
function function_d6be99c6()
{
	abilities = [];
	if(!isdefined(self.cybercom) || !isdefined(self.cybercom.flags) || !isdefined(self.cybercom.flags.type))
	{
		return abilities;
	}
	foreach(ability in level.cybercom.abilities)
	{
		var_f2391de5 = self function_1a9006bd(ability.name);
		if(var_f2391de5 != 0)
		{
			abilities[abilities.size] = ability;
		}
	}
	return abilities;
}

/*
	Name: function_ef1b66d4
	Namespace: namespace_d00ec32
	Checksum: 0x4EFF8B57
	Offset: 0x2070
	Size: 0xBF
	Parameters: 1
	Flags: None
*/
function function_ef1b66d4(type)
{
	abilities = [];
	foreach(ability in level.cybercom.abilities)
	{
		if(ability.type == type)
		{
			abilities[abilities.size] = ability;
		}
	}
	return abilities;
}

/*
	Name: function_48868896
	Namespace: namespace_d00ec32
	Checksum: 0x722B1FB5
	Offset: 0x2138
	Size: 0x4F
	Parameters: 0
	Flags: None
*/
function function_48868896()
{
	self endon("disconnect");
	while(1)
	{
		self waittill("setcybercomability", var_4ccb808f);
		self function_eb512967(var_4ccb808f);
	}
}

