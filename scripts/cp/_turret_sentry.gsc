#using scripts\codescripts\struct;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\fx_shared;
#using scripts\shared\math_shared;
#using scripts\shared\statemachine_shared;
#using scripts\shared\system_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\vehicle_death_shared;
#using scripts\shared\vehicle_shared;

#namespace namespace_e8e1cef5;

/*
	Name: function_2dc19561
	Namespace: namespace_e8e1cef5
	Checksum: 0x75549D55
	Offset: 0x4C0
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("sentry_turret", &function_8c87d8eb, undefined, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_e8e1cef5
	Checksum: 0x4A004DB0
	Offset: 0x500
	Size: 0x18D
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	namespace_96fa87af::function_cb767064("veh_turret_sentry_machinegun", &function_b2e9d990);
	namespace_96fa87af::function_cb767064("veh_turret_sentry_sniper", &function_8f042083);
	namespace_96fa87af::function_cb767064("veh_turret_sentry_grenade", &function_8f042083);
	namespace_96fa87af::function_cb767064("veh_turret_sentry_guardian", &function_8f042083);
	namespace_96fa87af::function_cb767064("veh_turret_sentry_emp", &function_c2d2b587);
	level.var_c1aa5253["sentry_turret_damage01"] = "destruct/fx_dest_turret_1";
	level.var_c1aa5253["sentry_turret_damage02"] = "destruct/fx_dest_turret_2";
	level.var_c1aa5253["sentry_turret_damage01"] = "destruct/fx_dest_turret_1";
	level.var_c1aa5253["sentry_turret_damage02"] = "destruct/fx_dest_turret_2";
	level.var_c1aa5253["sentry_turret_death"] = "_t6/destructibles/fx_sentry_turret_death";
	level.var_c1aa5253["sentry_turret_stun"] = "_t6/electrical/fx_elec_sp_emp_stun_sentry_turret";
	level.var_c1aa5253["sentry_turret_stun"] = "_t6/electrical/fx_elec_sp_emp_stun_sentry_turret";
}

/*
	Name: function_6a14e39c
	Namespace: namespace_e8e1cef5
	Checksum: 0x2B795965
	Offset: 0x698
	Size: 0x6B
	Parameters: 3
	Flags: None
*/
function function_6a14e39c(var_34fb19f, var_3fc1574, var_d900369a)
{
	/#
		if(function_4bd0142f("Dev Block strings are not supported") != 0)
		{
			function_4e418837(var_34fb19f, var_3fc1574, var_d900369a, 1, 0, 50);
		}
	#/
}

/*
	Name: function_ba2c6c94
	Namespace: namespace_e8e1cef5
	Checksum: 0xB4D14471
	Offset: 0x710
	Size: 0xD7
	Parameters: 2
	Flags: None
*/
function function_ba2c6c94(var_722885f3, var_8f8740b3)
{
	var_1a859714 = function_bc7ce905((0, var_8f8740b3, 0));
	var_3fc1574 = var_722885f3 + var_1a859714 * 50;
	var_43f93dd9 = function_7178c13c(var_722885f3, var_3fc1574, 0, self);
	/#
		if(var_43f93dd9)
		{
			function_6a14e39c(var_722885f3, var_3fc1574, (0, 1, 0));
		}
		else
		{
			function_6a14e39c(var_722885f3, var_3fc1574, (1, 0, 0));
		}
	#/
	return var_43f93dd9;
}

