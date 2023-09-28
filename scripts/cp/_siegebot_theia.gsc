#using scripts\codescripts\struct;
#using scripts\cp\_util;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\shared\ai\blackboard_vehicle;
#using scripts\shared\ai\systems\blackboard;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\gameskill_shared;
#using scripts\shared\laststand_shared;
#using scripts\shared\math_shared;
#using scripts\shared\statemachine_shared;
#using scripts\shared\system_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\vehicle_death_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\vehicles\_siegebot;
#using scripts\shared\weapons\_spike_charge_siegebot;

#namespace siegebot_theia;

/*
	Name: __init__sytem__
	Namespace: siegebot_theia
	Checksum: 0x9F1BB475
	Offset: 0x660
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__sytem__()
{
	system::register("siegebot_theia", &__init__, undefined, undefined);
}

/*
	Name: __init__
	Namespace: siegebot_theia
	Checksum: 0xF97591E7
	Offset: 0x6A0
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function __init__()
{
	vehicle::add_main_callback("siegebot_theia", &siegebot_initialize);
	clientfield::register("vehicle", "sarah_rumble_on_landing", 1, 1, "counter");
	clientfield::register("vehicle", "sarah_minigun_spin", 1, 1, "int");
}

/*
	Name: siegebot_initialize
	Namespace: siegebot_theia
	Checksum: 0xAD9B74F2
	Offset: 0x738
	Size: 0x32B
	Parameters: 0
	Flags: None
*/
function siegebot_initialize()
{
	self useanimtree(-1);
	blackboard::CreateBlackBoardForEntity(self);
	self blackboard::RegisterVehicleBlackBoardAttributes();
	self.health = self.healthdefault;
	self vehicle::friendly_fire_shield();
	self EnableAimAssist();
	self SetNearGoalNotifyDist(self.radius * 1.2);
	Target_Set(self, VectorScale((0, 0, 1), 150));
	self.fovcosine = 0;
	self.fovcosinebusy = 0;
	self.maxsightdistsqrd = 10000 * 10000;
	/#
		Assert(isdefined(self.scriptbundlesettings));
	#/
	self.settings = struct::get_script_bundle("vehiclecustomsettings", self.scriptbundlesettings);
	self.goalRadius = 9999999;
	self.goalHeight = 5000;
	self SetGoal(self.origin, 0, self.goalRadius, self.goalHeight);
	self.overrideVehicleDamage = &theia_callback_damage;
	self pain_toggle(1);
	util::magic_bullet_shield(self);
	self initJumpStruct();
	self SetGunnerTurretOnTargetRange(0, self.settings.gunner_turret_on_target_range);
	self locomotion_start();
	self thread init_clientfields();
	self.damageLevel = 0;
	self.newDamageLevel = self.damageLevel;
	self init_player_threat_all();
	self init_fake_targets();
	if(isdefined(self.combat_goal_volume))
	{
		self SetGoal(self.combat_goal_volume);
	}
	if(!isdefined(self.height))
	{
		self.height = self.radius;
	}
	self.noCybercom = 1;
	self.ignoreFireFly = 1;
	self.ignoreDecoy = 1;
	self vehicle_ai::InitThreatBias();
	defaultRole();
}

/*
	Name: init_clientfields
	Namespace: siegebot_theia
	Checksum: 0x1151CB38
	Offset: 0xA70
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function init_clientfields()
{
	self vehicle::lights_on();
	self vehicle::toggle_lights_group(1, 1);
	self vehicle::toggle_lights_group(2, 1);
	self vehicle::toggle_lights_group(3, 1);
	self clientfield::set("sarah_minigun_spin", 0);
}

/*
	Name: defaultRole
	Namespace: siegebot_theia
	Checksum: 0x37245D89
	Offset: 0xB18
	Size: 0x4B3
	Parameters: 0
	Flags: None
*/
function defaultRole()
{
	self vehicle_ai::init_state_machine_for_role();
	self vehicle_ai::get_state_callbacks("combat").enter_func = &state_balconyCombat_enter;
	self vehicle_ai::get_state_callbacks("combat").update_func = &state_balconyCombat_update;
	self vehicle_ai::get_state_callbacks("combat").exit_func = &state_balconyCombat_exit;
	self vehicle_ai::get_state_callbacks("pain").enter_func = &pain_enter;
	self vehicle_ai::get_state_callbacks("pain").update_func = &pain_update;
	self vehicle_ai::get_state_callbacks("pain").exit_func = &pain_exit;
	self vehicle_ai::get_state_callbacks("scripted").exit_func = &scripted_exit;
	self vehicle_ai::get_state_callbacks("death").update_func = &state_death_update;
	self vehicle_ai::add_state("jumpUp", &state_jumpUp_enter, &state_jump_update, &state_jump_exit);
	self vehicle_ai::add_state("jumpDown", &state_jumpDown_enter, &state_jump_update, &state_jumpDown_exit);
	self vehicle_ai::add_state("jumpGroundToGround", &state_jumpDown_enter, &state_jump_update, &state_jump_exit);
	self vehicle_ai::add_state("groundCombat", undefined, &state_groundCombat_update, &state_groundCombat_exit);
	self vehicle_ai::add_state("prepareDeath", undefined, &prepare_death_update, undefined);
	vehicle_ai::add_interrupt_connection("groundCombat", "pain", "pain");
	vehicle_ai::add_utility_connection("emped", "groundCombat");
	vehicle_ai::add_utility_connection("pain", "groundCombat");
	vehicle_ai::add_utility_connection("combat", "jumpDown", &can_jump_down);
	vehicle_ai::add_utility_connection("jumpDown", "groundCombat");
	vehicle_ai::add_utility_connection("groundCombat", "jumpGroundToGround", &can_jump_ground_to_ground);
	vehicle_ai::add_utility_connection("jumpGroundToGround", "groundCombat");
	vehicle_ai::add_utility_connection("groundCombat", "jumpUp", &can_jump_up);
	vehicle_ai::add_utility_connection("jumpUp", "combat");
	vehicle_ai::add_utility_connection("groundCombat", "prepareDeath", &should_prepare_death);
	vehicle_ai::Cooldown("jump", 22);
	vehicle_ai::Cooldown("jumpUp", 33);
	vehicle_ai::StartInitialState("groundCombat");
}

/*
	Name: state_death_update
	Namespace: siegebot_theia
	Checksum: 0x514E2BD3
	Offset: 0xFD8
	Size: 0xFB
	Parameters: 1
	Flags: None
*/
function state_death_update(params)
{
	self endon("death");
	self endon("nodeath_thread");
	self SetTurretSpinning(0);
	self clean_up_spawned();
	self stopMovementAndSetBrake();
	self SetTurretTargetRelativeAngles((0, 0, 0));
	self vehicle_death::death_fx();
	self vehicle_death::set_death_model(self.deathmodel, self.modelswapdelay);
	self vehicle::set_damage_fx_level(0);
	self playsound("veh_quadtank_sparks");
}

/*
	Name: clean_up_spawned
	Namespace: siegebot_theia
	Checksum: 0x58A9172C
	Offset: 0x10E0
	Size: 0xF1
	Parameters: 0
	Flags: None
*/
function clean_up_spawned()
{
	if(isdefined(self.jump))
	{
		self.jump.linkEnt delete();
	}
	if(isdefined(self.fakeTargetEnt))
	{
		self.fakeTargetEnt delete();
	}
	if(isdefined(self.spikeFakeTargets))
	{
		foreach(target in self.spikeFakeTargets)
		{
			target delete();
		}
	}
}

/*
	Name: pain_toggle
	Namespace: siegebot_theia
	Checksum: 0xCC00731F
	Offset: 0x11E0
	Size: 0x17
	Parameters: 1
	Flags: None
*/
function pain_toggle(enabled)
{
	self._enablePain = enabled;
}

/*
	Name: pain_canenter
	Namespace: siegebot_theia
	Checksum: 0xB6C5086D
	Offset: 0x1200
	Size: 0x41
	Parameters: 0
	Flags: None
*/
function pain_canenter()
{
	State = vehicle_ai::get_current_state();
	return isdefined(State) && State != "pain" && self._enablePain;
}

/*
	Name: pain_enter
	Namespace: siegebot_theia
	Checksum: 0xBD26EAE9
	Offset: 0x1250
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function pain_enter(params)
{
	self stopMovementAndSetBrake();
}

/*
	Name: pain_exit
	Namespace: siegebot_theia
	Checksum: 0x9FCFEEDB
	Offset: 0x1280
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function pain_exit(params)
{
	self SetBrake(0);
}

/*
	Name: pain_update
	Namespace: siegebot_theia
	Checksum: 0xA1D8ECA6
	Offset: 0x12B0
	Size: 0x13B
	Parameters: 1
	Flags: None
*/
function pain_update(params)
{
	self endon("death");
	if(1 <= self.damageLevel && self.damageLevel <= 4)
	{
		asmState = "damage_" + self.damageLevel + "@pain";
	}
	else
	{
		asmState = "normal@pain";
	}
	self ASMRequestSubstate(asmState);
	self vehicle_ai::waittill_asm_complete(asmState, 5);
	vehicle_ai::AddCooldownTime("jump", -4.4);
	vehicle_ai::AddCooldownTime("jumpUp", -11);
	previous_state = vehicle_ai::get_previous_state();
	self vehicle_ai::set_state(previous_state);
	self vehicle_ai::evaluate_connections();
}

/*
	Name: should_prepare_death
	Namespace: siegebot_theia
	Checksum: 0xCD8F247B
	Offset: 0x13F8
	Size: 0x55
	Parameters: 3
	Flags: None
*/
function should_prepare_death(from_state, to_state, connection)
{
	prepare_death_threshold = self.healthdefault * 0.1;
	if(self.health < prepare_death_threshold)
	{
		return 99999999;
	}
	return 0;
}

