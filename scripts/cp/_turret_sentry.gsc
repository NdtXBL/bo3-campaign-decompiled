#using scripts\codescripts\struct;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\fx_shared;
#using scripts\shared\math_shared;
#using scripts\shared\statemachine_shared;
#using scripts\shared\system_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\vehicle_death_shared;
#using scripts\shared\vehicle_shared;

#namespace sentry_turret;

/*
	Name: __init__sytem__
	Namespace: sentry_turret
	Checksum: 0x75549D55
	Offset: 0x4C0
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__sytem__()
{
	system::register("sentry_turret", &__init__, undefined, undefined);
}

/*
	Name: __init__
	Namespace: sentry_turret
	Checksum: 0x4A004DB0
	Offset: 0x500
	Size: 0x18D
	Parameters: 0
	Flags: None
*/
function __init__()
{
	vehicle::add_main_callback("veh_turret_sentry_machinegun", &function_b2e9d990);
	vehicle::add_main_callback("veh_turret_sentry_sniper", &function_8f042083);
	vehicle::add_main_callback("veh_turret_sentry_grenade", &function_8f042083);
	vehicle::add_main_callback("veh_turret_sentry_guardian", &function_8f042083);
	vehicle::add_main_callback("veh_turret_sentry_emp", &function_c2d2b587);
	level._effect["sentry_turret_damage01"] = "destruct/fx_dest_turret_1";
	level._effect["sentry_turret_damage02"] = "destruct/fx_dest_turret_2";
	level._effect["sentry_turret_damage01"] = "destruct/fx_dest_turret_1";
	level._effect["sentry_turret_damage02"] = "destruct/fx_dest_turret_2";
	level._effect["sentry_turret_death"] = "_t6/destructibles/fx_sentry_turret_death";
	level._effect["sentry_turret_stun"] = "_t6/electrical/fx_elec_sp_emp_stun_sentry_turret";
	level._effect["sentry_turret_stun"] = "_t6/electrical/fx_elec_sp_emp_stun_sentry_turret";
}

/*
	Name: turret_debug_line
	Namespace: sentry_turret
	Checksum: 0x2B795965
	Offset: 0x698
	Size: 0x6B
	Parameters: 3
	Flags: None
*/
function turret_debug_line(start, end, color)
{
	/#
		if(GetDvarInt("Dev Block strings are not supported") != 0)
		{
			line(start, end, color, 1, 0, 50);
		}
	#/
}

/*
	Name: function_ba2c6c94
	Namespace: sentry_turret
	Checksum: 0xB4D14471
	Offset: 0x710
	Size: 0xD7
	Parameters: 2
	Flags: None
*/
function function_ba2c6c94(origin, sector)
{
	FORWARD = AnglesToForward((0, sector, 0));
	end = origin + FORWARD * 50;
	passed = BulletTracePassed(origin, end, 0, self);
	/#
		if(passed)
		{
			turret_debug_line(origin, end, (0, 1, 0));
		}
		else
		{
			turret_debug_line(origin, end, (1, 0, 0));
		}
	#/
	return passed;
}

/*
	Name: function_e606dad7
	Namespace: sentry_turret
	Checksum: 0x9F710D9E
	Offset: 0x7F0
	Size: 0x283
	Parameters: 0
	Flags: None
*/
function function_e606dad7()
{
	angles = self.angles;
	origin = self.origin;
	eye = self GetTagOrigin("tag_barrel");
	/#
		if(function_ba2c6c94(eye, angles[1]))
		{
			iprintln("Dev Block strings are not supported");
		}
	#/
	yaw = AngleClamp180(angles[1]);
	max_angle = yaw;
	for(sector = 0; sector * 10 <= 360; sector++)
	{
		if(function_ba2c6c94(eye, yaw + sector * 10))
		{
			max_angle = yaw + sector * 10;
			continue;
		}
		break;
	}
	min_angle = yaw;
	for(sector = 0; sector * 10 <= 360; sector++)
	{
		if(function_ba2c6c94(eye, yaw - sector * 10))
		{
			min_angle = yaw - sector * 10;
			continue;
		}
		break;
	}
	if(max_angle - min_angle >= 360)
	{
		var_2421690d = yaw;
		self.scanning_arc = 180;
	}
	else
	{
		var_2421690d = AngleClamp180(max_angle + min_angle * 0.5);
		self.scanning_arc = max_angle - max_angle + min_angle * 0.5;
	}
	self.angles = (angles[0], var_2421690d, angles[2]);
}

