#using scripts\shared\stealth;
#using scripts\shared\stealth_actor;
#using scripts\shared\stealth_aware;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;

#namespace namespace_e449108e;

/*
	Name: init
	Namespace: namespace_e449108e
	Checksum: 0x8E310234
	Offset: 0x110
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function init()
{
	/#
		if(isdefined(self.stealth))
		{
			self.stealth.var_6926a825 = "Dev Block strings are not supported";
		}
		var_c39a9f3e = GetDvarInt("Dev Block strings are not supported", -1);
		if(var_c39a9f3e == -1)
		{
			SetDvar("Dev Block strings are not supported", 0);
		}
	#/
}

/*
	Name: enabled
	Namespace: namespace_e449108e
	Checksum: 0xA5846DAA
	Offset: 0x1A0
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function enabled()
{
	/#
		return GetDvarInt("Dev Block strings are not supported", 0);
	#/
}

/*
	Name: function_148c43f
	Namespace: namespace_e449108e
	Checksum: 0x234AE209
	Offset: 0x1D0
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_148c43f()
{
	/#
		if(self == level)
		{
			self thread function_70b08fc4();
		}
		if(IsActor(self) && enabled())
		{
			self thread function_53d6792c();
			self thread function_2dd1012();
		}
	#/
}

/*
	Name: function_70b08fc4
	Namespace: namespace_e449108e
	Checksum: 0xE66D7C4F
	Offset: 0x260
	Size: 0x239
	Parameters: 0
	Flags: None
*/
function function_70b08fc4()
{
	/#
		self notify("hash_70b08fc4");
		self endon("hash_70b08fc4");
		var_4809e2a9 = enabled();
		while(1)
		{
			if(enabled() != var_4809e2a9)
			{
				entities = GetEntArray();
				if(enabled())
				{
					foreach(entity in entities)
					{
						if(IsActor(entity) && entity namespace_aec89ff8::enabled())
						{
							entity thread function_53d6792c();
							entity thread function_2dd1012();
						}
					}
					break;
				}
				foreach(entity in entities)
				{
					if(IsActor(entity) && entity namespace_aec89ff8::enabled())
					{
						entity notify("hash_53d6792c");
						entity notify("hash_2dd1012");
					}
				}
				var_4809e2a9 = enabled();
			}
			wait(1);
		}
	#/
}

/*
	Name: function_53d6792c
	Namespace: namespace_e449108e
	Checksum: 0xEE996C91
	Offset: 0x4A8
	Size: 0x397
	Parameters: 0
	Flags: None
*/
function function_53d6792c()
{
	/#
		self notify("hash_53d6792c");
		self endon("hash_53d6792c");
		self endon("death");
		self endon("hash_94ff6d85");
		while(1)
		{
			if(enabled())
			{
				origin = self.origin;
				print3d(origin, "Dev Block strings are not supported" + self.awarenesslevelcurrent, stealth::function_b7ff7c00(self.awarenesslevelcurrent), 1, 0.5, 1);
				origin = (origin[0], origin[1], origin[2] + 15);
				if(isdefined(self.stealth.var_6926a825) && self.stealth.var_6926a825 != "Dev Block strings are not supported" && self.awarenesslevelcurrent != "Dev Block strings are not supported")
				{
					print3d(origin, self.stealth.var_6926a825, stealth::function_b7ff7c00(self.awarenesslevelcurrent), 1, 0.5, 1);
					origin = (origin[0], origin[1], origin[2] + 15);
				}
				if(isdefined(self.enemy))
				{
					print3d(origin, "Dev Block strings are not supported" + self.enemy GetEntityNumber() + "Dev Block strings are not supported", stealth::function_b7ff7c00(self.awarenesslevelcurrent), 1, 0.5, 1);
					origin = (origin[0], origin[1], origin[2] + 15);
				}
				if(isdefined(self.stealth.debug_msg) && self.stealth.debug_msg != "Dev Block strings are not supported")
				{
					print3d(origin, self.stealth.debug_msg, stealth::function_b7ff7c00(self.awarenesslevelcurrent), 1, 0.5, 1);
					origin = (origin[0], origin[1], origin[2] + 15);
				}
				if(isdefined(self.stealth.var_edba2e78))
				{
					box(self.stealth.var_edba2e78, VectorScale((-1, -1, 0), 16), (16, 16, 60), 0, (1, 0, 1));
					line(self.origin + VectorScale((0, 0, 1), 80), self.stealth.var_edba2e78 + VectorScale((0, 0, 1), 60), (1, 0, 1));
				}
			}
			wait(0.05);
		}
	#/
}

