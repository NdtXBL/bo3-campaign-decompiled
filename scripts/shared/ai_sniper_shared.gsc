#using scripts\codescripts\struct;
#using scripts\shared\ai\systems\blackboard;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace ai_sniper;

/*
	Name: __init__sytem__
	Namespace: ai_sniper
	Checksum: 0x50402727
	Offset: 0x200
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__sytem__()
{
	system::register("ai_sniper", &__init__, undefined, undefined);
}

/*
	Name: __init__
	Namespace: ai_sniper
	Checksum: 0x67BE2C58
	Offset: 0x240
	Size: 0x13
	Parameters: 0
	Flags: None
*/
function __init__()
{
	thread init_node_scan();
}

/*
	Name: init_node_scan
	Namespace: ai_sniper
	Checksum: 0x53DF918A
	Offset: 0x260
	Size: 0x325
	Parameters: 1
	Flags: None
*/
function init_node_scan(targetname)
{
	wait(0.05);
	if(!isdefined(targetname))
	{
		targetname = "ai_sniper_node_scan";
	}
	var_406775ae = struct::get_array(targetname, "targetname");
	pointList = GetEntArray(targetname, "targetname");
	foreach(struct in var_406775ae)
	{
		pointList[pointList.size] = struct;
	}
	foreach(point in pointList)
	{
		if(isdefined(point.target))
		{
			node = GetNode(point.target, "targetname");
			if(isdefined(node))
			{
				if(!isdefined(node.var_565daac6))
				{
					node.var_565daac6 = [];
				}
				node.var_565daac6[node.var_565daac6.size] = point;
			}
		}
	}
	var_69cb4035 = GetNodeArray(targetname, "script_noteworthy");
	foreach(node in var_69cb4035)
	{
		if(isdefined(node.script_linkto))
		{
			node.var_57357d16 = struct::get(node.script_linkto, "script_linkname");
			if(!isdefined(node.var_57357d16))
			{
				node.var_57357d16 = GetEnt(node.script_linkto, "script_linkname");
			}
		}
	}
}

/*
	Name: agent_init
	Namespace: ai_sniper
	Checksum: 0x743CD9D4
	Offset: 0x590
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function agent_init()
{
	self thread function_8d1875dc();
	self thread function_6a517a0a();
	self thread function_6fb6a6d3();
}

/*
	Name: function_b61dfa9e
	Namespace: ai_sniper
	Checksum: 0xF237F61E
	Offset: 0x5E8
	Size: 0x131
	Parameters: 1
	Flags: None
*/
function function_b61dfa9e(node)
{
	if(!isdefined(node))
	{
		return;
	}
	if(!isdefined(node.var_565daac6) && !isdefined(node.var_57357d16))
	{
		return;
	}
	self notify("hash_b61dfa9e");
	self endon("hash_b61dfa9e");
	self endon("death");
	self endon("hash_565daac6");
	if(isdefined(self.patroller) && self.patroller)
	{
		self ai::end_and_clean_patrol_behaviors();
	}
	goalpos = node.origin;
	if(isdefined(self.pathGoalPos))
	{
		goalpos = self.pathGoalPos;
	}
	if(isdefined(self.arrivalfinalpos))
	{
		goalpos = self.arrivalfinalpos;
	}
	while(DistanceSquared(self.origin, goalpos) > 256)
	{
		wait(0.05);
	}
	self notify("hash_50b88a46", node);
}

/*
	Name: function_6a517a0a
	Namespace: ai_sniper
	Checksum: 0xD1CA157
	Offset: 0x728
	Size: 0x67
	Parameters: 0
	Flags: None
*/
function function_6a517a0a()
{
	self notify("hash_6a517a0a");
	self endon("hash_6a517a0a");
	self endon("death");
	while(1)
	{
		self waittill("patrol_goal", node);
		self function_b61dfa9e(node);
	}
}

