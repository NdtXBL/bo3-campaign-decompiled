#using scripts\codescripts\struct;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\fx_shared;
#using scripts\shared\statemachine_shared;
#using scripts\shared\system_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\vehicle_death_shared;
#using scripts\shared\vehicle_shared;

#namespace namespace_b219fa51;

/*
	Name: function_2dc19561
	Namespace: namespace_b219fa51
	Checksum: 0x8A6E355
	Offset: 0x500
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("cic_turret", &function_8c87d8eb, undefined, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_b219fa51
	Checksum: 0x6BA16EA4
	Offset: 0x540
	Size: 0x1B5
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	namespace_96fa87af::function_cb767064("turret_cic", &function_4bf69f84);
	namespace_96fa87af::function_cb767064("turret_cic_world", &function_4bf69f84);
	namespace_96fa87af::function_cb767064("turret_sentry", &function_4bf69f84);
	namespace_96fa87af::function_cb767064("turret_sentry_world", &function_4bf69f84);
	namespace_96fa87af::function_cb767064("turret_sentry_cic", &function_4bf69f84);
	namespace_96fa87af::function_cb767064("turret_sentry_rts", &function_4bf69f84);
	level.var_c1aa5253["cic_turret_damage01"] = "destruct/fx_dest_turret_1";
	level.var_c1aa5253["cic_turret_damage02"] = "destruct/fx_dest_turret_2";
	level.var_c1aa5253["sentry_turret_damage01"] = "destruct/fx_dest_turret_1";
	level.var_c1aa5253["sentry_turret_damage02"] = "destruct/fx_dest_turret_2";
	level.var_c1aa5253["cic_turret_death"] = "_t6/destructibles/fx_cic_turret_death";
	level.var_c1aa5253["cic_turret_stun"] = "_t6/electrical/fx_elec_sp_emp_stun_cic_turret";
	level.var_c1aa5253["sentry_turret_stun"] = "_t6/electrical/fx_elec_sp_emp_stun_sentry_turret";
}

/*
	Name: function_4bf69f84
	Namespace: namespace_b219fa51
	Checksum: 0x34715B9C
	Offset: 0x700
	Size: 0x2DB
	Parameters: 0
	Flags: None
*/
function function_4bf69f84()
{
	self function_8dafb866();
	if(function_5dbf7eca(self.var_9d34dca7, "cic"))
	{
		self.var_62787ec9 = 60;
		self.var_e7379303 = 15;
	}
	else
	{
		self.var_62787ec9 = 60;
		self.var_e7379303 = 0;
	}
	self.var_bf0b4bb2 = namespace_bb771e9f::function_f7f12a75("brain", self);
	var_d290ebfa = self.var_bf0b4bb2 namespace_bb771e9f::function_26678920("main", undefined, &function_6bf457cb, undefined);
	var_6cff281b = self.var_bf0b4bb2 namespace_bb771e9f::function_26678920("scripted", undefined, &function_2fae15b2, undefined);
	namespace_72ee5da4::function_dbc36e92("brain");
	namespace_72ee5da4::function_2605b15("main", "scripted", "enter_vehicle");
	namespace_72ee5da4::function_2605b15("main", "scripted", "scripted");
	namespace_72ee5da4::function_2605b15("scripted", "main", "exit_vehicle");
	namespace_72ee5da4::function_2605b15("scripted", "main", "scripted_done");
	self function_14c24d9d();
	self thread function_c9084cfa();
	self thread function_6c405c27();
	self thread namespace_37b990db::function_372bcbf8();
	self.var_dc29a320 = &function_df1adf01;
	if(isdefined(self.var_70182c90))
	{
		if(self.var_70182c90 == "off")
		{
			self function_31d70ab3(self.var_6ab6f4fd);
		}
		else
		{
			self.var_bf0b4bb2 namespace_bb771e9f::function_fa59cc99(self.var_70182c90);
		}
	}
	else
	{
		function_73a1f565();
	}
	self function_62a7329();
}

/*
	Name: function_64047fb9
	Namespace: namespace_b219fa51
	Checksum: 0xC2E6879B
	Offset: 0x9E8
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_64047fb9()
{
	self.var_bf0b4bb2 namespace_bb771e9f::function_fa59cc99("scripted");
}

/*
	Name: function_73a1f565
	Namespace: namespace_b219fa51
	Checksum: 0xF2E06DF2
	Offset: 0xA18
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_73a1f565()
{
	self.var_bf0b4bb2 namespace_bb771e9f::function_fa59cc99("main");
}

/*
	Name: function_6bf457cb
	Namespace: namespace_b219fa51
	Checksum: 0x71837B3E
	Offset: 0xA48
	Size: 0x53
	Parameters: 1
	Flags: None
*/
function function_6bf457cb(var_a8563e07)
{
	if(function_5b49d38c(self))
	{
		self function_8dafb866();
		self thread function_8929bfc3();
	}
}

