#using scripts\codescripts\struct;
#using scripts\cp\cybercom\_cybercom;
#using scripts\shared\_oob;
#using scripts\shared\archetype_shared\archetype_shared;
#using scripts\shared\array_shared;
#using scripts\shared\audio_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\duplicaterender_mgr;
#using scripts\shared\filter_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\load_shared;
#using scripts\shared\music_shared;
#using scripts\shared\postfx_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\system_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\weapons\_bouncingbetty;
#using scripts\shared\weapons\_proximity_grenade;
#using scripts\shared\weapons\_riotshield;
#using scripts\shared\weapons\_satchel_charge;
#using scripts\shared\weapons\_tacticalinsertion;
#using scripts\shared\weapons\_trophy_system;
#using scripts\shared\weapons\antipersonnelguidance;
#using scripts\shared\weapons\multilockapguidance;

#namespace namespace_293e8aad;

/*
	Name: function_2dc19561
	Namespace: namespace_293e8aad
	Checksum: 0xAF343790
	Offset: 0x1040
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("bonuszm", &function_8c87d8eb, undefined, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_293e8aad
	Checksum: 0x1932FF8
	Offset: 0x1080
	Size: 0xDB
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	function_2b1e88f3();
	function_e6a554ef();
	if(!function_27c72c1b())
	{
		return;
	}
	function_4ece4a2f();
	function_f53e79d4();
	function_6c1294b8("bg_friendlyFireMode", 0);
	level.var_a0a1ddae = 1;
	namespace_dabbe128::function_356a4ee1(&function_aebcf025);
	function_aea4686a();
	namespace_96fa87af::function_74adaefb("raps", &function_938d1a68);
}

/*
	Name: function_938d1a68
	Namespace: namespace_293e8aad
	Checksum: 0x657A316B
	Offset: 0x1168
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function function_938d1a68(var_ec74b091)
{
	self function_1bf01240("ai_zombie_zod_insanity_elemental_idle", 1);
}

/*
	Name: function_4d5aa4f3
	Namespace: namespace_293e8aad
	Checksum: 0x99EC1590
	Offset: 0x11A8
	Size: 0x3
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_4d5aa4f3()
{
}

/*
	Name: function_aebcf025
	Namespace: namespace_293e8aad
	Checksum: 0x991479E1
	Offset: 0x11B8
	Size: 0x5B
	Parameters: 1
	Flags: Private
*/
function private function_aebcf025(var_ec74b091)
{
	self function_471a18c7(0);
	function_6c1294b8("r_bloomUseLutALT", 1);
	function_8cf4b0ee(var_ec74b091);
}

/*
	Name: function_2b1e88f3
	Namespace: namespace_293e8aad
	Checksum: 0x29A414AF
	Offset: 0x1220
	Size: 0xDD
	Parameters: 0
	Flags: None
*/
function function_2b1e88f3()
{
	var_f0bd3ca = function_de7504ea("zombie_misc_model");
	if(!function_27c72c1b() || !namespace_82b91a51::function_193d7d1c())
	{
		foreach(var_3082faeb in var_f0bd3ca)
		{
			function_201670be(var_3082faeb);
		}
	}
}

/*
	Name: function_e6a554ef
	Namespace: namespace_293e8aad
	Checksum: 0x11C0A14
	Offset: 0x1308
	Size: 0xDD
	Parameters: 0
	Flags: None
*/
function function_e6a554ef()
{
	var_9302fbfc = function_244f59e6("zombie_volume_decal");
	if(!function_27c72c1b() || !namespace_82b91a51::function_193d7d1c())
	{
		foreach(var_da4e043d in var_9302fbfc)
		{
			function_733db26(var_da4e043d);
		}
	}
}

/*
	Name: function_9f75e681
	Namespace: namespace_293e8aad
	Checksum: 0xF5499CA2
	Offset: 0x13F0
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_9f75e681()
{
	var_b78f06c4 = function_6f1ebe57("mapname");
	if(var_b78f06c4 != "cp_mi_sing_sgen" || var_b78f06c4 != "cp_mi_cairo_lotus2")
	{
		namespace_4fe3eef1::function_11908f52("mus_bonuszm_underscore", (0, 0, 0));
	}
}

/*
	Name: function_4ece4a2f
	Namespace: namespace_293e8aad
	Checksum: 0xAF630F02
	Offset: 0x1460
	Size: 0x693
	Parameters: 0
	Flags: None
*/
function function_4ece4a2f()
{
	namespace_71e9cb84::function_50f16166("actor", "zombie_riser_fx", 1, 1, "int", &function_d9fa15ed, 0, 1);
	namespace_71e9cb84::function_50f16166("actor", "bonus_zombie_eye_color", 1, 3, "int", &function_2bfd38ec, 0, 1);
	namespace_71e9cb84::function_50f16166("actor", "zombie_has_eyes", 1, 1, "int", &function_a340759a, 0, 1);
	namespace_71e9cb84::function_50f16166("actor", "zombie_gut_explosion", 1, 1, "int", &function_fe38007a, 0, 1);
	namespace_71e9cb84::function_50f16166("actor", "bonuszm_zombie_on_fire_fx", 1, function_eaa48678(3), "int", &function_f83377d6, 0, 1);
	namespace_71e9cb84::function_50f16166("actor", "bonuszm_zombie_spark_fx", 1, function_eaa48678(2), "int", &function_4b335db, 0, 1);
	namespace_71e9cb84::function_50f16166("actor", "bonuszm_zombie_deimos_fx", 1, function_eaa48678(1), "int", &function_225fae17, 0, 1);
	namespace_71e9cb84::function_50f16166("vehicle", "bonuszm_meatball_death", 1, 1, "int", &function_1f4cd60d, 0, 1);
	namespace_71e9cb84::function_50f16166("actor", "zombie_riser_fx", 1, 1, "int", &function_d9fa15ed, 0, 1);
	namespace_71e9cb84::function_50f16166("actor", "bonuszm_zombie_death_fx", 1, function_eaa48678(5), "int", &function_e4d833e, 0, 1);
	namespace_71e9cb84::function_50f16166("actor", "zombie_appear_vanish_fx", 1, function_eaa48678(3), "int", &function_7fc0e06, 0, 1);
	namespace_71e9cb84::function_50f16166("scriptmover", "powerup_on_fx", 1, function_eaa48678(3), "int", &function_2ab2bfb0, 0, 0);
	namespace_71e9cb84::function_50f16166("scriptmover", "powerup_grabbed_fx", 1, 1, "int", &function_50779600, 0, 0);
	namespace_71e9cb84::function_50f16166("scriptmover", "weapon_disappear_fx", 1, 1, "int", &function_42f6f16e, 0, 0);
	namespace_71e9cb84::function_50f16166("scriptmover", "sparky_trail_fx", 1, 1, "int", &function_ab68bae5, 0, 0);
	namespace_71e9cb84::function_50f16166("scriptmover", "sparky_attack_fx", 1, 1, "counter", &function_14312cfd, 0, 0);
	namespace_71e9cb84::function_50f16166("actor", "sparky_damaged_fx", 1, 1, "counter", &function_97590d4, 0, 0);
	namespace_71e9cb84::function_50f16166("actor", "fire_damaged_fx", 1, 1, "counter", &function_780c0a4, 0, 0);
	namespace_71e9cb84::function_50f16166("zbarrier", "magicbox_open_glow", 1, 1, "int", &function_f900ae76, 0, 0);
	namespace_71e9cb84::function_50f16166("zbarrier", "magicbox_closed_glow", 1, 1, "int", &function_5eb1f58e, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "bonuszm_player_instakill_active_fx", 1, 1, "int", &function_bba3723b, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "cpzm_song_suppression", 1, 1, "int", &function_2122d6fd, 0, 0);
}