/*
	Name: function_5f695de4
	Namespace: sentry_turret
	Checksum: 0xE5E2A9B0
	Offset: 0xA80
	Size: 0x5B
	Parameters: 2
	Flags: None
*/
function function_5f695de4(point, yaw)
{
	targetPoint = spawnstruct();
	targetPoint.yaw = yaw;
	targetPoint.origin = point;
	return targetPoint;
}

/*
	Name: function_140f3a3e
	Namespace: sentry_turret
	Checksum: 0x71E22C56
	Offset: 0xAE8
	Size: 0x71
	Parameters: 3
	Flags: None
*/
function function_140f3a3e(origin, angles, var_e1a49abc)
{
	point = origin + AnglesToForward(angles + (self.default_pitch, var_e1a49abc, 0)) * 1000;
	return function_5f695de4(point, var_e1a49abc);
}

/*
	Name: function_1b820c4d
	Namespace: sentry_turret
	Checksum: 0xB54DD18D
	Offset: 0xB68
	Size: 0x257
	Parameters: 0
	Flags: None
*/
function function_1b820c4d()
{
	self.targetPoints = [];
	self.var_23b6e300 = 0;
	self.var_b431c4af = 1;
	self.var_5e51c171 = 0;
	self.eyeOrigin = self GetTagOrigin("tag_barrel");
	if(self.scanning_arc < 180)
	{
		self.targetPoints[self.targetPoints.size] = function_140f3a3e(self.eyeOrigin, self.angles, self.scanning_arc);
		self.var_23b6e300 = self.targetPoints.size;
		self.targetPoints[self.targetPoints.size] = function_140f3a3e(self.eyeOrigin, self.angles, 0);
		self.targetPoints[self.targetPoints.size] = function_140f3a3e(self.eyeOrigin, self.angles, self.scanning_arc * -1);
	}
	else
	{
		self.var_23b6e300 = self.targetPoints.size;
		self.targetPoints[self.targetPoints.size] = function_140f3a3e(self.eyeOrigin, self.angles, 0);
		self.targetPoints[self.targetPoints.size] = function_140f3a3e(self.eyeOrigin, self.angles, 90);
		self.targetPoints[self.targetPoints.size] = function_140f3a3e(self.eyeOrigin, self.angles, 180);
		self.targetPoints[self.targetPoints.size] = function_140f3a3e(self.eyeOrigin, self.angles, 270);
		if(math::cointoss())
		{
		}
		else
		{
		}
		self.var_b431c4af = -1;
		self.var_5e51c171 = 1;
	}
}

/*
	Name: function_4ac3c3a1
	Namespace: sentry_turret
	Checksum: 0x662479C5
	Offset: 0xDC8
	Size: 0x61
	Parameters: 3
	Flags: None
*/
function function_4ac3c3a1(e1, e2, b_lowest_first)
{
	if(b_lowest_first)
	{
		return e1.yaw < e2.yaw;
	}
	else
	{
		return e1.yaw > e2.yaw;
	}
}

/*
	Name: function_c8f2c95d
	Namespace: sentry_turret
	Checksum: 0xA9F59ABA
	Offset: 0xE38
	Size: 0x1CB
	Parameters: 1
	Flags: None
*/
function function_c8f2c95d(point)
{
	direction = point - self.eyeOrigin;
	angles = VectorToAngles(direction);
	var_b61307b5 = AngleClamp180(angles[1] - self.angles[1]);
	foreach(targetPoint in self.targetPoints)
	{
		if(var_b61307b5 < targetPoint.yaw)
		{
			if(targetPoint.yaw - var_b61307b5 < 5)
			{
				return;
			}
			continue;
		}
		if(var_b61307b5 - targetPoint.yaw < 5)
		{
			return;
		}
	}
	if(self.var_5e51c171)
	{
		var_b61307b5 = AbsAngleClamp360(var_b61307b5);
	}
	self.targetPoints[self.targetPoints.size] = function_5f695de4(point, var_b61307b5);
	Array::merge_sort(self.targetPoints, &function_4ac3c3a1, 1);
}

