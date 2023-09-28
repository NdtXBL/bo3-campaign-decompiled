#using scripts\codescripts\struct;
#using scripts\cp\_util;
#using scripts\cp\cybercom\_cybercom;
#using scripts\cp\cybercom\_cybercom_gadget;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\shared\abilities\_ability_player;
#using scripts\shared\abilities\_ability_util;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\hud_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\statemachine_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;
#using scripts\shared\visionset_mgr_shared;

#namespace namespace_f388b961;

/*
	Name: init
	Namespace: namespace_f388b961
	Checksum: 0x99EC1590
	Offset: 0x3A8
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function init()
{
}

/*
	Name: main
	Namespace: namespace_f388b961
	Checksum: 0x51469A0D
	Offset: 0x3B8
	Size: 0xDB
	Parameters: 0
	Flags: None
*/
function main()
{
	namespace_d00ec32::function_36b56038(1, 16);
	level.cybercom.Overdrive = spawnstruct();
	level.cybercom.Overdrive._on_give = &_on_give;
	level.cybercom.Overdrive._on_take = &_on_take;
	level.cybercom.Overdrive._on = &_on;
	level.cybercom.Overdrive._off = &_off;
}

/*
	Name: _on_flicker
	Namespace: namespace_f388b961
	Checksum: 0xAF34D774
	Offset: 0x4A0
	Size: 0x13
	Parameters: 2
	Flags: None
*/
function _on_flicker(slot, weapon)
{
}

/*
	Name: _on_give
	Namespace: namespace_f388b961
	Checksum: 0x9C9D36D4
	Offset: 0x4C0
	Size: 0x4B
	Parameters: 2
	Flags: None
*/
function _on_give(slot, weapon)
{
	self.cybercom.var_9d8e0758 = undefined;
	self.cybercom.var_c40accd3 = undefined;
	self thread cybercom::function_b5f4e597(weapon);
}

/*
	Name: _on_take
	Namespace: namespace_f388b961
	Checksum: 0x1CFD5D45
	Offset: 0x518
	Size: 0x2B
	Parameters: 2
	Flags: None
*/
function _on_take(slot, weapon)
{
	_off(slot, weapon);
}

/*
	Name: _on_connect
	Namespace: namespace_f388b961
	Checksum: 0x99EC1590
	Offset: 0x550
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function _on_connect()
{
}

/*
	Name: function_75fd531c
	Namespace: namespace_f388b961
	Checksum: 0x1477C675
	Offset: 0x560
	Size: 0x11
	Parameters: 0
	Flags: None
*/
function function_75fd531c()
{
	self notify("hash_3ca9ab77");
}

/*
	Name: _on
	Namespace: namespace_f388b961
	Checksum: 0x707F6A48
	Offset: 0x580
	Size: 0x263
	Parameters: 2
	Flags: None
*/
function _on(slot, weapon)
{
	self endon("hash_3ca9ab77");
	self endon("death");
	self endon("disconnect");
	if(flagsys::get("gadget_overdrive_on"))
	{
		return;
	}
	wait(GetDvarFloat("scr_overdrive_activationDelay_sec", 0.4));
	self.var_7d73f4ba = self hasPerk("specialty_deadshot");
	if(!(isdefined(self.var_7d73f4ba) && self.var_7d73f4ba))
	{
		self setPerk("specialty_deadshot");
	}
	self clientfield::set_to_player("overdrive_state", 1);
	visionset_mgr::activate("visionset", "overdrive", self, 0.4, 0.1, 1.35);
	self notify(weapon.name + "_fired");
	level notify(weapon.name + "_fired");
	if(self.health < self.maxhealth * GetDvarFloat("scr_overdrive_min_health", 0.35))
	{
		self setnormalhealth(GetDvarFloat("scr_overdrive_min_health", 0.35));
	}
	self PlayRumbleOnEntity("tank_rumble");
	if(isPlayer(self))
	{
		itemIndex = GetItemIndexFromRef("cybercom_overdrive");
		if(isdefined(itemIndex))
		{
			self AddDStat("ItemStats", itemIndex, "stats", "used", "statValue", 1);
		}
	}
}

/*
	Name: _off
	Namespace: namespace_f388b961
	Checksum: 0x1C3A4265
	Offset: 0x7F0
	Size: 0x73
	Parameters: 2
	Flags: None
*/
function _off(slot, weapon)
{
	self notify("hash_3ca9ab77");
	if(!(isdefined(self.var_7d73f4ba) && self.var_7d73f4ba))
	{
		self unsetPerk("specialty_deadshot");
	}
	self clientfield::set_to_player("overdrive_state", 0);
}

