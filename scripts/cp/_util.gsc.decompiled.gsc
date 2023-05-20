#using scripts\cp\_oed;
#using scripts\cp\_skipto;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\cp\gametypes\coop;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\load_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\math_shared;
#using scripts\shared\sound_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\string_shared;
#using scripts\shared\util_shared;

#namespace namespace_82b91a51;

/*
	Name: function_3bf39ed7
	Namespace: namespace_82b91a51
	Checksum: 0xDF2C10B4
	Offset: 0x580
	Size: 0xB
	Parameters: 1
	Flags: None
*/
function function_3bf39ed7(var_a0d9bd0c)
{
}

/*
	Name: function_fe17af4d
	Namespace: namespace_82b91a51
	Checksum: 0x4BA8D9B0
	Offset: 0x598
	Size: 0x73
	Parameters: 1
	Flags: None
*/
function function_fe17af4d(var_813fc428)
{
	/#
		function_895b00("Dev Block strings are not supported", var_813fc428);
		wait(0.05);
		if(function_6f1ebe57("Dev Block strings are not supported") != "Dev Block strings are not supported")
		{
			/#
				namespace_33b293fd::function_94739542("Dev Block strings are not supported");
			#/
		}
	#/
}

/*
	Name: function_f64f72cb
	Namespace: namespace_82b91a51
	Checksum: 0x4FC3A6D6
	Offset: 0x618
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function function_f64f72cb(var_813fc428)
{
	/#
		function_895b00("Dev Block strings are not supported" + var_813fc428);
	#/
}

/*
	Name: function_22ff7ff0
	Namespace: namespace_82b91a51
	Checksum: 0x5A5DD738
	Offset: 0x658
	Size: 0xA1
	Parameters: 4
	Flags: None
*/
function function_22ff7ff0(var_8b1c9508, var_13b728f6, var_91627c91, var_6798eb4a)
{
	var_288785e8 = function_f679a325(var_91627c91 - var_8b1c9508);
	var_1a859714 = function_bc7ce905(var_13b728f6);
	var_42bd74de = function_5f9a4869(var_1a859714, var_288785e8);
	return var_42bd74de >= var_6798eb4a;
}

/*
	Name: function_4bb1ad3d
	Namespace: namespace_82b91a51
	Checksum: 0xD017B532
	Offset: 0x708
	Size: 0x9
	Parameters: 0
	Flags: None
*/
function function_4bb1ad3d()
{
	return 70;
}

/*
	Name: function_9b876dc5
	Namespace: namespace_82b91a51
	Checksum: 0xC661D7F
	Offset: 0x720
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_9b876dc5(var_ba36487d)
{
	return function_5dbf7eca(var_ba36487d, "BULLET") || var_ba36487d == "MOD_HEAD_SHOT";
}

/*
	Name: function_9349460a
	Namespace: namespace_82b91a51
	Checksum: 0xF9A05FB7
	Offset: 0x768
	Size: 0x3F
	Parameters: 0
	Flags: None
*/
function function_9349460a()
{
	self endon("hash_643a7daf");
	self endon("hash_d9c9cb29");
	while(self function_d5ef124() != 1)
	{
		wait(0.05);
	}
}

/*
	Name: function_ad66eb43
	Namespace: namespace_82b91a51
	Checksum: 0x8947017D
	Offset: 0x7B0
	Size: 0x1FF
	Parameters: 3
	Flags: None
*/
function function_ad66eb43(var_8caa0808, var_60db70fa, var_452e72bb)
{
	if(!isdefined(self.var_354a1679))
	{
		return;
	}
	if(isdefined(self.var_fc558bd1) && var_8caa0808 != &"")
	{
		var_8caa0808 = self.var_fc558bd1;
		var_60db70fa = undefined;
	}
	self notify("hash_f81ee759");
	self.var_354a1679 function_f6181aca(var_8caa0808);
	if(isdefined(var_60db70fa) && var_60db70fa > 0)
	{
		if(!isdefined(var_452e72bb) || !var_452e72bb)
		{
			self.var_3594c84f.var_8e7edb95 = &"";
		}
		else
		{
			self.var_354a1679 function_f6181aca("");
			self.var_3594c84f.var_8e7edb95 = var_8caa0808;
		}
		self.var_3594c84f function_e1754d76(var_60db70fa);
	}
	else
	{
		self.var_3594c84f function_f6181aca("");
		self.var_3594c84f.var_8e7edb95 = &"";
	}
	if(self function_33d0d4d7())
	{
		self.var_354a1679.var_2363da9c = 1.4;
	}
	self.var_354a1679 function_ba7f003e(0.05);
	self.var_354a1679.var_aabe9f43 = 1;
	self.var_3594c84f function_ba7f003e(0.05);
	self.var_3594c84f.var_aabe9f43 = 1;
}

/*
	Name: function_9468e63a
	Namespace: namespace_82b91a51
	Checksum: 0x8FD7C138
	Offset: 0x9B8
	Size: 0x227
	Parameters: 3
	Flags: None
*/
function function_9468e63a(var_8caa0808, var_9368ba0c, var_e51ab3d)
{
	if(!isdefined(self.var_354a1679))
	{
		return;
	}
	if(isdefined(self.var_fc558bd1) && var_8caa0808 != &"")
	{
		var_8caa0808 = self.var_fc558bd1;
		var_60db70fa = undefined;
	}
	self notify("hash_f81ee759");
	if(!isdefined(var_e51ab3d) || !var_e51ab3d)
	{
		self.var_354a1679 function_f6181aca(var_8caa0808);
	}
	else
	{
		self.var_354a1679 function_f6181aca("");
	}
	if(isdefined(var_9368ba0c) && var_9368ba0c > 0)
	{
		if(!isdefined(var_e51ab3d) || !var_e51ab3d)
		{
			self.var_3594c84f.var_8e7edb95 = &"";
		}
		else
		{
			self.var_3594c84f.var_8e7edb95 = var_8caa0808;
		}
		self.var_3594c84f function_ee69b16e(var_9368ba0c);
	}
	else
	{
		self.var_3594c84f function_f6181aca("");
		self.var_3594c84f.var_8e7edb95 = &"";
	}
	if(self function_33d0d4d7())
	{
		self.var_354a1679.var_2363da9c = 1.4;
	}
	self.var_354a1679 function_ba7f003e(0.05);
	self.var_354a1679.var_aabe9f43 = 1;
	self.var_3594c84f function_ba7f003e(0.05);
	self.var_3594c84f.var_aabe9f43 = 1;
}

/*
	Name: function_d848704c
	Namespace: namespace_82b91a51
	Checksum: 0x5394B20A
	Offset: 0xBE8
	Size: 0xF3
	Parameters: 1
	Flags: None
*/
function function_d848704c(var_164e4778)
{
	if(!isdefined(self.var_354a1679))
	{
		return;
	}
	self notify("hash_f81ee759");
	if(!isdefined(var_164e4778) || var_164e4778 == 0)
	{
		function_ad66eb43(&"");
	}
	else
	{
		self endon("hash_643a7daf");
		self endon("hash_f81ee759");
		self.var_354a1679 function_ba7f003e(var_164e4778);
		self.var_354a1679.var_aabe9f43 = 0;
		self.var_3594c84f function_ba7f003e(var_164e4778);
		self.var_3594c84f.var_aabe9f43 = 0;
		wait(var_164e4778);
		self function_ad66eb43("");
	}
}

/*
	Name: function_ea1242aa
	Namespace: namespace_82b91a51
	Checksum: 0xC07FC4CE
	Offset: 0xCE8
	Size: 0xD5
	Parameters: 2
	Flags: None
*/
function function_ea1242aa(var_8caa0808, var_3e94206a)
{
	/#
		namespace_33b293fd::function_a7ee953(isdefined(level.var_2395e945));
	#/
	for(var_c957f6b6 = 0; var_c957f6b6 < level.var_2395e945.size; var_c957f6b6++)
	{
		var_5dc5e20a = level.var_2395e945[var_c957f6b6];
		if(isdefined(var_5dc5e20a.var_44fb8955["team"]) && var_5dc5e20a.var_44fb8955["team"] == var_3e94206a)
		{
			var_5dc5e20a function_d52b076d(var_8caa0808);
		}
	}
}

/*
	Name: function_e42ce187
	Namespace: namespace_82b91a51
	Checksum: 0x2080CF4B
	Offset: 0xDC8
	Size: 0xD5
	Parameters: 2
	Flags: None
*/
function function_e42ce187(var_8caa0808, var_3e94206a)
{
	/#
		namespace_33b293fd::function_a7ee953(isdefined(level.var_2395e945));
	#/
	for(var_c957f6b6 = 0; var_c957f6b6 < level.var_2395e945.size; var_c957f6b6++)
	{
		var_5dc5e20a = level.var_2395e945[var_c957f6b6];
		if(isdefined(var_5dc5e20a.var_44fb8955["team"]) && var_5dc5e20a.var_44fb8955["team"] == var_3e94206a)
		{
			var_5dc5e20a function_2e4b8c78(var_8caa0808);
		}
	}
}