/*
	Name: function_b2e9d990
	Namespace: sentry_turret
	Checksum: 0xF7A0EEF2
	Offset: 0x1010
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_b2e9d990()
{
	self thread function_8f042083();
}

/*
	Name: function_c2d2b587
	Namespace: sentry_turret
	Checksum: 0xB4BCF6F4
	Offset: 0x1038
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_c2d2b587()
{
	self thread function_8f042083();
}

/*
	Name: function_e7857e05
	Namespace: sentry_turret
	Checksum: 0x636168D2
	Offset: 0x1060
	Size: 0x6D
	Parameters: 1
	Flags: None
*/
function function_e7857e05(e_enemy)
{
	var_b9baf316 = 1;
	if(isdefined(e_enemy.archetype) && isdefined(self.var_c35cf4ed))
	{
		var_b9baf316 = !IsInArray(self.var_c35cf4ed, e_enemy.archetype);
	}
	return var_b9baf316;
}

/*
	Name: function_8f042083
	Namespace: sentry_turret
	Checksum: 0x42E1D329
	Offset: 0x10D8
	Size: 0x2AB
	Parameters: 0
	Flags: None
*/
function function_8f042083()
{
	if(!isdefined(self.var_c35cf4ed))
	{
		self.var_c35cf4ed = [];
	}
	self thread turret_idle_sound();
	self EnableAimAssist();
	self.onKill = &function_aa320a88;
	self.scanning_arc = 90;
	self.default_pitch = 0;
	function_e606dad7();
	function_1b820c4d();
	self.state_machine = statemachine::create("brain", self);
	self.state_machine statemachine::add_state("main", undefined, &function_e59668cf, undefined);
	self.state_machine statemachine::add_state("scripted", undefined, &function_4642c69e, undefined);
	self.state_machine statemachine::add_interrupt_connection("main", "scripted", "enter_vehicle");
	self.state_machine statemachine::add_interrupt_connection("scripted", "main", "exit_vehicle");
	self disconnectpaths();
	self thread function_78a2820e();
	self thread function_8109253b();
	self thread turret::track_lens_flare();
	self.overrideVehicleDamage = &CICTurretCallback_VehicleDamage;
	if(isdefined(self.script_startstate))
	{
		if(self.script_startstate == "off")
		{
			self function_e6f10cc7(self.angles);
		}
		else
		{
			self.state_machine statemachine::set_state(self.script_startstate);
		}
	}
	else
	{
		function_62182551();
	}
	self LaserOn();
	self playsound("mpl_turret_startup");
}

/*
	Name: function_d19a819d
	Namespace: sentry_turret
	Checksum: 0xF9DEB0A5
	Offset: 0x1390
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_d19a819d()
{
	self.state_machine statemachine::set_state("scripted");
}

/*
	Name: function_62182551
	Namespace: sentry_turret
	Checksum: 0x1077D77F
	Offset: 0x13C0
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_62182551()
{
	self.state_machine statemachine::set_state("main");
}

/*
	Name: function_e59668cf
	Namespace: sentry_turret
	Checksum: 0x783FDCF7
	Offset: 0x13F0
	Size: 0x53
	Parameters: 1
	Flags: None
*/
function function_e59668cf(params)
{
	if(isalive(self))
	{
		self EnableAimAssist();
		self thread function_2e229297();
	}
}

