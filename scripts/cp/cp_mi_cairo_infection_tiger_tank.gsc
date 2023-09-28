#using scripts\codescripts\struct;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\system_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\vehicle_death_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\vehicleriders_shared;

#namespace tiger_tank;

/*
	Name: __init__sytem__
	Namespace: tiger_tank
	Checksum: 0xC15424EC
	Offset: 0x560
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__sytem__()
{
	system::register("tiger_tank", &__init__, undefined, undefined);
}

/*
	Name: __init__
	Namespace: tiger_tank
	Checksum: 0xD2A36C
	Offset: 0x5A0
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function __init__()
{
	level._effect["fx_exp_quadtank_death_03"] = "explosions/fx_exp_quadtank_death_03";
	clientfield::register("vehicle", "tiger_tank_retreat_fx", 1, 1, "int");
	clientfield::register("vehicle", "tiger_tank_disable_sfx", 1, 1, "int");
}

#namespace namespace_2e121905;

/*
	Name: function_9b385ca5
	Namespace: namespace_2e121905
	Checksum: 0x1922C70F
	Offset: 0x628
	Size: 0x16B
	Parameters: 0
	Flags: None
*/
function function_9b385ca5()
{
	self.var_a3ea1738 = "none";
	self.var_cad6330b = "";
	self.var_a89a845e = 0;
	self.var_ae796281 = 0;
	self.var_c99bf370 = 0;
	self.var_b78b4a49 = -1;
	self.var_88164886 = undefined;
	self.var_bdfe6578 = 0;
	function_a1b34855("attack", "attack_moving", 100, &function_cf0ca3a4, &function_864de95);
	function_a1b34855("retreat", "retreat", 100, &function_101b3238, &function_19468c8d);
	function_a1b34855("idle", "idle", 100, &function_797da861, &function_19468c8d);
	self flag::init("firing");
	self flag::init("moving");
}

/*
	Name: function_5fba2032
	Namespace: namespace_2e121905
	Checksum: 0x99EC1590
	Offset: 0x7A0
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_5fba2032()
{
}

/*
	Name: function_147315f
	Namespace: namespace_2e121905
	Checksum: 0x1A8603D5
	Offset: 0x7B0
	Size: 0x93
	Parameters: 2
	Flags: None
*/
function function_147315f(vehicle, var_e45a16d2)
{
	if(isdefined(var_e45a16d2))
	{
		var_f73d6972 = GetEnt(var_e45a16d2, "targetname");
		ai_gunner = spawner::simple_spawn_single(var_f73d6972);
		function_3a062392(ai_gunner);
	}
	function_347dd051(vehicle);
}

/*
	Name: function_f7f47181
	Namespace: namespace_2e121905
	Checksum: 0x6BA79B39
	Offset: 0x850
	Size: 0x2D
	Parameters: 0
	Flags: None
*/
function function_f7f47181()
{
	if(self.var_ae796281 < 2)
	{
		self.var_c99bf370 = 1;
		self notify("hash_45d0a8c9");
	}
}

/*
	Name: function_d4274a7
	Namespace: namespace_2e121905
	Checksum: 0xDE98BBE0
	Offset: 0x888
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_d4274a7(n_state)
{
	if(isdefined(self.var_69d9acb))
	{
		self.var_69d9acb clientfield::set("tiger_tank_disable_sfx", n_state);
	}
}

/*
	Name: function_ce839946
	Namespace: namespace_2e121905
	Checksum: 0xCB4FA8DE
	Offset: 0x8D0
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_ce839946()
{
	self endon("stop_think");
	if(!self.var_bdfe6578)
	{
		if(isdefined(self.var_69d9acb))
		{
			self thread track_target();
			wait(0.1);
			self thread function_4ac084e9();
			wait(3);
			self thread fire_turret();
			self thread fire_gunner();
		}
	}
}

/*
	Name: stop_think
	Namespace: namespace_2e121905
	Checksum: 0x78B99201
	Offset: 0x968
	Size: 0x1D
	Parameters: 0
	Flags: None
*/
function stop_think()
{
	self notify("stop_think");
	self notify("hash_45d0a8c9");
}

/*
	Name: function_13eceb32
	Namespace: namespace_2e121905
	Checksum: 0xD3568F0A
	Offset: 0x990
	Size: 0x37
	Parameters: 0
	Flags: None
*/
function function_13eceb32()
{
	if(isdefined(self.var_b9d89d33))
	{
		self.var_b9d89d33 delete();
		self.var_b9d89d33 = undefined;
	}
}

/*
	Name: function_307b1179
	Namespace: namespace_2e121905
	Checksum: 0x611E638A
	Offset: 0x9D0
	Size: 0x77
	Parameters: 0
	Flags: None
*/
function function_307b1179()
{
	stop_think();
	if(isdefined(self.var_69d9acb))
	{
		self.var_69d9acb delete();
		self.var_69d9acb = undefined;
	}
	if(isdefined(self.var_b9d89d33))
	{
		self.var_b9d89d33 delete();
		self.var_b9d89d33 = undefined;
	}
}

