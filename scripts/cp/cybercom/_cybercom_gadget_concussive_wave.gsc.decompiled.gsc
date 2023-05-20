#using scripts\codescripts\struct;
#using scripts\cp\_challenges;
#using scripts\cp\cybercom\_cybercom;
#using scripts\cp\cybercom\_cybercom_gadget;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\shared\abilities\_ability_player;
#using scripts\shared\abilities\_ability_util;
#using scripts\shared\ai\systems\gib;
#using scripts\shared\ai_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace namespace_687c8387;

/*
	Name: function_c35e6aab
	Namespace: namespace_687c8387
	Checksum: 0x99EC1590
	Offset: 0x548
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_c35e6aab()
{
}

/*
	Name: function_d290ebfa
	Namespace: namespace_687c8387
	Checksum: 0x9B7E42C4
	Offset: 0x558
	Size: 0x183
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	namespace_d00ec32::function_36b56038(1, 4, 1);
	level.var_175490fb.var_950c9e03 = function_a8fb77bd();
	level.var_175490fb.var_950c9e03.var_875da84b = &function_875da84b;
	level.var_175490fb.var_950c9e03.var_8d01efb6 = &function_8d01efb6;
	level.var_175490fb.var_950c9e03.var_bdb47551 = &function_bdb47551;
	level.var_175490fb.var_950c9e03.var_39ea6a1b = &function_39ea6a1b;
	level.var_175490fb.var_950c9e03.var_5d2fec30 = &function_5d2fec30;
	level.var_175490fb.var_950c9e03.var_b039e27b = &function_b039e27b;
	level.var_175490fb.var_950c9e03.var_251e7cf = &function_251e7cf;
	level.var_175490fb.var_950c9e03.var_4135a1c4 = &function_4135a1c4;
}

/*
	Name: function_875da84b
	Namespace: namespace_687c8387
	Checksum: 0x5BF952C9
	Offset: 0x6E8
	Size: 0xB
	Parameters: 1
	Flags: None
*/
function function_875da84b(var_2d11f419)
{
}

/*
	Name: function_8d01efb6
	Namespace: namespace_687c8387
	Checksum: 0xF3CEFFC0
	Offset: 0x700
	Size: 0x13
	Parameters: 2
	Flags: None
*/
function function_8d01efb6(var_2d11f419, var_dfcc01fd)
{
}

/*
	Name: function_bdb47551
	Namespace: namespace_687c8387
	Checksum: 0x48CC573F
	Offset: 0x720
	Size: 0x1A3
	Parameters: 2
	Flags: None
*/
function function_bdb47551(var_2d11f419, var_dfcc01fd)
{
	self.var_175490fb.var_e6fa6e38 = function_4bd0142f("scr_concussive_wave_radius", 310);
	self.var_175490fb.var_47063871 = function_c4d5ec1f("hero_gravityspikes_cybercom");
	self.var_175490fb.var_46ad3e37 = function_4bd0142f("scr_concussive_wave_kill_radius", 195);
	if(self function_1a9006bd("cybercom_concussive") == 2)
	{
		self.var_175490fb.var_e6fa6e38 = function_4bd0142f("scr_concussive_wave_upg_radius", 310);
		self.var_175490fb.var_47063871 = function_c4d5ec1f("hero_gravityspikes_cybercom_upgraded");
	}
	self.var_175490fb.var_4e92078e = 5 * function_f3087faa("scr_concussive_wave_scale", 1);
	self.var_175490fb.var_9d8e0758 = &function_8aac802c;
	self.var_175490fb.var_c40accd3 = &function_602b28e9;
	self thread namespace_175490fb::function_b5f4e597(var_dfcc01fd);
}

/*
	Name: function_39ea6a1b
	Namespace: namespace_687c8387
	Checksum: 0x8BD4B8D7
	Offset: 0x8D0
	Size: 0x13
	Parameters: 2
	Flags: None
*/
function function_39ea6a1b(var_2d11f419, var_dfcc01fd)
{
}

/*
	Name: function_5d2fec30
	Namespace: namespace_687c8387
	Checksum: 0x99EC1590
	Offset: 0x8F0
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_5d2fec30()
{
}

/*
	Name: function_b039e27b
	Namespace: namespace_687c8387
	Checksum: 0x1AAEEE4C
	Offset: 0x900
	Size: 0x1A3
	Parameters: 2
	Flags: None
*/
function function_b039e27b(var_2d11f419, var_dfcc01fd)
{
	if(self function_653ba713() == "prone")
	{
		self function_868603c7(var_2d11f419, var_dfcc01fd, 2);
		return;
	}
	if(self function_d5770832())
	{
		self function_868603c7(var_2d11f419, var_dfcc01fd, 2);
		return;
	}
	if(self function_4fd05cd2())
	{
		self function_868603c7(var_2d11f419, var_dfcc01fd, 2);
		return;
	}
	namespace_175490fb::function_adc40f11(var_dfcc01fd, 1);
	self thread function_9ba0286c(self.var_175490fb.var_cb0b065, var_2d11f419, var_dfcc01fd);
	level.var_b1ae49b1 = GetTime();
	if(function_65f192a6(self))
	{
		var_1630584c = function_e967a021("cybercom_concussive");
		if(isdefined(var_1630584c))
		{
			self function_ab8716a0("ItemStats", var_1630584c, "stats", "used", "statValue", 1);
		}
	}
}

