#using scripts\codescripts\struct;
#using scripts\cp\_challenges;
#using scripts\cp\_tacticalinsertion;
#using scripts\cp\_util;
#using scripts\cp\gametypes\_globallogic;
#using scripts\cp\gametypes\_globallogic_spawn;
#using scripts\cp\gametypes\_spectating;
#using scripts\shared\callbacks_shared;
#using scripts\shared\challenges_shared;
#using scripts\shared\hud_util_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;
#using scripts\shared\weapons\_tacticalinsertion;

#namespace namespace_367908b2;

/*
	Name: function_2dc19561
	Namespace: namespace_367908b2
	Checksum: 0x5861B4CD
	Offset: 0x398
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("killcam", &function_8c87d8eb, undefined, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_367908b2
	Checksum: 0xE6DEDF18
	Offset: 0x3D8
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	namespace_dabbe128::function_c61b24c4(&function_c35e6aab);
}

/*
	Name: function_c35e6aab
	Namespace: namespace_367908b2
	Checksum: 0x87884FF4
	Offset: 0x408
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_c35e6aab()
{
	if(level.var_76c6e677 === "coop")
	{
		level.var_367908b2 = function_92a88da3("allowKillcam");
		level.var_9b58c640 = function_92a88da3("allowFinalKillcam");
		/#
			level.var_3a9f9a38 = 0;
		#/
		function_4c8fcebe();
	}
}

/*
	Name: function_4c8fcebe
	Namespace: namespace_367908b2
	Checksum: 0xDA0F617E
	Offset: 0x490
	Size: 0xB9
	Parameters: 0
	Flags: None
*/
function function_4c8fcebe()
{
	level.var_20acba97 = [];
	function_61a6ba4a("none");
	foreach(var_3e94206a in level.var_e7a38025)
	{
		function_61a6ba4a(var_3e94206a);
	}
	level.var_184b03a = undefined;
}

/*
	Name: function_61a6ba4a
	Namespace: namespace_367908b2
	Checksum: 0xDCA19327
	Offset: 0x558
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_61a6ba4a(var_3e94206a)
{
	level.var_20acba97[var_3e94206a] = function_a8fb77bd();
	function_68ec327b(var_3e94206a);
}

/*
	Name: function_68ec327b
	Namespace: namespace_367908b2
	Checksum: 0x9595BCF4
	Offset: 0x5A8
	Size: 0x111
	Parameters: 1
	Flags: None
*/
function function_68ec327b(var_3e94206a)
{
	level.var_20acba97[var_3e94206a].var_9e110015 = undefined;
	level.var_20acba97[var_3e94206a].var_dfcc01fd = undefined;
	level.var_20acba97[var_3e94206a].var_9f66af5e = undefined;
	level.var_20acba97[var_3e94206a].var_4e147bc7 = undefined;
	level.var_20acba97[var_3e94206a].var_852d8d8f = undefined;
	level.var_20acba97[var_3e94206a].var_7d070b9c = undefined;
	level.var_20acba97[var_3e94206a].var_63b3b085 = undefined;
	level.var_20acba97[var_3e94206a].var_51c9425f = undefined;
	level.var_20acba97[var_3e94206a].var_133ce9dc = undefined;
	level.var_20acba97[var_3e94206a].var_d50db15a = undefined;
	level.var_20acba97[var_3e94206a].var_a0ad4f34 = undefined;
}