/*
	Name: function_a5c1053d
	Namespace: namespace_82b91a51
	Checksum: 0xC2375D9
	Offset: 0xEA8
	Size: 0xDD
	Parameters: 3
	Flags: None
*/
function function_a5c1053d(var_8caa0808, var_3e94206a, var_519cefe7)
{
	/#
		namespace_33b293fd::function_a7ee953(isdefined(level.var_2395e945));
	#/
	for(var_c957f6b6 = 0; var_c957f6b6 < level.var_2395e945.size; var_c957f6b6++)
	{
		var_5dc5e20a = level.var_2395e945[var_c957f6b6];
		if(isdefined(var_5dc5e20a.var_44fb8955["team"]) && var_5dc5e20a.var_44fb8955["team"] == var_3e94206a)
		{
			var_5dc5e20a function_2e4b8c78(var_8caa0808, var_519cefe7);
		}
	}
}

/*
	Name: function_1c744a6a
	Namespace: namespace_82b91a51
	Checksum: 0x8F3F64B8
	Offset: 0xF90
	Size: 0x1B
	Parameters: 3
	Flags: None
*/
function function_1c744a6a(var_8caa0808, var_3e94206a, var_519cefe7)
{
}

/*
	Name: function_f8e95485
	Namespace: namespace_82b91a51
	Checksum: 0x6DD915AF
	Offset: 0xFB8
	Size: 0xED
	Parameters: 2
	Flags: None
*/
function function_f8e95485(var_8caa0808, var_3e94206a)
{
	var_2395e945 = level.var_2395e945;
	for(var_c957f6b6 = 0; var_c957f6b6 < var_2395e945.size; var_c957f6b6++)
	{
		if(isdefined(var_3e94206a))
		{
			if(isdefined(var_2395e945[var_c957f6b6].var_44fb8955["team"]) && var_2395e945[var_c957f6b6].var_44fb8955["team"] == var_3e94206a)
			{
				var_2395e945[var_c957f6b6] function_d52b076d(var_8caa0808);
			}
			continue;
		}
		var_2395e945[var_c957f6b6] function_d52b076d(var_8caa0808);
	}
}

/*
	Name: function_23ba5d5e
	Namespace: namespace_82b91a51
	Checksum: 0xF4320B79
	Offset: 0x10B0
	Size: 0x515
	Parameters: 7
	Flags: None
*/
function function_23ba5d5e(var_3e94206a, var_cb57d3ac, var_1a48c4eb, var_56dd2cfe, var_3e8c692b, var_6098643e, var_28b86cf2)
{
	var_f29416bf = isdefined(var_3e8c692b);
	var_e509afb1 = 0;
	if(isdefined(var_6098643e))
	{
		/#
			namespace_33b293fd::function_a7ee953(var_f29416bf);
		#/
		var_e509afb1 = 1;
	}
	if(!isdefined(var_28b86cf2))
	{
		var_28b86cf2 = "";
	}
	if(level.var_2016892b || !var_f29416bf)
	{
		for(var_c957f6b6 = 0; var_c957f6b6 < level.var_2395e945.size; var_c957f6b6++)
		{
			var_5dc5e20a = level.var_2395e945[var_c957f6b6];
			var_ae273d25 = var_5dc5e20a.var_44fb8955["team"];
			if(isdefined(var_ae273d25))
			{
				if(var_ae273d25 == var_3e94206a && isdefined(var_1a48c4eb) && var_1a48c4eb != &"")
				{
					var_5dc5e20a function_d52b076d(var_1a48c4eb, var_28b86cf2);
					continue;
				}
				if(isdefined(var_56dd2cfe) && var_56dd2cfe != &"")
				{
					if(isdefined(var_cb57d3ac) && var_ae273d25 == var_cb57d3ac)
					{
						var_5dc5e20a function_d52b076d(var_56dd2cfe, var_28b86cf2);
						continue;
					}
					if(!isdefined(var_cb57d3ac) && var_ae273d25 != var_3e94206a)
					{
						var_5dc5e20a function_d52b076d(var_56dd2cfe, var_28b86cf2);
					}
				}
			}
		}
		if(var_f29416bf)
		{
			/#
				namespace_33b293fd::function_a7ee953(level.var_2016892b);
			#/
			level.var_2395e945[0] function_8a20e55d(var_3e8c692b);
		}
		break;
	}
	/#
		namespace_33b293fd::function_a7ee953(var_f29416bf);
	#/
	if(var_e509afb1)
	{
		for(var_c957f6b6 = 0; var_c957f6b6 < level.var_2395e945.size; var_c957f6b6++)
		{
			var_5dc5e20a = level.var_2395e945[var_c957f6b6];
			var_ae273d25 = var_5dc5e20a.var_44fb8955["team"];
			if(isdefined(var_ae273d25))
			{
				if(var_ae273d25 == var_3e94206a)
				{
					if(isdefined(var_1a48c4eb) && var_1a48c4eb != &"")
					{
						var_5dc5e20a function_d52b076d(var_1a48c4eb, var_28b86cf2);
					}
					var_5dc5e20a function_8a20e55d(var_3e8c692b);
					continue;
				}
				if(isdefined(var_cb57d3ac) && var_ae273d25 == var_cb57d3ac || (!isdefined(var_cb57d3ac) && var_ae273d25 != var_3e94206a))
				{
					if(isdefined(var_56dd2cfe) && var_56dd2cfe != &"")
					{
						var_5dc5e20a function_d52b076d(var_56dd2cfe, var_28b86cf2);
					}
					var_5dc5e20a function_8a20e55d(var_6098643e);
				}
			}
		}
		break;
	}
	for(var_c957f6b6 = 0; var_c957f6b6 < level.var_2395e945.size; var_c957f6b6++)
	{
		var_5dc5e20a = level.var_2395e945[var_c957f6b6];
		var_ae273d25 = var_5dc5e20a.var_44fb8955["team"];
		if(isdefined(var_ae273d25))
		{
			if(var_ae273d25 == var_3e94206a)
			{
				if(isdefined(var_1a48c4eb) && var_1a48c4eb != &"")
				{
					var_5dc5e20a function_d52b076d(var_1a48c4eb, var_28b86cf2);
				}
				var_5dc5e20a function_8a20e55d(var_3e8c692b);
				continue;
			}
			if(isdefined(var_56dd2cfe) && var_56dd2cfe != &"")
			{
				if(isdefined(var_cb57d3ac) && var_ae273d25 == var_cb57d3ac)
				{
					var_5dc5e20a function_d52b076d(var_56dd2cfe, var_28b86cf2);
					continue;
				}
				if(!isdefined(var_cb57d3ac) && var_ae273d25 != var_3e94206a)
				{
					var_5dc5e20a function_d52b076d(var_56dd2cfe, var_28b86cf2);
				}
			}
		}
	}
}

/*
	Name: function_c6e9f3b0
	Namespace: namespace_82b91a51
	Checksum: 0x44B504FA
	Offset: 0x15D0
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_c6e9f3b0(var_2017476)
{
	if(level.var_2016892b && !self function_e025daa7())
	{
		return;
	}
	self function_8a20e55d(var_2017476);
}

/*
	Name: function_fad13578
	Namespace: namespace_82b91a51
	Checksum: 0xE92F89DA
	Offset: 0x1628
	Size: 0x73
	Parameters: 1
	Flags: None
*/
function function_fad13578(var_3e94206a)
{
	if(var_3e94206a == "allies")
	{
		return "axis";
	}
	else if(var_3e94206a == "axis")
	{
		return "allies";
	}
	else
	{
		return "allies";
	}
	/#
		namespace_33b293fd::function_94739542("Dev Block strings are not supported" + var_3e94206a);
	#/
}

/*
	Name: function_a2358f90
	Namespace: namespace_82b91a51
	Checksum: 0x5793426
	Offset: 0x16A8
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function function_a2358f90(var_3e94206a)
{
	if(!level.var_de12b72f || !isdefined(var_3e94206a) || !isdefined(level.var_4e502529.var_2aed6335[var_3e94206a]))
	{
		return level.var_4e502529.var_643946d2;
	}
	return level.var_4e502529.var_2aed6335[var_3e94206a];
}

/*
	Name: function_1ca58d67
	Namespace: namespace_82b91a51
	Checksum: 0x7E0A6428
	Offset: 0x1718
	Size: 0xC3
	Parameters: 1
	Flags: None
*/
function function_1ca58d67(var_60282b10)
{
	var_6c5932d1 = 0;
	foreach(var_3e94206a in level.var_e7a38025)
	{
		if(var_3e94206a == var_60282b10)
		{
			continue;
		}
		var_6c5932d1 = var_6c5932d1 | function_a2358f90(var_3e94206a);
	}
	return var_6c5932d1;
}

