#using scripts\codescripts\struct;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\vehicle_shared;

#namespace namespace_b002c73b;

/*
	Name: function_2dc19561
	Namespace: namespace_b002c73b
	Checksum: 0xB35ADECF
	Offset: 0x250
	Size: 0x3B
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("sm_initial_spawns", &function_8c87d8eb, &function_5b6b9132, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_b002c73b
	Checksum: 0x99EC1590
	Offset: 0x298
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
}

/*
	Name: function_5b6b9132
	Namespace: namespace_b002c73b
	Checksum: 0x4B6C0DAE
	Offset: 0x2A8
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_5b6b9132()
{
	level thread function_590e549();
}

/*
	Name: function_18f12c5f
	Namespace: namespace_b002c73b
	Checksum: 0x65424C34
	Offset: 0x2D0
	Size: 0x7B
	Parameters: 1
	Flags: None
*/
function function_18f12c5f(var_f2945eca)
{
	self endon("hash_128f8789");
	wait(1);
	if(!level namespace_ad23e503::function_7922262b("sm_combat_started"))
	{
		wait(function_72a94f05(0.5, 1));
		level namespace_ad23e503::function_74d6b22f("sm_combat_started");
	}
}

/*
	Name: function_64ebf854
	Namespace: namespace_b002c73b
	Checksum: 0x8A94750D
	Offset: 0x358
	Size: 0xF
	Parameters: 0
	Flags: None
*/
function function_64ebf854()
{
	level waittill("hash_1b1dc746");
}

/*
	Name: function_590e549
	Namespace: namespace_b002c73b
	Checksum: 0x9AE0C2D3
	Offset: 0x370
	Size: 0xB9
	Parameters: 0
	Flags: None
*/
function function_590e549()
{
	wait(1);
	var_8eb85679 = namespace_14b42b8a::function_7faf4c39("infil_manager", "targetname");
	foreach(var_7e8d0707 in var_8eb85679)
	{
		var_7e8d0707 function_9b333f19();
	}
}

/*
	Name: function_9b333f19
	Namespace: namespace_b002c73b
	Checksum: 0xF955D8CD
	Offset: 0x438
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_9b333f19()
{
	var_61b5d65a = function_99201f25(self.var_b07228b6, "targetname");
	/#
		namespace_33b293fd::function_a7ee953(var_61b5d65a.size != 0, "Dev Block strings are not supported");
	#/
	var_61b5d65a[0] thread function_c04f5659();
}

/*
	Name: function_166a3348
	Namespace: namespace_b002c73b
	Checksum: 0xB0F03F24
	Offset: 0x4B8
	Size: 0x19D
	Parameters: 1
	Flags: None
*/
function function_166a3348(var_61b5d65a)
{
	for(var_c957f6b6 = 0; var_c957f6b6 < var_61b5d65a.size; var_c957f6b6++)
	{
		if(isdefined(var_61b5d65a[var_c957f6b6].var_caae374e) && isdefined(level.var_76c6e677))
		{
			if(var_61b5d65a[var_c957f6b6].var_caae374e == level.var_76c6e677)
			{
				var_3979e78 = var_61b5d65a[var_c957f6b6];
				continue;
			}
			var_61b5d65a[var_c957f6b6] function_2cf0cb11();
			namespace_84970cc4::function_8fdf50c0(var_61b5d65a, var_c957f6b6, 1);
		}
	}
	if(var_61b5d65a.size == 0)
	{
		return;
	}
	if(!isdefined(var_3979e78))
	{
		var_3979e78 = namespace_84970cc4::function_47d18840(var_61b5d65a);
	}
	foreach(var_45db3dab in var_61b5d65a)
	{
		if(var_45db3dab != var_3979e78)
		{
			var_45db3dab function_2cf0cb11();
		}
	}
	return var_3979e78;
}