/*
	Name: function_347dd051
	Namespace: namespace_2e121905
	Checksum: 0xD6021652
	Offset: 0xA50
	Size: 0x1FB
	Parameters: 1
	Flags: None
*/
function function_347dd051(vehicle)
{
	self.var_69d9acb = vehicle;
	self.var_69d9acb.health = self.var_69d9acb.healthdefault;
	self.var_69d9acb SetNearGoalNotifyDist(120);
	self.var_69d9acb cybercom::function_59965309("cybercom_immolation");
	Target_Set(self.var_69d9acb, VectorScale((0, 0, 1), 60));
	self.var_69d9acb turret::set_burst_parameters(0.75, 1.5, 0.25, 0.75, 1);
	self.var_69d9acb SetOnTargetAngle(1, 0);
	self.var_69d9acb function_af655b16();
	if(IsSentient(self.var_69d9acb))
	{
		self thread vehicle_death();
	}
	if(isdefined(self.var_b9d89d33))
	{
		function_dc12d289();
	}
	self thread function_797a14ff();
	self thread function_4ea63f4f();
	self.var_4c5ecca3 = GetEnt("street_lookat", "targetname");
	self.var_69d9acb SetLookAtEnt(self.var_4c5ecca3);
}

/*
	Name: function_3a062392
	Namespace: namespace_2e121905
	Checksum: 0x9966B6E8
	Offset: 0xC58
	Size: 0x17
	Parameters: 1
	Flags: None
*/
function function_3a062392(ai_gunner)
{
	self.var_b9d89d33 = ai_gunner;
}

/*
	Name: function_dc12d289
	Namespace: namespace_2e121905
	Checksum: 0x575359CE
	Offset: 0xC78
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_dc12d289()
{
	if(isdefined(self.var_b9d89d33))
	{
		self.var_b9d89d33 thread vehicle::get_in(self.var_69d9acb, "gunner1", 1);
		self thread function_490ccf02();
	}
}

/*
	Name: fire_turret
	Namespace: namespace_2e121905
	Checksum: 0x4565F003
	Offset: 0xCD8
	Size: 0x187
	Parameters: 0
	Flags: None
*/
function fire_turret()
{
	self endon("death");
	self endon("stop_think");
	self.var_69d9acb endon("death");
	while(1)
	{
		if(isdefined(self.var_88164886))
		{
			v_target_offset = VectorScale((0, 0, 1), 53);
			var_484a53d8 = self.var_88164886.origin + v_target_offset;
			self.var_b86c3bf6 = Distance(self.var_69d9acb.origin, self.var_88164886.origin);
			self.var_69d9acb util::waittill_any_timeout(2, "turret_on_target");
			if(can_hit_target(var_484a53d8) && self.var_b86c3bf6 > 620)
			{
				self.var_69d9acb FireWeapon(0, self.var_88164886, v_target_offset);
			}
			else
			{
				self.var_69d9acb ClearTurretTarget();
			}
		}
		else
		{
			self.var_69d9acb ClearTurretTarget();
		}
		wait(RandomFloatRange(4, 8));
	}
}

/*
	Name: fire_gunner
	Namespace: namespace_2e121905
	Checksum: 0x7BB90BC4
	Offset: 0xE68
	Size: 0x103
	Parameters: 0
	Flags: None
*/
function fire_gunner()
{
	self endon("death");
	self endon("stop_think");
	self.var_69d9acb endon("death");
	while(1)
	{
		if(isdefined(self.var_88164886))
		{
			if(isdefined(self.var_b9d89d33) && isalive(self.var_b9d89d33))
			{
				self.var_69d9acb thread turret::shoot_at_target(function_8360af05(), -1, (0, 0, 0), 1, 0);
			}
			wait(RandomFloatRange(2, 3));
			self.var_69d9acb turret::disable(1);
			wait(RandomFloatRange(4, 6));
		}
		else
		{
			wait(0.1);
		}
	}
}

/*
	Name: track_target
	Namespace: namespace_2e121905
	Checksum: 0xE18F46F1
	Offset: 0xF78
	Size: 0xCF
	Parameters: 0
	Flags: None
*/
function track_target()
{
	self endon("death");
	self endon("stop_think");
	self.var_69d9acb endon("death");
	while(1)
	{
		self.var_88164886 = function_70b03789();
		if(isdefined(self.var_88164886))
		{
			self.var_69d9acb SetTargetEntity(self.var_88164886);
		}
		else
		{
			self.var_69d9acb ClearTurretTarget();
			self.var_69d9acb ClearTargetEntity();
		}
		wait(RandomFloatRange(4, 5));
	}
}