/*
	Name: function_6fb6a6d3
	Namespace: ai_sniper
	Checksum: 0xA4F4B854
	Offset: 0x798
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_6fb6a6d3()
{
	self notify("hash_6fb6a6d3");
	self endon("hash_6fb6a6d3");
	self endon("death");
	if(isdefined(self.target) && (!isdefined(self.patroller) && self.patroller))
	{
		node = GetNode(self.target, "targetname");
		if(isdefined(node))
		{
			self waittill("goal");
			self function_b61dfa9e(node);
		}
	}
}

/*
	Name: function_8d1875dc
	Namespace: ai_sniper
	Checksum: 0xEB961440
	Offset: 0x858
	Size: 0x277
	Parameters: 0
	Flags: None
*/
function function_8d1875dc()
{
	self notify("hash_8d1875dc");
	self endon("hash_8d1875dc");
	self endon("death");
	while(1)
	{
		var_360359e4 = 0;
		self waittill("hash_50b88a46", node);
		if(isdefined(node.var_57357d16))
		{
			self thread actor_lase_points_behavior(node.var_57357d16);
		}
		else
		{
			self thread actor_lase_points_behavior(node.var_565daac6);
		}
		if(self ai::has_behavior_attribute("stealth"))
		{
			var_360359e4 = self ai::get_behavior_attribute("stealth");
			self ai::set_behavior_attribute("stealth", 0);
		}
		if(isdefined(self.currentgoal) && isdefined(self.currentgoal.target) && self.currentgoal.target != "")
		{
			self SetGoal(node, 1);
			self waittill("hash_b39fffd7");
			self notify("hash_565daac6");
			self LaserOff();
			self.holdFire = 0;
			self ai::stop_shoot_at_target();
			if(isdefined(self.var_d1ddf246))
			{
				self.goalRadius = self.var_d1ddf246;
				self.var_d1ddf246 = undefined;
			}
			if(isdefined(self.currentgoal))
			{
				self thread ai::patrol(self.currentgoal);
			}
			if(var_360359e4 && self ai::has_behavior_attribute("stealth"))
			{
				self ai::set_behavior_attribute("stealth", self.awarenesslevelcurrent != "combat");
			}
		}
		else
		{
			break;
		}
	}
}

/*
	Name: actor_lase_points_behavior
	Namespace: ai_sniper
	Checksum: 0x1616368E
	Offset: 0xAD8
	Size: 0x313
	Parameters: 1
	Flags: None
*/
function actor_lase_points_behavior(entity_or_point_array)
{
	self notify("hash_565daac6");
	self endon("hash_565daac6");
	self endon("death");
	self.holdFire = 1;
	self.var_578b3075 = 1;
	if(!isdefined(self.var_d1ddf246))
	{
		self.var_d1ddf246 = self.goalRadius;
	}
	self.goalRadius = 8;
	if(isdefined(self.__blackboard) && isdefined(self.script_parameters) && self.script_parameters == "steady")
	{
		blackboard::SetBlackBoardAttribute(self, "_context", "steady");
	}
	if(!isdefined(entity_or_point_array) && isdefined(self.target))
	{
		entity_or_point_array = struct::get(self.target, "targetname");
	}
	if(!isdefined(entity_or_point_array) || (IsArray(entity_or_point_array) && entity_or_point_array.size == 0))
	{
		/#
			IPrintLnBold("Dev Block strings are not supported");
		#/
		return;
	}
	var_978eac89 = undefined;
	if(IsArray(entity_or_point_array))
	{
		var_978eac89 = entity_or_point_array[0];
	}
	else
	{
		var_978eac89 = entity_or_point_array;
	}
	if(!isdefined(self.var_9eb700da))
	{
		self.var_9eb700da = spawn("script_model", function_9bab0bf(var_978eac89));
		self.var_9eb700da SetModel("tag_origin");
		self.var_9eb700da.velocity = VectorScale((1, 0, 0), 100);
		self thread util::delete_on_death(self.var_9eb700da);
	}
	if(self.var_9eb700da.health <= 0)
	{
		self.var_9eb700da.health = 1;
	}
	self thread ai::shoot_at_target("shoot_until_target_dead", self.var_9eb700da);
	self.var_9eb700da thread target_lase_points(entity_or_point_array, self);
	self.var_9eb700da thread target_lase_points_ally_track(self GetEye(), entity_or_point_array, self);
	self thread function_2ba378ce();
	self thread function_659cb4db();
}

