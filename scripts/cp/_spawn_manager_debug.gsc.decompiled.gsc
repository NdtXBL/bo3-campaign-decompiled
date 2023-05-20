#using scripts\codescripts\struct;
#using scripts\cp\_spawn_manager;
#using scripts\shared\util_shared;

#namespace namespace_d5067552;

/*
	Name: function_573de556
	Namespace: namespace_d5067552
	Checksum: 0x446E2B77
	Offset: 0xD0
	Size: 0x21F
	Parameters: 0
	Flags: None
*/
function function_573de556()
{
	/#
		while(function_6f1ebe57("Dev Block strings are not supported") != "Dev Block strings are not supported")
		{
			wait(0.1);
			continue;
			var_80f7ff1d = function_1d528fc9();
			var_d50e154d = 0;
			var_d82333c2 = 0;
			level.var_cbea0384 = [];
			for(var_c957f6b6 = 0; var_c957f6b6 < var_80f7ff1d.size; var_c957f6b6++)
			{
				if(isdefined(var_80f7ff1d[var_c957f6b6]) && isdefined(var_80f7ff1d[var_c957f6b6].var_bae40a28))
				{
					if(var_80f7ff1d[var_c957f6b6].var_bae40a28 || (!var_80f7ff1d[var_c957f6b6].var_bae40a28 && isdefined(var_80f7ff1d[var_c957f6b6].var_14edd77e)))
					{
						if(var_80f7ff1d[var_c957f6b6].var_74952a22 < 0 || var_80f7ff1d[var_c957f6b6].var_74952a22 > var_80f7ff1d[var_c957f6b6].var_74ff82f3)
						{
							if(var_80f7ff1d[var_c957f6b6].var_bae40a28 && isdefined(var_80f7ff1d[var_c957f6b6].var_ee45dcd6))
							{
								var_d50e154d = var_d50e154d + 1;
								var_d82333c2 = var_d82333c2 + var_80f7ff1d[var_c957f6b6].var_ee45dcd6;
							}
							level.var_cbea0384[level.var_cbea0384.size] = var_80f7ff1d[var_c957f6b6];
						}
					}
				}
			}
			function_6d2d8da0(level.var_ad131964, level.var_9eb6e779, level.var_b5b6bce6, var_d50e154d, var_d82333c2);
			wait(0.05);
		}
	#/
}

