#using scripts\codescripts\struct;
#using scripts\cp\cybercom\_cybercom_dev;
#using scripts\cp\cybercom\_cybercom_gadget;
#using scripts\cp\cybercom\_cybercom_gadget_concussive_wave;
#using scripts\cp\cybercom\_cybercom_gadget_electrostatic_strike;
#using scripts\cp\cybercom\_cybercom_gadget_exosuitbreakdown;
#using scripts\cp\cybercom\_cybercom_gadget_firefly;
#using scripts\cp\cybercom\_cybercom_gadget_forced_malfunction;
#using scripts\cp\cybercom\_cybercom_gadget_iff_override;
#using scripts\cp\cybercom\_cybercom_gadget_immolation;
#using scripts\cp\cybercom\_cybercom_gadget_mrpukey;
#using scripts\cp\cybercom\_cybercom_gadget_security_breach;
#using scripts\cp\cybercom\_cybercom_gadget_sensory_overload;
#using scripts\cp\cybercom\_cybercom_gadget_servo_shortout;
#using scripts\cp\cybercom\_cybercom_gadget_smokescreen;
#using scripts\cp\cybercom\_cybercom_gadget_surge;
#using scripts\cp\cybercom\_cybercom_gadget_system_overload;
#using scripts\cp\cybercom\_cybercom_tactical_rig;
#using scripts\cp\cybercom\_cybercom_tactical_rig_emergencyreserve;
#using scripts\cp\cybercom\_cybercom_tactical_rig_proximitydeterrent;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\shared\ai_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\hud_util_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace cybercom;

/*
	Name: __init__sytem__
	Namespace: cybercom
	Checksum: 0x87D74700
	Offset: 0x978
	Size: 0x3B
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__sytem__()
{
	system::register("cybercom", &init, &main, undefined);
}

/*
	Name: init
	Namespace: cybercom
	Checksum: 0x614A0B0D
	Offset: 0x9C0
	Size: 0x3C3
	Parameters: 0
	Flags: None
*/
function init()
{
	clientfield::register("world", "cybercom_disabled", 1, 1, "int");
	clientfield::register("toplayer", "cybercom_disabled", 1, 1, "int");
	clientfield::register("vehicle", "cybercom_setiffname", 1, 3, "int");
	clientfield::register("actor", "cybercom_setiffname", 1, 3, "int");
	clientfield::register("actor", "cybercom_immolate", 1, 2, "int");
	clientfield::register("vehicle", "cybercom_immolate", 1, 1, "int");
	clientfield::register("actor", "cybercom_sysoverload", 1, 2, "int");
	clientfield::register("vehicle", "cybercom_sysoverload", 1, 1, "int");
	clientfield::register("actor", "cybercom_surge", 1, 2, "int");
	clientfield::register("vehicle", "cybercom_surge", 1, 2, "int");
	clientfield::register("scriptmover", "cybercom_surge", 1, 1, "int");
	clientfield::register("actor", "cybercom_shortout", 1, 2, "int");
	clientfield::register("vehicle", "cybercom_shortout", 1, 2, "int");
	clientfield::register("allplayers", "cyber_arm_pulse", 1, 2, "counter");
	clientfield::register("actor", "cyber_arm_pulse", 1, 2, "counter");
	clientfield::register("scriptmover", "cyber_arm_pulse", 1, 2, "counter");
	clientfield::register("toplayer", "hacking_progress", 1, 12, "int");
	clientfield::register("clientuimodel", "playerAbilities.inRange", 1, 1, "int");
	clientfield::register("toplayer", "resetAbilityWheel", 1, 1, "int");
	namespace_d00ec32::init();
	namespace_726a1ef0::init();
	function_beff8cf9();
}

/*
	Name: function_4ee56464
	Namespace: cybercom
	Checksum: 0x1FB06128
	Offset: 0xD90
	Size: 0x77
	Parameters: 3
	Flags: None
*/
function function_4ee56464(var_23810282, var_442fb6cd, var_6ee14d17)
{
	var_6a9f2d8 = spawnstruct();
	var_6a9f2d8.var_974cd16f = var_23810282;
	var_6a9f2d8.var_e909f6f0 = var_442fb6cd;
	var_6a9f2d8.var_3d1b9c0c = var_6ee14d17;
	return var_6a9f2d8;
}