/*
	Name: function_e606dad7
	Namespace: namespace_e8e1cef5
	Checksum: 0x9F710D9E
	Offset: 0x7F0
	Size: 0x283
	Parameters: 0
	Flags: None
*/
function function_e606dad7()
{
	var_6ab6f4fd = self.var_6ab6f4fd;
	var_722885f3 = self.var_722885f3;
	var_f8681460 = self function_d48f2ab3("tag_barrel");
	/#
		if(function_ba2c6c94(var_f8681460, var_6ab6f4fd[1]))
		{
			function_d52b076d("Dev Block strings are not supported");
		}
	#/
	var_3b6e5f7e = function_3dfa27b4(var_6ab6f4fd[1]);
	var_1c23c371 = var_3b6e5f7e;
	for(var_8f8740b3 = 0; var_8f8740b3 * 10 <= 360; var_8f8740b3++)
	{
		if(function_ba2c6c94(var_f8681460, var_3b6e5f7e + var_8f8740b3 * 10))
		{
			var_1c23c371 = var_3b6e5f7e + var_8f8740b3 * 10;
			continue;
		}
		break;
	}
	var_2b695ea3 = var_3b6e5f7e;
	for(var_8f8740b3 = 0; var_8f8740b3 * 10 <= 360; var_8f8740b3++)
	{
		if(function_ba2c6c94(var_f8681460, var_3b6e5f7e - var_8f8740b3 * 10))
		{
			var_2b695ea3 = var_3b6e5f7e - var_8f8740b3 * 10;
			continue;
		}
		break;
	}
	if(var_1c23c371 - var_2b695ea3 >= 360)
	{
		var_2421690d = var_3b6e5f7e;
		self.var_62787ec9 = 180;
	}
	else
	{
		var_2421690d = function_3dfa27b4(var_1c23c371 + var_2b695ea3 * 0.5);
		self.var_62787ec9 = var_1c23c371 - var_1c23c371 + var_2b695ea3 * 0.5;
	}
	self.var_6ab6f4fd = (var_6ab6f4fd[0], var_2421690d, var_6ab6f4fd[2]);
}

/*
	Name: function_5f695de4
	Namespace: namespace_e8e1cef5
	Checksum: 0xE5E2A9B0
	Offset: 0xA80
	Size: 0x5B
	Parameters: 2
	Flags: None
*/
function function_5f695de4(var_dd89f865, var_3b6e5f7e)
{
	var_11a7e9cc = function_a8fb77bd();
	var_11a7e9cc.var_3b6e5f7e = var_3b6e5f7e;
	var_11a7e9cc.var_722885f3 = var_dd89f865;
	return var_11a7e9cc;
}

/*
	Name: function_140f3a3e
	Namespace: namespace_e8e1cef5
	Checksum: 0x71E22C56
	Offset: 0xAE8
	Size: 0x71
	Parameters: 3
	Flags: None
*/
function function_140f3a3e(var_722885f3, var_6ab6f4fd, var_e1a49abc)
{
	var_dd89f865 = var_722885f3 + function_bc7ce905(var_6ab6f4fd + (self.var_e7379303, var_e1a49abc, 0)) * 1000;
	return function_5f695de4(var_dd89f865, var_e1a49abc);
}

/*
	Name: function_1b820c4d
	Namespace: namespace_e8e1cef5
	Checksum: 0xB54DD18D
	Offset: 0xB68
	Size: 0x257
	Parameters: 0
	Flags: None
*/
function function_1b820c4d()
{
	self.var_aa72094f = [];
	self.var_23b6e300 = 0;
	self.var_b431c4af = 1;
	self.var_5e51c171 = 0;
	self.var_f8ba1bc6 = self function_d48f2ab3("tag_barrel");
	if(self.var_62787ec9 < 180)
	{
		self.var_aa72094f[self.var_aa72094f.size] = function_140f3a3e(self.var_f8ba1bc6, self.var_6ab6f4fd, self.var_62787ec9);
		self.var_23b6e300 = self.var_aa72094f.size;
		self.var_aa72094f[self.var_aa72094f.size] = function_140f3a3e(self.var_f8ba1bc6, self.var_6ab6f4fd, 0);
		self.var_aa72094f[self.var_aa72094f.size] = function_140f3a3e(self.var_f8ba1bc6, self.var_6ab6f4fd, self.var_62787ec9 * -1);
	}
	else
	{
		self.var_23b6e300 = self.var_aa72094f.size;
		self.var_aa72094f[self.var_aa72094f.size] = function_140f3a3e(self.var_f8ba1bc6, self.var_6ab6f4fd, 0);
		self.var_aa72094f[self.var_aa72094f.size] = function_140f3a3e(self.var_f8ba1bc6, self.var_6ab6f4fd, 90);
		self.var_aa72094f[self.var_aa72094f.size] = function_140f3a3e(self.var_f8ba1bc6, self.var_6ab6f4fd, 180);
		self.var_aa72094f[self.var_aa72094f.size] = function_140f3a3e(self.var_f8ba1bc6, self.var_6ab6f4fd, 270);
		if(namespace_d73b9283::function_d2c92ee7())
		{
		}
		else
		{
		}
		self.var_b431c4af = -1;
		self.var_5e51c171 = 1;
	}
}

