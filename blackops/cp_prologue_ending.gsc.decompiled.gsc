#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_eth_prologue;
#using scripts\cp\cp_mi_eth_prologue_fx;
#using scripts\cp\cp_mi_eth_prologue_sound;
#using scripts\cp\cp_prologue_player_sacrifice;
#using scripts\cp\cp_prologue_util;
#using scripts\shared\array_shared;
#using scripts\shared\audio_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\damagefeedback_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\hud_util_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;

#namespace namespace_b7c5904;

/*
	Name: function_48700afe
	Namespace: namespace_b7c5904
	Checksum: 0x6AE2BA5C
	Offset: 0x5F8
	Size: 0x20B
	Parameters: 2
	Flags: None
*/
function function_48700afe(var_a67db03e, var_74cd64bc)
{
	namespace_4dc8633b::function_77d9dff("objective_prologue_ending_init");
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		level thread namespace_2cb3876f::function_cfabe921();
		namespace_d0ef8521::function_50ccee8d("cp_level_prologue_goto_exfil");
		namespace_d0ef8521::function_31cd1834("cp_level_prologue_defend_pod");
		namespace_d0ef8521::function_74d6b22f("cp_level_prologue_get_out_alive");
		level namespace_2cb3876f::function_6a5f89cb("skipto_end");
		level.var_d3659748 = namespace_96fa87af::function_7387a40a("apc");
		level.var_d3659748.var_b691b9cf = "apc_escape";
		level.var_2fd26037 = namespace_82b91a51::function_740f8516("hendricks");
		namespace_d7916d65::function_c32ba481();
	}
	level namespace_71e9cb84::function_74d6b22f("gameplay_started", 0);
	namespace_82b91a51::function_7e61de2b(0, "black", "cinematic_fader");
	namespace_84970cc4::function_eaab05dc(level.var_2395e945, &namespace_82b91a51::function_16c71b8, 1);
	level thread namespace_21b2c1f2::function_2b0842cd();
	level namespace_ad23e503::function_74d6b22f("start_tower_collapse");
	namespace_80983c42::function_80983c42("light_exploder_igc_ending");
	function_c68f0034(var_74cd64bc);
}

/*
	Name: function_a12cfbf4
	Namespace: namespace_b7c5904
	Checksum: 0x8FD80C9C
	Offset: 0x810
	Size: 0x5F
	Parameters: 3
	Flags: None
*/
function function_a12cfbf4(var_9c4565e, var_74d0774f, var_36feaabb)
{
	level endon("hash_398b6127");
	while(1)
	{
		level waittill(var_9c4565e);
		level thread function_cddb4b1f(var_74d0774f, var_36feaabb);
		wait(0.1);
	}
}

/*
	Name: function_cddb4b1f
	Namespace: namespace_b7c5904
	Checksum: 0x6C116DB8
	Offset: 0x878
	Size: 0xE9
	Parameters: 2
	Flags: None
*/
function function_cddb4b1f(var_74d0774f, var_36feaabb)
{
	var_1d6db0a3 = function_c4d5ec1f("none");
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a function_788e5cb8(level, level.var_63d6b172, var_74d0774f, 0, var_36feaabb, var_1d6db0a3, undefined, undefined, "ouchspot", undefined, 0, undefined, undefined);
	}
}

/*
	Name: function_e476fc0a
	Namespace: namespace_b7c5904
	Checksum: 0xFCA08307
	Offset: 0x970
	Size: 0x91
	Parameters: 0
	Flags: None
*/
function function_e476fc0a()
{
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a namespace_71e9cb84::function_e9c3870b("player_blood_splatter", 1);
	}
}

/*
	Name: function_490f0dd8
	Namespace: namespace_b7c5904
	Checksum: 0x7BC248CF
	Offset: 0xA10
	Size: 0xA1
	Parameters: 1
	Flags: None
*/
function function_490f0dd8(var_84893de8)
{
	if(!isdefined(var_84893de8))
	{
		var_84893de8 = 1;
	}
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a.var_bab9655e = var_84893de8;
	}
}