/*
	Name: function_96b5af72
	Namespace: namespace_367908b2
	Checksum: 0x717923BC
	Offset: 0x6C8
	Size: 0x343
	Parameters: 11
	Flags: None
*/
function function_96b5af72(var_9e110015, var_63b3b085, var_dfcc01fd, var_9f66af5e, var_4e147bc7, var_852d8d8f, var_7d070b9c, var_51c9425f, var_133ce9dc, var_d50db15a, var_a0ad4f34)
{
	if(level.var_de12b72f && isdefined(var_a0ad4f34.var_3e94206a) && isdefined(level.var_e7a38025[var_a0ad4f34.var_3e94206a]))
	{
		var_3e94206a = var_a0ad4f34.var_3e94206a;
		level.var_20acba97[var_3e94206a].var_9e110015 = var_9e110015;
		level.var_20acba97[var_3e94206a].var_dfcc01fd = var_dfcc01fd;
		level.var_20acba97[var_3e94206a].var_9f66af5e = var_9f66af5e;
		level.var_20acba97[var_3e94206a].var_4e147bc7 = var_4e147bc7;
		level.var_20acba97[var_3e94206a].var_852d8d8f = var_852d8d8f;
		level.var_20acba97[var_3e94206a].var_7d070b9c = var_7d070b9c;
		level.var_20acba97[var_3e94206a].var_63b3b085 = var_63b3b085;
		level.var_20acba97[var_3e94206a].var_51c9425f = var_51c9425f;
		level.var_20acba97[var_3e94206a].var_133ce9dc = var_133ce9dc;
		level.var_20acba97[var_3e94206a].var_d50db15a = var_d50db15a;
		level.var_20acba97[var_3e94206a].var_a0ad4f34 = var_a0ad4f34;
	}
	level.var_20acba97["none"].var_9e110015 = var_9e110015;
	level.var_20acba97["none"].var_dfcc01fd = var_dfcc01fd;
	level.var_20acba97["none"].var_9f66af5e = var_9f66af5e;
	level.var_20acba97["none"].var_4e147bc7 = var_4e147bc7;
	level.var_20acba97["none"].var_852d8d8f = var_852d8d8f;
	level.var_20acba97["none"].var_7d070b9c = var_7d070b9c;
	level.var_20acba97["none"].var_63b3b085 = var_63b3b085;
	level.var_20acba97["none"].var_51c9425f = var_51c9425f;
	level.var_20acba97["none"].var_133ce9dc = var_133ce9dc;
	level.var_20acba97["none"].var_d50db15a = var_d50db15a;
	level.var_20acba97["none"].var_a0ad4f34 = var_a0ad4f34;
}

/*
	Name: function_b84ed3fc
	Namespace: namespace_367908b2
	Checksum: 0x207F8B28
	Offset: 0xA18
	Size: 0xA9
	Parameters: 0
	Flags: None
*/
function function_b84ed3fc()
{
	function_68ec327b("none");
	foreach(var_3e94206a in level.var_e7a38025)
	{
		function_68ec327b(var_3e94206a);
	}
	level.var_184b03a = undefined;
}

/*
	Name: function_2f9d143c
	Namespace: namespace_367908b2
	Checksum: 0xF08CC071
	Offset: 0xAD0
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_2f9d143c()
{
	if(!isdefined(level.var_184b03a))
	{
		return 0;
	}
	level waittill("hash_9127ca46");
	return 1;
}

/*
	Name: function_6e092453
	Namespace: namespace_367908b2
	Checksum: 0x7C8A4AAA
	Offset: 0xB00
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_6e092453()
{
	if(isdefined(level.var_77929119) && level.var_77929119)
	{
		return;
	}
	level notify("hash_ccd443ba");
	namespace_2282eece::function_3de843e6();
	function_2f9d143c();
}

/*
	Name: function_98de7223
	Namespace: namespace_367908b2
	Checksum: 0xE4D7315E
	Offset: 0xB58
	Size: 0x1BB
	Parameters: 0
	Flags: None
*/
function function_98de7223()
{
	level waittill("hash_ccd443ba");
	level.var_6598a171 = 1;
	var_f49bab78 = "none";
	if(isdefined(level.var_184b03a))
	{
		var_f49bab78 = level.var_184b03a;
	}
	if(!isdefined(level.var_20acba97[var_f49bab78].var_63b3b085))
	{
		level.var_6598a171 = 0;
		level notify("hash_9127ca46");
		return;
	}
	if(isdefined(level.var_20acba97[var_f49bab78].var_a0ad4f34))
	{
		namespace_f74b04eb::function_f14712a1(level.var_20acba97[var_f49bab78].var_a0ad4f34);
	}
	function_6a90da04(function_6f1ebe57("mapname"), 0);
	var_2395e945 = level.var_2395e945;
	for(var_5e76f0af = 0; var_5e76f0af < var_2395e945.size; var_5e76f0af++)
	{
		var_5dc5e20a = var_2395e945[var_5e76f0af];
		var_5dc5e20a function_eb306581();
		var_5dc5e20a thread function_4a20ef53(var_f49bab78);
	}
	wait(0.1);
	while(function_4bb31c47())
	{
		wait(0.05);
	}
	level notify("hash_9127ca46");
	level.var_6598a171 = 0;
}