/*
	Name: function_4ac3c3a1
	Namespace: namespace_e8e1cef5
	Checksum: 0x662479C5
	Offset: 0xDC8
	Size: 0x61
	Parameters: 3
	Flags: None
*/
function function_4ac3c3a1(var_ac9fb467, var_3a98452c, var_7e9083d1)
{
	if(var_7e9083d1)
	{
		return var_ac9fb467.var_3b6e5f7e < var_3a98452c.var_3b6e5f7e;
	}
	else
	{
		return var_ac9fb467.var_3b6e5f7e > var_3a98452c.var_3b6e5f7e;
	}
}

/*
	Name: function_c8f2c95d
	Namespace: namespace_e8e1cef5
	Checksum: 0xA9F59ABA
	Offset: 0xE38
	Size: 0x1CB
	Parameters: 1
	Flags: None
*/
function function_c8f2c95d(var_dd89f865)
{
	var_102e3d58 = var_dd89f865 - self.var_f8ba1bc6;
	var_6ab6f4fd = function_bdcdc423(var_102e3d58);
	var_b61307b5 = function_3dfa27b4(var_6ab6f4fd[1] - self.var_6ab6f4fd[1]);
	foreach(var_11a7e9cc in self.var_aa72094f)
	{
		if(var_b61307b5 < var_11a7e9cc.var_3b6e5f7e)
		{
			if(var_11a7e9cc.var_3b6e5f7e - var_b61307b5 < 5)
			{
				return;
			}
			continue;
		}
		if(var_b61307b5 - var_11a7e9cc.var_3b6e5f7e < 5)
		{
			return;
		}
	}
	if(self.var_5e51c171)
	{
		var_b61307b5 = function_64dbcbf2(var_b61307b5);
	}
	self.var_aa72094f[self.var_aa72094f.size] = function_5f695de4(var_dd89f865, var_b61307b5);
	namespace_84970cc4::function_434d221a(self.var_aa72094f, &function_4ac3c3a1, 1);
}

/*
	Name: function_b2e9d990
	Namespace: namespace_e8e1cef5
	Checksum: 0xF7A0EEF2
	Offset: 0x1010
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_b2e9d990()
{
	self thread function_8f042083();
}

/*
	Name: function_c2d2b587
	Namespace: namespace_e8e1cef5
	Checksum: 0xB4BCF6F4
	Offset: 0x1038
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_c2d2b587()
{
	self thread function_8f042083();
}

/*
	Name: function_e7857e05
	Namespace: namespace_e8e1cef5
	Checksum: 0x636168D2
	Offset: 0x1060
	Size: 0x6D
	Parameters: 1
	Flags: None
*/
function function_e7857e05(var_e98b4e9b)
{
	var_b9baf316 = 1;
	if(isdefined(var_e98b4e9b.var_8fc0e50e) && isdefined(self.var_c35cf4ed))
	{
		var_b9baf316 = !function_7f41c8e7(self.var_c35cf4ed, var_e98b4e9b.var_8fc0e50e);
	}
	return var_b9baf316;
}

