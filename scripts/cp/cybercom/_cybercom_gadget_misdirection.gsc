#using scripts\codescripts\struct;
#using scripts\cp\_challenges;
#using scripts\cp\_util;
#using scripts\cp\cybercom\_cybercom;
#using scripts\cp\cybercom\_cybercom_dev;
#using scripts\cp\cybercom\_cybercom_gadget;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\shared\abilities\_ability_player;
#using scripts\shared\abilities\_ability_util;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\gameskill_shared;
#using scripts\shared\hud_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\statemachine_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;

#namespace namespace_d9c8cca1;

/*
	Name: init
	Namespace: namespace_d9c8cca1
	Checksum: 0x7F7E2015
	Offset: 0x5B0
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function init()
{
	clientfield::register("toplayer", "misdirection_enable", 1, 1, "int");
	clientfield::register("scriptmover", "makedecoy", 1, 1, "int");
}

/*
	Name: main
	Namespace: namespace_d9c8cca1
	Checksum: 0xB587B2A
	Offset: 0x620
	Size: 0x183
	Parameters: 0
	Flags: None
*/
function main()
{
	namespace_d00ec32::function_36b56038(2, 32, 1);
	level.cybercom.misdirection = spawnstruct();
	level.cybercom.misdirection._is_flickering = &_is_flickering;
	level.cybercom.misdirection._on_flicker = &_on_flicker;
	level.cybercom.misdirection._on_give = &_on_give;
	level.cybercom.misdirection._on_take = &_on_take;
	level.cybercom.misdirection._on_connect = &_on_connect;
	level.cybercom.misdirection._on = &_on;
	level.cybercom.misdirection._off = &_off;
	level.cybercom.misdirection._is_primed = &_is_primed;
}

/*
	Name: _is_flickering
	Namespace: namespace_d9c8cca1
	Checksum: 0x6324FF93
	Offset: 0x7B0
	Size: 0xB
	Parameters: 1
	Flags: None
*/
function _is_flickering(slot)
{
}

/*
	Name: _on_flicker
	Namespace: namespace_d9c8cca1
	Checksum: 0x93687036
	Offset: 0x7C8
	Size: 0x13
	Parameters: 2
	Flags: None
*/
function _on_flicker(slot, weapon)
{
}

/*
	Name: _on_give
	Namespace: namespace_d9c8cca1
	Checksum: 0x3DA85D42
	Offset: 0x7E8
	Size: 0x193
	Parameters: 2
	Flags: None
*/
function _on_give(slot, weapon)
{
	self.cybercom.var_6735c679 = GetDvarFloat("scr_misdirection_lifetime", 4);
	self.cybercom.var_c0a69197 = GetDvarInt("scr_misdirection_target_count", 3);
	self.cybercom.var_e5260c29 = GetDvarFloat("scr_misdirection_fov", 0.968);
	if(self function_1a9006bd("cybercom_misdirection") == 2)
	{
		self.cybercom.var_6735c679 = GetDvarFloat("scr_misdirection_upgraded_lifetime", 5.5);
		self.cybercom.var_c0a69197 = GetDvarInt("scr_misdirection_target_count_upgraded", 5);
		self.cybercom.var_e5260c29 = GetDvarFloat("scr_misdirection_upgraded_fov", 0.94);
	}
	clientfield::set_to_player("misdirection_enable", 1);
	self thread cybercom::function_b5f4e597(weapon);
}

/*
	Name: _on_take
	Namespace: namespace_d9c8cca1
	Checksum: 0x3AE22221
	Offset: 0x988
	Size: 0x3F
	Parameters: 2
	Flags: None
*/
function _on_take(slot, weapon)
{
	clientfield::set_to_player("misdirection_enable", 0);
	self.cybercom.var_301030f7 = 0;
}

