#using scripts\codescripts\struct;
#using scripts\cp\_load;
#using scripts\cp\_oed;
#using scripts\cp\_util;
#using scripts\cp\bonuszm\_bonuszm_biodomes1;
#using scripts\cp\bonuszm\_bonuszm_data;
#using scripts\cp\bonuszm\_bonuszm_dev;
#using scripts\cp\bonuszm\_bonuszm_magicbox;
#using scripts\cp\bonuszm\_bonuszm_prologue;
#using scripts\cp\bonuszm\_bonuszm_sgen;
#using scripts\cp\bonuszm\_bonuszm_sound;
#using scripts\cp\bonuszm\_bonuszm_spawner_shared;
#using scripts\cp\bonuszm\_bonuszm_util;
#using scripts\cp\bonuszm\_bonuszm_weapons;
#using scripts\cp\cybercom\_cybercom;
#using scripts\cp\cybercom\_cybercom_gadget;
#using scripts\cp\cybercom\_cybercom_tactical_rig;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_globallogic_player;
#using scripts\shared\_oob;
#using scripts\shared\ai\archetype_utility;
#using scripts\shared\ai\systems\blackboard;
#using scripts\shared\ai\systems\shared;
#using scripts\shared\ai\zombie_shared;
#using scripts\shared\ai\zombie_utility;
#using scripts\shared\ammo_shared;
#using scripts\shared\archetype_shared\archetype_shared;
#using scripts\shared\array_shared;
#using scripts\shared\audio_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\clientids_shared;
#using scripts\shared\containers_shared;
#using scripts\shared\demo_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\gameskill_shared;
#using scripts\shared\laststand_shared;
#using scripts\shared\load_shared;
#using scripts\shared\math_shared;
#using scripts\shared\music_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\serverfaceanim_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\system_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\tweakables_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\weapons_shared;

#namespace namespace_fdfaa57d;

