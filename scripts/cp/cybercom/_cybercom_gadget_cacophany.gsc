#using scripts\codescripts\struct;
#using scripts\cp\cybercom\_cybercom;
#using scripts\cp\cybercom\_cybercom_gadget;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\shared\abilities\_ability_player;
#using scripts\shared\abilities\_ability_util;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\math_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\statemachine_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace namespace_6dcc04c7;

/*
	Name: init
	Namespace: namespace_6dcc04c7
	Checksum: 0x99EC1590
	Offset: 0x350
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function init()
{
}

/*
	Name: main
	Namespace: namespace_6dcc04c7
	Checksum: 0x92F8397B
	Offset: 0x360
	Size: 0x17B
	Parameters: 0
	Flags: None
*/
function main()
{
	namespace_d00ec32::function_36b56038(2, 16);
	level.cybercom.cacophany = spawnstruct();
	level.cybercom.cacophany._is_flickering = &_is_flickering;
	level.cybercom.cacophany._on_flicker = &_on_flicker;
	level.cybercom.cacophany._on_give = &_on_give;
	level.cybercom.cacophany._on_take = &_on_take;
	level.cybercom.cacophany._on_connect = &_on_connect;
	level.cybercom.cacophany._on = &_on;
	level.cybercom.cacophany._off = &_off;
	level.cybercom.cacophany._is_primed = &_is_primed;
}

/*
	Name: _is_flickering
	Namespace: namespace_6dcc04c7
	Checksum: 0x245BFE36
	Offset: 0x4E8
	Size: 0xB
	Parameters: 1
	Flags: None
*/
function _is_flickering(slot)
{
}

/*
	Name: _on_flicker
	Namespace: namespace_6dcc04c7
	Checksum: 0x57427223
	Offset: 0x500
	Size: 0x13
	Parameters: 2
	Flags: None
*/
function _on_flicker(slot, weapon)
{
}

/*
	Name: _on_give
	Namespace: namespace_6dcc04c7
	Checksum: 0x220D8889
	Offset: 0x520
	Size: 0x1B3
	Parameters: 2
	Flags: None
*/
function _on_give(slot, weapon)
{
	self.cybercom.var_110c156a = GetDvarInt("scr_cacophany_count", 4);
	self.cybercom.var_f72b478f = GetDvarFloat("scr_cacophany_fov", 0.95);
	self.cybercom.var_23d4a73a = GetDvarFloat("scr_cacophany_lock_radius", 330);
	if(self function_1a9006bd("cybercom_cacophany") == 2)
	{
		self.cybercom.var_110c156a = GetDvarInt("scr_cacophany_upgraded_count", 5);
		self.cybercom.var_f72b478f = GetDvarFloat("scr_cacophany_upgraded_fov", 0.5);
		self.cybercom.var_23d4a73a = GetDvarFloat("scr_cacophany_lock_radius", 330);
	}
	self.cybercom.var_9d8e0758 = &_get_valid_targets;
	self.cybercom.var_c40accd3 = &function_602b28e9;
	self thread cybercom::function_b5f4e597(weapon);
}

/*
	Name: _on_take
	Namespace: namespace_6dcc04c7
	Checksum: 0x806E6AA3
	Offset: 0x6E0
	Size: 0x71
	Parameters: 2
	Flags: None
*/
function _on_take(slot, weapon)
{
	self _off(slot, weapon);
	self.cybercom.var_9d8e0758 = undefined;
	self.cybercom.var_c40accd3 = undefined;
	self.cybercom.var_f72b478f = undefined;
	self.cybercom.var_23d4a73a = undefined;
}

/*
	Name: _on_connect
	Namespace: namespace_6dcc04c7
	Checksum: 0x99EC1590
	Offset: 0x760
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function _on_connect()
{
}

/*
	Name: _on
	Namespace: namespace_6dcc04c7
	Checksum: 0xA276F931
	Offset: 0x770
	Size: 0x53
	Parameters: 2
	Flags: None
*/
function _on(slot, weapon)
{
	self thread function_7f3f3bde(slot, weapon);
	self _off(slot, weapon);
}