/*
	Name: prepare_death_update
	Namespace: siegebot_theia
	Checksum: 0xFE363F26
	Offset: 0x1458
	Size: 0x20B
	Parameters: 1
	Flags: None
*/
function prepare_death_update(params)
{
	self endon("death");
	self endon("change_state");
	vehicle_ai::Cooldown("spike_on_ground", 2);
	self thread Attack_Thread_Gun();
	self thread Attack_Thread_rocket();
	locomotion_start();
	startTime = GetTime();
	while(Distance2DSquared(self.origin, self.death_goal_point) > 1200 && vehicle_ai::TimeSince(startTime) < 8)
	{
		self SetVehGoalPos(self.death_goal_point, 0, 1);
		self SetBrake(0);
		wait(1);
	}
	self CancelAIMove();
	self ClearVehGoalPos();
	self SetBrake(1);
	self notify("end_attack_thread");
	self notify("end_movement_thread");
	self.jump.highground_history = self.jump.highgrounds[0];
	self state_jumpUp_enter(params);
	self state_jump_update(params);
	util::stop_magic_bullet_shield(self);
	self.disable_side_step = 1;
	self state_balconyCombat_update(params);
}

/*
	Name: scripted_exit
	Namespace: siegebot_theia
	Checksum: 0x500C5F3B
	Offset: 0x1670
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function scripted_exit(params)
{
	vehicle_ai::Cooldown("jump", 22);
	vehicle_ai::Cooldown("jumpUp", 33);
}

/*
	Name: initJumpStruct
	Namespace: siegebot_theia
	Checksum: 0x3D134B68
	Offset: 0x16C8
	Size: 0x353
	Parameters: 0
	Flags: None
*/
function initJumpStruct()
{
	if(isdefined(self.jump))
	{
		self Unlink();
		self.jump.linkEnt delete();
		self.jump delete();
	}
	self.jump = spawnstruct();
	self.jump.linkEnt = spawn("script_origin", self.origin);
	self.jump.in_air = 0;
	self.jump.highgrounds = struct::get_array("balcony_point");
	self.jump.groundpoints = struct::get_array("ground_point");
	self.arena_center = struct::get("arena_center").origin;
	self.death_goal_point = struct::get("death_goal_point").origin;
	self.combat_goal_volume = GetEnt("theia_combat_region", "targetname");
	foreach(point in self.jump.highgrounds)
	{
		if(DistanceSquared(point.origin, (-24566.2, 23972.5, -20000)) < 100 * 100)
		{
			point.origin = point.origin + (20, -20, -100);
			continue;
		}
		if(DistanceSquared(point.origin, (-27291.2, 25825.6, -20072)) < 100 * 100)
		{
			point.origin = point.origin + VectorScale((0, 1, 0), 35);
		}
	}
	/#
		Assert(self.jump.highgrounds.size > 0);
	#/
	/#
		Assert(self.jump.groundpoints.size > 0);
	#/
	/#
		Assert(isdefined(self.arena_center));
	#/
}

/*
	Name: can_jump_up
	Namespace: siegebot_theia
	Checksum: 0x6CCAE8D1
	Offset: 0x1A28
	Size: 0xBF
	Parameters: 3
	Flags: None
*/
function can_jump_up(from_state, to_state, connection)
{
	if(!vehicle_ai::IsCooldownReady("jump") || !vehicle_ai::IsCooldownReady("jumpUp"))
	{
		return 0;
	}
	target = highGroundPoint(800, 2000, self.jump.highgrounds, 1200);
	if(isdefined(target))
	{
		self.jump.highground_history = target;
		return 500;
	}
	return 0;
}

/*
	Name: state_jumpUp_enter
	Namespace: siegebot_theia
	Checksum: 0x2F1573B
	Offset: 0x1AF0
	Size: 0x1FB
	Parameters: 1
	Flags: None
*/
function state_jumpUp_enter(params)
{
	goal = self.jump.highground_history.origin;
	trace = PhysicsTrace(goal + VectorScale((0, 0, 1), 200), goal - VectorScale((0, 0, 1), 10000), VectorScale((-1, -1, -1), 10), VectorScale((1, 1, 1), 10), self, 2);
	if(0)
	{
		/#
			debugstar(goal, 60000, (0, 1, 0));
		#/
		/#
			debugstar(trace["Dev Block strings are not supported"], 60000, (0, 1, 0));
		#/
		/#
			line(goal, trace["Dev Block strings are not supported"], (0, 1, 0), 1, 0, 60000);
		#/
	}
	if(trace["fraction"] < 1)
	{
		goal = trace["position"];
	}
	self.jump.highground_history = goal;
	self.jump.goal = goal;
	params.scaleForward = 70;
	params.gravityForce = VectorScale((0, 0, -1), 5);
	params.upByHeight = 10;
	params.landingState = "land_turn@jump";
	self pain_toggle(0);
	self stopMovementAndSetBrake();
}

/*
	Name: can_jump_down
	Namespace: siegebot_theia
	Checksum: 0x61558F6A
	Offset: 0x1CF8
	Size: 0x9F
	Parameters: 3
	Flags: None
*/
function can_jump_down(from_state, to_state, connection)
{
	if(!vehicle_ai::IsCooldownReady("jump") || self.dontchangestate === 1)
	{
		return 0;
	}
	target = get_jumpon_target(800, 2000, 1300);
	if(isdefined(target))
	{
		self.jump.lowground_history = target;
		return 500;
	}
	return 0;
}

/*
	Name: state_jumpDown_enter
	Namespace: siegebot_theia
	Checksum: 0xBD221AFD
	Offset: 0x1DA0
	Size: 0x1F3
	Parameters: 1
	Flags: None
*/
function state_jumpDown_enter(params)
{
	goal = self.jump.lowground_history;
	trace = PhysicsTrace(goal + VectorScale((0, 0, 1), 500), goal - VectorScale((0, 0, 1), 10000), VectorScale((-1, -1, -1), 10), VectorScale((1, 1, 1), 10), self, 2);
	if(0)
	{
		/#
			debugstar(goal, 60000, (0, 1, 0));
		#/
		/#
			debugstar(trace["Dev Block strings are not supported"], 60000, (0, 1, 0));
		#/
		/#
			line(goal, trace["Dev Block strings are not supported"], (0, 1, 0), 1, 0, 60000);
		#/
	}
	if(trace["fraction"] < 1)
	{
		goal = trace["position"];
	}
	self.jump.lowground_history = goal;
	self.jump.goal = goal;
	params.scaleForward = 70;
	params.gravityForce = VectorScale((0, 0, -1), 5);
	params.upByHeight = -5;
	params.landingState = "land@jump";
	self pain_toggle(0);
	self stopMovementAndSetBrake();
}

/*
	Name: can_jump_ground_to_ground
	Namespace: siegebot_theia
	Checksum: 0xC30CD156
	Offset: 0x1FA0
	Size: 0x8F
	Parameters: 3
	Flags: None
*/
function can_jump_ground_to_ground(from_state, to_state, connection)
{
	if(!vehicle_ai::IsCooldownReady("jump"))
	{
		return 0;
	}
	target = get_jumpon_target(800, 1800, 1300, 0, 0, 0);
	if(isdefined(target))
	{
		self.jump.lowground_history = target;
		return 400;
	}
	return 0;
}

/*
	Name: state_jump_exit
	Namespace: siegebot_theia
	Checksum: 0x5910805B
	Offset: 0x2038
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function state_jump_exit(params)
{
	self pain_toggle(1);
}

/*
	Name: state_jumpDown_exit
	Namespace: siegebot_theia
	Checksum: 0xD52BE5F6
	Offset: 0x2068
	Size: 0x5B
	Parameters: 1
	Flags: None
*/
function state_jumpDown_exit(params)
{
	self pain_toggle(1);
	self vehicle_ai::Cooldown("jumpUp", 11 + RandomFloatRange(-1, 3));
}