/*
	Name: function_d290ebfa
	Namespace: namespace_fdfaa57d
	Checksum: 0x883DA939
	Offset: 0xB18
	Size: 0x6B
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_d290ebfa()
{
	if(!function_27c72c1b())
	{
		return;
	}
	level.var_26432505 = &function_26432505;
	function_94c35cf8();
	level.var_61c4b2a6 = 0;
	level.var_c85f5b9b = [];
	level thread function_2a5eb705();
}

/*
	Name: function_c35e6aab
	Namespace: namespace_fdfaa57d
	Checksum: 0x99EC1590
	Offset: 0xB90
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_c35e6aab()
{
}

/*
	Name: function_b67e03f7
	Namespace: namespace_fdfaa57d
	Checksum: 0xBF20C473
	Offset: 0xBA0
	Size: 0xAC3
	Parameters: 0
	Flags: None
*/
function function_b67e03f7()
{
	if(level.var_61c4b2a6 >= 8)
	{
		return;
	}
	if(isdefined(self.var_4f1bf25e) && self.var_4f1bf25e)
	{
		return;
	}
	var_7c911129 = level.var_a9e78bf7["powerupdropsenabled"];
	var_978f1b32 = level.var_a9e78bf7["powerdropchance"] * level.var_a9e78bf7["powerdropsscalar"];
	/#
		if(function_6f1ebe57("Dev Block strings are not supported") != "Dev Block strings are not supported")
		{
			var_7c911129 = 1;
			var_978f1b32 = 100;
		}
	#/
	if(!var_7c911129)
	{
		return;
	}
	var_ef42c02d = 0;
	if(isdefined(self.var_6ad7f3f8) && self.var_6ad7f3f8)
	{
		var_ef42c02d = 1;
	}
	var_e269fb69 = function_26299103(100);
	if(var_e269fb69 > var_978f1b32 && !var_ef42c02d)
	{
		return;
	}
	var_3da6324 = function_26299103(function_b6b79a0(var_978f1b32));
	var_2f14c279 = undefined;
	var_bf55d8d2 = [];
	if(isdefined(var_ef42c02d) && var_ef42c02d)
	{
		var_bf55d8d2[var_bf55d8d2.size] = "instakill";
	}
	else if(var_3da6324 < function_b6b79a0(level.var_a9e78bf7["weapondropchance"] * level.var_a9e78bf7["powerdropsscalar"]))
	{
		var_bf55d8d2[var_bf55d8d2.size] = "random_weapon";
	}
	if(var_3da6324 < function_b6b79a0(level.var_a9e78bf7["cybercoredropchance"] * level.var_a9e78bf7["powerdropsscalar"]))
	{
		var_bf55d8d2[var_bf55d8d2.size] = "cybercom";
	}
	if(var_3da6324 < function_b6b79a0(level.var_a9e78bf7["cybercoreupgradeddropchance"] * level.var_a9e78bf7["powerdropsscalar"]))
	{
		var_bf55d8d2[var_bf55d8d2.size] = "cybercom_upgraded";
	}
	var_7a2764e8 = function_846256f4("axis");
	var_d55df350 = isdefined(var_7a2764e8) && var_7a2764e8.size && var_7a2764e8.size >= 3;
	if(var_3da6324 < function_b6b79a0(level.var_a9e78bf7["instakilldropchance"] * level.var_a9e78bf7["powerdropsscalar"]) && !function_9c4468cc() && !function_5fcda3a0())
	{
		var_bf55d8d2[var_bf55d8d2.size] = "instakill";
	}
	if(var_3da6324 < function_b6b79a0(level.var_a9e78bf7["maxdropammochance"] * level.var_a9e78bf7["powerdropsscalar"]))
	{
		var_bf55d8d2[var_bf55d8d2.size] = "max_ammo";
	}
	if(var_3da6324 < function_b6b79a0(level.var_a9e78bf7["maxdropammoupgradedchance"] * level.var_a9e78bf7["powerdropsscalar"]))
	{
		var_bf55d8d2[var_bf55d8d2.size] = "max_ammo_upgraded";
	}
	if(var_d55df350 && var_3da6324 < function_b6b79a0(level.var_a9e78bf7["instakillupgradeddropchance"] * level.var_a9e78bf7["powerdropsscalar"]) && !function_9c4468cc() && !function_5fcda3a0())
	{
		var_b37cc8bd = 0;
		foreach(var_5dc5e20a in level.var_2395e945)
		{
			if(var_5dc5e20a function_2103ff4b(level.var_45cae8b1, 1))
			{
				var_b37cc8bd = 1;
			}
		}
		if(!var_b37cc8bd)
		{
			var_bf55d8d2[var_bf55d8d2.size] = "instakill_upgraded";
		}
		else
		{
			var_bf55d8d2[var_bf55d8d2.size] = "instakill";
		}
	}
	if(var_d55df350 && var_3da6324 < function_b6b79a0(level.var_a9e78bf7["rapsdropchance"] * level.var_a9e78bf7["powerdropsscalar"]) && (!isdefined(level.var_5a1513c4) && level.var_5a1513c4))
	{
		var_bf55d8d2[var_bf55d8d2.size] = "raps";
	}
	if(var_bf55d8d2.size)
	{
		var_2f14c279 = var_bf55d8d2[function_26299103(var_bf55d8d2.size)];
	}
	/#
		if(function_6f1ebe57("Dev Block strings are not supported") != "Dev Block strings are not supported")
		{
			var_2f14c279 = function_6f1ebe57("Dev Block strings are not supported");
		}
	#/
	if(!isdefined(var_2f14c279))
	{
		return;
	}
	var_2395e945 = function_3f10449f();
	var_61338191 = function_e7bdc1a1(self.var_722885f3, var_2395e945, 100);
	var_722885f3 = self.var_722885f3;
	if(isdefined(var_61338191))
	{
		var_102e3d58 = function_f679a325(self.var_722885f3 - var_61338191.var_722885f3);
		var_722885f3 = self.var_722885f3 + VectorScale(var_102e3d58, 150);
	}
	switch(var_2f14c279)
	{
		case "random_weapon":
		{
			var_d0821c81 = function_1e2e0936(0);
			if(!isdefined(var_d0821c81))
			{
				return;
			}
			if(var_d0821c81[0] == level.var_6c3e6703)
			{
				return;
			}
			var_994a19a0 = "random_weapon";
			var_663ac88a = "random_weapon";
			var_748c4478 = var_d0821c81[0].var_7c2864e6;
			var_638b7f73 = self function_95409c5(var_748c4478, var_722885f3, VectorScale((0, 0, 1), 30), var_d0821c81, 0);
			break;
		}
		case "cybercom":
		{
			var_994a19a0 = "cybercom";
			var_663ac88a = "cybercom";
			var_638b7f73 = self function_95409c5("p7_zm_power_up_cyber_core", var_722885f3, VectorScale((0, 0, 1), 30), undefined, 0);
			break;
		}
		case "cybercom_upgraded":
		{
			var_994a19a0 = "cybercom_upgraded";
			var_663ac88a = "cybercom_upgraded";
			var_638b7f73 = self function_95409c5("p7_zm_power_up_cyber_core", var_722885f3, VectorScale((0, 0, 1), 30), undefined, 1, 1);
			break;
		}
		case "max_ammo":
		{
			var_994a19a0 = "max_ammo";
			var_663ac88a = "max_ammo";
			var_638b7f73 = self function_95409c5("p7_zm_power_up_max_ammo", var_722885f3, VectorScale((0, 0, 1), 30), undefined, 0);
			break;
		}
		case "max_ammo_upgraded":
		{
			var_994a19a0 = "max_ammo_upgraded";
			var_663ac88a = "max_ammo_upgraded";
			var_638b7f73 = self function_95409c5("p7_zm_power_up_max_ammo", var_722885f3, VectorScale((0, 0, 1), 30), undefined, 1, 1);
			break;
		}
		case "instakill":
		{
			var_994a19a0 = "instakill";
			var_663ac88a = "instakill";
			var_638b7f73 = self function_95409c5("p7_zm_power_up_insta_kill", var_722885f3, VectorScale((0, 0, 1), 30), undefined, 0);
			break;
		}
		case "instakill_upgraded":
		{
			var_994a19a0 = "instakill_upgraded";
			var_663ac88a = "instakill_upgraded";
			var_638b7f73 = self function_95409c5("p7_zm_power_up_insta_kill", var_722885f3, VectorScale((0, 0, 1), 30), undefined, 1, 1);
			break;
		}
		case "raps":
		{
			var_994a19a0 = "raps";
			var_663ac88a = "raps";
			var_638b7f73 = self function_95409c5("veh_t7_drone_raps", var_722885f3, VectorScale((0, 0, 1), 30), undefined, 0);
			break;
		}
		case default:
		{
			/#
				namespace_33b293fd::function_94739542("Dev Block strings are not supported");
			#/
		}
	}
	level.var_61c4b2a6++;
	self thread function_6b3c34cc(var_638b7f73, var_994a19a0, var_663ac88a);
}

