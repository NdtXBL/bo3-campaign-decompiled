#using scripts\codescripts\struct;
#using scripts\cp\_skipto;
#using scripts\shared\array_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\sound_shared;
#using scripts\shared\system_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;

#namespace namespace_6018e357;

/*
	Name: function_2dc19561
	Namespace: namespace_6018e357
	Checksum: 0x4F4648ED
	Offset: 0x2D8
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("elevator", &function_8c87d8eb, undefined, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_6018e357
	Checksum: 0x43A64FE
	Offset: 0x318
	Size: 0x39B
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	var_a383aee8 = function_99201f25("elevator_trigger", "targetname");
	if(var_a383aee8.size <= 0)
	{
		return;
	}
	var_e9a8af4f = [];
	var_aca656dd = [];
	var_6e143534 = [];
	var_3efc9d86 = [];
	for(var_c957f6b6 = 0; var_c957f6b6 < var_a383aee8.size; var_c957f6b6++)
	{
		var_82ee4bd8 = function_99201f25(var_a383aee8[var_c957f6b6].var_b07228b6, "targetname");
		for(var_a3557c4d = 0; var_a3557c4d < var_82ee4bd8.size; var_a3557c4d++)
		{
			if(var_82ee4bd8[var_a3557c4d].var_e6e9b8de == "script_brushmodel")
			{
				var_c532cf91 = var_82ee4bd8[var_a3557c4d];
				break;
			}
		}
		if(!isdefined(var_c532cf91))
		{
			/#
				namespace_33b293fd::function_94739542("Dev Block strings are not supported" + var_a383aee8[var_c957f6b6].var_722885f3);
			#/
		}
		if(isdefined(var_c532cf91))
		{
			var_3efc9d86 = function_99201f25(var_c532cf91.var_b07228b6, "targetname");
			var_aca656dd[var_aca656dd.size] = var_c532cf91;
		}
	}
	for(var_c957f6b6 = 0; var_c957f6b6 < var_e9a8af4f.size; var_c957f6b6++)
	{
		var_298023d0 = function_6ada35ba(var_e9a8af4f[var_c957f6b6].var_b07228b6, "targetname");
		if(!isdefined(var_298023d0))
		{
			/#
				namespace_33b293fd::function_94739542("Dev Block strings are not supported" + var_e9a8af4f[var_c957f6b6].var_722885f3);
			#/
			continue;
		}
		var_e7020f3 = 0;
		for(var_4f8217af = 0; var_4f8217af < var_6e143534.size; var_4f8217af++)
		{
			if(var_298023d0 == var_6e143534[var_4f8217af])
			{
				var_e7020f3++;
			}
		}
		if(var_e7020f3 > 0)
		{
			continue;
			continue;
		}
		var_6e143534[var_6e143534.size] = var_298023d0;
	}
	for(var_c957f6b6 = 0; var_c957f6b6 < var_aca656dd.size; var_c957f6b6++)
	{
		var_e7020f3 = 0;
		for(var_4f8217af = 0; var_4f8217af < var_6e143534.size; var_4f8217af++)
		{
			if(var_aca656dd[var_c957f6b6] == var_6e143534[var_4f8217af])
			{
				var_e7020f3++;
			}
		}
		if(var_e7020f3 > 0)
		{
			continue;
			continue;
		}
		var_6e143534[var_6e143534.size] = var_aca656dd[var_c957f6b6];
	}
	namespace_84970cc4::function_966ecb29(var_6e143534, &function_685e3ca, 0);
}

/*
	Name: function_685e3ca
	Namespace: namespace_6018e357
	Checksum: 0xA0FAE4CB
	Offset: 0x6C0
	Size: 0x583
	Parameters: 0
	Flags: None
*/
function function_685e3ca()
{
	self function_b0b70abb(1);
	var_963e7dc9 = [];
	var_38b2d855 = [];
	var_de4bc4e1 = [];
	var_ccb74de5 = undefined;
	var_298023d0 = self;
	var_8b70705a = var_298023d0.var_170527fb;
	var_298023d0.var_e20864cf = 1;
	var_a383aee8 = [];
	var_7c053dd5 = function_99201f25(var_8b70705a, "target");
	var_e5dd7f78 = 0;
	for(var_c957f6b6 = 0; var_c957f6b6 < var_7c053dd5.size; var_c957f6b6++)
	{
		if(var_7c053dd5[var_c957f6b6].var_e6e9b8de == "script_model" || var_7c053dd5[var_c957f6b6].var_e6e9b8de == "script_brushmodel")
		{
			var_31353764 = function_6ada35ba(var_7c053dd5[var_c957f6b6].var_170527fb, "target");
			var_a383aee8[var_a383aee8.size] = var_31353764;
			continue;
		}
		var_a383aee8[var_a383aee8.size] = var_7c053dd5[var_c957f6b6];
	}
	var_1564576c = function_99201f25(var_298023d0.var_b07228b6, "targetname");
	var_b116754 = namespace_14b42b8a::function_7faf4c39(var_298023d0.var_b07228b6, "targetname");
	var_3823bc4b = function_525ae497(var_1564576c, var_b116754, 1, 0);
	if(var_3823bc4b.size <= 0)
	{
		/#
			namespace_33b293fd::function_94739542("Dev Block strings are not supported" + var_298023d0.var_722885f3);
		#/
	}
	if(isdefined(var_3823bc4b))
	{
		for(var_c957f6b6 = 0; var_c957f6b6 < var_3823bc4b.size; var_c957f6b6++)
		{
			if(isdefined(var_3823bc4b[var_c957f6b6].var_caae374e))
			{
				if(var_3823bc4b[var_c957f6b6].var_caae374e == "audio_point")
				{
					var_963e7dc9[var_963e7dc9.size] = var_3823bc4b[var_c957f6b6];
				}
				if(var_3823bc4b[var_c957f6b6].var_caae374e == "elevator_door")
				{
					var_de4bc4e1[var_de4bc4e1.size] = var_3823bc4b[var_c957f6b6];
				}
				if(var_3823bc4b[var_c957f6b6].var_caae374e == "elevator_klaxon_speaker")
				{
					var_38b2d855[var_38b2d855.size] = var_3823bc4b[var_c957f6b6];
				}
				if(var_3823bc4b[var_c957f6b6].var_caae374e == "platform_start")
				{
					var_ccb74de5 = function_dbaa007d(var_3823bc4b[var_c957f6b6]);
				}
			}
		}
	}
	else if(!isdefined(var_ccb74de5))
	{
		/#
			namespace_33b293fd::function_94739542("Dev Block strings are not supported" + var_298023d0.var_722885f3);
		#/
	}
	if(isdefined(var_de4bc4e1) && var_de4bc4e1.size > 0)
	{
		namespace_84970cc4::function_966ecb29(var_de4bc4e1, &function_9cdfa1cb, var_8b70705a, var_298023d0);
	}
	if(isdefined(var_38b2d855) && var_38b2d855.size > 0)
	{
		namespace_84970cc4::function_966ecb29(var_38b2d855, &function_f8c94c1b, "elevator_" + var_8b70705a + "_move", "stop_" + var_8b70705a + "_movement_sound");
	}
	if(isdefined(var_963e7dc9) && var_963e7dc9.size > 0)
	{
		namespace_84970cc4::function_966ecb29(var_963e7dc9, &function_f8c94c1b, "start_" + var_8b70705a + "_klaxon", "stop_" + var_8b70705a + "_klaxon");
	}
	namespace_84970cc4::function_966ecb29(var_a383aee8, &function_b2dfa7a2, var_8b70705a);
	var_298023d0.var_be2ea7e9 = function_9b7fda5e("script_origin", self.var_722885f3);
	var_298023d0.var_be2ea7e9 function_37f7858a(self);
	var_298023d0 thread function_9d50f6ac(var_ccb74de5, var_8b70705a, var_e5dd7f78);
}

