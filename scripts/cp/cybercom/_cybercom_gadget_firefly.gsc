#using scripts\codescripts\struct;
#using scripts\cp\_achievements;
#using scripts\cp\cybercom\_cybercom;
#using scripts\cp\cybercom\_cybercom_gadget;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\shared\abilities\_ability_player;
#using scripts\shared\abilities\_ability_util;
#using scripts\shared\animation_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\math_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\statemachine_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\vehicle_shared;

#namespace namespace_3ed98204;

/*
	Name: init
	Namespace: namespace_3ed98204
	Checksum: 0xD697869
	Offset: 0x8B0
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function init()
{
	clientfield::register("vehicle", "firefly_state", 1, 4, "int");
	clientfield::register("actor", "firefly_state", 1, 4, "int");
	scene::add_scene_func("p7_fxanim_gp_ability_firefly_launch_bundle", &function_1e89505d, "play");
	scene::add_scene_func("p7_fxanim_gp_ability_firebug_launch_bundle", &function_1e89505d, "play");
}

/*
	Name: main
	Namespace: namespace_3ed98204
	Checksum: 0xF97F2A90
	Offset: 0x980
	Size: 0x183
	Parameters: 0
	Flags: None
*/
function main()
{
	namespace_d00ec32::function_36b56038(2, 8, 1);
	level.cybercom.firefly_swarm = spawnstruct();
	level.cybercom.firefly_swarm._is_flickering = &_is_flickering;
	level.cybercom.firefly_swarm._on_flicker = &_on_flicker;
	level.cybercom.firefly_swarm._on_give = &_on_give;
	level.cybercom.firefly_swarm._on_take = &_on_take;
	level.cybercom.firefly_swarm._on_connect = &_on_connect;
	level.cybercom.firefly_swarm._on = &_on;
	level.cybercom.firefly_swarm._off = &_off;
	level.cybercom.firefly_swarm._is_primed = &_is_primed;
}

/*
	Name: _is_flickering
	Namespace: namespace_3ed98204
	Checksum: 0xADC32B30
	Offset: 0xB10
	Size: 0xB
	Parameters: 1
	Flags: None
*/
function _is_flickering(slot)
{
}

/*
	Name: _on_flicker
	Namespace: namespace_3ed98204
	Checksum: 0x5F7CE284
	Offset: 0xB28
	Size: 0x13
	Parameters: 2
	Flags: None
*/
function _on_flicker(slot, weapon)
{
}

/*
	Name: _on_give
	Namespace: namespace_3ed98204
	Checksum: 0xD8EA36DE
	Offset: 0xB48
	Size: 0xCB
	Parameters: 2
	Flags: None
*/
function _on_give(slot, weapon)
{
	self.cybercom.var_9d8e0758 = &_get_valid_targets;
	self.cybercom.var_c40accd3 = &function_602b28e9;
	self thread cybercom::function_b5f4e597(weapon);
	self cybercom::function_8257bcb3("base_rifle", 2);
	self cybercom::function_8257bcb3("fem_rifle", 2);
	self cybercom::function_8257bcb3("riotshield", 2);
}

/*
	Name: _on_take
	Namespace: namespace_3ed98204
	Checksum: 0xAFACF266
	Offset: 0xC20
	Size: 0x13
	Parameters: 2
	Flags: None
*/
function _on_take(slot, weapon)
{
}

/*
	Name: _on_connect
	Namespace: namespace_3ed98204
	Checksum: 0x99EC1590
	Offset: 0xC40
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function _on_connect()
{
}

/*
	Name: _on
	Namespace: namespace_3ed98204
	Checksum: 0x2F1D4256
	Offset: 0xC50
	Size: 0xF3
	Parameters: 2
	Flags: None
*/
function _on(slot, weapon)
{
	cybercom::function_adc40f11(weapon, 1);
	self thread function_519bddcd(self function_1a9006bd("cybercom_fireflyswarm") == 2);
	self notify("bhtn_action_notify", "firefly_deploy");
	if(isPlayer(self))
	{
		itemIndex = GetItemIndexFromRef("cybercom_fireflyswarm");
		if(isdefined(itemIndex))
		{
			self AddDStat("ItemStats", itemIndex, "stats", "used", "statValue", 1);
		}
	}
}

/*
	Name: _off
	Namespace: namespace_3ed98204
	Checksum: 0xC9F26572
	Offset: 0xD50
	Size: 0x13
	Parameters: 2
	Flags: None
*/
function _off(slot, weapon)
{
}

/*
	Name: _is_primed
	Namespace: namespace_3ed98204
	Checksum: 0x36B4B19
	Offset: 0xD70
	Size: 0x13
	Parameters: 2
	Flags: None
*/
function _is_primed(slot, weapon)
{
}

/*
	Name: function_2cba8648
	Namespace: namespace_3ed98204
	Checksum: 0x6E6BEBCE
	Offset: 0xD90
	Size: 0x2DB
	Parameters: 3
	Flags: None
*/
function function_2cba8648(target, var_9bc2efcb, upgraded)
{
	if(!isdefined(var_9bc2efcb))
	{
		var_9bc2efcb = 1;
	}
	if(!isdefined(upgraded))
	{
		upgraded = 1;
	}
	self endon("death");
	if(self.archetype != "human")
	{
		return;
	}
	if(isdefined(var_9bc2efcb) && var_9bc2efcb)
	{
		type = self cybercom::function_5e3d3aa();
		self OrientMode("face default");
		self AnimScripted("ai_cybercom_anim", self.origin, self.angles, "ai_base_rifle_" + type + "_exposed_cybercom_activate");
		self playsound("gdt_firefly_activate_npc");
		self waittillmatch("hash_39fa7e38");
	}
	if(IsArray(target))
	{
		foreach(guy in target)
		{
			if(!isdefined(guy))
			{
				continue;
			}
			if(isdefined(guy.archetype) && (guy.archetype == "human" || guy.archetype == "human_riotshield" || guy.archetype == "zombie"))
			{
				self thread function_519bddcd(upgraded, guy, 1);
			}
		}
	}
	else if(isdefined(target))
	{
		if(isdefined(target.archetype) && (target.archetype == "human" || target.archetype == "human_riotshield" || target.archetype == "zombie"))
		{
			self thread function_519bddcd(upgraded, target);
		}
	}
}