/*
	Name: state_jump_update
	Namespace: siegebot_theia
	Checksum: 0x57BA0AB4
	Offset: 0x20D0
	Size: 0xD13
	Parameters: 1
	Flags: None
*/
function state_jump_update(params)
{
	self endon("change_state");
	self endon("death");
	goal = self.jump.goal;
	self face_target(goal);
	self.jump.linkEnt.origin = self.origin;
	self.jump.linkEnt.angles = self.angles;
	wait(0.05);
	self LinkTo(self.jump.linkEnt);
	self.jump.in_air = 1;
	if(0)
	{
		/#
			debugstar(goal, 60000, (0, 1, 0));
		#/
		/#
			debugstar(goal + VectorScale((0, 0, 1), 100), 60000, (0, 1, 0));
		#/
		/#
			line(goal, goal + VectorScale((0, 0, 1), 100), (0, 1, 0), 1, 0, 60000);
		#/
	}
	totalDistance = Distance2D(goal, self.jump.linkEnt.origin);
	FORWARD = (goal - self.jump.linkEnt.origin / totalDistance[0], goal - self.jump.linkEnt.origin / totalDistance[1], 0);
	upByDistance = mapfloat(500, 2000, 46, 52, totalDistance);
	antiGravityByDistance = mapfloat(500, 2000, 0, 0.5, totalDistance);
	initVelocityUp = (0, 0, 1) * upByDistance + params.upByHeight;
	initVelocityForward = FORWARD * params.scaleForward * mapfloat(500, 2000, 0.8, 1, totalDistance);
	velocity = initVelocityUp + initVelocityForward;
	self ASMRequestSubstate("inair@jump");
	self waittill("engine_startup");
	self vehicle::impact_fx(self.settings.startupfx1);
	self waittill("leave_ground");
	self vehicle::impact_fx(self.settings.takeofffx1);
	jumpStart = GetTime();
	while(1)
	{
		distanceToGoal = Distance2D(self.jump.linkEnt.origin, goal);
		antiGravityScaleUp = mapfloat(0, 0.5, 0.6, 0, Abs(0.5 - distanceToGoal / totalDistance));
		antiGravityScale = mapfloat(self.radius * 1, self.radius * 3, 0, 1, distanceToGoal);
		antiGravity = antiGravityScale * antiGravityScaleUp * params.gravityForce * -1 + (0, 0, antiGravityByDistance);
		if(0)
		{
			/#
				line(self.jump.linkEnt.origin, self.jump.linkEnt.origin + antiGravity, (0, 1, 0), 1, 0, 60000);
			#/
		}
		velocityForwardScale = mapfloat(self.radius * 1, self.radius * 4, 0.2, 1, distanceToGoal);
		velocityForward = initVelocityForward * velocityForwardScale;
		if(0)
		{
			/#
				line(self.jump.linkEnt.origin, self.jump.linkEnt.origin + velocityForward, (0, 1, 0), 1, 0, 60000);
			#/
		}
		oldVerticleSpeed = velocity[2];
		velocity = (0, 0, velocity[2]);
		velocity = velocity + velocityForward + params.gravityForce + antiGravity;
		if(oldVerticleSpeed > 0 && velocity[2] <= 0)
		{
			self ASMRequestSubstate("fall@jump");
		}
		if(velocity[2] <= 0 && self.jump.linkEnt.origin[2] + velocity[2] <= goal[2] || vehicle_ai::TimeSince(jumpStart) > 10)
		{
			break;
		}
		heightThreshold = goal[2] + 110;
		oldHeight = self.jump.linkEnt.origin[2];
		self.jump.linkEnt.origin = self.jump.linkEnt.origin + velocity;
		if(self.jump.linkEnt.origin[2] < heightThreshold && (oldHeight > heightThreshold || (oldVerticleSpeed > 0 && velocity[2] < 0)))
		{
			self notify("start_landing");
			self ASMRequestSubstate(params.landingState);
		}
		if(0)
		{
			/#
				debugstar(self.jump.linkEnt.origin, 60000, (1, 0, 0));
			#/
		}
		wait(0.05);
	}
	self.jump.linkEnt.origin = (self.jump.linkEnt.origin[0], self.jump.linkEnt.origin[1], 0) + (0, 0, goal[2]);
	self notify("land_crush");
	foreach(player in level.players)
	{
		player._takedamage_old = player.takedamage;
		player.takedamage = 0;
	}
	self RadiusDamage(self.origin + VectorScale((0, 0, 1), 15), self.radiusdamageradius, self.radiusdamagemax, self.radiusdamagemin, self, "MOD_EXPLOSIVE");
	foreach(player in level.players)
	{
		player.takedamage = player._takedamage_old;
		player._takedamage_old = undefined;
		if(Distance2DSquared(self.origin, player.origin) < 200 * 200)
		{
			direction = (player.origin - self.origin[0], player.origin - self.origin[1], 0);
			if(Abs(direction[0]) < 0.01 && Abs(direction[1]) < 0.01)
			{
				direction = (RandomFloatRange(1, 2), RandomFloatRange(1, 2), 0);
			}
			direction = VectorNormalize(direction);
			strength = 700;
			player SetVelocity(player GetVelocity() + direction * strength);
			if(player.health > 80)
			{
				player DoDamage(player.health - 70, self.origin, self);
				continue;
			}
			player DoDamage(20, self.origin, self);
		}
	}
	self vehicle::impact_fx(self.settings.landingfx1);
	self stopMovementAndSetBrake();
	self clientfield::increment("sarah_rumble_on_landing");
	wait(0.3);
	self Unlink();
	wait(0.05);
	self.jump.in_air = 0;
	self notify("jump_finished");
	vehicle_ai::Cooldown("jump", 11);
	vehicle_ai::Cooldown("ignore_player", 12);
	self vehicle_ai::waittill_asm_complete(params.landingState, 3);
	self vehicle_ai::evaluate_connections();
}

/*
	Name: state_balconyCombat_enter
	Namespace: siegebot_theia
	Checksum: 0x75B6813
	Offset: 0x2DF0
	Size: 0xBB
	Parameters: 1
	Flags: None
*/
function state_balconyCombat_enter(params)
{
	self vehicle_ai::ClearAllLookingAndTargeting();
	self SetTurretTargetRelativeAngles((0, 0, 0), 0);
	self SetTurretTargetRelativeAngles((0, 0, 0), 1);
	self SetTurretTargetRelativeAngles((0, 0, 0), 2);
	self SetTurretTargetRelativeAngles((0, 0, 0), 3);
	self SetTurretTargetRelativeAngles((0, 0, 0), 4);
}

/*
	Name: state_balconyCombat_update
	Namespace: siegebot_theia
	Checksum: 0x57209D78
	Offset: 0x2EB8
	Size: 0x2E7
	Parameters: 1
	Flags: None
*/
function state_balconyCombat_update(params)
{
	self endon("change_state");
	self endon("death");
	currentHighGround = undefined;
	foreach(highGround in self.jump.highgrounds)
	{
		if(Distance2DSquared(highGround.origin, self.origin) < self.radius * 6 * self.radius * 6)
		{
			currentHighGround = highGround;
			break;
		}
	}
	if(!isdefined(currentHighGround))
	{
		self vehicle_ai::ClearCooldown("jump");
		self vehicle_ai::evaluate_connections();
	}
	FORWARD = AnglesToForward(currentHighGround.angles);
	while(1)
	{
		while(!isdefined(self.enemy))
		{
			wait(1);
		}
		self face_target(self.origin + FORWARD * 10000);
		javelinChance = self.damageLevel * 0.15;
		if(RandomFloat(1) < javelinChance)
		{
			attack_javelin();
			level notify("theia_finished_platform_attack");
			self vehicle_ai::evaluate_connections();
			wait(0.8);
		}
		attack_spike_minefield();
		level notify("theia_finished_platform_attack");
		self vehicle_ai::evaluate_connections();
		if(RandomFloat(1) > 0.4 && self.disable_side_step !== 1)
		{
			wait(0.2);
			self side_step();
		}
		wait(0.8);
		attack_minigun_sweep();
		level notify("theia_finished_platform_attack");
		self vehicle_ai::evaluate_connections();
		wait(0.8);
	}
}

/*
	Name: side_step
	Namespace: siegebot_theia
	Checksum: 0xBCE5E551
	Offset: 0x31A8
	Size: 0x2F3
	Parameters: 0
	Flags: None
*/
function side_step()
{
	step_size = 180;
	right_dir = AnglesToRight(self.angles);
	start = self.origin + VectorScale((0, 0, 1), 10);
	traceDir = right_dir;
	jukeState = "juke_r@movement";
	oppositeJukeState = "juke_l@movement";
	if(math::cointoss())
	{
		traceDir = traceDir * -1;
		jukeState = "juke_l@movement";
		oppositeJukeState = "juke_r@movement";
	}
	trace = PhysicsTrace(start, start + traceDir * step_size, 0.8 * (self.radius * -1, self.radius * -1, 0), 0.8 * (self.radius, self.radius, self.height), self, 2);
	if(0)
	{
		/#
			line(start, start + traceDir * step_size, (1, 0, 0), 1, 0, 100);
		#/
	}
	if(trace["fraction"] < 1)
	{
		traceDir = traceDir * -1;
		trace = PhysicsTrace(start, start + traceDir * step_size, 0.8 * (self.radius * -1, self.radius * -1, 0), 0.8 * (self.radius, self.radius, self.height), self, 2);
		jukeState = oppositeJukeState;
		if(0)
		{
			/#
				line(start, start + traceDir * step_size, (1, 0, 0), 1, 0, 100);
			#/
		}
	}
	if(trace["fraction"] >= 1)
	{
		self ASMRequestSubstate(jukeState);
		self vehicle_ai::waittill_asm_complete(jukeState, 3);
		self locomotion_start();
		return 1;
	}
	return 0;
}

/*
	Name: state_balconyCombat_exit
	Namespace: siegebot_theia
	Checksum: 0x83648EA9
	Offset: 0x34A8
	Size: 0xBB
	Parameters: 1
	Flags: None
*/
function state_balconyCombat_exit(params)
{
	self vehicle_ai::ClearAllLookingAndTargeting();
	self SetTurretTargetRelativeAngles((0, 0, 0), 0);
	self SetTurretTargetRelativeAngles((0, 0, 0), 1);
	self SetTurretTargetRelativeAngles((0, 0, 0), 2);
	self SetTurretTargetRelativeAngles((0, 0, 0), 3);
	self SetTurretTargetRelativeAngles((0, 0, 0), 4);
}

/*
	Name: state_groundCombat_update
	Namespace: siegebot_theia
	Checksum: 0x490199F1
	Offset: 0x3570
	Size: 0xFD
	Parameters: 1
	Flags: None
*/
function state_groundCombat_update(params)
{
	self endon("death");
	self endon("change_state");
	if(vehicle_ai::get_previous_state() === "jump")
	{
		vehicle_ai::Cooldown("spike_on_ground", 2);
	}
	self thread Attack_Thread_Gun();
	self thread Attack_Thread_rocket();
	self thread Movement_Thread();
	self thread footstep_left_monitor();
	self thread footstep_right_monitor();
	while(1)
	{
		self vehicle_ai::evaluate_connections();
		wait(1);
	}
}