/*
	Name: function_e6f10cc7
	Namespace: sentry_turret
	Checksum: 0x39E83018
	Offset: 0x1450
	Size: 0x15B
	Parameters: 1
	Flags: None
*/
function function_e6f10cc7(angles)
{
	self.state_machine statemachine::set_state("scripted");
	self vehicle::lights_off();
	self LaserOff();
	self vehicle::toggle_sounds(0);
	self vehicle::toggle_exhaust_fx(0);
	if(!isdefined(angles))
	{
		angles = self GetTagAngles("tag_flash");
	}
	target_vec = self.origin + AnglesToForward((0, angles[1], 0)) * 1000;
	target_vec = target_vec + VectorScale((0, 0, -1), 1700);
	self SetTargetOrigin(target_vec);
	self.off = 1;
	if(!isdefined(self.emped))
	{
		self DisableAimAssist();
	}
}

/*
	Name: function_21af94b3
	Namespace: sentry_turret
	Checksum: 0x8002CED9
	Offset: 0x15B8
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_21af94b3()
{
	self playsound("mpl_turret_startup");
	self vehicle::lights_on();
	self EnableAimAssist();
	self vehicle::toggle_sounds(1);
	self bootup();
	self vehicle::toggle_exhaust_fx(1);
	self.off = undefined;
	self LaserOn();
	function_62182551();
}

/*
	Name: bootup
	Namespace: sentry_turret
	Checksum: 0xE371FC8A
	Offset: 0x1690
	Size: 0x117
	Parameters: 0
	Flags: None
*/
function bootup()
{
	for(i = 0; i < 6; i++)
	{
		wait(0.1);
		vehicle::lights_off();
		wait(0.1);
		vehicle::lights_on();
	}
	if(!isdefined(self.player))
	{
		angles = self GetTagAngles("tag_flash");
		target_vec = self.origin + AnglesToForward((self.default_pitch, angles[1], 0)) * 1000;
		self.turretRotScale = 0.3;
		self SetTargetOrigin(target_vec);
		wait(1);
		self.turretRotScale = 1;
	}
}

/*
	Name: function_2e229297
	Namespace: sentry_turret
	Checksum: 0xB92CABE6
	Offset: 0x17B0
	Size: 0x517
	Parameters: 0
	Flags: None
*/
function function_2e229297()
{
	self endon("death");
	self endon("change_state");
	cant_see_enemy_count = 0;
	wait(0.2);
	origin = self GetTagOrigin("tag_barrel");
	while(1)
	{
		if(isdefined(self.enemy) && self VehCanSee(self.enemy) && self function_e7857e05(self.enemy))
		{
			self.turretRotScale = 1;
			if(cant_see_enemy_count > 0 && isPlayer(self.enemy))
			{
				sentry_turret_alert_sound();
				wait(0.5);
			}
			cant_see_enemy_count = 0;
			for(i = 0; i < 3; i++)
			{
				if(isdefined(self.enemy) && isalive(self.enemy) && self VehCanSee(self.enemy))
				{
					self SetTurretTargetEnt(self.enemy);
					wait(0.1);
					self sentry_turret_fire_for_time(RandomFloatRange(0.4, 1.5), self.enemy);
				}
				else
				{
					self ClearTargetEntity();
				}
				if(isdefined(self.enemy) && isPlayer(self.enemy))
				{
					wait(RandomFloatRange(0.3, 0.6));
					continue;
				}
				wait(RandomFloatRange(0.3, 0.6) * 2);
			}
			if(isdefined(self.enemy) && isalive(self.enemy) && self VehCanSee(self.enemy))
			{
				if(isPlayer(self.enemy))
				{
					wait(RandomFloatRange(0.5, 1.3));
				}
				else
				{
					wait(RandomFloatRange(0.5, 1.3) * 2);
				}
			}
		}
		else
		{
			self.turretRotScale = 0.5;
			cant_see_enemy_count++;
			wait(1);
			if(cant_see_enemy_count > 1)
			{
				while(!isdefined(self.enemy) || !self VehCanSee(self.enemy))
				{
					if(self.turretontarget)
					{
						self.var_23b6e300 = self.var_23b6e300 + self.var_b431c4af;
						if(self.targetPoints.size <= 1)
						{
							self.var_23b6e300 = 0;
						}
						else if(self.var_23b6e300 >= self.targetPoints.size || self.var_23b6e300 < 0)
						{
							if(!self.var_5e51c171)
							{
								self.var_23b6e300 = self.var_23b6e300 - self.var_b431c4af;
								self.var_b431c4af = self.var_b431c4af * -1;
								self.var_23b6e300 = self.var_23b6e300 + self.var_b431c4af;
							}
							else if(self.var_23b6e300 >= self.targetPoints.size)
							{
								self.var_23b6e300 = 0;
							}
							else
							{
								self.var_23b6e300 = self.targetPoints.size - 1;
							}
						}
					}
					/#
						turret_debug_line(origin, self.targetPoints[self.var_23b6e300].origin, (0, 1, 0));
					#/
					self SetTurretTargetVec(self.targetPoints[self.var_23b6e300].origin);
					wait(0.5);
				}
			}
			else
			{
				self ClearTargetEntity();
			}
		}
		wait(0.5);
	}
}