/*
	Name: function_8f042083
	Namespace: namespace_e8e1cef5
	Checksum: 0x42E1D329
	Offset: 0x10D8
	Size: 0x2AB
	Parameters: 0
	Flags: None
*/
function function_8f042083()
{
	if(!isdefined(self.var_c35cf4ed))
	{
		self.var_c35cf4ed = [];
	}
	self thread function_9d82c548();
	self function_8dafb866();
	self.var_42ba2b3a = &function_aa320a88;
	self.var_62787ec9 = 90;
	self.var_e7379303 = 0;
	function_e606dad7();
	function_1b820c4d();
	self.var_bf0b4bb2 = namespace_bb771e9f::function_f7f12a75("brain", self);
	self.var_bf0b4bb2 namespace_bb771e9f::function_26678920("main", undefined, &function_e59668cf, undefined);
	self.var_bf0b4bb2 namespace_bb771e9f::function_26678920("scripted", undefined, &function_4642c69e, undefined);
	self.var_bf0b4bb2 namespace_bb771e9f::function_2605b15("main", "scripted", "enter_vehicle");
	self.var_bf0b4bb2 namespace_bb771e9f::function_2605b15("scripted", "main", "exit_vehicle");
	self function_14c24d9d();
	self thread function_78a2820e();
	self thread function_8109253b();
	self thread namespace_37b990db::function_372bcbf8();
	self.var_dc29a320 = &function_df1adf01;
	if(isdefined(self.var_70182c90))
	{
		if(self.var_70182c90 == "off")
		{
			self function_e6f10cc7(self.var_6ab6f4fd);
		}
		else
		{
			self.var_bf0b4bb2 namespace_bb771e9f::function_fa59cc99(self.var_70182c90);
		}
	}
	else
	{
		function_62182551();
	}
	self function_62a7329();
	self function_921a1574("mpl_turret_startup");
}

/*
	Name: function_d19a819d
	Namespace: namespace_e8e1cef5
	Checksum: 0xF9DEB0A5
	Offset: 0x1390
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_d19a819d()
{
	self.var_bf0b4bb2 namespace_bb771e9f::function_fa59cc99("scripted");
}

/*
	Name: function_62182551
	Namespace: namespace_e8e1cef5
	Checksum: 0x1077D77F
	Offset: 0x13C0
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_62182551()
{
	self.var_bf0b4bb2 namespace_bb771e9f::function_fa59cc99("main");
}

/*
	Name: function_e59668cf
	Namespace: namespace_e8e1cef5
	Checksum: 0x783FDCF7
	Offset: 0x13F0
	Size: 0x53
	Parameters: 1
	Flags: None
*/
function function_e59668cf(var_a8563e07)
{
	if(function_5b49d38c(self))
	{
		self function_8dafb866();
		self thread function_2e229297();
	}
}

/*
	Name: function_e6f10cc7
	Namespace: namespace_e8e1cef5
	Checksum: 0x39E83018
	Offset: 0x1450
	Size: 0x15B
	Parameters: 1
	Flags: None
*/
function function_e6f10cc7(var_6ab6f4fd)
{
	self.var_bf0b4bb2 namespace_bb771e9f::function_fa59cc99("scripted");
	self namespace_96fa87af::function_3762fc40();
	self function_e01ff155();
	self namespace_96fa87af::function_42496438(0);
	self namespace_96fa87af::function_500f51c7(0);
	if(!isdefined(var_6ab6f4fd))
	{
		var_6ab6f4fd = self function_cd1d99bd("tag_flash");
	}
	var_56d36469 = self.var_722885f3 + function_bc7ce905((0, var_6ab6f4fd[1], 0)) * 1000;
	var_56d36469 = var_56d36469 + VectorScale((0, 0, -1), 1700);
	self function_63f13a8e(var_56d36469);
	self.var_b950e454 = 1;
	if(!isdefined(self.var_6044d9ae))
	{
		self function_80765127();
	}
}

/*
	Name: function_21af94b3
	Namespace: namespace_e8e1cef5
	Checksum: 0x8002CED9
	Offset: 0x15B8
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_21af94b3()
{
	self function_921a1574("mpl_turret_startup");
	self namespace_96fa87af::function_e103651a();
	self function_8dafb866();
	self namespace_96fa87af::function_42496438(1);
	self function_4ebb4502();
	self namespace_96fa87af::function_500f51c7(1);
	self.var_b950e454 = undefined;
	self function_62a7329();
	function_62182551();
}

/*
	Name: function_4ebb4502
	Namespace: namespace_e8e1cef5
	Checksum: 0xE371FC8A
	Offset: 0x1690
	Size: 0x117
	Parameters: 0
	Flags: None
*/
function function_4ebb4502()
{
	for(var_c957f6b6 = 0; var_c957f6b6 < 6; var_c957f6b6++)
	{
		wait(0.1);
		namespace_96fa87af::function_3762fc40();
		wait(0.1);
		namespace_96fa87af::function_e103651a();
	}
	if(!isdefined(self.var_5dc5e20a))
	{
		var_6ab6f4fd = self function_cd1d99bd("tag_flash");
		var_56d36469 = self.var_722885f3 + function_bc7ce905((self.var_e7379303, var_6ab6f4fd[1], 0)) * 1000;
		self.var_bfa53800 = 0.3;
		self function_63f13a8e(var_56d36469);
		wait(1);
		self.var_bfa53800 = 1;
	}
}

