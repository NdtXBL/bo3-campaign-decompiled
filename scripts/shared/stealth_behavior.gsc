#using scripts\shared\ai_shared;
#using scripts\shared\stealth_actor;
#using scripts\shared\stealth_aware;
#using scripts\shared\stealth_player;
#using scripts\shared\stealth_vo;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;

#namespace namespace_7829c86f;

/*
	Name: function_de77b9e6
	Namespace: namespace_7829c86f
	Checksum: 0x8787611
	Offset: 0x1A8
	Size: 0xCB
	Parameters: 1
	Flags: None
*/
function function_de77b9e6(var_904f1fb9)
{
	if(!IsActor(self) || !isalive(self))
	{
		return;
	}
	v_origin = var_904f1fb9.parms[0];
	e_originator = var_904f1fb9.parms[1];
	str_type = var_904f1fb9.parms[2];
	if(isdefined(v_origin))
	{
		self thread function_b78807a5(v_origin, e_originator, str_type);
	}
}

/*
	Name: function_a1dec77
	Namespace: namespace_7829c86f
	Checksum: 0x32DA9A7D
	Offset: 0x280
	Size: 0x257
	Parameters: 3
	Flags: None
*/
function function_a1dec77(v_origin, var_3c58247b, var_9b351631)
{
	nearestPoint = undefined;
	goalPoint = undefined;
	searchRadius = var_3c58247b * 0.5;
	var_7b342bc5 = 0;
	while(!isdefined(nearestPoint) && var_7b342bc5 < 4)
	{
		var_7b342bc5++;
		searchRadius = searchRadius * 2;
		nearestPoint = GetClosestPointOnNavMesh(v_origin, searchRadius, 30);
	}
	if(isdefined(nearestPoint))
	{
		pointList = util::PositionQuery_PointArray(v_origin, 0, searchRadius + 50, 70, 64);
		valid = 0;
		var_2b89b3df = DistanceSquared(self.origin, v_origin);
		foreach(point in pointList)
		{
			distSq = DistanceSquared(point, v_origin);
			if(var_2b89b3df > 256 && distSq > var_2b89b3df)
			{
				continue;
			}
			valid = valid + 1;
			chance = 1 / valid;
			if(RandomFloatRange(0, 1) <= chance)
			{
				goalPoint = point;
			}
		}
	}
	return goalPoint;
}

/*
	Name: function_2481442d
	Namespace: namespace_7829c86f
	Checksum: 0x399BFF44
	Offset: 0x4E0
	Size: 0x1D
	Parameters: 0
	Flags: None
*/
function function_2481442d()
{
	self.stealth.investigating = undefined;
	self notify("hash_2481442d");
}

/*
	Name: function_b78807a5
	Namespace: namespace_7829c86f
	Checksum: 0x81284246
	Offset: 0x508
	Size: 0x3BB
	Parameters: 3
	Flags: None
*/
function function_b78807a5(v_origin, e_originator, str_type)
{
	self notify("hash_b78807a5");
	self endon("hash_b78807a5");
	self endon("death");
	self endon("hash_94ff6d85");
	self endon("hash_2481442d");
	/#
		Assert(self namespace_aec89ff8::enabled());
	#/
	if(!isdefined(str_type))
	{
		str_type = "default";
	}
	self StopAnimScripted();
	self.stealth.investigating = str_type;
	self notify("hash_565daac6");
	self LaserOff();
	if(isPlayer(e_originator) && e_originator namespace_10443be6::enabled())
	{
		e_originator namespace_234a4910::function_e3ae87b3("investigating", self, 1);
	}
	var_9f439081 = undefined;
	goalRadius = 128;
	var_d0808a0e = GetTime() + RandomFloatRange(25, 30) * 1000;
	if(str_type == "infinite")
	{
		var_d0808a0e = -1;
	}
	else if(str_type == "quick")
	{
		var_d0808a0e = GetTime() + RandomFloatRange(10, 15) * 1000;
	}
	if(var_d0808a0e > 0)
	{
		self thread function_628d42af(var_d0808a0e - GetTime() / 1000);
	}
	self notify("hash_234a4910", "alert");
	if(isdefined(self.patroller) && self.patroller)
	{
		self ai::end_and_clean_patrol_behaviors();
	}
	result = "";
	while(var_d0808a0e < 0 || GetTime() < var_d0808a0e && isdefined(v_origin))
	{
		var_ee99fa5c = function_a1dec77(v_origin, 256, result);
		if(isdefined(var_ee99fa5c))
		{
			/#
				self.stealth.debug_msg = undefined;
			#/
			result = self function_edba2e78(var_ee99fa5c);
			if(result == "bad_path")
			{
				/#
					self.stealth.debug_msg = "Dev Block strings are not supported";
				#/
				v_origin = self.origin;
				wait(1);
			}
			else
			{
				self waittill("stealthIdleTerminate");
			}
		}
		else
		{
			self.stealth.debug_msg = "Dev Block strings are not supported";
			v_origin = self.origin;
			wait(1);
		}
		/#
		#/
	}
	self namespace_80045451::function_a2429809("unaware");
	self function_2481442d();
}

/*
	Name: function_628d42af
	Namespace: namespace_7829c86f
	Checksum: 0xD9DB9F01
	Offset: 0x8D0
	Size: 0x93
	Parameters: 1
	Flags: None
*/
function function_628d42af(delaySeconds)
{
	self endon("hash_b78807a5");
	self endon("death");
	self endon("hash_94ff6d85");
	self endon("hash_2481442d");
	wait(delaySeconds);
	self.var_f706c2c = 1;
	self notify("hash_234a4910", "resume");
	self namespace_80045451::function_a2429809("unaware");
	self function_2481442d();
}

/*
	Name: function_edba2e78
	Namespace: namespace_7829c86f
	Checksum: 0xF727AAC1
	Offset: 0x970
	Size: 0xFD
	Parameters: 1
	Flags: None
*/
function function_edba2e78(v_origin)
{
	self notify("hash_edba2e78");
	self endon("hash_edba2e78");
	self endon("hash_b78807a5");
	self endon("death");
	self endon("hash_94ff6d85");
	/#
		Assert(self namespace_aec89ff8::enabled());
	#/
	self setgoalpos(v_origin, 1, 8);
	/#
		self.stealth.var_edba2e78 = v_origin;
	#/
	result = self util::waittill_any_timeout(30, "goal", "near_goal", "bad_path");
	/#
		self.stealth.var_edba2e78 = undefined;
	#/
	return result;
}