/*
	Name: function_4ac084e9
	Namespace: namespace_2e121905
	Checksum: 0x88CE3E00
	Offset: 0x1050
	Size: 0x11F
	Parameters: 0
	Flags: None
*/
function function_4ac084e9()
{
	self endon("death");
	self endon("stop_think");
	self.var_69d9acb endon("death");
	while(1)
	{
		b_has_target = function_1de87b78();
		if(b_has_target)
		{
			var_d868c8e5 = function_1138db74();
			if(var_d868c8e5)
			{
				str_type = "retreat";
			}
			else if(self.var_c99bf370)
			{
				self.var_c99bf370 = 0;
				str_type = "retreat";
			}
			else
			{
				str_type = "attack";
			}
		}
		else
		{
			str_type = "idle";
		}
		var_164d95b8 = function_82ff0374(str_type);
		function_b048dc4c(str_type, var_164d95b8);
		wait(0.1);
	}
}

/*
	Name: function_797a14ff
	Namespace: namespace_2e121905
	Checksum: 0xB31A5D2C
	Offset: 0x1178
	Size: 0x8D
	Parameters: 0
	Flags: None
*/
function function_797a14ff()
{
	self endon("death");
	self endon("stop_think");
	self.var_69d9acb endon("death");
	while(1)
	{
		self.var_69d9acb waittill("damage");
		self.var_b47d057e = GetTime();
		if(function_1138db74())
		{
			debug_print("cTigerTank: damage interrupt!");
			self notify("hash_360844d8");
		}
	}
}

/*
	Name: function_b048dc4c
	Namespace: namespace_2e121905
	Checksum: 0x5E57BC00
	Offset: 0x1210
	Size: 0xCB
	Parameters: 2
	Flags: None
*/
function function_b048dc4c(str_type, var_164d95b8)
{
	self endon("hash_360844d8");
	if(self.var_a3ea1738 != var_164d95b8)
	{
		self notify("hash_45d0a8c9");
		/#
			Assert(isdefined(self.var_40c162df[str_type][var_164d95b8]), "Dev Block strings are not supported" + str_type + "Dev Block strings are not supported" + var_164d95b8 + "Dev Block strings are not supported");
		#/
		self.var_cad6330b = self.var_a3ea1738;
		self.var_a3ea1738 = var_164d95b8;
	}
	[[self.var_40c162df[str_type][var_164d95b8].var_ba703cb1]]();
}

/*
	Name: function_797da861
	Namespace: namespace_2e121905
	Checksum: 0xD7E7C1BF
	Offset: 0x12E8
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_797da861()
{
	self endon("hash_45d0a8c9");
	debug_print("cTigerTank: idle");
	self.var_69d9acb turret::disable(0);
	function_4568faa9();
	while(!function_1de87b78())
	{
		wait(0.5);
	}
}

/*
	Name: function_864de95
	Namespace: namespace_2e121905
	Checksum: 0x1B5A05D5
	Offset: 0x1360
	Size: 0x7
	Parameters: 0
	Flags: None
*/
function function_864de95()
{
	return 1;
}

/*
	Name: function_cf0ca3a4
	Namespace: namespace_2e121905
	Checksum: 0xFB30C5D
	Offset: 0x1370
	Size: 0x23F
	Parameters: 0
	Flags: None
*/
function function_cf0ca3a4()
{
	self endon("hash_45d0a8c9");
	debug_print("cTigerTank: attack moving");
	if(isdefined(self.var_88164886))
	{
		v_to_target = VectorNormalize(self.var_88164886.origin - self.var_69d9acb.origin) * 900;
		s_goal = function_cb234295(self.var_69d9acb.origin + v_to_target);
		if(isdefined(s_goal))
		{
			var_4b59adf6 = Distance(self.var_69d9acb.origin, s_goal.origin);
			v_dir = AnglesToForward(s_goal.angles) * 200;
			self.var_4c5ecca3.origin = s_goal.origin + v_dir;
			function_f3e33440(s_goal.origin, 1, 1);
		}
		var_79d88e26 = RandomFloatRange(2.5, 3);
		wait(var_79d88e26);
		var_bf67bca7 = function_c9318f4b();
		var_4b59adf6 = Distance(self.var_69d9acb.origin, var_bf67bca7.origin);
		function_f3e33440(var_bf67bca7.origin, 1, 1);
		var_79d88e26 = RandomFloatRange(3.5, 4);
		wait(var_79d88e26);
	}
	else
	{
		wait(3);
	}
}

/*
	Name: function_101b3238
	Namespace: namespace_2e121905
	Checksum: 0xCB9D1E93
	Offset: 0x15B8
	Size: 0x163
	Parameters: 0
	Flags: None
*/
function function_101b3238()
{
	self endon("hash_45d0a8c9");
	debug_print("cTigerTank: retreat");
	self.var_b78b4a49 = -1;
	nd_goal = function_ffde4e7f();
	if(isdefined(nd_goal))
	{
		debug_print("cTigerTank: retreating!");
		function_d677fbba(nd_goal.origin, "RETREAT", (0, 0, 1), 200);
		self.var_69d9acb clientfield::set("tiger_tank_retreat_fx", 1);
		self.var_d7b7066f = GetTime();
		function_f3e33440(nd_goal.origin, 1, 0, 0);
		function_bfc2da97();
		self function_4a890e39();
		self.var_69d9acb clientfield::set("tiger_tank_retreat_fx", 0);
	}
	else
	{
		debug_print("cTigerTank: retreat failed!");
	}
}

