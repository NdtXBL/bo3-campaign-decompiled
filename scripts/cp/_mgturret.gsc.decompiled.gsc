#using scripts\codescripts\struct;

#namespace namespace_e9c6ba8e;

/*
	Name: function_d290ebfa
	Namespace: namespace_e9c6ba8e
	Checksum: 0x60919566
	Offset: 0x160
	Size: 0xCD
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	if(function_6f1ebe57("mg42") == "")
	{
		function_6c1294b8("mgTurret", "off");
	}
	level.var_2c1fa528 = 24;
	var_1fc79682 = function_99201f25("turretInfo", "targetname");
	for(var_5e76f0af = 0; var_5e76f0af < var_1fc79682.size; var_5e76f0af++)
	{
		var_1fc79682[var_5e76f0af] function_dc8c8404();
	}
}

/*
	Name: function_2cbbd6c9
	Namespace: namespace_e9c6ba8e
	Checksum: 0xD493A9BF
	Offset: 0x238
	Size: 0x135
	Parameters: 1
	Flags: None
*/
function function_2cbbd6c9(var_3f0972ca)
{
	function_f2710fd4();
	var_9ae7c3fa = function_99201f25("misc_turret", "classname");
	for(var_5e76f0af = 0; var_5e76f0af < var_9ae7c3fa.size; var_5e76f0af++)
	{
		if(isdefined(var_9ae7c3fa[var_5e76f0af].var_bcf80582))
		{
			switch(var_9ae7c3fa[var_5e76f0af].var_bcf80582)
			{
				case "easy":
				{
					var_3f0972ca = "easy";
					break;
				}
				case "medium":
				{
					var_3f0972ca = "medium";
					break;
				}
				case "hard":
				{
					var_3f0972ca = "hard";
					break;
				}
				case "fu":
				{
					var_3f0972ca = "fu";
					break;
				}
				case default:
				{
					continue;
				}
			}
		}
		function_34de2b92(var_9ae7c3fa[var_5e76f0af], var_3f0972ca);
	}
}

/*
	Name: function_f2710fd4
	Namespace: namespace_e9c6ba8e
	Checksum: 0x141F6C61
	Offset: 0x378
	Size: 0x2C3
	Parameters: 0
	Flags: None
*/
function function_f2710fd4()
{
	level.var_13f9ada0["easy"]["convergenceTime"] = 2.5;
	level.var_13f9ada0["easy"]["suppressionTime"] = 3;
	level.var_13f9ada0["easy"]["accuracy"] = 0.38;
	level.var_13f9ada0["easy"]["aiSpread"] = 2;
	level.var_13f9ada0["easy"]["playerSpread"] = 0.5;
	level.var_13f9ada0["medium"]["convergenceTime"] = 1.5;
	level.var_13f9ada0["medium"]["suppressionTime"] = 3;
	level.var_13f9ada0["medium"]["accuracy"] = 0.38;
	level.var_13f9ada0["medium"]["aiSpread"] = 2;
	level.var_13f9ada0["medium"]["playerSpread"] = 0.5;
	level.var_13f9ada0["hard"]["convergenceTime"] = 0.8;
	level.var_13f9ada0["hard"]["suppressionTime"] = 3;
	level.var_13f9ada0["hard"]["accuracy"] = 0.38;
	level.var_13f9ada0["hard"]["aiSpread"] = 2;
	level.var_13f9ada0["hard"]["playerSpread"] = 0.5;
	level.var_13f9ada0["fu"]["convergenceTime"] = 0.4;
	level.var_13f9ada0["fu"]["suppressionTime"] = 3;
	level.var_13f9ada0["fu"]["accuracy"] = 0.38;
	level.var_13f9ada0["fu"]["aiSpread"] = 2;
	level.var_13f9ada0["fu"]["playerSpread"] = 0.5;
}