/*
	Name: function_31d70ab3
	Namespace: namespace_b219fa51
	Checksum: 0x44F56E9F
	Offset: 0xAA8
	Size: 0x167
	Parameters: 1
	Flags: None
*/
function function_31d70ab3(var_6ab6f4fd)
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
	self.var_255b9315 = 1;
}

/*
	Name: function_d20b689f
	Namespace: namespace_b219fa51
	Checksum: 0x5FBE3CA5
	Offset: 0xC18
	Size: 0xDF
	Parameters: 0
	Flags: None
*/
function function_d20b689f()
{
	self endon("hash_128f8789");
	self function_921a1574("veh_cic_turret_boot");
	self namespace_96fa87af::function_e103651a();
	self function_8dafb866();
	self namespace_96fa87af::function_42496438(1);
	self function_4ebb4502();
	self namespace_96fa87af::function_500f51c7(1);
	self.var_b950e454 = undefined;
	self function_62a7329();
	function_73a1f565();
	self.var_255b9315 = 0;
}

/*
	Name: function_4ebb4502
	Namespace: namespace_b219fa51
	Checksum: 0x35465245
	Offset: 0xD00
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
	Name: function_8929bfc3
	Namespace: namespace_b219fa51
	Checksum: 0xB9C163CD
	Offset: 0xE20
	Size: 0x497
	Parameters: 0
	Flags: None
*/
function function_8929bfc3()
{
	self endon("hash_128f8789");
	self endon("hash_d5beb6f3");
	var_65801466 = 0;
	wait(0.2);
	var_722885f3 = self function_d48f2ab3("tag_barrel");
	var_77333bf3 = var_722885f3 + function_bc7ce905(self.var_6ab6f4fd + (self.var_e7379303, self.var_62787ec9, 0)) * 1000;
	var_9823c256 = var_722885f3 + function_bc7ce905(self.var_6ab6f4fd + (self.var_e7379303, self.var_62787ec9 * -1, 0)) * 1000;
	while(1)
	{
		if(isdefined(self.var_6050ab17) && self function_4246bc05(self.var_6050ab17))
		{
			self.var_bfa53800 = 1;
			if(var_65801466 > 0 && function_65f192a6(self.var_6050ab17))
			{
				function_c9760e52();
				wait(0.5);
			}
			var_65801466 = 0;
			for(var_c957f6b6 = 0; var_c957f6b6 < 3; var_c957f6b6++)
			{
				if(isdefined(self.var_6050ab17) && function_5b49d38c(self.var_6050ab17) && self function_4246bc05(self.var_6050ab17))
				{
					self function_3488d445(self.var_6050ab17);
					wait(0.1);
					self function_20d6503c(function_72a94f05(0.4, 1.5));
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
			self.var_bfa53800 = 0.25;
			var_65801466++;
			wait(1);
			if(var_65801466 > 1)
			{
				self.var_f5d48615 = 0;
				while(!isdefined(self.var_6050ab17) || !self function_4246bc05(self.var_6050ab17))
				{
					if(self.var_9514e737)
					{
						self.var_f5d48615++;
						if(self.var_f5d48615 > 1)
						{
							self.var_f5d48615 = 0;
						}
					}
					if(self.var_f5d48615 == 0)
					{
						self function_13022100(var_77333bf3);
					}
					else
					{
						self function_13022100(var_9823c256);
					}
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
	Name: function_2fae15b2
	Namespace: namespace_b219fa51
	Checksum: 0x849787E2
	Offset: 0x12C0
	Size: 0xC3
	Parameters: 1
	Flags: None
*/
function function_2fae15b2(var_a8563e07)
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
	Name: function_b149aa04
	Namespace: namespace_b219fa51
	Checksum: 0x1F3E6725
	Offset: 0x1390
	Size: 0xA9
	Parameters: 1
	Flags: None
*/
function function_b149aa04(var_526f7753)
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
		return level.var_c1aa5253["cic_turret_damage02"];
	}
	else
	{
		return level.var_c1aa5253["cic_turret_damage01"];
	}
}

/*
	Name: function_197cacdf
	Namespace: namespace_b219fa51
	Checksum: 0x23638C18
	Offset: 0x1448
	Size: 0x1AF
	Parameters: 2
	Flags: None
*/
function function_197cacdf(var_5f813dde, var_b31a6ddf)
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
	var_a3d46ee4 function_921a1574("veh_cic_turret_sparks");
	self.var_617b78b1 = var_a3d46ee4;
}

/*
	Name: function_6c405c27
	Namespace: namespace_b219fa51
	Checksum: 0xC8EC1E6D
	Offset: 0x1600
	Size: 0x97
	Parameters: 0
	Flags: None
*/
function function_6c405c27()
{
	self endon("hash_831c5309");
	while(isdefined(self))
	{
		self waittill("hash_f9348fda");
		if(self.var_3a90f16b > 0)
		{
			var_5f813dde = self function_b149aa04(self.var_3a90f16b / self.var_38a62b0e);
			var_b31a6ddf = "tag_fx";
			function_197cacdf(var_5f813dde, var_b31a6ddf);
		}
		wait(0.3);
	}
}

/*
	Name: function_c9084cfa
	Namespace: namespace_b219fa51
	Checksum: 0xB5C7BA71
	Offset: 0x16A0
	Size: 0x243
	Parameters: 0
	Flags: None
*/
function function_c9084cfa()
{
	wait(0.1);
	self notify("hash_d1935899");
	self waittill("hash_128f8789", var_a0ad4f34, var_ad8afadc, var_dfcc01fd, var_dd89f865, var_bd00ff2a);
	if(isdefined(self.var_3e3a41eb))
	{
		if(isdefined(self.var_617b78b1))
		{
			self.var_617b78b1 function_dc8c8404();
		}
		self function_dc8c8404();
		return;
	}
	if(!isdefined(self))
	{
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
	self thread function_969be05e(var_a0ad4f34, var_bd00ff2a);
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
	Namespace: namespace_b219fa51
	Checksum: 0x9574B5A2
	Offset: 0x18F0
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_f92793ae()
{
	self namespace_96fa87af::function_84d2e8de();
	self function_921a1574("veh_cic_turret_sparks");
	var_df10de43 = function_9b7fda5e("script_origin", self.var_722885f3);
	var_df10de43 function_c2931a36("veh_cic_turret_dmg_fire_loop", 0.5);
	wait(2);
	var_df10de43 function_dc8c8404();
}

/*
	Name: function_969be05e
	Namespace: namespace_b219fa51
	Checksum: 0xAD37636E
	Offset: 0x19A8
	Size: 0x105
	Parameters: 2
	Flags: None
*/
function function_969be05e(var_a0ad4f34, var_86f4e7a5)
{
	self endon("hash_831c5309");
	self endon("hash_128f8789");
	self function_921a1574("veh_cic_turret_dmg_hit");
	wait(0.1);
	self.var_bfa53800 = 0.5;
	var_a0e6f236 = self function_cd1d99bd("tag_flash");
	var_55829ed5 = self.var_722885f3 + function_bc7ce905((0, var_a0e6f236[1], 0)) * 1000 + VectorScale((0, 0, -1), 1800);
	self function_13022100(var_55829ed5);
	wait(4);
	self notify("hash_831c5309");
}

/*
	Name: function_20d6503c
	Namespace: namespace_b219fa51
	Checksum: 0x55B66B0A
	Offset: 0x1AB8
	Size: 0x223
	Parameters: 1
	Flags: None
*/
function function_20d6503c(var_b699033e)
{
	self endon("hash_831c5309");
	self endon("hash_128f8789");
	function_c9760e52();
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
	var_cb645151 = 2;
	if(isdefined(self.var_6050ab17) && function_65f192a6(self.var_6050ab17))
	{
		var_cb645151 = 1;
	}
	var_beb3df9e = 1;
	while(var_60db70fa < var_b699033e)
	{
		if(isdefined(self.var_6050ab17) && isdefined(self.var_6050ab17.var_2a48f7ab) && self.var_6050ab17.var_2a48f7ab == 0)
		{
			self function_90ad4ed1();
		}
		else if(var_cb645151 > 1)
		{
			self function_90ad4ed1();
		}
		else
		{
			self function_90ad4ed1();
		}
		var_beb3df9e++;
		wait(var_3b139956);
		var_60db70fa = var_60db70fa + var_3b139956;
	}
	if(var_c0d97d5d)
	{
		self function_2bf2cccb(0);
	}
}

/*
	Name: function_c9760e52
	Namespace: namespace_b219fa51
	Checksum: 0xA4C83C37
	Offset: 0x1CE8
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_c9760e52()
{
	self function_921a1574("veh_turret_alert");
}

/*
	Name: function_44158b0
	Namespace: namespace_b219fa51
	Checksum: 0x723778BE
	Offset: 0x1D18
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function function_44158b0(var_3e94206a)
{
	self.var_3e94206a = var_3e94206a;
	if(!isdefined(self.var_b950e454))
	{
		function_38baa992();
	}
}

/*
	Name: function_38baa992
	Namespace: namespace_b219fa51
	Checksum: 0xE0AA07ED
	Offset: 0x1D58
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_38baa992()
{
	self endon("hash_128f8789");
	self namespace_96fa87af::function_3762fc40();
	wait(0.1);
	self namespace_96fa87af::function_e103651a();
}

/*
	Name: function_39f05215
	Namespace: namespace_b219fa51
	Checksum: 0x9E72899F
	Offset: 0x1DA8
	Size: 0x1DB
	Parameters: 0
	Flags: None
*/
function function_39f05215()
{
	self endon("hash_128f8789");
	self notify("hash_6044d9ae");
	self endon("hash_6044d9ae");
	self.var_6044d9ae = 1;
	function_37cbcf1a("veh_cic_turret_emp_down", self.var_722885f3);
	self.var_bfa53800 = 0.2;
	self function_31d70ab3();
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
			function_da6acfd2(level.var_c1aa5253["cic_turret_stun"], self.var_a3ef3e6e, "tag_origin");
		}
	}
	wait(function_72a94f05(6, 10));
	self.var_a3ef3e6e function_dc8c8404();
	self.var_6044d9ae = undefined;
	self function_d20b689f();
}

/*
	Name: function_df1adf01
	Namespace: namespace_b219fa51
	Checksum: 0xFC69B334
	Offset: 0x1F90
	Size: 0x17B
	Parameters: 14
	Flags: None
*/
function function_df1adf01(var_51e6a548, var_3a212fd7, var_f9a179ed, var_bf827987, var_ba36487d, var_dfcc01fd, var_88482219, var_e8bb43ee, var_a77ad8eb, var_6eb5fc54, var_a5cf2304, var_ad8afadc, var_ae725cb8, var_f105c26b)
{
	if(var_dfcc01fd.var_83023915 && var_ba36487d != "MOD_IMPACT")
	{
		var_ec01147f = self function_b4980289(0);
		if(!isdefined(var_ec01147f))
		{
			self thread function_39f05215();
		}
	}
	if(var_dfcc01fd == function_c4d5ec1f("shotgun_pump_taser") && var_ba36487d == "MOD_PISTOL_BULLET")
	{
		var_f9a179ed = function_b6b79a0(var_f9a179ed * 3);
		self thread function_d8937095();
	}
	if(!function_65f192a6(var_3a212fd7))
	{
		var_f9a179ed = function_b6b79a0(var_f9a179ed / 4);
	}
	return var_f9a179ed;
}

/*
	Name: function_2790de05
	Namespace: namespace_b219fa51
	Checksum: 0x72136C4
	Offset: 0x2118
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
	Name: function_d8937095
	Namespace: namespace_b219fa51
	Checksum: 0xD83D71DF
	Offset: 0x2248
	Size: 0x1DB
	Parameters: 0
	Flags: None
*/
function function_d8937095()
{
	self endon("hash_128f8789");
	self notify("hash_5ff63112");
	self endon("hash_5ff63112");
	self.var_5ff63112 = 1;
	self.var_bfa53800 = 0.2;
	self function_31d70ab3();
	if(!isdefined(self.var_a3ef3e6e))
	{
		function_37cbcf1a("veh_cic_turret_emp_down", self.var_722885f3);
		self.var_a3ef3e6e = function_9b7fda5e("script_model", self.var_722885f3);
		self.var_a3ef3e6e function_e48f905e("tag_origin");
		self.var_a3ef3e6e function_37f7858a(self, "tag_fx", (0, 0, 0), (0, 0, 0));
		if(function_5dbf7eca(self.var_9d34dca7, "turret_sentry"))
		{
			function_da6acfd2(level.var_c1aa5253["sentry_turret_stun"], self.var_a3ef3e6e, "tag_origin");
		}
		else
		{
			function_da6acfd2(level.var_c1aa5253["cic_turret_stun"], self.var_a3ef3e6e, "tag_origin");
		}
	}
	wait(function_72a94f05(3, 5));
	self.var_a3ef3e6e function_dc8c8404();
	self.var_5ff63112 = undefined;
	self function_d20b689f();
}