/*
	Name: function_425d7b5a
	Namespace: namespace_82b91a51
	Checksum: 0x1BE427E3
	Offset: 0x17E8
	Size: 0x125
	Parameters: 5
	Flags: None
*/
function function_425d7b5a(var_3576b76d, var_3390f625, var_155ceb88, var_d3694f95, var_8bb7be29)
{
	if(!isdefined(var_3390f625))
	{
		var_3390f625 = 1;
	}
	if(!isdefined(var_155ceb88))
	{
		var_155ceb88 = 1;
	}
	if(!isdefined(var_d3694f95))
	{
		var_d3694f95 = 1;
	}
	if(!isdefined(var_8bb7be29))
	{
		var_8bb7be29 = 1;
	}
	/#
		var_df390185 = var_3576b76d[0];
		var_8bb7be29 = function_b6b79a0(var_8bb7be29);
		for(var_c957f6b6 = 1; var_c957f6b6 < var_3576b76d.size; var_c957f6b6++)
		{
			function_4e418837(var_df390185, var_3576b76d[var_c957f6b6], (var_3390f625, var_155ceb88, var_d3694f95), 1, var_8bb7be29);
			var_df390185 = var_3576b76d[var_c957f6b6];
		}
	#/
}

/*
	Name: function_e38768cd
	Namespace: namespace_82b91a51
	Checksum: 0x740149DF
	Offset: 0x1918
	Size: 0x4F
	Parameters: 1
	Flags: None
*/
function function_e38768cd(var_5753664b)
{
	/#
		namespace_33b293fd::function_a7ee953(isdefined(level.var_c1aa5253[var_5753664b]), "Dev Block strings are not supported" + var_5753664b + "Dev Block strings are not supported");
	#/
	return level.var_c1aa5253[var_5753664b];
}

/*
	Name: function_c25dc80f
	Namespace: namespace_82b91a51
	Checksum: 0x69002AD8
	Offset: 0x1970
	Size: 0x91
	Parameters: 3
	Flags: None
*/
function function_c25dc80f(var_14f658ae, var_9368ba0c, var_11424fa)
{
	if(!isdefined(var_11424fa))
	{
		var_11424fa = 0;
	}
	if(var_11424fa || function_6f1ebe57(var_14f658ae) == "")
	{
		function_6c1294b8(var_14f658ae, var_9368ba0c);
		return var_9368ba0c;
	}
	return function_6f1ebe57(var_14f658ae);
}

/*
	Name: function_fc1f067e
	Namespace: namespace_82b91a51
	Checksum: 0x469F7BDA
	Offset: 0x1A10
	Size: 0x89
	Parameters: 3
	Flags: None
*/
function function_fc1f067e(var_14f658ae, var_9368ba0c, var_11424fa)
{
	if(!isdefined(var_11424fa))
	{
		var_11424fa = 0;
	}
	if(var_11424fa || function_6f1ebe57(var_14f658ae) == "")
	{
		function_6c1294b8(var_14f658ae, var_9368ba0c);
	}
	return function_f3087faa(var_14f658ae);
}

/*
	Name: function_91b7ff45
	Namespace: namespace_82b91a51
	Checksum: 0x5CC43A58
	Offset: 0x1AA8
	Size: 0xA1
	Parameters: 3
	Flags: None
*/
function function_91b7ff45(var_14f658ae, var_9368ba0c, var_11424fa)
{
	if(!isdefined(var_11424fa))
	{
		var_11424fa = 0;
	}
	if(var_11424fa || function_6f1ebe57(var_14f658ae) == "")
	{
		function_6c1294b8(var_14f658ae, var_9368ba0c);
		return function_b6b79a0(var_9368ba0c);
	}
	return function_4bd0142f(var_14f658ae);
}

/*
	Name: function_3763b8bf
	Namespace: namespace_82b91a51
	Checksum: 0xD159A055
	Offset: 0x1B58
	Size: 0x59
	Parameters: 1
	Flags: None
*/
function function_3763b8bf(var_a3d46ee4)
{
	if(!isdefined(var_a3d46ee4.var_5d4a92d7))
	{
		var_a3d46ee4.var_5d4a92d7 = [];
	}
	var_a3d46ee4.var_5d4a92d7[self function_c7f3ce11()] = 1;
}

/*
	Name: function_628362e1
	Namespace: namespace_82b91a51
	Checksum: 0x3AB1DF54
	Offset: 0x1BC0
	Size: 0x79
	Parameters: 1
	Flags: None
*/
function function_628362e1(var_a3d46ee4)
{
	if(!isdefined(var_a3d46ee4))
	{
		return;
	}
	if(!isdefined(var_a3d46ee4.var_5d4a92d7))
	{
		return;
	}
	if(!isdefined(var_a3d46ee4.var_5d4a92d7[self function_c7f3ce11()]))
	{
		return;
	}
	var_a3d46ee4.var_5d4a92d7[self function_c7f3ce11()] = 0;
}

/*
	Name: function_88efdad8
	Namespace: namespace_82b91a51
	Checksum: 0x20D53B0F
	Offset: 0x1C48
	Size: 0x6F
	Parameters: 1
	Flags: None
*/
function function_88efdad8(var_5948b3df)
{
	if(!isdefined(self.var_5d4a92d7))
	{
		return 0;
	}
	if(!isdefined(self.var_5d4a92d7[var_5948b3df function_c7f3ce11()]))
	{
		return 0;
	}
	if(!self.var_5d4a92d7[var_5948b3df function_c7f3ce11()])
	{
		return 0;
	}
	return 1;
}

/*
	Name: function_82fec06a
	Namespace: namespace_82b91a51
	Checksum: 0x97F36F82
	Offset: 0x1CC0
	Size: 0x43
	Parameters: 2
	Flags: None
*/
function function_82fec06a(var_a3d46ee4, var_dc69b011)
{
	var_a3d46ee4 waittill("hash_128f8789");
	self endon(var_dc69b011);
	self function_628362e1(var_a3d46ee4);
}

/*
	Name: function_96166eaa
	Namespace: namespace_82b91a51
	Checksum: 0x7358CBDD
	Offset: 0x1D10
	Size: 0x1A5
	Parameters: 3
	Flags: None
*/
function function_96166eaa(var_a3d46ee4, var_8fecf6ce, var_d39426ba)
{
	var_a3d46ee4 endon("hash_d5da096");
	var_a3d46ee4 endon("hash_128f8789");
	if(var_a3d46ee4 function_88efdad8(self))
	{
		return;
	}
	self function_3763b8bf(var_a3d46ee4);
	var_dc69b011 = "end_trig_death_monitor" + self function_c7f3ce11() + " " + var_a3d46ee4 function_c7f3ce11();
	self thread function_82fec06a(var_a3d46ee4, var_dc69b011);
	var_cf00f21 = "leave_trigger_" + self function_c7f3ce11();
	if(isdefined(var_8fecf6ce))
	{
		self thread [[var_8fecf6ce]](var_a3d46ee4, var_cf00f21);
	}
	while(isdefined(var_a3d46ee4) && var_a3d46ee4 function_32fa5072(self))
	{
		wait(0.01);
	}
	var_a3d46ee4 notify(var_cf00f21);
	if(isdefined(var_a3d46ee4) && isdefined(var_d39426ba))
	{
		self thread [[var_d39426ba]](var_a3d46ee4);
	}
	if(isdefined(var_a3d46ee4))
	{
		self function_628362e1(var_a3d46ee4);
	}
	self notify(var_dc69b011);
}

/*
	Name: function_9210836
	Namespace: namespace_82b91a51
	Checksum: 0x73F82EDD
	Offset: 0x1EC0
	Size: 0x37
	Parameters: 2
	Flags: None
*/
function function_9210836(var_7f2c1103, var_c1fc5f4e)
{
	return function_f45850ec(var_7f2c1103, 0, var_c1fc5f4e.size) == var_c1fc5f4e;
}

/*
	Name: function_56e2eb5
	Namespace: namespace_82b91a51
	Checksum: 0xCB1C7A40
	Offset: 0x1F00
	Size: 0x15
	Parameters: 0
	Flags: None
*/
function function_56e2eb5()
{
	return isdefined(level.var_338951e1) && level.var_338951e1;
}

/*
	Name: function_c5ed98df
	Namespace: namespace_82b91a51
	Checksum: 0x41B8C145
	Offset: 0x1F20
	Size: 0x81
	Parameters: 1
	Flags: None
*/
function function_c5ed98df(var_bc319dba)
{
	if(isdefined(self.var_4b1c056d))
	{
		self.var_4b1c056d.var_aabe9f43 = 0;
	}
	/#
		namespace_33b293fd::function_a7ee953(!self function_1c050a49());
	#/
	self.var_8d6b31a5 = var_bc319dba;
	self function_518a4a08();
	self notify("hash_14289740");
}

/*
	Name: function_f07f6ad4
	Namespace: namespace_82b91a51
	Checksum: 0x3B09E591
	Offset: 0x1FB0
	Size: 0x31
	Parameters: 0
	Flags: None
*/
function function_f07f6ad4()
{
	/#
		namespace_33b293fd::function_a7ee953(self function_1c050a49());
	#/
	return self.var_8d6b31a5;
}