/*
	Name: function_251e7cf
	Namespace: namespace_687c8387
	Checksum: 0x16603A71
	Offset: 0xAB0
	Size: 0x1F
	Parameters: 2
	Flags: None
*/
function function_251e7cf(var_2d11f419, var_dfcc01fd)
{
	level.var_61196c7 = GetTime();
}

/*
	Name: function_4135a1c4
	Namespace: namespace_687c8387
	Checksum: 0x61077BD7
	Offset: 0xAD8
	Size: 0x13
	Parameters: 2
	Flags: None
*/
function function_4135a1c4(var_2d11f419, var_dfcc01fd)
{
}

/*
	Name: function_73688d2e
	Namespace: namespace_687c8387
	Checksum: 0x4C5460A0
	Offset: 0xAF8
	Size: 0xE3
	Parameters: 2
	Flags: None
*/
function function_73688d2e(var_f9348fda, var_9bc2efcb)
{
	if(!isdefined(var_9bc2efcb))
	{
		var_9bc2efcb = 1;
	}
	if(isdefined(var_9bc2efcb) && var_9bc2efcb)
	{
		var_fe311e35 = self namespace_175490fb::function_5e3d3aa();
		self function_13ffb22b("face default");
		self function_5d64f4b4("ai_cybercom_anim", self.var_722885f3, self.var_6ab6f4fd, "ai_base_rifle_" + var_fe311e35 + "_exposed_cybercom_activate");
		self waittillmatch("hash_39fa7e38");
	}
	self function_9ba0286c(var_f9348fda);
}

/*
	Name: function_8aac802c
	Namespace: namespace_687c8387
	Checksum: 0x50B7817F
	Offset: 0xBE8
	Size: 0x161
	Parameters: 1
	Flags: Private
*/
function private function_8aac802c(var_dfcc01fd)
{
	var_221351df = function_525ae497(function_24e95264("axis", "human"), function_24e95264("team3", "human"), 0, 0);
	var_422e7ca6 = function_525ae497(function_24e95264("axis", "robot"), function_24e95264("team3", "robot"), 0, 0);
	var_debfe596 = function_525ae497(function_24e95264("axis", "zombie"), function_24e95264("team3", "zombie"), 0, 0);
	return function_525ae497(var_debfe596, function_525ae497(var_221351df, var_422e7ca6, 0, 0), 0, 0);
}

/*
	Name: function_602b28e9
	Namespace: namespace_687c8387
	Checksum: 0x4A108F88
	Offset: 0xD58
	Size: 0x5D
	Parameters: 1
	Flags: Private
*/
function private function_602b28e9(var_b07228b6)
{
	if(var_b07228b6 namespace_175490fb::function_8fd8f5b1("cybercom_concussive"))
	{
		return 0;
	}
	if(isdefined(var_b07228b6.var_91c8e9a9) && var_b07228b6.var_91c8e9a9)
	{
		return 0;
	}
	return 1;
}

/*
	Name: function_4f749468
	Namespace: namespace_687c8387
	Checksum: 0x9D5316A2
	Offset: 0xDC0
	Size: 0x2F
	Parameters: 0
	Flags: None
*/
function function_4f749468()
{
	var_aba584c6 = self function_fc753cb5();
	return !isdefined(var_aba584c6);
}

