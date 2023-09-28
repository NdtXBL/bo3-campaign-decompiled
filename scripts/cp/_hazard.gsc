#using scripts\codescripts\struct;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace hazard;

/*
	Name: __init__sytem__
	Namespace: hazard
	Checksum: 0x4D9CADCF
	Offset: 0x248
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__sytem__()
{
	system::register("hazard", &__init__, undefined, undefined);
}

/*
	Name: __init__
	Namespace: hazard
	Checksum: 0xBC6FBDBE
	Offset: 0x288
	Size: 0x13B
	Parameters: 0
	Flags: None
*/
function __init__()
{
	function_6c2729dd("heat", 500, 50, 1, &function_476442fb);
	function_6c2729dd("filter", 500, 50, 2);
	function_6c2729dd("o2", 500, 60, 3, &function_8b413656);
	function_6c2729dd("radation", 500, 50, 4);
	function_6c2729dd("biohazard", 500, 50, 5);
	callback::on_spawned(&on_player_spawned);
	callback::on_player_killed(&on_player_killed);
	callback::on_connect(&on_player_connect);
}

/*
	Name: function_6c2729dd
	Namespace: hazard
	Checksum: 0x3D1698C4
	Offset: 0x3D0
	Size: 0xEB
	Parameters: 5
	Flags: None
*/
function function_6c2729dd(str_name, var_4758598, var_ef1f9f4, n_type, func_update)
{
	if(!isdefined(level.Hazards))
	{
		level.Hazards = [];
	}
	if(!isdefined(level.Hazards[str_name]))
	{
		level.Hazards[str_name] = spawnstruct();
	}
	level.Hazards[str_name].var_4758598 = var_4758598;
	level.Hazards[str_name].var_ef1f9f4 = var_ef1f9f4;
	level.Hazards[str_name].n_type = n_type;
	level.Hazards[str_name].func_update = func_update;
}

/*
	Name: on_player_spawned
	Namespace: hazard
	Checksum: 0x3F6EEE1C
	Offset: 0x4C8
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function on_player_spawned()
{
	reset(1);
}

/*
	Name: on_player_connect
	Namespace: hazard
	Checksum: 0x8B2A3FCF
	Offset: 0x4F0
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function on_player_connect()
{
	reset(0);
	self thread function_b6af57a8();
	self thread function_a421f870();
}

/*
	Name: on_player_killed
	Namespace: hazard
	Checksum: 0xAB3171A
	Offset: 0x548
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function on_player_killed()
{
	reset(1);
}

/*
	Name: reset
	Namespace: hazard
	Checksum: 0x7100897C
	Offset: 0x570
	Size: 0x11B
	Parameters: 1
	Flags: None
*/
function reset(var_b18f74fe)
{
	foreach(_ in level.Hazards)
	{
		self.var_7dec7e93[str_name] = 0;
		self.var_6c3e78bb[str_name] = 1;
	}
	self.var_8657b6f = [];
	self.var_8657b6f["hudItems.hess1"] = 0;
	self.var_8657b6f["hudItems.hess2"] = 0;
	if(var_b18f74fe)
	{
		self SetControllerUIModelValue("hudItems.hess1.type", 0);
		self SetControllerUIModelValue("hudItems.hess2.type", 0);
	}
}

/*
	Name: function_b6af57a8
	Namespace: hazard
	Checksum: 0xB6FDD4C3
	Offset: 0x698
	Size: 0xF5
	Parameters: 0
	Flags: None
*/
function function_b6af57a8()
{
	self endon("disconnect");
	while(1)
	{
		level waittill("save_restore");
		if(isdefined(self.var_8dcb3948) && self.var_8dcb3948)
		{
			continue;
		}
		var_8601d520 = getArrayKeys(level.Hazards);
		foreach(str_name in var_8601d520)
		{
			self do_damage(str_name, 3, undefined);
			wait(0.1);
		}
	}
}