/*
	Name: function_f53e79d4
	Namespace: namespace_293e8aad
	Checksum: 0xE875C8B8
	Offset: 0x1B00
	Size: 0x32D
	Parameters: 0
	Flags: None
*/
function function_f53e79d4()
{
	level.var_c1aa5253["eye_glow_o"] = "zombie/fx_glow_eye_orange";
	level.var_c1aa5253["eye_glow_b"] = "zombie/fx_glow_eye_blue";
	level.var_c1aa5253["eye_glow_g"] = "zombie/fx_glow_eye_green";
	level.var_c1aa5253["eye_glow_r"] = "zombie/fx_glow_eye_red";
	level.var_c1aa5253["rise_burst"] = "zombie/fx_spawn_dirt_hand_burst_zmb";
	level.var_c1aa5253["rise_billow"] = "zombie/fx_spawn_dirt_body_billowing_zmb";
	level.var_c1aa5253["rise_dust"] = "zombie/fx_spawn_dirt_body_dustfalling_zmb";
	level.var_c1aa5253["powerup_on"] = "zombie/fx_powerup_on_solo_zmb";
	level.var_c1aa5253["powerup_on_upgraded"] = "zombie/fx_powerup_on_green_zmb";
	level.var_c1aa5253["powerup_on_upgraded_all"] = "zombie/fx_powerup_on_caution_zmb";
	level.var_c1aa5253["chest_light"] = "zombie/fx_weapon_box_open_glow_zmb";
	level.var_c1aa5253["chest_light_closed"] = "zombie/fx_weapon_box_closed_glow_zmb";
	level.var_c1aa5253["zombie_spawn"] = "zombie/fx_spawn_body_cp_zmb";
	level.var_c1aa5253["zombie_sparky"] = "electric/fx_ability_elec_surge_short_robot";
	level.var_c1aa5253["zombie_sparky_death"] = "explosions/fx_ability_exp_ravage_core";
	level.var_c1aa5253["zombie_sparky_trail"] = "electric/fx_ability_elec_strike_trail";
	level.var_c1aa5253["zombie_sparky_impact"] = "electric/fx_ability_elec_strike_impact";
	level.var_c1aa5253["zombie_sparky_attack_death"] = "electric/fx_ability_elec_strike_short_human";
	level.var_c1aa5253["zombie_sparky_left_hand"] = "weapon/fx_hero_lightning_gun_death_hands_lft";
	level.var_c1aa5253["zombie_sparky_right_hand"] = "weapon/fx_hero_lightning_gun_death_hands";
	level.var_c1aa5253["zombie_fire_damage"] = "fire/fx_embers_burst";
	level.var_c1aa5253["zombie_on_fire_suicide"] = "explosions/fx_exp_dest_barrel_concussion_sm";
	level.var_c1aa5253["zombie_fire_light"] = "light/fx_light_fire_chest_zombie";
	level.var_c1aa5253["zombie_spark_light"] = "light/fx_light_spark_chest_zombie";
	level.var_c1aa5253["electric_spark"] = "electric/fx_elec_sparks_burst_blue";
	level.var_c1aa5253["deimos_zombie"] = "player/fx_ai_corvus_torso_loop";
	level.var_c1aa5253["deimos_zombie_le"] = "player/fx_ai_raven_teleport_out_arm_le";
	level.var_c1aa5253["deimos_zombie_ri"] = "player/fx_ai_raven_teleport_out_arm_ri";
	level.var_c1aa5253["deimos_zombie_death"] = "player/fx_ai_raven_dissolve_torso";
}

/*
	Name: function_d9fa15ed
	Namespace: namespace_293e8aad
	Checksum: 0x2CB9B567
	Offset: 0x1E38
	Size: 0x173
	Parameters: 7
	Flags: None
*/
function function_d9fa15ed(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	level endon("hash_cead83db");
	self endon("hash_d5da096");
	if(var_9193c732)
	{
		var_93b50d82 = "zmb_zombie_spawn";
		var_3b8d5686 = level.var_c1aa5253["rise_burst"];
		var_a1e88d89 = level.var_c1aa5253["rise_billow"];
		var_fe311e35 = "dirt";
		if(isdefined(level.var_3347d5f7) && level.var_3347d5f7 == "snow")
		{
			var_93b50d82 = "zmb_zombie_spawn";
			var_3b8d5686 = level.var_c1aa5253["rise_burst_snow"];
			var_a1e88d89 = level.var_c1aa5253["rise_billow_snow"];
			var_fe311e35 = "snow";
		}
		function_921a1574(0, var_93b50d82, self.var_722885f3);
		self thread function_4d70c126(var_ec74b091, var_fe311e35, var_a1e88d89, var_3b8d5686);
	}
}