/*
	Name: function_ec4e2b9c
	Namespace: namespace_367908b2
	Checksum: 0x99EC1590
	Offset: 0xD20
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_ec4e2b9c()
{
}

/*
	Name: function_4bb31c47
	Namespace: namespace_367908b2
	Checksum: 0xD45124DE
	Offset: 0xD30
	Size: 0x75
	Parameters: 0
	Flags: None
*/
function function_4bb31c47()
{
	var_2395e945 = level.var_2395e945;
	for(var_5e76f0af = 0; var_5e76f0af < var_2395e945.size; var_5e76f0af++)
	{
		var_5dc5e20a = var_2395e945[var_5e76f0af];
		if(isdefined(var_5dc5e20a.var_367908b2))
		{
			return 1;
		}
	}
	return 0;
}

/*
	Name: function_367908b2
	Namespace: namespace_367908b2
	Checksum: 0x6CD1EF81
	Offset: 0xDB0
	Size: 0x5B3
	Parameters: 15
	Flags: None
*/
function function_367908b2(var_ca793e94, var_2be72b4e, var_96359b6f, var_3096b681, var_6d42c33a, var_dfcc01fd, var_9f66af5e, var_4e147bc7, var_852d8d8f, var_256d5e9f, var_6f31ae62, var_133ce9dc, var_d50db15a, var_a0ad4f34, var_75b85c5)
{
	self endon("hash_643a7daf");
	self endon("hash_ab1f9ea1");
	level endon("hash_c8ab51de");
	if(isdefined(var_75b85c5))
	{
		function_ab6d39b5(var_75b85c5, "hide_body", 0);
	}
	if(var_3096b681 < 0 || var_3096b681 === var_2be72b4e)
	{
		self notify("hash_ded47a5c");
		return;
	}
	var_d5030174 = GetTime() - var_9f66af5e / 1000;
	var_50e17b75 = var_d5030174 + var_4e147bc7;
	var_4ae58a7d = function_a8ca3be(var_dfcc01fd, var_6d42c33a, var_50e17b75, var_256d5e9f, var_6f31ae62);
	var_295bf11c = function_53440b83();
	var_b1b54096 = var_4ae58a7d + var_295bf11c;
	if(isdefined(var_6f31ae62) && var_b1b54096 > var_6f31ae62)
	{
		if(var_6f31ae62 < 2)
		{
			return;
		}
		if(var_6f31ae62 - var_4ae58a7d >= 1)
		{
			var_295bf11c = var_6f31ae62 - var_4ae58a7d;
		}
		else
		{
			var_295bf11c = 1;
			var_4ae58a7d = var_6f31ae62 - 1;
		}
		var_b1b54096 = var_4ae58a7d + var_295bf11c;
	}
	var_8111b9b3 = var_4ae58a7d + var_50e17b75;
	self notify("hash_d969d778", GetTime());
	var_11162f4d = GetTime() - var_8111b9b3 * 1000;
	self.var_e0beb6ee = "spectator";
	self.var_9e110015 = var_ca793e94;
	self.var_96359b6f = -1;
	if(var_3096b681 >= 0)
	{
		self thread function_1c59dce7(var_3096b681, var_6d42c33a - var_11162f4d - 100);
	}
	self.var_ee059a50 = var_2be72b4e;
	self.var_654f262a = var_8111b9b3;
	self.var_b1b54096 = var_b1b54096;
	self.var_a5cf2304 = var_852d8d8f;
	self.var_7b6b6cbb = var_4ae58a7d;
	self.var_1c362abb = self.var_b1b54096 - var_4ae58a7d;
	foreach(var_3e94206a in level.var_e7a38025)
	{
		self function_30ffffe2(var_3e94206a, 1);
	}
	self function_30ffffe2("freelook", 1);
	self function_30ffffe2("none", 1);
	self thread function_548eaf1e();
	wait(0.05);
	if(self.var_654f262a <= var_50e17b75)
	{
		self.var_e0beb6ee = "spectator";
		self.var_9e110015 = -1;
		self.var_96359b6f = -1;
		self.var_654f262a = 0;
		self.var_a5cf2304 = 0;
		self notify("hash_ded47a5c");
		return;
	}
	self thread function_6d82e1ee();
	self.var_367908b2 = 1;
	if(!self function_33d0d4d7() && level.var_cf1be84f == 1)
	{
		self function_a6953bec(var_4ae58a7d);
		self namespace_724a4794::function_1b1daa35();
	}
	self thread function_381b7570();
	self thread function_70dee73f();
	self thread function_62177e42();
	self thread function_6cc9650b();
	self thread namespace_b313ba29::function_dde283eb();
	self waittill("hash_ded47a5c");
	self.var_acfedf1c = undefined;
	self.var_ebd83169 = undefined;
	self function_3fc1574(0);
	self.var_e0beb6ee = "spectator";
	self.var_9e110015 = -1;
	self.var_96359b6f = -1;
	self.var_654f262a = 0;
	self.var_a5cf2304 = 0;
}