/*
	Name: function_1de87b78
	Namespace: namespace_2e121905
	Checksum: 0x76834728
	Offset: 0x1728
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_1de87b78()
{
	a_targets = self.var_69d9acb turret::_get_potential_targets(0);
	b_has_target = a_targets.size > 0;
	return b_has_target;
}

/*
	Name: function_70b03789
	Namespace: namespace_2e121905
	Checksum: 0xFB9FC50D
	Offset: 0x1778
	Size: 0x133
	Parameters: 0
	Flags: None
*/
function function_70b03789()
{
	a_targets = self.var_69d9acb turret::_get_potential_targets(0);
	e_closest = undefined;
	if(a_targets.size > 0)
	{
		var_a529ba4d = ArraySort(a_targets, self.var_69d9acb.origin, 1);
		foreach(e_target in var_a529ba4d)
		{
			if(Distance2D(e_target.origin, self.var_69d9acb.origin) > self.var_69d9acb.radius)
			{
				e_closest = e_target;
			}
		}
	}
	return e_closest;
}

/*
	Name: get_targets
	Namespace: namespace_2e121905
	Checksum: 0x26E254C3
	Offset: 0x18B8
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function get_targets()
{
	a_targets = self.var_69d9acb turret::_get_potential_targets(0);
	return a_targets;
}

/*
	Name: function_82ff0374
	Namespace: namespace_2e121905
	Checksum: 0x192F56BB
	Offset: 0x18F0
	Size: 0xDB
	Parameters: 1
	Flags: None
*/
function function_82ff0374(str_type)
{
	/#
		Assert(isdefined(self.var_40c162df[str_type]), "Dev Block strings are not supported" + str_type + "Dev Block strings are not supported");
	#/
	var_eaf4e195 = function_e429cfd8(str_type);
	if(var_eaf4e195.size > 1 && IsInArray(var_eaf4e195, self.var_a3ea1738))
	{
		ArrayRemoveValue(var_eaf4e195, self.var_a3ea1738, 0);
	}
	var_1e336267 = function_25fc80d0(str_type, var_eaf4e195);
	return var_1e336267;
}

/*
	Name: function_e429cfd8
	Namespace: namespace_2e121905
	Checksum: 0x73B71D44
	Offset: 0x19D8
	Size: 0x12F
	Parameters: 1
	Flags: None
*/
function function_e429cfd8(str_type)
{
	var_a7133b4a = getArrayKeys(self.var_40c162df[str_type]);
	var_eaf4e195 = [];
	for(i = 0; i < var_a7133b4a.size; i++)
	{
		if([[self.var_40c162df[str_type][var_a7133b4a[i]].var_6bea3018]]())
		{
			if(!isdefined(var_eaf4e195))
			{
				var_eaf4e195 = [];
			}
			else if(!IsArray(var_eaf4e195))
			{
				var_eaf4e195 = Array(var_eaf4e195);
			}
			var_eaf4e195[var_eaf4e195.size] = var_a7133b4a[i];
		}
	}
	/#
		Assert(var_eaf4e195.size, "Dev Block strings are not supported" + str_type + "Dev Block strings are not supported");
	#/
	return var_eaf4e195;
}

/*
	Name: function_25fc80d0
	Namespace: namespace_2e121905
	Checksum: 0x2C12C584
	Offset: 0x1B10
	Size: 0x15F
	Parameters: 2
	Flags: None
*/
function function_25fc80d0(str_type, var_a7133b4a)
{
	var_1177aea3 = 0;
	for(i = 0; i < var_a7133b4a.size; i++)
	{
		var_1177aea3 = var_1177aea3 + self.var_40c162df[str_type][var_a7133b4a[i]].n_chance;
		self.var_40c162df[str_type][var_a7133b4a[i]].var_e60fa78d = var_1177aea3;
	}
	n_roll = randomIntRange(0, var_1177aea3);
	for(j = 0; j < var_a7133b4a.size; j++)
	{
		if(n_roll < self.var_40c162df[str_type][var_a7133b4a[j]].var_e60fa78d)
		{
			var_1e336267 = var_a7133b4a[j];
			break;
		}
	}
	/#
		Assert(isdefined(var_1e336267), "Dev Block strings are not supported");
	#/
	return var_1e336267;
}

/*
	Name: function_a1b34855
	Namespace: namespace_2e121905
	Checksum: 0xF88D1E0F
	Offset: 0x1C78
	Size: 0x1FF
	Parameters: 5
	Flags: None
*/
function function_a1b34855(str_type, str_state, n_chance, var_ba703cb1, var_6bea3018)
{
	/#
		Assert(isdefined(str_type), "Dev Block strings are not supported");
	#/
	/#
		Assert(isdefined(str_state), "Dev Block strings are not supported");
	#/
	/#
		Assert(isdefined(n_chance), "Dev Block strings are not supported");
	#/
	/#
		Assert(isdefined(var_ba703cb1), "Dev Block strings are not supported");
	#/
	/#
		Assert(isdefined(var_6bea3018), "Dev Block strings are not supported");
	#/
	if(!isdefined(self.var_40c162df))
	{
		self.var_40c162df = [];
	}
	if(!isdefined(self.var_40c162df[str_type]))
	{
		self.var_40c162df[str_type] = [];
	}
	/#
		Assert(!isdefined(self.var_40c162df[str_type][str_state]), "Dev Block strings are not supported" + str_type + "Dev Block strings are not supported" + str_state + "Dev Block strings are not supported");
	#/
	self.var_40c162df[str_type][str_state] = spawnstruct();
	self.var_40c162df[str_type][str_state].n_chance = n_chance;
	self.var_40c162df[str_type][str_state].var_ba703cb1 = var_ba703cb1;
	self.var_40c162df[str_type][str_state].var_6bea3018 = var_6bea3018;
}

