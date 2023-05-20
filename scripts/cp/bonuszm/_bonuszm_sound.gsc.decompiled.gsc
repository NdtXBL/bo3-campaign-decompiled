#using scripts\codescripts\struct;
#using scripts\cp\_load;
#using scripts\cp\_oed;
#using scripts\cp\_util;
#using scripts\cp\cybercom\_cybercom;
#using scripts\cp\cybercom\_cybercom_gadget;
#using scripts\cp\cybercom\_cybercom_tactical_rig;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_globallogic_player;
#using scripts\cp\gametypes\_save;
#using scripts\shared\_oob;
#using scripts\shared\abilities\_ability_util;
#using scripts\shared\ai\archetype_utility;
#using scripts\shared\ai\systems\blackboard;
#using scripts\shared\ai\systems\shared;
#using scripts\shared\ai\zombie_shared;
#using scripts\shared\ai\zombie_utility;
#using scripts\shared\ai_shared;
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
#using scripts\shared\spawner_shared;
#using scripts\shared\system_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\tweakables_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\weapons_shared;

#namespace namespace_36e5bc12;

/*
	Name: function_c35e6aab
	Namespace: namespace_36e5bc12
	Checksum: 0x1E88E82A
	Offset: 0x738
	Size: 0x13B
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_c35e6aab()
{
	if(!function_27c72c1b())
	{
		return;
	}
	level.var_a5375ea0 = 0;
	level.var_5de673a6 = function_9b7fda5e("script_origin", (0, 0, 0));
	level.var_af2fbbad = function_9b7fda5e("script_origin", (0, 0, 0));
	level.var_e96fb1cb = function_9b7fda5e("script_origin", (0, 0, 0));
	level.var_971e6055 = function_9b7fda5e("script_origin", (0, 0, 0));
	level.var_c9205007 = &function_cf21d35c;
	level.var_9b1300c2 = &function_ef0ce9fb;
	level.var_c75c7dba = &function_b4a3e925;
	level.var_4f24fec0 = &function_45809471;
	level.var_e032f90d = &function_4cb32f3c;
}

/*
	Name: function_4cb32f3c
	Namespace: namespace_36e5bc12
	Checksum: 0x3F8657D0
	Offset: 0x880
	Size: 0x15F
	Parameters: 1
	Flags: None
*/
function function_4cb32f3c(var_68babb2a)
{
	level notify("hash_4cb32f3c");
	if(isdefined(level.var_5de673a6.var_478c7e3e))
	{
		level.var_5de673a6 function_356a1c2a(level.var_5de673a6.var_478c7e3e);
	}
	level.var_5de673a6 notify("hash_2d8828d0");
	if(isdefined(level.var_af2fbbad.var_478c7e3e))
	{
		level.var_af2fbbad function_356a1c2a(level.var_af2fbbad.var_478c7e3e);
	}
	level.var_af2fbbad notify("hash_2d8828d0");
	if(isdefined(level.var_e96fb1cb.var_478c7e3e))
	{
		level.var_e96fb1cb function_356a1c2a(level.var_e96fb1cb.var_478c7e3e);
	}
	level.var_e96fb1cb notify("hash_2d8828d0");
	if(isdefined(level.var_971e6055.var_478c7e3e))
	{
		level.var_971e6055 function_356a1c2a(level.var_971e6055.var_478c7e3e);
	}
	level.var_971e6055 notify("hash_2d8828d0");
}

/*
	Name: function_81141386
	Namespace: namespace_36e5bc12
	Checksum: 0x577A3A3F
	Offset: 0x9E8
	Size: 0x143
	Parameters: 1
	Flags: Private
*/
function private function_81141386(var_48b937ab)
{
	self notify("hash_2d8828d0");
	self endon("hash_2d8828d0");
	if(isdefined(self.var_478c7e3e))
	{
		self function_356a1c2a(self.var_478c7e3e);
	}
	wait(0.1);
	var_d1873f3f = var_48b937ab + " " + level.var_a5375ea0;
	level.var_a5375ea0 = level.var_a5375ea0 + 1;
	if(isdefined(level.var_695a72d7) && isdefined(level.var_695a72d7["generic"]))
	{
		var_4b66e891 = level.var_695a72d7["generic"][var_48b937ab];
	}
	else
	{
		return;
	}
	if(!isdefined(var_4b66e891))
	{
		return;
	}
	self.var_478c7e3e = var_4b66e891;
	self function_ca265377(var_4b66e891, var_d1873f3f);
	self namespace_82b91a51::function_5b7e3888("death", "bzm_cancel_speaking", var_d1873f3f);
}

/*
	Name: function_cf21d35c
	Namespace: namespace_36e5bc12
	Checksum: 0x3A691CDD
	Offset: 0xB38
	Size: 0xBB
	Parameters: 2
	Flags: None
*/
function function_cf21d35c(var_48b937ab, var_ddf71858)
{
	if(!isdefined(var_ddf71858))
	{
		var_ddf71858 = 1;
	}
	/#
		namespace_33b293fd::function_a7ee953(function_27c72c1b());
	#/
	/#
		namespace_33b293fd::function_a7ee953(isdefined(level.var_5de673a6));
	#/
	if(var_ddf71858)
	{
		level.var_5de673a6 function_81141386(var_48b937ab);
	}
	else
	{
		level.var_5de673a6 thread function_81141386(var_48b937ab);
	}
}