/*
	Name: function_1e89505d
	Namespace: namespace_3ed98204
	Checksum: 0xF5D479F6
	Offset: 0x1078
	Size: 0x11B
	Parameters: 1
	Flags: None
*/
function function_1e89505d(a_ents)
{
	anim_model = a_ents["ability_firefly_launch"];
	anim_model waittill("hash_9571598b");
	if(isdefined(anim_model))
	{
		origin = anim_model GetTagOrigin("tag_fx_01_end_jnt");
		angles = anim_model GetTagAngles("tag_fx_01_end_jnt");
		anim_model delete();
	}
	if(isdefined(self.owner))
	{
		if(!isdefined(origin))
		{
			origin = self.owner.origin + VectorScale((0, 0, 1), 72);
		}
		if(!isdefined(angles))
		{
			angles = self.owner.angles;
		}
		self.owner notify("hash_74e27b96", origin, angles);
	}
}

/*
	Name: InitThreatBias
	Namespace: namespace_3ed98204
	Checksum: 0x71A2327F
	Offset: 0x11A0
	Size: 0xD1
	Parameters: 0
	Flags: None
*/
function InitThreatBias()
{
	aiArray = GetAIArray();
	foreach(ai in aiArray)
	{
		if(ai === self)
		{
			continue;
		}
		if(ai.ignoreFireFly === 1)
		{
			ai function_cceed911(self);
		}
	}
}

/*
	Name: function_519bddcd
	Namespace: namespace_3ed98204
	Checksum: 0xFA7BC0BE
	Offset: 0x1280
	Size: 0x967
	Parameters: 4
	Flags: None
*/
function function_519bddcd(upgraded, targetEnt, swarms, var_b6dd531c)
{
	if(!isdefined(swarms))
	{
		swarms = GetDvarInt("scr_firefly_swarm_count", 3);
	}
	if(!isdefined(var_b6dd531c))
	{
		var_b6dd531c = GetDvarInt("scr_firefly_swarm_split_count", 0);
	}
	self endon("death");
	lifetime = GetDvarInt("scr_firefly_swarm_lifetime", 14);
	var_3691675 = var_b6dd531c;
	var_c1ee81b = 0;
	var_8cdffe04 = 0;
	var_4f33000c = [];
	if(isdefined(targetEnt) && (isdefined(targetEnt.is_disabled) && targetEnt.is_disabled))
	{
		targetEnt = undefined;
	}
	if(!isVehicle(self))
	{
		var_171f5aa7 = spawnstruct();
		var_171f5aa7.owner = self;
		if(isPlayer(self))
		{
			origin = self GetEye();
			angles = self getPlayerAngles();
		}
		else
		{
			origin = self GetTagOrigin("tag_eye");
			angles = self GetTagAngles("tag_eye");
		}
		frontGoal = origin + AnglesToForward(angles) * 100;
		trace = bullettrace(origin, frontGoal, 0, undefined);
		if(trace["fraction"] == 1)
		{
			var_171f5aa7.origin = origin;
			var_171f5aa7.angles = angles;
			if(upgraded)
			{
				if(SessionModeIsCampaignZombiesGame() && function_143fc4a5())
				{
				}
				else
				{
					var_171f5aa7 thread scene::Play("p7_fxanim_gp_ability_firebug_launch_bundle");
					self waittill("hash_74e27b96", origin, angles);
				}
			}
			else if(SessionModeIsCampaignZombiesGame() && function_143fc4a5())
			{
			}
			else
			{
				var_171f5aa7 thread scene::Play("p7_fxanim_gp_ability_firefly_launch_bundle");
				self waittill("hash_74e27b96", origin, angles);
			}
		}
		else
		{
			origin = self.origin + VectorScale((0, 0, 1), 72);
			angles = self.angles;
		}
		if(upgraded)
		{
			lifetime = GetDvarInt("scr_firefly_swarm_upgraded_lifetime", 14);
			var_8cdffe04 = GetDvarInt("scr_firefly_swarm_firebug_count", 1);
		}
		lifetime = lifetime * 1000;
		var_e0d7f279 = GetTime() + lifetime;
		var_4f33000c = self function_cd0239e5(self.origin, self.angles);
		continue;
	}
	var_e0d7f279 = self.lifetime;
	swarms = 1;
	var_3691675 = 0;
	var_c1ee81b = 1;
	if(isdefined(self.fireBugCount))
	{
	}
	else
	{
	}
	var_8cdffe04 = 0;
	origin = self.origin;
	angles = self.angles;
	while(swarms)
	{
		swarm = SpawnVehicle("spawner_bo3_cybercom_firefly", origin, angles, "firefly_swarm");
		swarms--;
		if(isdefined(swarm))
		{
			if(SessionModeIsCampaignZombiesGame())
			{
				swarm SetIgnorePauseWorld(1);
			}
			swarm.threatbias = -300;
			if(!isdefined(targetEnt))
			{
				if(var_4f33000c.size)
				{
					targetEnt = cybercom::getClosestTo(swarm.origin, var_4f33000c);
					ArrayRemoveValue(var_4f33000c, targetEnt, 0);
				}
			}
			swarm.swarm_ID = level.cybercom.var_f9269224;
			swarm.owner = self;
			swarm.team = self.team;
			swarm.lifetime = var_e0d7f279;
			swarm.var_3691675 = var_3691675;
			swarm.targetEnt = targetEnt;
			swarm.isOffspring = var_c1ee81b;
			swarm.fireBugCount = var_8cdffe04;
			swarm.var_fb7ac308 = 1;
			swarm.debug = spawnstruct();
			swarm.debug.main = 0;
			swarm.debug.attack = 0;
			swarm.debug.hunt = 0;
			swarm.debug.move = 0;
			swarm.debug.dead = 0;
			swarm InitThreatBias();
			swarm.state_machine = statemachine::create("brain", swarm, "swarm_change_state");
			swarm.state_machine statemachine::add_state("init", &swarm_state_enter, &swarm_init, &swarm_state_cleanup);
			swarm.state_machine statemachine::add_state("main", &swarm_state_enter, &function_4a163234, &swarm_state_cleanup);
			swarm.state_machine statemachine::add_state("move", &swarm_state_enter, &function_cf23fec8, &swarm_state_cleanup);
			swarm.state_machine statemachine::add_state("attack", &swarm_state_enter, &swarm_attack_think, &swarm_state_cleanup);
			swarm.state_machine statemachine::add_state("hunt", &swarm_state_enter, &function_a3deb004, &swarm_state_cleanup);
			swarm.state_machine statemachine::add_state("dead", &swarm_state_enter, &function_b7b30921, &swarm_state_cleanup);
			swarm.state_machine statemachine::set_state("init");
			targetEnt = undefined;
		}
		level notify("hash_61df3d1c", swarm, self.fireBugCount);
		level.cybercom.var_f9269224 = level.cybercom.var_f9269224 + 1;
		level.cybercom.var_12f85dec++;
	}
}

