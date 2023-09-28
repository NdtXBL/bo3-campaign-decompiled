#using scripts\codescripts\struct;
#using scripts\cp\cybercom\_cybercom;
#using scripts\cp\cybercom\_cybercom_dev;
#using scripts\cp\cybercom\_cybercom_tactical_rig_copycat;
#using scripts\cp\cybercom\_cybercom_tactical_rig_emergencyreserve;
#using scripts\cp\cybercom\_cybercom_tactical_rig_multicore;
#using scripts\cp\cybercom\_cybercom_tactical_rig_playermovement;
#using scripts\cp\cybercom\_cybercom_tactical_rig_proximitydeterrent;
#using scripts\cp\cybercom\_cybercom_tactical_rig_repulsorarmor;
#using scripts\cp\cybercom\_cybercom_tactical_rig_sensorybuffer;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\hud_util_shared;
#using scripts\shared\math_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace namespace_726a1ef0;

/*
	Name: init
	Namespace: namespace_726a1ef0
	Checksum: 0xC26C7EC8
	Offset: 0x3B8
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function init()
{
	namespace_fc601b38::init();
	namespace_e3074452::init();
	namespace_d1c4e441::init();
	namespace_a7b77773::init();
	namespace_941cddd7::init();
	namespace_b854c5d0::init();
	namespace_52c052b7::init();
}

/*
	Name: main
	Namespace: namespace_726a1ef0
	Checksum: 0xF4C1D185
	Offset: 0x438
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function main()
{
	callback::on_connect(&on_player_connect);
	callback::on_spawned(&on_player_spawned);
	namespace_fc601b38::main();
	namespace_e3074452::main();
	namespace_d1c4e441::main();
	namespace_a7b77773::main();
	namespace_941cddd7::main();
	namespace_b854c5d0::main();
	namespace_52c052b7::main();
}

/*
	Name: on_player_connect
	Namespace: namespace_726a1ef0
	Checksum: 0x99EC1590
	Offset: 0x4F8
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function on_player_connect()
{
}

/*
	Name: on_player_spawned
	Namespace: namespace_726a1ef0
	Checksum: 0x99EC1590
	Offset: 0x508
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function on_player_spawned()
{
}

/*
	Name: function_8cb15f87
	Namespace: namespace_726a1ef0
	Checksum: 0xE35B2A5C
	Offset: 0x518
	Size: 0x9B
	Parameters: 2
	Flags: None
*/
function function_8cb15f87(name, type)
{
	if(!isdefined(level.var_ab0cd3b2))
	{
		level.var_ab0cd3b2 = [];
	}
	if(!isdefined(level.var_ab0cd3b2[name]))
	{
		level.var_ab0cd3b2[name] = spawnstruct();
		level.var_ab0cd3b2[name].name = name;
		level.var_ab0cd3b2[name].type = type;
	}
}

/*
	Name: function_8b4ef058
	Namespace: namespace_726a1ef0
	Checksum: 0x442EDE7
	Offset: 0x5C0
	Size: 0x281
	Parameters: 3
	Flags: None
*/
function function_8b4ef058(name, on_give, on_take)
{
	/#
		Assert(isdefined(level.var_ab0cd3b2[name]));
	#/
	if(!isdefined(level.var_ab0cd3b2[name].on_give))
	{
		level.var_ab0cd3b2[name].on_give = [];
	}
	if(!isdefined(level.var_ab0cd3b2[name].on_take))
	{
		level.var_ab0cd3b2[name].on_take = [];
	}
	if(isdefined(on_give))
	{
		if(!isdefined(level.var_ab0cd3b2[name].on_give))
		{
			level.var_ab0cd3b2[name].on_give = [];
		}
		else if(!IsArray(level.var_ab0cd3b2[name].on_give))
		{
			level.var_ab0cd3b2[name].on_give = Array(level.var_ab0cd3b2[name].on_give);
		}
		level.var_ab0cd3b2[name].on_give[level.var_ab0cd3b2[name].on_give.size] = on_give;
	}
	if(isdefined(on_take))
	{
		if(!isdefined(level.var_ab0cd3b2[name].on_take))
		{
			level.var_ab0cd3b2[name].on_take = [];
		}
		else if(!IsArray(level.var_ab0cd3b2[name].on_take))
		{
			level.var_ab0cd3b2[name].on_take = Array(level.var_ab0cd3b2[name].on_take);
		}
		level.var_ab0cd3b2[name].on_take[level.var_ab0cd3b2[name].on_take.size] = on_take;
	}
}

/*
	Name: function_37a33686
	Namespace: namespace_726a1ef0
	Checksum: 0xFD823F8C
	Offset: 0x850
	Size: 0x281
	Parameters: 3
	Flags: None
*/
function function_37a33686(name, turn_on, turn_off)
{
	/#
		Assert(isdefined(level.var_ab0cd3b2[name]));
	#/
	if(!isdefined(level.var_ab0cd3b2[name].turn_on))
	{
		level.var_ab0cd3b2[name].turn_on = [];
	}
	if(!isdefined(level.var_ab0cd3b2[name].turn_off))
	{
		level.var_ab0cd3b2[name].turn_off = [];
	}
	if(isdefined(turn_on))
	{
		if(!isdefined(level.var_ab0cd3b2[name].turn_on))
		{
			level.var_ab0cd3b2[name].turn_on = [];
		}
		else if(!IsArray(level.var_ab0cd3b2[name].turn_on))
		{
			level.var_ab0cd3b2[name].turn_on = Array(level.var_ab0cd3b2[name].turn_on);
		}
		level.var_ab0cd3b2[name].turn_on[level.var_ab0cd3b2[name].turn_on.size] = turn_on;
	}
	if(isdefined(turn_off))
	{
		if(!isdefined(level.var_ab0cd3b2[name].turn_off))
		{
			level.var_ab0cd3b2[name].turn_off = [];
		}
		else if(!IsArray(level.var_ab0cd3b2[name].turn_off))
		{
			level.var_ab0cd3b2[name].turn_off = Array(level.var_ab0cd3b2[name].turn_off);
		}
		level.var_ab0cd3b2[name].turn_off[level.var_ab0cd3b2[name].turn_off.size] = turn_off;
	}
}