/*
	Name: function_95409c5
	Namespace: namespace_fdfaa57d
	Checksum: 0x9B0A1083
	Offset: 0x1670
	Size: 0x21F
	Parameters: 6
	Flags: None
*/
function function_95409c5(var_748c4478, var_86aa369c, var_27c4935, var_d0821c81, var_668a3301, var_b8419776)
{
	if(!isdefined(var_27c4935))
	{
		var_27c4935 = (0, 0, 0);
	}
	if(!isdefined(var_b8419776))
	{
		var_b8419776 = 0;
	}
	if(!isdefined(self.var_e6daaaf2))
	{
		self.var_e6daaaf2 = [];
	}
	if(!function_beceadbc())
	{
		/#
			function_d52b076d("Dev Block strings are not supported");
		#/
		return;
	}
	var_638b7f73 = function_9b7fda5e("script_model", (0, 0, 0));
	var_638b7f73 function_e48f905e("tag_origin");
	var_638b7f73 function_422037f5();
	if(!isdefined(var_d0821c81))
	{
		if(isdefined(var_668a3301) && var_668a3301)
		{
			var_638b7f73 function_7d0838b3(0.7);
		}
		else
		{
			var_638b7f73 function_7d0838b3(0.6);
		}
		if(var_748c4478 == "veh_t7_drone_raps")
		{
			var_638b7f73 function_7d0838b3(0.4);
		}
	}
	var_638b7f73.var_d0821c81 = var_d0821c81;
	var_638b7f73.var_668a3301 = var_668a3301;
	var_638b7f73 thread function_fe2b609e(var_86aa369c + var_27c4935, var_748c4478, var_668a3301, var_b8419776);
	var_638b7f73 thread function_13d6da78();
	namespace_84970cc4::function_69554b3e(level.var_c85f5b9b, var_638b7f73);
	return var_638b7f73;
}

/*
	Name: function_fe2b609e
	Namespace: namespace_fdfaa57d
	Checksum: 0x1ECE3C49
	Offset: 0x1898
	Size: 0x193
	Parameters: 4
	Flags: None
*/
function function_fe2b609e(var_cf527d3b, var_748c4478, var_668a3301, var_b8419776)
{
	if(!isdefined(var_b8419776))
	{
		var_b8419776 = 0;
	}
	self endon("hash_128f8789");
	self.var_92fc0506 = GetTime();
	self.var_722885f3 = var_cf527d3b;
	if(isdefined(var_748c4478))
	{
		if(isdefined(self.var_d0821c81))
		{
			self function_97877619(self.var_d0821c81[0], self.var_d0821c81[0].var_7c2864e6);
			self function_53033123(self.var_d0821c81[2], 0, 0, 0, 0);
		}
		else
		{
			self function_e48f905e(var_748c4478);
		}
		if(isdefined(var_b8419776) && var_b8419776)
		{
			self namespace_71e9cb84::function_74d6b22f("powerup_on_fx", 3);
		}
		else if(isdefined(var_668a3301) && var_668a3301)
		{
			self namespace_71e9cb84::function_74d6b22f("powerup_on_fx", 2);
		}
		else
		{
			self namespace_71e9cb84::function_74d6b22f("powerup_on_fx", 1);
		}
	}
	self function_48f26766();
}