/*
	Name: function_b5deb01d
	Namespace: namespace_82b91a51
	Checksum: 0x3EB3B383
	Offset: 0x1FF0
	Size: 0x31
	Parameters: 2
	Flags: None
*/
function function_b5deb01d(var_3e94206a, var_8caa0808)
{
	game["strings"]["objective_" + var_3e94206a] = var_8caa0808;
}

/*
	Name: function_f38b59c3
	Namespace: namespace_82b91a51
	Checksum: 0x8AF14CEC
	Offset: 0x2030
	Size: 0x31
	Parameters: 2
	Flags: None
*/
function function_f38b59c3(var_3e94206a, var_8caa0808)
{
	game["strings"]["objective_score_" + var_3e94206a] = var_8caa0808;
}

/*
	Name: function_a7a109e6
	Namespace: namespace_82b91a51
	Checksum: 0x721EC063
	Offset: 0x2070
	Size: 0x31
	Parameters: 2
	Flags: None
*/
function function_a7a109e6(var_3e94206a, var_8caa0808)
{
	game["strings"]["objective_hint_" + var_3e94206a] = var_8caa0808;
}

/*
	Name: function_d20e7521
	Namespace: namespace_82b91a51
	Checksum: 0xBE40CBD0
	Offset: 0x20B0
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_d20e7521(var_3e94206a)
{
	return game["strings"]["objective_" + var_3e94206a];
}

/*
	Name: function_523a314f
	Namespace: namespace_82b91a51
	Checksum: 0x2BD94D9D
	Offset: 0x20E0
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_523a314f(var_3e94206a)
{
	return game["strings"]["objective_score_" + var_3e94206a];
}

/*
	Name: function_efe537ba
	Namespace: namespace_82b91a51
	Checksum: 0x4E56EA
	Offset: 0x2110
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_efe537ba(var_3e94206a)
{
	return game["strings"]["objective_hint_" + var_3e94206a];
}

/*
	Name: function_4a3f3ebe
	Namespace: namespace_82b91a51
	Checksum: 0x2FD99B1D
	Offset: 0x2140
	Size: 0x63
	Parameters: 2
	Flags: None
*/
function function_4a3f3ebe(var_5b9badc2, var_37b8b994)
{
	level.var_cc6df7fb = namespace_d73b9283::function_31931862(function_92a88da3("roundSwitch"), var_5b9badc2, var_37b8b994);
	level.var_9aa25849 = var_5b9badc2;
	level.var_b59783f7 = var_37b8b994;
}

/*
	Name: function_549dd2f3
	Namespace: namespace_82b91a51
	Checksum: 0xFD035CB3
	Offset: 0x21B0
	Size: 0x63
	Parameters: 2
	Flags: None
*/
function function_549dd2f3(var_5b9badc2, var_37b8b994)
{
	level.var_fa404b24 = namespace_d73b9283::function_31931862(function_92a88da3("roundLimit"), var_5b9badc2, var_37b8b994);
	level.var_d504a980 = var_5b9badc2;
	level.var_427c87de = var_37b8b994;
}

/*
	Name: function_779e30c5
	Namespace: namespace_82b91a51
	Checksum: 0xB70797AD
	Offset: 0x2220
	Size: 0x63
	Parameters: 2
	Flags: None
*/
function function_779e30c5(var_5b9badc2, var_37b8b994)
{
	level.var_483c59b0 = namespace_d73b9283::function_31931862(function_92a88da3("roundWinLimit"), var_5b9badc2, var_37b8b994);
	level.var_69d6e8a4 = var_5b9badc2;
	level.var_a73af3ba = var_37b8b994;
}

/*
	Name: function_d094fb41
	Namespace: namespace_82b91a51
	Checksum: 0xC487F20
	Offset: 0x2290
	Size: 0x83
	Parameters: 2
	Flags: None
*/
function function_d094fb41(var_5b9badc2, var_37b8b994)
{
	level.var_e300e83a = namespace_d73b9283::function_31931862(function_92a88da3("scoreLimit"), var_5b9badc2, var_37b8b994);
	level.var_a74a74fe = var_5b9badc2;
	level.var_fa21e3c0 = var_37b8b994;
	function_6c1294b8("ui_scorelimit", level.var_e300e83a);
}

/*
	Name: function_aa42b85a
	Namespace: namespace_82b91a51
	Checksum: 0x67B07D14
	Offset: 0x2320
	Size: 0x83
	Parameters: 2
	Flags: None
*/
function function_aa42b85a(var_5b9badc2, var_37b8b994)
{
	level.var_6d251637 = namespace_d73b9283::function_31931862(function_92a88da3("timeLimit"), var_5b9badc2, var_37b8b994);
	level.var_93e2614d = var_5b9badc2;
	level.var_d1466c63 = var_37b8b994;
	function_6c1294b8("ui_timelimit", level.var_6d251637);
}

/*
	Name: function_69229fbb
	Namespace: namespace_82b91a51
	Checksum: 0x70E37891
	Offset: 0x23B0
	Size: 0x63
	Parameters: 2
	Flags: None
*/
function function_69229fbb(var_5b9badc2, var_37b8b994)
{
	level.var_e782fb64 = namespace_d73b9283::function_31931862(function_92a88da3("playerNumLives"), var_5b9badc2, var_37b8b994);
	level.var_5d016ec0 = var_5b9badc2;
	level.var_ca794d1e = var_37b8b994;
}

/*
	Name: function_292b6cbb
	Namespace: namespace_82b91a51
	Checksum: 0x8F0FFC76
	Offset: 0x2420
	Size: 0x7D
	Parameters: 1
	Flags: None
*/
function function_292b6cbb(var_cf6fe380)
{
	if(var_cf6fe380 < 0)
	{
		return undefined;
	}
	for(var_c957f6b6 = 0; var_c957f6b6 < level.var_2395e945.size; var_c957f6b6++)
	{
		if(level.var_2395e945[var_c957f6b6] function_c7f3ce11() == var_cf6fe380)
		{
			return level.var_2395e945[var_c957f6b6];
		}
	}
	return undefined;
}

/*
	Name: function_f5152296
	Namespace: namespace_82b91a51
	Checksum: 0xECFC0627
	Offset: 0x24A8
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_f5152296()
{
	var_94eedc77 = function_6f1ebe57("buildType");
	if(isdefined(var_94eedc77) && var_94eedc77 == "press")
	{
		return 1;
	}
	return 0;
}

/*
	Name: function_3baa3ff4
	Namespace: namespace_82b91a51
	Checksum: 0xFD5BC1A0
	Offset: 0x2500
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_3baa3ff4()
{
	return isdefined(self.var_37dbaeb7) && GetTime() < self.var_37dbaeb7;
}

/*
	Name: function_d9c13489
	Namespace: namespace_82b91a51
	Checksum: 0x3460CF7E
	Offset: 0x2528
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_d9c13489()
{
	var_60db70fa = GetTime();
	if(isdefined(self.var_5ff63112) && self.var_5ff63112)
	{
		return 1;
	}
	if(self function_3baa3ff4())
	{
		return 1;
	}
	if(isdefined(self.var_a3ef3e6e))
	{
		return 1;
	}
	if(isdefined(self.var_d964b64d) && self.var_d964b64d + 5000 > var_60db70fa)
	{
		return 1;
	}
	if(isdefined(self.var_49bda497) && self.var_49bda497 > var_60db70fa)
	{
		return 1;
	}
	return 0;
}

/*
	Name: function_5459eaf7
	Namespace: namespace_82b91a51
	Checksum: 0x5F65E78A
	Offset: 0x25E0
	Size: 0xBB
	Parameters: 5
	Flags: None
*/
function function_5459eaf7(var_722885f3, var_a0ad4f34, var_178903fd, var_1bfe6adf, var_afec04e7)
{
	if(isdefined(self.var_681c8e25) && self.var_681c8e25)
	{
		return;
	}
	if(isdefined(self.var_47c252e3))
	{
		var_f9348fda = self.var_47c252e3 + 1;
	}
	else
	{
		var_f9348fda = self.var_3a90f16b + 1;
	}
	self.var_681c8e25 = 1;
	self function_c3945cd5(var_f9348fda, var_722885f3, var_a0ad4f34, var_178903fd, var_1bfe6adf, var_afec04e7);
}