/*
	Name: function_fea5c2ac
	Namespace: namespace_726a1ef0
	Checksum: 0x75067220
	Offset: 0xAE0
	Size: 0xD5
	Parameters: 2
	Flags: None
*/
function function_fea5c2ac(type, upgraded)
{
	if(!isdefined(level.var_ab0cd3b2[type]))
	{
		return;
	}
	if(isdefined(level.var_ab0cd3b2[type].on_give))
	{
		foreach(on_give in level.var_ab0cd3b2[type].on_give)
		{
			self [[on_give]](type);
		}
	}
}

/*
	Name: function_8ffa26e2
	Namespace: namespace_726a1ef0
	Checksum: 0x642F9668
	Offset: 0xBC0
	Size: 0xEF
	Parameters: 4
	Flags: None
*/
function function_8ffa26e2(type, upgraded, slot, setFlags)
{
	if(!isdefined(upgraded))
	{
		upgraded = 0;
	}
	if(!isdefined(setFlags))
	{
		setFlags = 1;
	}
	if(!isdefined(level.var_ab0cd3b2[type]))
	{
		return 0;
	}
	if(!isdefined(slot))
	{
		self function_be9e2d9(type, upgraded);
	}
	else
	{
		self function_be9e2d9(type, upgraded, slot);
	}
	if(setFlags)
	{
		self cybercom::function_b6b97f75();
	}
	self function_fea5c2ac(type);
	return 1;
}

/*
	Name: function_ccca7010
	Namespace: namespace_726a1ef0
	Checksum: 0x2BE67616
	Offset: 0xCB8
	Size: 0x3F
	Parameters: 1
	Flags: None
*/
function function_ccca7010(type)
{
	if(!isdefined(level.var_ab0cd3b2[type]))
	{
		return 0;
	}
	self function_45ce30b1(type);
	return 1;
}

/*
	Name: function_45ce30b1
	Namespace: namespace_726a1ef0
	Checksum: 0xD9625089
	Offset: 0xD00
	Size: 0x12F
	Parameters: 1
	Flags: Private
*/
function private function_45ce30b1(type)
{
	if(!isdefined(level.var_ab0cd3b2[type]))
	{
		return 0;
	}
	if(isdefined(level.var_ab0cd3b2[type]) && isdefined(level.var_ab0cd3b2[type].on_take))
	{
		foreach(on_take in level.var_ab0cd3b2[type].on_take)
		{
			self [[on_take]](type);
		}
	}
	self notify("take_ability_" + type);
	self function_9f1f0e5c(type);
	self cybercom::function_b6b97f75();
	return 1;
}

/*
	Name: function_78908229
	Namespace: namespace_726a1ef0
	Checksum: 0x9FB48B37
	Offset: 0xE38
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_78908229()
{
	foreach(ability in level.var_ab0cd3b2)
	{
		if(self function_76f34311(ability.name) != 0)
		{
			function_45ce30b1(ability.name);
		}
	}
	self cybercom::function_b6b97f75();
}

/*
	Name: function_a07bf2cb
	Namespace: namespace_726a1ef0
	Checksum: 0x70F2CF9A
	Offset: 0xF18
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_a07bf2cb()
{
	foreach(ability in level.var_ab0cd3b2)
	{
		status = self function_76f34311(ability.name);
		if(status != 0)
		{
			self function_8ffa26e2(ability.name, status == 2);
		}
	}
	self cybercom::function_b6b97f75();
}

/*
	Name: function_de82b8b4
	Namespace: namespace_726a1ef0
	Checksum: 0xDF2D2562
	Offset: 0x1018
	Size: 0x101
	Parameters: 1
	Flags: None
*/
function function_de82b8b4(type)
{
	var_2f4d1887 = self function_76f34311(type);
	if(var_2f4d1887 == 0)
	{
		return;
	}
	if(isdefined(level.var_ab0cd3b2[type]) && isdefined(level.var_ab0cd3b2[type].turn_on))
	{
		foreach(turn_on in level.var_ab0cd3b2[type].turn_on)
		{
			self [[turn_on]](type);
		}
	}
}

/*
	Name: function_e7e75042
	Namespace: namespace_726a1ef0
	Checksum: 0x80A4C4FF
	Offset: 0x1128
	Size: 0x101
	Parameters: 1
	Flags: None
*/
function function_e7e75042(type)
{
	var_2f4d1887 = self function_76f34311(type);
	if(var_2f4d1887 == 0)
	{
		return;
	}
	if(isdefined(level.var_ab0cd3b2[type]) && isdefined(level.var_ab0cd3b2[type].turn_off))
	{
		foreach(turn_off in level.var_ab0cd3b2[type].turn_off)
		{
			self [[turn_off]](type);
		}
	}
}