/*
	Name: function_ef0ce9fb
	Namespace: namespace_36e5bc12
	Checksum: 0x189B26F4
	Offset: 0xC00
	Size: 0x9B
	Parameters: 2
	Flags: None
*/
function function_ef0ce9fb(var_48b937ab, var_ddf71858)
{
	if(!isdefined(var_ddf71858))
	{
		var_ddf71858 = 1;
	}
	/#
		namespace_33b293fd::function_a7ee953(function_27c72c1b());
	#/
	if(var_ddf71858)
	{
		level.var_971e6055 function_81141386(var_48b937ab);
	}
	else
	{
		level.var_971e6055 thread function_81141386(var_48b937ab);
	}
}

/*
	Name: function_b4a3e925
	Namespace: namespace_36e5bc12
	Checksum: 0x26E4BD51
	Offset: 0xCA8
	Size: 0x9B
	Parameters: 2
	Flags: None
*/
function function_b4a3e925(var_48b937ab, var_ddf71858)
{
	if(!isdefined(var_ddf71858))
	{
		var_ddf71858 = 1;
	}
	/#
		namespace_33b293fd::function_a7ee953(function_27c72c1b());
	#/
	if(var_ddf71858)
	{
		level.var_af2fbbad function_81141386(var_48b937ab);
	}
	else
	{
		level.var_af2fbbad thread function_81141386(var_48b937ab);
	}
}

/*
	Name: function_45809471
	Namespace: namespace_36e5bc12
	Checksum: 0x200232C6
	Offset: 0xD50
	Size: 0x9B
	Parameters: 2
	Flags: None
*/
function function_45809471(var_48b937ab, var_ddf71858)
{
	if(!isdefined(var_ddf71858))
	{
		var_ddf71858 = 1;
	}
	/#
		namespace_33b293fd::function_a7ee953(function_27c72c1b());
	#/
	if(var_ddf71858)
	{
		level.var_e96fb1cb function_81141386(var_48b937ab);
	}
	else
	{
		level.var_e96fb1cb thread function_81141386(var_48b937ab);
	}
}

/*
	Name: function_f46e57be
	Namespace: namespace_36e5bc12
	Checksum: 0xF1A64FB4
	Offset: 0xDF8
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_f46e57be()
{
	self endon("hash_128f8789");
	self.var_8317db80 = "zmb_vocals_zombie_attack";
	self thread function_f93398c4();
	self thread function_b7efd00a();
	self thread function_acd6c6f8();
}

/*
	Name: function_b7efd00a
	Namespace: namespace_36e5bc12
	Checksum: 0xA8609CA9
	Offset: 0xE68
	Size: 0x151
	Parameters: 0
	Flags: None
*/
function function_b7efd00a()
{
	self endon("hash_128f8789");
	while(1)
	{
		self waittill("hash_b64936fe", var_92eb0f0e);
		if(isdefined(level.var_bd7c1855) && level.var_bd7c1855)
		{
			continue;
		}
		if(self function_b7f9b625())
		{
			continue;
		}
		switch(var_92eb0f0e)
		{
			case "attack_melee":
			case "behind":
			case "close":
			case "death":
			case "electrocute":
			{
				level thread function_dc28c71b(self, var_92eb0f0e, 1);
				break;
			}
			case "ambient":
			case "crawler":
			case "sprint":
			case "taunt":
			case "teardown":
			{
				level thread function_dc28c71b(self, var_92eb0f0e, 0);
				break;
			}
			case default:
			{
				if(isdefined(level.var_61e4e12e))
				{
					if(isdefined(level.var_61e4e12e[var_92eb0f0e]))
					{
						level thread function_dc28c71b(self, var_92eb0f0e, 0);
					}
				}
				break;
			}
		}
	}
}

/*
	Name: function_dc28c71b
	Namespace: namespace_36e5bc12
	Checksum: 0x6D15B00F
	Offset: 0xFC8
	Size: 0x17B
	Parameters: 3
	Flags: None
*/
function function_dc28c71b(var_fb9423cf, var_fe311e35, var_687cd74d)
{
	var_fb9423cf endon("hash_128f8789");
	if(!isdefined(var_fb9423cf))
	{
		return;
	}
	if(!isdefined(var_fb9423cf.var_e4b959c5))
	{
		return;
	}
	var_48b937ab = "zmb_vocals_" + var_fb9423cf.var_e4b959c5 + "_" + var_fe311e35;
	if(function_bde86827())
	{
		if(isdefined(var_687cd74d) && var_687cd74d)
		{
			if(var_fe311e35 == "death")
			{
				var_fb9423cf function_921a1574(var_48b937ab);
			}
			else
			{
				var_fb9423cf function_8b51b0e9(var_48b937ab, "j_neck");
			}
		}
		else if(!(isdefined(var_fb9423cf.var_d1d18f79) && var_fb9423cf.var_d1d18f79))
		{
			var_fb9423cf.var_d1d18f79 = 1;
			var_fb9423cf function_ca265377(var_48b937ab, "sounddone", "j_neck");
			var_fb9423cf waittill("hash_7e0f33fa");
			var_fb9423cf.var_d1d18f79 = 0;
		}
	}
}