/*
	Name: function_a421f870
	Namespace: hazard
	Checksum: 0xCFE483D9
	Offset: 0x798
	Size: 0xCD
	Parameters: 0
	Flags: None
*/
function function_a421f870()
{
	self endon("disconnect");
	while(1)
	{
		self waittill("player_revived");
		foreach(_ in level.Hazards)
		{
			if(function_b78a859e(str_name) >= 1)
			{
				function_12231466(str_name);
			}
		}
	}
}

/*
	Name: function_12231466
	Namespace: hazard
	Checksum: 0x6F222BBB
	Offset: 0x870
	Size: 0x55
	Parameters: 1
	Flags: None
*/
function function_12231466(str_name)
{
	/#
		Assert(isdefined(level.Hazards[str_name]), "Dev Block strings are not supported" + str_name + "Dev Block strings are not supported");
	#/
	self.var_7dec7e93[str_name] = 0;
}

/*
	Name: do_damage
	Namespace: hazard
	Checksum: 0xBFDE7E7B
	Offset: 0x8D0
	Size: 0x1C5
	Parameters: 4
	Flags: None
*/
function do_damage(str_name, n_damage, e_ent, var_16e92c54)
{
	/#
		Assert(isdefined(level.Hazards[str_name]), "Dev Block strings are not supported" + str_name + "Dev Block strings are not supported");
	#/
	if(!isdefined(var_16e92c54))
	{
		var_16e92c54 = 0;
	}
	if(scene::is_igc_active())
	{
		return 0;
	}
	var_1fc26863 = level.Hazards[str_name];
	self.var_7dec7e93[str_name] = min(self.var_7dec7e93[str_name] + n_damage, var_1fc26863.var_4758598);
	if(self.var_7dec7e93[str_name] < var_1fc26863.var_4758598)
	{
		self thread function_be12f5f8(str_name, e_ent, var_16e92c54);
		return 1;
	}
	switch(str_name)
	{
		case "o2":
		{
			str_mod = "MOD_DROWN";
			break;
		}
		case "heat":
		{
			str_mod = "MOD_BURNED";
			break;
		}
		case default:
		{
			str_mod = "MOD_UNKNOWN";
		}
	}
	self DoDamage(self.health, self.origin, undefined, undefined, undefined, str_mod);
	return 0;
}

/*
	Name: function_eaa9157d
	Namespace: hazard
	Checksum: 0xE9FCF0C3
	Offset: 0xAA0
	Size: 0x4F
	Parameters: 1
	Flags: None
*/
function function_eaa9157d(str_name)
{
	/#
		Assert(isdefined(self.var_7dec7e93[str_name]), "Dev Block strings are not supported" + str_name + "Dev Block strings are not supported");
	#/
	return self.var_7dec7e93[str_name];
}

/*
	Name: function_b78a859e
	Namespace: hazard
	Checksum: 0xE1B74171
	Offset: 0xAF8
	Size: 0x67
	Parameters: 1
	Flags: None
*/
function function_b78a859e(str_name)
{
	/#
		Assert(isdefined(self.var_7dec7e93[str_name]), "Dev Block strings are not supported" + str_name + "Dev Block strings are not supported");
	#/
	return self.var_7dec7e93[str_name] / level.Hazards[str_name].var_4758598;
}

/*
	Name: function_459e5eff
	Namespace: hazard
	Checksum: 0xE491CFF7
	Offset: 0xB68
	Size: 0x75
	Parameters: 2
	Flags: None
*/
function function_459e5eff(str_name, var_5b9ad5b3)
{
	if(!isdefined(var_5b9ad5b3))
	{
		var_5b9ad5b3 = 1;
	}
	/#
		Assert(isdefined(self.var_6c3e78bb[str_name]), "Dev Block strings are not supported" + str_name + "Dev Block strings are not supported");
	#/
	self.var_6c3e78bb[str_name] = var_5b9ad5b3;
}