/*
	Name: function_dbaa007d
	Namespace: namespace_6018e357
	Checksum: 0x3494398D
	Offset: 0xC50
	Size: 0x133
	Parameters: 1
	Flags: None
*/
function function_dbaa007d(var_26db055e)
{
	var_190bcb6b = var_26db055e;
	if(isdefined(var_190bcb6b.var_ff1f6868))
	{
		world namespace_ad23e503::function_1ab5ebec("skipto_player_connected");
		waittillframeend;
		if(level namespace_ad23e503::function_7922262b(var_190bcb6b.var_ff1f6868 + "_completed"))
		{
			while(1)
			{
				if(isdefined(var_190bcb6b.var_b07228b6))
				{
					var_190bcb6b = namespace_14b42b8a::function_7922262b(var_190bcb6b.var_b07228b6, "targetname");
				}
				else
				{
					break;
				}
				if(isdefined(var_190bcb6b.var_ff1f6868))
				{
					if(var_190bcb6b.var_ff1f6868 == level.var_c0e97bd)
					{
						break;
					}
				}
			}
		}
	}
	if(isdefined(var_190bcb6b.var_7d402220))
	{
		var_e5dd7f78 = var_190bcb6b.var_7d402220;
	}
	return var_190bcb6b;
}

/*
	Name: function_b2dfa7a2
	Namespace: namespace_6018e357
	Checksum: 0x6A123ABA
	Offset: 0xD90
	Size: 0x14F
	Parameters: 1
	Flags: None
*/
function function_b2dfa7a2(var_8b70705a)
{
	self endon("hash_128f8789");
	level endon(var_8b70705a + "_disabled");
	if(isdefined(level.var_6a876531) && isdefined(self.var_db7bb468) && self.var_db7bb468 == "all_heroes")
	{
		self thread function_5eba01bd(var_8b70705a);
	}
	while(1)
	{
		self namespace_4dbf3ae3::function_1ab5ebec();
		level notify("start_" + var_8b70705a + "_klaxon");
		level notify("close_" + var_8b70705a + "_doors");
		if(isdefined(self.var_7d402220))
		{
			wait(self.var_7d402220);
		}
		else
		{
			wait(2);
		}
		level notify("elevator_" + var_8b70705a + "_move");
		level waittill("elevator_" + var_8b70705a + "_stop");
		level notify("stop_" + var_8b70705a + "_klaxon");
		level notify("open_" + var_8b70705a + "_doors");
	}
}

