#using scripts\cp\_oed;
#using scripts\shared\clientfield_shared;
#using scripts\shared\stealth;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;

#namespace namespace_f917b91a;

/*
	Name: init
	Namespace: namespace_f917b91a
	Checksum: 0x99EC1590
	Offset: 0x148
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function init()
{
}

/*
	Name: enabled
	Namespace: namespace_f917b91a
	Checksum: 0xCE06E423
	Offset: 0x158
	Size: 0x1F
	Parameters: 0
	Flags: None
*/
function enabled()
{
	return isdefined(self.stealth) && isdefined(self.stealth.var_e082d3be);
}

/*
	Name: function_b6579d92
	Namespace: namespace_f917b91a
	Checksum: 0xE5F3D06A
	Offset: 0x180
	Size: 0x55
	Parameters: 0
	Flags: None
*/
function function_b6579d92()
{
	return isdefined(self.stealth) && isdefined(self.stealth.var_e082d3be) && (isdefined(self.stealth.var_e082d3be.tagged) && self.stealth.var_e082d3be.tagged);
}

/*
	Name: function_fe19d58d
	Namespace: namespace_f917b91a
	Checksum: 0x93D85160
	Offset: 0x1E0
	Size: 0x57F
	Parameters: 0
	Flags: None
*/
function function_fe19d58d()
{
	/#
		Assert(isPlayer(self));
	#/
	/#
		Assert(self enabled());
	#/
	self endon("disconnect");
	timeInc = 0.25;
	wait(RandomFloatRange(0.05, 1));
	while(1)
	{
		if(self PlayerAds() > 0.3)
		{
			var_cdb312b = AnglesToForward(self getPlayerAngles());
			var_10387988 = self GetPlayerCameraPos();
			rangesq = self.stealth.var_e082d3be.range * self.stealth.var_e082d3be.range;
			trace = bullettrace(var_10387988, var_10387988 + var_cdb312b * 32000, 1, self);
			foreach(enemy in level.stealth.enemies[self.team])
			{
				if(!isdefined(enemy) || !isalive(enemy))
				{
					continue;
				}
				if(!enemy enabled() || (isdefined(enemy.stealth.var_e082d3be.tagged) && enemy.stealth.var_e082d3be.tagged))
				{
					continue;
				}
				if(!IsActor(enemy))
				{
					continue;
				}
				var_3f26abe = enemy GetEntityNumber();
				var_74aa899f = isdefined(trace["entity"]) && trace["entity"] == enemy;
				var_dc78c986 = 0;
				if(!var_74aa899f)
				{
					distSq = DistanceSquared(enemy.origin, var_10387988);
					var_36e15574 = VectorNormalize(enemy.origin + VectorScale((0, 0, 1), 30) - var_10387988);
					if(distSq < rangesq && VectorDot(var_36e15574, var_cdb312b) > self.stealth.var_e082d3be.var_5c4da700)
					{
						var_dc78c986 = self function_980170b6(var_10387988, enemy);
					}
				}
				if(var_74aa899f || var_dc78c986)
				{
					if(!isdefined(self.stealth.var_e082d3be.var_96a12af4[var_3f26abe]))
					{
						self.stealth.var_e082d3be.var_96a12af4[var_3f26abe] = 0;
					}
					self.stealth.var_e082d3be.var_96a12af4[var_3f26abe] = self.stealth.var_e082d3be.var_96a12af4[var_3f26abe] + 1 / self.stealth.var_e082d3be.var_86ad8ae5 * timeInc;
					if(self.stealth.var_e082d3be.var_96a12af4[var_3f26abe] >= 1)
					{
						if(isPlayer(self))
						{
							self playsoundtoplayer("uin_gadget_fully_charged", self);
						}
						enemy thread function_a10a834e(1);
					}
					continue;
				}
				if(isdefined(self.stealth.var_e082d3be.var_96a12af4[var_3f26abe]))
				{
					self.stealth.var_e082d3be.var_96a12af4[var_3f26abe] = undefined;
				}
			}
		}
		wait(timeInc);
	}
}

/*
	Name: function_a10a834e
	Namespace: namespace_f917b91a
	Checksum: 0xDF939E08
	Offset: 0x768
	Size: 0xBB
	Parameters: 1
	Flags: None
*/
function function_a10a834e(tagged)
{
	if(isalive(self))
	{
		self namespace_16f9ecd3::function_6e4b8a4f(tagged);
		if(isdefined(self.stealth) && isdefined(self.stealth.var_e082d3be))
		{
			if(!tagged)
			{
				self.stealth.var_e082d3be.tagged = undefined;
			}
			else
			{
				self.stealth.var_e082d3be.tagged = tagged;
			}
		}
		self clientfield::set("tagged", tagged);
	}
}

/*
	Name: function_980170b6
	Namespace: namespace_f917b91a
	Checksum: 0xD87D8997
	Offset: 0x830
	Size: 0x113
	Parameters: 2
	Flags: None
*/
function function_980170b6(var_10387988, enemy)
{
	result = 0;
	if(IsActor(enemy))
	{
		if(!result && SightTracePassed(var_10387988, enemy GetTagOrigin("j_head"), 0, self))
		{
			result = 1;
		}
		if(!result && SightTracePassed(var_10387988, enemy GetTagOrigin("j_spinelower"), 0, self))
		{
			result = 1;
		}
	}
	if(!result && SightTracePassed(var_10387988, enemy.origin, 0, self))
	{
		result = 1;
	}
	return result;
}