/*
	Name: function_beff8cf9
	Namespace: cybercom
	Checksum: 0xA3844A23
	Offset: 0xE10
	Size: 0x4D
	Parameters: 0
	Flags: None
*/
function function_beff8cf9()
{
	level.var_e4e6dd84 = [];
	level.var_e4e6dd84["default"] = function_4ee56464(0.5, 0.5, 0.5);
}

/*
	Name: function_7f3ccb7
	Namespace: cybercom
	Checksum: 0x85BC197
	Offset: 0xE68
	Size: 0x13B
	Parameters: 2
	Flags: None
*/
function function_7f3ccb7(slot, weapon)
{
	self GadgetSetActivateTime(slot, GetTime());
	if(!isdefined(self.spawntime) || GetTime() - self.spawntime > 200)
	{
		if(GetDvarInt("ai_awarenessEnabled") && isdefined(weapon) && IsSubStr(weapon.name, "hijack"))
		{
			return;
		}
		self function_a8d4019b();
	}
	if(isPlayer(self))
	{
		if(!isdefined(self.var_1c0132c[weapon.name]))
		{
			self.var_1c0132c[weapon.name] = 0;
		}
		self.var_1c0132c[weapon.name]++;
		self function_7eac7939(weapon, self.origin, GetTime(), 0);
	}
}

/*
	Name: function_b8e0020b
	Namespace: cybercom
	Checksum: 0x9290920F
	Offset: 0xFB0
	Size: 0x13
	Parameters: 2
	Flags: None
*/
function function_b8e0020b(slot, weapon)
{
}

/*
	Name: Initialize
	Namespace: cybercom
	Checksum: 0xD6367E7B
	Offset: 0xFD0
	Size: 0x11B
	Parameters: 0
	Flags: None
*/
function Initialize()
{
	level.cybercom = spawnstruct();
	level.cybercom.abilities = [];
	level.cybercom.var_f9269224 = 0;
	level.cybercom.var_12f85dec = 0;
	level.cybercom._ability_turn_on = &function_7f3ccb7;
	level.cybercom._ability_turn_off = &function_b8e0020b;
	level.vehicle_initializer_cb = &function_80fe1bad;
	level.var_baa25f4f = &vehicle_destruct_cybercom;
	level.vehicle_defense_cb = &vehicle_update_cybercom_defense;
	level.cybercom.overrideActorDamage = &cybercom_actordamage;
	level.cybercom.overrideVehicleDamage = &cybercom_vehicledamage;
}

/*
	Name: cybercom_actordamage
	Namespace: cybercom
	Checksum: 0xFA02853D
	Offset: 0x10F8
	Size: 0x329
	Parameters: 15
	Flags: None
*/
function cybercom_actordamage(eInflictor, eAttacker, iDamage, iDFlags, sMeansOfDeath, weapon, vPoint, vDir, sHitLoc, vDamageOrigin, psOffsetTime, boneIndex, modelIndex, surfaceType, surfaceNormal)
{
	if(IsSubStr(sMeansOfDeath, "MELEE"))
	{
		self notify("hash_95cdc515");
		if(weapon == GetWeapon("gadget_es_strike") || weapon == GetWeapon("gadget_es_strike_upgraded"))
		{
			iDamage = 0;
			if(!isdefined(sHitLoc) || sHitLoc == "none")
			{
				return iDamage;
			}
			level notify("hash_63acb616", self, eAttacker, iDamage, weapon, vPoint);
			var_2d399bc8 = 1;
		}
		if(weapon == GetWeapon("gadget_ravage_core") || (weapon == GetWeapon("gadget_ravage_core_upgraded") && isdefined(self.archetype) && self.archetype == "robot"))
		{
			self ai::set_behavior_attribute("can_gib", 0);
			level notify("ravage_core", self, eAttacker, iDamage, weapon, vPoint);
			var_2d399bc8 = 1;
		}
		if(weapon == GetWeapon("gadget_rapid_strike") || weapon == GetWeapon("gadget_rapid_strike_upgraded"))
		{
			level notify("rapid_strike", self, eAttacker, iDamage, weapon, vPoint);
			var_2d399bc8 = 1;
		}
	}
	else if(sMeansOfDeath == "MOD_GRENADE_SPLASH")
	{
		if(weapon.name == "ravage_core_emp_grenade")
		{
			if(isdefined(self.archetype) && (self.archetype == "human" || self.archetype == "zombie"))
			{
				iDamage = 60;
			}
		}
	}
	if(isdefined(self.TokubetsuKogekita) && self.TokubetsuKogekita && isdefined(eAttacker) && !isPlayer(eAttacker))
	{
		iDamage = 1;
	}
	if(iDamage > 30)
	{
		self notify("hash_15b29ba5");
	}
	return iDamage;
}