/*
	Name: function_ffd5ab29
	Namespace: namespace_687c8387
	Checksum: 0x1F696B0C
	Offset: 0xDF8
	Size: 0x779
	Parameters: 2
	Flags: None
*/
function function_ffd5ab29()
{
System.InvalidOperationException: Stack empty.
   at System.ThrowHelper.ThrowInvalidOperationException(ExceptionResource resource)
   at System.Collections.Generic.Stack`1.Pop()
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.⁫⁮⁭‮⁮⁪‬⁮‎‌‮⁪‏‍⁬‏⁪‮‎‏‪‌‎‍‎‪⁮​‬⁪‮⁭‏⁭‌‏‎‭⁪‫‮(String , Int32 , Boolean , Boolean )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‮​⁬⁭⁮‍‏‏‫‎‭‫⁮‪‮⁭‮⁬​‌⁯‮⁭‬​‪⁭‍‏‪⁪‎⁭⁭‌⁪‌‭​⁯‮(ScriptOp , ‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‭⁭⁫‭⁪‫‭‮‪⁬‏‎‪⁯⁪⁬‪‏‫⁯⁯‭​‫⁯‍‮⁫‪‏⁫⁪‎‏‫‫‪⁬‌⁯‮(‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ , Int32 )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‭⁭⁫‭⁪‫‭‮‪⁬‏‎‪⁯⁪⁬‪‏‫⁯⁯‭​‫⁯‍‮⁫‪‏⁫⁪‎‏‫‫‪⁬‌⁯‮(‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ , Int32 )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‭⁭⁫‭⁪‫‭‮‪⁬‏‎‪⁯⁪⁬‪‏‫⁯⁯‭​‫⁯‍‮⁫‪‏⁫⁪‎‏‫‫‪⁬‌⁯‮(‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ , Int32 )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‭⁭⁫‭⁪‫‭‮‪⁬‏‎‪⁯⁪⁬‪‏‫⁯⁯‭​‫⁯‍‮⁫‪‏⁫⁪‎‏‫‫‪⁬‌⁯‮(‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ , Int32 )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮..ctor(ScriptExport , ScriptBase )
}

/*
	Name: function_74fb2002
	Namespace: namespace_687c8387
	Checksum: 0xA886E96D
	Offset: 0x1580
	Size: 0x73
	Parameters: 3
	Flags: None
*/
function function_74fb2002(var_78962fff, var_a0ad4f34, var_dfcc01fd)
{
	self endon("hash_128f8789");
	wait(var_78962fff);
	self function_c3945cd5(self.var_3a90f16b + 1, self.var_722885f3, var_a0ad4f34, var_a0ad4f34, "none", "MOD_UNKNOWN", 0, var_dfcc01fd);
}

/*
	Name: function_f98dd1a9
	Namespace: namespace_687c8387
	Checksum: 0xB8D005F9
	Offset: 0x1600
	Size: 0x91
	Parameters: 2
	Flags: None
*/
function function_f98dd1a9(var_6050ab17, var_a0ad4f34)
{
	var_3b143046 = var_6050ab17.var_722885f3 - var_a0ad4f34.var_722885f3;
	var_2e3e72d7 = function_bc7ce905(var_a0ad4f34.var_6ab6f4fd);
	return function_5f9a4869(var_2e3e72d7, function_f679a325(var_3b143046));
}

/*
	Name: function_78e146a3
	Namespace: namespace_687c8387
	Checksum: 0x4438C821
	Offset: 0x16A0
	Size: 0x39
	Parameters: 0
	Flags: None
*/
function function_78e146a3()
{
	self endon("hash_128f8789");
	self endon("hash_c76d622a");
	wait(1.75);
	self notify("hash_b64936fe", "concussiveReact");
}

/*
	Name: function_9ba0286c
	Namespace: namespace_687c8387
	Checksum: 0x5821E62D
	Offset: 0x16E8
	Size: 0x39B
	Parameters: 3
	Flags: None
*/
function function_9ba0286c(var_f9348fda, var_2d11f419, var_dfcc01fd)
{
	if(!function_65f192a6(self))
	{
		level thread function_ffd5ab29(var_f9348fda, self);
		return;
	}
	self endon("hash_643a7daf");
	self.var_175490fb.var_dd2f3b84 = 1;
	self namespace_71e9cb84::function_e9c3870b("cybercom_disabled", 1);
	self.var_bdd60914 = self function_6fa6b424(0);
	if(isdefined(self.var_175490fb) && isdefined(self.var_175490fb.var_47063871))
	{
		var_47063871 = self.var_175490fb.var_47063871;
	}
	else
	{
		var_47063871 = function_c4d5ec1f("hero_gravityspikes_cybercom");
	}
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_47063871));
	#/
	self.var_175490fb.var_ebeecfd5 = 1;
	self function_860a040a(var_47063871);
	self function_67795b5f(var_47063871, 2);
	if(self function_1a9006bd("cybercom_concussive") == 2)
	{
		var_a7d64832 = GetTime() + 800;
		while(self function_4f749468() == 0 && self function_2103ff4b(var_47063871) && GetTime() < var_a7d64832)
		{
			wait(0.05);
		}
		while(self function_4f749468() == 1 && self function_2103ff4b(var_47063871) && GetTime() < var_a7d64832)
		{
			wait(0.05);
		}
	}
	else
	{
		wait(0.6);
	}
	self function_e2af603e("grenade_rumble");
	function_9cf04c2e(0.6, 0.5, self.var_722885f3, 256);
	if(isdefined(var_47063871) && self function_2103ff4b(var_47063871))
	{
		self function_1f3745c0(var_47063871);
	}
	self.var_175490fb.var_ebeecfd5 = undefined;
	level thread function_ffd5ab29(var_f9348fda, self);
	wait(function_4bd0142f("scr_concussive_wave_no_sprint", 1));
	self function_6fa6b424(self.var_bdd60914);
	self.var_bdd60914 = undefined;
	self.var_175490fb.var_dd2f3b84 = undefined;
	self namespace_71e9cb84::function_e9c3870b("cybercom_disabled", 0);
	wait(0.1);
}