/*
	Name: _on_connect
	Namespace: namespace_d9c8cca1
	Checksum: 0x99EC1590
	Offset: 0x9D0
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function _on_connect()
{
}

/*
	Name: _on
	Namespace: namespace_d9c8cca1
	Checksum: 0xD4E032BC
	Offset: 0x9E0
	Size: 0x113
	Parameters: 2
	Flags: None
*/
function _on(slot, weapon)
{
	result = self function_12a86f2e(slot, weapon);
	if(!result)
	{
		self GadgetDeactivate(slot, weapon, 2);
	}
	cybercom::function_adc40f11(weapon, result);
	self.cybercom.var_301030f7 = 0;
	if(isPlayer(self))
	{
		itemIndex = GetItemIndexFromRef("cybercom_misdirection");
		if(isdefined(itemIndex))
		{
			self AddDStat("ItemStats", itemIndex, "stats", "used", "statValue", 1);
		}
	}
}

/*
	Name: _off
	Namespace: namespace_d9c8cca1
	Checksum: 0xB67E7E71
	Offset: 0xB00
	Size: 0x27
	Parameters: 2
	Flags: None
*/
function _off(slot, weapon)
{
	self.cybercom.var_301030f7 = 0;
}

/*
	Name: _is_primed
	Namespace: namespace_d9c8cca1
	Checksum: 0xA456AF9A
	Offset: 0xB30
	Size: 0x4F
	Parameters: 2
	Flags: None
*/
function _is_primed(slot, weapon)
{
	if(!(isdefined(self.cybercom.var_301030f7) && self.cybercom.var_301030f7))
	{
		self.cybercom.var_301030f7 = 1;
	}
}

/*
	Name: _get_valid_targets
	Namespace: namespace_d9c8cca1
	Checksum: 0x3EF02424
	Offset: 0xB88
	Size: 0x33D
	Parameters: 1
	Flags: Private
*/
function private _get_valid_targets(weapon)
{
	playerForward = AnglesToForward(self getPlayerAngles());
	enemies = ArrayCombine(GetAITeamArray("axis"), GetAITeamArray("team3"), 0, 0);
	enemies = ArraySort(enemies, self.origin, 1);
	valid = [];
	foreach(guy in enemies)
	{
		if(isVehicle(guy))
		{
			continue;
		}
		if(!IsActor(guy))
		{
			continue;
		}
		if(!isdefined(guy.archetype) || guy.archetype == "direwolf" || guy.archetype == "zombie")
		{
			continue;
		}
		distSq = DistanceSquared(self.origin, guy.origin);
		if(distSq < GetDvarInt("scr_misdirection_min_distanceSQR", GetDvarInt("scr_misdirection_min_distance", 200) * GetDvarInt("scr_misdirection_min_distance", 200)))
		{
			continue;
		}
		if(distSq > GetDvarInt("scr_misdirection_max_distanceSQR", GetDvarInt("scr_misdirection_max_distance", 1750) * GetDvarInt("scr_misdirection_max_distance", 1750)))
		{
			continue;
		}
		dot = VectorDot(playerForward, VectorNormalize(guy.origin - self.origin));
		if(dot < self.cybercom.var_e5260c29)
		{
			continue;
		}
		valid[valid.size] = guy;
		self thread challenges::function_96ed590f("cybercom_uses_chaos");
	}
	return valid;
}

/*
	Name: function_12a86f2e
	Namespace: namespace_d9c8cca1
	Checksum: 0x9F743A02
	Offset: 0xED0
	Size: 0x185
	Parameters: 2
	Flags: Private
*/
function private function_12a86f2e(slot, weapon)
{
	targets = _get_valid_targets(weapon);
	self.cybercom.var_1beb8e5f = [];
	for(i = 0; i < self.cybercom.var_c0a69197; i++)
	{
		decoy = self function_4adc7dc8(targets);
		if(isdefined(decoy))
		{
			self.cybercom.var_1beb8e5f[self.cybercom.var_1beb8e5f.size] = decoy;
			util::wait_network_frame();
		}
	}
	foreach(decoy in self.cybercom.var_1beb8e5f)
	{
		decoy thread function_7ca046a9(self.cybercom.var_6735c679, self);
	}
	return 1;
}