/*
	Name: function_4d70c126
	Namespace: namespace_293e8aad
	Checksum: 0x6B4C622D
	Offset: 0x1FB8
	Size: 0x29D
	Parameters: 4
	Flags: None
*/
function function_4d70c126(var_ec74b091, var_fe311e35, var_a1e88d89, var_3b8d5686)
{
	var_2c360a4c = "J_SpineUpper";
	self endon("hash_d5da096");
	level endon("hash_cead83db");
	if(isdefined(var_3b8d5686))
	{
		var_5753664b = function_fd4ba5e1(var_ec74b091, var_3b8d5686, self.var_722885f3 + (0, 0, function_dc99997a(5, 10)));
		function_6af43dcb(var_ec74b091, var_5753664b, 1);
	}
	wait(0.25);
	if(isdefined(var_a1e88d89))
	{
		var_5753664b = function_fd4ba5e1(var_ec74b091, var_a1e88d89, self.var_722885f3 + (function_dc99997a(-10, 10), function_dc99997a(-10, 10), function_dc99997a(5, 10)));
		function_6af43dcb(var_ec74b091, var_5753664b, 1);
	}
	wait(2);
	var_2a0876f7 = 5.5;
	var_a5407687 = 0.3;
	var_5dc5e20a = level.var_ec485aa4[var_ec74b091];
	var_5f813dde = level.var_c1aa5253["rise_dust"];
	if(var_fe311e35 == "snow")
	{
		var_5f813dde = level.var_c1aa5253["rise_dust_snow"];
	}
	else if(var_fe311e35 == "none")
	{
		return;
	}
	self namespace_82b91a51::function_2e224d69(var_ec74b091);
	for(var_e78c0153 = 0; var_e78c0153 < var_2a0876f7;  = 0)
	{
		var_5753664b = function_da6acfd2(var_ec74b091, var_5f813dde, self, var_2c360a4c);
		function_6af43dcb(var_ec74b091, var_5753664b, 1);
		wait(var_a5407687);
	}
}

/*
	Name: function_2bfd38ec
	Namespace: namespace_293e8aad
	Checksum: 0xD7DB59F0
	Offset: 0x2260
	Size: 0x53
	Parameters: 7
	Flags: None
*/
function function_2bfd38ec(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(!isdefined(var_9193c732))
	{
		return;
	}
	self.var_463f6b7e = var_9193c732;
}

/*
	Name: function_a340759a
	Namespace: namespace_293e8aad
	Checksum: 0x59D70D3
	Offset: 0x22C0
	Size: 0x17B
	Parameters: 7
	Flags: None
*/
function function_a340759a(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(!isdefined(var_9193c732))
	{
		return;
	}
	self endon("hash_d5da096");
	self namespace_82b91a51::function_2e224d69(var_ec74b091);
	if(!isdefined(self))
	{
		return;
	}
	if(var_9193c732)
	{
		self function_255c0b26(var_ec74b091);
		self function_e7f6dc4e(var_ec74b091, 0, "scriptVector2", 0, function_d2a9f995(), self function_6b4bd44e());
	}
	else
	{
		self function_232ddafc(var_ec74b091);
		self function_e7f6dc4e(var_ec74b091, 0, "scriptVector2", 0, function_28ded1d3(), self function_6b4bd44e());
	}
	if(isdefined(level.var_3ae99156))
	{
		self [[level.var_3ae99156]](var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3);
	}
}

/*
	Name: function_255c0b26
	Namespace: namespace_293e8aad
	Checksum: 0x67DDEB08
	Offset: 0x2448
	Size: 0x1A9
	Parameters: 1
	Flags: None
*/
function function_255c0b26(var_ec74b091)
{
	self endon("hash_d5da096");
	self namespace_82b91a51::function_2e224d69(var_ec74b091);
	if(!isdefined(self.var_bf10a952))
	{
		self.var_bf10a952 = [];
	}
	if(!isdefined(self.var_bf10a952[var_ec74b091]))
	{
		var_462a7173 = "j_eyeball_le";
		if(!isdefined(self.var_463f6b7e))
		{
			return;
		}
		if(self.var_463f6b7e == 0)
		{
			var_5f813dde = level.var_c1aa5253["eye_glow_o"];
		}
		else if(self.var_463f6b7e == 1)
		{
			var_5f813dde = level.var_c1aa5253["eye_glow_b"];
		}
		else if(self.var_463f6b7e == 2)
		{
			var_5f813dde = level.var_c1aa5253["eye_glow_g"];
		}
		else if(self.var_463f6b7e == 3)
		{
			var_5f813dde = level.var_c1aa5253["eye_glow_r"];
		}
		else
		{
			return;
		}
		if(isdefined(level.var_caf242c3))
		{
			var_5f813dde = level.var_caf242c3;
		}
		if(isdefined(self.var_8cb6d100))
		{
			var_5f813dde = self.var_8cb6d100;
		}
		if(isdefined(self.var_c7df3eb0))
		{
			var_462a7173 = self.var_c7df3eb0;
		}
		self.var_bf10a952[var_ec74b091] = function_da6acfd2(var_ec74b091, var_5f813dde, self, var_462a7173);
	}
}

/*
	Name: function_d2a9f995
	Namespace: namespace_293e8aad
	Checksum: 0x4E4FA3BB
	Offset: 0x2600
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_d2a9f995()
{
	if(isdefined(level.var_8357ee79))
	{
		return level.var_8357ee79;
	}
	return 1;
}

/*
	Name: function_28ded1d3
	Namespace: namespace_293e8aad
	Checksum: 0x4F1D99F2
	Offset: 0x2628
	Size: 0x19
	Parameters: 0
	Flags: None
*/
function function_28ded1d3()
{
	if(isdefined(level.var_9a7fd725))
	{
		return level.var_9a7fd725;
	}
	return 0;
}

/*
	Name: function_6b4bd44e
	Namespace: namespace_293e8aad
	Checksum: 0xEEE6B837
	Offset: 0x2650
	Size: 0x47
	Parameters: 0
	Flags: None
*/
function function_6b4bd44e()
{
	var_35c84e32 = 0;
	if(isdefined(level.var_5b676411))
	{
		var_35c84e32 = level.var_5b676411;
	}
	if(isdefined(self.var_5b676411))
	{
		var_35c84e32 = self.var_5b676411;
	}
	return var_35c84e32;
}

