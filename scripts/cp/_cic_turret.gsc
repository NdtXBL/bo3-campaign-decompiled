#using scripts\codescripts\struct;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\fx_shared;
#using scripts\shared\statemachine_shared;
#using scripts\shared\system_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\vehicle_death_shared;
#using scripts\shared\vehicle_shared;

#namespace namespace_b219fa51;

/*
	Name: __init__sytem__
	Namespace: namespace_b219fa51
	Checksum: 0x8A6E355
	Offset: 0x500
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__sytem__()
{
	system::register("cic_turret", &__init__, undefined, undefined);
}

/*
	Name: __init__
	Namespace: namespace_b219fa51
	Checksum: 0x6BA16EA4
	Offset: 0x540
	Size: 0x1B5
	Parameters: 0
	Flags: None
*/
function __init__()
{
	vehicle::add_main_callback("turret_cic", &cic_turret_think);
	vehicle::add_main_callback("turret_cic_world", &cic_turret_think);
	vehicle::add_main_callback("turret_sentry", &cic_turret_think);
	vehicle::add_main_callback("turret_sentry_world", &cic_turret_think);
	vehicle::add_main_callback("turret_sentry_cic", &cic_turret_think);
	vehicle::add_main_callback("turret_sentry_rts", &cic_turret_think);
	level._effect["cic_turret_damage01"] = "destruct/fx_dest_turret_1";
	level._effect["cic_turret_damage02"] = "destruct/fx_dest_turret_2";
	level._effect["sentry_turret_damage01"] = "destruct/fx_dest_turret_1";
	level._effect["sentry_turret_damage02"] = "destruct/fx_dest_turret_2";
	level._effect["cic_turret_death"] = "_t6/destructibles/fx_cic_turret_death";
	level._effect["cic_turret_stun"] = "_t6/electrical/fx_elec_sp_emp_stun_cic_turret";
	level._effect["sentry_turret_stun"] = "_t6/electrical/fx_elec_sp_emp_stun_sentry_turret";
}

/*
	Name: cic_turret_think
	Namespace: namespace_b219fa51
	Checksum: 0x34715B9C
	Offset: 0x700
	Size: 0x2DB
	Parameters: 0
	Flags: None
*/
function cic_turret_think()
{
	self EnableAimAssist();
	if(IsSubStr(self.vehicleType, "cic"))
	{
		self.scanning_arc = 60;
		self.default_pitch = 15;
	}
	else
	{
		self.scanning_arc = 60;
		self.default_pitch = 0;
	}
	self.state_machine = statemachine::create("brain", self);
	main = self.state_machine statemachine::add_state("main", undefined, &cic_turret_main, undefined);
	scripted = self.state_machine statemachine::add_state("scripted", undefined, &cic_turret_scripted, undefined);
	vehicle_ai::set_role("brain");
	vehicle_ai::add_interrupt_connection("main", "scripted", "enter_vehicle");
	vehicle_ai::add_interrupt_connection("main", "scripted", "scripted");
	vehicle_ai::add_interrupt_connection("scripted", "main", "exit_vehicle");
	vehicle_ai::add_interrupt_connection("scripted", "main", "scripted_done");
	self disconnectpaths();
	self thread cic_turret_death();
	self thread cic_turret_damage();
	self thread turret::track_lens_flare();
	self.overrideVehicleDamage = &CICTurretCallback_VehicleDamage;
	if(isdefined(self.script_startstate))
	{
		if(self.script_startstate == "off")
		{
			self cic_turret_off(self.angles);
		}
		else
		{
			self.state_machine statemachine::set_state(self.script_startstate);
		}
	}
	else
	{
		cic_turret_start_ai();
	}
	self LaserOn();
}