/*
	Name: function_2e229297
	Namespace: namespace_e8e1cef5
	Checksum: 0xB92CABE6
	Offset: 0x17B0
	Size: 0x517
	Parameters: 0
	Flags: None
*/
function function_2e229297()
{
	self endon("hash_128f8789");
	self endon("hash_d5beb6f3");
	var_65801466 = 0;
	wait(0.2);
	var_722885f3 = self function_d48f2ab3("tag_barrel");
	while(1)
	{
		if(isdefined(self.var_6050ab17) && self function_4246bc05(self.var_6050ab17) && self function_e7857e05(self.var_6050ab17))
		{
			self.var_bfa53800 = 1;
			if(var_65801466 > 0 && function_65f192a6(self.var_6050ab17))
			{
				function_23b71dce();
				wait(0.5);
			}
			var_65801466 = 0;
			for(var_c957f6b6 = 0; var_c957f6b6 < 3; var_c957f6b6++)
			{
				if(isdefined(self.var_6050ab17) && function_5b49d38c(self.var_6050ab17) && self function_4246bc05(self.var_6050ab17))
				{
					self function_3488d445(self.var_6050ab17);
					wait(0.1);
					self function_5669b580(function_72a94f05(0.4, 1.5), self.var_6050ab17);
				}
				else
				{
					self function_12613b3a();
				}
				if(isdefined(self.var_6050ab17) && function_65f192a6(self.var_6050ab17))
				{
					wait(function_72a94f05(0.3, 0.6));
					continue;
				}
				wait(function_72a94f05(0.3, 0.6) * 2);
			}
			if(isdefined(self.var_6050ab17) && function_5b49d38c(self.var_6050ab17) && self function_4246bc05(self.var_6050ab17))
			{
				if(function_65f192a6(self.var_6050ab17))
				{
					wait(function_72a94f05(0.5, 1.3));
				}
				else
				{
					wait(function_72a94f05(0.5, 1.3) * 2);
				}
			}
		}
		else
		{
			self.var_bfa53800 = 0.5;
			var_65801466++;
			wait(1);
			if(var_65801466 > 1)
			{
				while(!isdefined(self.var_6050ab17) || !self function_4246bc05(self.var_6050ab17))
				{
					if(self.var_9514e737)
					{
						self.var_23b6e300 = self.var_23b6e300 + self.var_b431c4af;
						if(self.var_aa72094f.size <= 1)
						{
							self.var_23b6e300 = 0;
						}
						else if(self.var_23b6e300 >= self.var_aa72094f.size || self.var_23b6e300 < 0)
						{
							if(!self.var_5e51c171)
							{
								self.var_23b6e300 = self.var_23b6e300 - self.var_b431c4af;
								self.var_b431c4af = self.var_b431c4af * -1;
								self.var_23b6e300 = self.var_23b6e300 + self.var_b431c4af;
							}
							else if(self.var_23b6e300 >= self.var_aa72094f.size)
							{
								self.var_23b6e300 = 0;
							}
							else
							{
								self.var_23b6e300 = self.var_aa72094f.size - 1;
							}
						}
					}
					/#
						function_6a14e39c(var_722885f3, self.var_aa72094f[self.var_23b6e300].var_722885f3, (0, 1, 0));
					#/
					self function_13022100(self.var_aa72094f[self.var_23b6e300].var_722885f3);
					wait(0.5);
				}
			}
			else
			{
				self function_12613b3a();
			}
		}
		wait(0.5);
	}
}

/*
	Name: function_4642c69e
	Namespace: namespace_e8e1cef5
	Checksum: 0x59350A6
	Offset: 0x1CD0
	Size: 0xC3
	Parameters: 1
	Flags: None
*/
function function_4642c69e(var_a8563e07)
{
	var_ec01147f = self function_b4980289(0);
	if(isdefined(var_ec01147f))
	{
		self.var_bfa53800 = 1;
		self function_80765127();
		if(var_ec01147f == level.var_2395e945[0])
		{
			self thread namespace_8276f484::function_bd6651da("firestorm_turret");
			level.var_2395e945[0] thread function_2790de05(self);
		}
	}
	self function_12613b3a();
}

