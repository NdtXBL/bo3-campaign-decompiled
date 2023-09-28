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

#namespace namespace_eda43fb2;

/*
	Name: init
	Namespace: namespace_eda43fb2
	Checksum: 0x99EC1590
	Offset: 0x428
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function init()
{
}

/*
	Name: main
	Namespace: namespace_eda43fb2
	Checksum: 0x8DCE94E8
	Offset: 0x438
	Size: 0x17B
	Parameters: 0
	Flags: None
*/
function main()
{
	namespace_d00ec32::function_36b56038(1, 8, 1);
	level.cybercom.active_camo = spawnstruct();
	level.cybercom.active_camo._on_flicker = &_on_flicker;
	level.cybercom.active_camo._on_give = &_on_give;
	level.cybercom.active_camo._on_take = &_on_take;
	level.cybercom.active_camo._on_connect = &_on_connect;
	level.cybercom.active_camo._on = &_on;
	level.cybercom.active_camo._off = &_off;
	level.cybercom.var_1bafc2c2 = GetWeapon("gadget_active_camo_upgraded");
	callback::on_disconnect(&function_75fd531c);
}

/*
	Name: _on_flicker
	Namespace: namespace_eda43fb2
	Checksum: 0x7DB35DD1
	Offset: 0x5C0
	Size: 0x13
	Parameters: 2
	Flags: None
*/
function _on_flicker(slot, weapon)
{
}

/*
	Name: _on_give
	Namespace: namespace_eda43fb2
	Checksum: 0x63FAB902
	Offset: 0x5E0
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
	Namespace: namespace_eda43fb2
	Checksum: 0x93E8D6D6
	Offset: 0x638
	Size: 0x39
	Parameters: 2
	Flags: None
*/
function _on_take(slot, weapon)
{
	self notify("hash_1d75a6cc");
	self notify("hash_d3706a8a");
	self notify("hash_acc47db4");
}

/*
	Name: _on_connect
	Namespace: namespace_eda43fb2
	Checksum: 0x99EC1590
	Offset: 0x680
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function _on_connect()
{
}

/*
	Name: function_75fd531c
	Namespace: namespace_eda43fb2
	Checksum: 0x4AD88A8D
	Offset: 0x690
	Size: 0x29
	Parameters: 0
	Flags: None
*/
function function_75fd531c()
{
	self notify("hash_acc47db4");
	self notify("hash_1d75a6cc");
	self notify("hash_d3706a8a");
}

/*
	Name: _on
	Namespace: namespace_eda43fb2
	Checksum: 0x1938CDF
	Offset: 0x6C8
	Size: 0x21B
	Parameters: 2
	Flags: None
*/
function _on(slot, weapon)
{
	self endon("hash_1d75a6cc");
	self endon("death");
	self endon("disconnect");
	self clientfield::set("camo_shader", 1);
	cybercom::function_adc40f11(weapon, 1);
	if(isdefined(self.ignoreme) && self.ignoreme)
	{
	}
	else
	{
	}
	self.cybercom.var_4179b836 = 0;
	self.ignoreme = 1;
	self.active_camo = 1;
	self PlayRumbleOnEntity("tank_rumble");
	self thread function_b4902c73(slot, weapon, "scene_disable_player_stuff", "active_camo_taken");
	self thread function_e784c8b3();
	self thread cybercom::function_c3c6aff4(slot, weapon, "changed_class", "active_camo_off");
	self thread cybercom::function_c3c6aff4(slot, weapon, "cybercom_disabled", "active_camo_off");
	self thread function_cba091b7(slot, weapon);
	if(isPlayer(self))
	{
		itemIndex = GetItemIndexFromRef("cybercom_camo");
		if(isdefined(itemIndex))
		{
			self AddDStat("ItemStats", itemIndex, "stats", "used", "statValue", 1);
		}
	}
}

/*
	Name: _off
	Namespace: namespace_eda43fb2
	Checksum: 0xE1A843CC
	Offset: 0x8F0
	Size: 0xFD
	Parameters: 2
	Flags: None
*/
function _off(slot, weapon)
{
	if(GetDvarInt("tu1_cybercomActiveCamoIgnoreMeFix", 1))
	{
		if(isdefined(self.cybercom.var_4179b836) && self.cybercom.var_4179b836 && self.ignoreme)
		{
		}
		else
		{
			self.ignoreme = 0;
		}
	}
	else if(isdefined(self.cybercom.var_4179b836))
	{
		self.ignoreme = self.cybercom.var_4179b836;
	}
	self.active_camo = undefined;
	/#
		if(isdefined(self.ignoreme) && self.ignoreme)
		{
			IPrintLnBold("Dev Block strings are not supported");
		}
	#/
	self notify("hash_acc47db4");
	self notify("hash_1d75a6cc");
}