/*
	Name: footstep_damage
	Namespace: siegebot_theia
	Checksum: 0x310B2BB1
	Offset: 0x3678
	Size: 0x1F9
	Parameters: 1
	Flags: None
*/
function footstep_damage(tag_name)
{
	origin = self GetTagOrigin(tag_name);
	foreach(player in level.players)
	{
		player._takedamage_old = player.takedamage;
		player.takedamage = 0;
	}
	self RadiusDamage(origin + VectorScale((0, 0, 1), 10), self.radius, 200, 200, self, "MOD_EXPLOSIVE");
	foreach(player in level.players)
	{
		player.takedamage = player._takedamage_old;
		player._takedamage_old = undefined;
		if(Distance2DSquared(origin, player.origin) < self.radius * self.radius)
		{
			player DoDamage(15, origin, self);
		}
	}
}

/*
	Name: footstep_left_monitor
	Namespace: siegebot_theia
	Checksum: 0x8A853D72
	Offset: 0x3880
	Size: 0x67
	Parameters: 0
	Flags: None
*/
function footstep_left_monitor()
{
	self endon("death");
	self endon("change_state");
	self notify("stop_left_footstep_damage");
	self endon("stop_left_footstep_damage");
	while(1)
	{
		self waittill("footstep_left_large_theia");
		footstep_damage("tag_leg_left_foot_animate");
	}
}

/*
	Name: footstep_right_monitor
	Namespace: siegebot_theia
	Checksum: 0x84D98401
	Offset: 0x38F0
	Size: 0x67
	Parameters: 0
	Flags: None
*/
function footstep_right_monitor()
{
	self endon("death");
	self endon("change_state");
	self notify("stop_right_footstep_damage");
	self endon("stop_right_footstep_damage");
	while(1)
	{
		self waittill("footstep_right_large_theia");
		footstep_damage("tag_leg_right_foot_animate");
	}
}

/*
	Name: highGroundPoint
	Namespace: siegebot_theia
	Checksum: 0xC7BA5392
	Offset: 0x3960
	Size: 0x345
	Parameters: 4
	Flags: None
*/
function highGroundPoint(distanceLimitMin, distanceLimitMax, pointsArray, idealDist)
{
	/#
		Record3DText("Dev Block strings are not supported" + distanceLimitMin + "Dev Block strings are not supported" + distanceLimitMax + "Dev Block strings are not supported", self.origin, (1, 0.5, 0), "Dev Block strings are not supported", self);
	#/
	bestScore = 1000000;
	result = undefined;
	foreach(point in pointsArray)
	{
		distanceToTarget = Distance2D(point.origin, self.origin);
		if(distanceToTarget < distanceLimitMin || distanceLimitMax < distanceToTarget)
		{
			/#
				RecordStar(point.origin, (1, 0.5, 0));
			#/
			/#
				Record3DText("Dev Block strings are not supported" + distanceToTarget, point.origin, (1, 0.5, 0), "Dev Block strings are not supported", self);
			#/
			continue;
		}
		score = Abs(distanceToTarget - idealDist);
		if(score < 200)
		{
			score = RandomFloat(200);
		}
		if(isdefined(self.jump.highground_history) && Distance2DSquared(point.origin, self.jump.highground_history) < 50 * 50)
		{
			score = score + 1000;
		}
		/#
			RecordStar(point.origin, (1, 0.5, 0));
		#/
		/#
			Record3DText("Dev Block strings are not supported" + distanceToTarget + "Dev Block strings are not supported" + score, point.origin, (1, 0.5, 0), "Dev Block strings are not supported", self);
		#/
		if(score < bestScore)
		{
			bestScore = score;
			result = point;
		}
	}
	if(isdefined(result))
	{
		return result;
	}
	return undefined;
}

/*
	Name: state_groundCombat_exit
	Namespace: siegebot_theia
	Checksum: 0xCB5ED7B8
	Offset: 0x3CB0
	Size: 0x53
	Parameters: 1
	Flags: None
*/
function state_groundCombat_exit(params)
{
	self notify("end_attack_thread");
	self notify("end_movement_thread");
	self ClearTurretTarget();
	self SetTurretSpinning(0);
}

/*
	Name: get_player_vehicle
	Namespace: siegebot_theia
	Checksum: 0x854D717E
	Offset: 0x3D10
	Size: 0x75
	Parameters: 1
	Flags: None
*/
function get_player_vehicle(player)
{
	if(isPlayer(player))
	{
		if(player.usingvehicle && isdefined(player.viewlockedentity) && isVehicle(player.viewlockedentity))
		{
			return player.viewlockedentity;
		}
	}
	return undefined;
}

/*
	Name: get_player_and_vehicle_array
	Namespace: siegebot_theia
	Checksum: 0x5AA0EB9C
	Offset: 0x3D90
	Size: 0x143
	Parameters: 0
	Flags: None
*/
function get_player_and_vehicle_array()
{
	targets = level.players;
	vehicles = [];
	foreach(player in level.players)
	{
		vehicle = get_player_vehicle(player);
		if(isdefined(vehicle))
		{
			if(!isdefined(vehicles))
			{
				vehicles = [];
			}
			else if(!IsArray(vehicles))
			{
				vehicles = Array(vehicles);
			}
			vehicles[vehicles.size] = vehicle;
		}
	}
	targets = ArrayCombine(targets, vehicles, 0, 0);
	return targets;
}

/*
	Name: init_player_threat
	Namespace: siegebot_theia
	Checksum: 0x14890761
	Offset: 0x3EE0
	Size: 0x10B
	Parameters: 1
	Flags: None
*/
function init_player_threat(player)
{
	index = player GetEntityNumber();
	if(!isdefined(self.player_threat))
	{
		self.player_threat = [];
		for(i = 0; i < 4; i++)
		{
			self.player_threat[self.player_threat.size] = spawnstruct();
		}
	}
	else if(!isdefined(self.player_threat[index].damage) || !isdefined(self.player_threat[index].tempBoost) || !isdefined(self.player_threat[index].tempBoostTimeout))
	{
		reset_player_threat(player);
	}
}

/*
	Name: init_player_threat_all
	Namespace: siegebot_theia
	Checksum: 0x3C633135
	Offset: 0x3FF8
	Size: 0xE9
	Parameters: 0
	Flags: None
*/
function init_player_threat_all()
{
	callback::on_spawned(&init_player_threat, self);
	callback::on_player_killed(&init_player_threat, self);
	callback::on_laststand(&init_player_threat, self);
	foreach(player in level.players)
	{
		self init_player_threat(player);
	}
}

/*
	Name: reset_player_threat
	Namespace: siegebot_theia
	Checksum: 0xA7E1BB6E
	Offset: 0x40F0
	Size: 0x187
	Parameters: 1
	Flags: None
*/
function reset_player_threat(player)
{
	index = player GetEntityNumber();
	minDamage = self.player_threat[index].damage;
	if(!isdefined(minDamage))
	{
		minDamage = 1000000;
	}
	if(self.player_threat.size > 0)
	{
		foreach(threat in self.player_threat)
		{
			if(isdefined(threat.damage))
			{
				minDamage = min(minDamage, threat.damage);
			}
		}
	}
	else
	{
		minDamage = 0;
	}
	self.player_threat[index].damage = minDamage;
	self.player_threat[index].tempBoost = 0;
	self.player_threat[index].tempBoostTimeout = 0;
}

/*
	Name: add_player_threat_damage
	Namespace: siegebot_theia
	Checksum: 0x1B8707AA
	Offset: 0x4280
	Size: 0x6B
	Parameters: 2
	Flags: None
*/
function add_player_threat_damage(player, damage)
{
	index = player GetEntityNumber();
	self.player_threat[index].damage = self.player_threat[index].damage + damage;
}

/*
	Name: add_player_threat_boost
	Namespace: siegebot_theia
	Checksum: 0x1C198E42
	Offset: 0x42F8
	Size: 0xD3
	Parameters: 3
	Flags: None
*/
function add_player_threat_boost(player, boost, timeSeconds)
{
	index = player GetEntityNumber();
	if(self.player_threat[index].tempBoostTimeout <= GetTime())
	{
		self.player_threat[index].tempBoost = 0;
	}
	self.player_threat[index].tempBoost = self.player_threat[index].tempBoost + boost;
	self.player_threat[index].tempBoostTimeout = GetTime() + timeSeconds * 1000;
}

/*
	Name: get_player_threat
	Namespace: siegebot_theia
	Checksum: 0x594F2EC
	Offset: 0x43D8
	Size: 0x22F
	Parameters: 1
	Flags: None
*/
function get_player_threat(player)
{
	if(!is_valid_target(player))
	{
		return;
	}
	timeIgnoreOnSpawn = 7;
	currentTime = GetTime();
	if(isdefined(player._spawn_time) && player._spawn_time + timeIgnoreOnSpawn * 1000 > currentTime)
	{
		return;
	}
	index = player GetEntityNumber();
	if(!isdefined(self.player_threat) || !isdefined(self.player_threat[index]))
	{
		return;
	}
	threat = self.player_threat[index].damage;
	if(self.player_threat[index].tempBoostTimeout > GetTime())
	{
		threat = threat + self.player_threat[index].tempBoost;
	}
	if(self.main_target === player)
	{
		threat = threat + 1000;
	}
	if(self vehseenrecently(player, 3))
	{
		threat = threat + 1000;
	}
	if(player.health < 50)
	{
		threat = threat - 800;
	}
	distanceSqr = Distance2DSquared(self.origin, player.origin);
	if(distanceSqr < 800 * 800)
	{
		threat = threat + 800;
	}
	else if(distanceSqr < 1500 * 1500)
	{
		threat = threat + 400;
	}
	return threat;
}

/*
	Name: update_target_player
	Namespace: siegebot_theia
	Checksum: 0xAB1F00C9
	Offset: 0x4610
	Size: 0xE5
	Parameters: 0
	Flags: None
*/
function update_target_player()
{
	best_threat = -1000000;
	self.main_target = undefined;
	foreach(player in level.players)
	{
		threat = get_player_threat(player);
		if(isdefined(threat) && threat > best_threat)
		{
			best_threat = threat;
			self.main_target = player;
		}
	}
}

