#using scripts\shared\stealth;
#using scripts\shared\stealth_aware;
#using scripts\shared\stealth_debug;
#using scripts\shared\stealth_player;
#using scripts\shared\stealth_tagging;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;

#namespace namespace_8312dbf;

/*
	Name: init
	Namespace: namespace_8312dbf
	Checksum: 0xF7AA6BCC
	Offset: 0x1E8
	Size: 0xE3
	Parameters: 0
	Flags: None
*/
function init()
{
	/#
		Assert(isdefined(self.stealth));
	#/
	/#
		Assert(!isdefined(self.stealth.status));
	#/
	if(!isdefined(self.stealth.status))
	{
		self.stealth.status = spawnstruct();
	}
	self.stealth.status.icons = [];
	self.stealth.status.var_2eb71ab0 = undefined;
	self thread function_f9fc005b();
	self thread function_6789ff4f();
}

/*
	Name: enabled
	Namespace: namespace_8312dbf
	Checksum: 0x9045B9BE
	Offset: 0x2D8
	Size: 0x1F
	Parameters: 0
	Flags: None
*/
function enabled()
{
	return isdefined(self.stealth) && isdefined(self.stealth.status);
}

/*
	Name: function_71d2217b
	Namespace: namespace_8312dbf
	Checksum: 0xF1ACBFDA
	Offset: 0x300
	Size: 0x16F
	Parameters: 4
	Flags: None
*/
function function_71d2217b(str_shader, v_origin, z_offset, var_32b38549)
{
	var_88ac910a = undefined;
	if(!isdefined(var_32b38549))
	{
		var_88ac910a = NewHudElem();
	}
	else
	{
		var_88ac910a = newClientHudElem(var_32b38549);
	}
	var_88ac910a.horzAlign = "right";
	var_88ac910a.vertAlign = "middle";
	var_88ac910a.sort = 2;
	var_88ac910a SetShader(str_shader, 5, 5);
	var_88ac910a setWaypoint(1, str_shader, 0, 0);
	var_88ac910a.hidewheninmenu = 1;
	var_88ac910a.immunetodemogamehudsettings = 1;
	var_88ac910a.x = v_origin[0];
	var_88ac910a.y = v_origin[1];
	var_88ac910a.z = v_origin[2] + z_offset;
	return var_88ac910a;
}

/*
	Name: function_cf9dd532
	Namespace: namespace_8312dbf
	Checksum: 0xBD5D5E0B
	Offset: 0x478
	Size: 0x1BD
	Parameters: 2
	Flags: None
*/
function function_cf9dd532(var_32b38549, var_f69107b4)
{
	if(!isdefined(var_f69107b4))
	{
		var_f69107b4 = 0;
	}
	index = -1;
	if(isdefined(var_32b38549))
	{
		index = var_32b38549 GetEntityNumber() + var_f69107b4;
	}
	if(!isdefined(self.stealth.status.var_2eb71ab0))
	{
		ent = util::spawn_model("tag_origin", self.origin + VectorScale((0, 0, 1), 92), (0, 0, 0));
		ent LinkTo(self);
		self.stealth.status.var_2eb71ab0 = ent;
	}
	if(!isdefined(self.stealth.status.icons[index]))
	{
		icon = function_71d2217b("white_stealth_arrow_01", self.stealth.status.var_2eb71ab0.origin, 16, var_32b38549);
		icon SetTargetEnt(self.stealth.status.var_2eb71ab0);
		self.stealth.status.icons[index] = icon;
	}
}

/*
	Name: function_180adb28
	Namespace: namespace_8312dbf
	Checksum: 0xEA88E74B
	Offset: 0x640
	Size: 0x229
	Parameters: 2
	Flags: None
*/
function function_180adb28(index, var_f69107b4)
{
	if(!isdefined(self) || !isdefined(self.stealth) || !isdefined(self.stealth.status) || !isdefined(self.stealth.status.icons))
	{
		return;
	}
	if(!isdefined(var_f69107b4))
	{
		var_f69107b4 = 0;
	}
	if(isdefined(index))
	{
		if(isdefined(self.stealth.status.icons[index]))
		{
			self.stealth.status.icons[index] destroy();
			self.stealth.status.icons[index] = undefined;
		}
	}
	else
	{
		foreach(icon in self.stealth.status.icons)
		{
			if(isdefined(icon))
			{
				icon destroy();
			}
		}
		self.stealth.status.icons = [];
	}
	if(isdefined(self.stealth.status.var_2eb71ab0) && self.stealth.status.icons.size == 0)
	{
		self.stealth.status.var_2eb71ab0 delete();
		self.stealth.status.var_2eb71ab0 = undefined;
	}
}