/*
	Name: function_6d2d8da0
	Namespace: namespace_d5067552
	Checksum: 0xF3C375E1
	Offset: 0x2F8
	Size: 0x635
	Parameters: 5
	Flags: None
*/
function function_6d2d8da0(var_9f308938, var_b0e2441b, var_b61ce032, var_744eb752, var_699e3746)
{
	/#
		if(function_6f1ebe57("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			if(!isdefined(level.var_854c9d7))
			{
				level.var_854c9d7 = function_c49dde5();
				level.var_854c9d7.var_b5536acc = "Dev Block strings are not supported";
				level.var_854c9d7.var_4f8217af = 2;
				level.var_854c9d7.var_297f9d46 = 40;
				level.var_854c9d7.var_2363da9c = 1.5;
				level.var_854c9d7.var_d900369a = (1, 1, 1);
			}
			if(!isdefined(level.var_c254bbec))
			{
				level.var_c254bbec = [];
			}
			level.var_854c9d7 function_f6181aca("Dev Block strings are not supported" + var_b0e2441b + "Dev Block strings are not supported" + var_9f308938 + "Dev Block strings are not supported" + var_699e3746 + "Dev Block strings are not supported" + var_b61ce032 + "Dev Block strings are not supported" + var_744eb752);
			for(var_c957f6b6 = 0; var_c957f6b6 < level.var_cbea0384.size; var_c957f6b6++)
			{
				if(!isdefined(level.var_c254bbec[var_c957f6b6]))
				{
					level.var_c254bbec[var_c957f6b6] = function_c49dde5();
					level.var_c254bbec[var_c957f6b6].var_b5536acc = "Dev Block strings are not supported";
					level.var_c254bbec[var_c957f6b6].var_4f8217af = 0;
					level.var_c254bbec[var_c957f6b6].var_2363da9c = 1;
					level.var_c254bbec[var_c957f6b6].var_297f9d46 = level.var_854c9d7.var_297f9d46 + var_c957f6b6 + 1 * 15;
				}
				if(isdefined(level.var_ec52af9c) && level.var_cbea0384[var_c957f6b6] == level.var_ec52af9c)
				{
					if(!level.var_cbea0384[var_c957f6b6].var_bae40a28)
					{
						level.var_c254bbec[var_c957f6b6].var_d900369a = VectorScale((0, 1, 0), 0.4);
					}
					else
					{
						level.var_c254bbec[var_c957f6b6].var_d900369a = (0, 1, 0);
					}
				}
				else if(level.var_cbea0384[var_c957f6b6].var_bae40a28)
				{
					level.var_c254bbec[var_c957f6b6].var_d900369a = (1, 1, 1);
				}
				else
				{
					level.var_c254bbec[var_c957f6b6].var_d900369a = VectorScale((1, 1, 1), 0.4);
				}
				var_8caa0808 = "Dev Block strings are not supported" + level.var_cbea0384[var_c957f6b6].var_b77fa9b3 + "Dev Block strings are not supported";
				var_8caa0808 = var_8caa0808 + "Dev Block strings are not supported" + level.var_cbea0384[var_c957f6b6].var_74ff82f3;
				var_8caa0808 = var_8caa0808 + "Dev Block strings are not supported" + level.var_cbea0384[var_c957f6b6].var_e5c2eec1.size + "Dev Block strings are not supported" + level.var_cbea0384[var_c957f6b6].var_5fa59123 + "Dev Block strings are not supported" + level.var_cbea0384[var_c957f6b6].var_e290d32d + "Dev Block strings are not supported";
				var_8caa0808 = var_8caa0808 + "Dev Block strings are not supported" + level.var_cbea0384[var_c957f6b6].var_d8202611.size;
				if(isdefined(level.var_cbea0384[var_c957f6b6].var_bf8006e3))
				{
					var_8caa0808 = var_8caa0808 + "Dev Block strings are not supported" + level.var_cbea0384[var_c957f6b6].var_bf8006e3 + "Dev Block strings are not supported" + level.var_cbea0384[var_c957f6b6].var_4d210f7a + "Dev Block strings are not supported" + level.var_cbea0384[var_c957f6b6].var_20149b34 + "Dev Block strings are not supported";
				}
				level.var_c254bbec[var_c957f6b6] function_f6181aca(var_8caa0808);
			}
			if(level.var_cbea0384.size < level.var_c254bbec.size)
			{
				for(var_c957f6b6 = level.var_cbea0384.size; var_c957f6b6 < level.var_c254bbec.size; var_c957f6b6++)
				{
					if(isdefined(level.var_c254bbec[var_c957f6b6]))
					{
						level.var_c254bbec[var_c957f6b6] function_89cd542d();
					}
				}
			}
		}
		else if(function_6f1ebe57("Dev Block strings are not supported") != "Dev Block strings are not supported")
		{
			if(isdefined(level.var_854c9d7))
			{
				level.var_854c9d7 function_89cd542d();
			}
			if(isdefined(level.var_c254bbec))
			{
				for(var_c957f6b6 = 0; var_c957f6b6 < level.var_c254bbec.size; var_c957f6b6++)
				{
					if(isdefined(level.var_c254bbec) && isdefined(level.var_c254bbec[var_c957f6b6]))
					{
						level.var_c254bbec[var_c957f6b6] function_89cd542d();
					}
				}
				level.var_c254bbec = undefined;
			}
		}
	#/
}

/*
	Name: function_fb4f96b5
	Namespace: namespace_d5067552
	Checksum: 0xDF8555B3
	Offset: 0x938
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_fb4f96b5()
{
	/#
		level thread function_2111823a();
	#/
}

/*
	Name: function_2111823a
	Namespace: namespace_d5067552
	Checksum: 0xFBF28BC6
	Offset: 0x960
	Size: 0x327
	Parameters: 0
	Flags: None
*/
function function_2111823a()
{
	/#
		level notify("hash_2111823a");
		level endon("hash_2111823a");
		level.var_ec52af9c = undefined;
		level.var_8955ab4d = undefined;
		level.var_a26264b3 = function_3f10449f()[0];
		var_5b543fb5 = -1;
		var_1609b915 = undefined;
		while(1)
		{
			if(function_6f1ebe57("Dev Block strings are not supported") != "Dev Block strings are not supported")
			{
				function_10c561e2();
				wait(0.05);
				continue;
			}
			if(isdefined(level.var_cbea0384) && level.var_cbea0384.size > 0)
			{
				if(var_5b543fb5 == -1)
				{
					var_5b543fb5 = 0;
					var_1609b915 = 0;
				}
				if(level.var_a26264b3 function_ce2b5f5("Dev Block strings are not supported"))
				{
					var_1609b915 = var_5b543fb5;
					if(level.var_a26264b3 function_ce2b5f5("Dev Block strings are not supported"))
					{
						var_5b543fb5--;
						if(var_5b543fb5 < 0)
						{
							var_5b543fb5 = 0;
						}
					}
					if(level.var_a26264b3 function_ce2b5f5("Dev Block strings are not supported"))
					{
						var_5b543fb5++;
						if(var_5b543fb5 > level.var_cbea0384.size - 1)
						{
							var_5b543fb5 = level.var_cbea0384.size - 1;
						}
					}
				}
				if(isdefined(var_5b543fb5) && var_5b543fb5 != -1)
				{
					if(isdefined(level.var_ec52af9c) && isdefined(level.var_cbea0384[var_5b543fb5]))
					{
						if(isdefined(var_1609b915) && var_1609b915 == var_5b543fb5)
						{
							if(level.var_cbea0384[var_5b543fb5].var_170527fb != level.var_8955ab4d)
							{
								for(var_c957f6b6 = 0; var_c957f6b6 < level.var_cbea0384.size; var_c957f6b6++)
								{
									if(level.var_cbea0384[var_c957f6b6].var_170527fb == level.var_8955ab4d)
									{
										var_5b543fb5 = var_c957f6b6;
										var_1609b915 = var_c957f6b6;
									}
								}
							}
						}
					}
					else if(isdefined(level.var_cbea0384[var_5b543fb5]))
					{
						level.var_ec52af9c = level.var_cbea0384[var_5b543fb5];
						level.var_8955ab4d = level.var_cbea0384[var_5b543fb5].var_170527fb;
					}
				}
				if(isdefined(level.var_ec52af9c))
				{
					level.var_ec52af9c function_2adbfa39();
				}
			}
			else
			{
				function_10c561e2();
			}
			wait(0.25);
		}
	#/
}

/*
	Name: function_bad6361c
	Namespace: namespace_d5067552
	Checksum: 0x348BC46B
	Offset: 0xC90
	Size: 0x20B
	Parameters: 0
	Flags: None
*/
function function_bad6361c()
{
	/#
		while(1)
		{
			if(function_6f1ebe57("Dev Block strings are not supported") != "Dev Block strings are not supported")
			{
				wait(0.1);
				continue;
			}
			if(isdefined(level.var_ec52af9c))
			{
				var_d5067552 = level.var_ec52af9c;
				if(isdefined(var_d5067552.var_14edd77e))
				{
					for(var_c957f6b6 = 0; var_c957f6b6 < var_d5067552.var_14edd77e.size; var_c957f6b6++)
					{
						var_aa4319d5 = var_d5067552.var_14edd77e[var_c957f6b6];
						if(isdefined(var_aa4319d5) && var_aa4319d5.var_74952a22 > 0)
						{
							var_70296209 = var_aa4319d5.var_ee45dcd6 - var_aa4319d5.var_e5c2eec1.size;
							function_8f3e0f73(var_aa4319d5.var_722885f3 + VectorScale((0, 0, 1), 65), "Dev Block strings are not supported" + var_aa4319d5.var_74952a22, (0, 1, 0), 1, 1.25, 2);
							function_8f3e0f73(var_aa4319d5.var_722885f3 + VectorScale((0, 0, 1), 85), "Dev Block strings are not supported" + var_aa4319d5.var_e5c2eec1.size + "Dev Block strings are not supported" + var_70296209 + "Dev Block strings are not supported" + var_aa4319d5.var_ee45dcd6, (0, 1, 0), 1, 1.25, 2);
						}
					}
				}
				wait(0.05);
			}
			wait(0.05);
		}
	#/
}

/*
	Name: function_228116ac
	Namespace: namespace_d5067552
	Checksum: 0xA51CA00
	Offset: 0xEA8
	Size: 0x77
	Parameters: 1
	Flags: None
*/
function function_228116ac(var_8caa0808)
{
	/#
		self endon("hash_128f8789");
		while(1)
		{
			function_8f3e0f73(self.var_722885f3 + VectorScale((0, 0, 1), 65), var_8caa0808, (0.48, 9.4, 0.76), 1, 1);
			wait(0.05);
		}
	#/
}

/*
	Name: function_2adbfa39
	Namespace: namespace_d5067552
	Checksum: 0xF35DEB89
	Offset: 0xF28
	Size: 0xBCB
	Parameters: 0
	Flags: None
*/
function function_2adbfa39()
{
	/#
		if(!isdefined(level.var_75b3119))
		{
			level.var_75b3119 = 0;
		}
		if(!isdefined(level.var_c34122c6))
		{
			level.var_c34122c6 = function_c49dde5();
			level.var_c34122c6.var_b5536acc = "Dev Block strings are not supported";
			level.var_c34122c6.var_4f8217af = 10;
			level.var_c34122c6.var_297f9d46 = 150;
			level.var_c34122c6.var_2363da9c = 1.25;
			level.var_c34122c6.var_d900369a = (1, 0, 0);
		}
		if(!isdefined(level.var_73af57cd))
		{
			level.var_73af57cd = function_c49dde5();
			level.var_73af57cd.var_b5536acc = "Dev Block strings are not supported";
			level.var_73af57cd.var_4f8217af = 10;
			level.var_73af57cd.var_297f9d46 = 165;
			level.var_73af57cd.var_d900369a = (1, 1, 1);
		}
		if(!isdefined(level.var_470c2455))
		{
			level.var_470c2455 = function_c49dde5();
			level.var_470c2455.var_b5536acc = "Dev Block strings are not supported";
			level.var_470c2455.var_4f8217af = 10;
			level.var_470c2455.var_297f9d46 = 180;
			level.var_470c2455.var_d900369a = (1, 1, 1);
		}
		if(!isdefined(level.var_c4b2df6b))
		{
			level.var_c4b2df6b = function_c49dde5();
			level.var_c4b2df6b.var_b5536acc = "Dev Block strings are not supported";
			level.var_c4b2df6b.var_4f8217af = 10;
			level.var_c4b2df6b.var_297f9d46 = 195;
			level.var_c4b2df6b.var_d900369a = (1, 1, 1);
		}
		if(!isdefined(level.var_a268b598))
		{
			level.var_a268b598 = function_c49dde5();
			level.var_a268b598.var_b5536acc = "Dev Block strings are not supported";
			level.var_a268b598.var_4f8217af = 10;
			level.var_a268b598.var_297f9d46 = 210;
			level.var_a268b598.var_d900369a = (1, 1, 1);
		}
		if(!isdefined(level.var_8c831eb6))
		{
			level.var_8c831eb6 = function_c49dde5();
			level.var_8c831eb6.var_b5536acc = "Dev Block strings are not supported";
			level.var_8c831eb6.var_4f8217af = 10;
			level.var_8c831eb6.var_297f9d46 = 225;
			level.var_8c831eb6.var_d900369a = (1, 1, 1);
		}
		if(!isdefined(level.var_471f36bf))
		{
			level.var_471f36bf = function_c49dde5();
			level.var_471f36bf.var_b5536acc = "Dev Block strings are not supported";
			level.var_471f36bf.var_4f8217af = 10;
			level.var_471f36bf.var_297f9d46 = 240;
			level.var_471f36bf.var_d900369a = (1, 1, 1);
		}
		if(!isdefined(level.var_7a568a0f))
		{
			level.var_7a568a0f = function_c49dde5();
			level.var_7a568a0f.var_b5536acc = "Dev Block strings are not supported";
			level.var_7a568a0f.var_4f8217af = 10;
			level.var_7a568a0f.var_297f9d46 = 255;
			level.var_7a568a0f.var_d900369a = (1, 1, 1);
		}
		if(!isdefined(level.var_5ba78cd1))
		{
			level.var_5ba78cd1 = function_c49dde5();
			level.var_5ba78cd1.var_b5536acc = "Dev Block strings are not supported";
			level.var_5ba78cd1.var_4f8217af = 10;
			level.var_5ba78cd1.var_297f9d46 = 270;
			level.var_5ba78cd1.var_d900369a = (1, 1, 1);
		}
		if(level.var_a26264b3 function_ce2b5f5("Dev Block strings are not supported"))
		{
			if(level.var_a26264b3 function_ce2b5f5("Dev Block strings are not supported"))
			{
				level.var_75b3119++;
				if(level.var_75b3119 > 7)
				{
					level.var_75b3119 = 7;
				}
			}
			if(level.var_a26264b3 function_ce2b5f5("Dev Block strings are not supported"))
			{
				level.var_75b3119--;
				if(level.var_75b3119 < 0)
				{
					level.var_75b3119 = 0;
				}
			}
		}
		function_facd2f34();
		var_e92907e3 = 0;
		var_d1c37f1b = 0;
		if(level.var_a26264b3 function_ce2b5f5("Dev Block strings are not supported"))
		{
			if(level.var_a26264b3 function_ce2b5f5("Dev Block strings are not supported"))
			{
				var_d1c37f1b = 1;
			}
			if(level.var_a26264b3 function_ce2b5f5("Dev Block strings are not supported"))
			{
				var_e92907e3 = 1;
			}
		}
		var_c4554a8d = 0;
		if(var_e92907e3 || var_d1c37f1b)
		{
			if(var_e92907e3)
			{
				var_69554b3e = 1;
			}
			else
			{
				var_69554b3e = -1;
			}
			switch(level.var_75b3119)
			{
				case 0:
				{
					if(self.var_ee45dcd6 + var_69554b3e > self.var_e290d32d)
					{
						self.var_e290d32d = self.var_ee45dcd6 + var_69554b3e;
					}
					if(self.var_ee45dcd6 + var_69554b3e < self.var_5fa59123)
					{
						if(self.var_ee45dcd6 + var_69554b3e > 0)
						{
							self.var_5fa59123 = self.var_ee45dcd6 + var_69554b3e;
						}
					}
					var_c4554a8d = 1;
					self.var_ee45dcd6 = self.var_ee45dcd6 + var_69554b3e;
					break;
				}
				case 1:
				{
					if(self.var_5fa59123 + var_69554b3e < self.var_20149b34)
					{
						function_fed43545("Dev Block strings are not supported");
						break;
					}
					if(self.var_5fa59123 + var_69554b3e > self.var_e290d32d)
					{
						function_fed43545("Dev Block strings are not supported");
						break;
					}
					var_c4554a8d = 1;
					self.var_5fa59123 = self.var_5fa59123 + var_69554b3e;
					break;
				}
				case 2:
				{
					if(self.var_e290d32d + var_69554b3e < self.var_5fa59123)
					{
						function_fed43545("Dev Block strings are not supported");
						break;
					}
					var_c4554a8d = 1;
					self.var_e290d32d = self.var_e290d32d + var_69554b3e;
					break;
				}
				case 3:
				{
					if(self.var_4d210f7a + var_69554b3e > self.var_20149b34)
					{
						function_fed43545("Dev Block strings are not supported");
						break;
					}
					var_c4554a8d = 1;
					self.var_4d210f7a = self.var_4d210f7a + var_69554b3e;
					break;
				}
				case 4:
				{
					if(self.var_20149b34 + var_69554b3e < self.var_4d210f7a)
					{
						function_fed43545("Dev Block strings are not supported");
						break;
					}
					if(self.var_20149b34 + var_69554b3e > self.var_ee45dcd6)
					{
						function_fed43545("Dev Block strings are not supported");
						break;
					}
					var_c4554a8d = 1;
					self.var_20149b34 = self.var_20149b34 + var_69554b3e;
					break;
				}
				case 5:
				{
					if(self.var_bc2f37e4 + var_69554b3e > self.var_d8202611.size)
					{
						function_fed43545("Dev Block strings are not supported");
						break;
					}
					if(self.var_bc2f37e4 + var_69554b3e <= 0)
					{
						function_fed43545("Dev Block strings are not supported");
						break;
					}
					if(self.var_bc2f37e4 + var_69554b3e < self.var_8f471bf9)
					{
						if(self.var_bc2f37e4 + var_69554b3e > 0)
						{
							self.var_8f471bf9 = self.var_bc2f37e4 + var_69554b3e;
						}
					}
					if(self.var_bc2f37e4 + var_69554b3e > self.var_ec676387)
					{
						self.var_ec676387 = self.var_bc2f37e4 + var_69554b3e;
					}
					var_c4554a8d = 1;
					self.var_bc2f37e4 = self.var_bc2f37e4 + var_69554b3e;
					break;
				}
				case 6:
				{
					if(self.var_8f471bf9 + var_69554b3e > self.var_ec676387)
					{
						function_fed43545("Dev Block strings are not supported");
						break;
					}
					var_c4554a8d = 1;
					self.var_8f471bf9 = self.var_8f471bf9 + var_69554b3e;
					break;
				}
				case 7:
				{
					if(self.var_ec676387 + var_69554b3e < self.var_8f471bf9)
					{
						function_fed43545("Dev Block strings are not supported");
						break;
					}
					var_c4554a8d = 1;
					self.var_ec676387 = self.var_ec676387 + var_69554b3e;
					break;
				}
			}
		}
		if(var_c4554a8d)
		{
			level.var_ec52af9c function_5b99d8b8();
		}
		if(isdefined(self))
		{
			level.var_470c2455 function_f6181aca("Dev Block strings are not supported" + self.var_5fa59123);
			level.var_c4b2df6b function_f6181aca("Dev Block strings are not supported" + self.var_e290d32d);
			level.var_a268b598 function_f6181aca("Dev Block strings are not supported" + self.var_4d210f7a);
			level.var_8c831eb6 function_f6181aca("Dev Block strings are not supported" + self.var_20149b34);
			if(isdefined(self.var_bc2f37e4))
			{
				level.var_471f36bf function_f6181aca("Dev Block strings are not supported" + self.var_bc2f37e4);
				level.var_7a568a0f function_f6181aca("Dev Block strings are not supported" + self.var_8f471bf9);
				level.var_5ba78cd1 function_f6181aca("Dev Block strings are not supported" + self.var_ec676387);
			}
		}
	#/
}

/*
	Name: function_facd2f34
	Namespace: namespace_d5067552
	Checksum: 0x4C007A0D
	Offset: 0x1B00
	Size: 0x57D
	Parameters: 0
	Flags: None
*/
function function_facd2f34()
{
	/#
		switch(level.var_75b3119)
		{
			case 0:
			{
				level.var_73af57cd.var_d900369a = (0, 1, 0);
				level.var_470c2455.var_d900369a = (1, 1, 1);
				level.var_c4b2df6b.var_d900369a = (1, 1, 1);
				level.var_a268b598.var_d900369a = (1, 1, 1);
				level.var_8c831eb6.var_d900369a = (1, 1, 1);
				level.var_471f36bf.var_d900369a = (1, 1, 1);
				level.var_7a568a0f.var_d900369a = (1, 1, 1);
				level.var_5ba78cd1.var_d900369a = (1, 1, 1);
				break;
			}
			case 1:
			{
				level.var_73af57cd.var_d900369a = (1, 1, 1);
				level.var_470c2455.var_d900369a = (0, 1, 0);
				level.var_c4b2df6b.var_d900369a = (1, 1, 1);
				level.var_a268b598.var_d900369a = (1, 1, 1);
				level.var_8c831eb6.var_d900369a = (1, 1, 1);
				level.var_471f36bf.var_d900369a = (1, 1, 1);
				level.var_7a568a0f.var_d900369a = (1, 1, 1);
				level.var_5ba78cd1.var_d900369a = (1, 1, 1);
				break;
			}
			case 2:
			{
				level.var_73af57cd.var_d900369a = (1, 1, 1);
				level.var_470c2455.var_d900369a = (1, 1, 1);
				level.var_c4b2df6b.var_d900369a = (0, 1, 0);
				level.var_a268b598.var_d900369a = (1, 1, 1);
				level.var_8c831eb6.var_d900369a = (1, 1, 1);
				level.var_471f36bf.var_d900369a = (1, 1, 1);
				level.var_7a568a0f.var_d900369a = (1, 1, 1);
				level.var_5ba78cd1.var_d900369a = (1, 1, 1);
				break;
			}
			case 3:
			{
				level.var_73af57cd.var_d900369a = (1, 1, 1);
				level.var_470c2455.var_d900369a = (1, 1, 1);
				level.var_c4b2df6b.var_d900369a = (1, 1, 1);
				level.var_a268b598.var_d900369a = (0, 1, 0);
				level.var_8c831eb6.var_d900369a = (1, 1, 1);
				level.var_471f36bf.var_d900369a = (1, 1, 1);
				level.var_7a568a0f.var_d900369a = (1, 1, 1);
				level.var_5ba78cd1.var_d900369a = (1, 1, 1);
				break;
			}
			case 4:
			{
				level.var_73af57cd.var_d900369a = (1, 1, 1);
				level.var_470c2455.var_d900369a = (1, 1, 1);
				level.var_c4b2df6b.var_d900369a = (1, 1, 1);
				level.var_a268b598.var_d900369a = (1, 1, 1);
				level.var_8c831eb6.var_d900369a = (0, 1, 0);
				level.var_471f36bf.var_d900369a = (1, 1, 1);
				level.var_7a568a0f.var_d900369a = (1, 1, 1);
				level.var_5ba78cd1.var_d900369a = (1, 1, 1);
				break;
			}
			case 5:
			{
				level.var_73af57cd.var_d900369a = (1, 1, 1);
				level.var_470c2455.var_d900369a = (1, 1, 1);
				level.var_c4b2df6b.var_d900369a = (1, 1, 1);
				level.var_a268b598.var_d900369a = (1, 1, 1);
				level.var_8c831eb6.var_d900369a = (1, 1, 1);
				level.var_471f36bf.var_d900369a = (0, 1, 0);
				level.var_7a568a0f.var_d900369a = (1, 1, 1);
				level.var_5ba78cd1.var_d900369a = (1, 1, 1);
				break;
			}
			case 6:
			{
				level.var_73af57cd.var_d900369a = (1, 1, 1);
				level.var_470c2455.var_d900369a = (1, 1, 1);
				level.var_c4b2df6b.var_d900369a = (1, 1, 1);
				level.var_a268b598.var_d900369a = (1, 1, 1);
				level.var_8c831eb6.var_d900369a = (1, 1, 1);
				level.var_471f36bf.var_d900369a = (1, 1, 1);
				level.var_7a568a0f.var_d900369a = (0, 1, 0);
				level.var_5ba78cd1.var_d900369a = (1, 1, 1);
				break;
			}
			case 7:
			{
				level.var_73af57cd.var_d900369a = (1, 1, 1);
				level.var_470c2455.var_d900369a = (1, 1, 1);
				level.var_c4b2df6b.var_d900369a = (1, 1, 1);
				level.var_a268b598.var_d900369a = (1, 1, 1);
				level.var_8c831eb6.var_d900369a = (1, 1, 1);
				level.var_471f36bf.var_d900369a = (1, 1, 1);
				level.var_7a568a0f.var_d900369a = (1, 1, 1);
				level.var_5ba78cd1.var_d900369a = (0, 1, 0);
				break;
			}
		}
	#/
}

/*
	Name: function_5b99d8b8
	Namespace: namespace_d5067552
	Checksum: 0x6ADE33D8
	Offset: 0x2088
	Size: 0x1AB
	Parameters: 0
	Flags: None
*/
function function_5b99d8b8()
{
	/#
		if(isdefined(level.var_75b3119) && level.var_75b3119 != 5)
		{
			self.var_bc2f37e4 = function_dc99997a(self.var_8f471bf9, self.var_ec676387 + 1);
		}
		if(isdefined(level.var_75b3119) && level.var_75b3119 != 0)
		{
			self.var_ee45dcd6 = function_dc99997a(self.var_5fa59123, self.var_e290d32d + 1);
		}
		self.var_14edd77e = self function_826b96e5();
		/#
			namespace_33b293fd::function_a7ee953(self.var_74952a22 >= self.var_b7a63f07);
		#/
		/#
			namespace_33b293fd::function_a7ee953(self.var_74952a22 <= self.var_5a85f779);
		#/
		/#
			namespace_33b293fd::function_a7ee953(self.var_ee45dcd6 >= self.var_5fa59123);
		#/
		/#
			namespace_33b293fd::function_a7ee953(self.var_ee45dcd6 <= self.var_e290d32d);
		#/
		/#
			namespace_33b293fd::function_a7ee953(self.var_20149b34 <= self.var_ee45dcd6);
		#/
		/#
			namespace_33b293fd::function_a7ee953(self.var_4d210f7a <= self.var_ee45dcd6);
		#/
	#/
}

/*
	Name: function_fed43545
	Namespace: namespace_d5067552
	Checksum: 0x35A09932
	Offset: 0x2240
	Size: 0x5B
	Parameters: 1
	Flags: None
*/
function function_fed43545(var_8caa0808)
{
	/#
		self notify("hash_d80e0704");
		wait(0.05);
		level.var_c34122c6 function_f6181aca(var_8caa0808);
		level.var_c34122c6 thread function_f9e758e5();
	#/
}

/*
	Name: function_f9e758e5
	Namespace: namespace_d5067552
	Checksum: 0xCE440999
	Offset: 0x22A8
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_f9e758e5()
{
	/#
		self endon("hash_d80e0704");
		wait(10);
		level.var_c34122c6 function_f6181aca("Dev Block strings are not supported");
	#/
}

/*
	Name: function_10c561e2
	Namespace: namespace_d5067552
	Checksum: 0x8E345548
	Offset: 0x22F0
	Size: 0x143
	Parameters: 0
	Flags: None
*/
function function_10c561e2()
{
	/#
		if(isdefined(level.var_73af57cd))
		{
			level.var_73af57cd function_89cd542d();
		}
		if(isdefined(level.var_470c2455))
		{
			level.var_470c2455 function_89cd542d();
		}
		if(isdefined(level.var_c4b2df6b))
		{
			level.var_c4b2df6b function_89cd542d();
		}
		if(isdefined(level.var_a268b598))
		{
			level.var_a268b598 function_89cd542d();
		}
		if(isdefined(level.var_8c831eb6))
		{
			level.var_8c831eb6 function_89cd542d();
		}
		if(isdefined(level.var_471f36bf))
		{
			level.var_471f36bf function_89cd542d();
		}
		if(isdefined(level.var_7a568a0f))
		{
			level.var_7a568a0f function_89cd542d();
		}
		if(isdefined(level.var_5ba78cd1))
		{
			level.var_5ba78cd1 function_89cd542d();
		}
	#/
}