/*
	Name: _off
	Namespace: namespace_6dcc04c7
	Checksum: 0xE8D05293
	Offset: 0x7D0
	Size: 0x39
	Parameters: 2
	Flags: None
*/
function _off(slot, weapon)
{
	self thread cybercom::function_d51412df(weapon);
	self.cybercom.var_301030f7 = undefined;
}

/*
	Name: _is_primed
	Namespace: namespace_6dcc04c7
	Checksum: 0x264E9FC6
	Offset: 0x818
	Size: 0xA7
	Parameters: 2
	Flags: None
*/
function _is_primed(slot, weapon)
{
	if(!(isdefined(self.cybercom.var_301030f7) && self.cybercom.var_301030f7))
	{
		/#
			Assert(self.cybercom.var_2e20c9bd == weapon);
		#/
		self thread cybercom::function_2006f7d0(slot, weapon, self.cybercom.var_110c156a);
		self.cybercom.var_301030f7 = 1;
	}
}

/*
	Name: function_602b28e9
	Namespace: namespace_6dcc04c7
	Checksum: 0x6C8227D3
	Offset: 0x8C8
	Size: 0xDB
	Parameters: 1
	Flags: Private
*/
function private function_602b28e9(target)
{
	if(target cybercom::function_8fd8f5b1("cybercom_cacophany"))
	{
		self cybercom::function_29bf9dee(target, 2);
		return 0;
	}
	if(isdefined(target.destroyingWeapon))
	{
		return 0;
	}
	if(isdefined(target.var_37915be0) && target.var_37915be0)
	{
		return 0;
	}
	if(isdefined(target.is_disabled) && target.is_disabled)
	{
		self cybercom::function_29bf9dee(target, 6);
		return 0;
	}
	return 1;
}

/*
	Name: _get_valid_targets
	Namespace: namespace_6dcc04c7
	Checksum: 0x56CAD3C9
	Offset: 0x9B0
	Size: 0x29
	Parameters: 1
	Flags: Private
*/
function private _get_valid_targets(weapon)
{
	return GetEntArray("destructible", "targetname");
}

/*
	Name: function_7f3f3bde
	Namespace: namespace_6dcc04c7
	Checksum: 0xC25AC954
	Offset: 0x9E8
	Size: 0x28B
	Parameters: 2
	Flags: Private
*/
function private function_7f3f3bde(slot, weapon)
{
	aborted = 0;
	fired = 0;
	foreach(item in self.cybercom.var_d1460543)
	{
		if(isdefined(item.target) && (isdefined(item.inRange) && item.inRange))
		{
			if(item.inRange == 1)
			{
				if(!cybercom::function_7a7d1608(item.target, weapon))
				{
					continue;
				}
				item.target thread function_41e98fcc(self, fired);
				fired++;
				continue;
			}
			if(item.inRange == 2)
			{
				aborted++;
			}
		}
	}
	if(aborted && !fired)
	{
		self.cybercom.var_d1460543 = [];
		self cybercom::function_29bf9dee(undefined, 1, 0);
	}
	cybercom::function_adc40f11(weapon, fired);
	if(fired && isPlayer(self))
	{
		itemIndex = GetItemIndexFromRef("cybercom_cacophany");
		if(isdefined(itemIndex))
		{
			self AddDStat("ItemStats", itemIndex, "stats", "assists", "statValue", fired);
			self AddDStat("ItemStats", itemIndex, "stats", "used", "statValue", 1);
		}
	}
}

/*
	Name: function_41e98fcc
	Namespace: namespace_6dcc04c7
	Checksum: 0x3E1FABF9
	Offset: 0xC80
	Size: 0xA7
	Parameters: 2
	Flags: None
*/
function function_41e98fcc(attacker, offset)
{
	if(offset == 0)
	{
		wait(0.1);
	}
	else
	{
		var_f5aa368a = 0.15 + RandomFloatRange(0.1, 0.25) * offset;
		wait(var_f5aa368a);
	}
	self DoDamage(self.health + 100, self.origin, attacker, attacker);
	self.var_37915be0 = 1;
}