/*
	Name: shoulder_light_focus
	Namespace: siegebot_theia
	Checksum: 0x1A377B67
	Offset: 0x4700
	Size: 0x93
	Parameters: 1
	Flags: None
*/
function shoulder_light_focus(target)
{
	if(!isdefined(target))
	{
		self SetTurretTargetRelativeAngles((0, 0, 0), 3);
		self SetTurretTargetRelativeAngles((0, 0, 0), 4);
	}
	else
	{
		self vehicle_ai::SetTurretTarget(target, 3);
		self vehicle_ai::SetTurretTarget(target, 4);
	}
}

/*
	Name: Debug_line_to_target
	Namespace: siegebot_theia
	Checksum: 0xCAC958AA
	Offset: 0x47A0
	Size: 0xBF
	Parameters: 3
	Flags: None
*/
function Debug_line_to_target(target, time, color)
{
	self endon("death");
	point1 = self.origin;
	point2 = target.origin;
	if(0)
	{
		stopTime = GetTime() + time * 1000;
		while(GetTime() <= stopTime)
		{
			/#
				line(point1, point2, color, 1, 0, 3);
			#/
			wait(0.05);
		}
	}
}

/*
	Name: Pin_first_three_spikes_to_ground
	Namespace: siegebot_theia
	Checksum: 0xA36D6E0
	Offset: 0x4868
	Size: 0x95
	Parameters: 1
	Flags: None
*/
function Pin_first_three_spikes_to_ground(delay)
{
	self endon("death");
	wait(delay);
	for(i = 0; i < 3 && i < self.spikeFakeTargets.size; i++)
	{
		spike = self.spikeFakeTargets[i];
		spike pin_to_ground();
		wait(0.15);
	}
}

/*
	Name: Attack_Thread_Gun
	Namespace: siegebot_theia
	Checksum: 0x6989034D
	Offset: 0x4908
	Size: 0x3BF
	Parameters: 0
	Flags: None
*/
function Attack_Thread_Gun()
{
	self endon("death");
	self endon("change_state");
	self endon("end_attack_thread");
	self notify("end_attack_thread_gun");
	self endon("end_attack_thread_gun");
	while(1)
	{
		enemy = self.enemy;
		if(!isdefined(enemy))
		{
			self SetTurretTargetRelativeAngles((0, 0, 0));
			wait(0.4);
			continue;
		}
		if(!enemy.allowdeath && !isPlayer(enemy))
		{
			self SetPersonalThreatBias(enemy, -2000, 8);
			wait(0.4);
			continue;
		}
		distSq = DistanceSquared(enemy.origin, self.origin);
		if(self VehCanSee(enemy) && (isPlayer(enemy) || (200 * 200 < distSq && distSq < 2000 * 2000)))
		{
			self SetPersonalThreatBias(enemy, 1000, 1);
		}
		else
		{
			self SetPersonalThreatBias(enemy, -1000, 1);
		}
		self vehicle_ai::SetTurretTarget(enemy, 0);
		self vehicle_ai::SetTurretTarget(enemy, 1);
		self shoulder_light_focus(enemy);
		gun_on_target = GetTime();
		self SetTurretSpinning(1);
		while(isdefined(enemy) && !self.gunner1ontarget && vehicle_ai::TimeSince(gun_on_target) < 2)
		{
			wait(0.4);
		}
		if(!isdefined(enemy))
		{
			self SetTurretSpinning(0);
			continue;
		}
		attack_start = GetTime();
		while(isdefined(enemy) && enemy === self.enemy && self vehseenrecently(enemy, 1) && vehicle_ai::TimeSince(attack_start) < 5)
		{
			self vehicle_ai::fire_for_time(1 + RandomFloat(0.4), 1);
			if(isdefined(enemy) && isPlayer(enemy))
			{
				wait(0.6 + RandomFloat(0.2));
			}
			wait(0.1);
		}
		self SetTurretSpinning(0);
		wait(0.1);
	}
}

/*
	Name: Attack_Thread_rocket
	Namespace: siegebot_theia
	Checksum: 0xE40AEC0C
	Offset: 0x4CD0
	Size: 0x7FB
	Parameters: 0
	Flags: None
*/
function Attack_Thread_rocket()
{
	self endon("death");
	self endon("change_state");
	self endon("end_attack_thread");
	self notify("end_attack_thread_rocket");
	self endon("end_attack_thread_rocket");
	while(1)
	{
		enemy = self.enemy;
		if(!isdefined(enemy))
		{
			wait(0.4);
			continue;
		}
		if(vehicle_ai::IsCooldownReady("spike_on_ground", 2) && self.rocketaim !== 1)
		{
			self toggle_rocketaim(1);
		}
		if(!vehicle_ai::IsCooldownReady("spike_on_ground"))
		{
			wait(0.4);
			continue;
		}
		primaryEnemy = enemy;
		targets = GetAITeamArray("allies");
		targets = ArrayCombine(targets, level.players, 0, 0);
		dirToPrimaryEnemy = VectorNormalize((primaryEnemy.origin - self.origin[0], primaryEnemy.origin - self.origin[1], 0));
		bestCloseScore = 0;
		bestTarget = undefined;
		foreach(target in targets)
		{
			if(target IsNoTarget() || target == primaryEnemy)
			{
				continue;
			}
			dirToTarget = VectorNormalize((target.origin - self.origin[0], target.origin - self.origin[1], 0));
			angleDot = VectorDot(dirToTarget, dirToPrimaryEnemy);
			if(angleDot < 0.2)
			{
				continue;
			}
			distanceSelfToTargetSqr = Distance2DSquared(target.origin, self.origin);
			if(distanceSelfToTargetSqr < 400 * 400 || distanceSelfToTargetSqr > 1200 * 1200)
			{
				continue;
			}
			closeTargetScore = spike_score(target);
			closeTargetScore = closeTargetScore + 1 - angleDot;
			if(isPlayer(target))
			{
				closeTargetScore = closeTargetScore + 0.5;
			}
			distancePrimaryEnemyToTargetSqr = Distance2DSquared(target.origin, primaryEnemy.origin);
			if(distancePrimaryEnemyToTargetSqr < 200 * 200)
			{
				closeTargetScore = closeTargetScore - 0.3;
			}
			if(bestCloseScore <= closeTargetScore)
			{
				bestCloseScore = closeTargetScore;
				bestTarget = target;
			}
		}
		enemy = bestTarget;
		if(isalive(enemy))
		{
			if(0)
			{
				self thread Debug_line_to_target(enemy, 5, (1, 0, 0));
			}
			turretOrigin = self GetTagOrigin("tag_gunner_flash2");
			distToEnemy = Distance2D(self.origin, enemy.origin);
			shootHeight = math::clamp(distToEnemy * 0.35, 100, 350);
			points = GeneratePointsAroundCenter(enemy.origin + (0, 0, shootHeight), 300, 80, 50);
			pinDelay = mapfloat(300, 700, 0.1, 1, distToEnemy);
			spike = self.spikeFakeTargets[0];
			spike.origin = points[0];
			self setGunnerTargetEnt(spike, (0, 0, 0), 1);
			rocket_on_target = GetTime();
			while(!self.gunner2ontarget && vehicle_ai::TimeSince(rocket_on_target) < 2)
			{
				wait(0.4);
			}
			self thread Pin_first_three_spikes_to_ground(pinDelay);
			for(i = 0; i < 3 && i < self.spikeFakeTargets.size && i < points.size; i++)
			{
				spike = self.spikeFakeTargets[i];
				spike.origin = points[i];
				self setGunnerTargetEnt(spike, (0, 0, 0), 1);
				self FireWeapon(2, enemy);
				vehicle_ai::Cooldown("spike_on_ground", RandomFloatRange(6, 10));
				if(0)
				{
					/#
						debugstar(spike.origin, 200, (1, 0, 0));
					#/
					/#
						circle(spike.origin, 150, (1, 0, 0), 0, 1, 200);
					#/
				}
				wait(0.1);
			}
			wait(0.5);
			self SetTurretTargetRelativeAngles((0, 0, 0), 2);
			self toggle_rocketaim(0);
		}
		else
		{
			wait(0.4);
		}
	}
}

/*
	Name: toggle_rocketaim
	Namespace: siegebot_theia
	Checksum: 0x29249D31
	Offset: 0x54D8
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function toggle_rocketaim(is_aiming)
{
	self.rocketaim = is_aiming;
	self locomotion_start();
}

/*
	Name: locomotion_start
	Namespace: siegebot_theia
	Checksum: 0x717DD8D5
	Offset: 0x5510
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function locomotion_start()
{
	if(self.rocketaim === 1)
	{
		locomotion = "locomotion@movement";
	}
	else
	{
		locomotion = "locomotion_rocketup@movement";
	}
	self ASMRequestSubstate(locomotion);
}

/*
	Name: Get_Strong_Target
	Namespace: siegebot_theia
	Checksum: 0x329D5B5C
	Offset: 0x5570
	Size: 0x1AF
	Parameters: 0
	Flags: None
*/
function Get_Strong_Target()
{
	mindist = 400;
	ai_array = GetAITeamArray("allies");
	ai_array = Array::randomize(ai_array);
	foreach(ai in ai_array)
	{
		awayFromPlayer = 1;
		foreach(player in level.players)
		{
			if(is_valid_target(player) && Distance2DSquared(ai.origin, player.origin) < mindist * mindist)
			{
				awayFromPlayer = 0;
				break;
			}
		}
		if(!awayFromPlayer)
		{
			continue;
		}
	}
	return undefined;
}