/*
	Name: function_c04f5659
	Namespace: namespace_b002c73b
	Checksum: 0x37058842
	Offset: 0x660
	Size: 0x1AD
	Parameters: 0
	Flags: None
*/
function function_c04f5659()
{
	while(1)
	{
		self waittill("hash_4dbf3ae3", var_a3d46ee4);
		if(isdefined(var_a3d46ee4.var_e0beb6ee) && var_a3d46ee4.var_e0beb6ee != "spectator")
		{
			break;
		}
		wait(0.05);
	}
	var_b07228b6 = self.var_b07228b6;
	var_a1749b84 = function_99201f25(var_b07228b6, "targetname");
	/#
		namespace_33b293fd::function_a7ee953(var_a1749b84.size != 0, "Dev Block strings are not supported");
	#/
	var_9dfd5595 = self;
	wait(1);
	foreach(var_aa10fce8 in var_a1749b84)
	{
		if(function_eddad593(var_aa10fce8) && !isdefined(level.var_7952320e) && isdefined(var_9dfd5595))
		{
			var_aa10fce8 function_90dcd682(var_9dfd5595);
		}
	}
	self notify("hash_48a5af9");
}

/*
	Name: function_90dcd682
	Namespace: namespace_b002c73b
	Checksum: 0x46A5F607
	Offset: 0x818
	Size: 0x24B
	Parameters: 1
	Flags: None
*/
function function_90dcd682(var_92b4ece5)
{
	var_ac46855a = function_6ada35ba("street_battle_volume", "targetname");
	if(isdefined(level.var_1748bc03) || isdefined(level.var_e635c753))
	{
		if(isdefined(self.var_caae374e) && self.var_caae374e != "wasp_swarm" && self.var_caae374e != "hunter_swarm")
		{
			self.var_b07228b6 = undefined;
		}
	}
	if(!isdefined(self.var_caae374e))
	{
		var_835e5b1c = namespace_2f06d687::function_7387a40a(self);
		if(isdefined(level.var_e635c753) && function_8d0347b8(var_835e5b1c))
		{
			var_835e5b1c function_169cc712(var_ac46855a);
		}
		return;
	}
	if(self.var_caae374e == "wasp_swarm")
	{
		self thread function_7d634332();
		return;
	}
	if(self.var_caae374e == "hunter_swarm")
	{
		self thread function_db5780d1();
		return;
	}
	var_835e5b1c = namespace_2f06d687::function_7387a40a(self);
	if(self.var_caae374e == "patrol")
	{
		var_835e5b1c thread function_7da79f81(self.var_b07228b6);
	}
	else if(self.var_caae374e == "defend")
	{
		if(isdefined(var_835e5b1c.var_b07228b6))
		{
		}
	}
	else if(self.var_caae374e == "guard")
	{
		if(isdefined(var_835e5b1c.var_b07228b6))
		{
		}
	}
	else if(self.var_caae374e == "scene")
	{
		var_835e5b1c thread function_ef0b8dc3(self, var_92b4ece5);
	}
}

/*
	Name: function_7d634332
	Namespace: namespace_b002c73b
	Checksum: 0xABBDA6A1
	Offset: 0xA70
	Size: 0xB5
	Parameters: 0
	Flags: None
*/
function function_7d634332()
{
	var_db08859d = function_243bb261(self.var_b07228b6, "targetname");
	var_a4e8111c = VectorScale((0, 1, 0), 60);
	for(var_c957f6b6 = 0; var_c957f6b6 < self.var_8202763a; var_c957f6b6++)
	{
		var_7a91f98 = namespace_2f06d687::function_7387a40a(self);
		var_7a91f98 thread function_c6e1fa1(var_db08859d, var_c957f6b6);
	}
}

/*
	Name: function_db5780d1
	Namespace: namespace_b002c73b
	Checksum: 0xE235EED6
	Offset: 0xB30
	Size: 0xFF
	Parameters: 0
	Flags: None
*/
function function_db5780d1()
{
	var_db08859d = function_243bb261(self.var_b07228b6, "targetname");
	var_5e7ee507 = namespace_2f06d687::function_7387a40a(self);
	var_5e7ee507 namespace_72ee5da4::function_81b6f1ac();
	var_5e7ee507 namespace_96fa87af::function_b6b0ca71(var_db08859d);
	var_5e7ee507.var_c1535232 = 1;
	var_5e7ee507 namespace_96fa87af::function_ff72658f();
	var_5e7ee507 function_169cc712(level.var_2395e945[0], 0, 1000);
	var_5e7ee507 namespace_72ee5da4::function_efe9815e();
	var_5e7ee507.var_cbe906c = level.var_2395e945[0];
}

