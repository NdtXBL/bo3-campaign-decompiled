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
function function_48700afe(objective, var_74cd64bc)
{
	namespace_4dc8633b::function_77d9dff("objective_prologue_ending_init");
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		level thread namespace_2cb3876f::function_cfabe921();
		objectives::Hide("cp_level_prologue_goto_exfil");
		objectives::complete("cp_level_prologue_defend_pod");
		objectives::set("cp_level_prologue_get_out_alive");
		level namespace_2cb3876f::function_6a5f89cb("skipto_end");
		level.var_d3659748 = vehicle::simple_spawn_single("apc");
		level.var_d3659748.animName = "apc_escape";
		level.var_2fd26037 = util::function_740f8516("hendricks");
		load::function_c32ba481();
	}
	level clientfield::set("gameplay_started", 0);
	util::screen_fade_out(0, "black", "cinematic_fader");
	Array::run_all(level.players, &util::function_16c71b8, 1);
	level thread namespace_21b2c1f2::function_2b0842cd();
	level flag::set("start_tower_collapse");
	exploder::exploder("light_exploder_igc_ending");
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
function function_a12cfbf4(str_notetrack, n_damage, str_mod)
{
	level endon("hash_398b6127");
	while(1)
	{
		level waittill(str_notetrack);
		level thread function_cddb4b1f(n_damage, str_mod);
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
function function_cddb4b1f(n_damage, str_mod)
{
	w_weapon = GetWeapon("none");
	foreach(player in level.players)
	{
		player finishPlayerDamage(level, level.var_63d6b172, n_damage, 0, str_mod, w_weapon, undefined, undefined, "ouchspot", undefined, 0, undefined, undefined);
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
	foreach(player in level.players)
	{
		player clientfield::set_to_player("player_blood_splatter", 1);
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
	foreach(player in level.activePlayers)
	{
		player.allowdeath = var_84893de8;
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
function function_cc36a86d(name, var_74cd64bc, var_e4cd2b8b, player)
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
	var_27606155 = GetEntArray("trigger_ob_defend", "targetname");
	foreach(var_a57773f5 in var_27606155)
	{
		var_a57773f5 TriggerEnable(0);
	}
	namespace_2cb3876f::function_b50f5d52();
	if(!var_74cd64bc)
	{
		if(isdefined(level.BZM_PROLOGUEDialogue7Callback))
		{
			level thread [[level.BZM_PROLOGUEDialogue7Callback]]();
		}
	}
	foreach(player in level.players)
	{
		player DisableInvulnerability();
		player.health = 100;
		player.overridePlayerDamage = &function_886ee9f1;
	}
	level thread function_a12cfbf4("leftarm", 25, "MOD_MELEE_WEAPON_BUTT");
	level thread function_a12cfbf4("rightarm", 25, "MOD_MELEE_WEAPON_BUTT");
	level thread function_a12cfbf4("rightleg", 20, "MOD_MELEE_WEAPON_BUTT");
	level thread function_a12cfbf4("robot_left_punch", 3, "MOD_MELEE_WEAPON_BUTT");
	level thread function_a12cfbf4("robot_right_punch", 3, "MOD_MELEE_WEAPON_BUTT");
	var_a8937bd3 = GetEnt("robot", "targetname", 1);
	if(isdefined(var_a8937bd3))
	{
		var_a8937bd3 delete();
	}
	scene::add_scene_func("cin_pro_20_01_rippedapart_murder", &function_48d78725, "play");
	scene::add_scene_func("cin_pro_20_01_rippedapart_murder", &function_157cae6a, "play");
	scene::add_scene_func("cin_pro_20_01_rippedapart_murder", &function_398b6127, "done");
	level thread scene::Play("cin_pro_20_01_rippedapart_murder");
	level waittill("hash_be89995b");
	if(!scene::is_skipping_in_progress())
	{
		level thread util::screen_fade_in(1.9, "black", "cinematic_fader");
	}
	if(isdefined(level.BZM_PROLOGUEDialogue8Callback))
	{
		level thread [[level.BZM_PROLOGUEDialogue8Callback]]();
	}
	level waittill("hash_87c3e0ab");
	if(!scene::is_skipping_in_progress())
	{
		level util::screen_fade_out(0.1, "black", "cinematic_fader");
		level util::screen_fade_in(0.1, "black", "cinematic_fader");
		wait(0.8);
		level util::screen_fade_out(0.1, "black", "cinematic_fader");
		level util::screen_fade_in(0.2, "black", "cinematic_fader");
		wait(0.8);
		level util::screen_fade_out(1.4, "black", "cinematic_fader");
		wait(2);
	}
	else
	{
		level thread util::player_lock_control();
	}
	level thread function_58c753e3();
	level scene::add_scene_func("cin_pro_20_01_squished_1st_rippedapart_aftermath_pt1", &function_313d2f63);
	level scene::Play("cin_pro_20_01_squished_1st_rippedapart_aftermath_pt1");
	objectives::complete("cp_level_prologue_get_out_alive");
	level dialog::say("tayr_it_s_gonna_be_okay_0");
	level thread audio::unlockFrontendMusic("mus_prologue_battle_intro");
	level.allowHitMarkers = 1;
	level notify("hash_cbaff304");
	wait(2);
	skipto::function_be8adfb8("skipto_prologue_ending");
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
function function_313d2f63(a_ents)
{
	a_ents["prometheus"] SetHighDetail(1);
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
function function_48d78725(a_ents)
{
	e_player = a_ents["player 1"];
	e_player shellshock("default", 2);
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
function function_398b6127(a_ents)
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
function function_157cae6a(a_ents)
{
	level.var_63d6b172 = a_ents["robot"];
	level.e_victim = a_ents["player 1"];
	a_ents["rightarm"] ghost();
	a_ents["leftarm"] ghost();
	level waittill("hash_e8afdf38");
	foreach(player in level.activePlayers)
	{
		var_d5c1dc47 = GetCharacterBodyStyleIndex(1, "Undercover Leftarm");
		player SetCharacterBodyStyle(var_d5c1dc47);
	}
	a_ents["leftarm"] show();
	level waittill("rightarm");
	foreach(player in level.activePlayers)
	{
		var_d5c1dc47 = GetCharacterBodyStyleIndex(1, "Undercover Armsoff");
		player SetCharacterBodyStyle(var_d5c1dc47);
	}
	a_ents["rightarm"] show();
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
function function_886ee9f1(eInflictor, eAttacker, iDamage, iDFlags, sMeansOfDeath, weapon, vPoint, vDir, sHitLoc, vDamageOrigin, modelIndex, psOffsetTime, vSurfaceNormal)
{
	if(self.health <= iDamage)
	{
		self.health = iDamage;
		iDamage = 0;
	}
	return iDamage;
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
	while(!scene::is_ready("cin_pro_20_01_squished_1st_rippedapart_aftermath_pt1"))
	{
		wait(0.05);
	}
	level thread util::delay(1, undefined, &util::screen_fade_in, 3, "black", "cinematic_fader");
	level waittill("hash_9947aa2e");
	level clientfield::set("sndIGCsnapshot", 4);
	level thread util::screen_fade_out(1, "black", "cinematic_fader");
}