/*
	Name: function_4642c69e
	Namespace: sentry_turret
	Checksum: 0x59350A6
	Offset: 0x1CD0
	Size: 0xC3
	Parameters: 1
	Flags: None
*/
function function_4642c69e(params)
{
	driver = self GetSeatOccupant(0);
	if(isdefined(driver))
	{
		self.turretRotScale = 1;
		self DisableAimAssist();
		if(driver == level.players[0])
		{
			self thread vehicle_death::vehicle_damage_filter("firestorm_turret");
			level.players[0] thread cic_overheat_hud(self);
		}
	}
	self ClearTargetEntity();
}

/*
	Name: function_e823c700
	Namespace: sentry_turret
	Checksum: 0x48AFED7
	Offset: 0x1DA0
	Size: 0xA9
	Parameters: 1
	Flags: None
*/
function function_e823c700(health_pct)
{
	if(IsSubStr(self.vehicleType, "turret_sentry"))
	{
		if(health_pct < 0.6)
		{
			return level._effect["sentry_turret_damage02"];
		}
		else
		{
			return level._effect["sentry_turret_damage01"];
		}
	}
	else if(health_pct < 0.6)
	{
		return level._effect["sentry_turret_damage02"];
	}
	else
	{
		return level._effect["sentry_turret_damage01"];
	}
}

/*
	Name: function_b212223b
	Namespace: sentry_turret
	Checksum: 0xE3A793B4
	Offset: 0x1E58
	Size: 0x18F
	Parameters: 2
	Flags: None
*/
function function_b212223b(effect, tag)
{
	if(isdefined(self.damage_fx_ent))
	{
		if(self.damage_fx_ent.effect == effect)
		{
			return;
		}
		self.damage_fx_ent delete();
	}
	if(!isdefined(self GetTagAngles(tag)))
	{
		return;
	}
	ent = spawn("script_model", (0, 0, 0));
	ent SetModel("tag_origin");
	ent.origin = self GetTagOrigin(tag);
	ent.angles = self GetTagAngles(tag);
	ent notsolid();
	ent Hide();
	ent LinkTo(self, tag);
	ent.effect = effect;
	PlayFXOnTag(effect, ent, "tag_origin");
	self.damage_fx_ent = ent;
}

/*
	Name: function_8109253b
	Namespace: sentry_turret
	Checksum: 0x2DB59C81
	Offset: 0x1FF0
	Size: 0x97
	Parameters: 0
	Flags: None
*/
function function_8109253b()
{
	self endon("crash_done");
	while(isdefined(self))
	{
		self waittill("damage");
		if(self.health > 0)
		{
			effect = self function_e823c700(self.health / self.healthdefault);
			tag = "tag_fx";
			function_b212223b(effect, tag);
		}
		wait(0.3);
	}
}