/*
	Name: function_58f94c40
	Namespace: namespace_fdfaa57d
	Checksum: 0xA3D9B648
	Offset: 0x1A38
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_58f94c40()
{
	self thread function_b050d188();
	self thread function_8036f40b();
}

/*
	Name: function_8036f40b
	Namespace: namespace_fdfaa57d
	Checksum: 0xCD0FCAD6
	Offset: 0x1A78
	Size: 0x8D
	Parameters: 0
	Flags: None
*/
function function_8036f40b()
{
	self endon("hash_128f8789");
	var_668a3301 = isdefined(self.var_668a3301) && self.var_668a3301;
	if(var_668a3301)
	{
		var_8a00a6a7 = 0.3;
		continue;
	}
	var_8a00a6a7 = 0.7;
	while(1)
	{
		self function_21d0da55(-180, var_8a00a6a7);
		wait(var_8a00a6a7);
	}
}

/*
	Name: function_b050d188
	Namespace: namespace_fdfaa57d
	Checksum: 0x4B0F56CB
	Offset: 0x1B10
	Size: 0x1BD
	Parameters: 0
	Flags: None
*/
function function_b050d188()
{
	self endon("hash_128f8789");
	self endon("hash_56f6579a");
	var_b57f6680 = 18;
	var_8c289682 = var_b57f6680 * 20;
	var_d16b36b9 = function_b6b79a0(var_8c289682 / 6);
	var_66bc469e = var_d16b36b9 * 3;
	var_e915e81c = var_d16b36b9 * 4;
	var_6e8f42af = var_d16b36b9 * 5;
	var_ed6b2f03 = 1;
	var_c957f6b6 = 0;
	while(var_c957f6b6 < var_8c289682)
	{
		if(var_c957f6b6 < var_66bc469e)
		{
			var_1c864fc1 = var_66bc469e;
		}
		else if(var_c957f6b6 < var_e915e81c)
		{
			var_1c864fc1 = 10;
		}
		else if(var_c957f6b6 < var_6e8f42af)
		{
			var_1c864fc1 = 5;
		}
		else
		{
			var_1c864fc1 = 2;
		}
		if(var_ed6b2f03)
		{
			self function_48f26766();
		}
		else
		{
			self function_8c8e79fe();
		}
		var_ed6b2f03 = !var_ed6b2f03;
		var_c957f6b6 = var_c957f6b6 + var_1c864fc1;
		wait(0.05 * var_1c864fc1);
	}
	self notify("hash_56f6579a");
}

/*
	Name: function_d7f5b3c2
	Namespace: namespace_fdfaa57d
	Checksum: 0x2071F10A
	Offset: 0x1CD8
	Size: 0x149
	Parameters: 1
	Flags: None
*/
function function_d7f5b3c2(var_ae14a77b)
{
	var_a5847e73 = 0.5;
	var_31df9689 = self function_89c87c9c();
	var_7ac385d2 = function_bc7ce905(var_31df9689);
	var_7a6b8ad8 = (var_7ac385d2[0], var_7ac385d2[1], 0);
	var_b7bf15da = function_f679a325(var_7a6b8ad8);
	var_b2ab1e48 = var_ae14a77b.var_722885f3 - self.var_722885f3;
	var_d64a548a = (var_b2ab1e48[0], var_b2ab1e48[1], 0);
	var_7bef6f5c = function_f679a325(var_d64a548a);
	var_5a13b92b = function_5f9a4869(var_b7bf15da, var_7bef6f5c);
	return var_5a13b92b > var_a5847e73;
}

/*
	Name: function_6b3c34cc
	Namespace: namespace_fdfaa57d
	Checksum: 0x498F8CE2
	Offset: 0x1E30
	Size: 0x255
	Parameters: 3
	Flags: None
*/
function function_6b3c34cc(var_638b7f73, var_994a19a0, var_663ac88a)
{
	if(!isdefined(var_638b7f73))
	{
		return;
	}
	var_638b7f73 endon("hash_128f8789");
	var_638b7f73 endon("hash_56f6579a");
	namespace_82b91a51::function_76f13293();
	var_e484e9fb = function_b6b79a0(180);
	for(var_c957f6b6 = 0; var_c957f6b6 < var_e484e9fb; var_c957f6b6++)
	{
		var_2395e945 = function_3f10449f();
		for(var_c957f6b6 = 0; var_c957f6b6 < var_2395e945.size; var_c957f6b6++)
		{
			var_fb9f4f9f = function_316422d1(var_638b7f73.var_722885f3, var_2395e945[var_c957f6b6].var_722885f3) < 2025;
			var_e33aadf8 = function_69c2f683(var_638b7f73.var_722885f3[2] - var_2395e945[var_c957f6b6].var_722885f3[2]) < 50;
			if(var_fb9f4f9f && var_e33aadf8)
			{
				var_5dc5e20a = var_2395e945[var_c957f6b6];
				if(!var_5dc5e20a function_67f028cc() && var_5dc5e20a function_d7f5b3c2(var_638b7f73))
				{
					var_638b7f73.var_bf37372b = 1;
					var_2395e945[var_c957f6b6] notify("hash_b5d20c7d");
					var_2395e945[var_c957f6b6] notify(var_994a19a0);
					var_2395e945[var_c957f6b6] function_da35c458(var_663ac88a, var_638b7f73);
					var_638b7f73 notify("hash_56f6579a");
					break;
				}
			}
		}
		wait(0.1);
	}
}