/*
	Name: function_e823c700
	Namespace: namespace_e8e1cef5
	Checksum: 0x48AFED7
	Offset: 0x1DA0
	Size: 0xA9
	Parameters: 1
	Flags: None
*/
function function_e823c700(var_526f7753)
{
	if(function_5dbf7eca(self.var_9d34dca7, "turret_sentry"))
	{
		if(var_526f7753 < 0.6)
		{
			return level.var_c1aa5253["sentry_turret_damage02"];
		}
		else
		{
			return level.var_c1aa5253["sentry_turret_damage01"];
		}
	}
	else if(var_526f7753 < 0.6)
	{
		return level.var_c1aa5253["sentry_turret_damage02"];
	}
	else
	{
		return level.var_c1aa5253["sentry_turret_damage01"];
	}
}

/*
	Name: function_b212223b
	Namespace: namespace_e8e1cef5
	Checksum: 0xE3A793B4
	Offset: 0x1E58
	Size: 0x18F
	Parameters: 2
	Flags: None
*/
function function_b212223b(var_5f813dde, var_b31a6ddf)
{
	if(isdefined(self.var_617b78b1))
	{
		if(self.var_617b78b1.var_5f813dde == var_5f813dde)
		{
			return;
		}
		self.var_617b78b1 function_dc8c8404();
	}
	if(!isdefined(self function_cd1d99bd(var_b31a6ddf)))
	{
		return;
	}
	var_a3d46ee4 = function_9b7fda5e("script_model", (0, 0, 0));
	var_a3d46ee4 function_e48f905e("tag_origin");
	var_a3d46ee4.var_722885f3 = self function_d48f2ab3(var_b31a6ddf);
	var_a3d46ee4.var_6ab6f4fd = self function_cd1d99bd(var_b31a6ddf);
	var_a3d46ee4 function_422037f5();
	var_a3d46ee4 function_50ccee8d();
	var_a3d46ee4 function_37f7858a(self, var_b31a6ddf);
	var_a3d46ee4.var_5f813dde = var_5f813dde;
	function_da6acfd2(var_5f813dde, var_a3d46ee4, "tag_origin");
	self.var_617b78b1 = var_a3d46ee4;
}

/*
	Name: function_8109253b
	Namespace: namespace_e8e1cef5
	Checksum: 0x2DB59C81
	Offset: 0x1FF0
	Size: 0x97
	Parameters: 0
	Flags: None
*/
function function_8109253b()
{
	self endon("hash_831c5309");
	while(isdefined(self))
	{
		self waittill("hash_f9348fda");
		if(self.var_3a90f16b > 0)
		{
			var_5f813dde = self function_e823c700(self.var_3a90f16b / self.var_38a62b0e);
			var_b31a6ddf = "tag_fx";
			function_b212223b(var_5f813dde, var_b31a6ddf);
		}
		wait(0.3);
	}
}

/*
	Name: function_78a2820e
	Namespace: namespace_e8e1cef5
	Checksum: 0x4F73F417
	Offset: 0x2090
	Size: 0x253
	Parameters: 0
	Flags: None
*/
function function_78a2820e()
{
	wait(0.1);
	if(!isdefined(self))
	{
		return;
	}
	self notify("hash_d1935899");
	self waittill("hash_128f8789", var_a0ad4f34, var_ad8afadc, var_dfcc01fd, var_dd89f865, var_bd00ff2a);
	if(!isdefined(self))
	{
		return;
	}
	if(isdefined(self.var_3e3a41eb))
	{
		if(isdefined(self.var_617b78b1))
		{
			self.var_617b78b1 function_dc8c8404();
		}
		self function_dc8c8404();
		return;
	}
	self namespace_8276f484::function_7a75abd9();
	self function_80765127();
	self function_12613b3a();
	self namespace_96fa87af::function_3762fc40();
	self function_e01ff155();
	self function_2bf2cccb(0);
	self namespace_37b990db::function_d81e774(0);
	self function_f92793ae();
	self thread namespace_8276f484::function_f229336a();
	self thread namespace_8276f484::function_b6527b9a(self.var_c8e6ad50, self.var_eb5d4f32);
	self namespace_96fa87af::function_42496438(0);
	self thread function_e99c1c2(var_a0ad4f34, var_bd00ff2a);
	if(isdefined(self.var_617b78b1))
	{
		self.var_617b78b1 function_dc8c8404();
	}
	self.var_255b9315 = 1;
	self waittill("hash_831c5309");
	self function_23009815();
}