/*
	Name: function_78a2820e
	Namespace: sentry_turret
	Checksum: 0x4F73F417
	Offset: 0x2090
	Size: 0x253
	Parameters: 0
	Flags: None
*/
function function_78a2820e()
{
	wait(0.1);
	if(!isdefined(self))
	{
		return;
	}
	self notify("nodeath_thread");
	self waittill("death", attacker, damageFromUnderneath, weapon, point, dir);
	if(!isdefined(self))
	{
		return;
	}
	if(isdefined(self.delete_on_death))
	{
		if(isdefined(self.damage_fx_ent))
		{
			self.damage_fx_ent delete();
		}
		self delete();
		return;
	}
	self vehicle_death::death_cleanup_level_variables();
	self DisableAimAssist();
	self ClearTargetEntity();
	self vehicle::lights_off();
	self LaserOff();
	self SetTurretSpinning(0);
	self turret::toggle_lensflare(0);
	self death_fx();
	self thread vehicle_death::death_radius_damage();
	self thread vehicle_death::set_death_model(self.deathmodel, self.modelswapdelay);
	self vehicle::toggle_sounds(0);
	self thread function_e99c1c2(attacker, dir);
	if(isdefined(self.damage_fx_ent))
	{
		self.damage_fx_ent delete();
	}
	self.ignoreme = 1;
	self waittill("crash_done");
	self freevehicle();
}

/*
	Name: death_fx
	Namespace: sentry_turret
	Checksum: 0xBE3AB968
	Offset: 0x22F0
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function death_fx()
{
	self vehicle::do_death_fx();
}

/*
	Name: function_e99c1c2
	Namespace: sentry_turret
	Checksum: 0x4A9E1336
	Offset: 0x2318
	Size: 0x105
	Parameters: 2
	Flags: None
*/
function function_e99c1c2(attacker, hitdir)
{
	self endon("crash_done");
	self endon("death");
	self playsound("veh_sentry_turret_dmg_hit");
	wait(0.1);
	self.turretRotScale = 0.5;
	tag_angles = self GetTagAngles("tag_flash");
	target_pos = self.origin + AnglesToForward((0, tag_angles[1], 0)) * 1000 + VectorScale((0, 0, -1), 1800);
	self SetTurretTargetVec(target_pos);
	wait(4);
	self notify("crash_done");
}

/*
	Name: sentry_turret_fire_for_time
	Namespace: sentry_turret
	Checksum: 0x62285A9D
	Offset: 0x2428
	Size: 0x183
	Parameters: 2
	Flags: None
*/
function sentry_turret_fire_for_time(totalFireTime, enemy)
{
	self endon("crash_done");
	self endon("death");
	sentry_turret_alert_sound();
	wait(0.1);
	weapon = self SeatGetWeapon(0);
	fireTime = weapon.fireTime;
	time = 0;
	is_minigun = 0;
	if(IsSubStr(weapon.name, "minigun"))
	{
		is_minigun = 1;
		self SetTurretSpinning(1);
		wait(0.5);
	}
	while(time < totalFireTime)
	{
		if(isdefined(level.var_a753e7a8))
		{
			self [[level.var_a753e7a8]](0, enemy);
		}
		else
		{
			self FireWeapon(0, enemy);
		}
		wait(fireTime);
		time = time + fireTime;
	}
	if(is_minigun)
	{
		self SetTurretSpinning(0);
	}
}