/*
	Name: function_20ffc8ff
	Namespace: namespace_82b91a51
	Checksum: 0x9EE18FBF
	Offset: 0x26A8
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_20ffc8ff()
{
	if(isdefined(self))
	{
		self function_dc8c8404();
	}
}

/*
	Name: function_1ec499f0
	Namespace: namespace_82b91a51
	Checksum: 0x4F7A454C
	Offset: 0x26D8
	Size: 0x52B
	Parameters: 5
	Flags: None
*/
function function_1ec499f0(var_237ef712, var_fd7c7ca9, var_d77a0240, var_e462c321, var_78962fff)
{
	level notify("hash_1ec499f0");
	level endon("hash_1ec499f0");
	if(isdefined(level.var_fded4d6e) && level.var_fded4d6e)
	{
		return;
	}
	if(function_4bd0142f("hud_missionFailed") == 1)
	{
		return;
	}
	if(!isdefined(var_e462c321))
	{
		var_e462c321 = 0;
	}
	if(!isdefined(level.var_703085a4))
	{
		level.var_703085a4 = function_c49dde5();
		level.var_703085a4.var_f83454ec = "font";
		level.var_703085a4.var_83253ac2 = "objective";
		level.var_703085a4.var_2363da9c = 1.8;
		level.var_703085a4.var_740218b1 = "center";
		level.var_703085a4.var_f9134763 = "middle";
		level.var_703085a4.var_b5536acc = "center";
		level.var_703085a4.var_db55e535 = "middle";
		level.var_703085a4.var_297f9d46 = -60 + var_e462c321;
		level.var_703085a4.var_4d19365 = 2;
		level.var_703085a4.var_d900369a = (1, 1, 1);
		level.var_703085a4.var_aabe9f43 = 1;
		level.var_703085a4.var_5773c805 = 1;
	}
	level.var_703085a4 function_f6181aca(var_237ef712);
	if(isdefined(var_fd7c7ca9))
	{
		if(!isdefined(level.var_e237f4df))
		{
			level.var_e237f4df = function_c49dde5();
			level.var_e237f4df.var_f83454ec = "font";
			level.var_e237f4df.var_83253ac2 = "objective";
			level.var_e237f4df.var_2363da9c = 1.8;
			level.var_e237f4df.var_740218b1 = "center";
			level.var_e237f4df.var_f9134763 = "middle";
			level.var_e237f4df.var_b5536acc = "center";
			level.var_e237f4df.var_db55e535 = "middle";
			level.var_e237f4df.var_297f9d46 = -33 + var_e462c321;
			level.var_e237f4df.var_4d19365 = 2;
			level.var_e237f4df.var_d900369a = (1, 1, 1);
			level.var_e237f4df.var_aabe9f43 = 1;
			level.var_e237f4df.var_5773c805 = 1;
		}
		level.var_e237f4df function_f6181aca(var_fd7c7ca9);
	}
	else if(isdefined(level.var_e237f4df))
	{
		level.var_e237f4df function_89cd542d();
	}
	if(isdefined(var_d77a0240))
	{
		if(!isdefined(level.var_bc357a76))
		{
			level.var_bc357a76 = function_c49dde5();
			level.var_bc357a76.var_f83454ec = "font";
			level.var_bc357a76.var_83253ac2 = "objective";
			level.var_bc357a76.var_2363da9c = 1.8;
			level.var_bc357a76.var_740218b1 = "center";
			level.var_bc357a76.var_f9134763 = "middle";
			level.var_bc357a76.var_b5536acc = "center";
			level.var_bc357a76.var_db55e535 = "middle";
			level.var_bc357a76.var_297f9d46 = -6 + var_e462c321;
			level.var_bc357a76.var_4d19365 = 2;
			level.var_bc357a76.var_d900369a = (1, 1, 1);
			level.var_bc357a76.var_aabe9f43 = 1;
			level.var_bc357a76.var_5773c805 = 1;
		}
		level.var_bc357a76 function_f6181aca(var_d77a0240);
	}
	else if(isdefined(level.var_bc357a76))
	{
		level.var_bc357a76 function_89cd542d();
	}
	if(isdefined(var_78962fff) && var_78962fff > 0)
	{
		wait(var_78962fff);
		function_77f8007d();
	}
}

/*
	Name: function_77f8007d
	Namespace: namespace_82b91a51
	Checksum: 0x2397AB4D
	Offset: 0x2C10
	Size: 0x93
	Parameters: 1
	Flags: None
*/
function function_77f8007d(var_67520c6a)
{
	if(isdefined(var_67520c6a))
	{
		wait(var_67520c6a);
	}
	if(isdefined(level.var_703085a4))
	{
		level.var_703085a4 function_89cd542d();
	}
	if(isdefined(level.var_e237f4df))
	{
		level.var_e237f4df function_89cd542d();
	}
	if(isdefined(level.var_bc357a76))
	{
		level.var_bc357a76 function_89cd542d();
	}
}

/*
	Name: function_67cfce72
	Namespace: namespace_82b91a51
	Checksum: 0xCE784FE7
	Offset: 0x2CB0
	Size: 0x54B
	Parameters: 5
	Flags: None
*/
function function_67cfce72(var_237ef712, var_fd7c7ca9, var_d77a0240, var_e462c321, var_78962fff)
{
	self notify("hash_1ec499f0");
	self endon("hash_1ec499f0");
	self endon("hash_128f8789");
	if(isdefined(level.var_fded4d6e) && level.var_fded4d6e)
	{
		return;
	}
	if(function_4bd0142f("hud_missionFailed") == 1)
	{
		return;
	}
	if(!isdefined(var_e462c321))
	{
		var_e462c321 = 0;
	}
	if(!isdefined(self.var_703085a4))
	{
		self.var_703085a4 = function_ad13099a(self);
		self.var_703085a4.var_f83454ec = "font";
		self.var_703085a4.var_83253ac2 = "objective";
		self.var_703085a4.var_2363da9c = 1.8;
		self.var_703085a4.var_740218b1 = "center";
		self.var_703085a4.var_f9134763 = "middle";
		self.var_703085a4.var_b5536acc = "center";
		self.var_703085a4.var_db55e535 = "middle";
		self.var_703085a4.var_297f9d46 = -60 + var_e462c321;
		self.var_703085a4.var_4d19365 = 2;
		self.var_703085a4.var_d900369a = (1, 1, 1);
		self.var_703085a4.var_aabe9f43 = 1;
		self.var_703085a4.var_5773c805 = 1;
	}
	self.var_703085a4 function_f6181aca(var_237ef712);
	if(isdefined(var_fd7c7ca9))
	{
		if(!isdefined(self.var_e237f4df))
		{
			self.var_e237f4df = function_ad13099a(self);
			self.var_e237f4df.var_f83454ec = "font";
			self.var_e237f4df.var_83253ac2 = "objective";
			self.var_e237f4df.var_2363da9c = 1.8;
			self.var_e237f4df.var_740218b1 = "center";
			self.var_e237f4df.var_f9134763 = "middle";
			self.var_e237f4df.var_b5536acc = "center";
			self.var_e237f4df.var_db55e535 = "middle";
			self.var_e237f4df.var_297f9d46 = -33 + var_e462c321;
			self.var_e237f4df.var_4d19365 = 2;
			self.var_e237f4df.var_d900369a = (1, 1, 1);
			self.var_e237f4df.var_aabe9f43 = 1;
			self.var_e237f4df.var_5773c805 = 1;
		}
		self.var_e237f4df function_f6181aca(var_fd7c7ca9);
	}
	else if(isdefined(self.var_e237f4df))
	{
		self.var_e237f4df function_89cd542d();
	}
	if(isdefined(var_d77a0240))
	{
		if(!isdefined(self.var_bc357a76))
		{
			self.var_bc357a76 = function_ad13099a(self);
			self.var_bc357a76.var_f83454ec = "font";
			self.var_bc357a76.var_83253ac2 = "objective";
			self.var_bc357a76.var_2363da9c = 1.8;
			self.var_bc357a76.var_740218b1 = "center";
			self.var_bc357a76.var_f9134763 = "middle";
			self.var_bc357a76.var_b5536acc = "center";
			self.var_bc357a76.var_db55e535 = "middle";
			self.var_bc357a76.var_297f9d46 = -6 + var_e462c321;
			self.var_bc357a76.var_4d19365 = 2;
			self.var_bc357a76.var_d900369a = (1, 1, 1);
			self.var_bc357a76.var_aabe9f43 = 1;
			self.var_bc357a76.var_5773c805 = 1;
		}
		self.var_bc357a76 function_f6181aca(var_d77a0240);
	}
	else if(isdefined(self.var_bc357a76))
	{
		self.var_bc357a76 function_89cd542d();
	}
	if(isdefined(var_78962fff) && var_78962fff > 0)
	{
		wait(var_78962fff);
		self function_79f9f98d();
	}
}

/*
	Name: function_79f9f98d
	Namespace: namespace_82b91a51
	Checksum: 0x2FA20BAD
	Offset: 0x3208
	Size: 0x9B
	Parameters: 1
	Flags: None
*/
function function_79f9f98d(var_67520c6a)
{
	self endon("hash_128f8789");
	if(isdefined(var_67520c6a))
	{
		wait(var_67520c6a);
	}
	if(isdefined(self.var_703085a4))
	{
		self.var_703085a4 function_89cd542d();
	}
	if(isdefined(self.var_e237f4df))
	{
		self.var_e237f4df function_89cd542d();
	}
	if(isdefined(self.var_bc357a76))
	{
		self.var_bc357a76 function_89cd542d();
	}
}

/*
	Name: function_7e61de2b
	Namespace: namespace_82b91a51
	Checksum: 0xEDF6A533
	Offset: 0x32B0
	Size: 0x3B
	Parameters: 3
	Flags: None
*/
function function_7e61de2b(var_78962fff, var_5cbd0572, var_3c096274)
{
	level namespace_ce7c3ed5::function_7e61de2b(var_78962fff, var_5cbd0572, var_3c096274);
}