/*
	Name: Movement_Thread
	Namespace: siegebot_theia
	Checksum: 0xED4534C7
	Offset: 0x5728
	Size: 0x2E7
	Parameters: 0
	Flags: None
*/
function Movement_Thread()
{
	self endon("death");
	self endon("change_state");
	self notify("end_movement_thread");
	self endon("end_movement_thread");
	while(1)
	{
		self update_target_player();
		enemy = self.main_target;
		if(level.players.size <= 1 && vehicle_ai::IsCooldownReady("ignore_player"))
		{
			vehicle_ai::Cooldown("ignore_player", 12);
			enemy = Get_Strong_Target();
			foreach(player in level.players)
			{
				self SetPersonalThreatBias(player, -1000, 2);
			}
		}
		else if(!isdefined(enemy))
		{
			enemy = self.enemy;
		}
		if(!isdefined(enemy))
		{
			wait(0.05);
			continue;
		}
		self.current_pathto_pos = self GetNextMovePosition(enemy);
		self.current_enemy_pos = enemy.origin;
		self SetSpeed(self.settings.defaultMoveSpeed);
		foundpath = self SetVehGoalPos(self.current_pathto_pos, 0, 1);
		if(foundpath)
		{
			self SetLookAtEnt(enemy);
			self SetBrake(0);
			locomotion_start();
			self thread path_update_interrupt();
			self vehicle_ai::waittill_pathing_done();
			self notify("end_path_interrupt");
			self CancelAIMove();
			self ClearVehGoalPos();
			self SetBrake(1);
		}
		wait(0.05);
	}
}

/*
	Name: path_update_interrupt
	Namespace: siegebot_theia
	Checksum: 0xDD32780B
	Offset: 0x5A18
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function path_update_interrupt()
{
	self endon("death");
	self endon("change_state");
	self endon("end_movement_thread");
	self notify("end_path_interrupt");
	self endon("end_path_interrupt");
	while(1)
	{
		if(isdefined(self.current_enemy_pos) && isdefined(self.main_target))
		{
			if(Distance2DSquared(self.current_enemy_pos, self.main_target.origin) > 200 * 200)
			{
				self notify("near_goal");
			}
		}
		wait(0.8);
	}
}

/*
	Name: GetNextMovePosition
	Namespace: siegebot_theia
	Checksum: 0xA5FC8146
	Offset: 0x5AD8
	Size: 0x6C5
	Parameters: 1
	Flags: None
*/
function GetNextMovePosition(enemy)
{
	if(self.goalforced)
	{
		return self.goalpos;
	}
	halfHeight = 400;
	spacing = 80;
	queryOrigin = self.origin;
	if(isdefined(enemy) && self CanPath(self.origin, enemy.origin))
	{
		queryOrigin = enemy.origin;
	}
	queryResult = PositionQuery_Source_Navigation(queryOrigin, 0, self.settings.engagementDistMax + 200, halfHeight, spacing, self);
	if(isdefined(enemy))
	{
		PositionQuery_Filter_Sight(queryResult, enemy.origin, self GetEye() - self.origin, self, 0, enemy);
		vehicle_ai::PositionQuery_Filter_EngagementDist(queryResult, enemy, self.settings.engagementDistMin, self.settings.engagementDistMax);
	}
	PositionQuery_Filter_DistanceToGoal(queryResult, self);
	vehicle_ai::PositionQuery_Filter_OutOfGoalAnchor(queryResult);
	FORWARD = AnglesToForward(self.angles);
	if(isdefined(enemy))
	{
		enemyDir = VectorNormalize(enemy.origin - self.origin);
		FORWARD = VectorNormalize(FORWARD + 5 * enemyDir);
	}
	foreach(point in queryResult.data)
	{
		if(Distance2DSquared(self.origin, point.origin) < 300 * 300)
		{
			/#
				if(!isdefined(point._scoreDebug))
				{
					point._scoreDebug = [];
				}
				point._scoreDebug["Dev Block strings are not supported"] = -700;
			#/
			point.score = point.score + -700;
		}
		if(isdefined(enemy))
		{
			/#
				if(!isdefined(point._scoreDebug))
				{
					point._scoreDebug = [];
				}
				point._scoreDebug["Dev Block strings are not supported"] = point.distAwayFromEngagementArea * -1;
			#/
			point.score = point.score + point.distAwayFromEngagementArea * -1;
			if(!point.visibility)
			{
				/#
					if(!isdefined(point._scoreDebug))
					{
						point._scoreDebug = [];
					}
					point._scoreDebug["Dev Block strings are not supported"] = -600;
				#/
				point.score = point.score + -600;
			}
		}
		pointDirection = VectorNormalize(point.origin - self.origin);
		factor = VectorDot(pointDirection, FORWARD);
		if(factor > 0.7)
		{
			/#
				if(!isdefined(point._scoreDebug))
				{
					point._scoreDebug = [];
				}
				point._scoreDebug["Dev Block strings are not supported"] = 600;
			#/
			point.score = point.score + 600;
			continue;
		}
		if(factor > 0)
		{
			/#
				if(!isdefined(point._scoreDebug))
				{
					point._scoreDebug = [];
				}
				point._scoreDebug["Dev Block strings are not supported"] = 0;
			#/
			point.score = point.score + 0;
			continue;
		}
		if(factor > -0.5)
		{
			/#
				if(!isdefined(point._scoreDebug))
				{
					point._scoreDebug = [];
				}
				point._scoreDebug["Dev Block strings are not supported"] = -600;
			#/
			point.score = point.score + -600;
			continue;
		}
		/#
			if(!isdefined(point._scoreDebug))
			{
				point._scoreDebug = [];
			}
			point._scoreDebug["Dev Block strings are not supported"] = -1200;
		#/
		point.score = point.score + -1200;
	}
	vehicle_ai::PositionQuery_PostProcess_SortScore(queryResult);
	self vehicle_ai::PositionQuery_DebugScores(queryResult);
	if(queryResult.data.size == 0)
	{
		return self.origin;
	}
	return queryResult.data[0].origin;
}

/*
	Name: _sort_by_distance2d
	Namespace: siegebot_theia
	Checksum: 0xBB000DE5
	Offset: 0x61A8
	Size: 0x81
	Parameters: 3
	Flags: None
*/
function _sort_by_distance2d(left, right, point)
{
	distanceSqrToLeft = Distance2DSquared(left.origin, point);
	distanceSqrToRight = Distance2DSquared(right.origin, point);
	return distanceSqrToLeft > distanceSqrToRight;
}

/*
	Name: too_close_to_high_ground
	Namespace: siegebot_theia
	Checksum: 0x9730D741
	Offset: 0x6238
	Size: 0xCB
	Parameters: 2
	Flags: None
*/
function too_close_to_high_ground(point, mindistance)
{
	foreach(highGround in self.jump.highgrounds)
	{
		if(Distance2DSquared(point, highGround.origin) < mindistance * mindistance)
		{
			return 1;
			break;
		}
	}
	return 0;
}

/*
	Name: get_jumpon_target
	Namespace: siegebot_theia
	Checksum: 0x6F1F4EE2
	Offset: 0x6310
	Size: 0x8E5
	Parameters: 6
	Flags: None
*/
function get_jumpon_target(distanceLimitMin, distanceLimitMax, idealDist, includingAI, minAngleDiffCos, mustJump)
{
	targets = level.players;
	if(includingAI === 1)
	{
		targets = ArrayCombine(targets, GetAITeamArray("allies"), 0, 0);
		targets = Array::merge_sort(targets, &_sort_by_distance2d, self.origin);
	}
	angles = (0, self.angles[1], 0);
	FORWARD = AnglesToForward(angles);
	bestTarget = undefined;
	bestScore = 1000000;
	minDistAwayFromHighGround = 300;
	maxDistAwayFromArenaCenter = 1800;
	/#
		RecordStar(self.origin, (1, 0.5, 0));
	#/
	/#
		Record3DText("Dev Block strings are not supported", self.origin, (1, 0.5, 0), "Dev Block strings are not supported", self);
	#/
	foreach(target in targets)
	{
		if(!is_valid_target(target) || !target.allowdeath || IsAirBorne(target))
		{
			continue;
		}
		if(Distance2DSquared(self.arena_center, target.origin) > maxDistAwayFromArenaCenter * maxDistAwayFromArenaCenter)
		{
			/#
				RecordStar(target.origin, (0, 0.5, 1));
			#/
			/#
				Record3DText("Dev Block strings are not supported" + Distance2D(self.arena_center, target.origin), target.origin, (0, 0.5, 1), "Dev Block strings are not supported", self);
			#/
			continue;
		}
		if(too_close_to_high_ground(target.origin, minDistAwayFromHighGround))
		{
			/#
				RecordStar(target.origin, (0, 0.5, 1));
			#/
			/#
				Record3DText("Dev Block strings are not supported", target.origin, (0, 0.5, 1), "Dev Block strings are not supported", self);
			#/
			continue;
		}
		distanceToTarget = Distance2D(target.origin, self.origin);
		if(distanceToTarget < distanceLimitMin || distanceLimitMax < distanceToTarget)
		{
			/#
				RecordStar(target.origin, (1, 0.5, 0));
			#/
			/#
				Record3DText("Dev Block strings are not supported" + distanceToTarget, target.origin, (1, 0.5, 0), "Dev Block strings are not supported", self);
			#/
			continue;
		}
		vectorToTarget = (target.origin - self.origin[0], target.origin - self.origin[1], 0);
		vectorToTarget = vectorToTarget / distanceToTarget;
		if(isdefined(minAngleDiffCos) && VectorDot(FORWARD, vectorToTarget) < minAngleDiffCos)
		{
			continue;
		}
		score = Abs(distanceToTarget - idealDist);
		if(score < 200)
		{
			score = RandomFloat(200);
		}
		/#
			RecordStar(target.origin, (1, 0.5, 0));
		#/
		/#
			Record3DText("Dev Block strings are not supported" + distanceToTarget + "Dev Block strings are not supported" + score, target.origin, (1, 0.5, 0), "Dev Block strings are not supported", self);
		#/
		if(isPlayer(target) && !isVehicle(target))
		{
			minRadius = 0;
			maxRadius = 300;
		}
		else
		{
			minRadius = 200;
			maxRadius = 400;
		}
		queryResult = PositionQuery_Source_Navigation(target.origin, minRadius, maxRadius, 500, self.radius * 0.5, self.radius * 1.1);
		if(queryResult.data.size > 0)
		{
			element = queryResult.data[0];
			if(score < bestScore)
			{
				bestScore = score;
				bestTarget = element;
			}
		}
	}
	if(isdefined(bestTarget))
	{
		return bestTarget.origin;
	}
	if(mustJump === 0)
	{
		return undefined;
	}
	queryResult = PositionQuery_Source_Navigation(self.arena_center, 100, 1300, 500, self.radius, self.radius * 1.1);
	/#
		Assert(queryResult.data.size > 0);
	#/
	pointList = Array::randomize(queryResult.data);
	foreach(point in pointList)
	{
		distanceToTargetSqr = Distance2DSquared(point.origin, self.origin);
		if(distanceLimitMin * distanceLimitMin < distanceToTargetSqr && distanceToTargetSqr < distanceLimitMax * distanceLimitMax && !too_close_to_high_ground(point.origin, minDistAwayFromHighGround))
		{
			return point.origin;
		}
	}
	return self.arena_center;
}