/*
	Name: function_232ddafc
	Namespace: namespace_293e8aad
	Checksum: 0xCB39911E
	Offset: 0x26A0
	Size: 0x5F
	Parameters: 1
	Flags: None
*/
function function_232ddafc(var_ec74b091)
{
	if(isdefined(self.var_bf10a952))
	{
		if(isdefined(self.var_bf10a952[var_ec74b091]))
		{
			function_28573e36(var_ec74b091, self.var_bf10a952[var_ec74b091], 1);
			self.var_bf10a952[var_ec74b091] = undefined;
		}
	}
}

/*
	Name: function_2ab2bfb0
	Namespace: namespace_293e8aad
	Checksum: 0x1718EB21
	Offset: 0x2708
	Size: 0x2CB
	Parameters: 7
	Flags: None
*/
function function_2ab2bfb0(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(!isdefined(var_9193c732))
	{
		return;
	}
	self endon("hash_d5da096");
	self namespace_82b91a51::function_2e224d69(var_ec74b091);
	if(!isdefined(self))
	{
		return;
	}
	if(var_9193c732)
	{
		if(var_9193c732 == 3)
		{
			self.var_d9ae415 = function_da6acfd2(var_ec74b091, level.var_c1aa5253["powerup_on_upgraded_all"], self, "tag_origin");
		}
		else if(var_9193c732 == 2)
		{
			self.var_d9ae415 = function_da6acfd2(var_ec74b091, level.var_c1aa5253["powerup_on_upgraded"], self, "tag_origin");
		}
		else
		{
			self.var_d9ae415 = function_da6acfd2(var_ec74b091, level.var_c1aa5253["powerup_on"], self, "tag_origin");
		}
		function_6af43dcb(var_ec74b091, self.var_d9ae415, 1);
		if(self.var_6df9264 === "p7_zm_teddybear_sitting")
		{
		}
		else
		{
			function_921a1574(var_ec74b091, "zmb_spawn_powerup", self.var_722885f3);
			self function_c2931a36("zmb_spawn_powerup_loop", 0.5);
		}
	}
	else if(isdefined(self.var_d9ae415))
	{
		self function_4a1ecb6c();
		function_28573e36(var_ec74b091, self.var_d9ae415, 1);
		self.var_d9ae415 = undefined;
		var_5753664b = function_da6acfd2(var_ec74b091, level.var_c1aa5253["electric_spark"], self, "tag_origin");
		function_6af43dcb(var_ec74b091, var_5753664b, 1);
		function_921a1574(var_ec74b091, "zmb_box_timeout_poof", self.var_722885f3);
		function_5e09918e(var_ec74b091, "damage_light", self.var_722885f3);
	}
}

/*
	Name: function_50779600
	Namespace: namespace_293e8aad
	Checksum: 0x501DD6E2
	Offset: 0x29E0
	Size: 0x73
	Parameters: 7
	Flags: None
*/
function function_50779600(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(!isdefined(var_9193c732))
	{
		return;
	}
	if(var_9193c732)
	{
		function_921a1574(var_ec74b091, "zmb_powerup_grabbed", self.var_722885f3);
	}
}

/*
	Name: function_f83377d6
	Namespace: namespace_293e8aad
	Checksum: 0x3F7BABF3
	Offset: 0x2A60
	Size: 0x18B
	Parameters: 7
	Flags: None
*/
function function_f83377d6(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(!isdefined(var_9193c732))
	{
		return;
	}
	self endon("hash_d5da096");
	self namespace_82b91a51::function_2e224d69(var_ec74b091);
	if(!isdefined(self))
	{
		return;
	}
	if(var_9193c732 == 1 || var_9193c732 == 2)
	{
		if(!isdefined(self.var_6044d98e))
		{
			self.var_6044d98e = self function_c2931a36("zmb_fire_burn_loop", 0.2);
		}
		if(var_9193c732 == 2)
		{
			var_5753664b = function_da6acfd2(var_ec74b091, level.var_c1aa5253["zombie_fire_light"], self, "J_SpineUpper");
			function_6af43dcb(var_ec74b091, var_5753664b, 1);
			self function_d8c8d819(var_ec74b091, "fire");
		}
	}
	else if(var_9193c732 == 3)
	{
		function_921a1574(var_ec74b091, "zmb_fire_charge_up", self.var_722885f3);
	}
}

/*
	Name: function_780c0a4
	Namespace: namespace_293e8aad
	Checksum: 0x3C26067E
	Offset: 0x2BF8
	Size: 0x143
	Parameters: 7
	Flags: None
*/
function function_780c0a4(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	self endon("hash_d5da096");
	self namespace_82b91a51::function_2e224d69(var_ec74b091);
	if(!isdefined(self))
	{
		return;
	}
	if(var_9193c732)
	{
		if(isdefined(level.var_c1aa5253["zombie_fire_damage"]))
		{
			function_921a1574(var_ec74b091, "gdt_electro_bounce", self.var_722885f3);
			var_7029a1a0 = function_84970cc4("j_wrist_le", "j_wrist_ri");
			var_5753664b = function_da6acfd2(var_ec74b091, level.var_c1aa5253["zombie_fire_damage"], self, namespace_84970cc4::function_47d18840(var_7029a1a0));
			function_6af43dcb(var_ec74b091, var_5753664b, 1);
		}
	}
}

/*
	Name: function_4b335db
	Namespace: namespace_293e8aad
	Checksum: 0xB85B9C29
	Offset: 0x2D48
	Size: 0x193
	Parameters: 7
	Flags: None
*/
function function_4b335db(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(!isdefined(var_9193c732))
	{
		return;
	}
	self endon("hash_d5da096");
	self namespace_82b91a51::function_2e224d69(var_ec74b091);
	if(!isdefined(self))
	{
		return;
	}
	if(var_9193c732 >= 1)
	{
		if(!isdefined(self.var_6044d98e))
		{
			self.var_6044d98e = self function_c2931a36("zmb_electrozomb_lp", 0.2);
		}
		var_5753664b = function_da6acfd2(var_ec74b091, level.var_c1aa5253["zombie_sparky"], self, "J_SpineUpper");
		function_6af43dcb(var_ec74b091, var_5753664b, 1);
		if(var_9193c732 == 2)
		{
			var_5753664b = function_da6acfd2(var_ec74b091, level.var_c1aa5253["zombie_spark_light"], self, "J_SpineUpper");
			function_6af43dcb(var_ec74b091, var_5753664b, 1);
			self function_d8c8d819(var_ec74b091, "sparky");
		}
	}
}