/*
	Name: function_54bc061f
	Namespace: namespace_3ed98204
	Checksum: 0x154F396E
	Offset: 0x1BF0
	Size: 0xE7
	Parameters: 0
	Flags: None
*/
function function_54bc061f()
{
	self endon("death");
	wait(0.1);
	for(;;)
	{
		self SetSpeed(self.settings.defaultMoveSpeed);
		self.current_pathto_pos = GetNextMovePosition_tactical();
		if(isdefined(self.current_pathto_pos))
		{
			usePathfinding = 1;
			if(self.isOnNav === 0)
			{
				usePathfinding = 0;
			}
			if(self SetVehGoalPos(self.current_pathto_pos, 1, usePathfinding))
			{
				self thread path_update_interrupt();
				self vehicle_ai::waittill_pathing_done();
			}
		}
		wait(0.5);
	}
}

/*
	Name: path_update_interrupt
	Namespace: namespace_3ed98204
	Checksum: 0x70CC82BA
	Offset: 0x1CE0
	Size: 0x9F
	Parameters: 0
	Flags: None
*/
function path_update_interrupt()
{
	self endon("death");
	self endon("near_goal");
	self endon("reached_end_node");
	wait(1);
	while(1)
	{
		if(isdefined(self.current_pathto_pos))
		{
			if(Distance2DSquared(self.current_pathto_pos, self.goalpos) > self.goalRadius * self.goalRadius)
			{
				wait(0.2);
				self notify("near_goal");
			}
		}
		wait(0.2);
	}
}

/*
	Name: GetNextMovePosition_tactical
	Namespace: namespace_3ed98204
	Checksum: 0x104AC3E7
	Offset: 0x1D88
	Size: 0x315
	Parameters: 0
	Flags: None
*/
function GetNextMovePosition_tactical()
{
	if(self.goalforced)
	{
		goalpos = self GetClosestPointOnNavVolume(self.goalpos, 100);
		if(isdefined(goalpos))
		{
			if(DistanceSquared(goalpos, self.goalpos) > 50 * 50)
			{
				self.isOnNav = 0;
			}
			return goalpos;
		}
		return self.goalpos;
	}
	queryMultiplier = 1;
	queryResult = PositionQuery_Source_Navigation(self.origin, 80, 500 * queryMultiplier, 500, 3 * self.radius * queryMultiplier, self, self.radius * queryMultiplier);
	PositionQuery_Filter_DistanceToGoal(queryResult, self);
	vehicle_ai::PositionQuery_Filter_OutOfGoalAnchor(queryResult);
	self.isOnNav = queryResult.centerOnNav;
	best_point = undefined;
	best_score = -999999;
	foreach(point in queryResult.data)
	{
		randomScore = RandomFloatRange(0, 100);
		distToOriginScore = point.distToOrigin2D * 0.2;
		point.score = point.score + randomScore + distToOriginScore;
		/#
			if(!isdefined(point._scoreDebug))
			{
				point._scoreDebug = [];
			}
			point._scoreDebug["Dev Block strings are not supported"] = distToOriginScore;
		#/
		point.score = point.score + distToOriginScore;
		if(point.score > best_score)
		{
			best_score = point.score;
			best_point = point;
		}
	}
	self vehicle_ai::PositionQuery_DebugScores(queryResult);
	if(!isdefined(best_point))
	{
		return undefined;
	}
	return best_point.origin;
}

/*
	Name: swarm_state_cleanup
	Namespace: namespace_3ed98204
	Checksum: 0xF691E8F5
	Offset: 0x20A8
	Size: 0x45
	Parameters: 1
	Flags: None
*/
function swarm_state_cleanup(params)
{
	if(isdefined(self.badplace))
	{
		badplace_delete("swarmBP_" + self.swarm_ID);
		self.badplace = undefined;
	}
}

/*
	Name: swarm_state_enter
	Namespace: namespace_3ed98204
	Checksum: 0x7C4ABDD6
	Offset: 0x20F8
	Size: 0x13
	Parameters: 1
	Flags: None
*/
function swarm_state_enter(params)
{
	wait(0.05);
}

