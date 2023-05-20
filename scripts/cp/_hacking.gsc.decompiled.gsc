#using scripts\codescripts\struct;
#using scripts\cp\_objectives;
#using scripts\cp\_oed;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\cp\gametypes\_save;
#using scripts\cp\gametypes\_spawning;
#using scripts\cp\gametypes\_spawnlogic;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\load_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace namespace_ac959fba;

/*
	Name: function_2dc19561
	Namespace: namespace_ac959fba
	Checksum: 0xA04A14DF
	Offset: 0x340
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("hacking", &function_8c87d8eb, undefined, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_ac959fba
	Checksum: 0xCA384341
	Offset: 0x380
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	level.var_ac959fba = function_a8fb77bd();
	level.var_ac959fba namespace_ad23e503::function_c35e6aab("in_progress");
}

/*
	Name: function_f9e78d26
	Namespace: namespace_ac959fba
	Checksum: 0x67B3E7C1
	Offset: 0x3C8
	Size: 0x4B
	Parameters: 2
	Flags: None
*/
function function_f9e78d26(var_498bbabf, var_c08cc2da)
{
	function_cfce9b82(var_c08cc2da);
	wait(var_498bbabf);
	function_a454a59a(undefined, var_c08cc2da, 1);
}

/*
	Name: function_68df65d8
	Namespace: namespace_ac959fba
	Checksum: 0x791D6C21
	Offset: 0x420
	Size: 0x2D7
	Parameters: 6
	Flags: None
*/
function function_68df65d8(var_498bbabf, var_b04bc952, var_884d30e8, var_84221fce, var_87f7a2d, var_27d1693f)
{
	if(!isdefined(var_498bbabf))
	{
		var_498bbabf = 0.5;
	}
	if(!isdefined(var_b04bc952))
	{
		var_b04bc952 = &"cp_hacking";
	}
	if(isdefined(var_884d30e8))
	{
		self function_d5eb00e3(var_884d30e8);
	}
	self function_e68ee88a("HINT_INTERACTIVE_PROMPT");
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
	var_c2ddfce0 = [];
	var_38c85157 = namespace_a230c2b1::function_be21f511("any", self, var_c2ddfce0, (0, 0, 0), var_b04bc952);
	var_38c85157 namespace_a230c2b1::function_1e5cb2cc("any");
	var_38c85157 namespace_a230c2b1::function_df0e9e69(0.35);
	var_38c85157 namespace_a230c2b1::function_a09b1ac1("allies");
	var_38c85157 namespace_a230c2b1::function_bd903f5c("any");
	var_38c85157.var_3c8ea097 = &function_3c8ea097;
	var_38c85157.var_cfce9b82 = &function_cfce9b82;
	var_38c85157.var_a454a59a = &function_a454a59a;
	var_38c85157.var_84221fce = var_84221fce;
	var_38c85157.var_222fca7a = 1;
	var_38c85157.var_27d1693f = var_27d1693f;
	return var_38c85157;
}

/*
	Name: function_7373f13d
	Namespace: namespace_ac959fba
	Checksum: 0xFCBD28CB
	Offset: 0x700
	Size: 0x1F
	Parameters: 0
	Flags: None
*/
function function_7373f13d()
{
	self waittill("hash_1253961", var_65669d7b);
	return var_65669d7b;
}

/*
	Name: function_cfce9b82
	Namespace: namespace_ac959fba
	Checksum: 0xEF3157B8
	Offset: 0x728
	Size: 0xB
	Parameters: 1
	Flags: None
*/
function function_cfce9b82(var_5dc5e20a)
{
}

/*
	Name: function_a454a59a
	Namespace: namespace_ac959fba
	Checksum: 0x2DF3C2E7
	Offset: 0x740
	Size: 0x1B
	Parameters: 3
	Flags: None
*/
function function_a454a59a(var_3e94206a, var_5dc5e20a, var_3c61bfc2)
{
}

/*
	Name: function_3c8ea097
	Namespace: namespace_ac959fba
	Checksum: 0x827BCF4C
	Offset: 0x768
	Size: 0x2C3
	Parameters: 1
	Flags: None
*/
function function_3c8ea097(var_5dc5e20a)
{
	self namespace_a230c2b1::function_e54c54c3();
	if(isdefined(var_5dc5e20a))
	{
		level.var_ac959fba namespace_ad23e503::function_74d6b22f("in_progress");
		var_5dc5e20a namespace_175490fb::function_f8669cbf(1);
		var_5dc5e20a namespace_71e9cb84::function_e9c3870b("sndCCHacking", 2);
		var_5dc5e20a namespace_82b91a51::function_67520c6a(1, undefined, &namespace_71e9cb84::function_688ed188, "hack_dni_fx");
		if(isdefined(self.var_27d1693f))
		{
			var_c4ed51d5 = namespace_82b91a51::function_b9fd52a4("tag_origin", var_5dc5e20a.var_722885f3, var_5dc5e20a.var_6ab6f4fd);
			var_c4ed51d5 function_37f7858a(self.var_27d1693f);
			var_5dc5e20a function_87b6cda1(var_c4ed51d5, "tag_origin");
			var_c4ed51d5 namespace_cc27597::function_43718187("cin_gen_player_hack_start", var_5dc5e20a);
			var_c4ed51d5 function_dc8c8404();
		}
		else
		{
			var_6df191e = var_5dc5e20a;
			if(isdefined(self.var_4dbf3ae3.var_b07228b6))
			{
				var_6df191e = namespace_14b42b8a::function_7922262b(self.var_4dbf3ae3.var_b07228b6, "targetname");
			}
			var_6df191e namespace_cc27597::function_43718187("cin_gen_player_hack_start", var_5dc5e20a);
		}
		level notify("hash_221e0b70", 1, var_5dc5e20a);
		self.var_4dbf3ae3 notify("hash_1253961", var_5dc5e20a);
		if(isdefined(var_5dc5e20a))
		{
			var_5dc5e20a namespace_71e9cb84::function_e9c3870b("sndCCHacking", 0);
		}
		level.var_ac959fba namespace_ad23e503::function_9d134160("in_progress");
	}
	if(isdefined(self.var_84221fce))
	{
		[[self.var_84221fce]]();
	}
	function_dc9790a1(self.var_79f5c705);
	self namespace_a230c2b1::function_c5a39495(1, undefined, 1);
}