/*
	Name: function_cf8cea5f
	Namespace: namespace_fdfaa57d
	Checksum: 0x7120F25D
	Offset: 0x2090
	Size: 0x9B
	Parameters: 1
	Flags: None
*/
function function_cf8cea5f(var_ee7dbbc9)
{
	if(!isdefined(var_ee7dbbc9))
	{
		var_ee7dbbc9 = 0.1;
	}
	if(level.var_61c4b2a6 <= 0)
	{
		return;
	}
	level.var_61c4b2a6--;
	if(var_ee7dbbc9 > 0)
	{
		self namespace_71e9cb84::function_74d6b22f("powerup_on_fx", 0);
		self function_8c8e79fe();
		wait(var_ee7dbbc9);
	}
	if(isdefined(self))
	{
		self function_dc8c8404();
	}
}

/*
	Name: function_13d6da78
	Namespace: namespace_fdfaa57d
	Checksum: 0xE14F88F5
	Offset: 0x2138
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_13d6da78()
{
	self thread function_58f94c40();
	self namespace_82b91a51::function_5b7e3888("death_or_disconnect", "stopbzmdrop_behavior");
	var_cfbd1e2d = 0.1;
	if(isdefined(self.var_bf37372b) && self.var_bf37372b)
	{
		self namespace_71e9cb84::function_74d6b22f("powerup_grabbed_fx", 1);
		var_cfbd1e2d = 1;
	}
	self function_cf8cea5f(var_cfbd1e2d);
}

/*
	Name: function_da35c458
	Namespace: namespace_fdfaa57d
	Checksum: 0xD2A54C73
	Offset: 0x21F0
	Size: 0x16D
	Parameters: 2
	Flags: None
*/
function function_da35c458(var_663ac88a, var_638b7f73)
{
	switch(var_663ac88a)
	{
		case "cybercom":
		{
			self function_2beeb3b3(0);
			break;
		}
		case "cybercom_upgraded":
		{
			self function_2beeb3b3(1);
			break;
		}
		case "max_ammo":
		{
			self function_4e9a52a6();
			break;
		}
		case "max_ammo_upgraded":
		{
			self function_4827a249();
			break;
		}
		case "random_weapon":
		{
			self function_4035ce17(var_638b7f73);
			break;
		}
		case "instakill":
		{
			self function_f3239cd2();
			break;
		}
		case "instakill_upgraded":
		{
			self function_c54347ed();
			break;
		}
		case "raps":
		{
			self thread function_be188509();
			break;
		}
		case default:
		{
			/#
				namespace_33b293fd::function_a7ee953("Dev Block strings are not supported" + var_663ac88a + "Dev Block strings are not supported");
			#/
			break;
		}
	}
}

/*
	Name: function_be188509
	Namespace: namespace_fdfaa57d
	Checksum: 0xB82755B2
	Offset: 0x2368
	Size: 0x257
	Parameters: 0
	Flags: Private
*/
function private function_be188509()
{
	level.var_5a1513c4 = 1;
	var_61338191 = function_e7bdc1a1(self.var_722885f3, level.var_2395e945);
	var_49e0ea09 = function_bc7ce905(var_61338191.var_6ab6f4fd);
	var_2d1236a = var_61338191.var_722885f3 + VectorScale(var_49e0ea09, 100);
	var_2d1236a = function_eed6dab7(var_2d1236a, 300);
	if(!isdefined(var_2d1236a))
	{
		return;
	}
	level.var_f011cb7c = function_ee83ff72("spawner_enemy_54i_vehicle_raps_suicide", var_2d1236a, var_61338191.var_6ab6f4fd, "raps_drop");
	level.var_f011cb7c function_25b39be3(1);
	if(isdefined(level.var_f011cb7c))
	{
		level.var_f011cb7c.var_3e94206a = "allies";
		level.var_f011cb7c.var_255b9315 = 1;
		level.var_f011cb7c.var_a9cfc7b5 = 1;
		level.var_f011cb7c function_baeb4be7("avoid none");
		wait(40);
		if(isdefined(level.var_f011cb7c) && function_5b49d38c(level.var_f011cb7c))
		{
			var_a0ad4f34 = level.var_f011cb7c;
			level.var_f011cb7c function_39419ae5();
			level.var_f011cb7c function_c3945cd5(level.var_f011cb7c.var_3a90f16b + 1000, level.var_f011cb7c.var_722885f3, var_a0ad4f34, level.var_f011cb7c, "none", "MOD_EXPLOSIVE", 0, level.var_f011cb7c.var_76c74c4f);
		}
	}
	level.var_5a1513c4 = 0;
}