/*
	Name: getEnemyTeam
	Namespace: namespace_3ed98204
	Checksum: 0xC9FC7B5D
	Offset: 0x2118
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function getEnemyTeam()
{
	if(self.team === "axis")
	{
		return "allies";
	}
	else
	{
		return "axis";
	}
}

/*
	Name: swarm_init
	Namespace: namespace_3ed98204
	Checksum: 0xE27D6667
	Offset: 0x2150
	Size: 0x633
	Parameters: 1
	Flags: None
*/
function swarm_init(params)
{
	self SetModel("tag_origin");
	self notsolid();
	self.notsolid = 1;
	self.vehAirCraftCollisionEnabled = 0;
	self notify("end_nudge_collision");
	self.ignoreall = 1;
	self.takedamage = 0;
	self.goalRadius = 36;
	self.goalHeight = 36;
	self.good_melee_target = 1;
	self SetNearGoalNotifyDist(48);
	self.settings = struct::get_script_bundle("vehiclecustomsettings", self.scriptbundlesettings);
	if(GetDvarInt("scr_firefly_swarm_debug", 0))
	{
		self thread cybercom::drawOriginForever();
	}
	self thread swarm_death_wait();
	self thread swarm_split_monitor();
	self ClearForcedGoal();
	self SetGoal(self.origin, 1, self.goalRadius);
	if(!IsPointInNavvolume(self.origin, "navvolume_small"))
	{
		if(isdefined(self.owner))
		{
			var_74b53775 = self.owner GetEye();
		}
		else
		{
			var_74b53775 = self.origin;
		}
		pointOnNavVolume = self GetClosestPointOnNavVolume(var_74b53775, 100);
		if(isdefined(pointOnNavVolume))
		{
			if(!self.fireBugCount)
			{
				self clientfield::set("firefly_state", 2);
			}
			else
			{
				self clientfield::set("firefly_state", 7);
			}
			self SetVehGoalPos(pointOnNavVolume, 1, 0);
			self util::waittill_any_timeout(2, "near_goal");
		}
	}
	self thread function_54bc061f();
	if(!(isdefined(self.isOffspring) && self.isOffspring))
	{
		enemies = self _get_valid_targets();
		closeTargets = ArraySortClosest(enemies, self.origin, enemies.size, 0, 512);
		if(closeTargets.size == 0)
		{
			angles = (self.angles[0], self.angles[1], 0);
			frontGoal = self.origin + AnglesToForward(angles) * 240;
			a_trace = bullettrace(self.origin, frontGoal, 0, undefined, 1);
			hitp = a_trace["position"];
			queryResult = PositionQuery_Source_Navigation(hitp, 0, 72, 72, 20, self);
			if(queryResult.data.size > 0)
			{
				pathSuccess = self FindPath(self.origin, queryResult.data[0].origin, 1, 0);
				if(pathSuccess)
				{
					if(GetDvarInt("scr_firefly_swarm_debug", 0))
					{
						level thread cybercom::debug_circle(queryResult.data[0].origin, 16, 10, (1, 0, 0));
					}
					self ClearForcedGoal();
					self SetGoal(queryResult.data[0].origin, 1, self.goalRadius);
					if(!self.fireBugCount)
					{
						self clientfield::set("firefly_state", 2);
					}
					else
					{
						self clientfield::set("firefly_state", 7);
					}
					self util::waittill_any_timeout(5, "near_goal");
				}
			}
		}
	}
	if(isdefined(self.targetEnt) && isalive(self.targetEnt))
	{
		self.targetEnt.swarm = self;
		self.state_machine statemachine::set_state("move");
	}
	else
	{
		self.state_machine statemachine::set_state("hunt");
	}
}

/*
	Name: swarm_split_monitor
	Namespace: namespace_3ed98204
	Checksum: 0x9631C0F9
	Offset: 0x2790
	Size: 0x9F
	Parameters: 0
	Flags: None
*/
function swarm_split_monitor()
{
	self endon("hash_c547a8e7");
	self endon("death");
	wait(3);
	while(self.var_3691675 > 0)
	{
		wait(0.5);
		var_98949c32 = self function_3ab9233(GetDvarInt("scr_firefly_swarm_split_radius", 864));
		if(isdefined(var_98949c32))
		{
			self thread function_519bddcd(0, var_98949c32);
			self.var_3691675--;
		}
	}
}

/*
	Name: function_ba872fe6
	Namespace: namespace_3ed98204
	Checksum: 0x27B62359
	Offset: 0x2838
	Size: 0x34F
	Parameters: 1
	Flags: None
*/
function function_ba872fe6(target)
{
	var_5b928902 = [];
	base = "base_rifle";
	if(isdefined(self.voicePrefix) && GetSubStr(self.voicePrefix, 7) == "f")
	{
		base = "fem_rifle";
	}
	else if(target.archetype === "human_riotshield")
	{
		base = "riotshield";
	}
	type = target cybercom::function_5e3d3aa();
	if(type == "")
	{
		target.swarm = undefined;
		self.targetEnt = undefined;
		target.var_86386274 = GetTime() + 1000;
		self.state_machine statemachine::set_state("main");
		return;
	}
	self thread function_45a6577f(target);
	self clientfield::set("firefly_state", 1);
	variant = self.owner cybercom::function_e06423b6(base);
	if(self.fireBugCount > 0)
	{
		self.fireBugCount--;
		var_5b928902["intro"] = "ai_" + base + "_" + type + "_exposed_swarm_upg_react_intro" + variant;
		target thread function_4c41b2f7(self, var_5b928902, GetWeapon("gadget_firefly_swarm_upgraded"));
		target notify("bhtn_action_notify", "fireflyAttack");
		target clientfield::set("firefly_state", 9);
	}
	else if(target.archetype === "human")
	{
		var_5b928902["intro"] = "ai_" + base + "_" + type + "_exposed_swarm_react_intro" + variant;
		var_5b928902["outro"] = "ai_" + base + "_" + type + "_exposed_swarm_react_outro" + variant;
	}
	else
	{
		var_5b928902 = [];
	}
	target clientfield::set("firefly_state", 4);
	target thread function_34de18ba(self, var_5b928902, GetWeapon("gadget_firefly_swarm"));
	target notify("bhtn_action_notify", "fireflyAttack");
	self waittill("hash_b07f7e73");
}