/*
	Name: function_5eba01bd
	Namespace: namespace_6018e357
	Checksum: 0x486CA50C
	Offset: 0xEE8
	Size: 0x137
	Parameters: 1
	Flags: None
*/
function function_5eba01bd(var_8b70705a)
{
	level endon("elevator_" + var_8b70705a + "_move");
	level endon(var_8b70705a + "_disabled");
	var_d93a8d4d = 0;
	wait(1);
	while(1)
	{
		var_d93a8d4d = 1;
		foreach(var_717a34e1 in level.var_6a876531)
		{
			var_d93a8d4d = var_d93a8d4d & var_717a34e1 function_32fa5072(self);
		}
		if(var_d93a8d4d)
		{
			self function_175e6b8e(1);
		}
		else
		{
			self function_175e6b8e(0);
		}
		wait(0.2);
	}
}

/*
	Name: function_f8c94c1b
	Namespace: namespace_6018e357
	Checksum: 0xCD5F0557
	Offset: 0x1028
	Size: 0x5B
	Parameters: 2
	Flags: None
*/
function function_f8c94c1b(var_544bc7c7, var_20c20cf5)
{
	level waittill(var_544bc7c7);
	if(isdefined(self.var_d47f13c))
	{
		self thread namespace_93b50d82::function_4617f9ec(level.var_695a72d7[self.var_d47f13c], self.var_722885f3, var_20c20cf5);
	}
}

/*
	Name: function_9cdfa1cb
	Namespace: namespace_6018e357
	Checksum: 0x3AD3CADF
	Offset: 0x1090
	Size: 0x2D3
	Parameters: 2
	Flags: None
*/
function function_9cdfa1cb(var_8b70705a, var_298023d0)
{
	var_3ac8d80f = namespace_14b42b8a::function_7922262b(self.var_b07228b6, "targetname");
	if(!isdefined(var_3ac8d80f))
	{
		/#
			namespace_33b293fd::function_94739542("Dev Block strings are not supported" + self.var_722885f3);
		#/
	}
	if(isdefined(var_3ac8d80f.var_b07228b6))
	{
		var_f0bc435f = namespace_14b42b8a::function_7922262b(var_3ac8d80f.var_b07228b6, "targetname");
	}
	if(!isdefined(var_f0bc435f))
	{
		/#
			namespace_33b293fd::function_94739542("Dev Block strings are not supported" + self.var_722885f3);
		#/
	}
	if(isdefined(var_3ac8d80f.var_6604b19f))
	{
		var_73345118 = var_3ac8d80f.var_6604b19f;
	}
	else
	{
		var_73345118 = 1;
	}
	if(isdefined(var_f0bc435f.var_6604b19f))
	{
		var_ef73127f = var_f0bc435f.var_6604b19f;
	}
	else
	{
		var_ef73127f = 1;
	}
	var_b1d2ef55 = 0;
	if(isdefined(var_f0bc435f.var_caae374e) && var_f0bc435f.var_caae374e == "stay_closed")
	{
		var_b1d2ef55 = 1;
	}
	self.var_722885f3 = var_3ac8d80f.var_722885f3;
	self.var_6ab6f4fd = var_3ac8d80f.var_6ab6f4fd;
	var_26dfbb14 = var_f0bc435f.var_722885f3 - self.var_722885f3;
	var_ebf964d9 = var_f0bc435f.var_6ab6f4fd - self.var_6ab6f4fd;
	var_9a35a990 = self.var_722885f3 - var_f0bc435f.var_722885f3;
	var_35a4cf2b = self.var_6ab6f4fd - var_f0bc435f.var_6ab6f4fd;
	self thread function_f8655445(var_8b70705a, "close_", var_298023d0, var_26dfbb14, var_ebf964d9, var_ef73127f);
	if(!var_b1d2ef55)
	{
		self thread function_f8655445(var_8b70705a, "open_", var_298023d0, var_9a35a990, var_35a4cf2b, var_73345118);
	}
}