/*
	Name: stopMovementAndSetBrake
	Namespace: siegebot_theia
	Checksum: 0x974CF2F1
	Offset: 0x6C00
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function stopMovementAndSetBrake()
{
	self notify("end_movement_thread");
	self notify("near_goal");
	self CancelAIMove();
	self ClearVehGoalPos();
	self ClearTurretTarget();
	self ClearLookAtEnt();
	self SetBrake(1);
}

/*
	Name: face_target
	Namespace: siegebot_theia
	Checksum: 0x909541DB
	Offset: 0x6CA0
	Size: 0x243
	Parameters: 2
	Flags: None
*/
function face_target(position, targetAngleDiff)
{
	if(!isdefined(targetAngleDiff))
	{
		targetAngleDiff = 30;
	}
	v_to_enemy = (position - self.origin[0], position - self.origin[1], 0);
	v_to_enemy = VectorNormalize(v_to_enemy);
	goalAngles = VectorToAngles(v_to_enemy);
	angleDiff = AbsAngleClamp180(self.angles[1] - goalAngles[1]);
	if(angleDiff <= targetAngleDiff)
	{
		return;
	}
	self SetLookAtOrigin(position);
	self SetTurretTargetVec(position);
	self locomotion_start();
	angleAdjustingStart = GetTime();
	while(angleDiff > targetAngleDiff && vehicle_ai::TimeSince(angleAdjustingStart) < 4)
	{
		if(0)
		{
			/#
				line(self.origin, position, (1, 0, 1), 1, 0, 5);
			#/
		}
		angleDiff = AbsAngleClamp180(self.angles[1] - goalAngles[1]);
		wait(0.05);
	}
	self ClearVehGoalPos();
	self ClearLookAtEnt();
	self ClearTurretTarget();
	self CancelAIMove();
}

/*
	Name: theia_callback_damage
	Namespace: siegebot_theia
	Checksum: 0x1E60FC95
	Offset: 0x6EF0
	Size: 0x26F
	Parameters: 13
	Flags: None
*/
function theia_callback_damage(eInflictor, eAttacker, iDamage, iDFlags, sMeansOfDeath, weapon, vPoint, vDir, sHitLoc, psOffsetTime, damageFromUnderneath, modelIndex, partName)
{
	if(!isPlayer(eAttacker))
	{
		iDamage = 0;
		return iDamage;
	}
	num_players = GetPlayers().size;
	var_64d030a4 = 1 / num_players;
	iDamage = iDamage * var_64d030a4;
	if(sMeansOfDeath !== "MOD_UNKNOWN" && iDamage > self.healthdefault * 8 * 0.01)
	{
		iDamage = self.healthdefault * 8 * 0.01;
	}
	newDamageLevel = vehicle::should_update_damage_fx_level(self.health, iDamage, self.healthdefault);
	if(newDamageLevel > self.damageLevel)
	{
		self.newDamageLevel = newDamageLevel;
	}
	if(self.newDamageLevel > self.damageLevel && pain_canenter())
	{
		self.damageLevel = self.newDamageLevel;
		self notify("pain");
		vehicle::set_damage_fx_level(self.damageLevel);
		if(self.damageLevel >= 2)
		{
			self vehicle::toggle_lights_group(1, 0);
		}
	}
	if(isdefined(eAttacker) && isPlayer(eAttacker))
	{
		add_player_threat_damage(eAttacker, iDamage);
		if(iDamage > 500)
		{
			add_player_threat_boost(eAttacker, 1000, 4);
		}
	}
	return iDamage;
}

/*
	Name: attack_javelin
	Namespace: siegebot_theia
	Checksum: 0x7D35CDAA
	Offset: 0x7168
	Size: 0x30B
	Parameters: 0
	Flags: None
*/
function attack_javelin()
{
	if(level.players.size < 1)
	{
		return;
	}
	enemy = Array::random(level.players);
	if(!isdefined(enemy))
	{
		return;
	}
	FORWARD = AnglesToForward(self.angles);
	shootpos = self.origin + FORWARD * 200 + VectorScale((0, 0, 1), 500);
	self ASMRequestSubstate("javelin@stationary");
	self waittill("fire_javelin");
	level notify("theia_preparing_javelin_attack", enemy);
	current_weapon = self SeatGetWeapon(0);
	weapon = GetWeapon("siegebot_javelin_turret");
	self thread javeline_incoming(weapon);
	self SetVehWeapon(weapon);
	self thread vehicle_ai::Javelin_LoseTargetAtRightTime(enemy);
	self FireWeapon(0, enemy);
	self vehicle_ai::waittill_asm_complete("javelin@stationary", 3);
	self SetVehWeapon(current_weapon);
	shootpos = self.origin + FORWARD * 500;
	self SetTurretTargetVec(shootpos);
	self util::waittill_any_timeout(2, "turret_on_target");
	self ClearTurretTarget();
	if(isdefined(enemy) && !self VehCanSee(enemy))
	{
		FORWARD = AnglesToForward(self.angles);
		aimpos = self.origin + FORWARD * 1000;
		self SetTurretTargetVec(aimpos);
		msg = self util::waittill_any_timeout(3, "turret_on_target");
		self ClearTurretTarget();
	}
	self locomotion_start();
}

/*
	Name: javeline_incoming
	Namespace: siegebot_theia
	Checksum: 0x151A4ECC
	Offset: 0x7480
	Size: 0x123
	Parameters: 1
	Flags: None
*/
function javeline_incoming(projectile)
{
	self endon("entityshutdown");
	self endon("death");
	self waittill("weapon_fired", projectile);
	Distance = 1400;
	alias = "prj_javelin_incoming";
	wait(3);
	if(!isdefined(projectile))
	{
		return;
	}
	while(isdefined(projectile) && isdefined(projectile.origin))
	{
		if(isdefined(self.enemy) && isdefined(self.enemy.origin))
		{
			projectileDistance = DistanceSquared(projectile.origin, self.enemy.origin);
			if(projectileDistance <= Distance * Distance)
			{
				projectile playsound(alias);
				return;
			}
		}
		wait(0.05);
	}
}

/*
	Name: init_fake_targets
	Namespace: siegebot_theia
	Checksum: 0x9BD1F696
	Offset: 0x75B0
	Size: 0x13B
	Parameters: 0
	Flags: None
*/
function init_fake_targets()
{
	count = 6;
	if(!isdefined(self.spikeFakeTargets) || self.spikeFakeTargets.size < 1)
	{
		self.spikeFakeTargets = [];
		for(i = 0; i < count; i++)
		{
			newFakeTarget = spawn("script_origin", self.origin);
			if(!isdefined(self.spikeFakeTargets))
			{
				self.spikeFakeTargets = [];
			}
			else if(!IsArray(self.spikeFakeTargets))
			{
				self.spikeFakeTargets = Array(self.spikeFakeTargets);
			}
			self.spikeFakeTargets[self.spikeFakeTargets.size] = newFakeTarget;
		}
	}
	else if(!isdefined(self.fakeTargetEnt))
	{
		self.fakeTargetEnt = spawn("script_origin", self.origin);
	}
}

/*
	Name: pin_to_ground
	Namespace: siegebot_theia
	Checksum: 0xAF870C4
	Offset: 0x76F8
	Size: 0xA7
	Parameters: 0
	Flags: None
*/
function pin_to_ground()
{
	trace = bullettrace(self.origin, self.origin + VectorScale((0, 0, -1), 800), 0, self);
	if(trace["fraction"] < 1)
	{
		self.origin = trace["position"] + VectorScale((0, 0, -1), 20);
	}
	else
	{
		self.origin = self.origin + VectorScale((0, 0, -1), 500);
	}
}

/*
	Name: pin_spike_to_ground
	Namespace: siegebot_theia
	Checksum: 0x5527B0EF
	Offset: 0x77A8
	Size: 0x1B9
	Parameters: 0
	Flags: None
*/
function pin_spike_to_ground()
{
	self endon("death");
	wait(0.1);
	spikeTargets = Array::randomize(self.spikeFakeTargets);
	foreach(target in spikeTargets)
	{
		target pin_to_ground();
		wait(RandomFloatRange(0.05, 0.1));
	}
	if(0)
	{
		foreach(spike in spikeTargets)
		{
			/#
				debugstar(spike.origin, 200, (1, 0, 0));
			#/
			/#
				circle(spike.origin, 150, (1, 0, 0), 0, 1, 200);
			#/
		}
	}
}