/*
	Name: function_be12f5f8
	Namespace: hazard
	Checksum: 0xF67374C3
	Offset: 0xBE8
	Size: 0x38B
	Parameters: 3
	Flags: Private
*/
function private function_be12f5f8(str_name, e_ent, var_16e92c54)
{
	self notify("_hazard_protection_" + str_name);
	self endon("_hazard_protection_" + str_name);
	self endon("death");
	var_1fc26863 = level.Hazards[str_name];
	var_c8fe868d = "";
	foreach(type in self.var_8657b6f)
	{
		if(type == var_1fc26863.n_type)
		{
			var_c8fe868d = model;
			break;
		}
	}
	if(var_c8fe868d == "")
	{
		foreach(type in self.var_8657b6f)
		{
			if(type == 0)
			{
				var_c8fe868d = model;
				break;
			}
		}
	}
	else if(var_c8fe868d != "")
	{
		if(!var_16e92c54)
		{
			self SetControllerUIModelValue(var_c8fe868d + ".type", var_1fc26863.n_type);
		}
		self.var_8657b6f[var_c8fe868d] = var_1fc26863.n_type;
	}
	do
	{
		var_3b567224 = mapfloat(0, var_1fc26863.var_4758598, 1, 0, self.var_7dec7e93[str_name]);
		if(var_c8fe868d != "" && !var_16e92c54)
		{
			self SetControllerUIModelValue(var_c8fe868d + ".ratio", var_3b567224);
		}
		if(isdefined(var_1fc26863.func_update))
		{
			[[var_1fc26863.func_update]](var_3b567224, e_ent);
		}
		wait(0.05);
		if(self.var_6c3e78bb[str_name] == 1)
		{
			self.var_7dec7e93[str_name] = self.var_7dec7e93[str_name] - var_1fc26863.var_ef1f9f4 * 0.05;
		}
	}
	while(!self.var_7dec7e93[str_name] >= 0);
	self function_45f02912();
	if(var_c8fe868d != "")
	{
		if(!var_16e92c54)
		{
			self SetControllerUIModelValue(var_c8fe868d + ".type", 0);
		}
		self.var_8657b6f[var_c8fe868d] = 0;
	}
	else
	{
		Assert("Dev Block strings are not supported");
	}
	/#
	#/
}

/*
	Name: function_45f02912
	Namespace: hazard
	Checksum: 0xFDB4C3A0
	Offset: 0xF80
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_45f02912()
{
	self clientfield::set("burn", 0);
	self clientfield::set_to_player("player_cam_bubbles", 0);
}

/*
	Name: function_476442fb
	Namespace: hazard
	Checksum: 0xDF4B273F
	Offset: 0xFD0
	Size: 0xE3
	Parameters: 2
	Flags: None
*/
function function_476442fb(n_damage_frac, e_ent)
{
	if(!isdefined(e_ent) || scene::is_igc_active())
	{
		self.var_65e617f8 = undefined;
		self clientfield::set("burn", 0);
		return;
	}
	if(!isdefined(self.var_65e617f8) && self.var_65e617f8 && self istouching(e_ent))
	{
		self clientfield::set("burn", 1);
	}
	else
	{
		self.var_65e617f8 = undefined;
		self clientfield::set("burn", 0);
	}
}