/*
	Name: function_225fae17
	Namespace: namespace_293e8aad
	Checksum: 0x909A4F98
	Offset: 0x2EE8
	Size: 0x1B3
	Parameters: 7
	Flags: None
*/
function function_225fae17(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(!isdefined(var_9193c732))
	{
		return;
	}
	self endon("hash_d5da096");
	self namespace_82b91a51::function_2e224d69(var_ec74b091);
	if(!isdefined(self))
	{
		return;
	}
	if(var_9193c732)
	{
		if(!isdefined(self.var_6044d98e))
		{
			self.var_6044d98e = self function_c2931a36("zmb_deimoszomb_lp", 0.2);
		}
		var_5753664b = function_da6acfd2(var_ec74b091, level.var_c1aa5253["deimos_zombie"], self, "J_SpineUpper");
		function_6af43dcb(var_ec74b091, var_5753664b, 1);
		var_5753664b = function_da6acfd2(var_ec74b091, level.var_c1aa5253["deimos_zombie_le"], self, "j_wrist_le");
		function_6af43dcb(var_ec74b091, var_5753664b, 1);
		var_5753664b = function_da6acfd2(var_ec74b091, level.var_c1aa5253["deimos_zombie_ri"], self, "j_wrist_ri");
		function_6af43dcb(var_ec74b091, var_5753664b, 1);
	}
}

/*
	Name: function_1f4cd60d
	Namespace: namespace_293e8aad
	Checksum: 0xBAC70891
	Offset: 0x30A8
	Size: 0x103
	Parameters: 7
	Flags: None
*/
function function_1f4cd60d(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(!isdefined(var_9193c732))
	{
		return;
	}
	self endon("hash_d5da096");
	self namespace_82b91a51::function_2e224d69(var_ec74b091);
	if(!isdefined(self))
	{
		return;
	}
	if(var_9193c732 == 1)
	{
		var_5753664b = function_da6acfd2(var_ec74b091, level.var_c1aa5253["zombie_on_fire_suicide"], self, "tag_origin");
		function_6af43dcb(var_ec74b091, var_5753664b, 1);
		function_921a1574(var_ec74b091, "zmb_fire_explode", self.var_722885f3);
	}
}

/*
	Name: function_bba3723b
	Namespace: namespace_293e8aad
	Checksum: 0x79D741A7
	Offset: 0x31B8
	Size: 0xF3
	Parameters: 7
	Flags: None
*/
function function_bba3723b(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		self.var_dedf9511 = self function_c2931a36("zmb_insta_kill_loop", 2);
		self thread function_69f683e7(var_ec74b091, 1);
	}
	else
	{
		self notify("hash_eb366021");
		function_921a1574(var_ec74b091, "zmb_insta_kill_loop_off", (0, 0, 0));
		self function_eaa69754(self.var_dedf9511);
		self thread function_69f683e7(var_ec74b091, 0);
	}
}

/*
	Name: function_4778b020
	Namespace: namespace_293e8aad
	Checksum: 0xC192107B
	Offset: 0x32B8
	Size: 0x95
	Parameters: 2
	Flags: None
*/
function function_4778b020(var_3bcff006, var_34221f8c)
{
	var_d900369a = (function_72a94f05(var_3bcff006[0], var_34221f8c[0]), function_72a94f05(var_3bcff006[1], var_34221f8c[1]), function_72a94f05(var_3bcff006[2], var_34221f8c[2]));
	return var_d900369a;
}

/*
	Name: function_4b2bbece
	Namespace: namespace_293e8aad
	Checksum: 0xB72A031B
	Offset: 0x3358
	Size: 0xA9
	Parameters: 3
	Flags: None
*/
function function_4b2bbece(var_3ae5c24, var_1bfa7cb7, var_5d8548f5)
{
	var_8df9803f = 1 - var_5d8548f5;
	var_d900369a = (var_8df9803f * var_3ae5c24[0] + var_5d8548f5 * var_1bfa7cb7[0], var_8df9803f * var_3ae5c24[1] + var_5d8548f5 * var_1bfa7cb7[1], var_8df9803f * var_3ae5c24[2] + var_5d8548f5 * var_1bfa7cb7[2]);
	return var_d900369a;
}

/*
	Name: function_69f683e7
	Namespace: namespace_293e8aad
	Checksum: 0x3880A36A
	Offset: 0x3410
	Size: 0x1AD
	Parameters: 2
	Flags: None
*/
function function_69f683e7(var_ec74b091, var_7eb013a5)
{
	self notify("hash_bc7b7772");
	self endon("hash_bc7b7772");
	if(!var_7eb013a5)
	{
		self function_c7016241(var_ec74b091);
		return;
	}
	var_781fc232 = (63, 103, 4) / 255;
	var_27745be8 = (105, 148, 24) / 255;
	var_d7805253 = 2;
	var_ec055171 = 0.25;
	var_c051243b = var_d7805253;
	var_6cebf6c0 = function_4778b020(var_781fc232, var_27745be8);
	var_9cc30125 = var_6cebf6c0;
	while(isdefined(self))
	{
		if(var_c051243b >= var_d7805253)
		{
			var_6cebf6c0 = var_9cc30125;
			var_9cc30125 = function_4778b020(var_781fc232, var_27745be8);
			var_c051243b = 0;
		}
		var_d900369a = function_4b2bbece(var_6cebf6c0, var_9cc30125, var_c051243b / var_d7805253);
		self function_c7016241(var_ec74b091, var_d900369a);
		var_c051243b = var_c051243b + var_ec055171;
		wait(var_ec055171);
	}
}