/*
	Name: function_34de2b92
	Namespace: namespace_e9c6ba8e
	Checksum: 0xD3D6F09
	Offset: 0x648
	Size: 0xC7
	Parameters: 2
	Flags: None
*/
function function_34de2b92(var_37b990db, var_3f0972ca)
{
	var_37b990db.var_1493fd97 = level.var_13f9ada0[var_3f0972ca]["convergenceTime"];
	var_37b990db.var_e1462725 = level.var_13f9ada0[var_3f0972ca]["suppressionTime"];
	var_37b990db.var_2b04bf92 = level.var_13f9ada0[var_3f0972ca]["accuracy"];
	var_37b990db.var_9ea5d3d6 = level.var_13f9ada0[var_3f0972ca]["aiSpread"];
	var_37b990db.var_c2f2426f = level.var_13f9ada0[var_3f0972ca]["playerSpread"];
}

/*
	Name: function_4584a25e
	Namespace: namespace_e9c6ba8e
	Checksum: 0xBD8DD1E1
	Offset: 0x718
	Size: 0xC3
	Parameters: 1
	Flags: None
*/
function function_4584a25e(var_b3db42a9)
{
	self endon("hash_128f8789");
	self endon("hash_2e73226c");
	if(!isdefined(self.var_afd556d1))
	{
		self.var_afd556d1 = 1;
	}
	while(self.var_afd556d1)
	{
		self function_65453879(var_b3db42a9[function_26299103(var_b3db42a9.size)]);
		wait(2 + function_62e4226e(2));
		continue;
		self function_12613b3a();
		while(!self.var_afd556d1)
		{
			wait(1);
		}
	}
}

/*
	Name: function_a6ee2100
	Namespace: namespace_e9c6ba8e
	Checksum: 0x269F47C2
	Offset: 0x7E8
	Size: 0x75
	Parameters: 1
	Flags: None
*/
function function_a6ee2100(var_1676559f)
{
	if(var_1676559f == "delay")
	{
		return 0.2;
	}
	else if(var_1676559f == "delay_range")
	{
		return 0.5;
	}
	else if(var_1676559f == "burst")
	{
		return 0.5;
	}
	else if(var_1676559f == "burst_range")
	{
		return 4;
	}
}

/*
	Name: function_2b08cd30
	Namespace: namespace_e9c6ba8e
	Checksum: 0x6BA2AF35
	Offset: 0x868
	Size: 0x249
	Parameters: 2
	Flags: None
*/
function function_2b08cd30(var_37b990db, var_48f910c1)
{
	var_37b990db endon("hash_128f8789");
	var_37b990db endon("hash_90b21fdc");
	self endon("hash_f694ce2d");
	if(isdefined(var_37b990db.var_a36d4675))
	{
		var_88da54bf = var_37b990db.var_a36d4675;
	}
	else
	{
		var_88da54bf = function_a6ee2100("delay");
	}
	if(isdefined(var_37b990db.var_8e4e9edb))
	{
		var_61df2ec1 = var_37b990db.var_8e4e9edb - var_88da54bf;
	}
	else
	{
		var_61df2ec1 = function_a6ee2100("delay_range");
	}
	if(isdefined(var_37b990db.var_7a00772a))
	{
		var_7ff49b98 = var_37b990db.var_7a00772a;
	}
	else
	{
		var_7ff49b98 = function_a6ee2100("burst");
	}
	if(isdefined(var_37b990db.var_8f1f1ec4))
	{
		var_d3b8b2a6 = var_37b990db.var_8f1f1ec4 - var_7ff49b98;
		continue;
	}
	var_d3b8b2a6 = function_a6ee2100("burst_range");
	while(1)
	{
		var_37b990db function_7ed62b7e();
		if(isdefined(var_48f910c1))
		{
			var_37b990db thread function_c47b9502(var_48f910c1);
		}
		var_37b990db function_3d40493e();
		wait(var_7ff49b98 + function_62e4226e(var_d3b8b2a6));
		var_37b990db function_beb0f764();
		var_37b990db function_90b21fdc();
		wait(var_88da54bf + function_62e4226e(var_61df2ec1));
	}
}