/*
	Name: function_cc36a86d
	Namespace: namespace_b7c5904
	Checksum: 0x5C14147F
	Offset: 0xAC0
	Size: 0x3B
	Parameters: 4
	Flags: None
*/
function function_cc36a86d(var_4be20d44, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	namespace_4dc8633b::function_77d9dff("prologue_ending_done");
}

/*
	Name: function_c68f0034
	Namespace: namespace_b7c5904
	Checksum: 0xD8AEDA03
	Offset: 0xB08
	Size: 0x613
	Parameters: 1
	Flags: None
*/
function function_c68f0034(var_74cd64bc)
{
	var_27606155 = function_99201f25("trigger_ob_defend", "targetname");
	foreach(var_a57773f5 in var_27606155)
	{
		var_a57773f5 function_175e6b8e(0);
	}
	namespace_2cb3876f::function_b50f5d52();
	if(!var_74cd64bc)
	{
		if(isdefined(level.var_d36c1286))
		{
			level thread [[level.var_d36c1286]]();
		}
	}
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a function_4890e520();
		var_5dc5e20a.var_3a90f16b = 100;
		var_5dc5e20a.var_1554f271 = &function_886ee9f1;
	}
	level thread function_a12cfbf4("leftarm", 25, "MOD_MELEE_WEAPON_BUTT");
	level thread function_a12cfbf4("rightarm", 25, "MOD_MELEE_WEAPON_BUTT");
	level thread function_a12cfbf4("rightleg", 20, "MOD_MELEE_WEAPON_BUTT");
	level thread function_a12cfbf4("robot_left_punch", 3, "MOD_MELEE_WEAPON_BUTT");
	level thread function_a12cfbf4("robot_right_punch", 3, "MOD_MELEE_WEAPON_BUTT");
	var_a8937bd3 = function_6ada35ba("robot", "targetname", 1);
	if(isdefined(var_a8937bd3))
	{
		var_a8937bd3 function_dc8c8404();
	}
	namespace_cc27597::function_8f9f34e0("cin_pro_20_01_rippedapart_murder", &function_48d78725, "play");
	namespace_cc27597::function_8f9f34e0("cin_pro_20_01_rippedapart_murder", &function_157cae6a, "play");
	namespace_cc27597::function_8f9f34e0("cin_pro_20_01_rippedapart_murder", &function_398b6127, "done");
	level thread namespace_cc27597::function_43718187("cin_pro_20_01_rippedapart_murder");
	level waittill("hash_be89995b");
	if(!namespace_cc27597::function_b1f75ee9())
	{
		level thread namespace_82b91a51::function_593c2af4(1.9, "black", "cinematic_fader");
	}
	if(isdefined(level.var_8265c35))
	{
		level thread [[level.var_8265c35]]();
	}
	level waittill("hash_87c3e0ab");
	if(!namespace_cc27597::function_b1f75ee9())
	{
		level namespace_82b91a51::function_7e61de2b(0.1, "black", "cinematic_fader");
		level namespace_82b91a51::function_593c2af4(0.1, "black", "cinematic_fader");
		wait(0.8);
		level namespace_82b91a51::function_7e61de2b(0.1, "black", "cinematic_fader");
		level namespace_82b91a51::function_593c2af4(0.2, "black", "cinematic_fader");
		wait(0.8);
		level namespace_82b91a51::function_7e61de2b(1.4, "black", "cinematic_fader");
		wait(2);
	}
	else
	{
		level thread namespace_82b91a51::function_7d553ac6();
	}
	level thread function_58c753e3();
	level namespace_cc27597::function_8f9f34e0("cin_pro_20_01_squished_1st_rippedapart_aftermath_pt1", &function_313d2f63);
	level namespace_cc27597::function_43718187("cin_pro_20_01_squished_1st_rippedapart_aftermath_pt1");
	namespace_d0ef8521::function_31cd1834("cp_level_prologue_get_out_alive");
	level namespace_71b8dba1::function_81141386("tayr_it_s_gonna_be_okay_0");
	level thread namespace_4fe3eef1::function_9908d262("mus_prologue_battle_intro");
	level.var_efaf4d6c = 1;
	level notify("hash_cbaff304");
	wait(2);
	namespace_1d795d47::function_be8adfb8("skipto_prologue_ending");
}