/*
	Name: sentry_turret_alert_sound
	Namespace: sentry_turret
	Checksum: 0xEAE21E1D
	Offset: 0x25B8
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function sentry_turret_alert_sound()
{
	self playsound("veh_turret_alert");
}

/*
	Name: function_ebdfd4e4
	Namespace: sentry_turret
	Checksum: 0x8D0DC9DE
	Offset: 0x25E8
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function function_ebdfd4e4(team)
{
	self.team = team;
	if(!isdefined(self.off))
	{
		function_f08ad3e6();
	}
}

/*
	Name: function_f08ad3e6
	Namespace: sentry_turret
	Checksum: 0xD4133284
	Offset: 0x2628
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_f08ad3e6()
{
	self endon("death");
	self vehicle::lights_off();
	wait(0.1);
	self vehicle::lights_on();
}

/*
	Name: function_791c1a61
	Namespace: sentry_turret
	Checksum: 0x6A8D7BE7
	Offset: 0x2678
	Size: 0x1DB
	Parameters: 0
	Flags: None
*/
function function_791c1a61()
{
	self endon("death");
	self notify("emped");
	self endon("emped");
	self.emped = 1;
	playsoundatposition("veh_sentry_turret_emp_down", self.origin);
	self.turretRotScale = 0.2;
	self function_e6f10cc7();
	if(!isdefined(self.stun_fx))
	{
		self.stun_fx = spawn("script_model", self.origin);
		self.stun_fx SetModel("tag_origin");
		self.stun_fx LinkTo(self, "tag_fx", (0, 0, 0), (0, 0, 0));
		if(IsSubStr(self.vehicleType, "turret_sentry"))
		{
			PlayFXOnTag(level._effect["sentry_turret_stun"], self.stun_fx, "tag_origin");
		}
		else
		{
			PlayFXOnTag(level._effect["sentry_turret_stun"], self.stun_fx, "tag_origin");
		}
	}
	wait(RandomFloatRange(6, 10));
	self.stun_fx delete();
	self.emped = undefined;
	self function_21af94b3();
}

/*
	Name: CICTurretCallback_VehicleDamage
	Namespace: sentry_turret
	Checksum: 0x22175DC
	Offset: 0x2860
	Size: 0xDF
	Parameters: 15
	Flags: None
*/
function CICTurretCallback_VehicleDamage(eInflictor, eAttacker, iDamage, iDFlags, sMeansOfDeath, weapon, vPoint, vDir, sHitLoc, vDamageOrigin, psOffsetTime, damageFromUnderneath, modelIndex, partName, vSurfaceNormal)
{
	if(weapon.isEmp && sMeansOfDeath != "MOD_IMPACT")
	{
		driver = self GetSeatOccupant(0);
		if(!isdefined(driver))
		{
			self thread function_791c1a61();
		}
	}
	return iDamage;
}

/*
	Name: cic_overheat_hud
	Namespace: sentry_turret
	Checksum: 0x42459777
	Offset: 0x2948
	Size: 0x127
	Parameters: 1
	Flags: None
*/
function cic_overheat_hud(turret)
{
	self endon("exit_vehicle");
	turret endon("turret_exited");
	level endon("player_using_turret");
	heat = 0;
	overheat = 0;
	while(1)
	{
		if(isdefined(self.viewlockedentity))
		{
			old_heat = heat;
			heat = self.viewlockedentity GetTurretHeatValue(0);
			old_overheat = overheat;
			overheat = self.viewlockedentity IsVehicleTurretOverheating(0);
			if(old_heat != heat || old_overheat != overheat)
			{
				LUINotifyEvent(&"hud_cic_weapon_heat", 2, Int(heat), overheat);
			}
		}
		wait(0.05);
	}
}

/*
	Name: function_aa320a88
	Namespace: sentry_turret
	Checksum: 0xF141008
	Offset: 0x2A78
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_aa320a88(victim)
{
	function_c8f2c95d(victim.origin);
}

/*
	Name: turret_idle_sound
	Namespace: sentry_turret
	Checksum: 0x4972C150
	Offset: 0x2AB0
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function turret_idle_sound()
{
	sndloop_ent = spawn("script_origin", self.origin);
	sndloop_ent LinkTo(self);
	sndloop_ent PlayLoopSound("veh_turret_idle");
	self thread turret_idle_sound_stop(sndloop_ent);
}

/*
	Name: turret_idle_sound_stop
	Namespace: sentry_turret
	Checksum: 0xE8A160F4
	Offset: 0x2B40
	Size: 0x53
	Parameters: 1
	Flags: None
*/
function turret_idle_sound_stop(sndloop_ent)
{
	self waittill("death");
	sndloop_ent StopLoopSound(0.5);
	wait(2);
	sndloop_ent delete();
}