/*
	Name: function_f92793ae
	Namespace: namespace_e8e1cef5
	Checksum: 0xBE3AB968
	Offset: 0x22F0
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_f92793ae()
{
	self namespace_96fa87af::function_84d2e8de();
}

/*
	Name: function_e99c1c2
	Namespace: namespace_e8e1cef5
	Checksum: 0x4A9E1336
	Offset: 0x2318
	Size: 0x105
	Parameters: 2
	Flags: None
*/
function function_e99c1c2(var_a0ad4f34, var_86f4e7a5)
{
	self endon("hash_831c5309");
	self endon("hash_128f8789");
	self function_921a1574("veh_sentry_turret_dmg_hit");
	wait(0.1);
	self.var_bfa53800 = 0.5;
	var_a0e6f236 = self function_cd1d99bd("tag_flash");
	var_55829ed5 = self.var_722885f3 + function_bc7ce905((0, var_a0e6f236[1], 0)) * 1000 + VectorScale((0, 0, -1), 1800);
	self function_13022100(var_55829ed5);
	wait(4);
	self notify("hash_831c5309");
}

/*
	Name: function_5669b580
	Namespace: namespace_e8e1cef5
	Checksum: 0x62285A9D
	Offset: 0x2428
	Size: 0x183
	Parameters: 2
	Flags: None
*/
function function_5669b580(var_b699033e, var_6050ab17)
{
	self endon("hash_831c5309");
	self endon("hash_128f8789");
	function_23b71dce();
	wait(0.1);
	var_dfcc01fd = self function_6bf94056(0);
	var_3b139956 = var_dfcc01fd.var_3b139956;
	var_60db70fa = 0;
	var_c0d97d5d = 0;
	if(function_5dbf7eca(var_dfcc01fd.var_4be20d44, "minigun"))
	{
		var_c0d97d5d = 1;
		self function_2bf2cccb(1);
		wait(0.5);
	}
	while(var_60db70fa < var_b699033e)
	{
		if(isdefined(level.var_a753e7a8))
		{
			self [[level.var_a753e7a8]](0, var_6050ab17);
		}
		else
		{
			self function_90ad4ed1(0, var_6050ab17);
		}
		wait(var_3b139956);
		var_60db70fa = var_60db70fa + var_3b139956;
	}
	if(var_c0d97d5d)
	{
		self function_2bf2cccb(0);
	}
}

/*
	Name: function_23b71dce
	Namespace: namespace_e8e1cef5
	Checksum: 0xEAE21E1D
	Offset: 0x25B8
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_23b71dce()
{
	self function_921a1574("veh_turret_alert");
}

/*
	Name: function_ebdfd4e4
	Namespace: namespace_e8e1cef5
	Checksum: 0x8D0DC9DE
	Offset: 0x25E8
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function function_ebdfd4e4(var_3e94206a)
{
	self.var_3e94206a = var_3e94206a;
	if(!isdefined(self.var_b950e454))
	{
		function_f08ad3e6();
	}
}

/*
	Name: function_f08ad3e6
	Namespace: namespace_e8e1cef5
	Checksum: 0xD4133284
	Offset: 0x2628
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_f08ad3e6()
{
	self endon("hash_128f8789");
	self namespace_96fa87af::function_3762fc40();
	wait(0.1);
	self namespace_96fa87af::function_e103651a();
}

/*
	Name: function_791c1a61
	Namespace: namespace_e8e1cef5
	Checksum: 0x6A8D7BE7
	Offset: 0x2678
	Size: 0x1DB
	Parameters: 0
	Flags: None
*/
function function_791c1a61()
{
	self endon("hash_128f8789");
	self notify("hash_6044d9ae");
	self endon("hash_6044d9ae");
	self.var_6044d9ae = 1;
	function_37cbcf1a("veh_sentry_turret_emp_down", self.var_722885f3);
	self.var_bfa53800 = 0.2;
	self function_e6f10cc7();
	if(!isdefined(self.var_a3ef3e6e))
	{
		self.var_a3ef3e6e = function_9b7fda5e("script_model", self.var_722885f3);
		self.var_a3ef3e6e function_e48f905e("tag_origin");
		self.var_a3ef3e6e function_37f7858a(self, "tag_fx", (0, 0, 0), (0, 0, 0));
		if(function_5dbf7eca(self.var_9d34dca7, "turret_sentry"))
		{
			function_da6acfd2(level.var_c1aa5253["sentry_turret_stun"], self.var_a3ef3e6e, "tag_origin");
		}
		else
		{
			function_da6acfd2(level.var_c1aa5253["sentry_turret_stun"], self.var_a3ef3e6e, "tag_origin");
		}
	}
	wait(function_72a94f05(6, 10));
	self.var_a3ef3e6e function_dc8c8404();
	self.var_6044d9ae = undefined;
	self function_21af94b3();
}