/*
	Name: function_313d2f63
	Namespace: namespace_b7c5904
	Checksum: 0x52E4D5C
	Offset: 0x1128
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function function_313d2f63(var_c77d2837)
{
	var_c77d2837["prometheus"] function_cea50a94(1);
}

/*
	Name: function_48d78725
	Namespace: namespace_b7c5904
	Checksum: 0xDCBA1FB4
	Offset: 0x1168
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_48d78725(var_c77d2837)
{
	var_6bfe1586 = var_c77d2837["player 1"];
	var_6bfe1586 function_f1aa5a21("default", 2);
}

/*
	Name: function_398b6127
	Namespace: namespace_b7c5904
	Checksum: 0x31AA6225
	Offset: 0x11B8
	Size: 0x19
	Parameters: 1
	Flags: None
*/
function function_398b6127(var_c77d2837)
{
	level notify("hash_398b6127");
}

/*
	Name: function_157cae6a
	Namespace: namespace_b7c5904
	Checksum: 0xF7BF3A94
	Offset: 0x11E0
	Size: 0x223
	Parameters: 1
	Flags: None
*/
function function_157cae6a(var_c77d2837)
{
	level.var_63d6b172 = var_c77d2837["robot"];
	level.var_ef6539d1 = var_c77d2837["player 1"];
	var_c77d2837["rightarm"] function_8c8e79fe();
	var_c77d2837["leftarm"] function_8c8e79fe();
	level waittill("hash_e8afdf38");
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_d5c1dc47 = function_fdeedc89(1, "Undercover Leftarm");
		var_5dc5e20a function_431b00f3(var_d5c1dc47);
	}
	var_c77d2837["leftarm"] function_48f26766();
	level waittill("hash_bb437641");
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_d5c1dc47 = function_fdeedc89(1, "Undercover Armsoff");
		var_5dc5e20a function_431b00f3(var_d5c1dc47);
	}
	var_c77d2837["rightarm"] function_48f26766();
}

/*
	Name: function_886ee9f1
	Namespace: namespace_b7c5904
	Checksum: 0xC5FD4667
	Offset: 0x1410
	Size: 0x93
	Parameters: 13
	Flags: None
*/
function function_886ee9f1(var_51e6a548, var_3a212fd7, var_f9a179ed, var_bf827987, var_ba36487d, var_dfcc01fd, var_88482219, var_e8bb43ee, var_a77ad8eb, var_6eb5fc54, var_ae725cb8, var_a5cf2304, var_7419ba1f)
{
	if(self.var_3a90f16b <= var_f9a179ed)
	{
		self.var_3a90f16b = var_f9a179ed;
		var_f9a179ed = 0;
	}
	return var_f9a179ed;
}

/*
	Name: function_58c753e3
	Namespace: namespace_b7c5904
	Checksum: 0x921DB8C4
	Offset: 0x14B0
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function function_58c753e3()
{
	while(!namespace_cc27597::function_92591589("cin_pro_20_01_squished_1st_rippedapart_aftermath_pt1"))
	{
		wait(0.05);
	}
	level thread namespace_82b91a51::function_67520c6a(1, undefined, &namespace_82b91a51::function_593c2af4, 3, "black", "cinematic_fader");
	level waittill("hash_9947aa2e");
	level namespace_71e9cb84::function_74d6b22f("sndIGCsnapshot", 4);
	level thread namespace_82b91a51::function_7e61de2b(1, "black", "cinematic_fader");
}