/*
	Name: function_1c59dce7
	Namespace: namespace_367908b2
	Checksum: 0x44C6FBF1
	Offset: 0x1370
	Size: 0x5B
	Parameters: 2
	Flags: None
*/
function function_1c59dce7(var_3096b681, var_fd3f3d1a)
{
	self endon("hash_643a7daf");
	self endon("hash_ded47a5c");
	self endon("hash_ab1f9ea1");
	if(var_fd3f3d1a > 0)
	{
		wait(var_fd3f3d1a / 1000);
	}
	self.var_96359b6f = var_3096b681;
}

/*
	Name: function_62177e42
	Namespace: namespace_367908b2
	Checksum: 0x6509566A
	Offset: 0x13D8
	Size: 0x39
	Parameters: 0
	Flags: None
*/
function function_62177e42()
{
	self endon("hash_643a7daf");
	self endon("hash_ded47a5c");
	wait(self.var_b1b54096 - 0.05);
	self notify("hash_ded47a5c");
}

/*
	Name: function_6cc9650b
	Namespace: namespace_367908b2
	Checksum: 0x84E093AD
	Offset: 0x1420
	Size: 0x39
	Parameters: 0
	Flags: None
*/
function function_6cc9650b()
{
	self endon("hash_643a7daf");
	self endon("hash_ded47a5c");
	wait(self.var_7b6b6cbb - 0.05);
	self notify("hash_4cb3b8de");
}

/*
	Name: function_8c00f071
	Namespace: namespace_367908b2
	Checksum: 0xFADE027C
	Offset: 0x1468
	Size: 0x12B
	Parameters: 2
	Flags: None
*/
function function_8c00f071(var_9f66af5e, var_a4ad846c)
{
	self endon("hash_643a7daf");
	self endon("hash_ded47a5c");
	var_d0ea49a = var_9f66af5e - var_a4ad846c / 1000;
	var_9f66af5e = GetTime() + var_d0ea49a * 1000;
	var_f7b34bdb = 2;
	namespace_82b91a51::function_c9ea7a64("levelNotify", "fkcb");
	wait(function_aaeec8c5(0, var_d0ea49a - var_f7b34bdb));
	function_b8d9ad6e(1, 0.25, var_f7b34bdb);
	wait(var_f7b34bdb + 0.5);
	function_b8d9ad6e(0.25, 1, 1);
	wait(0.5);
	namespace_82b91a51::function_c9ea7a64("levelNotify", "fkce");
}

/*
	Name: function_821991a3
	Namespace: namespace_367908b2
	Checksum: 0xF9A717C3
	Offset: 0x15A0
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_821991a3()
{
	self endon("hash_643a7daf");
	self endon("hash_ded47a5c");
	while(self function_d5ef124())
	{
		wait(0.05);
	}
	while(!self function_d5ef124())
	{
		wait(0.05);
	}
	self notify("hash_ded47a5c");
	self namespace_82b91a51::function_ef3f75eb("fkce");
}

/*
	Name: function_70dee73f
	Namespace: namespace_367908b2
	Checksum: 0xAC2F6520
	Offset: 0x1638
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_70dee73f()
{
	self endon("hash_643a7daf");
	self endon("hash_ded47a5c");
	self waittill("hash_9904e112");
	function_3fc1574(0);
}

/*
	Name: function_d0f29fe3
	Namespace: namespace_367908b2
	Checksum: 0xE595FF8A
	Offset: 0x1680
	Size: 0x7D
	Parameters: 0
	Flags: None
*/
function function_d0f29fe3()
{
	self endon("hash_643a7daf");
	self endon("hash_ded47a5c");
	while(self function_c11ae181())
	{
		wait(0.05);
	}
	while(!self function_c11ae181())
	{
		wait(0.05);
	}
	self.var_bb4b0e31 = 1;
	self notify("hash_ded47a5c");
}