/*
	Name: function_6fb6c7d7
	Namespace: namespace_3ed98204
	Checksum: 0xCD248B28
	Offset: 0x2B90
	Size: 0x163
	Parameters: 1
	Flags: None
*/
function function_6fb6c7d7(target)
{
	/#
		Assert(isdefined(target));
	#/
	if(!self.fireBugCount)
	{
		target clientfield::set("firefly_state", 4);
	}
	else
	{
		target clientfield::set("firefly_state", 9);
	}
	if(self.fireBugCount > 0)
	{
		self.fireBugCount--;
		target clientfield::set("arch_actor_fire_fx", 1);
		target.health = 1;
	}
	wait(1);
	if(isdefined(target))
	{
		target.swarm = undefined;
	}
	wait(randomIntRange(3, 7));
	if(isdefined(target) && isalive(target))
	{
		target DoDamage(target.health, target.origin, undefined, undefined, "none", "MOD_BURNED");
	}
}

/*
	Name: function_cb5f9a2
	Namespace: namespace_3ed98204
	Checksum: 0xCBD5A040
	Offset: 0x2D00
	Size: 0x1EF
	Parameters: 1
	Flags: None
*/
function function_cb5f9a2(target)
{
	/#
		Assert(isdefined(target));
	#/
	if(!self.fireBugCount)
	{
		target clientfield::set("firefly_state", 4);
	}
	else
	{
		target clientfield::set("firefly_state", 9);
	}
	self thread function_45a6577f(target);
	self clientfield::set("firefly_state", 1);
	var_5b928902 = [];
	if(self.fireBugCount > 0 && target.health <= GetDvarInt("scr_firefly_swarm_warlord_hitpoint_allowed_thresh", 400))
	{
		self.fireBugCount--;
		target thread function_4c41b2f7(self, var_5b928902, GetWeapon("gadget_firefly_swarm_upgraded"));
		target notify("bhtn_action_notify", "fireflyAttack");
		target clientfield::set("firefly_state", 9);
	}
	else
	{
		target clientfield::set("firefly_state", 4);
		target thread function_34de18ba(self, var_5b928902, GetWeapon("gadget_firefly_swarm"));
		target notify("bhtn_action_notify", "fireflyAttack");
	}
	self waittill("hash_b07f7e73");
}

/*
	Name: function_eb96939e
	Namespace: namespace_3ed98204
	Checksum: 0x6169CE67
	Offset: 0x2EF8
	Size: 0xBB
	Parameters: 1
	Flags: None
*/
function function_eb96939e(target)
{
	self thread function_326c3df4(target);
	if(isdefined(self.owner))
	{
		attacker = self.owner;
	}
	else
	{
		attacker = self;
	}
	target DoDamage(GetDvarInt("scr_swarm_player_damage", 50), target.origin, attacker, self, "none", "MOD_UNKNOWN", 0, GetWeapon("gadget_firefly_swarm_upgraded"));
}

/*
	Name: swarm_attack_think
	Namespace: namespace_3ed98204
	Checksum: 0xF45241EF
	Offset: 0x2FC0
	Size: 0x39B
	Parameters: 1
	Flags: None
*/
function swarm_attack_think(params)
{
	self endon("hash_c547a8e7");
	self endon("death");
	self.debug.attack++;
	self clientfield::set("firefly_state", 1);
	target = self.targetEnt;
	if(!isdefined(target) || !isalive(target))
	{
		self.targetEnt = undefined;
		self.state_machine statemachine::set_state("main");
		return;
	}
	target notify("hash_f8c5dd60", GetWeapon("gadget_firefly_swarm"), self.owner);
	if(!self.fireBugCount)
	{
		target clientfield::set("firefly_state", 4);
	}
	else
	{
		target clientfield::set("firefly_state", 9);
	}
	if(isdefined(target.archetype))
	{
		if(target.archetype == "human" || target.archetype == "human_riotshield")
		{
			self SetGoal(self.targetEnt.origin + VectorScale((0, 0, 1), 48), 1, self.goalRadius);
			badplace_cylinder("swarmBP_" + self.swarm_ID, 0, target.origin, 256, 80, "axis");
			self.badplace = 1;
			self function_ba872fe6(target);
		}
		else if(target.archetype == "zombie")
		{
			self function_6fb6c7d7(target);
		}
		else if(target.archetype == "warlord")
		{
			self function_cb5f9a2(target);
		}
	}
	else if(isPlayer(target))
	{
		self SetGoal(self.targetEnt.origin + VectorScale((0, 0, 1), 48), 1, self.goalRadius);
		badplace_cylinder("swarmBP_" + self.swarm_ID, 0, target.origin, 256, 80, "axis");
		self.badplace = 1;
		self function_eb96939e(target);
	}
	self.targetEnt = undefined;
	self.state_machine statemachine::set_state("main");
	self.debug.attack--;
}

/*
	Name: function_45a6577f
	Namespace: namespace_3ed98204
	Checksum: 0xCCF3C95B
	Offset: 0x3368
	Size: 0x3D
	Parameters: 1
	Flags: None
*/
function function_45a6577f(target)
{
	self endon("death");
	self endon("hash_b07f7e73");
	target waittill("death");
	self notify("hash_b07f7e73");
}