/*
	Name: spike_score
	Namespace: siegebot_theia
	Checksum: 0x5B6F7FC6
	Offset: 0x7970
	Size: 0x97
	Parameters: 1
	Flags: None
*/
function spike_score(target)
{
	score = 1;
	if(target IsNoTarget())
	{
		score = 0.2;
	}
	else if(!target.allowdeath)
	{
		score = 0.4;
	}
	else if(IsAirBorne(target))
	{
		score = 0.2;
	}
	return score;
}

/*
	Name: spike_group_score
	Namespace: siegebot_theia
	Checksum: 0x4C0CA284
	Offset: 0x7A10
	Size: 0x11B
	Parameters: 3
	Flags: None
*/
function spike_group_score(target, targetList, radius)
{
	closeTargetScore = spike_score(target);
	foreach(otherTarget in targetList)
	{
		closeEnough = Distance2DSquared(target.origin, otherTarget.origin) < radius * radius;
		if(closeEnough)
		{
			closeTargetScore = closeTargetScore + spike_score(otherTarget);
		}
	}
	return closeTargetScore;
}

/*
	Name: attack_spike_minefield
	Namespace: siegebot_theia
	Checksum: 0xCA67099F
	Offset: 0x7B38
	Size: 0x5CB
	Parameters: 0
	Flags: None
*/
function attack_spike_minefield()
{
	spikeCoverRadius = 600;
	randomScale = 40;
	init_fake_targets();
	FORWARD = AnglesToForward(self.angles);
	self SetTurretTargetVec(self.origin + FORWARD * 1000);
	self util::waittill_any_timeout(2, "turret_on_target");
	FORWARD = AnglesToForward(self.angles);
	targets = GetAITeamArray("allies");
	targets = ArrayCombine(targets, level.players, 0, 0);
	bestCloseScore = 0;
	bestTarget = undefined;
	foreach(target in targets)
	{
		if(target IsNoTarget() || IsAirBorne(target))
		{
			continue;
		}
		distanceSelfToTargetSqr = Distance2DSquared(target.origin, self.origin);
		if(distanceSelfToTargetSqr < 500 * 500 || distanceSelfToTargetSqr > 2100 * 2100)
		{
			continue;
		}
		dirToTarget = (target.origin - self.origin[0], target.origin - self.origin[1], 0);
		if(VectorDot(dirToTarget, FORWARD) < 0.1)
		{
			continue;
		}
		closeTargetScore = spike_group_score(target, targets, spikeCoverRadius);
		if(bestCloseScore <= closeTargetScore)
		{
			bestCloseScore = closeTargetScore;
			bestTarget = target;
		}
	}
	if(!isdefined(bestTarget))
	{
		bestTarget = Array::random(GeneratePointsAroundCenter(self.arena_center, 2000, 200));
	}
	else
	{
		bestTarget = bestTarget.origin;
	}
	if(0)
	{
		/#
			debugstar(bestTarget, 200, (1, 0, 0));
		#/
		/#
			circle(bestTarget, spikeCoverRadius, (1, 0, 0), 0, 1, 200);
		#/
	}
	level notify("theia_preparing_spike_attack", bestTarget);
	targetOrigin = (bestTarget[0], bestTarget[1], 0) + (0, 0, self.origin[2]);
	targetPoints = GeneratePointsAroundCenter(targetOrigin, 1200, 120);
	numOfSpikeAssigned = 0;
	for(i = 0; i < self.spikeFakeTargets.size && i < targetPoints.size; i++)
	{
		spike = self.spikeFakeTargets[i];
		spike.origin = targetPoints[i];
		numOfSpikeAssigned++;
	}
	self ASMRequestSubstate("arm_rocket@stationary");
	self waittill("fire_spikes");
	for(i = 0; i < numOfSpikeAssigned; i++)
	{
		spike = self.spikeFakeTargets[i];
		self setGunnerTargetEnt(spike, (0, 0, 0), 1);
		self FireWeapon(2);
		wait(0.05);
	}
	self thread pin_spike_to_ground();
	self cleargunnertarget(1);
	self ClearTurretTarget();
	self vehicle_ai::waittill_asm_complete("arm_rocket@stationary", 3);
	self locomotion_start();
}

/*
	Name: Delay_Target_ToEnemy_Thread
	Namespace: siegebot_theia
	Checksum: 0x2207F9D7
	Offset: 0x8110
	Size: 0x1E3
	Parameters: 3
	Flags: None
*/
function Delay_Target_ToEnemy_Thread(point, enemy, timeToHit)
{
	offset = VectorScale((0, 0, 1), 10);
	self.fakeTargetEnt Unlink();
	if(DistanceSquared(self.fakeTargetEnt.origin, enemy.origin) > 20 * 20)
	{
		self.fakeTargetEnt.origin = point;
		self vehicle_ai::SetTurretTarget(self.fakeTargetEnt, 1);
		self util::waittill_any_timeout(2, "turret_on_target");
		timeStart = GetTime();
		while(GetTime() < timeStart + timeToHit * 1000)
		{
			self.fakeTargetEnt.origin = LerpVector(point, enemy.origin + offset, GetTime() - timeStart / timeToHit * 1000);
			if(0)
			{
				/#
					debugstar(self.fakeTargetEnt.origin, 100, (0, 1, 0));
				#/
			}
			wait(0.05);
		}
	}
	self.fakeTargetEnt.origin = enemy.origin + offset;
	wait(0.05);
	self.fakeTargetEnt LinkTo(enemy);
}

/*
	Name: is_valid_target
	Namespace: siegebot_theia
	Checksum: 0x8D4CFEE3
	Offset: 0x8300
	Size: 0xD7
	Parameters: 1
	Flags: None
*/
function is_valid_target(target)
{
	if(isdefined(target.ignoreme) && target.ignoreme || target.health <= 0)
	{
		return 0;
	}
	else if(isPlayer(target) && target laststand::player_is_in_laststand())
	{
		return 0;
	}
	else if(IsSentient(target) && (target IsNoTarget() || !isalive(target)))
	{
		return 0;
	}
	return 1;
}

/*
	Name: get_enemy
	Namespace: siegebot_theia
	Checksum: 0x57D63CBB
	Offset: 0x83E0
	Size: 0x1AF
	Parameters: 0
	Flags: None
*/
function get_enemy()
{
	if(isdefined(self.enemy) && is_valid_target(self.enemy))
	{
		return self.enemy;
	}
	targets = GetAITeamArray("allies");
	targets = ArrayCombine(targets, level.players, 0, 0);
	validTargets = [];
	foreach(target in targets)
	{
		if(is_valid_target(target))
		{
			if(!isdefined(validTargets))
			{
				validTargets = [];
			}
			else if(!IsArray(validTargets))
			{
				validTargets = Array(validTargets);
			}
			validTargets[validTargets.size] = target;
		}
	}
	targets = Array::merge_sort(validTargets, &_sort_by_distance2d, self.origin);
	return targets[0];
}

/*
	Name: attack_minigun_sweep
	Namespace: siegebot_theia
	Checksum: 0x5CC4774D
	Offset: 0x8598
	Size: 0x4CB
	Parameters: 0
	Flags: None
*/
function attack_minigun_sweep()
{
	duration = 4;
	interval = 1;
	self.turretRotScale = 0.4;
	self ClearTurretTarget();
	self cleargunnertarget(1);
	self SetTurretTargetRelativeAngles((0, 0, 0), 0);
	self SetTurretTargetRelativeAngles((0, 0, 0), 1);
	self ASMRequestSubstate("sweep@gun");
	self waittill("barrelspin_start");
	self clientfield::set("sarah_minigun_spin", 1);
	self SetTurretSpinning(1);
	self waittill("barrelspin_loop");
	enemy = get_enemy();
	vectorFromEnemy = VectorNormalize((self.origin - enemy.origin[0], self.origin - enemy.origin[1], 0));
	position = enemy.origin + vectorFromEnemy * 500;
	stopTime = GetTime() + duration * 1000;
	self thread vehicle_ai::fire_for_time(duration * 2, 1);
	while(GetTime() < stopTime)
	{
		enemy = get_enemy();
		v_gunner_barrel1 = self GetTagOrigin("tag_gunner_flash1");
		v_bullet_trace_end = enemy.origin + VectorScale((0, 0, 1), 30);
		trace = bullettrace(v_gunner_barrel1, v_bullet_trace_end, 1, enemy);
		if(trace["fraction"] == 1)
		{
			self GetPerfectInfo(enemy, 1);
		}
		else if(!isPlayer(enemy))
		{
			self SetPersonalThreatBias(enemy, -2000, 3);
		}
		if(!enemy.allowdeath && !isPlayer(enemy))
		{
			self SetPersonalThreatBias(enemy, -900, 8);
		}
		self vehicle_ai::SetTurretTarget(enemy, 0);
		if(isPlayer(enemy))
		{
			vectorFromEnemy = VectorNormalize((self.origin - enemy.origin[0], self.origin - enemy.origin[1], 0));
			self Delay_Target_ToEnemy_Thread(enemy.origin + vectorFromEnemy * 500, enemy, 0.7);
		}
		else
		{
			self vehicle_ai::SetTurretTarget(enemy, 1);
		}
		self util::waittill_any_timeout(interval, "enemy");
	}
	self SetTurretSpinning(0);
	self notify("fire_stop");
	self locomotion_start();
	self waittill("barrelspin_end");
	self clientfield::set("sarah_minigun_spin", 0);
	self.turretRotScale = 1;
	wait(0.2);
}