/*
	Name: function_d8c8d819
	Namespace: namespace_293e8aad
	Checksum: 0x7EF3272B
	Offset: 0x35C8
	Size: 0x1F3
	Parameters: 2
	Flags: None
*/
function function_d8c8d819(var_ec74b091, var_d6ae4487)
{
	self endon("hash_d5da096");
	self.var_13f5905e = 1;
	self namespace_1c38f9cf::function_1e56fc11("armor_on", 1);
	self namespace_1c38f9cf::function_2c582173(var_ec74b091);
	var_aa5d763a = "scriptVector3";
	var_fc81e73c = 0.1;
	var_f37ae0c5 = 0.56;
	var_197d5b2e = 0.92;
	var_776218ab = 1;
	var_93429fd9 = 0.2;
	if(var_d6ae4487 == "sparky")
	{
		var_754d7044 = 0.15;
		var_e754df7f = 0.5;
		var_595c4eba = 0.4;
		var_93429fd9 = 0.2;
	}
	if(var_d6ae4487 == "fire")
	{
		var_754d7044 = 0.6;
		var_e754df7f = 0.45;
		var_595c4eba = 0;
		var_93429fd9 = 0.2;
	}
	var_6c5c3132 = "scriptVector4";
	self function_e7f6dc4e(var_ec74b091, 0, var_aa5d763a, var_fc81e73c, var_754d7044, var_e754df7f, var_595c4eba);
	self function_e7f6dc4e(var_ec74b091, 0, var_6c5c3132, var_93429fd9, 0, 0, 0);
	self function_cae0c618(10);
}

/*
	Name: function_e4d833e
	Namespace: namespace_293e8aad
	Checksum: 0xB848D41
	Offset: 0x37C8
	Size: 0x4C3
	Parameters: 7
	Flags: None
*/
function function_e4d833e(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(!isdefined(var_9193c732))
	{
		return;
	}
	self endon("hash_d5da096");
	self namespace_82b91a51::function_2e224d69(var_ec74b091);
	if(!isdefined(self))
	{
		return;
	}
	if(var_9193c732 == 5)
	{
		if(function_6f1ebe57("mapname") != "cp_mi_zurich_coalescence")
		{
			self function_4a1ecb6c(1);
			var_5753664b = function_fd4ba5e1(var_ec74b091, level.var_c1aa5253["deimos_zombie_death"], self.var_722885f3 + VectorScale((0, 0, 1), 35));
			function_6af43dcb(var_ec74b091, var_5753664b, 1);
			var_5753664b = function_fd4ba5e1(var_ec74b091, level.var_c1aa5253["zombie_sparky_death"], self.var_722885f3 + VectorScale((0, 0, 1), 35));
			function_6af43dcb(var_ec74b091, var_5753664b, 1);
			function_921a1574(var_ec74b091, "zmb_deimoszomb_explo", self.var_722885f3);
			function_5e09918e(var_ec74b091, "damage_light", self.var_722885f3);
		}
	}
	if(var_9193c732 == 4)
	{
		self function_4a1ecb6c(1);
		var_5753664b = function_fd4ba5e1(var_ec74b091, level.var_c1aa5253["zombie_sparky_attack_death"], self.var_722885f3 + VectorScale((0, 0, 1), 35));
		function_6af43dcb(var_ec74b091, var_5753664b, 1);
		function_921a1574(var_ec74b091, "zmb_electrozomb_explo_small", self.var_722885f3);
		function_5e09918e(var_ec74b091, "damage_light", self.var_722885f3);
	}
	if(var_9193c732 == 3)
	{
		self function_4a1ecb6c(1);
		var_5753664b = function_fd4ba5e1(var_ec74b091, level.var_c1aa5253["zombie_sparky_death"], self.var_722885f3 + VectorScale((0, 0, 1), 35));
		function_6af43dcb(var_ec74b091, var_5753664b, 1);
		function_921a1574(var_ec74b091, "zmb_electrozomb_explo_large", self.var_722885f3);
		function_5e09918e(var_ec74b091, "damage_light", self.var_722885f3);
	}
	if(var_9193c732 == 2)
	{
		self function_4a1ecb6c(1);
		var_5753664b = function_fd4ba5e1(var_ec74b091, level.var_c1aa5253["zombie_on_fire_suicide"], self.var_722885f3 + VectorScale((0, 0, 1), 35));
		function_6af43dcb(var_ec74b091, var_5753664b, 1);
		function_921a1574(var_ec74b091, "zmb_fire_explode", self.var_722885f3);
		function_5e09918e(var_ec74b091, "damage_light", self.var_722885f3);
	}
	if(var_9193c732 > 0)
	{
		var_1e5277ea = namespace_82b91a51::function_b9fd52a4(var_ec74b091, "tag_origin", self.var_722885f3, self.var_6ab6f4fd);
		var_1e5277ea thread function_10dcbf51(var_ec74b091, var_1e5277ea);
	}
}

/*
	Name: function_10dcbf51
	Namespace: namespace_293e8aad
	Checksum: 0xFE64B1BD
	Offset: 0x3C98
	Size: 0x53
	Parameters: 2
	Flags: Private
*/
function private function_10dcbf51(var_ec74b091, var_1e5277ea)
{
	var_1e5277ea function_921a1574(var_ec74b091, "evt_ai_insta_explode");
	wait(1);
	var_1e5277ea function_dc8c8404();
}

/*
	Name: function_fe38007a
	Namespace: namespace_293e8aad
	Checksum: 0x817D02BD
	Offset: 0x3CF8
	Size: 0x10B
	Parameters: 7
	Flags: None
*/
function function_fe38007a(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	self endon("hash_d5da096");
	self namespace_82b91a51::function_2e224d69(var_ec74b091);
	if(!isdefined(self))
	{
		return;
	}
	if(var_9193c732)
	{
		if(isdefined(level.var_c1aa5253["zombie_guts_explosion"]))
		{
			var_22ae8d39 = self function_d48f2ab3("J_SpineLower");
			if(isdefined(var_22ae8d39))
			{
				var_5753664b = function_fd4ba5e1(var_ec74b091, level.var_c1aa5253["zombie_guts_explosion"], var_22ae8d39);
				function_6af43dcb(var_ec74b091, var_5753664b, 1);
			}
		}
	}
}