/*
	Name: function_593c2af4
	Namespace: namespace_82b91a51
	Checksum: 0x5EE4EE3B
	Offset: 0x32F8
	Size: 0x3B
	Parameters: 3
	Flags: None
*/
function function_593c2af4(var_78962fff, var_5cbd0572, var_3c096274)
{
	level namespace_ce7c3ed5::function_593c2af4(var_78962fff, var_5cbd0572, var_3c096274);
}

/*
	Name: function_e9a12fda
	Namespace: namespace_82b91a51
	Checksum: 0x9EDB253F
	Offset: 0x3340
	Size: 0x121
	Parameters: 4
	Flags: None
*/
function function_e9a12fda(var_25f54188, var_caadaee2, var_8b2e7ac7, var_5cbd0572)
{
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_25f54188), "Dev Block strings are not supported");
	#/
	/#
		namespace_33b293fd::function_a7ee953(function_65f192a6(self), "Dev Block strings are not supported");
	#/
	level notify("hash_3dad5d35");
	level endon("hash_3dad5d35");
	var_bb3d430d = function_ef27182e(var_5cbd0572);
	var_bb3d430d function_ba7f003e(var_caadaee2);
	var_bb3d430d.var_aabe9f43 = var_25f54188;
	if(isdefined(var_8b2e7ac7) && var_8b2e7ac7 >= 0)
	{
		self function_763a0b18(var_8b2e7ac7, var_caadaee2);
	}
	wait(var_caadaee2);
}

/*
	Name: function_c04ace5b
	Namespace: namespace_82b91a51
	Checksum: 0xF4C007B7
	Offset: 0x3470
	Size: 0x3B
	Parameters: 3
	Flags: None
*/
function function_c04ace5b(var_25f54188, var_caadaee2, var_5cbd0572)
{
	function_e9a12fda(var_25f54188, var_caadaee2, 0, var_5cbd0572);
}

/*
	Name: function_ef27182e
	Namespace: namespace_82b91a51
	Checksum: 0x5A34BA90
	Offset: 0x34B8
	Size: 0xF9
	Parameters: 1
	Flags: None
*/
function function_ef27182e(var_5cbd0572)
{
	if(!isdefined(var_5cbd0572))
	{
		var_5cbd0572 = "black";
	}
	if(!isdefined(level.var_29832d35))
	{
		level.var_29832d35 = function_c49dde5();
		level.var_29832d35.var_4f8217af = 0;
		level.var_29832d35.var_297f9d46 = 0;
		level.var_29832d35.var_740218b1 = "fullscreen";
		level.var_29832d35.var_f9134763 = "fullscreen";
		level.var_29832d35.var_4d19365 = 0;
		level.var_29832d35.var_aabe9f43 = 0;
	}
	level.var_29832d35 function_9befb288(var_5cbd0572, 640, 480);
	return level.var_29832d35;
}

/*
	Name: function_bd4fe667
	Namespace: namespace_82b91a51
	Checksum: 0x4A67E5CF
	Offset: 0x35C0
	Size: 0x153
	Parameters: 9
	Flags: None
*/
function function_bd4fe667(var_49d9e5c0, var_d4d61a6f, var_b861723e, var_10a900ca, var_40c0cdd3, var_7e1aeede, var_4f8217af, var_297f9d46, var_c75a07f7)
{
	if(!isdefined(var_c75a07f7))
	{
		var_c75a07f7 = 1;
	}
	if(level.var_fded4d6e)
	{
		return;
	}
	if(isdefined(level.var_d91e30a0))
	{
		return;
	}
	if(function_6f1ebe57("failure_disabled") == "1")
	{
		return;
	}
	function_77f8007d();
	if(isdefined(var_d4d61a6f))
	{
		function_6c1294b8("ui_deadquote", var_d4d61a6f);
	}
	if(isdefined(var_b861723e))
	{
		function_3f10449f()[0] thread namespace_d7916d65::function_e152ebb3(var_b861723e, var_10a900ca, var_40c0cdd3, var_7e1aeede, var_4f8217af, var_297f9d46);
	}
	level.var_fded4d6e = 1;
	level thread namespace_c03736ba::function_5ed5738a(var_49d9e5c0, var_d4d61a6f);
}

/*
	Name: function_207f8667
	Namespace: namespace_82b91a51
	Checksum: 0x5F9CED22
	Offset: 0x3720
	Size: 0x7B
	Parameters: 8
	Flags: None
*/
function function_207f8667(var_49d9e5c0, var_d4d61a6f, var_b861723e, var_10a900ca, var_40c0cdd3, var_7e1aeede, var_4f8217af, var_297f9d46)
{
	function_bd4fe667(var_49d9e5c0, var_d4d61a6f, var_b861723e, var_10a900ca, var_40c0cdd3, var_7e1aeede, var_4f8217af, var_297f9d46, 0);
}

/*
	Name: function_d0bd0641
	Namespace: namespace_82b91a51
	Checksum: 0x1AE7F975
	Offset: 0x37A8
	Size: 0x13D
	Parameters: 3
	Flags: None
*/
function function_d0bd0641(var_63050b0a, var_67520c6a, var_7ad0895e)
{
	level notify("hash_4e2d8dd4");
	level endon("hash_4e2d8dd4");
	function_2ffd5725();
	level.var_d0bd0641 = var_63050b0a;
	function_1ec499f0(var_63050b0a);
	if(!isdefined(var_67520c6a))
	{
		var_67520c6a = 5;
	}
	var_f721d9a5 = GetTime();
	while(1)
	{
		var_60db70fa = GetTime();
		var_5ecb0b6d = var_60db70fa - var_f721d9a5 / 1000;
		if(var_5ecb0b6d >= var_67520c6a)
		{
			break;
		}
		if(isdefined(var_7ad0895e) && level namespace_ad23e503::function_7922262b(var_7ad0895e) == 1)
		{
			break;
		}
		wait(0.01);
	}
	if(isdefined(level.var_d0bd0641))
	{
		function_77f8007d();
	}
	level.var_d0bd0641 = undefined;
}

/*
	Name: function_2ffd5725
	Namespace: namespace_82b91a51
	Checksum: 0x8DDA742B
	Offset: 0x38F0
	Size: 0x2D
	Parameters: 0
	Flags: None
*/
function function_2ffd5725()
{
	if(isdefined(level.var_d0bd0641))
	{
		function_77f8007d();
	}
	level.var_d0bd0641 = undefined;
}

/*
	Name: function_cbe90295
	Namespace: namespace_82b91a51
	Checksum: 0xBB3AE274
	Offset: 0x3928
	Size: 0x87
	Parameters: 0
	Flags: None
*/
function function_cbe90295()
{
	if(isdefined(self) && isdefined(self.var_c90af761))
	{
		self.var_c90af761 function_9befb288("damage_feedback", 24, 48);
		self.var_c90af761.var_aabe9f43 = 1;
		self.var_c90af761 function_ba7f003e(1);
		self.var_c90af761.var_aabe9f43 = 0;
	}
}

/*
	Name: function_66773296
	Namespace: namespace_82b91a51
	Checksum: 0x87CDF04C
	Offset: 0x39B8
	Size: 0x2F7
	Parameters: 8
	Flags: None
*/
function function_66773296(var_4be20d44, var_45438924, var_9b32d4cc, var_d3a4407, var_e737c99e, var_292b6591, var_328eb28, var_58061bcf)
{
	if(!isdefined(var_58061bcf))
	{
		var_58061bcf = 1;
	}
	if(!isdefined(level.var_6a876531))
	{
		level.var_6a876531 = [];
	}
	var_4be20d44 = function_57b2be45(var_4be20d44);
	var_27e203a6 = function_6ada35ba(var_4be20d44 + "_ai", "targetname", 1);
	if(!function_5b49d38c(var_27e203a6))
	{
		var_27e203a6 = function_6ada35ba(var_4be20d44, "targetname", 1);
		if(!function_5b49d38c(var_27e203a6))
		{
			var_2f06d687 = function_6ada35ba(var_4be20d44, "targetname");
			if(!(isdefined(var_2f06d687.var_52deffe2) && var_2f06d687.var_52deffe2))
			{
				var_2f06d687.var_74952a22++;
				var_27e203a6 = namespace_2f06d687::function_7387a40a(var_2f06d687);
				/#
					namespace_33b293fd::function_a7ee953(isdefined(var_27e203a6), "Dev Block strings are not supported" + var_4be20d44 + "Dev Block strings are not supported");
				#/
				var_2f06d687 notify("hash_8a6147a6", var_27e203a6);
			}
			else
			{
				var_2f06d687 waittill("hash_8a6147a6", var_27e203a6);
			}
		}
	}
	level.var_6a876531[var_4be20d44] = var_27e203a6;
	var_27e203a6.var_b691b9cf = var_4be20d44;
	var_27e203a6.var_d3426abc = 1;
	var_27e203a6.var_52229333 = 1;
	var_27e203a6 function_7c9f312b(1);
	var_27e203a6 function_958c7633();
	var_27e203a6 thread function_9d597adf(var_4be20d44);
	if(isdefined(var_45438924))
	{
		function_8828b758(var_27e203a6, var_45438924, var_9b32d4cc, var_d3a4407, var_e737c99e, var_292b6591, var_328eb28);
	}
	if(isdefined(level.var_9b4e3779))
	{
		var_27e203a6 [[level.var_9b4e3779]]();
	}
	if(var_58061bcf)
	{
		var_27e203a6 thread namespace_16f9ecd3::function_b3ce91e0();
	}
	return var_27e203a6;
}

