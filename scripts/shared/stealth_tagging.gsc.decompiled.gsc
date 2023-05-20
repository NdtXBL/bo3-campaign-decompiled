#using scripts\cp\_oed;
#using scripts\shared\clientfield_shared;
#using scripts\shared\stealth;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;

#namespace namespace_f917b91a;

/*
	Name: function_c35e6aab
	Namespace: namespace_f917b91a
	Checksum: 0x99EC1590
	Offset: 0x148
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_c35e6aab()
{
}

/*
	Name: function_b55533bc
	Namespace: namespace_f917b91a
	Checksum: 0xCE06E423
	Offset: 0x158
	Size: 0x1F
	Parameters: 0
	Flags: None
*/
function function_b55533bc()
{
	return isdefined(self.var_ad06727a) && isdefined(self.var_ad06727a.var_e082d3be);
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
	return isdefined(self.var_ad06727a) && isdefined(self.var_ad06727a.var_e082d3be) && (isdefined(self.var_ad06727a.var_e082d3be.var_b6b5445) && self.var_ad06727a.var_e082d3be.var_b6b5445);
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
		namespace_33b293fd::function_a7ee953(function_65f192a6(self));
	#/
	/#
		namespace_33b293fd::function_a7ee953(self function_b55533bc());
	#/
	self endon("hash_643a7daf");
	var_9c648312 = 0.25;
	wait(function_72a94f05(0.05, 1));
	while(1)
	{
		if(self function_7c08a28() > 0.3)
		{
			var_cdb312b = function_bc7ce905(self function_89c87c9c());
			var_10387988 = self function_52d99059();
			var_c6e5b5c4 = self.var_ad06727a.var_e082d3be.var_4de1f24c * self.var_ad06727a.var_e082d3be.var_4de1f24c;
			var_a52faa04 = function_e1dc201c(var_10387988, var_10387988 + var_cdb312b * 32000, 1, self);
			foreach(var_6050ab17 in level.var_ad06727a.var_657b1773[self.var_3e94206a])
			{
				if(!isdefined(var_6050ab17) || !function_5b49d38c(var_6050ab17))
				{
					continue;
				}
				if(!var_6050ab17 function_b55533bc() || (isdefined(var_6050ab17.var_ad06727a.var_e082d3be.var_b6b5445) && var_6050ab17.var_ad06727a.var_e082d3be.var_b6b5445))
				{
					continue;
				}
				if(!function_8d0347b8(var_6050ab17))
				{
					continue;
				}
				var_3f26abe = var_6050ab17 function_c7f3ce11();
				var_74aa899f = isdefined(var_a52faa04["entity"]) && var_a52faa04["entity"] == var_6050ab17;
				var_dc78c986 = 0;
				if(!var_74aa899f)
				{
					var_2c3e05ad = function_cb3d1c9b(var_6050ab17.var_722885f3, var_10387988);
					var_36e15574 = function_f679a325(var_6050ab17.var_722885f3 + VectorScale((0, 0, 1), 30) - var_10387988);
					if(var_2c3e05ad < var_c6e5b5c4 && function_5f9a4869(var_36e15574, var_cdb312b) > self.var_ad06727a.var_e082d3be.var_5c4da700)
					{
						var_dc78c986 = self function_980170b6(var_10387988, var_6050ab17);
					}
				}
				if(var_74aa899f || var_dc78c986)
				{
					if(!isdefined(self.var_ad06727a.var_e082d3be.var_96a12af4[var_3f26abe]))
					{
						self.var_ad06727a.var_e082d3be.var_96a12af4[var_3f26abe] = 0;
					}
					self.var_ad06727a.var_e082d3be.var_96a12af4[var_3f26abe] = self.var_ad06727a.var_e082d3be.var_96a12af4[var_3f26abe] + 1 / self.var_ad06727a.var_e082d3be.var_86ad8ae5 * var_9c648312;
					if(self.var_ad06727a.var_e082d3be.var_96a12af4[var_3f26abe] >= 1)
					{
						if(function_65f192a6(self))
						{
							self function_b8862210("uin_gadget_fully_charged", self);
						}
						var_6050ab17 thread function_a10a834e(1);
					}
					continue;
				}
				if(isdefined(self.var_ad06727a.var_e082d3be.var_96a12af4[var_3f26abe]))
				{
					self.var_ad06727a.var_e082d3be.var_96a12af4[var_3f26abe] = undefined;
				}
			}
		}
		wait(var_9c648312);
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
function function_a10a834e(var_b6b5445)
{
	if(function_5b49d38c(self))
	{
		self namespace_16f9ecd3::function_6e4b8a4f(var_b6b5445);
		if(isdefined(self.var_ad06727a) && isdefined(self.var_ad06727a.var_e082d3be))
		{
			if(!var_b6b5445)
			{
				self.var_ad06727a.var_e082d3be.var_b6b5445 = undefined;
			}
			else
			{
				self.var_ad06727a.var_e082d3be.var_b6b5445 = var_b6b5445;
			}
		}
		self namespace_71e9cb84::function_74d6b22f("tagged", var_b6b5445);
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
function function_980170b6(var_10387988, var_6050ab17)
{
	var_3c61bfc2 = 0;
	if(function_8d0347b8(var_6050ab17))
	{
		if(!var_3c61bfc2 && function_e7865c4b(var_10387988, var_6050ab17 function_d48f2ab3("j_head"), 0, self))
		{
			var_3c61bfc2 = 1;
		}
		if(!var_3c61bfc2 && function_e7865c4b(var_10387988, var_6050ab17 function_d48f2ab3("j_spinelower"), 0, self))
		{
			var_3c61bfc2 = 1;
		}
	}
	if(!var_3c61bfc2 && function_e7865c4b(var_10387988, var_6050ab17.var_722885f3, 0, self))
	{
		var_3c61bfc2 = 1;
	}
	return var_3c61bfc2;
}