/*
	Name: function_4a890e39
	Namespace: namespace_2e121905
	Checksum: 0x3909C21B
	Offset: 0x1E80
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_4a890e39()
{
	self endon("death");
	self.var_69d9acb endon("death");
	self flag::wait_till_clear("moving");
}

/*
	Name: function_bfc2da97
	Namespace: namespace_2e121905
	Checksum: 0x1F7C8F10
	Offset: 0x1EC8
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_bfc2da97()
{
	self.var_69d9acb SetVehGoalPos(self.var_69d9acb.origin, 1, 0);
	self.var_69d9acb CancelAIMove();
	self flag::clear("moving");
}

/*
	Name: function_f3e33440
	Namespace: namespace_2e121905
	Checksum: 0xCFD4C9A2
	Offset: 0x1F40
	Size: 0x23B
	Parameters: 5
	Flags: None
*/
function function_f3e33440(v_target, var_188645ca, var_bc1310a, var_96d0393f, n_timeout)
{
	if(!isdefined(var_bc1310a))
	{
		var_bc1310a = 0;
	}
	if(!isdefined(var_96d0393f))
	{
		var_96d0393f = 0;
	}
	if(!isdefined(n_timeout))
	{
		n_timeout = 20;
	}
	self flag::set("moving");
	b_can_path = self.var_69d9acb SetVehGoalPos(v_target, var_188645ca, 1);
	if(b_can_path)
	{
		if(var_bc1310a)
		{
			self.var_69d9acb SetSpeed(10);
		}
		if(var_96d0393f)
		{
			self thread function_b86522b7();
		}
		self thread function_838f37e(v_target);
		str_result = self.var_69d9acb util::waittill_any_timeout(n_timeout, "near_goal", "goal", "within_engagement_distance");
		self.var_69d9acb ClearVehGoalPos();
		self.var_69d9acb CancelAIMove();
		function_46f90745();
		if(str_result === "timeout")
		{
			debug_print("cTigerTank: send_vehicle_to_position timed out");
		}
		if(var_bc1310a)
		{
			N_SPEED_MAX = self.var_69d9acb GetMaxSpeed() / 17.6;
			self.var_69d9acb SetSpeed(N_SPEED_MAX);
		}
		self flag::clear("moving");
	}
}

/*
	Name: function_cb234295
	Namespace: namespace_2e121905
	Checksum: 0x15CBE2
	Offset: 0x2188
	Size: 0xEB
	Parameters: 3
	Flags: None
*/
function function_cb234295(v_target, var_c1061a76, var_a610eec8)
{
	var_b85e0186 = Array("street", "street_0", "street_1", "street_2");
	var_62533f1c = var_b85e0186[self.var_ae796281];
	self.var_889ff800 = getvehiclenodearray(var_62533f1c, "script_noteworthy");
	/#
		Assert(self.var_889ff800.size, "Dev Block strings are not supported");
	#/
	var_bd615cc9 = ArrayGetClosest(v_target, self.var_889ff800);
	return var_bd615cc9;
}

/*
	Name: vehicle_death
	Namespace: namespace_2e121905
	Checksum: 0xAEBC659E
	Offset: 0x2280
	Size: 0x1CF
	Parameters: 0
	Flags: None
*/
function vehicle_death()
{
	str_deathmodel = self.var_69d9acb.deathmodel;
	self.var_69d9acb waittill("death");
	self.var_bdfe6578 = 1;
	stop_think();
	if(isdefined(self.var_69d9acb))
	{
		self.var_69d9acb playsound("exp_tiger_death");
		var_42af8d5d = util::spawn_model(str_deathmodel, self.var_69d9acb.origin, self.var_69d9acb.angles);
		BadPlace_Box("", 0, self.var_69d9acb.origin, self.var_69d9acb.radius, "neutral");
		PlayFXOnTag(level._effect["fx_exp_quadtank_death_03"], var_42af8d5d, "tag_origin");
		self.var_69d9acb ai::set_ignoreme(1);
		self.var_69d9acb ai::set_ignoreall(1);
		self.var_69d9acb Hide();
		function_13eceb32();
		wait(2);
		self.var_69d9acb delete();
		self.var_69d9acb = undefined;
	}
}