/*
	Name: actor_lase_stop
	Namespace: ai_sniper
	Checksum: 0x8C398BDC
	Offset: 0xDF8
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function actor_lase_stop()
{
	if(!isdefined(self.var_9eb700da))
	{
		return;
	}
	self notify("hash_565daac6");
	self.holdFire = 0;
	self.var_578b3075 = 0;
	self.var_9eb700da delete();
	self.var_9eb700da = undefined;
	self clearentitytarget();
	if(isdefined(self.var_d1ddf246))
	{
		self.goalRadius = self.var_d1ddf246;
		self.var_d1ddf246 = undefined;
	}
	self LaserOff();
	if(isdefined(self.__blackboard))
	{
		blackboard::SetBlackBoardAttribute(self, "_context", undefined);
	}
}

/*
	Name: function_d065af50
	Namespace: ai_sniper
	Checksum: 0xEFE5B9A2
	Offset: 0xED0
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_d065af50()
{
	/#
		self endon("death");
		lastpos = self.origin;
		while(1)
		{
			debugstar(self.origin, 1, (1, 0, 0));
			line(self.origin, lastpos, (1, 0, 0), 1, 0, 20);
			lastpos = self.origin;
			wait(0.05);
		}
	#/
}

/*
	Name: function_2ba378ce
	Namespace: ai_sniper
	Checksum: 0x5F7F7CE3
	Offset: 0xF70
	Size: 0x97
	Parameters: 0
	Flags: None
*/
function function_2ba378ce()
{
	self endon("death");
	self endon("hash_565daac6");
	var_bef987c0 = GetTime();
	while(1)
	{
		if(self AsmIsTransDecRunning())
		{
			var_bef987c0 = GetTime();
			self LaserOff();
		}
		else if(GetTime() - var_bef987c0 > 350)
		{
			self LaserOn();
		}
		wait(0.05);
	}
}

/*
	Name: function_659cb4db
	Namespace: ai_sniper
	Checksum: 0x8CF905BD
	Offset: 0x1010
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_659cb4db()
{
	self endon("hash_565daac6");
	self waittill("death");
	if(isdefined(self))
	{
		self LaserOff();
	}
}

/*
	Name: function_9bab0bf
	Namespace: ai_sniper
	Checksum: 0x7CE28A9E
	Offset: 0x1058
	Size: 0xBB
	Parameters: 1
	Flags: None
*/
function function_9bab0bf(entity_or_point)
{
	if(!isdefined(entity_or_point))
	{
		return (0, 0, 0);
	}
	result = entity_or_point;
	if(!IsVec(entity_or_point) && isdefined(entity_or_point.origin))
	{
		result = entity_or_point.origin;
		if(isPlayer(entity_or_point) || IsActor(entity_or_point))
		{
			result = entity_or_point GetEye();
		}
	}
	return result;
}

/*
	Name: target_lase_points_ally_track
	Namespace: ai_sniper
	Checksum: 0xC892CF85
	Offset: 0x1120
	Size: 0x3C7
	Parameters: 3
	Flags: None
*/
function target_lase_points_ally_track(v_eye, entity_or_point_array, a_owner)
{
	self notify("actor_lase_points_player_track");
	self endon("actor_lase_points_player_track");
	self endon("death");
	if(!isdefined(level.var_b8032721))
	{
		level.var_b8032721 = [];
	}
	if(!isdefined(level.var_2b420add))
	{
		level.var_2b420add = 0;
	}
	while(1)
	{
		var_6121992f = VectorNormalize(self.origin - v_eye);
		if(GetTime() > level.var_2b420add)
		{
			level.var_b8032721 = GetPlayers();
			var_28a2096c = GetAITeamArray("allies");
			foreach(actor in var_28a2096c)
			{
				if(isdefined(actor.ignoreme) && actor.ignoreme)
				{
					continue;
				}
				if(isalive(actor))
				{
					level.var_b8032721[level.var_b8032721.size] = actor;
				}
			}
			level.var_2b420add = GetTime() + 1000;
		}
		for(i = 0; i < level.var_b8032721.size; i++)
		{
			ally = level.var_b8032721[i];
			if(!isalive(ally))
			{
				continue;
			}
			if(ally IsNoTarget() || (isdefined(ally.ignoreme) && ally.ignoreme))
			{
				continue;
			}
			var_633cfa62 = function_9bab0bf(ally);
			var_c4827684 = VectorNormalize(var_633cfa62 - v_eye);
			if(VectorDot(var_6121992f, var_c4827684) < 0.7)
			{
				continue;
			}
			var_6a3f5d89 = PointOnSegmentNearestToPoint(v_eye, self.origin, var_633cfa62);
			if(DistanceSquared(var_633cfa62, var_6a3f5d89) < 40000)
			{
				if(SightTracePassed(v_eye, var_633cfa62, 0, undefined))
				{
					if(isdefined(a_owner))
					{
						a_owner notify("alert", "combat", var_633cfa62, ally);
					}
					self function_b77b41d1(v_eye, ally, a_owner);
					break;
				}
			}
		}
		wait(0.05);
	}
}

/*
	Name: function_b77b41d1
	Namespace: ai_sniper
	Checksum: 0x482CB195
	Offset: 0x14F0
	Size: 0xAB
	Parameters: 4
	Flags: None
*/
function function_b77b41d1(v_eye, entity_or_point, a_owner, var_12065f0b)
{
	if(!isdefined(var_12065f0b))
	{
		var_12065f0b = 1;
	}
	sight_timeout = 7;
	if(isdefined(self.a_owner) && isdefined(self.a_owner.var_815502c4))
	{
		sight_timeout = self.a_owner.var_815502c4;
	}
	self target_lase_override(v_eye, entity_or_point, sight_timeout, a_owner, 1, var_12065f0b);
}