/*
	Name: function_edd19e27
	Namespace: namespace_3ed98204
	Checksum: 0x96299D04
	Offset: 0x33B0
	Size: 0xB9
	Parameters: 3
	Flags: Private
*/
function private function_edd19e27(swarm, var_5b928902, weapon)
{
	self endon("death");
	if(isdefined(swarm))
	{
		self DoDamage(5, self.origin, swarm.owner, swarm, "none", "MOD_BURNED", 0, weapon, -1, 1);
	}
	if(!self cybercom::function_421746e0())
	{
		self waittillmatch("BHTN_ACTION_TERMINATE");
	}
	self notify("hash_2a24f27a", "specialpain");
}

/*
	Name: function_6fffd543
	Namespace: namespace_3ed98204
	Checksum: 0x6A605B37
	Offset: 0x3478
	Size: 0x3B
	Parameters: 0
	Flags: Private
*/
function private function_6fffd543()
{
	self waittill("actor_corpse", corpse);
	corpse clientfield::set("arch_actor_fire_fx", 2);
}

/*
	Name: function_4c41b2f7
	Namespace: namespace_3ed98204
	Checksum: 0xDEC40CA7
	Offset: 0x34C0
	Size: 0x343
	Parameters: 3
	Flags: Private
*/
function private function_4c41b2f7(swarm, var_5b928902, weapon)
{
	self endon("death");
	self.ignoreall = 1;
	self.is_disabled = 1;
	var_c318824b = 0;
	self notify("hash_37486b44", swarm);
	level notify("hash_37486b44", self, swarm);
	if(self cybercom::islinked())
	{
		self Unlink();
		var_c318824b = 1;
	}
	if(!isdefined(var_c318824b) && var_c318824b && isdefined(var_5b928902["intro"]))
	{
		self AnimScripted("swarm_intro_anim", self.origin, self.angles, var_5b928902["intro"]);
		self waittillmatch("hash_352d2dcc");
	}
	self clientfield::set("arch_actor_fire_fx", 1);
	self thread function_6fffd543();
	if(!(isdefined(var_c318824b) && var_c318824b))
	{
		self thread function_edd19e27(swarm, var_5b928902, weapon);
		self util::waittill_any_timeout(GetDvarInt("scr_firefly_swarm_human_burn_duration", 10), "firebug_time_to_die");
	}
	self clientfield::set("firefly_state", 10);
	if(isdefined(swarm))
	{
		swarm notify("hash_b07f7e73", "end");
		if(isdefined(self.voicePrefix) && isdefined(self.bcVoiceNumber))
		{
			self thread battlechatter::function_81d8fcf2(self.voicePrefix + self.bcVoiceNumber + "_exert_firefly_burning", 1);
		}
		swarm.owner notify("hash_304642e3");
		self DoDamage(self.health, self.origin, swarm.owner, swarm, "none", "MOD_BURNED", 0, weapon, -1, 1);
	}
	else if(isdefined(self.voicePrefix) && isdefined(self.bcVoiceNumber))
	{
		self thread battlechatter::function_81d8fcf2(self.voicePrefix + self.bcVoiceNumber + "_exert_firefly_burning", 1);
	}
	self DoDamage(self.health, self.origin, undefined, undefined, "none", "MOD_BURNED", 0, weapon, -1, 1);
}

/*
	Name: function_77e5963a
	Namespace: namespace_3ed98204
	Checksum: 0x188338F0
	Offset: 0x3810
	Size: 0x71
	Parameters: 1
	Flags: Private
*/
function private function_77e5963a(swarm)
{
	while(isdefined(swarm))
	{
		self util::waittill_any_timeout(1, "damage");
		if(isdefined(self) && self.health <= 0)
		{
			self clientfield::set("firefly_state", 10);
			return;
		}
	}
}

/*
	Name: _corpseWatcher
	Namespace: namespace_3ed98204
	Checksum: 0x88C1F5D2
	Offset: 0x3890
	Size: 0x53
	Parameters: 1
	Flags: Private
*/
function private _corpseWatcher(swarm)
{
	swarm endon("death");
	self waittill("actor_corpse", corpse);
	corpse clientfield::set("firefly_state", 10);
}

/*
	Name: function_963f8ef6
	Namespace: namespace_3ed98204
	Checksum: 0xA54D7D0A
	Offset: 0x38F0
	Size: 0xB3
	Parameters: 4
	Flags: None
*/
function function_963f8ef6(match, note, var_1ccbc268, end)
{
	self endon("death");
	if(isdefined(end))
	{
		self endon(end);
		while(1)
		{
			if(isdefined(match))
			{
				self waittillmatch(match);
			}
			else
			{
				self waittill(note);
			}
			self notify(var_1ccbc268, note);
		}
	}
	else if(isdefined(match))
	{
		self waittillmatch(match);
	}
	else
	{
		self waittill(note);
	}
	self notify(var_1ccbc268, note);
}