/*
	Name: function_490ccf02
	Namespace: namespace_2e121905
	Checksum: 0x22F78B
	Offset: 0x2458
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_490ccf02()
{
	self endon("death");
	self.var_69d9acb endon("death");
	self.var_b9d89d33 waittill("death");
	function_4568faa9();
}

/*
	Name: function_b86522b7
	Namespace: namespace_2e121905
	Checksum: 0x9D787C2D
	Offset: 0x24A8
	Size: 0xBF
	Parameters: 0
	Flags: None
*/
function function_b86522b7()
{
	self endon("death");
	self endon("hash_45d0a8c9");
	self.var_69d9acb endon("death");
	self.var_69d9acb endon("goal");
	self.var_69d9acb endon("near_goal");
	while(Distance(self.var_69d9acb.origin, self.var_88164886.origin) > 900)
	{
		wait(0.25);
	}
	debug_print("cTigerTank: notify - within_engagement_distance");
	self.var_69d9acb notify("hash_97ae96d8");
}

/*
	Name: function_19468c8d
	Namespace: namespace_2e121905
	Checksum: 0xBBFD95C3
	Offset: 0x2570
	Size: 0x7
	Parameters: 0
	Flags: None
*/
function function_19468c8d()
{
	return 1;
}

/*
	Name: function_96d1a6
	Namespace: namespace_2e121905
	Checksum: 0xF1757C69
	Offset: 0x2580
	Size: 0x5
	Parameters: 0
	Flags: None
*/
function function_96d1a6()
{
	return 0;
}

/*
	Name: function_ffde4e7f
	Namespace: namespace_2e121905
	Checksum: 0x2504DA3E
	Offset: 0x2590
	Size: 0xD1
	Parameters: 0
	Flags: None
*/
function function_ffde4e7f()
{
	a_locations = Array("street_0_retreat", "street_1_retreat", "street_2_retreat");
	var_62533f1c = a_locations[self.var_ae796281];
	self.var_889ff800 = getvehiclenodearray(var_62533f1c, "script_noteworthy");
	nd_goal = function_f270b41d(self.var_69d9acb.origin, self.var_889ff800);
	self.var_ae796281++;
	if(self.var_ae796281 == 1)
	{
		level notify("hash_6ee94cb6");
	}
	return nd_goal;
}

/*
	Name: function_c9318f4b
	Namespace: namespace_2e121905
	Checksum: 0x8D86AEE7
	Offset: 0x2670
	Size: 0x105
	Parameters: 0
	Flags: None
*/
function function_c9318f4b()
{
	a_locations = Array("street", "street_0", "street_1", "street_2");
	var_62533f1c = a_locations[self.var_ae796281];
	self.var_889ff800 = getvehiclenodearray(var_62533f1c, "script_noteworthy");
	for(var_e7bee84c = RandomInt(self.var_889ff800.size); var_e7bee84c == self.var_b78b4a49;  = RandomInt(self.var_889ff800.size))
	{
	}
	self.var_b78b4a49 = var_e7bee84c;
	nd_goal = self.var_889ff800[var_e7bee84c];
	return nd_goal;
}

/*
	Name: function_1138db74
	Namespace: namespace_2e121905
	Checksum: 0x9C9F7049
	Offset: 0x2780
	Size: 0x121
	Parameters: 0
	Flags: None
*/
function function_1138db74()
{
	if(self.var_ae796281 < 2)
	{
		n_current_time = GetTime();
		if(isdefined(self.var_b47d057e))
		{
			var_19d53efd = n_current_time - self.var_b47d057e * 0.001;
			if(var_19d53efd < 5)
			{
				var_f5742a3c = 1;
			}
			else
			{
				var_f5742a3c = 0;
			}
		}
		else
		{
			var_f5742a3c = 0;
		}
		var_46b3a714 = function_67d093da() < 0.7;
		var_59e2529 = isdefined(self.var_d7b7066f) && n_current_time - self.var_d7b7066f * 0.001 < 5;
		var_d868c8e5 = var_f5742a3c && var_46b3a714 && !var_59e2529;
		return var_d868c8e5;
	}
	else
	{
		return 0;
	}
}

/*
	Name: function_67d093da
	Namespace: namespace_2e121905
	Checksum: 0xA6BCBADE
	Offset: 0x28B0
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_67d093da()
{
	return self.var_69d9acb.health / self.var_69d9acb.healthdefault;
}

/*
	Name: debug_print
	Namespace: namespace_2e121905
	Checksum: 0xF2858F01
	Offset: 0x28E0
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function debug_print(str_text)
{
	/#
		if(GetDvarInt("Dev Block strings are not supported", 0))
		{
			IPrintLnBold(str_text);
		}
	#/
}

/*
	Name: function_4ea63f4f
	Namespace: namespace_2e121905
	Checksum: 0x4804B285
	Offset: 0x2930
	Size: 0x107
	Parameters: 0
	Flags: None
*/
function function_4ea63f4f()
{
	self endon("death");
	self.var_69d9acb endon("death");
	while(1)
	{
		if(GetDvarInt("debug_tiger_tank", 0))
		{
			function_8ad17378("STATE: " + self.var_a3ea1738, 0, 2);
			function_8ad17378("FIRING: " + self flag::get("firing"), 1, 2);
			function_8ad17378("MOVING: " + self flag::get("moving"), 2, 2);
		}
		wait(0.1);
	}
}