/*
	Name: target_lase_points
	Namespace: ai_sniper
	Checksum: 0xE9674F73
	Offset: 0x15A8
	Size: 0x287
	Parameters: 2
	Flags: None
*/
function target_lase_points(entity_or_point_array, e_owner)
{
	self notify("hash_565daac6");
	self endon("hash_565daac6");
	self endon("death");
	pauseTime = RandomFloatRange(2, 4);
	if(IsArray(entity_or_point_array) && entity_or_point_array.size <= 0)
	{
		return;
	}
	index = 0;
	start = entity_or_point_array;
	while(1)
	{
		while(isdefined(self.var_8722cfb))
		{
			wait(0.05);
			continue;
		}
		if(IsArray(entity_or_point_array))
		{
			self target_lase_transition(entity_or_point_array[index], e_owner);
			if(!IsVec(entity_or_point_array[index]) && isdefined(entity_or_point_array[index].script_wait))
			{
				wait(entity_or_point_array[index].script_wait);
			}
		}
		else
		{
			entity_or_point_array = target_lase_next(entity_or_point_array);
			self target_lase_transition(entity_or_point_array, e_owner);
			if(!IsVec(entity_or_point_array) && isdefined(entity_or_point_array.script_wait))
			{
				wait(entity_or_point_array.script_wait);
			}
		}
		looped = 0;
		if(IsArray(entity_or_point_array))
		{
			index = index + 1;
			if(index >= entity_or_point_array.size)
			{
				index = 0;
				looped = 1;
			}
		}
		else if(entity_or_point_array == start)
		{
			looped = 1;
		}
		if(looped)
		{
			self notify("hash_b39fffd7");
			if(isdefined(e_owner))
			{
				e_owner notify("hash_b39fffd7");
			}
		}
	}
}

/*
	Name: function_9c1ac1cb
	Namespace: ai_sniper
	Checksum: 0x72002CC2
	Offset: 0x1838
	Size: 0x3BB
	Parameters: 3
	Flags: None
*/
function function_9c1ac1cb(endPosition, totalTime, var_5d61a864)
{
	self notify("hash_9c1ac1cb");
	self endon("hash_9c1ac1cb");
	self endon("death");
	startPosition = self.origin;
	var_e651c736 = self.velocity;
	var_c8240fdb = VectorNormalize(self.velocity);
	var_ed017668 = totalTime * 4;
	phase = length(self.velocity) / var_ed017668 * 2;
	startTime = GetTime();
	var_ea09f212 = totalTime * 1000;
	var_1632b53d = var_ea09f212 * 0.75;
	notified = 0;
	var_3d372c1a = 65000;
	if(!isdefined(var_5d61a864) || var_5d61a864)
	{
		self endon("hash_9744842a");
	}
	while(GetTime() - startTime < var_ea09f212)
	{
		if(!notified && GetTime() - startTime > var_1632b53d)
		{
			self notify("hash_9744842a");
			notified = 1;
		}
		deltaTime = float(GetTime() - startTime) / 1000;
		var_67fe8eb1 = min(deltaTime, var_ed017668);
		var_e42cf565 = startPosition + var_e651c736 * var_67fe8eb1;
		var_7a592a87 = var_e42cf565 + var_c8240fdb * phase * -0.5 * var_67fe8eb1 * var_67fe8eb1;
		var_60941c0a = deltaTime / totalTime;
		var_60941c0a = 1 - 0.5 + cos(var_60941c0a * 180) * 0.5;
		var_515ca7cf = endPosition;
		/#
			Assert(isdefined(var_515ca7cf));
		#/
		newOrigin = VectorLerp(var_7a592a87, var_515ca7cf, var_60941c0a);
		self.velocity = newOrigin - self.origin / 0.05;
		if(newOrigin[0] > var_3d372c1a * -1 && newOrigin[0] < var_3d372c1a && newOrigin[1] > var_3d372c1a * -1 && newOrigin[1] < var_3d372c1a && newOrigin[2] > var_3d372c1a * -1 && newOrigin[2] < var_3d372c1a)
		{
			self.origin = newOrigin;
		}
		wait(0.05);
	}
}