/*
	Name: function_ab68bae5
	Namespace: namespace_293e8aad
	Checksum: 0x34DD33E1
	Offset: 0x3E10
	Size: 0x103
	Parameters: 7
	Flags: None
*/
function function_ab68bae5(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	self endon("hash_d5da096");
	self namespace_82b91a51::function_2e224d69(var_ec74b091);
	if(!isdefined(self))
	{
		return;
	}
	if(var_9193c732)
	{
		if(isdefined(level.var_c1aa5253["zombie_sparky_trail"]))
		{
			self function_c2931a36("zmb_fire_burn_loop", 0.1);
			var_5753664b = function_da6acfd2(var_ec74b091, level.var_c1aa5253["zombie_sparky_trail"], self, "tag_origin");
			function_6af43dcb(var_ec74b091, var_5753664b, 1);
		}
	}
}

/*
	Name: function_14312cfd
	Namespace: namespace_293e8aad
	Checksum: 0xBB5791E8
	Offset: 0x3F20
	Size: 0xDB
	Parameters: 7
	Flags: None
*/
function function_14312cfd(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	self endon("hash_d5da096");
	self namespace_82b91a51::function_2e224d69(var_ec74b091);
	if(!isdefined(self))
	{
		return;
	}
	if(var_9193c732)
	{
		if(isdefined(level.var_c1aa5253["zombie_sparky_impact"]))
		{
			var_5753664b = function_fd4ba5e1(var_ec74b091, level.var_c1aa5253["zombie_sparky_impact"], self.var_722885f3);
			function_6af43dcb(var_ec74b091, var_5753664b, 1);
		}
	}
}

/*
	Name: function_97590d4
	Namespace: namespace_293e8aad
	Checksum: 0x6D6773BC
	Offset: 0x4008
	Size: 0x153
	Parameters: 7
	Flags: None
*/
function function_97590d4(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	self endon("hash_d5da096");
	self namespace_82b91a51::function_2e224d69(var_ec74b091);
	if(!isdefined(self))
	{
		return;
	}
	if(var_9193c732)
	{
		if(isdefined(level.var_c1aa5253["zombie_sparky_left_hand"]))
		{
			function_921a1574(var_ec74b091, "gdt_electro_bounce", self.var_722885f3);
			var_5753664b = function_da6acfd2(var_ec74b091, level.var_c1aa5253["zombie_sparky_left_hand"], self, "j_wrist_le");
			function_6af43dcb(var_ec74b091, var_5753664b, 1);
			var_5753664b = function_da6acfd2(var_ec74b091, level.var_c1aa5253["zombie_sparky_right_hand"], self, "j_wrist_ri");
			function_6af43dcb(var_ec74b091, var_5753664b, 1);
		}
	}
}

/*
	Name: function_42f6f16e
	Namespace: namespace_293e8aad
	Checksum: 0x5806B800
	Offset: 0x4168
	Size: 0x103
	Parameters: 7
	Flags: None
*/
function function_42f6f16e(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	self endon("hash_d5da096");
	self namespace_82b91a51::function_2e224d69(var_ec74b091);
	if(!isdefined(self))
	{
		return;
	}
	if(var_9193c732)
	{
		if(isdefined(level.var_c1aa5253["zombie_spawn"]))
		{
			function_921a1574(var_ec74b091, "zmb_box_timeout_poof", self.var_722885f3);
			var_5753664b = function_fd4ba5e1(var_ec74b091, level.var_c1aa5253["electric_spark"], self.var_722885f3);
			function_6af43dcb(var_ec74b091, var_5753664b, 1);
		}
	}
}

/*
	Name: function_f900ae76
	Namespace: namespace_293e8aad
	Checksum: 0x28AF7915
	Offset: 0x4278
	Size: 0x1DB
	Parameters: 7
	Flags: None
*/
function function_f900ae76(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(!isdefined(self.var_3b8fa4f3))
	{
		self.var_3b8fa4f3 = [];
	}
	if(var_9193c732 && !isdefined(self.var_3b8fa4f3[var_ec74b091]))
	{
		var_23b1aacd = function_9b7fda5e(var_ec74b091, self.var_722885f3, "script_model");
		var_23b1aacd function_e48f905e("tag_origin");
		var_23b1aacd.var_6ab6f4fd = self.var_6ab6f4fd;
		var_5753664b = function_da6acfd2(var_ec74b091, level.var_c1aa5253["chest_light"], var_23b1aacd, "tag_origin");
		function_6af43dcb(var_ec74b091, var_5753664b, 1);
		function_921a1574(var_ec74b091, "zmb_lid_open", self.var_722885f3);
		function_921a1574(var_ec74b091, "zmb_music_box", self.var_722885f3);
		self.var_3b8fa4f3[var_ec74b091] = var_23b1aacd;
		self function_35040b8b(var_ec74b091);
	}
	else if(!var_9193c732 && isdefined(self.var_3b8fa4f3[var_ec74b091]))
	{
		self function_885d1f20(var_ec74b091);
	}
}

/*
	Name: function_35040b8b
	Namespace: namespace_293e8aad
	Checksum: 0xBAE9B0E7
	Offset: 0x4460
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_35040b8b(var_ec74b091)
{
	self endon("hash_a156b054");
	level waittill("hash_cead83db");
	self function_885d1f20(var_ec74b091);
}

/*
	Name: function_885d1f20
	Namespace: namespace_293e8aad
	Checksum: 0x14A01640
	Offset: 0x44A8
	Size: 0x45
	Parameters: 1
	Flags: None
*/
function function_885d1f20(var_ec74b091)
{
	self.var_3b8fa4f3[var_ec74b091] function_dc8c8404();
	self.var_3b8fa4f3[var_ec74b091] = undefined;
	self notify("hash_a156b054");
}