/*
	Name: function_2dd1012
	Namespace: namespace_e449108e
	Checksum: 0xC94171C7
	Offset: 0x848
	Size: 0x2F7
	Parameters: 0
	Flags: None
*/
function function_2dd1012()
{
	/#
		self notify("hash_2dd1012");
		self endon("hash_2dd1012");
		self endon("death");
		self endon("hash_94ff6d85");
		if(!IsActor(self))
		{
			return;
		}
		wait(0.05);
		while(1)
		{
			wait(0.05);
			if(enabled())
			{
				awareness = self namespace_80045451::function_739525d();
				parm = level.stealth.parm.awareness[awareness];
				if(enabled() > 1)
				{
					var_80364fb2 = (0, self GetTagAngles("Dev Block strings are not supported")[1], 0);
					color = VectorScale((1, 1, 1), 0.5);
					foreach(enemy in level.stealth.enemies[self.team])
					{
						if(self cansee(enemy))
						{
							color = (1, 0.5, 0);
							break;
						}
					}
					if(awareness != "Dev Block strings are not supported")
					{
						self function_2188901b(self.origin + VectorScale((0, 0, 1), 16), var_80364fb2, self.fovcosine, self.var_304f0f57, sqrt(self.maxsightdistsqrd), color);
					}
				}
				var_eb3d20f0 = self GetEventPointOfInterest();
				if(isdefined(var_eb3d20f0))
				{
					color = stealth::function_b7ff7c00(awareness);
					line(self.origin, var_eb3d20f0, color, 0, 1);
					debugstar(var_eb3d20f0, 1, color);
				}
			}
		}
	#/
}

/*
	Name: function_2188901b
	Namespace: namespace_e449108e
	Checksum: 0x65559CE3
	Offset: 0xB48
	Size: 0x3F7
	Parameters: 6
	Flags: None
*/
function function_2188901b(origin, angles, fovcosine, var_304f0f57, var_be5890aa, color)
{
	/#
		var_b5f739f1 = ACos(fovcosine);
		var_d69e0db2 = ACos(var_304f0f57);
		height = Tan(var_d69e0db2) * var_be5890aa;
		fwd = AnglesToForward((0, angles[1], 0));
		var_cb5028c4 = AnglesToForward((0, angles[1] + var_b5f739f1, 0));
		var_4e576457 = AnglesToForward((0, angles[1] - var_b5f739f1, 0));
		v_left_end = origin + var_cb5028c4 * var_be5890aa;
		v_right_end = origin + var_4e576457 * var_be5890aa;
		util::debug_line(origin, v_left_end, color, 1, 1, 1);
		util::debug_line(origin, v_right_end, color, 1, 1, 1);
		var_3a111617 = origin + fwd * var_be5890aa;
		var_140e9bae = origin + fwd * var_be5890aa + (0, 0, height);
		util::debug_line(var_3a111617, var_140e9bae, color, 1, 1, 1);
		util::debug_line(var_140e9bae, origin, color, 1, 1, 1);
		var_876d8fae = [];
		var_27175f0d = var_b5f739f1 * 2 / 10;
		for(j = 1; j < 10 - 1; j++)
		{
			n_angle = angles[1] - var_b5f739f1 + var_27175f0d * j;
			v_dir = AnglesToForward((0, n_angle, 0));
			var_876d8fae[var_876d8fae.size] = v_dir * var_be5890aa + origin;
		}
		var_876d8fae[var_876d8fae.size] = v_left_end;
		var_be3a488f = v_right_end;
		var_2233fb24 = undefined;
		for(j = 0; j < var_876d8fae.size; j++)
		{
			var_2233fb24 = var_876d8fae[j];
			util::debug_line(var_be3a488f, var_2233fb24, color, 1, 1, 1);
			var_be3a488f = var_2233fb24;
		}
	#/
}