/*
	Name: function_3fc1574
	Namespace: namespace_367908b2
	Checksum: 0xBFB906C7
	Offset: 0x1708
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_3fc1574(var_7671b2af)
{
	if(isdefined(self.var_60dc2732))
	{
		self.var_60dc2732.var_aabe9f43 = 0;
	}
	if(isdefined(self.var_9747cbb5))
	{
		self.var_9747cbb5.var_aabe9f43 = 0;
	}
	self.var_367908b2 = undefined;
	self thread namespace_54e5555d::function_c3d72c52();
}

/*
	Name: function_6d82e1ee
	Namespace: namespace_367908b2
	Checksum: 0x8401C67E
	Offset: 0x1780
	Size: 0x51
	Parameters: 0
	Flags: None
*/
function function_6d82e1ee()
{
	self endon("hash_643a7daf");
	self endon("hash_ded47a5c");
	while(1)
	{
		if(self.var_654f262a <= 0)
		{
			break;
		}
		wait(0.05);
	}
	self notify("hash_ded47a5c");
}

/*
	Name: function_381b7570
	Namespace: namespace_367908b2
	Checksum: 0x28F547EB
	Offset: 0x17E0
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_381b7570()
{
	self endon("hash_ded47a5c");
	self endon("hash_643a7daf");
	self waittill("hash_ab1f9ea1");
	self function_3fc1574(0);
}

/*
	Name: function_74a1e0e1
	Namespace: namespace_367908b2
	Checksum: 0x3878A62E
	Offset: 0x1828
	Size: 0x9B
	Parameters: 1
	Flags: None
*/
function function_74a1e0e1(var_a0ad4f34)
{
	self endon("hash_ded47a5c");
	self endon("hash_643a7daf");
	var_a0ad4f34 endon("hash_643a7daf");
	var_a0ad4f34 waittill("hash_d969d778", var_ce2fdf61);
	var_77a7fe7d = function_aaeec8c5(0, var_ce2fdf61 - self.var_9f66af5e - 50);
	wait(var_77a7fe7d);
	self function_3fc1574(0);
}

/*
	Name: function_548eaf1e
	Namespace: namespace_367908b2
	Checksum: 0x39FD27FA
	Offset: 0x18D0
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_548eaf1e()
{
	self endon("hash_ded47a5c");
	self endon("hash_643a7daf");
	level waittill("hash_c8ab51de");
	self function_3fc1574(0);
}

/*
	Name: function_5551058f
	Namespace: namespace_367908b2
	Checksum: 0x9BB20333
	Offset: 0x1918
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_5551058f()
{
	self endon("hash_ded47a5c");
	self endon("hash_643a7daf");
	level waittill("hash_c8ab51de");
	self function_3fc1574(1);
}

/*
	Name: function_e5bdbb5a
	Namespace: namespace_367908b2
	Checksum: 0x4BEF9F31
	Offset: 0x1968
	Size: 0x19
	Parameters: 0
	Flags: None
*/
function function_e5bdbb5a()
{
	return self function_d5ef124();
}

/*
	Name: function_4d6872cc
	Namespace: namespace_367908b2
	Checksum: 0x7D460C2B
	Offset: 0x1990
	Size: 0x19
	Parameters: 0
	Flags: None
*/
function function_4d6872cc()
{
	return self function_c11ae181();
}

/*
	Name: function_c342a02f
	Namespace: namespace_367908b2
	Checksum: 0xCA3A7481
	Offset: 0x19B8
	Size: 0xF
	Parameters: 0
	Flags: None
*/
function function_c342a02f()
{
	self.var_a706bfac = 1;
}