/*
	Name: target_lase_next
	Namespace: ai_sniper
	Checksum: 0x7FDDA166
	Offset: 0x1C00
	Size: 0x17F
	Parameters: 1
	Flags: None
*/
function target_lase_next(node)
{
	if(!isdefined(node))
	{
		return undefined;
	}
	var_e236c887 = undefined;
	var_702f594c = undefined;
	if(isdefined(node.target) && isdefined(node.script_linkto))
	{
		var_e236c887 = struct::get(node.target, "targetname");
		var_702f594c = struct::get(node.script_linkto, "script_linkname");
	}
	else if(isdefined(node.target))
	{
		var_e236c887 = struct::get(node.target, "targetname");
	}
	else if(isdefined(node.script_linkto))
	{
		var_e236c887 = struct::get(node.script_linkto, "script_linkname");
	}
	if(isdefined(var_e236c887) && isdefined(var_702f594c))
	{
		if(RandomFloatRange(0, 1) < 0.5)
		{
			return var_e236c887;
		}
		return var_702f594c;
	}
	return var_e236c887;
}

/*
	Name: target_lase_transition
	Namespace: ai_sniper
	Checksum: 0x64B88B7E
	Offset: 0x1D88
	Size: 0x1D7
	Parameters: 2
	Flags: None
*/
function target_lase_transition(entity_or_point, owner)
{
	self notify("target_lase_transition");
	self endon("target_lase_transition");
	self endon("death");
	if(IsEntity(entity_or_point))
	{
		entity_or_point endon("death");
		while(1)
		{
			point = function_9bab0bf(entity_or_point);
			delta = point - self.origin;
			delta = delta * 0.2;
			self.origin = self.origin + delta;
			wait(0.05);
		}
	}
	else
	{
		speed = 200;
		point = function_9bab0bf(entity_or_point);
		time = Distance(point, self.origin) / speed;
		var_779fd53f = 0;
		if(isdefined(owner) && isdefined(owner.var_26c21ea3))
		{
			var_779fd53f = 1;
			time = min(time, owner.var_26c21ea3);
		}
		if(time > 0)
		{
			self thread function_9c1ac1cb(point, time, var_779fd53f);
			self waittill("hash_9744842a");
		}
	}
}

/*
	Name: target_lase_override
	Namespace: ai_sniper
	Checksum: 0x602AA1C0
	Offset: 0x1F68
	Size: 0x271
	Parameters: 6
	Flags: None
*/
function target_lase_override(v_eye, entity_or_point, sight_timeout, a_owner, fire_weapon, var_12065f0b)
{
	if(!isdefined(var_12065f0b))
	{
		var_12065f0b = 1;
	}
	if(isdefined(self.var_8722cfb) && (!var_12065f0b || self.var_8722cfb == entity_or_point))
	{
		return;
	}
	self notify("target_lase_override");
	self endon("target_lase_override");
	self endon("death");
	self.var_8722cfb = entity_or_point;
	self thread target_lase_transition(entity_or_point, a_owner);
	var_2cbaef6c = 0;
	var_4bbe1b92 = 0;
	var_94a708a2 = 0;
	if(isdefined(a_owner.var_dfa3c2cb))
	{
		var_94a708a2 = a_owner.var_dfa3c2cb;
	}
	if(!isdefined(fire_weapon))
	{
		fire_weapon = 1;
	}
	while(1)
	{
		if(var_4bbe1b92 >= var_94a708a2)
		{
			if(IsActor(a_owner))
			{
				a_owner.holdFire = !fire_weapon;
				if(fire_weapon)
				{
					a_owner.var_8c2ddc6 = GetTime();
				}
			}
		}
		if(!isdefined(entity_or_point) || var_2cbaef6c >= sight_timeout)
		{
			self notify("target_lase_transition");
			break;
		}
		if(!SightTracePassed(v_eye, function_9bab0bf(entity_or_point), 0, undefined))
		{
			var_2cbaef6c = var_2cbaef6c + 0.05;
		}
		else
		{
			var_2cbaef6c = 0;
		}
		var_4bbe1b92 = var_4bbe1b92 + 0.05;
		wait(0.05);
	}
	if(IsActor(a_owner))
	{
		a_owner.holdFire = 1;
	}
	self.var_8722cfb = undefined;
}

/*
	Name: is_firing
	Namespace: ai_sniper
	Checksum: 0xD61442D7
	Offset: 0x21E8
	Size: 0x45
	Parameters: 1
	Flags: None
*/
function is_firing(a_owner)
{
	if(!isdefined(a_owner))
	{
		return 0;
	}
	if(!isdefined(a_owner.var_8c2ddc6))
	{
		return 0;
	}
	return GetTime() - a_owner.var_8c2ddc6 < 3000;
}