/*
	Name: function_1c1f41ef
	Namespace: namespace_e449108e
	Checksum: 0xC53DE8F7
	Offset: 0xF48
	Size: 0x477
	Parameters: 6
	Flags: None
*/
function function_1c1f41ef(text, color, alpha, scale, origin, life)
{
	/#
		spacing = 10;
		var_8426578 = 3;
		if(!isdefined(origin) || !isdefined(text))
		{
			return;
		}
		start = GetTime();
		if(!isdefined(self.stealth.var_6e0fda73))
		{
			self.stealth.var_6e0fda73 = [];
			self.stealth.var_53fc8847 = -1;
		}
		self.stealth.var_53fc8847++;
		var_f83a9908 = self.stealth.var_53fc8847;
		self.stealth.var_6e0fda73[var_f83a9908] = origin;
		for(var_7d474c65 = var_f83a9908 - 1; isdefined(self.stealth.var_6e0fda73[var_7d474c65]);  = var_f83a9908 - 1)
		{
			delta = self.stealth.var_6e0fda73[var_7d474c65][2] - self.stealth.var_6e0fda73[var_7d474c65 + 1][2];
			if(delta >= spacing)
			{
				break;
			}
			self.stealth.var_6e0fda73[var_7d474c65] = (self.stealth.var_6e0fda73[var_7d474c65][0], self.stealth.var_6e0fda73[var_7d474c65][1], self.stealth.var_6e0fda73[var_7d474c65 + 1][2] + spacing + delta);
		}
		drawOrigin = self.stealth.var_6e0fda73[var_f83a9908];
		while(GetTime() - start < life * 1000)
		{
			wait(0.05);
			if(isdefined(self) && isalive(self) && isdefined(self.stealth) && isdefined(self.stealth.var_6e0fda73) && isdefined(self.stealth.var_6e0fda73[var_f83a9908]))
			{
				drawOrigin = self.stealth.var_6e0fda73[var_f83a9908];
			}
			print3d(drawOrigin, text, color, alpha, scale, 1);
			drawOrigin = (drawOrigin[0], drawOrigin[1], drawOrigin[2] + var_8426578);
			if(isdefined(self) && isalive(self) && isdefined(self.stealth) && isdefined(self.stealth.var_6e0fda73) && isdefined(self.stealth.var_6e0fda73[var_f83a9908]))
			{
				self.stealth.var_6e0fda73[var_f83a9908] = (self.stealth.var_6e0fda73[var_f83a9908][0], self.stealth.var_6e0fda73[var_f83a9908][1], self.stealth.var_6e0fda73[var_f83a9908][2] + var_8426578);
			}
		}
		if(isdefined(self) && isalive(self) && isdefined(self.stealth) && isdefined(self.stealth.var_6e0fda73) && isdefined(self.stealth.var_6e0fda73[var_f83a9908]))
		{
			self.stealth.var_6e0fda73[var_f83a9908] = undefined;
		}
	#/
}

/*
	Name: debug_text
	Namespace: namespace_e449108e
	Checksum: 0x2DB4FEDC
	Offset: 0x13C8
	Size: 0xAD
	Parameters: 1
	Flags: None
*/
function debug_text(var_37b8a117)
{
	/#
		if(!isdefined(var_37b8a117))
		{
			return "Dev Block strings are not supported";
		}
		if(IsWeapon(var_37b8a117))
		{
			return "Dev Block strings are not supported" + var_37b8a117.name + "Dev Block strings are not supported";
		}
		if(IsEntity(var_37b8a117))
		{
			return "Dev Block strings are not supported" + var_37b8a117 GetEntityNumber() + "Dev Block strings are not supported";
		}
		return "Dev Block strings are not supported" + var_37b8a117;
	#/
}