/*
	Name: cic_turret_start_scripted
	Namespace: namespace_b219fa51
	Checksum: 0xC2E6879B
	Offset: 0x9E8
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function cic_turret_start_scripted()
{
	self.state_machine statemachine::set_state("scripted");
}

/*
	Name: cic_turret_start_ai
	Namespace: namespace_b219fa51
	Checksum: 0xF2E06DF2
	Offset: 0xA18
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function cic_turret_start_ai()
{
	self.state_machine statemachine::set_state("main");
}

/*
	Name: cic_turret_main
	Namespace: namespace_b219fa51
	Checksum: 0x71837B3E
	Offset: 0xA48
	Size: 0x53
	Parameters: 1
	Flags: None
*/
function cic_turret_main(params)
{
	if(isalive(self))
	{
		self EnableAimAssist();
		self thread cic_turret_fireupdate();
	}
}

/*
	Name: cic_turret_off
	Namespace: namespace_b219fa51
	Checksum: 0x44F56E9F
	Offset: 0xAA8
	Size: 0x167
	Parameters: 1
	Flags: None
*/
function cic_turret_off(angles)
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
	self.ignoreme = 1;
}

/*
	Name: cic_turret_on
	Namespace: namespace_b219fa51
	Checksum: 0x5FBE3CA5
	Offset: 0xC18
	Size: 0xDF
	Parameters: 0
	Flags: None
*/
function cic_turret_on()
{
	self endon("death");
	self playsound("veh_cic_turret_boot");
	self vehicle::lights_on();
	self EnableAimAssist();
	self vehicle::toggle_sounds(1);
	self bootup();
	self vehicle::toggle_exhaust_fx(1);
	self.off = undefined;
	self LaserOn();
	cic_turret_start_ai();
	self.ignoreme = 0;
}