/*
	Name: function_5eb1f58e
	Namespace: namespace_293e8aad
	Checksum: 0x13912F4B
	Offset: 0x44F8
	Size: 0x1E3
	Parameters: 7
	Flags: None
*/
function function_5eb1f58e(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	self endon("hash_d5da096");
	self namespace_82b91a51::function_2e224d69(var_ec74b091);
	if(!isdefined(self))
	{
		return;
	}
	if(!isdefined(self.var_1dfe04a3))
	{
		self.var_1dfe04a3 = [];
	}
	if(var_9193c732 && !isdefined(self.var_1dfe04a3[var_ec74b091]))
	{
		var_23b1aacd = function_9b7fda5e(var_ec74b091, self.var_722885f3, "script_model");
		var_23b1aacd function_e48f905e("tag_origin");
		var_23b1aacd.var_6ab6f4fd = self.var_6ab6f4fd;
		var_5753664b = function_da6acfd2(var_ec74b091, level.var_c1aa5253["chest_light_closed"], var_23b1aacd, "tag_origin");
		function_6af43dcb(var_ec74b091, var_5753664b, 1);
		function_921a1574(var_ec74b091, "zmb_lid_close", self.var_722885f3);
		self.var_1dfe04a3[var_ec74b091] = var_23b1aacd;
		self function_dc77ba5b(var_ec74b091);
	}
	else if(!var_9193c732 && isdefined(self.var_1dfe04a3[var_ec74b091]))
	{
		self function_b4a832f0(var_ec74b091);
	}
}

/*
	Name: function_dc77ba5b
	Namespace: namespace_293e8aad
	Checksum: 0xAC813D0C
	Offset: 0x46E8
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_dc77ba5b(var_ec74b091)
{
	self endon("hash_a156b054");
	level waittill("hash_cead83db");
	self function_b4a832f0(var_ec74b091);
}

/*
	Name: function_b4a832f0
	Namespace: namespace_293e8aad
	Checksum: 0x50AD788A
	Offset: 0x4730
	Size: 0x45
	Parameters: 1
	Flags: None
*/
function function_b4a832f0(var_ec74b091)
{
	self.var_1dfe04a3[var_ec74b091] function_dc8c8404();
	self.var_1dfe04a3[var_ec74b091] = undefined;
	self notify("hash_a156b054");
}

/*
	Name: function_aea4686a
	Namespace: namespace_293e8aad
	Checksum: 0xF6E308F2
	Offset: 0x4780
	Size: 0x17D
	Parameters: 0
	Flags: None
*/
function function_aea4686a()
{
	var_6a173bd1 = "gamedata/tables/cpzm/" + "cpzm_weapons_sgen.csv";
	var_adeb478a = function_1556496c(var_6a173bd1);
	var_709de245 = [];
	for(var_c957f6b6 = 0; var_c957f6b6 < var_adeb478a; var_c957f6b6++)
	{
		var_e3a45b44 = function_5a31ce6c(var_6a173bd1, var_c957f6b6, 0);
		namespace_84970cc4::function_69554b3e(var_709de245, var_e3a45b44);
	}
	var_709de245 = namespace_84970cc4::function_8332f7f6(var_709de245);
	for(var_c957f6b6 = 0; var_c957f6b6 < var_709de245.size; var_c957f6b6++)
	{
		if(var_c957f6b6 >= 30)
		{
			break;
		}
		var_dfcc01fd = function_c4d5ec1f(var_709de245[var_c957f6b6]);
		if(!isdefined(var_dfcc01fd))
		{
			continue;
		}
		if(isdefined(var_dfcc01fd.var_7c2864e6))
		{
			function_aca2747(var_dfcc01fd, var_dfcc01fd.var_7c2864e6, 0);
		}
	}
}

/*
	Name: function_8cf4b0ee
	Namespace: namespace_293e8aad
	Checksum: 0xF5112E3B
	Offset: 0x4908
	Size: 0xCB
	Parameters: 1
	Flags: None
*/
function function_8cf4b0ee(var_ec74b091)
{
	namespace_3d5de9eb::function_1b6c5a02(self, "generic_zombie_bblend_vignette");
	function_ac560c9d(self.var_ec74b091, 7, 0, namespace_3d5de9eb::function_8c34c654("generic_zombie_bblend_vignette"));
	function_4249aae5(self.var_ec74b091, 7, 0, 1);
	function_a7a4f1ae(self.var_ec74b091, 7, 0, 0, 1);
	function_a7a4f1ae(self.var_ec74b091, 7, 0, 1, 0);
}

/*
	Name: function_7fc0e06
	Namespace: namespace_293e8aad
	Checksum: 0xA993F20A
	Offset: 0x49E0
	Size: 0x1CB
	Parameters: 7
	Flags: None
*/
function function_7fc0e06(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	self endon("hash_d5da096");
	self namespace_82b91a51::function_2e224d69(var_ec74b091);
	if(!isdefined(self))
	{
		return;
	}
	if(var_9193c732 == 1)
	{
		function_921a1574(var_ec74b091, "zmb_flashback_disappear_npc", self.var_722885f3);
		function_fd4ba5e1(var_ec74b091, level.var_c1aa5253["zombie_spawn"], self.var_722885f3 + VectorScale((0, 0, 1), 35));
	}
	else if(var_9193c732 == 2)
	{
		function_921a1574(var_ec74b091, "zmb_flashback_reappear_npc", self.var_722885f3);
		function_fd4ba5e1(var_ec74b091, level.var_c1aa5253["zombie_spawn"], self.var_722885f3 + VectorScale((0, 0, 1), 35));
	}
	else if(var_9193c732 == 3)
	{
		function_921a1574(var_ec74b091, "zmb_flashback_reappear_npc", self.var_722885f3);
		function_fd4ba5e1(var_ec74b091, level.var_c1aa5253["zombie_spawn"], self.var_722885f3 + VectorScale((0, 0, 1), 35));
	}
}

/*
	Name: function_2122d6fd
	Namespace: namespace_293e8aad
	Checksum: 0xA8ABE6BB
	Offset: 0x4BB8
	Size: 0xD3
	Parameters: 7
	Flags: None
*/
function function_2122d6fd(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(!isdefined(level.var_673a9a22))
	{
		level.var_673a9a22 = function_9b7fda5e(0, (0, 0, 0), "script_origin");
	}
	if(var_9193c732)
	{
		level.var_ed1ec8bc = level.var_673a9a22 function_c2931a36("zmb_cp_song_suppress");
	}
	else if(isdefined(level.var_ed1ec8bc))
	{
		level.var_673a9a22 function_eaa69754(level.var_ed1ec8bc);
	}
}