/*
	Name: function_e29f0dd6
	Namespace: namespace_82b91a51
	Checksum: 0x47B4BC7D
	Offset: 0x3CB8
	Size: 0x141
	Parameters: 7
	Flags: None
*/
function function_e29f0dd6(var_673caed4, var_86365a77, var_9b32d4cc, var_d3a4407, var_e737c99e, var_292b6591, var_328eb28)
{
	var_5d815a51 = [];
	foreach(var_7d7c0d45 in var_673caed4)
	{
		if(!isdefined(var_5d815a51))
		{
			var_5d815a51 = [];
		}
		else if(!function_6e2770d8(var_5d815a51))
		{
			var_5d815a51 = function_84970cc4(var_5d815a51);
		}
		var_5d815a51[var_5d815a51.size] = function_66773296(var_7d7c0d45, var_86365a77, var_9b32d4cc, var_d3a4407, var_e737c99e, var_292b6591, var_328eb28);
	}
	return var_5d815a51;
}

/*
	Name: function_9d597adf
	Namespace: namespace_82b91a51
	Checksum: 0x53A669F
	Offset: 0x3E08
	Size: 0x73
	Parameters: 1
	Flags: None
*/
function function_9d597adf(var_cbb15570)
{
	self endon("hash_c49ce021");
	self waittill("hash_128f8789");
	if(isdefined(self))
	{
		/#
			namespace_33b293fd::function_94739542("Dev Block strings are not supported" + var_cbb15570 + "Dev Block strings are not supported");
		#/
	}
	function_c49ce021(var_cbb15570);
}

/*
	Name: function_c49ce021
	Namespace: namespace_82b91a51
	Checksum: 0xE15BE440
	Offset: 0x3E88
	Size: 0xA3
	Parameters: 1
	Flags: None
*/
function function_c49ce021(var_cbb15570)
{
	var_27e203a6 = level.var_6a876531[var_cbb15570];
	level.var_6a876531 = namespace_84970cc4::function_8fdf50c0(level.var_6a876531, var_cbb15570, 1);
	if(function_5b49d38c(var_27e203a6))
	{
		var_27e203a6 function_7c9f312b(0);
		var_27e203a6 function_4b741fdc();
		var_27e203a6 notify("hash_c49ce021");
	}
}

/*
	Name: function_b269e456
	Namespace: namespace_82b91a51
	Checksum: 0x6D811C4B
	Offset: 0x3F38
	Size: 0x9
	Parameters: 0
	Flags: None
*/
function function_b269e456()
{
	return level.var_6a876531;
}

/*
	Name: function_740f8516
	Namespace: namespace_82b91a51
	Checksum: 0xF3970B5B
	Offset: 0x3F50
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function function_740f8516(var_cbb15570)
{
	if(!isdefined(level.var_6a876531))
	{
		level.var_6a876531 = [];
	}
	if(isdefined(level.var_6a876531[var_cbb15570]))
	{
		return level.var_6a876531[var_cbb15570];
	}
	else
	{
		return function_66773296(var_cbb15570);
	}
}

/*
	Name: function_d3426abc
	Namespace: namespace_82b91a51
	Checksum: 0xB2268FB6
	Offset: 0x3FC0
	Size: 0x15
	Parameters: 0
	Flags: None
*/
function function_d3426abc()
{
	return isdefined(self.var_d3426abc) && self.var_d3426abc;
}

/*
	Name: function_286a5010
	Namespace: namespace_82b91a51
	Checksum: 0x21171010
	Offset: 0x3FE0
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_286a5010(var_314c1232)
{
	namespace_71e9cb84::function_50f16166("world", "force_streamer", 1, function_eaa48678(var_314c1232), "int");
}

/*
	Name: function_a0938376
	Namespace: namespace_82b91a51
	Checksum: 0xEEBBD199
	Offset: 0x4038
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_a0938376()
{
	level namespace_ad23e503::function_1ab5ebec("all_players_connected");
	level namespace_71e9cb84::function_74d6b22f("force_streamer", 0);
}

/*
	Name: function_d8eaed3d
	Namespace: namespace_82b91a51
	Checksum: 0xB2B3E65A
	Offset: 0x4088
	Size: 0x43
	Parameters: 2
	Flags: None
*/
function function_d8eaed3d(var_7d372786, var_a6cc0cd9)
{
	if(!isdefined(var_a6cc0cd9))
	{
		var_a6cc0cd9 = 1;
	}
	level thread function_c748c2d6(var_7d372786, var_a6cc0cd9);
}

/*
	Name: function_c748c2d6
	Namespace: namespace_82b91a51
	Checksum: 0xBBF3A563
	Offset: 0x40D8
	Size: 0x2BB
	Parameters: 2
	Flags: None
*/
function function_c748c2d6(var_7d372786, var_a6cc0cd9)
{
	if(!isdefined(var_a6cc0cd9))
	{
		var_a6cc0cd9 = 1;
	}
	level notify("hash_d8eaed3d");
	level endon("hash_d8eaed3d");
	/#
		namespace_33b293fd::function_a7ee953(var_7d372786 > 0, "Dev Block strings are not supported");
	#/
	level namespace_957e94ce::function_74d6b22f("streamer_loading");
	level namespace_ad23e503::function_1ab5ebec("all_players_connected");
	if(var_a6cc0cd9)
	{
		level namespace_71e9cb84::function_74d6b22f("force_streamer", 0);
		function_76f13293();
	}
	level namespace_71e9cb84::function_74d6b22f("force_streamer", var_7d372786);
	if(!isdefined(level.var_66f2e49))
	{
		level.var_66f2e49 = 1;
		/#
			level.var_66f2e49 = 0;
		#/
	}
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a thread function_ba7c6f5d(var_7d372786);
	}
	/#
		var_637636ed = GetTime() + 15000;
	#/
	namespace_84970cc4::function_1ab5ebec(level.var_2395e945, "streamer" + var_7d372786, 15);
	level namespace_957e94ce::function_9d134160("streamer_loading");
	level function_11a89b44();
	/#
		if(GetTime() >= var_637636ed)
		{
			function_d0eaf029("Dev Block strings are not supported" + namespace_e00762ce::function_8e23acba(GetTime(), 6, "Dev Block strings are not supported"), (1, 0, 0));
		}
		else
		{
			function_d0eaf029("Dev Block strings are not supported" + namespace_e00762ce::function_8e23acba(GetTime(), 6, "Dev Block strings are not supported"), (1, 1, 1));
		}
	#/
}

/*
	Name: function_ba7c6f5d
	Namespace: namespace_82b91a51
	Checksum: 0xE0CE45FB
	Offset: 0x43A0
	Size: 0x47
	Parameters: 1
	Flags: None
*/
function function_ba7c6f5d(var_7d372786)
{
	self endon("hash_643a7daf");
	level endon("hash_d8eaed3d");
	self waittillmatch("hash_2de5828c");
	self notify("streamer" + var_7d372786, var_7d372786);
}

/*
	Name: function_93831e79
	Namespace: namespace_82b91a51
	Checksum: 0x39C5A6C9
	Offset: 0x43F0
	Size: 0x15D
	Parameters: 2
	Flags: None
*/
function function_93831e79(var_f3739c90, var_46031771)
{
	if(level.var_2395e945.size <= 1)
	{
		return;
	}
	var_95589644 = namespace_1d795d47::function_3529c409(var_f3739c90, var_46031771);
	/#
		namespace_33b293fd::function_a7ee953(var_95589644.size >= level.var_2395e945.size - 1, "Dev Block strings are not supported");
	#/
	for(var_c957f6b6 = 0; var_c957f6b6 < level.var_2395e945.size - 1; var_c957f6b6++)
	{
		level.var_2395e945[var_c957f6b6 + 1] function_a30814d(var_95589644[var_c957f6b6].var_722885f3);
		if(isdefined(var_95589644[var_c957f6b6].var_6ab6f4fd))
		{
			level.var_2395e945[var_c957f6b6 + 1] function_1cbbd5fa(2, "disconnect", &function_eda2be50, var_95589644[var_c957f6b6].var_6ab6f4fd);
		}
	}
}