/*
	Name: can_hit_target
	Namespace: namespace_2e121905
	Checksum: 0x3951F061
	Offset: 0x2A40
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function can_hit_target(v_target)
{
	v_start = self.var_69d9acb GetTagOrigin("tag_barrel");
	b_trace_passed = BulletTracePassed(v_start, v_target, 0, self.var_69d9acb);
	return b_trace_passed;
}

/*
	Name: function_8ad17378
	Namespace: namespace_2e121905
	Checksum: 0xA0DEA403
	Offset: 0x2AB8
	Size: 0x9B
	Parameters: 3
	Flags: None
*/
function function_8ad17378(str_text, var_8dc519f1, n_duration)
{
	v_offset = VectorScale((0, 0, 1), 120) + (0, 0, var_8dc519f1 * 25);
	/#
		print3d(self.var_69d9acb.origin + v_offset, str_text, (1, 1, 1), 1, 1.5, n_duration);
	#/
}

/*
	Name: function_302aef1c
	Namespace: namespace_2e121905
	Checksum: 0xBCE26EEC
	Offset: 0x2B60
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_302aef1c()
{
	/#
		if(GetDvarInt("Dev Block strings are not supported", 0) > 1)
		{
			DebugBreak();
		}
	#/
}

/*
	Name: function_838f37e
	Namespace: namespace_2e121905
	Checksum: 0x3A0D65F0
	Offset: 0x2BA8
	Size: 0x67
	Parameters: 1
	Flags: None
*/
function function_838f37e(v_goal)
{
	self endon("death");
	self endon("hash_46f90745");
	/#
		while(1)
		{
			function_d677fbba(v_goal, "Dev Block strings are not supported", (1, 1, 1), 1);
			wait(0.05);
		}
	#/
}

/*
	Name: function_46f90745
	Namespace: namespace_2e121905
	Checksum: 0xA1F98BA7
	Offset: 0x2C18
	Size: 0x15
	Parameters: 0
	Flags: None
*/
function function_46f90745()
{
	/#
		self notify("hash_46f90745");
	#/
}

/*
	Name: function_d677fbba
	Namespace: namespace_2e121905
	Checksum: 0x1F95467E
	Offset: 0x2C38
	Size: 0xB3
	Parameters: 4
	Flags: None
*/
function function_d677fbba(v_goal, str_text, v_color, n_duration)
{
	/#
		if(GetDvarInt("Dev Block strings are not supported", 0))
		{
			debugstar(v_goal, n_duration, v_color);
			print3d(v_goal + VectorScale((0, 0, 1), 40), str_text, v_color, 1, 1.5, n_duration);
		}
	#/
}

/*
	Name: function_af655b16
	Namespace: namespace_2e121905
	Checksum: 0x684836BD
	Offset: 0x2CF8
	Size: 0xF
	Parameters: 0
	Flags: None
*/
function function_af655b16()
{
	self.fovcosine = 0;
}

/*
	Name: function_4568faa9
	Namespace: namespace_2e121905
	Checksum: 0x57DAA559
	Offset: 0x2D10
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_4568faa9()
{
	self.var_69d9acb turret::disable(1);
	self.var_69d9acb notify("turret_disabled" + 1);
}

/*
	Name: function_8360af05
	Namespace: namespace_2e121905
	Checksum: 0xB14F5D7A
	Offset: 0x2D58
	Size: 0xA7
	Parameters: 0
	Flags: None
*/
function function_8360af05()
{
	a_potential_targets = get_targets();
	if(isdefined(self.var_88164886))
	{
		ArrayRemoveValue(a_potential_targets, self.var_88164886);
	}
	if(a_potential_targets.size > 0)
	{
		var_221cf570 = ArraySort(a_potential_targets, self.var_69d9acb.origin, 1)[0];
	}
	else
	{
		var_221cf570 = self.var_88164886;
	}
	return var_221cf570;
}

#namespace tiger_tank;