/*
	Name: function_8ab32671
	Namespace: namespace_367908b2
	Checksum: 0xD5FF7F64
	Offset: 0x19D0
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_8ab32671()
{
	self.var_a706bfac = 1;
	self.var_bb4b0e31 = 1;
}

/*
	Name: function_ebf3b725
	Namespace: namespace_367908b2
	Checksum: 0xDB6D62C0
	Offset: 0x19F8
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_ebf3b725()
{
	self thread function_da9c53cb(&function_e5bdbb5a, &function_c342a02f);
}

/*
	Name: function_da9c53cb
	Namespace: namespace_367908b2
	Checksum: 0x6E042F85
	Offset: 0x1A38
	Size: 0x11B
	Parameters: 2
	Flags: None
*/
function function_da9c53cb(var_4a3e11c, var_96008209)
{
	self endon("hash_a7fcb1d6");
	self endon("hash_643a7daf");
	level endon("hash_c8ab51de");
	while(!self [[var_4a3e11c]]())
	{
		wait(0.05);
		continue;
		var_b20eb3ca = 0;
		while(self [[var_4a3e11c]]())
		{
			var_b20eb3ca = var_b20eb3ca + 0.05;
			wait(0.05);
		}
		if(var_b20eb3ca >= 0.5)
		{
		}
		else
		{
			var_b20eb3ca = 0;
			while(!self [[var_4a3e11c]]() && var_b20eb3ca < 0.5)
			{
				var_b20eb3ca = var_b20eb3ca + 0.05;
				wait(0.05);
			}
			if(var_b20eb3ca >= 0.5)
			{
			}
			else
			{
				self [[var_96008209]]();
				return;
			}
		}
	}
}

/*
	Name: function_4a20ef53
	Namespace: namespace_367908b2
	Checksum: 0xB4DA148A
	Offset: 0x1B60
	Size: 0x57B
	Parameters: 1
	Flags: None
*/
function function_4a20ef53(var_f49bab78)
{
	self endon("hash_643a7daf");
	level endon("hash_c8ab51de");
	if(namespace_82b91a51::function_b8cd89f0())
	{
		function_9d2f1d78("final_killcam", 1);
		function_9d2f1d78("round_end_killcam", 0);
	}
	else
	{
		function_9d2f1d78("final_killcam", 0);
		function_9d2f1d78("round_end_killcam", 1);
	}
	/#
		if(function_4bd0142f("Dev Block strings are not supported") == 1)
		{
			function_9d2f1d78("Dev Block strings are not supported", 1);
			function_9d2f1d78("Dev Block strings are not supported", 0);
		}
	#/
	if(level.var_e89a8a5c)
	{
		self namespace_7956eece::function_dc6304e9(0);
	}
	var_37a32cc9 = level.var_20acba97[var_f49bab78];
	var_d5030174 = GetTime() - var_37a32cc9.var_9f66af5e / 1000;
	var_50e17b75 = var_d5030174 + var_37a32cc9.var_4e147bc7;
	var_4ae58a7d = function_a8ca3be(var_37a32cc9.var_dfcc01fd, var_37a32cc9.var_51c9425f, var_50e17b75, 0, undefined);
	var_295bf11c = function_53440b83();
	var_8111b9b3 = var_4ae58a7d + var_50e17b75;
	var_b1b54096 = var_4ae58a7d + var_295bf11c - 0.05;
	var_11162f4d = GetTime() - var_8111b9b3 * 1000;
	self notify("hash_d969d778", GetTime());
	self.var_e0beb6ee = "spectator";
	self.var_9e110015 = var_37a32cc9.var_9e110015;
	self.var_96359b6f = -1;
	if(var_37a32cc9.var_7d070b9c >= 0)
	{
		self thread function_1c59dce7(var_37a32cc9.var_7d070b9c, var_37a32cc9.var_51c9425f - var_11162f4d - 100);
	}
	self.var_ee059a50 = var_37a32cc9.var_63b3b085;
	self.var_654f262a = var_8111b9b3;
	self.var_b1b54096 = var_b1b54096;
	self.var_a5cf2304 = var_37a32cc9.var_852d8d8f;
	foreach(var_3e94206a in level.var_e7a38025)
	{
		self function_30ffffe2(var_3e94206a, 1);
	}
	self function_30ffffe2("freelook", 1);
	self function_30ffffe2("none", 1);
	self thread function_5551058f();
	wait(0.05);
	if(self.var_654f262a <= var_50e17b75)
	{
		self.var_e0beb6ee = "dead";
		self.var_9e110015 = -1;
		self.var_96359b6f = -1;
		self.var_654f262a = 0;
		self.var_a5cf2304 = 0;
		self notify("hash_ded47a5c");
		return;
	}
	self thread function_6d82e1ee();
	self.var_367908b2 = 1;
	if(!self function_33d0d4d7())
	{
		self function_a6953bec(var_4ae58a7d);
	}
	self thread function_62177e42();
	self thread function_8c00f071(level.var_20acba97[var_f49bab78].var_9f66af5e, var_11162f4d);
	self waittill("hash_ded47a5c");
	self function_3fc1574(1);
	function_9d2f1d78("final_killcam", 0);
	function_9d2f1d78("round_end_killcam", 0);
	self function_c0ee8391();
}