/*
	Name: function_94c35cf8
	Namespace: namespace_fdfaa57d
	Checksum: 0xEEA78996
	Offset: 0x25C8
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_94c35cf8()
{
	level.var_6412066 = [];
	namespace_84970cc4::function_69554b3e(level.var_6412066, "cybercom_overdrive");
	namespace_84970cc4::function_69554b3e(level.var_6412066, "cybercom_concussive");
	namespace_84970cc4::function_69554b3e(level.var_6412066, "cybercom_unstoppableforce");
	namespace_84970cc4::function_69554b3e(level.var_6412066, "cybercom_fireflyswarm");
}

/*
	Name: function_2beeb3b3
	Namespace: namespace_fdfaa57d
	Checksum: 0x7CFE6E45
	Offset: 0x2668
	Size: 0x283
	Parameters: 1
	Flags: None
*/
function function_2beeb3b3(var_668a3301)
{
	/#
		namespace_33b293fd::function_a7ee953(isdefined(level.var_6412066) && level.var_6412066.size);
	#/
	var_9d01aa69 = function_41f575c3(level.var_6412066);
	foreach(var_28189c49 in level.var_6412066)
	{
		if(self function_1a9006bd(var_28189c49) > 0)
		{
			function_81403b2f(var_9d01aa69, var_28189c49);
		}
	}
	if(!isdefined(var_9d01aa69) || !function_6e2770d8(var_9d01aa69) || !var_9d01aa69.size)
	{
		var_9d01aa69 = function_41f575c3(level.var_6412066);
	}
	var_b5725157 = namespace_84970cc4::function_47d18840(var_9d01aa69);
	/#
		if(function_6f1ebe57("Dev Block strings are not supported", "Dev Block strings are not supported") != "Dev Block strings are not supported")
		{
			var_b5725157 = function_6f1ebe57("Dev Block strings are not supported");
		}
	#/
	self namespace_175490fb::function_e60e89fe();
	self namespace_d00ec32::function_c219b381();
	if(isdefined(var_668a3301) && var_668a3301)
	{
		self namespace_d00ec32::function_a724d44(var_b5725157, 1);
	}
	else
	{
		self namespace_d00ec32::function_a724d44(var_b5725157, 0);
	}
	self namespace_d00ec32::function_eb512967(var_b5725157, 1);
	self thread function_8435cfdc(var_b5725157, var_668a3301);
}

/*
	Name: function_8435cfdc
	Namespace: namespace_fdfaa57d
	Checksum: 0xF4A6AF22
	Offset: 0x28F8
	Size: 0xB5
	Parameters: 2
	Flags: Private
*/
function private function_8435cfdc(var_b5725157, var_668a3301)
{
	self endon("hash_128f8789");
	self notify("hash_8435cfdc");
	self.var_cc7a6101 = 0;
	self.var_db92ee58 = GetTime();
	switch(var_b5725157)
	{
		case "cybercom_camo":
		case "cybercom_concussive":
		case "cybercom_fireflyswarm":
		case "cybercom_overdrive":
		{
			self thread function_2d73d3d9(var_668a3301);
			break;
		}
		case "cybercom_unstoppableforce":
		{
			self thread function_1c087aac(var_668a3301);
			break;
		}
	}
}

/*
	Name: function_1c087aac
	Namespace: namespace_fdfaa57d
	Checksum: 0x71515410
	Offset: 0x29B8
	Size: 0x171
	Parameters: 1
	Flags: Private
*/
function private function_1c087aac(var_668a3301)
{
	self endon("hash_128f8789");
	self endon("hash_8435cfdc");
	self notify("hash_1c087aac");
	self endon("hash_1c087aac");
	/#
		namespace_33b293fd::function_a7ee953(self.var_db92ee58 > 0);
	#/
	if(isdefined(var_668a3301) && var_668a3301)
	{
		var_3c351aaf = self.var_db92ee58 + 60000;
		continue;
	}
	var_3c351aaf = self.var_db92ee58 + 30000;
	while(GetTime() < var_3c351aaf)
	{
		wait(0.1);
	}
	foreach(var_28189c49 in level.var_175490fb.var_9d01aa69)
	{
		self function_d8df9418(var_28189c49.var_4be20d44);
		self namespace_d00ec32::function_1364f13e(var_28189c49);
	}
}