/*
	Name: function_16c71b8
	Namespace: namespace_82b91a51
	Checksum: 0x25258FBC
	Offset: 0x4558
	Size: 0xF3
	Parameters: 1
	Flags: None
*/
function function_16c71b8(var_50ddaa73)
{
	self function_5e6740a8(var_50ddaa73);
	self function_1b947e2a("weapon_hud_visible", !var_50ddaa73);
	self function_ed04153c(!var_50ddaa73);
	self function_6fa6b424(!var_50ddaa73);
	self function_7c34e9c7(!var_50ddaa73);
	if(var_50ddaa73)
	{
		self function_518a4a08();
	}
	else
	{
		self function_4b9f6977();
	}
	namespace_16f9ecd3::function_e234a6a6(!var_50ddaa73);
	namespace_16f9ecd3::function_fc1750c9(!var_50ddaa73);
}

/*
	Name: function_459ff829
	Namespace: namespace_82b91a51
	Checksum: 0x93E62525
	Offset: 0x4658
	Size: 0xA9
	Parameters: 0
	Flags: None
*/
function function_459ff829()
{
	foreach(var_1e25855 in function_bd90138e())
	{
		if(function_329c21f4(var_1e25855))
		{
			var_1e25855 function_dc8c8404();
		}
	}
}

/*
	Name: function_ab12ef82
	Namespace: namespace_82b91a51
	Checksum: 0x476200EA
	Offset: 0x4710
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_ab12ef82(var_4ac85f5f)
{
	level.var_d83bc14d = var_4ac85f5f;
	if(!namespace_ad23e503::function_dbca4c5d(var_4ac85f5f))
	{
		level namespace_ad23e503::function_c35e6aab(level.var_d83bc14d);
	}
}

/*
	Name: function_ee915e11
	Namespace: namespace_82b91a51
	Checksum: 0xFFF86BED
	Offset: 0x4768
	Size: 0x17
	Parameters: 1
	Flags: None
*/
function function_ee915e11(var_4ac85f5f)
{
	level.var_8f7c5cd0 = var_4ac85f5f;
}

/*
	Name: function_e218424d
	Namespace: namespace_82b91a51
	Checksum: 0x4B7047F
	Offset: 0x4788
	Size: 0xBD
	Parameters: 1
	Flags: None
*/
function function_e218424d(var_ca4b1dc7)
{
	if(!isdefined(var_ca4b1dc7))
	{
		var_ca4b1dc7 = 1;
	}
	if(var_ca4b1dc7)
	{
		self namespace_175490fb::function_59965309("cybercom_hijack");
		self namespace_175490fb::function_59965309("cybercom_iffoverride");
		self.var_406cec76 = 1;
	}
	else
	{
		self namespace_175490fb::function_a1f70a02("cybercom_hijack");
		self namespace_175490fb::function_a1f70a02("cybercom_iffoverride");
		self.var_406cec76 = undefined;
	}
}

/*
	Name: function_b499f765
	Namespace: namespace_82b91a51
	Checksum: 0x61AD5FC3
	Offset: 0x4850
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_b499f765()
{
	namespace_71e9cb84::function_50f16166("toplayer", "player_cold_breath", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("actor", "ai_cold_breath", 1, 1, "counter");
}

/*
	Name: function_df6eb506
	Namespace: namespace_82b91a51
	Checksum: 0xC90EA492
	Offset: 0x48C0
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_df6eb506(var_f553b6d0)
{
	self namespace_71e9cb84::function_e9c3870b("player_cold_breath", var_f553b6d0);
}

/*
	Name: function_65ba133d
	Namespace: namespace_82b91a51
	Checksum: 0x30E700B1
	Offset: 0x48F8
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_65ba133d()
{
	self endon("hash_128f8789");
	if(self.var_8fc0e50e === "human")
	{
		wait(function_72a94f05(1, 3));
		self namespace_71e9cb84::function_331efedc("ai_cold_breath");
	}
}

/*
	Name: function_32d40124
	Namespace: namespace_82b91a51
	Checksum: 0xD21C31
	Offset: 0x4960
	Size: 0x183
	Parameters: 4
	Flags: None
*/
function function_32d40124(var_eeab2c04, var_8d46527e, var_bbb212d6, var_982815da)
{
	if(!isdefined(var_8d46527e))
	{
		var_8d46527e = 0;
	}
	if(!isdefined(var_bbb212d6))
	{
		var_bbb212d6 = "notify_turn_off_hint_text";
	}
	if(!isdefined(var_982815da))
	{
		var_982815da = 4;
	}
	self endon("hash_dbba2610");
	self endon("hash_6684a30d");
	if(isdefined(self.var_d34aee9d))
	{
		function_f9e5537b(0);
	}
	self.var_d34aee9d = self function_2f6b6a4c("CPHintText");
	self function_3a9588ea(self.var_d34aee9d, "hint_text_line", var_eeab2c04);
	if(var_8d46527e)
	{
		namespace_ce7c3ed5::function_5f70476c(self.var_d34aee9d, "blinking");
	}
	else
	{
		namespace_ce7c3ed5::function_5f70476c(self.var_d34aee9d, "display_noblink");
	}
	if(var_982815da != -1)
	{
		self thread function_d02dba1a(var_982815da);
		self thread function_a26ce1a(var_982815da, var_bbb212d6);
	}
}

/*
	Name: function_f9e5537b
	Namespace: namespace_82b91a51
	Checksum: 0x90828D8F
	Offset: 0x4AF0
	Size: 0xC1
	Parameters: 1
	Flags: None
*/
function function_f9e5537b(var_a1219866)
{
	if(!isdefined(var_a1219866))
	{
		var_a1219866 = 1;
	}
	self endon("hash_6684a30d");
	if(isdefined(self.var_d34aee9d))
	{
		if(var_a1219866)
		{
			namespace_ce7c3ed5::function_5f70476c(self.var_d34aee9d, "fadeout");
			function_9fcf3cd8(0.75, "kill_hint_text", "death");
		}
		self function_2b74b70a(self.var_d34aee9d);
		self.var_d34aee9d = undefined;
	}
	self notify("hash_6684a30d");
}

/*
	Name: function_a26ce1a
	Namespace: namespace_82b91a51
	Checksum: 0xD3DA1A80
	Offset: 0x4BC0
	Size: 0x73
	Parameters: 2
	Flags: None
*/
function function_a26ce1a(var_982815da, var_bbb212d6)
{
	self endon("hash_6684a30d");
	self endon("hash_128f8789");
	self endon("hash_ebb1b2fb");
	function_9fcf3cd8(var_982815da - 0.75, var_bbb212d6);
	function_f9e5537b(1);
}

/*
	Name: function_d02dba1a
	Namespace: namespace_82b91a51
	Checksum: 0x848B276D
	Offset: 0x4C40
	Size: 0x5B
	Parameters: 1
	Flags: None
*/
function function_d02dba1a(var_78962fff)
{
	self endon("hash_6684a30d");
	self endon("hash_643a7daf");
	function_9fcf3cd8(var_78962fff, "kill_hint_text", "death");
	function_f9e5537b(0);
}

/*
	Name: function_964b7eb7
	Namespace: namespace_82b91a51
	Checksum: 0x34EF5289
	Offset: 0x4CA8
	Size: 0x3B
	Parameters: 2
	Flags: None
*/
function function_964b7eb7(var_7aab41df, var_7aa7a596)
{
	var_7aab41df function_5b7e454a(&"comms_event_message", 1, var_7aa7a596);
}

/*
	Name: function_14518e76
	Namespace: namespace_82b91a51
	Checksum: 0xC7B9EDE3
	Offset: 0x4CF0
	Size: 0x263
	Parameters: 5
	Flags: None
*/
function function_14518e76(var_4dbf3ae3, var_b04bc952, var_884d30e8, var_e6ffaa89, var_87f7a2d)
{
	var_4dbf3ae3 function_d5eb00e3(var_884d30e8);
	var_4dbf3ae3 function_e68ee88a("HINT_INTERACTIVE_PROMPT");
	if(!isdefined(var_87f7a2d))
	{
		var_87f7a2d = [];
		break;
	}
	if(!isdefined(var_87f7a2d))
	{
		var_87f7a2d = [];
	}
	else if(!function_6e2770d8(var_87f7a2d))
	{
		var_87f7a2d = function_84970cc4(var_87f7a2d);
	}
	foreach(var_f79d1dda in var_87f7a2d)
	{
		var_f79d1dda namespace_16f9ecd3::function_e228c18a(1);
	}
	var_38c85157 = namespace_a230c2b1::function_be21f511("any", var_4dbf3ae3, var_87f7a2d, (0, 0, 0), var_b04bc952);
	var_38c85157 namespace_a230c2b1::function_1e5cb2cc("any");
	var_38c85157 namespace_a230c2b1::function_df0e9e69(0.35);
	var_38c85157 namespace_a230c2b1::function_a09b1ac1("allies");
	var_38c85157 namespace_a230c2b1::function_bd903f5c("any");
	var_38c85157.var_db0f901 = 0;
	var_38c85157.var_722885f3 = var_38c85157.var_722885f3;
	var_38c85157.var_6ab6f4fd = var_38c85157.var_6ab6f4fd;
	if(isdefined(var_e6ffaa89))
	{
		var_38c85157.var_3c8ea097 = var_e6ffaa89;
	}
	return var_38c85157;
}