/*
	Name: function_c0ee8391
	Namespace: namespace_367908b2
	Checksum: 0x2072A195
	Offset: 0x20E8
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_c0ee8391()
{
	[[level.var_dedbb7c9]]();
	self function_faf8f736(1);
}

/*
	Name: function_999797fc
	Namespace: namespace_367908b2
	Checksum: 0x5CBA60E3
	Offset: 0x2120
	Size: 0x2F
	Parameters: 1
	Flags: None
*/
function function_999797fc(var_dfcc01fd)
{
	if(var_dfcc01fd.var_4be20d44 == "planemortar")
	{
		return 1;
	}
	return 0;
}

/*
	Name: function_a8ca3be
	Namespace: namespace_367908b2
	Checksum: 0x738C0B1D
	Offset: 0x2158
	Size: 0x153
	Parameters: 5
	Flags: None
*/
function function_a8ca3be(var_dfcc01fd, var_51c9425f, var_50e17b75, var_256d5e9f, var_6f31ae62)
{
	var_4ae58a7d = 0;
	if(function_6f1ebe57("scr_killcam_time") == "")
	{
		if(function_999797fc(var_dfcc01fd))
		{
			var_4ae58a7d = GetTime() - var_51c9425f / 1000 - var_50e17b75 - 0.1;
		}
		else if(!var_256d5e9f)
		{
			var_4ae58a7d = 5;
		}
		else if(var_dfcc01fd.var_5b62fb69)
		{
			var_4ae58a7d = 4.25;
		}
		else
		{
			var_4ae58a7d = 2.5;
		}
	}
	else
	{
		var_4ae58a7d = function_f3087faa("scr_killcam_time");
	}
	if(isdefined(var_6f31ae62))
	{
		if(var_4ae58a7d > var_6f31ae62)
		{
			var_4ae58a7d = var_6f31ae62;
		}
		if(var_4ae58a7d < 0.05)
		{
			var_4ae58a7d = 0.05;
		}
	}
	return var_4ae58a7d;
}

/*
	Name: function_53440b83
	Namespace: namespace_367908b2
	Checksum: 0x6121D203
	Offset: 0x22B8
	Size: 0x7F
	Parameters: 0
	Flags: None
*/
function function_53440b83()
{
	var_295bf11c = 0;
	if(function_6f1ebe57("scr_killcam_posttime") == "")
	{
		var_295bf11c = 2;
	}
	else
	{
		var_295bf11c = function_f3087faa("scr_killcam_posttime");
		if(var_295bf11c < 0.05)
		{
			var_295bf11c = 0.05;
		}
	}
	return var_295bf11c;
}

/*
	Name: function_62ea5b06
	Namespace: namespace_367908b2
	Checksum: 0xC8F52E17
	Offset: 0x2340
	Size: 0x1BF
	Parameters: 1
	Flags: None
*/
function function_62ea5b06(var_256d5e9f)
{
	if(!isdefined(self.var_60dc2732))
	{
		self.var_60dc2732 = function_ad13099a(self);
		self.var_60dc2732.var_740f6833 = 0;
		self.var_60dc2732.var_4f8217af = 0;
		self.var_60dc2732.var_b5536acc = "center";
		self.var_60dc2732.var_db55e535 = "middle";
		self.var_60dc2732.var_740218b1 = "center";
		self.var_60dc2732.var_f9134763 = "bottom";
		self.var_60dc2732.var_4d19365 = 1;
		self.var_60dc2732.var_83253ac2 = "objective";
	}
	if(self function_33d0d4d7())
	{
		self.var_60dc2732.var_297f9d46 = -100;
		self.var_60dc2732.var_2363da9c = 1.4;
	}
	else
	{
		self.var_60dc2732.var_297f9d46 = -120;
		self.var_60dc2732.var_2363da9c = 2;
	}
	if(var_256d5e9f)
	{
		self.var_60dc2732 function_f6181aca(&"PLATFORM_PRESS_TO_RESPAWN");
	}
	else
	{
		self.var_60dc2732 function_f6181aca(&"PLATFORM_PRESS_TO_SKIP");
	}
	self.var_60dc2732.var_aabe9f43 = 1;
}