/*
	Name: function_34de18ba
	Namespace: namespace_3ed98204
	Checksum: 0xA0B31D42
	Offset: 0x39B0
	Size: 0x46B
	Parameters: 3
	Flags: Private
*/
function private function_34de18ba(swarm, var_5b928902, weapon)
{
	self endon("death");
	self thread _corpseWatcher(swarm);
	var_ee89044a = self.badplaceawareness;
	self.badplaceawareness = 0.1;
	self.is_disabled = 1;
	self OrientMode("face point", swarm.origin);
	self notify("hash_4457f945", swarm);
	level notify("hash_4457f945", self, swarm);
	if(self cybercom::function_421746e0())
	{
		if(isdefined(swarm.owner))
		{
		}
		else
		{
		}
		self kill(self.origin, undefined);
		if(isdefined(swarm))
		{
			swarm notify("hash_b07f7e73", swarm.owner);
		}
		return;
	}
	if(!isalive(self) || self IsRagdoll())
	{
		return;
	}
	if(isdefined(var_5b928902["intro"]))
	{
		self AnimScripted("swarm_intro_anim", self.origin, self.angles, var_5b928902["intro"]);
		self thread cybercom::function_cf64f12c("damage", "swarm_intro_anim");
		self waittillmatch("hash_352d2dcc");
	}
	for(attack = 1; attack && isdefined(swarm);  = 1)
	{
		self DoDamage(5, self.origin, swarm.owner, swarm, "none", "MOD_UNKNOWN", 0, weapon, -1, 1);
		wait(0.05);
		self waittillmatch("BHTN_ACTION_TERMINATE");
	}
	self notify("hash_b07f7e73", isdefined(swarm) && (!isdefined(swarm.var_24bf6015) && swarm.var_24bf6015) && DistanceSquared(self.origin + VectorScale((0, 0, 1), 48), swarm.origin) < GetDvarInt("scr_firefly_swarm_attack_radius", 110) * GetDvarInt("scr_firefly_swarm_attack_radius", 110) && isalive(self), "specialpain", "end");
	if(isalive(self) && !self IsRagdoll())
	{
		self clientfield::set("firefly_state", 5);
		self.badplaceawareness = var_ee89044a;
		self.swarm = undefined;
		self OrientMode("face default");
		if(isdefined(var_5b928902["outro"]))
		{
			self AnimScripted("swarm_outro_anim", self.origin, self.angles, var_5b928902["outro"]);
			self thread cybercom::function_cf64f12c("damage", "swarm_outro_anim");
			self waittillmatch("hash_f331901");
		}
		self.is_disabled = undefined;
	}
	if(isdefined(swarm))
	{
		swarm notify("hash_b07f7e73", "end");
	}
}

/*
	Name: function_4169c117
	Namespace: namespace_3ed98204
	Checksum: 0xBFE99AD4
	Offset: 0x3E28
	Size: 0xE3
	Parameters: 0
	Flags: None
*/
function function_4169c117()
{
	if(isdefined(self))
	{
		self notify("hash_c547a8e7");
		if(isdefined(self.targetEnt) && !isPlayer(self.targetEnt))
		{
			self.targetEnt clientfield::set("firefly_state", 5);
			self.targetEnt.swarm = undefined;
			self.targetEnt.var_ce97216f = GetTime() + 2000;
		}
		level.cybercom.var_12f85dec--;
		achievements::function_b2d1aafa();
		self swarm_state_cleanup();
		self delete();
	}
}

/*
	Name: swarm_death_wait
	Namespace: namespace_3ed98204
	Checksum: 0x1815D5B3
	Offset: 0x3F18
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function swarm_death_wait()
{
	self endon("death");
	while(GetTime() < self.lifetime)
	{
		wait(1);
	}
	self.var_24bf6015 = 1;
	wait(2);
	self function_4169c117();
}

/*
	Name: function_b7b30921
	Namespace: namespace_3ed98204
	Checksum: 0x401B90A4
	Offset: 0x3F70
	Size: 0x15B
	Parameters: 1
	Flags: None
*/
function function_b7b30921(params)
{
	self notify("hash_c547a8e7");
	self endon("death");
	self ClearForcedGoal();
	if(!self.fireBugCount)
	{
		self clientfield::set("firefly_state", 5);
	}
	else
	{
		self clientfield::set("firefly_state", 10);
	}
	if(isdefined(self.targetEnt) && !isPlayer(self.targetEnt))
	{
		self.targetEnt clientfield::set("firefly_state", 5);
		self.targetEnt.swarm = undefined;
		self.targetEnt.var_ce97216f = GetTime() + 2000;
	}
	self vehicle::toggle_sounds(0);
	if(isdefined(self.owner))
	{
		self.owner notify("bhtn_action_notify", "firefly_end");
	}
	wait(3);
	self function_4169c117();
}

/*
	Name: function_4a163234
	Namespace: namespace_3ed98204
	Checksum: 0x1E0A005D
	Offset: 0x40D8
	Size: 0x16B
	Parameters: 1
	Flags: None
*/
function function_4a163234(params)
{
	self endon("hash_c547a8e7");
	self endon("death");
	if(isdefined(self.var_24bf6015) && self.var_24bf6015)
	{
		self.state_machine statemachine::set_state("dead");
		return;
	}
	self.debug.main++;
	if(!isdefined(self.targetEnt))
	{
		self.state_machine statemachine::set_state("hunt");
	}
	else if(DistanceSquared(self.targetEnt.origin + VectorScale((0, 0, 1), 48), self.origin) > GetDvarInt("scr_firefly_swarm_attack_radius", 110) * GetDvarInt("scr_firefly_swarm_attack_radius", 110))
	{
		self.state_machine statemachine::set_state("move");
	}
	else
	{
		self.state_machine statemachine::set_state("attack");
	}
	self.debug.main--;
}

/*
	Name: _get_valid_targets
	Namespace: namespace_3ed98204
	Checksum: 0x378BF8F3
	Offset: 0x4250
	Size: 0xF1
	Parameters: 0
	Flags: Private
*/
function private _get_valid_targets()
{
	humans = ArrayCombine(GetAISpeciesArray(self getEnemyTeam(), "human"), GetAISpeciesArray("team3", "human"), 0, 0);
	zombies = ArrayCombine(GetAISpeciesArray(self getEnemyTeam(), "zombie"), GetAISpeciesArray("team3", "zombie"), 0, 0);
	return ArrayCombine(humans, zombies, 0, 0);
}