/*
	Name: function_7074260
	Namespace: namespace_d9c8cca1
	Checksum: 0x81231AD7
	Offset: 0x1060
	Size: 0x115
	Parameters: 1
	Flags: None
*/
function function_7074260(point)
{
	foreach(var_d3c532e6 in self.cybercom.var_1beb8e5f)
	{
		distSq = Distance2DSquared(point, var_d3c532e6.origin);
		if(distSq < GetDvarInt("scr_misdirection_decoy_spacingSQR", GetDvarInt("scr_misdirection_decoy_spacing", 90) * GetDvarInt("scr_misdirection_decoy_spacing", 90)))
		{
			return 0;
		}
	}
	return 1;
}

/*
	Name: function_10cd71b
	Namespace: namespace_d9c8cca1
	Checksum: 0x4A6A2932
	Offset: 0x1180
	Size: 0x6B7
	Parameters: 2
	Flags: None
*/
function function_10cd71b(decoy, potentialTargets)
{
	mins = VectorScale((1, 1, 1), 1000000);
	maxs = VectorScale((-1, -1, -1), 1000000);
	playerForward = AnglesToForward(self getPlayerAngles());
	playerForward = (playerForward[0], playerForward[1], 0);
	var_81ca05ac = AnglesToRight(self getPlayerAngles());
	var_81ca05ac = (var_81ca05ac[0], var_81ca05ac[1], 0);
	foreach(target in potentialTargets)
	{
		origin = target.origin;
		mins = function_44a2ae85(origin, mins);
		maxs = function_b72ba417(origin, maxs);
	}
	RangeMax = self.origin + playerForward * GetDvarInt("scr_misdirection_no_target_max_distance", 675);
	maxs = function_b72ba417(RangeMax, maxs);
	RangeMin = self.origin + playerForward * GetDvarInt("scr_misdirection_min_distance", 200);
	mins = function_44a2ae85(RangeMin, mins);
	center = maxs + mins * 0.5;
	var_412aa3ee = Distance(center, self.origin);
	var_eec44088 = VectorNormalize(center - self.origin);
	var_b333c85b = self.origin + var_eec44088 * var_412aa3ee;
	var_6a0945f2 = var_b333c85b;
	var_cfaafed4 = 6;
	var_539aaa1a = 0;
	step = var_81ca05ac * GetDvarInt("scr_misdirection_decoy_spacing", 90);
	while(var_cfaafed4 > 0)
	{
		left = var_6a0945f2 + 6 - var_cfaafed4 * step;
		v_ground = bullettrace(left + VectorScale((0, 0, 1), 72), left + VectorScale((0, 0, -1), 2048), 0, undefined, 1)["position"];
		left = (left[0], left[1], v_ground[2]);
		v_trace = bullettrace(self.origin + VectorScale((0, 0, 1), 24), left + VectorScale((0, 0, 1), 24), 1, self)["position"];
		dir = VectorNormalize(v_trace - self.origin);
		v_trace = v_trace + -48 * dir;
		v_ground = bullettrace(v_trace, v_trace + VectorScale((0, 0, -1), 2048), 0, undefined, 1)["position"];
		if(self function_7074260(v_ground))
		{
			var_b333c85b = v_ground;
			break;
		}
		right = var_6a0945f2 - 6 - var_cfaafed4 * step;
		v_ground = bullettrace(right + VectorScale((0, 0, 1), 72), right + VectorScale((0, 0, -1), 2048), 0, undefined, 1)["position"];
		right = (right[0], right[1], v_ground[2]);
		v_trace = bullettrace(self.origin + VectorScale((0, 0, 1), 24), right + VectorScale((0, 0, 1), 24), 1, self)["position"];
		dir = VectorNormalize(v_trace - self.origin);
		v_trace = v_trace + -48 * dir;
		v_ground = bullettrace(v_trace, v_trace + VectorScale((0, 0, -1), 2048), 0, undefined, 1)["position"];
		if(self function_7074260(v_ground))
		{
			var_b333c85b = v_ground;
			break;
		}
		var_cfaafed4--;
	}
	decoy.origin = var_b333c85b + VectorScale((0, 0, 1), 64);
}