/*
	Name: bootup
	Namespace: namespace_b219fa51
	Checksum: 0x35465245
	Offset: 0xD00
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
	Name: cic_turret_fireupdate
	Namespace: namespace_b219fa51
	Checksum: 0xB9C163CD
	Offset: 0xE20
	Size: 0x497
	Parameters: 0
	Flags: None
*/
function cic_turret_fireupdate()
{
	self endon("death");
	self endon("change_state");
	cant_see_enemy_count = 0;
	wait(0.2);
	origin = self GetTagOrigin("tag_barrel");
	left_look_at_pt = origin + AnglesToForward(self.angles + (self.default_pitch, self.scanning_arc, 0)) * 1000;
	right_look_at_pt = origin + AnglesToForward(self.angles + (self.default_pitch, self.scanning_arc * -1, 0)) * 1000;
	while(1)
	{
		if(isdefined(self.enemy) && self VehCanSee(self.enemy))
		{
			self.turretRotScale = 1;
			if(cant_see_enemy_count > 0 && isPlayer(self.enemy))
			{
				cic_turret_alert_sound();
				wait(0.5);
			}
			cant_see_enemy_count = 0;
			for(i = 0; i < 3; i++)
			{
				if(isdefined(self.enemy) && isalive(self.enemy) && self VehCanSee(self.enemy))
				{
					self SetTurretTargetEnt(self.enemy);
					wait(0.1);
					self cic_turret_fire_for_time(RandomFloatRange(0.4, 1.5));
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
			self.turretRotScale = 0.25;
			cant_see_enemy_count++;
			wait(1);
			if(cant_see_enemy_count > 1)
			{
				self.turret_state = 0;
				while(!isdefined(self.enemy) || !self VehCanSee(self.enemy))
				{
					if(self.turretontarget)
					{
						self.turret_state++;
						if(self.turret_state > 1)
						{
							self.turret_state = 0;
						}
					}
					if(self.turret_state == 0)
					{
						self SetTurretTargetVec(left_look_at_pt);
					}
					else
					{
						self SetTurretTargetVec(right_look_at_pt);
					}
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
	Name: cic_turret_scripted
	Namespace: namespace_b219fa51
	Checksum: 0x849787E2
	Offset: 0x12C0
	Size: 0xC3
	Parameters: 1
	Flags: None
*/
function cic_turret_scripted(params)
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
	Name: cic_turret_get_damage_effect
	Namespace: namespace_b219fa51
	Checksum: 0x1F3E6725
	Offset: 0x1390
	Size: 0xA9
	Parameters: 1
	Flags: None
*/
function cic_turret_get_damage_effect(health_pct)
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
		return level._effect["cic_turret_damage02"];
	}
	else
	{
		return level._effect["cic_turret_damage01"];
	}
}

/*
	Name: cic_turret_play_single_fx_on_tag
	Namespace: namespace_b219fa51
	Checksum: 0x23638C18
	Offset: 0x1448
	Size: 0x1AF
	Parameters: 2
	Flags: None
*/
function cic_turret_play_single_fx_on_tag(effect, tag)
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
	ent playsound("veh_cic_turret_sparks");
	self.damage_fx_ent = ent;
}

/*
	Name: cic_turret_damage
	Namespace: namespace_b219fa51
	Checksum: 0xC8EC1E6D
	Offset: 0x1600
	Size: 0x97
	Parameters: 0
	Flags: None
*/
function cic_turret_damage()
{
	self endon("crash_done");
	while(isdefined(self))
	{
		self waittill("damage");
		if(self.health > 0)
		{
			effect = self cic_turret_get_damage_effect(self.health / self.healthdefault);
			tag = "tag_fx";
			cic_turret_play_single_fx_on_tag(effect, tag);
		}
		wait(0.3);
	}
}

/*
	Name: cic_turret_death
	Namespace: namespace_b219fa51
	Checksum: 0xB5C7BA71
	Offset: 0x16A0
	Size: 0x243
	Parameters: 0
	Flags: None
*/
function cic_turret_death()
{
	wait(0.1);
	self notify("nodeath_thread");
	self waittill("death", attacker, damageFromUnderneath, weapon, point, dir);
	if(isdefined(self.delete_on_death))
	{
		if(isdefined(self.damage_fx_ent))
		{
			self.damage_fx_ent delete();
		}
		self delete();
		return;
	}
	if(!isdefined(self))
	{
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
	self thread cic_turret_death_movement(attacker, dir);
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
	Namespace: namespace_b219fa51
	Checksum: 0x9574B5A2
	Offset: 0x18F0
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function death_fx()
{
	self vehicle::do_death_fx();
	self playsound("veh_cic_turret_sparks");
	fire_ent = spawn("script_origin", self.origin);
	fire_ent PlayLoopSound("veh_cic_turret_dmg_fire_loop", 0.5);
	wait(2);
	fire_ent delete();
}

/*
	Name: cic_turret_death_movement
	Namespace: namespace_b219fa51
	Checksum: 0xAD37636E
	Offset: 0x19A8
	Size: 0x105
	Parameters: 2
	Flags: None
*/
function cic_turret_death_movement(attacker, hitdir)
{
	self endon("crash_done");
	self endon("death");
	self playsound("veh_cic_turret_dmg_hit");
	wait(0.1);
	self.turretRotScale = 0.5;
	tag_angles = self GetTagAngles("tag_flash");
	target_pos = self.origin + AnglesToForward((0, tag_angles[1], 0)) * 1000 + VectorScale((0, 0, -1), 1800);
	self SetTurretTargetVec(target_pos);
	wait(4);
	self notify("crash_done");
}

/*
	Name: cic_turret_fire_for_time
	Namespace: namespace_b219fa51
	Checksum: 0x55B66B0A
	Offset: 0x1AB8
	Size: 0x223
	Parameters: 1
	Flags: None
*/
function cic_turret_fire_for_time(totalFireTime)
{
	self endon("crash_done");
	self endon("death");
	cic_turret_alert_sound();
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
	fireChance = 2;
	if(isdefined(self.enemy) && isPlayer(self.enemy))
	{
		fireChance = 1;
	}
	fireCount = 1;
	while(time < totalFireTime)
	{
		if(isdefined(self.enemy) && isdefined(self.enemy.attackerAccuracy) && self.enemy.attackerAccuracy == 0)
		{
			self FireWeapon();
		}
		else if(fireChance > 1)
		{
			self FireWeapon();
		}
		else
		{
			self FireWeapon();
		}
		fireCount++;
		wait(fireTime);
		time = time + fireTime;
	}
	if(is_minigun)
	{
		self SetTurretSpinning(0);
	}
}

/*
	Name: cic_turret_alert_sound
	Namespace: namespace_b219fa51
	Checksum: 0xA4C83C37
	Offset: 0x1CE8
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function cic_turret_alert_sound()
{
	self playsound("veh_turret_alert");
}

/*
	Name: cic_turret_set_team
	Namespace: namespace_b219fa51
	Checksum: 0x723778BE
	Offset: 0x1D18
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function cic_turret_set_team(team)
{
	self.team = team;
	if(!isdefined(self.off))
	{
		cic_turret_blink_lights();
	}
}

/*
	Name: cic_turret_blink_lights
	Namespace: namespace_b219fa51
	Checksum: 0xE0AA07ED
	Offset: 0x1D58
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function cic_turret_blink_lights()
{
	self endon("death");
	self vehicle::lights_off();
	wait(0.1);
	self vehicle::lights_on();
}

/*
	Name: cic_turret_emped
	Namespace: namespace_b219fa51
	Checksum: 0x9E72899F
	Offset: 0x1DA8
	Size: 0x1DB
	Parameters: 0
	Flags: None
*/
function cic_turret_emped()
{
	self endon("death");
	self notify("emped");
	self endon("emped");
	self.emped = 1;
	playsoundatposition("veh_cic_turret_emp_down", self.origin);
	self.turretRotScale = 0.2;
	self cic_turret_off();
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
			PlayFXOnTag(level._effect["cic_turret_stun"], self.stun_fx, "tag_origin");
		}
	}
	wait(RandomFloatRange(6, 10));
	self.stun_fx delete();
	self.emped = undefined;
	self cic_turret_on();
}

/*
	Name: CICTurretCallback_VehicleDamage
	Namespace: namespace_b219fa51
	Checksum: 0xFC69B334
	Offset: 0x1F90
	Size: 0x17B
	Parameters: 14
	Flags: None
*/
function CICTurretCallback_VehicleDamage(eInflictor, eAttacker, iDamage, iDFlags, sMeansOfDeath, weapon, vPoint, vDir, sHitLoc, vDamageOrigin, psOffsetTime, damageFromUnderneath, modelIndex, partName)
{
	if(weapon.isEmp && sMeansOfDeath != "MOD_IMPACT")
	{
		driver = self GetSeatOccupant(0);
		if(!isdefined(driver))
		{
			self thread cic_turret_emped();
		}
	}
	if(weapon == GetWeapon("shotgun_pump_taser") && sMeansOfDeath == "MOD_PISTOL_BULLET")
	{
		iDamage = Int(iDamage * 3);
		self thread function_d8937095();
	}
	if(!isPlayer(eAttacker))
	{
		iDamage = Int(iDamage / 4);
	}
	return iDamage;
}

/*
	Name: cic_overheat_hud
	Namespace: namespace_b219fa51
	Checksum: 0x72136C4
	Offset: 0x2118
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
	Name: function_d8937095
	Namespace: namespace_b219fa51
	Checksum: 0xD83D71DF
	Offset: 0x2248
	Size: 0x1DB
	Parameters: 0
	Flags: None
*/
function function_d8937095()
{
	self endon("death");
	self notify("stunned");
	self endon("stunned");
	self.stunned = 1;
	self.turretRotScale = 0.2;
	self cic_turret_off();
	if(!isdefined(self.stun_fx))
	{
		playsoundatposition("veh_cic_turret_emp_down", self.origin);
		self.stun_fx = spawn("script_model", self.origin);
		self.stun_fx SetModel("tag_origin");
		self.stun_fx LinkTo(self, "tag_fx", (0, 0, 0), (0, 0, 0));
		if(IsSubStr(self.vehicleType, "turret_sentry"))
		{
			PlayFXOnTag(level._effect["sentry_turret_stun"], self.stun_fx, "tag_origin");
		}
		else
		{
			PlayFXOnTag(level._effect["cic_turret_stun"], self.stun_fx, "tag_origin");
		}
	}
	wait(RandomFloatRange(3, 5));
	self.stun_fx delete();
	self.stunned = undefined;
	self cic_turret_on();
}