/*
	Name: function_503a50a8
	Namespace: hazard
	Checksum: 0xE9C8FD62
	Offset: 0x10C0
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_503a50a8()
{
	self endon("death");
	self clientfield::set_to_player("player_cam_bubbles", 1);
	wait(4);
	self clientfield::set_to_player("player_cam_bubbles", 0);
}

/*
	Name: function_8b413656
	Namespace: hazard
	Checksum: 0x173E20B7
	Offset: 0x1120
	Size: 0x213
	Parameters: 2
	Flags: None
*/
function function_8b413656(var_d2eebe84, e_ent)
{
	if(!isdefined(self.var_18c7e911))
	{
		self.var_18c7e911 = 0;
	}
	if(var_d2eebe84 <= 0.2)
	{
		if(self.var_18c7e911 > 0.2)
		{
			self thread function_503a50a8();
		}
	}
	else if(var_d2eebe84 <= 0.1)
	{
		if(self.var_18c7e911 > 0.1)
		{
			self thread function_503a50a8();
		}
	}
	var_b45ec125 = Array(0.5, 0.3, 0.2, 0.15, 0.1, 0.5);
	foreach(num in var_b45ec125)
	{
		if(var_d2eebe84 != 0 && var_d2eebe84 <= num)
		{
			if(self.var_18c7e911 > num)
			{
				self playsound("vox_plyr_uw_gasp");
				if(num < 0.4)
				{
					self thread function_fda01c41("vox_plyr_uw_emerge_gasp");
				}
				else
				{
					self thread function_fda01c41("vox_plyr_uw_emerge");
				}
				break;
			}
		}
	}
	self.var_18c7e911 = var_d2eebe84;
}

/*
	Name: function_fda01c41
	Namespace: hazard
	Checksum: 0x15C159CC
	Offset: 0x1340
	Size: 0x83
	Parameters: 1
	Flags: None
*/
function function_fda01c41(alias)
{
	self notify("hash_fda01c41");
	self endon("hash_fda01c41");
	self endon("death");
	self endon("disconnect");
	level endon("save_restore");
	while(self IsPlayerUnderwater())
	{
		wait(0.1);
	}
	self playsound(alias);
}

/*
	Name: function_e9b126ef
	Namespace: hazard
	Checksum: 0x76E0FF17
	Offset: 0x13D0
	Size: 0x53
	Parameters: 2
	Flags: None
*/
function function_e9b126ef(n_time, var_827d6de0)
{
	if(!isdefined(var_827d6de0))
	{
		var_827d6de0 = 1;
	}
	self thread function_ccddb105("o2", 4, n_time, var_827d6de0);
}

/*
	Name: function_ccddb105
	Namespace: hazard
	Checksum: 0x40DDE053
	Offset: 0x1430
	Size: 0x1F9
	Parameters: 4
	Flags: None
*/
function function_ccddb105(var_be6a04c9, var_6d20ee14, n_time, var_827d6de0)
{
	/#
		Assert(isdefined(level.Hazards[var_be6a04c9]), "Dev Block strings are not supported" + var_be6a04c9 + "Dev Block strings are not supported");
	#/
	self notify("stop_hazard_dot_" + var_be6a04c9);
	self endon("stop_hazard_dot_" + var_be6a04c9);
	self endon("death");
	self function_459e5eff(var_be6a04c9, 0);
	var_dd075cd2 = 1;
	var_1fc26863 = level.Hazards[var_be6a04c9];
	n_damage = var_6d20ee14;
	if(isdefined(n_time))
	{
		var_97dd249c = self function_eaa9157d(var_be6a04c9);
		var_90d01cd2 = var_1fc26863.var_4758598;
		var_7046c7b3 = var_827d6de0 * var_90d01cd2;
		var_a6321c17 = var_7046c7b3 - var_97dd249c;
		if(var_a6321c17 > 0)
		{
			n_damage = var_a6321c17 / n_time;
		}
	}
	while(1)
	{
		wait(1);
		var_dd075cd2 = self do_damage(var_be6a04c9, n_damage);
		var_7ba0abc9 = self function_b78a859e(var_be6a04c9);
		if(n_damage > var_6d20ee14 && var_7ba0abc9 >= var_827d6de0)
		{
			n_damage = var_6d20ee14;
		}
	}
}

/*
	Name: function_60455f28
	Namespace: hazard
	Checksum: 0x10C8CC52
	Offset: 0x1638
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_60455f28(var_be6a04c9)
{
	self notify("stop_hazard_dot_" + var_be6a04c9);
	self function_459e5eff(var_be6a04c9, 1);
}