/*
	Name: function_cba091b7
	Namespace: namespace_eda43fb2
	Checksum: 0x1A5D7BA6
	Offset: 0x9F8
	Size: 0x83
	Parameters: 2
	Flags: None
*/
function function_cba091b7(slot, weapon)
{
	self notify("hash_cba091b7");
	self endon("hash_cba091b7");
	self endon("disconnect");
	self endon("hash_1d75a6cc");
	self flagsys::wait_till("mobile_armory_in_use");
	self GadgetDeactivate(slot, weapon);
}

/*
	Name: function_b4902c73
	Namespace: namespace_eda43fb2
	Checksum: 0xC0E39802
	Offset: 0xA88
	Size: 0xE3
	Parameters: 4
	Flags: None
*/
function function_b4902c73(slot, weapon, waitNote, endNote)
{
	self notify(endNote + waitNote + weapon.name);
	self endon(endNote + waitNote + weapon.name);
	self endon(endNote);
	self endon("disconnect");
	self waittill(waitNote);
	if(self HasWeapon(weapon) && isdefined(self.cybercom.var_2e20c9bd) && self.cybercom.var_2e20c9bd == weapon)
	{
		self GadgetDeactivate(slot, weapon);
	}
}

/*
	Name: function_8f371c2b
	Namespace: namespace_eda43fb2
	Checksum: 0xCCC0772E
	Offset: 0xB78
	Size: 0xC1
	Parameters: 4
	Flags: Private
*/
function private function_8f371c2b(slot, note, var_696db07, var_a9769379)
{
	if(!isdefined(var_696db07))
	{
		var_696db07 = 300;
	}
	if(!isdefined(var_a9769379))
	{
		var_a9769379 = 1000;
	}
	self endon("hash_d3706a8a");
	self endon("disconnect");
	self notify("_camo_killReActivateOnNotify" + slot + note);
	self endon("_camo_killReActivateOnNotify" + slot + note);
	while(1)
	{
		self waittill(note, Param);
		self notify("hash_64558d25");
	}
}

/*
	Name: function_e784c8b3
	Namespace: namespace_eda43fb2
	Checksum: 0x1FAA3ACF
	Offset: 0xC48
	Size: 0x223
	Parameters: 0
	Flags: Private
*/
function private function_e784c8b3()
{
	self notify("hash_acc47db4");
	self endon("hash_acc47db4");
	var_d0c5bbcc = spawn("script_model", self.origin);
	var_d0c5bbcc SetModel("tag_origin");
	var_d0c5bbcc MakeSentient();
	var_d0c5bbcc.origin = var_d0c5bbcc.origin + VectorScale((0, 0, 1), 30);
	var_d0c5bbcc.team = self.team;
	self thread cybercom::function_f569ef38("disconnect", var_d0c5bbcc);
	self thread cybercom::function_f569ef38("active_camo_off", var_d0c5bbcc);
	self thread cybercom::function_f569ef38("delete_false_target", var_d0c5bbcc);
	self thread function_c51ef296(var_d0c5bbcc);
	var_56a6b68b = self.origin[2];
	while(isdefined(var_d0c5bbcc))
	{
		var_d0c5bbcc.origin = var_d0c5bbcc.origin + (randomIntRange(-50, 50), randomIntRange(-50, 50), randomIntRange(-5, 5));
		if(var_d0c5bbcc.origin[2] < var_56a6b68b)
		{
			var_d0c5bbcc.origin = (var_d0c5bbcc.origin[0], var_d0c5bbcc.origin[1], var_56a6b68b);
		}
		wait(0.5);
	}
}

/*
	Name: function_c51ef296
	Namespace: namespace_eda43fb2
	Checksum: 0xDEF7CFEE
	Offset: 0xE78
	Size: 0x5B
	Parameters: 1
	Flags: Private
*/
function private function_c51ef296(fakeent)
{
	fakeent endon("death");
	self endon("disconnect");
	while(1)
	{
		self waittill("weapon_fired", projectile);
		fakeent.origin = self.origin;
	}
}

/*
	Name: function_d349a475
	Namespace: namespace_eda43fb2
	Checksum: 0xBC6F286A
	Offset: 0xEE0
	Size: 0xDF
	Parameters: 0
	Flags: Private
*/
function private function_d349a475()
{
	self notify("hash_d349a475");
	self endon("hash_d349a475");
	self endon("hash_d3706a8a");
	self endon("hash_64558d25");
	while(1)
	{
		self waittill("hash_45ea3ed1", slot, weapon);
		if(isdefined(weapon) && weapon == level.cybercom.var_1bafc2c2)
		{
			wait(GetDvarInt("scr_active_camo_melee_escape_duration_SEC", 1));
			if(!self GadgetIsActive(slot))
			{
				self function_c0c5359e(slot, weapon, 0);
			}
		}
	}
}