/*
	Name: function_a6953bec
	Namespace: namespace_367908b2
	Checksum: 0x2D335697
	Offset: 0x2508
	Size: 0xB
	Parameters: 1
	Flags: None
*/
function function_a6953bec(var_4ae58a7d)
{
}

/*
	Name: function_c0c42164
	Namespace: namespace_367908b2
	Checksum: 0x3F5F4708
	Offset: 0x2520
	Size: 0x54F
	Parameters: 0
	Flags: None
*/
function function_c0c42164()
{
	if(!isdefined(self.var_60dc2732))
	{
		self.var_60dc2732 = function_ad13099a(self);
		self.var_60dc2732.var_740f6833 = 0;
		self.var_60dc2732.var_4f8217af = 0;
		self.var_60dc2732.var_b5536acc = "center";
		self.var_60dc2732.var_db55e535 = "top";
		self.var_60dc2732.var_740218b1 = "center_adjustable";
		self.var_60dc2732.var_f9134763 = "top_adjustable";
		self.var_60dc2732.var_4d19365 = 1;
		self.var_60dc2732.var_83253ac2 = "default";
		self.var_60dc2732.var_79e0f792 = 1;
		self.var_60dc2732.var_5773c805 = 1;
		if(self function_33d0d4d7())
		{
			self.var_60dc2732.var_297f9d46 = 20;
			self.var_60dc2732.var_2363da9c = 1.2;
		}
		else
		{
			self.var_60dc2732.var_297f9d46 = 32;
			self.var_60dc2732.var_2363da9c = 1.8;
		}
	}
	if(!isdefined(self.var_211281d9))
	{
		self.var_211281d9 = function_ad13099a(self);
		self.var_211281d9.var_740f6833 = 0;
		self.var_211281d9.var_297f9d46 = 48;
		self.var_211281d9.var_b5536acc = "left";
		self.var_211281d9.var_db55e535 = "top";
		self.var_211281d9.var_740218b1 = "center";
		self.var_211281d9.var_f9134763 = "middle";
		self.var_211281d9.var_4d19365 = 10;
		self.var_211281d9.var_83253ac2 = "small";
		self.var_211281d9.var_79e0f792 = 1;
		self.var_211281d9.var_5773c805 = 1;
		if(self function_33d0d4d7())
		{
			self.var_211281d9.var_4f8217af = 16;
			self.var_211281d9.var_2363da9c = 1.2;
		}
		else
		{
			self.var_211281d9.var_4f8217af = 32;
			self.var_211281d9.var_2363da9c = 1.6;
		}
	}
	if(!isdefined(self.var_7723af09))
	{
		self.var_7723af09 = function_ad13099a(self);
		self.var_7723af09.var_740f6833 = 0;
		self.var_7723af09.var_4f8217af = 16;
		self.var_7723af09.var_297f9d46 = 16;
		self.var_7723af09.var_b5536acc = "left";
		self.var_7723af09.var_db55e535 = "top";
		self.var_7723af09.var_740218b1 = "center";
		self.var_7723af09.var_f9134763 = "middle";
		self.var_7723af09.var_4d19365 = 1;
		self.var_7723af09.var_79e0f792 = 1;
		self.var_7723af09.var_5773c805 = 1;
	}
	if(!self function_33d0d4d7())
	{
		if(!isdefined(self.var_9747cbb5))
		{
			self.var_9747cbb5 = namespace_724a4794::function_1fa18f5d("hudbig", 1);
			self.var_9747cbb5.var_740f6833 = 0;
			self.var_9747cbb5.var_4f8217af = 0;
			self.var_9747cbb5.var_b5536acc = "center";
			self.var_9747cbb5.var_db55e535 = "middle";
			self.var_9747cbb5.var_740218b1 = "center_safearea";
			self.var_9747cbb5.var_f9134763 = "top_adjustable";
			self.var_9747cbb5.var_297f9d46 = 42;
			self.var_9747cbb5.var_4d19365 = 1;
			self.var_9747cbb5.var_83253ac2 = "hudbig";
			self.var_9747cbb5.var_79e0f792 = 1;
			self.var_9747cbb5.var_d900369a = VectorScale((1, 1, 1), 0.85);
			self.var_9747cbb5.var_5773c805 = 1;
		}
	}
}