/*
	Name: function_602b28e9
	Namespace: namespace_3ed98204
	Checksum: 0xCD42BBF
	Offset: 0x4350
	Size: 0x1C7
	Parameters: 1
	Flags: Private
*/
function private function_602b28e9(target)
{
	if(isdefined(self.owner) && !self.owner cybercom::function_7a7d1608(target, GetWeapon("gadget_firefly_swarm")))
	{
		return 0;
	}
	if(target.archetype != "human" && target.archetype != "human_riotshield" && target.archetype != "zombie" && target.archetype != "warlord")
	{
		return 0;
	}
	if(target cybercom::function_8fd8f5b1("cybercom_fireflyswarm"))
	{
		return 0;
	}
	if(isdefined(target.swarm))
	{
		return 0;
	}
	if(isdefined(target.var_86386274))
	{
		if(target.var_86386274 > GetTime())
		{
			return 0;
		}
		target.var_86386274 = undefined;
	}
	if(isdefined(target.var_ce97216f) && GetTime() < target.var_ce97216f)
	{
		return 0;
	}
	if(IsActor(target) && target cybercom::function_78525729() != "stand" && target cybercom::function_78525729() != "crouch")
	{
		return 0;
	}
	return 1;
}

/*
	Name: function_cd0239e5
	Namespace: namespace_3ed98204
	Checksum: 0x96F2D438
	Offset: 0x4520
	Size: 0x1A1
	Parameters: 4
	Flags: None
*/
function function_cd0239e5(origin, angles, var_10a84c6e, var_1a6983c2)
{
	if(!isdefined(var_10a84c6e))
	{
		var_10a84c6e = GetDvarInt("scr_firefly_swarm_hunt_radius", 1536);
	}
	if(!isdefined(var_1a6983c2))
	{
		var_1a6983c2 = cos(45);
	}
	enemies = self _get_valid_targets();
	closeTargets = ArraySortClosest(enemies, origin, enemies.size, 0, var_10a84c6e);
	var_4f33000c = [];
	foreach(guy in closeTargets)
	{
		if(!function_602b28e9(guy))
		{
			continue;
		}
		if(util::within_fov(origin, angles, guy.origin, var_1a6983c2))
		{
			var_4f33000c[var_4f33000c.size] = guy;
		}
	}
	return var_4f33000c;
}

/*
	Name: function_3ab9233
	Namespace: namespace_3ed98204
	Checksum: 0x1A5D1EB0
	Offset: 0x46D0
	Size: 0x223
	Parameters: 1
	Flags: None
*/
function function_3ab9233(var_10a84c6e)
{
	if(!isdefined(var_10a84c6e))
	{
		var_10a84c6e = GetDvarInt("scr_firefly_swarm_hunt_radius", 1536);
	}
	self endon("hash_c547a8e7");
	self endon("death");
	enemies = self _get_valid_targets();
	closeTargets = ArraySortClosest(enemies, self.origin, enemies.size, 0, var_10a84c6e);
	closest = undefined;
	while(closeTargets.size > 0)
	{
		closest = cybercom::getClosestTo(self.origin, closeTargets, var_10a84c6e);
		if(!function_602b28e9(closest))
		{
			ArrayRemoveValue(closeTargets, closest, 0);
			closest = undefined;
			wait(0.05);
			continue;
		}
		if(!isdefined(closest))
		{
			break;
		}
		pathSuccess = 0;
		queryResult = PositionQuery_Source_Navigation(closest.origin, 0, 128, 128, 20, self);
		if(queryResult.data.size > 0)
		{
			pathSuccess = self FindPath(self.origin, queryResult.data[0].origin, 1, 0);
		}
		if(!pathSuccess)
		{
			ArrayRemoveValue(closeTargets, closest, 0);
			closest = undefined;
			wait(0.05);
			continue;
		}
		break;
	}
	return closest;
}

/*
	Name: function_a3deb004
	Namespace: namespace_3ed98204
	Checksum: 0x3963BB96
	Offset: 0x4900
	Size: 0x1A3
	Parameters: 1
	Flags: None
*/
function function_a3deb004(params)
{
	self endon("hash_c547a8e7");
	self endon("death");
	self.debug.hunt++;
	self util::waittill_any_timeout(3, "near_goal");
	self ClearForcedGoal();
	if(!self.fireBugCount)
	{
		self clientfield::set("firefly_state", 1);
	}
	else
	{
		self clientfield::set("firefly_state", 6);
	}
	if(GetDvarInt("scr_firefly_swarm_debug", 0))
	{
		self thread cybercom::debug_circle(self.origin, GetDvarInt("scr_firefly_swarm_hunt_radius", 1536), 0.1, (1, 1, 0));
	}
	self.targetEnt = self function_3ab9233();
	if(isdefined(self.targetEnt))
	{
		self.targetEnt.swarm = self;
	}
	self.state_machine statemachine::set_state("main");
	self.debug.hunt--;
}

/*
	Name: function_cf23fec8
	Namespace: namespace_3ed98204
	Checksum: 0x6FE6DFCB
	Offset: 0x4AB0
	Size: 0x1BB
	Parameters: 1
	Flags: None
*/
function function_cf23fec8(params)
{
	self endon("hash_c547a8e7");
	self endon("death");
	self.debug.move++;
	if(!self.fireBugCount)
	{
		self clientfield::set("firefly_state", 2);
	}
	else
	{
		self clientfield::set("firefly_state", 7);
	}
	wait(0.5);
	self.goalRadius = 12;
	self.goalHeight = 12;
	if(!self.fireBugCount)
	{
		self clientfield::set("firefly_state", 3);
	}
	else
	{
		self clientfield::set("firefly_state", 8);
	}
	self ClearForcedGoal();
	if(isdefined(self.targetEnt))
	{
		self SetGoal(self.targetEnt.origin + VectorScale((0, 0, 1), 48), 1, self.goalRadius);
		event = self util::waittill_any_timeout(30, "near_goal");
	}
	self.state_machine statemachine::set_state("main");
	self.debug.move--;
}

/*
	Name: function_326c3df4
	Namespace: namespace_3ed98204
	Checksum: 0x259916C8
	Offset: 0x4C78
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_326c3df4(player)
{
	self endon("disconnect");
	player shellshock("proximity_grenade", 2, 0);
}