/*
	Name: function_f8655445
	Namespace: namespace_6018e357
	Checksum: 0x10D2AFF0
	Offset: 0x1370
	Size: 0x107
	Parameters: 6
	Flags: None
*/
function function_f8655445(var_8b70705a, var_102e3d58, var_298023d0, var_8e4b278, var_6cac4ba4, var_78962fff)
{
	level endon(var_8b70705a + "_disabled");
	self function_37f7858a(var_298023d0);
	while(1)
	{
		level waittill(var_102e3d58 + var_8b70705a + "_doors");
		self function_52fddbd0();
		self function_a96a2721(self.var_722885f3 + var_8e4b278, var_78962fff);
		self function_c0b6566f(self.var_6ab6f4fd + var_6cac4ba4, var_78962fff);
		wait(var_78962fff);
		self function_37f7858a(var_298023d0);
	}
}

/*
	Name: function_9d50f6ac
	Namespace: namespace_6018e357
	Checksum: 0x3C8BD5EC
	Offset: 0x1480
	Size: 0x503
	Parameters: 3
	Flags: None
*/
function function_9d50f6ac(var_ccb74de5, var_8b70705a, var_e5dd7f78)
{
	level endon(var_8b70705a + "_disabled");
	var_135123a4 = [];
	var_95fa47b1 = 0;
	if(isdefined(var_ccb74de5.var_ff1f6868))
	{
		self.var_722885f3 = var_ccb74de5.var_722885f3;
		self.var_6ab6f4fd = var_ccb74de5.var_6ab6f4fd;
	}
	self.var_8b70705a = var_8b70705a;
	if(!isdefined(var_135123a4))
	{
		var_135123a4 = [];
	}
	else if(!function_6e2770d8(var_135123a4))
	{
		var_135123a4 = function_84970cc4(var_135123a4);
	}
	var_135123a4[var_135123a4.size] = var_ccb74de5;
	if(isdefined(var_ccb74de5.var_b07228b6))
	{
		var_985798ea = namespace_14b42b8a::function_7922262b(var_ccb74de5.var_b07228b6, "targetname");
	}
	if(!isdefined(var_985798ea))
	{
		return;
	}
	var_d9a41c78 = 1;
	var_eef38cd8 = var_ccb74de5;
	while(var_d9a41c78)
	{
		if(isdefined(var_eef38cd8.var_b07228b6))
		{
			var_eef38cd8 = namespace_14b42b8a::function_7922262b(var_eef38cd8.var_b07228b6, "targetname");
			if(isdefined(var_eef38cd8) && var_135123a4[0] != var_eef38cd8)
			{
				if(!isdefined(var_135123a4))
				{
					var_135123a4 = [];
				}
				else if(!function_6e2770d8(var_135123a4))
				{
					var_135123a4 = function_84970cc4(var_135123a4);
				}
				var_135123a4[var_135123a4.size] = var_eef38cd8;
			}
			else
			{
				var_95fa47b1 = 1;
				var_d9a41c78 = 0;
			}
		}
		else
		{
			var_d9a41c78 = 0;
		}
	}
	while(1)
	{
		level waittill("elevator_" + var_8b70705a + "_move");
		wait(var_e5dd7f78);
		if(isdefined(level.var_695a72d7) && isdefined(level.var_695a72d7["elevator_start"]))
		{
			self function_921a1574(level.var_695a72d7["elevator_start"]);
		}
		self function_921a1574("veh_" + var_8b70705a + "_start");
		self.var_be2ea7e9 function_c2931a36("veh_" + var_8b70705a + "_loop", 0.5);
		var_d007da9e = -1;
		do
		{
			for(var_c957f6b6 = 0; var_c957f6b6 < var_135123a4.size; var_c957f6b6++)
			{
				var_22ae8d39 = var_135123a4[var_c957f6b6];
				if(!isdefined(var_22ae8d39))
				{
					continue;
				}
				if(self.var_722885f3 != var_22ae8d39.var_722885f3)
				{
					var_d007da9e = function_e9e4fc6f(var_22ae8d39, var_d007da9e);
					var_60db70fa = function_7d15e2f8(self.var_722885f3, var_22ae8d39.var_722885f3) / var_d007da9e;
					if(var_60db70fa <= 0)
					{
					}
					else
					{
					}
					var_60db70fa = var_60db70fa;
					self function_a96a2721(var_22ae8d39.var_722885f3, var_60db70fa, var_60db70fa / 2, var_60db70fa / 2);
					self function_c0b6566f(var_22ae8d39.var_6ab6f4fd, var_60db70fa, var_60db70fa * 0.5, var_60db70fa * 0.5);
					self waittill("hash_a21db68a");
				}
				function_8a110bd3(var_22ae8d39, var_8b70705a);
			}
		}
		while(!(isdefined(var_95fa47b1) && var_95fa47b1));
		function_fcf56ab5();
		var_135123a4 = namespace_84970cc4::function_6449a8e1(var_135123a4);
		self.var_e20864cf = !self.var_e20864cf;
	}
}