/*
	Name: function_df1adf01
	Namespace: namespace_e8e1cef5
	Checksum: 0x22175DC
	Offset: 0x2860
	Size: 0xDF
	Parameters: 15
	Flags: None
*/
function function_df1adf01(var_51e6a548, var_3a212fd7, var_f9a179ed, var_bf827987, var_ba36487d, var_dfcc01fd, var_88482219, var_e8bb43ee, var_a77ad8eb, var_6eb5fc54, var_a5cf2304, var_ad8afadc, var_ae725cb8, var_f105c26b, var_7419ba1f)
{
	if(var_dfcc01fd.var_83023915 && var_ba36487d != "MOD_IMPACT")
	{
		var_ec01147f = self function_b4980289(0);
		if(!isdefined(var_ec01147f))
		{
			self thread function_791c1a61();
		}
	}
	return var_f9a179ed;
}

/*
	Name: function_2790de05
	Namespace: namespace_e8e1cef5
	Checksum: 0x42459777
	Offset: 0x2948
	Size: 0x127
	Parameters: 1
	Flags: None
*/
function function_2790de05(var_37b990db)
{
	self endon("hash_133288a0");
	var_37b990db endon("hash_973e6741");
	level endon("hash_161a3f68");
	var_b40553f = 0;
	var_45e54459 = 0;
	while(1)
	{
		if(isdefined(self.var_ef4daaa5))
		{
			var_aee11f71 = var_b40553f;
			var_b40553f = self.var_ef4daaa5 function_be4e84fa(0);
			var_26c60357 = var_45e54459;
			var_45e54459 = self.var_ef4daaa5 function_baef232b(0);
			if(var_aee11f71 != var_b40553f || var_26c60357 != var_45e54459)
			{
				function_5b7e454a(&"hud_cic_weapon_heat", 2, function_b6b79a0(var_b40553f), var_45e54459);
			}
		}
		wait(0.05);
	}
}

/*
	Name: function_aa320a88
	Namespace: namespace_e8e1cef5
	Checksum: 0xF141008
	Offset: 0x2A78
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_aa320a88(var_8bcb913d)
{
	function_c8f2c95d(var_8bcb913d.var_722885f3);
}

/*
	Name: function_9d82c548
	Namespace: namespace_e8e1cef5
	Checksum: 0x4972C150
	Offset: 0x2AB0
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_9d82c548()
{
	var_e3c33322 = function_9b7fda5e("script_origin", self.var_722885f3);
	var_e3c33322 function_37f7858a(self);
	var_e3c33322 function_c2931a36("veh_turret_idle");
	self thread function_dbef7aff(var_e3c33322);
}

/*
	Name: function_dbef7aff
	Namespace: namespace_e8e1cef5
	Checksum: 0xE8A160F4
	Offset: 0x2B40
	Size: 0x53
	Parameters: 1
	Flags: None
*/
function function_dbef7aff(var_e3c33322)
{
	self waittill("hash_128f8789");
	var_e3c33322 function_eaa69754(0.5);
	wait(2);
	var_e3c33322 function_dc8c8404();
}