/*
	Name: function_6789ff4f
	Namespace: namespace_8312dbf
	Checksum: 0x2CCD684
	Offset: 0x878
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_6789ff4f()
{
	self endon("hash_94ff6d85");
	self endon("death");
	while(1)
	{
		util::waittill_any("stealth_sight_start", "alert");
		while(isalive(self))
		{
			if(!self update())
			{
				break;
			}
			wait(0.05);
		}
	}
}

/*
	Name: function_16c0c92e
	Namespace: namespace_8312dbf
	Checksum: 0x520D4F55
	Offset: 0x910
	Size: 0x6D
	Parameters: 1
	Flags: None
*/
function function_16c0c92e(var_4a8372a9)
{
	if(var_4a8372a9 < 0)
	{
		var_4a8372a9 = 0;
	}
	if(var_4a8372a9 > 1)
	{
		var_4a8372a9 = 1;
	}
	return "white_stealth_arrow_0" + 1 + Int(7 * var_4a8372a9);
}

/*
	Name: update
	Namespace: namespace_8312dbf
	Checksum: 0xD267121C
	Offset: 0x988
	Size: 0x5BD
	Parameters: 0
	Flags: None
*/
function update()
{
	var_4bf6d951 = 0;
	var_d47e142e = GetPlayers();
	foreach(player in var_d47e142e)
	{
		index = player GetEntityNumber();
		var_1f013b13 = self function_99ada8a(player);
		awareness = self namespace_80045451::function_739525d();
		var_dc5d33fe = awareness == "combat" || awareness == "high_alert";
		var_98e4a612 = var_dc5d33fe && isdefined(self.stealth.var_c49c37ed[index]);
		var_a0982047 = isdefined(self.stealth.var_d1b49f30[index]);
		var_416f4d35 = var_1f013b13 > 0;
		var_44b1a6c2 = self stealth::can_see(player) && !self.ignoreall;
		if(!isdefined(self.silenced) && self.silenced && player namespace_10443be6::enabled())
		{
			if(var_98e4a612)
			{
				player namespace_10443be6::function_f5f81ff0(self, var_1f013b13);
			}
			if(isdefined(self.stealth.var_7a604d90[index]) || var_416f4d35)
			{
				player thread namespace_10443be6::function_3cd0dcd(self, var_44b1a6c2, awareness);
				if(var_98e4a612 || var_a0982047)
				{
					player namespace_10443be6::function_cd81f5b8(self, 1);
				}
				else
				{
					player namespace_10443be6::function_cd81f5b8(self, var_1f013b13);
				}
				var_4bf6d951 = var_4bf6d951 || var_98e4a612 || var_a0982047 || var_416f4d35;
			}
		}
		var_c1cdaaeb = 0;
		/#
			var_c1cdaaeb = namespace_e449108e::enabled();
		#/
		if(GetDvarInt("stealth_display", 1) == 2 || var_c1cdaaeb && (var_416f4d35 || var_dc5d33fe))
		{
			self function_cf9dd532(player);
			var_4bf6d951 = 1;
			str_shader = "white_stealth_arrow_01";
			color = stealth::function_b7ff7c00("unaware");
			if(!var_98e4a612 && var_dc5d33fe)
			{
				color = stealth::function_b7ff7c00(awareness);
			}
			else if(self namespace_80045451::function_739525d() == "unaware")
			{
				str_shader = function_16c0c92e(var_1f013b13);
				color = stealth::function_b7ff7c00(awareness);
			}
			else
			{
				str_shader = function_16c0c92e(var_1f013b13);
				color = stealth::function_b7ff7c00(awareness);
			}
			if(isdefined(self.stealth.status.var_2eb71ab0) && isdefined(self.stealth.status.icons[index]))
			{
				self.stealth.status.icons[index] SetTargetEnt(self.stealth.status.var_2eb71ab0);
				self.stealth.status.icons[index] SetShader(str_shader, 5, 5);
				self.stealth.status.icons[index] setWaypoint(0, str_shader, 0, 0);
				self.stealth.status.icons[index].color = color;
			}
			continue;
		}
		if(isdefined(self.stealth.status.icons[index]))
		{
			self function_180adb28(index);
		}
	}
	return var_4bf6d951;
}

/*
	Name: function_f9fc005b
	Namespace: namespace_8312dbf
	Checksum: 0x682B69F9
	Offset: 0xF50
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_f9fc005b()
{
	self notify("hash_f51e1ce9");
	self endon("hash_f51e1ce9");
	self util::waittill_any("death");
	self function_180adb28();
}