/*
	Name: cybercom_vehicledamage
	Namespace: cybercom
	Checksum: 0x5CDB7D2B
	Offset: 0x1430
	Size: 0x113
	Parameters: 15
	Flags: None
*/
function cybercom_vehicledamage(eInflictor, eAttacker, iDamage, iDFlags, sMeansOfDeath, weapon, vPoint, vDir, sHitLoc, vDamageOrigin, psOffsetTime, damageFromUnderneath, modelIndex, partName, vSurfaceNormal)
{
	if(sMeansOfDeath == "MOD_MELEE")
	{
		self notify("hash_95cdc515");
		if(weapon == GetWeapon("gadget_es_strike") || weapon == GetWeapon("gadget_es_strike_upgraded"))
		{
			iDamage = 0;
			level notify("hash_63acb616", self, eAttacker, iDamage, weapon, vPoint);
			var_2d399bc8 = 1;
		}
	}
	return iDamage;
}

/*
	Name: main
	Namespace: cybercom
	Checksum: 0x713DEF83
	Offset: 0x1550
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function main()
{
	callback::on_connect(&on_player_connect);
	callback::on_spawned(&on_player_spawned);
	if(!isdefined(level.cybercom))
	{
		Initialize();
	}
	namespace_d00ec32::main();
	namespace_726a1ef0::main();
	level thread function_da99f3e1();
	level thread function_285f5fb1();
}

/*
	Name: on_player_connect
	Namespace: cybercom
	Checksum: 0xCD5B6723
	Offset: 0x1610
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function on_player_connect()
{
	self.cybercom = spawnstruct();
	self.cybercom.flags = spawnstruct();
	self.cybercom.var_b766574c = 0;
	self.var_1c0132c = [];
	self function_facd1caa();
	self.pers["cybercom_flags"] = self.cybercom.flags;
	self thread on_menu_response();
}

/*
	Name: on_player_spawned
	Namespace: cybercom
	Checksum: 0x21B6106A
	Offset: 0x16C8
	Size: 0x1ED
	Parameters: 0
	Flags: None
*/
function on_player_spawned()
{
	self.cybercom.var_d1460543 = [];
	self.cybercom.var_4eb8cd67 = [];
	self function_ddcda2fd(self.pers["cybercom_flags"]);
	self flagsys::set("cybercom_init");
	self.cybercom.var_161c9be8 = 0;
	self.cybercom.allowedstate = 1;
	self.cybercom.power0 = self GadgetPowerGet(0);
	self.cybercom.power1 = self GadgetPowerGet(1);
	self.cybercom.power2 = self GadgetPowerGet(2);
	var_8e1e095b = self function_2eef1193();
	switch(var_8e1e095b)
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
	Name: function_b1497851
	Namespace: cybercom
	Checksum: 0x7775F832
	Offset: 0x18C0
	Size: 0x1F
	Parameters: 1
	Flags: Private
*/
function private function_b1497851(menu)
{
	self.cybercom.var_5e76d31b = 1;
}

/*
	Name: function_4d11675a
	Namespace: cybercom
	Checksum: 0x27DE017B
	Offset: 0x18E8
	Size: 0x27
	Parameters: 2
	Flags: Private
*/
function private function_4d11675a(menu, response)
{
	self.cybercom.var_5e76d31b = 0;
}

/*
	Name: on_menu_response
	Namespace: cybercom
	Checksum: 0xCF6E9F6A
	Offset: 0x1918
	Size: 0x29F
	Parameters: 0
	Flags: None
*/
function on_menu_response()
{
	self endon("disconnect");
	self notify("hash_ccef31c0");
	self endon("hash_ccef31c0");
	for(;;)
	{
		self waittill("menuresponse", menu, response);
		if(isdefined(self.cybercom.menu) && menu == self.cybercom.menu)
		{
			if(isdefined(self.cybercom.var_301030f7) && self.cybercom.var_301030f7)
			{
				continue;
			}
			if(isdefined(self.cybercom.var_dd2f3b84) && self.cybercom.var_dd2f3b84)
			{
				continue;
			}
			var_5dc22ce3 = StrTok(response, ",");
			if(response == "opened")
			{
				self function_b1497851(menu);
				continue;
			}
			if(var_5dc22ce3.size > 1)
			{
				self.var_768ee804 = Int(var_5dc22ce3[1]);
				ability = self namespace_d00ec32::function_eb512967(var_5dc22ce3[0]);
				self clientfield::set_to_player("resetAbilityWheel", 0);
				self notify("hash_9a680733");
				if(isdefined(ability))
				{
					switch(ability.type)
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
				self function_4d11675a(menu, response);
			}
		}
	}
}

/*
	Name: function_6c141a2d
	Namespace: cybercom
	Checksum: 0xE39F5D58
	Offset: 0x1BC0
	Size: 0x1FF
	Parameters: 1
	Flags: None
*/
function function_6c141a2d(var_1e41d598)
{
	/#
		Assert(isPlayer(self));
	#/
	self.cybercom.power0 = self GadgetPowerGet(0);
	self.cybercom.power1 = self GadgetPowerGet(1);
	self.cybercom.power2 = self GadgetPowerGet(1);
	self.cybercom.var_384c5e6e = var_1e41d598;
	self notify("hash_d867b4de");
	if(isdefined(self.cybercom.var_90eb6ca7) && self HasWeapon(self.cybercom.var_90eb6ca7))
	{
		self.cybercom.var_7116dac7 = self.cybercom.var_90eb6ca7;
		self TakeWeapon(self.cybercom.var_90eb6ca7);
		self.cybercom.var_90eb6ca7 = undefined;
	}
	if(isdefined(self.cybercom.var_2e20c9bd))
	{
		self TakeWeapon(self.cybercom.var_2e20c9bd);
		self notify("hash_7812f695", self.cybercom.var_2e20c9bd);
		self.cybercom.var_2e20c9bd = undefined;
	}
	self clientfield::set_to_player("cybercom_disabled", 1);
	self.cybercom.allowedstate = 0;
}

/*
	Name: function_e60e89fe
	Namespace: cybercom
	Checksum: 0x18556843
	Offset: 0x1DC8
	Size: 0x227
	Parameters: 0
	Flags: None
*/
function function_e60e89fe()
{
	/#
		Assert(isPlayer(self));
	#/
	self clientfield::set_to_player("cybercom_disabled", 0);
	if(isdefined(self.cybercom.var_b6fd26ae))
	{
		self namespace_d00ec32::function_eb512967(self.cybercom.var_b6fd26ae.name);
	}
	if(isdefined(self.cybercom.var_7116dac7))
	{
		self GiveWeapon(self.cybercom.var_7116dac7);
		self.cybercom.var_90eb6ca7 = self.cybercom.var_7116dac7;
		self.cybercom.var_7116dac7 = undefined;
	}
	if(isdefined(self.cybercom.var_384c5e6e) && self.cybercom.var_384c5e6e)
	{
		if(isdefined(self.cybercom.power0))
		{
			self GadgetPowerSet(0, self.cybercom.power0);
		}
		if(isdefined(self.cybercom.power1))
		{
			self GadgetPowerSet(1, self.cybercom.power1);
		}
		if(isdefined(self.cybercom.power2))
		{
			self GadgetPowerSet(2, self.cybercom.power2);
		}
		self.cybercom.power0 = undefined;
		self.cybercom.power1 = undefined;
		self.cybercom.power2 = undefined;
		self.cybercom.var_384c5e6e = undefined;
	}
	self.cybercom.allowedstate = 1;
}

/*
	Name: function_285f5fb1
	Namespace: cybercom
	Checksum: 0x6C132135
	Offset: 0x1FF8
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_285f5fb1()
{
	level thread function_8ccda8bf();
	level thread function_d2409753();
}

/*
	Name: function_8ccda8bf
	Namespace: cybercom
	Checksum: 0x8D41C7D3
	Offset: 0x2038
	Size: 0x12D
	Parameters: 0
	Flags: None
*/
function function_8ccda8bf()
{
	level notify("hash_8ccda8bf");
	level endon("hash_8ccda8bf");
	while(1)
	{
		level waittill("enable_cybercom", player);
		if(isdefined(player))
		{
			player function_e60e89fe();
			break;
		}
		level clientfield::set("cybercom_disabled", 0);
		SetDvar("cybercom_enabled", 1);
		foreach(player in GetPlayers())
		{
			player function_e60e89fe();
		}
	}
}

/*
	Name: function_d2409753
	Namespace: cybercom
	Checksum: 0x5B6BF20F
	Offset: 0x2170
	Size: 0x13D
	Parameters: 0
	Flags: None
*/
function function_d2409753()
{
	level notify("hash_d2409753");
	level endon("hash_d2409753");
	while(1)
	{
		level waittill("disable_cybercom", player, var_1e41d598);
		if(isdefined(player))
		{
			player function_6c141a2d(var_1e41d598);
			break;
		}
		level clientfield::set("cybercom_disabled", 1);
		SetDvar("cybercom_enabled", 0);
		foreach(player in GetPlayers())
		{
			player function_6c141a2d();
		}
	}
}

/*
	Name: function_2b5f1af7
	Namespace: cybercom
	Checksum: 0xECDCD778
	Offset: 0x22B8
	Size: 0xCB
	Parameters: 7
	Flags: None
*/
function function_2b5f1af7(player, eAttacker, eInflictor, iDamage, weapon, sHitLoc, sMeansOfDamage)
{
	if(player function_76f34311("cybercom_proximitydeterrent") != 0)
	{
		if(isdefined(eAttacker) && eAttacker.classname != "trigger_hurt" && eAttacker.classname != "worldspawn")
		{
			iDamage = player namespace_d1c4e441::function_327bda1e(iDamage, sMeansOfDamage);
		}
	}
	return iDamage;
}

/*
	Name: function_d240e350
	Namespace: cybercom
	Checksum: 0x6FD4FAF
	Offset: 0x2390
	Size: 0x2E3
	Parameters: 4
	Flags: None
*/
function function_d240e350(var_7872e02, target, var_9bc2efcb, upgraded)
{
	if(!isdefined(var_9bc2efcb))
	{
		var_9bc2efcb = 1;
	}
	if(!isdefined(upgraded))
	{
		upgraded = 0;
	}
	self endon("death");
	while(var_9bc2efcb && self IsPlayingAnimScripted())
	{
		wait(0.1);
	}
	switch(var_7872e02)
	{
		case "cybercom_iffoverride":
		{
			namespace_ea01175::function_c26a7c6(target, var_9bc2efcb);
			break;
		}
		case "cybercom_systemoverload":
		{
			namespace_528b4613::function_5839c4ac(target, var_9bc2efcb);
			break;
		}
		case "cybercom_servoshortout":
		{
			namespace_4bc37cb1::function_b1101fa6(target, var_9bc2efcb);
			break;
		}
		case "cybercom_exosuitbreakdown":
		{
			namespace_491e7803::function_2e537afb(target, var_9bc2efcb);
			break;
		}
		case "cybercom_surge":
		{
			namespace_63d98895::function_9eb4d79d(target, var_9bc2efcb, upgraded);
			break;
		}
		case "cybercom_sensoryoverload":
		{
			namespace_64276cf9::function_58f5574a(target, var_9bc2efcb);
			break;
		}
		case "cybercom_forcedmalfunction":
		{
			namespace_9c3956fd::function_638ad739(target, var_9bc2efcb);
			break;
		}
		case "cybercom_fireflyswarm":
		{
			namespace_3ed98204::function_2cba8648(target, var_9bc2efcb, upgraded);
			break;
		}
		case "cybercom_immolation":
		{
			namespace_a56eec64::function_9eebfb7(target, var_9bc2efcb, upgraded);
			break;
		}
		case "cybercom_mrpukey":
		{
			namespace_e44205a2::function_da7ef8ba(target, var_9bc2efcb, upgraded);
			break;
		}
		case "cybercom_concussive":
		{
			namespace_687c8387::function_73688d2e(target, var_9bc2efcb);
			break;
		}
		case "cybercom_smokescreen":
		{
			namespace_11fb1f28::function_d25acb0(var_9bc2efcb, upgraded);
			break;
		}
		case "cybercom_es_strike":
		{
			namespace_690a49a::function_aae59b93(upgraded);
			break;
		}
		case default:
		{
			/#
				Assert(0, "Dev Block strings are not supported");
			#/
			break;
		}
	}
	self playsound("gdt_cybercore_activate_ai");
}