/*
	Name: function_2d73d3d9
	Namespace: namespace_fdfaa57d
	Checksum: 0x8709EAB1
	Offset: 0x2B38
	Size: 0x169
	Parameters: 1
	Flags: Private
*/
function private function_2d73d3d9(var_668a3301)
{
	self endon("hash_128f8789");
	self endon("hash_8435cfdc");
	self notify("hash_2d73d3d9");
	self endon("hash_2d73d3d9");
	/#
		namespace_33b293fd::function_a7ee953(self.var_cc7a6101 == 0);
	#/
	if(isdefined(var_668a3301) && var_668a3301)
	{
		var_686e9a14 = 5;
		continue;
	}
	var_686e9a14 = 3;
	while(self.var_cc7a6101 < 3)
	{
		wait(0.1);
	}
	wait(5);
	foreach(var_28189c49 in level.var_175490fb.var_9d01aa69)
	{
		self function_d8df9418(var_28189c49.var_4be20d44);
		self namespace_d00ec32::function_1364f13e(var_28189c49);
	}
}

/*
	Name: function_26432505
	Namespace: namespace_fdfaa57d
	Checksum: 0xCE4EA774
	Offset: 0x2CB0
	Size: 0x5F
	Parameters: 1
	Flags: Private
*/
function private function_26432505(var_5dc5e20a)
{
	/#
		namespace_33b293fd::function_a7ee953(function_65f192a6(var_5dc5e20a));
	#/
	if(!isdefined(var_5dc5e20a.var_cc7a6101))
	{
		return;
	}
	var_5dc5e20a.var_cc7a6101++;
}

/*
	Name: function_4e9a52a6
	Namespace: namespace_fdfaa57d
	Checksum: 0xD1A15789
	Offset: 0x2D18
	Size: 0xD9
	Parameters: 0
	Flags: None
*/
function function_4e9a52a6()
{
	var_8ea4a872 = self function_21995b5a();
	foreach(var_1d6db0a3 in var_8ea4a872)
	{
		self function_704b802a(var_1d6db0a3);
		self function_67795b5f(var_1d6db0a3, var_1d6db0a3.var_c0b2188);
	}
}

/*
	Name: function_4827a249
	Namespace: namespace_fdfaa57d
	Checksum: 0x420157FA
	Offset: 0x2E00
	Size: 0x147
	Parameters: 0
	Flags: None
*/
function function_4827a249()
{
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_8ea4a872 = var_5dc5e20a function_21995b5a();
		foreach(var_1d6db0a3 in var_8ea4a872)
		{
			var_5dc5e20a function_704b802a(var_1d6db0a3);
			var_5dc5e20a function_67795b5f(var_1d6db0a3, var_1d6db0a3.var_c0b2188);
		}
	}
}

/*
	Name: function_4035ce17
	Namespace: namespace_fdfaa57d
	Checksum: 0xAF1FE8B0
	Offset: 0x2F50
	Size: 0x53
	Parameters: 1
	Flags: None
*/
function function_4035ce17(var_638b7f73)
{
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_638b7f73.var_d0821c81));
	#/
	self function_43128d49(var_638b7f73.var_d0821c81);
}

/*
	Name: function_f3239cd2
	Namespace: namespace_fdfaa57d
	Checksum: 0x20094B06
	Offset: 0x2FB0
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_f3239cd2()
{
	self thread function_4759fbcb();
}

/*
	Name: function_4759fbcb
	Namespace: namespace_fdfaa57d
	Checksum: 0xCEACB534
	Offset: 0x2FD8
	Size: 0x9F
	Parameters: 0
	Flags: None
*/
function function_4759fbcb()
{
	self endon("hash_19ae9989");
	self endon("hash_643a7daf");
	self notify("hash_2559e9cc");
	self endon("hash_2559e9cc");
	self thread function_ac97a368();
	self namespace_71e9cb84::function_e9c3870b("bonuszm_player_instakill_active_fx", 1);
	self.var_195e43c1 = 1;
	wait(15);
	self namespace_71e9cb84::function_e9c3870b("bonuszm_player_instakill_active_fx", 0);
	self.var_195e43c1 = 0;
}

/*
	Name: function_ac97a368
	Namespace: namespace_fdfaa57d
	Checksum: 0x5D74205C
	Offset: 0x3080
	Size: 0x75
	Parameters: 0
	Flags: None
*/
function function_ac97a368()
{
	self endon("hash_643a7daf");
	self endon("hash_2559e9cc");
	self waittill("hash_128f8789");
	if(isdefined(self.var_195e43c1) && self.var_195e43c1)
	{
		self namespace_71e9cb84::function_e9c3870b("bonuszm_player_instakill_active_fx", 0);
		self.var_195e43c1 = 0;
		self notify("hash_19ae9989");
	}
}

/*
	Name: function_9c4468cc
	Namespace: namespace_fdfaa57d
	Checksum: 0x7B4B67B9
	Offset: 0x3100
	Size: 0x89
	Parameters: 0
	Flags: None
*/
function function_9c4468cc()
{
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		if(isdefined(self.var_195e43c1))
		{
			return 1;
		}
	}
	return 0;
}