/*
	Name: function_f93398c4
	Namespace: namespace_36e5bc12
	Checksum: 0x3C6935D4
	Offset: 0x1150
	Size: 0x117
	Parameters: 0
	Flags: None
*/
function function_f93398c4()
{
	self endon("hash_128f8789");
	wait(function_72a94f05(1, 3));
	while(1)
	{
		var_fe311e35 = "ambient";
		if(!isdefined(self.var_402a69d5))
		{
			wait(0.5);
			continue;
		}
		switch(self.var_402a69d5)
		{
			case "walk":
			{
				var_fe311e35 = "ambient";
				break;
			}
			case "run":
			{
				var_fe311e35 = "sprint";
				break;
			}
			case "sprint":
			{
				var_fe311e35 = "sprint";
				break;
			}
		}
		if(isdefined(self.var_a7f77d7c) && self.var_a7f77d7c)
		{
			var_fe311e35 = "crawler";
		}
		self notify("hash_b64936fe", var_fe311e35);
		wait(function_72a94f05(1, 4));
	}
}

/*
	Name: function_acd6c6f8
	Namespace: namespace_36e5bc12
	Checksum: 0x15684D5D
	Offset: 0x1270
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_acd6c6f8()
{
	self endon("hash_643a7daf");
	self waittill("hash_128f8789", var_a0ad4f34, var_597cacac);
	if(isdefined(self))
	{
		level thread function_dc28c71b(self, "death", 1);
	}
}

/*
	Name: function_a69f0aaf
	Namespace: namespace_36e5bc12
	Checksum: 0x33A22EE5
	Offset: 0x12D8
	Size: 0x2F
	Parameters: 0
	Flags: None
*/
function function_a69f0aaf()
{
	while(1)
	{
		level.var_384c508a = 0;
		namespace_82b91a51::function_76f13293();
	}
}

/*
	Name: function_bde86827
	Namespace: namespace_36e5bc12
	Checksum: 0xED567E0F
	Offset: 0x1310
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_bde86827()
{
	if(!isdefined(level.var_384c508a))
	{
		level thread function_a69f0aaf();
	}
	if(level.var_384c508a >= 2)
	{
		return 0;
	}
	level.var_384c508a++;
	return 1;
}

/*
	Name: function_b80a73a4
	Namespace: namespace_36e5bc12
	Checksum: 0x60CBF68B
	Offset: 0x1360
	Size: 0x2F3
	Parameters: 0
	Flags: None
*/
function function_b80a73a4()
{
	level endon("hash_9aabe1d7");
	self endon("hash_3f7b661c");
	if(!isdefined(level.var_b2d1749f))
	{
		level.var_b2d1749f = 0;
		level.var_9e400e00 = function_b8494651("axis");
	}
	while(1)
	{
		wait(1);
		var_e78c0153 = GetTime();
		if(var_e78c0153 > level.var_b2d1749f + 1000)
		{
			level.var_b2d1749f = var_e78c0153;
			level.var_9e400e00 = function_b8494651("axis");
		}
		var_388e905c = level.var_9e400e00;
		var_a011d528 = 0;
		for(var_c957f6b6 = 0; var_c957f6b6 < var_388e905c.size; var_c957f6b6++)
		{
			if(!isdefined(var_388e905c[var_c957f6b6]))
			{
				continue;
			}
			if(isdefined(self.var_8fc0e50e) && self.var_8fc0e50e != "zombie")
			{
				level.var_9e400e00 = namespace_84970cc4::function_8fdf50c0(level.var_9e400e00, var_c957f6b6);
				continue;
			}
			var_2a97d9fd = 250;
			var_4f994d00 = 50;
			if(function_cb3d1c9b(var_388e905c[var_c957f6b6].var_722885f3, self.var_722885f3) < var_2a97d9fd * var_2a97d9fd)
			{
				var_3bd0b11d = function_bdcdc423(var_388e905c[var_c957f6b6].var_722885f3 - self.var_722885f3);
				var_3b6e5f7e = self.var_6ab6f4fd[1] - var_3bd0b11d[1];
				var_3b6e5f7e = function_3dfa27b4(var_3b6e5f7e);
				var_6a8c5235 = self.var_722885f3[2] - var_388e905c[var_c957f6b6].var_722885f3[2];
				if(var_3b6e5f7e < -95 || var_3b6e5f7e > 95 && function_69c2f683(var_6a8c5235) < 50)
				{
					var_388e905c[var_c957f6b6] notify("hash_b64936fe", "behind");
					var_a011d528 = 1;
					break;
				}
			}
		}
		if(var_a011d528)
		{
			wait(5);
		}
	}
}