/*
	Name: function_fcf56ab5
	Namespace: namespace_6018e357
	Checksum: 0xE495A923
	Offset: 0x1990
	Size: 0x12B
	Parameters: 0
	Flags: None
*/
function function_fcf56ab5()
{
	level notify("elevator_" + self.var_8b70705a + "_stop");
	level notify("stop_" + self.var_8b70705a + "_movement_sound");
	self.var_722885f3 = self.var_722885f3;
	self.var_6ab6f4fd = self.var_6ab6f4fd;
	if(isdefined(self.var_d47f13c))
	{
		self function_921a1574(level.var_695a72d7[self.var_d47f13c]);
	}
	self.var_be2ea7e9 function_eaa69754(0.5);
	self function_921a1574("veh_" + self.var_8b70705a + "_stop");
	if(isdefined(level.var_695a72d7) && isdefined(level.var_695a72d7["elevator_end"]))
	{
		self function_921a1574(level.var_695a72d7["elevator_end"]);
	}
}

/*
	Name: function_8a110bd3
	Namespace: namespace_6018e357
	Checksum: 0x56B1C6C8
	Offset: 0x1AC8
	Size: 0x123
	Parameters: 2
	Flags: None
*/
function function_8a110bd3(var_90ca1fdd, var_8b70705a)
{
	if(isdefined(var_90ca1fdd.var_66715b4))
	{
		level notify(var_90ca1fdd.var_66715b4);
		self notify(var_90ca1fdd.var_66715b4);
	}
	if(isdefined(var_90ca1fdd.var_70b143d))
	{
		level namespace_82b91a51::function_f20332a2(level, var_90ca1fdd.var_70b143d, self, var_90ca1fdd.var_70b143d);
	}
	if(isdefined(var_90ca1fdd.var_7d402220))
	{
		self function_921a1574("veh_" + var_8b70705a + "_dc");
		wait(var_90ca1fdd.var_7d402220);
		level notify("elevator_" + self.var_8b70705a + "_script_wait_done");
		self notify("elevator_" + self.var_8b70705a + "_script_wait_done");
	}
}

/*
	Name: function_e9e4fc6f
	Namespace: namespace_6018e357
	Checksum: 0x1954EDD1
	Offset: 0x1BF8
	Size: 0x53
	Parameters: 2
	Flags: None
*/
function function_e9e4fc6f(var_152c3913, var_d007da9e)
{
	if(var_d007da9e <= 0)
	{
		var_d007da9e = 100;
	}
	if(isdefined(var_152c3913.var_d007da9e))
	{
		var_d007da9e = var_152c3913.var_d007da9e;
	}
	return var_d007da9e;
}