/*
	Name: function_5fcda3a0
	Namespace: namespace_fdfaa57d
	Checksum: 0x5E7797FD
	Offset: 0x3198
	Size: 0x21
	Parameters: 0
	Flags: None
*/
function function_5fcda3a0()
{
	if(isdefined(level.var_bd7c1855) && level.var_bd7c1855)
	{
		return 1;
	}
	return 0;
}

/*
	Name: function_c54347ed
	Namespace: namespace_fdfaa57d
	Checksum: 0x420EEFFA
	Offset: 0x31C8
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_c54347ed()
{
	if(function_5fcda3a0())
	{
		return;
	}
	self thread function_eb0b4e74();
}

/*
	Name: function_eb0b4e74
	Namespace: namespace_fdfaa57d
	Checksum: 0xEB69098C
	Offset: 0x3200
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_eb0b4e74()
{
	/#
		namespace_33b293fd::function_a7ee953(!isdefined(level.var_bd7c1855) && level.var_bd7c1855);
	#/
	level endon("hash_d864b21a");
	function_3dce4e74();
	wait(8);
	level thread function_1dfabdfa();
}

/*
	Name: function_3dce4e74
	Namespace: namespace_fdfaa57d
	Checksum: 0x3229D65C
	Offset: 0x3278
	Size: 0x301
	Parameters: 0
	Flags: None
*/
function function_3dce4e74()
{
	level.var_bd7c1855 = 1;
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a namespace_71e9cb84::function_e9c3870b("bonuszm_player_instakill_active_fx", 1);
		var_5dc5e20a.var_195e43c1 = 1;
		var_5dc5e20a function_e2af603e("tank_rumble");
	}
	level.var_5860b0ee = function_9b7fda5e("script_origin", (0, 0, 0));
	level.var_5860b0ee function_921a1574("zmb_instakill_upgraded_activate");
	level.var_5860b0ee function_c2931a36("zmb_instakill_upgraded_loop", 2);
	function_b8d9ad6e(1, 1.2, 2);
	wait(2);
	function_bea2b721(1);
	if(isdefined(level.var_6a876531) && level.var_6a876531.size)
	{
		foreach(var_717a34e1 in level.var_6a876531)
		{
			var_717a34e1 function_25b39be3(1);
		}
	}
	var_65184ffa = function_b8494651("allies");
	if(isdefined(var_65184ffa) && var_65184ffa.size)
	{
		foreach(var_d84e54db in var_65184ffa)
		{
			if(function_85e4c3b3(var_d84e54db))
			{
				var_d84e54db function_25b39be3(1);
			}
		}
	}
}

/*
	Name: function_1dfabdfa
	Namespace: namespace_fdfaa57d
	Checksum: 0x906413B4
	Offset: 0x3588
	Size: 0x1AF
	Parameters: 0
	Flags: None
*/
function function_1dfabdfa()
{
	if(!(isdefined(level.var_bd7c1855) && level.var_bd7c1855))
	{
		return;
	}
	/#
		namespace_33b293fd::function_a7ee953(isdefined(level.var_5860b0ee));
	#/
	level notify("hash_d864b21a");
	level.var_5860b0ee function_eaa69754(2);
	level.var_5860b0ee function_921a1574("zmb_instakill_upgraded_deactivate");
	function_b8d9ad6e(1.2, 1, 2);
	wait(1);
	function_bea2b721(0);
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a namespace_71e9cb84::function_e9c3870b("bonuszm_player_instakill_active_fx", 0);
		var_5dc5e20a.var_195e43c1 = 0;
		var_5dc5e20a function_e2af603e("tank_rumble");
	}
	if(isdefined(level.var_5860b0ee))
	{
		level.var_5860b0ee function_dc8c8404();
	}
	level.var_bd7c1855 = 0;
}

/*
	Name: function_2a5eb705
	Namespace: namespace_fdfaa57d
	Checksum: 0x85EA0738
	Offset: 0x3740
	Size: 0x135
	Parameters: 0
	Flags: None
*/
function function_2a5eb705()
{
	while(1)
	{
		level waittill("hash_1c353a4f");
		function_1dfabdfa();
		if(isdefined(level.var_f011cb7c) && function_5b49d38c(level.var_f011cb7c))
		{
			level.var_f011cb7c function_dc8c8404();
		}
		foreach(var_50c62e42 in level.var_c85f5b9b)
		{
			if(isdefined(var_50c62e42))
			{
				var_50c62e42 thread function_cf8cea5f(0);
			}
		}
		level.var_c85f5b9b = namespace_84970cc4::function_5c13fae0(level.var_c85f5b9b);
		level notify("hash_cf7497c1");
	}
}