/*
	Name: InitThreatBias
	Namespace: namespace_d9c8cca1
	Checksum: 0x1E70FAEF
	Offset: 0x1840
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
		if(ai.ignoreDecoy === 1)
		{
			ai function_cceed911(self);
		}
	}
}

/*
	Name: function_4adc7dc8
	Namespace: namespace_d9c8cca1
	Checksum: 0xCA2770FF
	Offset: 0x1920
	Size: 0x387
	Parameters: 1
	Flags: None
*/
function function_4adc7dc8(potentialTargets)
{
	decoy = spawn("script_model", self.origin);
	if(!isdefined(decoy))
	{
		return undefined;
	}
	decoy.angles = self.angles;
	decoy SetModel("tag_origin");
	decoy MakeSentient();
	decoy.team = self.team;
	decoy.var_e42818a3 = 1;
	decoy ghost();
	decoy InitThreatBias();
	foreach(target in potentialTargets)
	{
		v_trace = bullettrace(self.origin + VectorScale((0, 0, 1), 24), target.origin + VectorScale((0, 0, 1), 24), 1, self)["position"];
		dir = VectorNormalize(v_trace - self.origin);
		v_trace = v_trace + -48 * dir;
		v_ground = bullettrace(v_trace, v_trace + VectorScale((0, 0, -1), 2048), 0, target, 1)["position"];
		if(self function_7074260(v_ground) == 0)
		{
			continue;
		}
		decoy.origin = v_ground + VectorScale((0, 0, 1), 64);
		decoy.var_faa77c1d = target;
		break;
	}
	if(!isdefined(decoy.var_faa77c1d))
	{
		self function_10cd71b(decoy, potentialTargets);
	}
	decoy notsolid();
	decoy.notsolid = 1;
	decoy notify("end_nudge_collision");
	decoy.ignoreall = 1;
	decoy.takedamage = 0;
	decoy.health = 10000;
	decoy.goalRadius = 36;
	decoy.goalHeight = 36;
	decoy.good_melee_target = 1;
	return decoy;
}

/*
	Name: function_7ca046a9
	Namespace: namespace_d9c8cca1
	Checksum: 0xCCE458D8
	Offset: 0x1CB0
	Size: 0x123
	Parameters: 2
	Flags: None
*/
function function_7ca046a9(lifetime, player)
{
	self notify("hash_7ca046a9");
	self endon("hash_7ca046a9");
	self show();
	self clientfield::set("makedecoy", 1);
	waitTime = lifetime + RandomFloatRange(1, 3);
	if(GetDvarInt("scr_misdirection_debug", 0))
	{
		level thread namespace_afd2f70b::function_a0e51d80(self.origin, waitTime, 20, (1, 0, 0));
	}
	wait(waitTime);
	self clientfield::set("makedecoy", 0);
	util::wait_network_frame();
	self delete();
}

/*
	Name: function_44a2ae85
	Namespace: namespace_d9c8cca1
	Checksum: 0xCB981DFC
	Offset: 0x1DE0
	Size: 0xCD
	Parameters: 2
	Flags: None
*/
function function_44a2ae85(vec, mins)
{
	if(vec[0] < mins[0])
	{
		mins = (vec[0], mins[1], mins[2]);
	}
	if(vec[1] < mins[1])
	{
		mins = (mins[0], vec[1], mins[2]);
	}
	if(vec[2] < mins[2])
	{
		mins = (mins[0], mins[1], vec[2]);
	}
	return mins;
}

/*
	Name: function_b72ba417
	Namespace: namespace_d9c8cca1
	Checksum: 0x49ACDF7B
	Offset: 0x1EB8
	Size: 0xCD
	Parameters: 2
	Flags: None
*/
function function_b72ba417(vec, maxs)
{
	if(vec[0] > maxs[0])
	{
		maxs = (vec[0], maxs[1], maxs[2]);
	}
	if(vec[1] > maxs[1])
	{
		maxs = (maxs[0], vec[1], maxs[2]);
	}
	if(vec[2] > maxs[2])
	{
		maxs = (maxs[0], maxs[1], vec[2]);
	}
	return maxs;
}