/*
	Name: function_c6e1fa1
	Namespace: namespace_b002c73b
	Checksum: 0xFFD35537
	Offset: 0xC38
	Size: 0x10F
	Parameters: 2
	Flags: None
*/
function function_c6e1fa1(var_db08859d, var_5e76f0af)
{
	var_a4e8111c = VectorScale((0, 1, 0), 30);
	self namespace_72ee5da4::function_81b6f1ac();
	self namespace_96fa87af::function_b6b0ca71(var_db08859d);
	self.var_c1535232 = 1;
	var_df73cfff = function_e55a5d84(var_5e76f0af);
	self function_f374d9ef(var_a4e8111c * var_df73cfff);
	self namespace_96fa87af::function_ff72658f();
	self function_169cc712(level.var_2395e945[0], 0, 600, 150);
	self namespace_72ee5da4::function_efe9815e();
	self.var_cbe906c = level.var_2395e945[0];
}

/*
	Name: function_e55a5d84
	Namespace: namespace_b002c73b
	Checksum: 0x274C93F0
	Offset: 0xD50
	Size: 0x4D
	Parameters: 1
	Flags: None
*/
function function_e55a5d84(var_c957f6b6)
{
	if(var_c957f6b6 % 2 == 0)
	{
		return var_c957f6b6 / 2 * -1;
	}
	else
	{
		return var_c957f6b6 - var_c957f6b6 / 2 + 0.5;
	}
}

/*
	Name: function_7da79f81
	Namespace: namespace_b002c73b
	Checksum: 0x2CC09275
	Offset: 0xDA8
	Size: 0x8F
	Parameters: 1
	Flags: None
*/
function function_7da79f81(var_cc525a1a)
{
	self endon("hash_128f8789");
	while(1)
	{
		self waittill("hash_8b1fd6a8", var_90ca1fdd);
		if(isdefined(var_90ca1fdd.var_7d402220) || (isdefined(var_90ca1fdd.var_85057f6d) && isdefined(var_90ca1fdd.var_bfef2183)))
		{
			var_90ca1fdd namespace_82b91a51::function_7d402220();
		}
	}
}

/*
	Name: function_ef0b8dc3
	Namespace: namespace_b002c73b
	Checksum: 0xCC13D254
	Offset: 0xE40
	Size: 0x13B
	Parameters: 2
	Flags: None
*/
function function_ef0b8dc3(var_2d7613bb, var_92b4ece5)
{
	if(isdefined(self.var_b07228b6))
	{
		var_90ca1fdd = function_b4cb3503(self.var_b07228b6, "targetname");
		if(isdefined(var_90ca1fdd))
		{
		}
		else
		{
			var_ac46855a = function_6ada35ba(self.var_b07228b6, "targetname");
		}
	}
	else if(isdefined(var_92b4ece5.var_e363b850))
	{
		self.var_a1ed1ed1 = var_92b4ece5.var_e363b850;
	}
	if(isdefined(var_92b4ece5.var_f8456b37))
	{
		self.var_7dfaf62 = var_92b4ece5.var_f8456b37;
	}
	wait(0.05);
	/#
		namespace_33b293fd::function_a7ee953(isdefined(self.var_db7bb468), "Dev Block strings are not supported");
	#/
	var_2d7613bb thread namespace_cc27597::function_c35e6aab(self.var_db7bb468, self);
}

/*
	Name: function_2cf0cb11
	Namespace: namespace_b002c73b
	Checksum: 0x8423BA4C
	Offset: 0xF88
	Size: 0x1E3
	Parameters: 0
	Flags: None
*/
function function_2cf0cb11()
{
	var_a1749b84 = function_99201f25(self.var_b07228b6, "targetname");
	foreach(var_aa10fce8 in var_a1749b84)
	{
		if(function_eddad593(var_aa10fce8))
		{
			var_aa10fce8 function_dc8c8404();
			continue;
		}
		if(isdefined(var_aa10fce8.var_b07228b6))
		{
			var_917b6649 = function_fe0cfd2e(var_aa10fce8.var_b07228b6, "targetname");
			foreach(var_90ca1fdd in var_917b6649)
			{
				function_d224409e(var_90ca1fdd, 0);
			}
		}
		var_aa10fce8 function_de8377bf();
		var_aa10fce8 function_dc8c8404();
	}
	self function_dc8c8404();
}

/*
	Name: function_fbf6b4c8
	Namespace: namespace_b002c73b
	Checksum: 0x62D0040E
	Offset: 0x1178
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_fbf6b4c8()
{
	if(!isdefined(level.var_7952320e))
	{
		level.var_7952320e = 1;
	}
}