/*
	Name: function_d8f74413
	Namespace: namespace_e9c6ba8e
	Checksum: 0x70F31A76
	Offset: 0xAC0
	Size: 0x37B
	Parameters: 0
	Flags: None
*/
function function_d8f74413()
{
	self notify("hash_65d386b0");
	self endon("hash_65d386b0");
	self endon("hash_128f8789");
	self endon("hash_9e66e292");
	level endon("hash_c8ab51de");
	if(isdefined(self.var_3652cbaf) && self.var_3652cbaf)
	{
		return;
	}
	if(isdefined(self.var_a36d4675))
	{
		var_88da54bf = self.var_a36d4675;
	}
	else
	{
		var_88da54bf = function_a6ee2100("delay");
	}
	if(isdefined(self.var_8e4e9edb))
	{
		var_61df2ec1 = self.var_8e4e9edb - var_88da54bf;
	}
	else
	{
		var_61df2ec1 = function_a6ee2100("delay_range");
	}
	if(isdefined(self.var_7a00772a))
	{
		var_7ff49b98 = self.var_7a00772a;
	}
	else
	{
		var_7ff49b98 = function_a6ee2100("burst");
	}
	if(isdefined(self.var_8f1f1ec4))
	{
		var_d3b8b2a6 = self.var_8f1f1ec4 - var_7ff49b98;
	}
	else
	{
		var_d3b8b2a6 = function_a6ee2100("burst_range");
	}
	var_7fa658b0 = GetTime();
	var_366528ee = "start";
	self.var_5cc32888 = 0;
	while(isdefined(self.var_e96fce8))
	{
		self function_12613b3a();
		self function_65453879(self.var_e96fce8[function_26299103(self.var_e96fce8.size)]);
		var_62240a71 = var_7fa658b0 - GetTime() * 0.001;
		if(self function_a3a6d526() && var_62240a71 <= 0)
		{
			if(var_366528ee != "fire")
			{
				var_366528ee = "fire";
				self function_921a1574("mpl_turret_alert");
				self thread function_3d40493e();
				self.var_5cc32888 = 1;
			}
			var_62240a71 = var_7ff49b98 + function_62e4226e(var_d3b8b2a6);
			self thread function_b353569(var_62240a71);
			self waittill("hash_d7a6c66a");
			self.var_5cc32888 = 0;
			var_62240a71 = var_88da54bf + function_62e4226e(var_61df2ec1);
			var_7fa658b0 = GetTime() + function_b6b79a0(var_62240a71 * 1000);
		}
		else if(var_366528ee != "aim")
		{
			var_366528ee = "aim";
		}
		self thread function_b353569(var_62240a71);
		self waittill("hash_d7a6c66a");
	}
}

/*
	Name: function_3d40493e
	Namespace: namespace_e9c6ba8e
	Checksum: 0x4696E277
	Offset: 0xE48
	Size: 0x37
	Parameters: 0
	Flags: None
*/
function function_3d40493e()
{
	self endon("hash_128f8789");
	self endon("hash_d7a6c66a");
	for(;;)
	{
		self function_cfefd8c();
		wait(0.112);
	}
}

/*
	Name: function_b353569
	Namespace: namespace_e9c6ba8e
	Checksum: 0x97AE7E68
	Offset: 0xE88
	Size: 0x41
	Parameters: 1
	Flags: None
*/
function function_b353569(var_62240a71)
{
	if(var_62240a71 <= 0)
	{
		return;
	}
	self endon("hash_d7a6c66a");
	wait(var_62240a71);
	if(isdefined(self))
	{
		self notify("hash_d7a6c66a");
	}
}

/*
	Name: function_c47b9502
	Namespace: namespace_e9c6ba8e
	Checksum: 0x3CEA46FB
	Offset: 0xED8
	Size: 0x13B
	Parameters: 1
	Flags: None
*/
function function_c47b9502(var_a3d46ee4)
{
	self endon("hash_128f8789");
	self notify("hash_d175a918");
	self endon("hash_d175a918");
	self endon("hash_90b21fdc");
	self function_65453879(var_a3d46ee4);
	self.var_48f910c1 = var_a3d46ee4;
	while(1)
	{
		if(function_65f192a6(var_a3d46ee4))
		{
			var_a3d46ee4.var_722885f3 = self.var_48f910c1 function_e59527c1();
		}
		else
		{
			var_a3d46ee4.var_722885f3 = self.var_48f910c1.var_722885f3;
		}
		var_a3d46ee4.var_722885f3 = var_a3d46ee4.var_722885f3 + (20 - function_62e4226e(40), 20 - function_62e4226e(40), 20 - function_62e4226e(60));
		wait(0.2);
	}
}