/*
	Name: function_2e121905
	Namespace: tiger_tank
	Checksum: 0x3E604E78
	Offset: 0x2E08
	Size: 0xA15
	Parameters: 0
	Flags: 6
*/
function private autoexec function_2e121905()
{
	classes.var_2e121905[0] = spawnstruct();
	classes.var_2e121905[0].__vtable[-2090815739] = &namespace_2e121905::function_8360af05;
	classes.var_2e121905[0].__vtable[1164507817] = &namespace_2e121905::function_4568faa9;
	classes.var_2e121905[0].__vtable[-1352312042] = &namespace_2e121905::function_af655b16;
	classes.var_2e121905[0].__vtable[-696779846] = &namespace_2e121905::function_d677fbba;
	classes.var_2e121905[0].__vtable[1190725445] = &namespace_2e121905::function_46f90745;
	classes.var_2e121905[0].__vtable[137950078] = &namespace_2e121905::function_838f37e;
	classes.var_2e121905[0].__vtable[808120092] = &namespace_2e121905::function_302aef1c;
	classes.var_2e121905[0].__vtable[-1965984904] = &namespace_2e121905::function_8ad17378;
	classes.var_2e121905[0].__vtable[2090288249] = &namespace_2e121905::can_hit_target;
	classes.var_2e121905[0].__vtable[1319518031] = &namespace_2e121905::function_4ea63f4f;
	classes.var_2e121905[0].__vtable[-1346638778] = &namespace_2e121905::debug_print;
	classes.var_2e121905[0].__vtable[1741722586] = &namespace_2e121905::function_67d093da;
	classes.var_2e121905[0].__vtable[288938868] = &namespace_2e121905::function_1138db74;
	classes.var_2e121905[0].__vtable[-919498933] = &namespace_2e121905::function_c9318f4b;
	classes.var_2e121905[0].__vtable[-2208129] = &namespace_2e121905::function_ffde4e7f;
	classes.var_2e121905[0].__vtable[9884070] = &namespace_2e121905::function_96d1a6;
	classes.var_2e121905[0].__vtable[424053901] = &namespace_2e121905::function_19468c8d;
	classes.var_2e121905[0].__vtable[-1201331529] = &namespace_2e121905::function_b86522b7;
	classes.var_2e121905[0].__vtable[1225576194] = &namespace_2e121905::function_490ccf02;
	classes.var_2e121905[0].__vtable[-2106133372] = &namespace_2e121905::vehicle_death;
	classes.var_2e121905[0].__vtable[-886881643] = &namespace_2e121905::function_cb234295;
	classes.var_2e121905[0].__vtable[-203213760] = &namespace_2e121905::function_f3e33440;
	classes.var_2e121905[0].__vtable[-1077749097] = &namespace_2e121905::function_bfc2da97;
	classes.var_2e121905[0].__vtable[1250496057] = &namespace_2e121905::function_4a890e39;
	classes.var_2e121905[0].__vtable[-1582086059] = &namespace_2e121905::function_a1b34855;
	classes.var_2e121905[0].__vtable[637305040] = &namespace_2e121905::function_25fc80d0;
	classes.var_2e121905[0].__vtable[-467021864] = &namespace_2e121905::function_e429cfd8;
	classes.var_2e121905[0].__vtable[-2097216652] = &namespace_2e121905::function_82ff0374;
	classes.var_2e121905[0].__vtable[661347056] = &namespace_2e121905::get_targets;
	classes.var_2e121905[0].__vtable[1890596745] = &namespace_2e121905::function_70b03789;
	classes.var_2e121905[0].__vtable[501775224] = &namespace_2e121905::function_1de87b78;
	classes.var_2e121905[0].__vtable[270217784] = &namespace_2e121905::function_101b3238;
	classes.var_2e121905[0].__vtable[-821255260] = &namespace_2e121905::function_cf0ca3a4;
	classes.var_2e121905[0].__vtable[140828309] = &namespace_2e121905::function_864de95;
	classes.var_2e121905[0].__vtable[2038278241] = &namespace_2e121905::function_797da861;
	classes.var_2e121905[0].__vtable[-1337402292] = &namespace_2e121905::function_b048dc4c;
	classes.var_2e121905[0].__vtable[2038043903] = &namespace_2e121905::function_797a14ff;
	classes.var_2e121905[0].__vtable[1254130921] = &namespace_2e121905::function_4ac084e9;
	classes.var_2e121905[0].__vtable[-1254843006] = &namespace_2e121905::track_target;
	classes.var_2e121905[0].__vtable[814915613] = &namespace_2e121905::fire_gunner;
	classes.var_2e121905[0].__vtable[-888482174] = &namespace_2e121905::fire_turret;
	classes.var_2e121905[0].__vtable[-602746231] = &namespace_2e121905::function_dc12d289;
	classes.var_2e121905[0].__vtable[973480850] = &namespace_2e121905::function_3a062392;
	classes.var_2e121905[0].__vtable[880660561] = &namespace_2e121905::function_347dd051;
	classes.var_2e121905[0].__vtable[813371769] = &namespace_2e121905::function_307b1179;
	classes.var_2e121905[0].__vtable[334293810] = &namespace_2e121905::function_13eceb32;
	classes.var_2e121905[0].__vtable[-2802352] = &namespace_2e121905::stop_think;
	classes.var_2e121905[0].__vtable[-830236346] = &namespace_2e121905::function_ce839946;
	classes.var_2e121905[0].__vtable[222459047] = &namespace_2e121905::function_d4274a7;
	classes.var_2e121905[0].__vtable[-134975103] = &namespace_2e121905::function_f7f47181;
	classes.var_2e121905[0].__vtable[21442911] = &namespace_2e121905::function_147315f;
	classes.var_2e121905[0].__vtable[1606033458] = &namespace_2e121905::function_5fba2032;
	classes.var_2e121905[0].__vtable[-1690805083] = &namespace_2e121905::function_9b385ca5;
}

