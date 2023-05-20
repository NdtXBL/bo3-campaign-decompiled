#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_sing_vengeance_sound;
#using scripts\cp\cybercom\_cybercom;
#using scripts\cp\cybercom\_cybercom_gadget_security_breach;
#using scripts\cp\gametypes\_save;
#using scripts\shared\ai\systems\gib;
#using scripts\shared\ai_shared;
#using scripts\shared\ai_sniper_shared;
#using scripts\shared\animation_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\fx_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\hud_message_shared;
#using scripts\shared\math_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\stealth;
#using scripts\shared\system_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\vehicles\_hunter;
#using scripts\shared\visionset_mgr_shared;

#namespace namespace_63b4601c;

/*
	Name: function_2dc19561
	Namespace: namespace_63b4601c
	Checksum: 0xAC6901D
	Offset: 0xDC8
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("enemy_highlight", &function_c7e2a7f7, undefined, undefined);
}

/*
	Name: function_c7e2a7f7
	Namespace: namespace_63b4601c
	Checksum: 0x5044DC4C
	Offset: 0xE08
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_c7e2a7f7()
{
	namespace_71e9cb84::function_50f16166("toplayer", "enemy_highlight", 1, 1, "int");
}

/*
	Name: function_66773296
	Namespace: namespace_63b4601c
	Checksum: 0x2DB2FB4E
	Offset: 0xE48
	Size: 0x1EB
	Parameters: 3
	Flags: None
*/
function function_66773296(var_7d7c0d45, var_b04bc952, var_c080912a)
{
	var_717a34e1 = undefined;
	if(var_7d7c0d45 == "hendricks")
	{
		level.var_2fd26037 = namespace_82b91a51::function_740f8516("hendricks");
		var_717a34e1 = level.var_2fd26037;
		level.var_2fd26037 namespace_6f7b2095::function_1b497663("r");
	}
	else if(var_7d7c0d45 == "rachel")
	{
		level.var_7a9855f3 = namespace_82b91a51::function_740f8516("rachel");
		var_717a34e1 = level.var_7a9855f3;
		level.var_7a9855f3 namespace_6f7b2095::function_1b497663("b");
	}
	else
	{
		namespace_33b293fd::function_94739542("Dev Block strings are not supported");
	}
	/#
	#/
	if(isdefined(var_c080912a) && var_c080912a)
	{
		namespace_1d795d47::function_3096a6fd(var_b04bc952);
	}
	else
	{
		var_10729d99 = namespace_14b42b8a::function_7922262b(var_b04bc952 + "_" + var_7d7c0d45, "targetname");
		if(!isdefined(var_10729d99))
		{
			/#
				namespace_33b293fd::function_94739542("Dev Block strings are not supported" + var_7d7c0d45 + "Dev Block strings are not supported" + var_b04bc952 + "Dev Block strings are not supported");
			#/
		}
		var_717a34e1 function_9869ab67(var_10729d99.var_722885f3, var_10729d99.var_6ab6f4fd, 1);
	}
}

/*
	Name: function_693245c6
	Namespace: namespace_63b4601c
	Checksum: 0x116B57B1
	Offset: 0x1040
	Size: 0x25
	Parameters: 0
	Flags: None
*/
function function_693245c6()
{
	var_5ddef2e5 = function_3f10449f();
	return var_5ddef2e5.size;
}

/*
	Name: function_b62b56ba
	Namespace: namespace_63b4601c
	Checksum: 0x2B8A14FC
	Offset: 0x1070
	Size: 0x123
	Parameters: 0
	Flags: None
*/
function function_b62b56ba()
{
	self endon("hash_128f8789");
	if(isdefined(self.var_b07228b6))
	{
		var_5871af4 = function_b4cb3503(self.var_b07228b6, "targetname");
	}
	if(!isdefined(var_5871af4))
	{
		var_f901131c = function_406081ba(self.var_722885f3, 1000, 1, 1000, "Path");
	}
	if(isdefined(var_f901131c) && var_f901131c.size > 0)
	{
		var_5871af4 = var_f901131c[0];
	}
	if(isdefined(var_5871af4))
	{
		self.var_5871af4 = var_5871af4;
	}
	else
	{
		namespace_33b293fd::function_a7ee953(!isdefined(var_5871af4), "Dev Block strings are not supported");
	}
	/#
	#/
	self thread namespace_7244fa9b::function_7df1081d();
	self thread namespace_d84e54db::function_99e190ff(self.var_5871af4);
}

/*
	Name: function_b87f9c13
	Namespace: namespace_63b4601c
	Checksum: 0x30179662
	Offset: 0x11A0
	Size: 0xC3
	Parameters: 3
	Flags: None
*/
function function_b87f9c13(var_b04bc952, var_74cd64bc, var_6a8d0f35)
{
	if(!isdefined(var_6a8d0f35))
	{
		var_6a8d0f35 = 0;
	}
	if(!isdefined(var_b04bc952))
	{
		var_b04bc952 = "";
	}
	if(!isdefined(var_74cd64bc))
	{
		var_74cd64bc = 1;
	}
	if(var_74cd64bc)
	{
		function_2a400f9d("sentientevents_vengeance_default");
		namespace_ad06727a::function_c35e6aab();
		namespace_7c587e3e::function_47d9d5db();
		if(var_6a8d0f35)
		{
			namespace_dabbe128::function_356a4ee1(&function_51caee84);
		}
	}
}

/*
	Name: function_3f4f84e
	Namespace: namespace_63b4601c
	Checksum: 0x414D7736
	Offset: 0x1270
	Size: 0xF9
	Parameters: 3
	Flags: None
*/
function function_3f4f84e(var_5e953b6, var_64f5eece, var_864a3d55)
{
	if(!isdefined(var_64f5eece))
	{
		var_64f5eece = "targetname";
	}
	if(!isdefined(var_864a3d55))
	{
		var_864a3d55 = 1;
	}
	var_3af498bc = function_fe0cfd2e(var_5e953b6, var_64f5eece);
	foreach(var_22752fde in var_3af498bc)
	{
		function_d224409e(var_22752fde, var_864a3d55);
	}
}

/*
	Name: function_258b9bad
	Namespace: namespace_63b4601c
	Checksum: 0x130C7B65
	Offset: 0x1378
	Size: 0x9B
	Parameters: 3
	Flags: None
*/
function function_258b9bad(var_fcc15a0, var_1086d941, var_ed2ece1e)
{
	self endon("hash_128f8789");
	namespace_82b91a51::function_958c7633(self);
	if(var_1086d941)
	{
		self thread function_968476a4(var_fcc15a0, var_ed2ece1e);
	}
	namespace_82b91a51::function_39b48811(level, var_fcc15a0, self, var_fcc15a0);
	namespace_82b91a51::function_4b741fdc(self);
}

/*
	Name: function_968476a4
	Namespace: namespace_63b4601c
	Checksum: 0xF849C537
	Offset: 0x1420
	Size: 0xAB
	Parameters: 2
	Flags: None
*/
function function_968476a4(var_fcc15a0, var_ed2ece1e)
{
	self endon("hash_9b484394");
	self endon(var_fcc15a0);
	level endon(var_fcc15a0);
	while(1)
	{
		self waittill("hash_f9348fda", var_1e2af8c1, var_a0ad4f34);
		if(function_65f192a6(var_a0ad4f34))
		{
			if(isdefined(var_ed2ece1e))
			{
				level notify(var_ed2ece1e);
				wait(0.05);
				level notify(var_fcc15a0);
			}
			self notify(var_fcc15a0);
		}
	}
}

/*
	Name: function_60ce6396
	Namespace: namespace_63b4601c
	Checksum: 0xC9F818BE
	Offset: 0x14D8
	Size: 0x119
	Parameters: 0
	Flags: None
*/
function function_60ce6396()
{
	level.var_c1aa5253["civ_burn_j_elbow_le_loop"] = "fire/fx_fire_ai_human_arm_left_loop_mature";
	level.var_c1aa5253["civ_burn_j_elbow_ri_loop"] = "fire/fx_fire_ai_human_arm_right_loop_mature";
	level.var_c1aa5253["civ_burn_j_shoulder_le_loop"] = "fire/fx_fire_ai_human_arm_left_loop_mature";
	level.var_c1aa5253["civ_burn_j_shoulder_ri_loop"] = "fire/fx_fire_ai_human_arm_right_loop_mature";
	level.var_c1aa5253["civ_burn_j_spine4_loop"] = "fire/fx_fire_ai_human_torso_loop_mature";
	level.var_c1aa5253["civ_burn_j_hip_le_loop"] = "fire/fx_fire_ai_human_hip_left_loop_mature";
	level.var_c1aa5253["civ_burn_j_hip_ri_loop"] = "fire/fx_fire_ai_human_hip_right_loop_mature";
	level.var_c1aa5253["civ_burn_j_knee_le_loop"] = "fire/fx_fire_ai_human_leg_left_loop_mature";
	level.var_c1aa5253["civ_burn_j_knee_ri_loop"] = "fire/fx_fire_ai_human_leg_right_loop_mature";
	level.var_c1aa5253["civ_burn_j_head_loop"] = "fire/fx_fire_ai_human_head_loop_mature";
}

/*
	Name: function_f6af6062
	Namespace: namespace_63b4601c
	Checksum: 0xEC4B2C0D
	Offset: 0x1600
	Size: 0x58B
	Parameters: 1
	Flags: None
*/
function function_f6af6062(var_a35036a6)
{
	if(!isdefined(var_a35036a6))
	{
		var_a35036a6 = 1;
	}
	self endon("hash_128f8789");
	function_da6acfd2(level.var_c1aa5253["civ_burn_j_spine4_loop"], self, "J_Spine4");
	if(isdefined(var_a35036a6) && var_a35036a6 == 0)
	{
		wait(0.5);
		function_da6acfd2(level.var_c1aa5253["civ_burn_j_head_loop"], self, "J_Head");
		wait(function_72a94f05(0.1, 2));
		function_da6acfd2(level.var_c1aa5253["civ_burn_j_shoulder_le_loop"], self, "J_Shoulder_LE");
		function_da6acfd2(level.var_c1aa5253["civ_burn_j_shoulder_ri_loop"], self, "J_Shoulder_RI");
		wait(function_72a94f05(0.1, 2));
		function_da6acfd2(level.var_c1aa5253["civ_burn_j_hip_le_loop"], self, "J_Hip_LE");
		function_da6acfd2(level.var_c1aa5253["civ_burn_j_hip_ri_loop"], self, "J_Hip_RI");
		wait(function_72a94f05(0.1, 2));
		function_da6acfd2(level.var_c1aa5253["civ_burn_j_elbow_le_loop"], self, "J_Elbow_LE");
		function_da6acfd2(level.var_c1aa5253["civ_burn_j_elbow_ri_loop"], self, "J_Elbow_RI");
		wait(function_72a94f05(0.1, 2));
		function_da6acfd2(level.var_c1aa5253["civ_burn_j_knee_le_loop"], self, "J_Knee_LE");
		function_da6acfd2(level.var_c1aa5253["civ_burn_j_knee_ri_loop"], self, "J_Knee_RI");
	}
	else
	{
		wait(function_72a94f05(0.1, 2));
		if(namespace_d73b9283::function_d2c92ee7())
		{
			function_da6acfd2(level.var_c1aa5253["civ_burn_j_elbow_le_loop"], self, "J_Elbow_LE");
		}
		if(namespace_d73b9283::function_d2c92ee7())
		{
			function_da6acfd2(level.var_c1aa5253["civ_burn_j_elbow_ri_loop"], self, "J_Elbow_RI");
		}
		wait(function_72a94f05(0.1, 2));
		if(namespace_d73b9283::function_d2c92ee7())
		{
			function_da6acfd2(level.var_c1aa5253["civ_burn_j_shoulder_le_loop"], self, "J_Shoulder_LE");
		}
		if(namespace_d73b9283::function_d2c92ee7())
		{
			function_da6acfd2(level.var_c1aa5253["civ_burn_j_shoulder_ri_loop"], self, "J_Shoulder_RI");
		}
		wait(function_72a94f05(0.1, 2));
		if(namespace_d73b9283::function_d2c92ee7())
		{
			function_da6acfd2(level.var_c1aa5253["civ_burn_j_hip_le_loop"], self, "J_Hip_LE");
		}
		if(namespace_d73b9283::function_d2c92ee7())
		{
			function_da6acfd2(level.var_c1aa5253["civ_burn_j_hip_ri_loop"], self, "J_Hip_RI");
		}
		wait(function_72a94f05(0.1, 2));
		if(namespace_d73b9283::function_d2c92ee7())
		{
			function_da6acfd2(level.var_c1aa5253["civ_burn_j_knee_le_loop"], self, "J_Knee_LE");
		}
		if(namespace_d73b9283::function_d2c92ee7())
		{
			function_da6acfd2(level.var_c1aa5253["civ_burn_j_knee_ri_loop"], self, "J_Knee_RI");
		}
		wait(function_72a94f05(0.1, 2));
		if(namespace_d73b9283::function_d2c92ee7())
		{
			function_da6acfd2(level.var_c1aa5253["civ_burn_j_head_loop"], self, "J_Head");
		}
	}
}

/*
	Name: function_3f34106b
	Namespace: namespace_63b4601c
	Checksum: 0x7908904B
	Offset: 0x1B98
	Size: 0x261
	Parameters: 0
	Flags: None
*/
function function_3f34106b()
{
	namespace_4dbf3ae3::function_1ab5ebec("sh_bridge_explosion", "targetname");
	var_d2d4d1ec = function_99201f25("sh_bridge_clean", "targetname");
	var_1c396b4f = namespace_14b42b8a::function_7922262b("sh_missile_strike_start", "targetname");
	var_83e914f = namespace_14b42b8a::function_7922262b("sh_missile_strike_end", "targetname");
	var_a5c1510d = namespace_82b91a51::function_b9fd52a4("tag_origin", var_1c396b4f.var_722885f3, var_1c396b4f.var_6ab6f4fd);
	var_a5c1510d namespace_5753664b::function_43718187("fx_trail_missile_vista_veng", var_a5c1510d.var_722885f3, var_a5c1510d.var_6ab6f4fd, undefined, 1, "tag_origin", 1);
	var_a5c1510d function_a96a2721(var_83e914f.var_722885f3, 0.75);
	wait(0.75);
	function_37cbcf1a("evt_bridge_explosion", var_a5c1510d.var_722885f3);
	var_a5c1510d function_dc8c8404();
	namespace_80983c42::function_80983c42("sh_vista_bridge_explosion");
	namespace_80983c42::function_80983c42("sh_vista_bridge_fire");
	foreach(var_4c9c8550 in var_d2d4d1ec)
	{
		var_4c9c8550 function_dc8c8404();
	}
}

/*
	Name: function_936cf9d0
	Namespace: namespace_63b4601c
	Checksum: 0x5EC9884D
	Offset: 0x1E08
	Size: 0xD1
	Parameters: 0
	Flags: None
*/
function function_936cf9d0()
{
	var_d2d4d1ec = function_99201f25("sh_bridge_clean", "targetname");
	namespace_80983c42::function_80983c42("sh_vista_bridge_fire");
	foreach(var_4c9c8550 in var_d2d4d1ec)
	{
		var_4c9c8550 function_dc8c8404();
	}
}

/*
	Name: function_ef909043
	Namespace: namespace_63b4601c
	Checksum: 0x336FC9D0
	Offset: 0x1EE8
	Size: 0x1B9
	Parameters: 0
	Flags: None
*/
function function_ef909043()
{
	var_9c327190 = function_99201f25("sh_corner_clean", "targetname");
	var_a4ff1499 = function_99201f25("sh_corner_destroy", "targetname");
	foreach(var_4c9c8550 in var_a4ff1499)
	{
		var_4c9c8550 function_50ccee8d();
	}
	namespace_4dbf3ae3::function_1ab5ebec("sh_corner_explosion", "targetname");
	namespace_80983c42::function_80983c42("sh_corner_plaza_explosion");
	wait(0.15);
	namespace_84970cc4::function_7e64f710(var_9c327190);
	foreach(var_4c9c8550 in var_a4ff1499)
	{
		var_4c9c8550 function_48f26766();
	}
}

/*
	Name: function_6bd25628
	Namespace: namespace_63b4601c
	Checksum: 0x5C52210A
	Offset: 0x20B0
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_6bd25628()
{
	var_9c327190 = function_99201f25("sh_corner_clean", "targetname");
	namespace_84970cc4::function_7e64f710(var_9c327190);
}

/*
	Name: function_1581b116
	Namespace: namespace_63b4601c
	Checksum: 0xFA6B0502
	Offset: 0x2100
	Size: 0xD9
	Parameters: 0
	Flags: None
*/
function function_1581b116()
{
	var_8ea4a872 = self function_21995b5a();
	foreach(var_1d6db0a3 in var_8ea4a872)
	{
		self function_704b802a(var_1d6db0a3);
		self function_67795b5f(var_1d6db0a3, var_1d6db0a3.var_c0b2188);
	}
}

/*
	Name: function_8a63fd6b
	Namespace: namespace_63b4601c
	Checksum: 0x2383CE0B
	Offset: 0x21E8
	Size: 0x253
	Parameters: 7
	Flags: None
*/
function function_8a63fd6b(var_f92a03e7, var_b04bc952, var_ae801398, var_53e4687d, var_65611d69, var_ca0e9b65, var_acbf687c)
{
	var_f92a03e7 endon("hash_128f8789");
	if(isdefined(var_53e4687d))
	{
		level endon(var_53e4687d);
	}
	level namespace_ad23e503::function_1ab5ebec("stealth_discovered");
	var_f92a03e7 function_175e6b8e(0);
	if(isdefined(var_b04bc952))
	{
		namespace_d0ef8521::function_50ccee8d(var_b04bc952);
	}
	if(isdefined(var_ae801398))
	{
		namespace_d0ef8521::function_50ccee8d(var_ae801398);
	}
	if(isdefined(var_65611d69))
	{
		namespace_d0ef8521::function_74d6b22f(var_65611d69);
	}
	if(isdefined(var_ca0e9b65))
	{
		var_ca0e9b65 namespace_a230c2b1::function_e54c54c3();
	}
	level namespace_ad23e503::function_d3de6822("stealth_discovered");
	if(isdefined(var_ca0e9b65) && level.var_31aefea8 === "temple")
	{
		level namespace_ad23e503::function_9d134160("all_players_at_temple_exit");
		namespace_d0ef8521::function_48f26766("cp_level_vengeance_goto_dogleg_2");
		level namespace_ad23e503::function_1ab5ebec("all_players_at_temple_exit");
		namespace_d0ef8521::function_50ccee8d("cp_level_vengeance_goto_dogleg_2");
	}
	var_f92a03e7 function_175e6b8e(1);
	if(isdefined(var_65611d69))
	{
		namespace_d0ef8521::function_50ccee8d(var_65611d69);
	}
	if(isdefined(var_b04bc952))
	{
		namespace_d0ef8521::function_48f26766(var_b04bc952);
	}
	if(isdefined(var_ae801398))
	{
		namespace_d0ef8521::function_48f26766(var_ae801398);
	}
	if(isdefined(var_ca0e9b65))
	{
		var_ca0e9b65 namespace_a230c2b1::function_ed0abeee();
	}
}

/*
	Name: function_7c486b8c
	Namespace: namespace_63b4601c
	Checksum: 0x56DF57A1
	Offset: 0x2448
	Size: 0x35
	Parameters: 0
	Flags: None
*/
function function_7c486b8c()
{
	self endon("hash_128f8789");
	self waittillmatch("hash_d501c77c");
	self.var_d501c77c = 1;
	self.var_2d1c9600 = undefined;
}

/*
	Name: function_1095f52e
	Namespace: namespace_63b4601c
	Checksum: 0xF7CD391
	Offset: 0x2488
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_1095f52e()
{
	self endon("hash_128f8789");
	self waittillmatch("hash_7bbfb522");
	self.var_2d1c9600 = 1;
}

/*
	Name: function_1ed65aa
	Namespace: namespace_63b4601c
	Checksum: 0x107E1685
	Offset: 0x24C0
	Size: 0x201
	Parameters: 1
	Flags: None
*/
function function_1ed65aa(var_6b2e5977)
{
	foreach(var_8b6fbf68 in var_6b2e5977)
	{
		if(!isdefined(var_8b6fbf68))
		{
			continue;
		}
		var_8b6fbf68 thread function_7c486b8c();
		var_8b6fbf68 thread function_1095f52e();
	}
	self namespace_82b91a51::function_5b7e3888("death");
	foreach(var_8b6fbf68 in var_6b2e5977)
	{
		if(!isdefined(var_8b6fbf68))
		{
			continue;
		}
		if(isdefined(var_8b6fbf68.var_d501c77c) && var_8b6fbf68.var_d501c77c == 1)
		{
			continue;
		}
		if(isdefined(var_8b6fbf68.var_2d1c9600) && var_8b6fbf68.var_2d1c9600 == 1)
		{
			var_8b6fbf68 function_470f7e4c();
			var_8b6fbf68 function_822f0cc5(var_8b6fbf68.var_722885f3, VectorScale((0, 0, 1), 0.1));
			continue;
		}
		var_8b6fbf68 function_dc8c8404();
	}
}

/*
	Name: function_7122594d
	Namespace: namespace_63b4601c
	Checksum: 0x3F4E3A64
	Offset: 0x26D0
	Size: 0x209
	Parameters: 1
	Flags: None
*/
function function_7122594d(var_6b2e5977)
{
	foreach(var_8b6fbf68 in var_6b2e5977)
	{
		if(!isdefined(var_8b6fbf68))
		{
			continue;
		}
		var_8b6fbf68 thread function_7c486b8c();
		var_8b6fbf68 thread function_1095f52e();
	}
	self namespace_82b91a51::function_5b7e3888("death", "alert");
	foreach(var_8b6fbf68 in var_6b2e5977)
	{
		if(!isdefined(var_8b6fbf68))
		{
			continue;
		}
		if(isdefined(var_8b6fbf68.var_d501c77c) && var_8b6fbf68.var_d501c77c == 1)
		{
			continue;
		}
		if(isdefined(var_8b6fbf68.var_2d1c9600) && var_8b6fbf68.var_2d1c9600 == 1)
		{
			var_8b6fbf68 function_470f7e4c();
			var_8b6fbf68 function_822f0cc5(var_8b6fbf68.var_722885f3, VectorScale((0, 0, 1), 0.1));
			continue;
		}
		var_8b6fbf68 function_dc8c8404();
	}
}

/*
	Name: function_57b69bd6
	Namespace: namespace_63b4601c
	Checksum: 0x5C257548
	Offset: 0x28E8
	Size: 0xB3
	Parameters: 3
	Flags: None
*/
function function_57b69bd6(var_9e455a4, var_f0dc1d6d, var_a202d840)
{
	self namespace_82b91a51::function_5b7e3888("alert", "death", "fake_alert");
	var_9e455a4 function_52fddbd0();
	if(isdefined(var_f0dc1d6d))
	{
		wait(0.05);
	}
	var_9e455a4 function_822f0cc5(var_9e455a4.var_722885f3, VectorScale((0, 0, 1), 0.1));
}

/*
	Name: function_394ba9b5
	Namespace: namespace_63b4601c
	Checksum: 0xBFD95369
	Offset: 0x29A8
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_394ba9b5(var_1ea83c75)
{
	self namespace_82b91a51::function_5b7e3888("death", "alert");
	if(isdefined(var_1ea83c75))
	{
		var_1ea83c75 notify("hash_da6a4775");
	}
}

/*
	Name: function_d468b73d
	Namespace: namespace_63b4601c
	Checksum: 0x1267E359
	Offset: 0x2A00
	Size: 0xA9
	Parameters: 3
	Flags: None
*/
function function_d468b73d(var_3390909e, var_c77d2837, var_36ebf819)
{
	self waittill(var_3390909e);
	foreach(var_a3d46ee4 in var_c77d2837)
	{
		if(isdefined(var_a3d46ee4))
		{
			var_a3d46ee4 notify(var_36ebf819);
		}
	}
}

/*
	Name: function_8ffbd7bf
	Namespace: namespace_63b4601c
	Checksum: 0x69907A22
	Offset: 0x2AB8
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_8ffbd7bf()
{
	self endon("hash_128f8789");
	while(1)
	{
		self waittill("hash_78a7a5b9", var_86c93e40);
		if(isdefined(var_86c93e40) && var_86c93e40 == "combat")
		{
			self namespace_d84e54db::function_c9e45d52(0);
			break;
		}
	}
}

/*
	Name: function_75790dfc
	Namespace: namespace_63b4601c
	Checksum: 0xEEA42212
	Offset: 0x2B30
	Size: 0x575
	Parameters: 1
	Flags: None
*/
function function_75790dfc(var_b04bc952)
{
	self endon("hash_128f8789");
	self notify("hash_3d519007");
	self endon("hash_3d519007");
	self endon("hash_78a7a5b9");
	self thread function_8ffbd7bf();
	var_3c6e7674 = 120;
	var_6437cdb2 = 800;
	var_5c5c4e19 = namespace_d73b9283::function_31931862(var_3c6e7674, 0, self.var_7dfaf62);
	var_45cb70ef = namespace_d73b9283::function_31931862(var_6437cdb2, var_3c6e7674, self.var_7dfaf62);
	var_16ab6933 = 400;
	var_9c039e0e = 80;
	var_7a187465 = 50;
	var_fc9d1e61 = 10;
	var_3728fd9e = 2.5 + function_62e4226e(1);
	while(1)
	{
		var_b07228b6 = namespace_84970cc4::function_47d18840(level.var_e418a31d);
		var_4b68b086 = self.var_722885f3[2] - var_b07228b6.var_722885f3[2] / 2;
		var_722885f3 = var_b07228b6.var_722885f3 + (0, 0, var_4b68b086);
		var_d5b210fc = function_54f69de9(var_722885f3, var_5c5c4e19, var_45cb70ef, var_16ab6933, var_9c039e0e, self, var_7a187465);
		function_9d329e33(var_d5b210fc, self);
		namespace_72ee5da4::function_dc90001d(var_d5b210fc);
		namespace_72ee5da4::function_45f024ed(var_d5b210fc, 0, 10);
		namespace_72ee5da4::function_272864e7(var_d5b210fc);
		var_9a745b6c = var_3728fd9e > 0.2;
		var_b43d22be = 0;
		for(var_c957f6b6 = 0; var_c957f6b6 < var_d5b210fc.var_72254e15.size && !var_b43d22be; var_c957f6b6++)
		{
			var_ae11119e = var_d5b210fc.var_72254e15[var_c957f6b6].var_722885f3;
			var_b43d22be = self function_c985552d(var_ae11119e, var_9a745b6c, 1);
		}
		if(var_b43d22be)
		{
			self function_df42c640(var_b07228b6);
			self function_3488d445(var_b07228b6);
			var_813fc428 = self namespace_82b91a51::function_9fcf3cd8(var_fc9d1e61, "near_goal", "force_goal", "reached_end_node", "goal");
			if(var_9a745b6c)
			{
				if(isdefined(var_b07228b6.var_caae374e) && var_b07228b6.var_caae374e == "scan_location")
				{
					var_b07228b6.var_9ff2970a = function_6ada35ba(var_b07228b6.var_b07228b6, "targetname");
					self function_18fb105e(var_b07228b6.var_9ff2970a);
				}
				else if(namespace_d73b9283::function_d2c92ee7())
				{
					level.var_93287d84 = function_57efbe1(level.var_93287d84, self.var_722885f3, 999, 512);
					if(isdefined(level.var_93287d84[0]))
					{
						self function_120671d3(level.var_93287d84[0]);
					}
				}
				else
				{
					level.var_93287d84 = function_57efbe1(level.var_93287d84, self.var_722885f3, 999, 512);
					if(isdefined(level.var_93287d84[0]))
					{
						self function_6a382ad5(level.var_93287d84[0]);
					}
				}
				wait(function_72a94f05(0.5 * var_3728fd9e, var_3728fd9e));
			}
		}
		else
		{
			self function_62b52961();
			self function_8d87b0f9();
			wait(1);
		}
	}
}

/*
	Name: function_120671d3
	Namespace: namespace_63b4601c
	Checksum: 0x38F68707
	Offset: 0x30B0
	Size: 0x16B
	Parameters: 1
	Flags: None
*/
function function_120671d3(var_b07228b6)
{
	self endon("hash_128f8789");
	self endon("hash_d5beb6f3");
	self endon("hash_44fd873a");
	self endon("hash_78a7a5b9");
	self function_df42c640(var_b07228b6);
	self function_3488d445(var_b07228b6);
	self namespace_82b91a51::function_9fcf3cd8(2, "turret_on_target");
	var_8878b457 = 1.5 + function_62e4226e(0.5);
	self namespace_72ee5da4::function_afb82faf(var_8878b457);
	wait(1);
	if(namespace_d73b9283::function_d2c92ee7())
	{
		var_8878b457 = 1.5 + function_62e4226e(0.5);
		self namespace_72ee5da4::function_afb82faf(var_8878b457);
		wait(1);
	}
	self function_62b52961();
	self function_8d87b0f9();
}

/*
	Name: function_6a382ad5
	Namespace: namespace_63b4601c
	Checksum: 0x646768A0
	Offset: 0x3228
	Size: 0x1E3
	Parameters: 1
	Flags: None
*/
function function_6a382ad5(var_b07228b6)
{
	self endon("hash_128f8789");
	self endon("hash_d5beb6f3");
	self endon("hash_44fd873a");
	self endon("hash_78a7a5b9");
	self function_df42c640(var_b07228b6);
	self function_3488d445(var_b07228b6);
	self namespace_82b91a51::function_9fcf3cd8(2, "turret_on_target");
	self namespace_5e7ee507::function_45bbe5dd();
	wait(1);
	var_2272154f = 20;
	var_a4e8111c = [];
	for(var_c957f6b6 = 0; var_c957f6b6 < 2; var_c957f6b6++)
	{
		var_a4e8111c[var_c957f6b6] = (function_72a94f05(var_2272154f * -1, var_2272154f), function_72a94f05(var_2272154f * -1, var_2272154f), function_72a94f05(var_2272154f * -1, var_2272154f));
	}
	self namespace_5e7ee507::function_ed543896(0, var_b07228b6, var_a4e8111c[0], 1, 0.8);
	wait(0.25);
	self namespace_5e7ee507::function_ed543896(1, var_b07228b6, var_a4e8111c[1]);
	wait(1);
	self function_8d87b0f9();
}

/*
	Name: function_d92edef5
	Namespace: namespace_63b4601c
	Checksum: 0xAF69426E
	Offset: 0x3418
	Size: 0x15B
	Parameters: 0
	Flags: None
*/
function function_d92edef5()
{
	self.var_5772ae4 = function_9b7fda5e("script_model", self function_d48f2ab3("tag_aim"));
	self.var_5772ae4 function_e48f905e("tag_origin");
	self.var_5772ae4.var_6ab6f4fd = self function_cd1d99bd("tag_aim");
	self.var_5772ae4 function_37f7858a(self, "tag_aim");
	self.var_5772ae4.var_5e36fd2e = self;
	self.var_5772ae4.var_f56360bf = 0;
	self.var_5772ae4.var_966f680a = function_9b7fda5e("script_origin", self.var_5772ae4.var_722885f3 + function_bc7ce905(self.var_6ab6f4fd) * 1000);
	self.var_5772ae4.var_966f680a function_37f7858a(self.var_5772ae4);
}

/*
	Name: function_45f7a75b
	Namespace: namespace_63b4601c
	Checksum: 0xA11EFA14
	Offset: 0x3580
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_45f7a75b()
{
	self function_b3df73a8();
	if(isdefined(self.var_5772ae4))
	{
		if(isdefined(self.var_5772ae4.var_966f680a))
		{
			self.var_5772ae4.var_966f680a function_dc8c8404();
		}
		self.var_5772ae4 function_dc8c8404();
	}
}

/*
	Name: function_ff25493
	Namespace: namespace_63b4601c
	Checksum: 0x3F38BD3C
	Offset: 0x3600
	Size: 0x8B
	Parameters: 2
	Flags: None
*/
function function_ff25493(var_ddd6bbfd, var_a4e8111c)
{
	if(!isdefined(var_a4e8111c))
	{
		var_a4e8111c = (0, 0, 0);
	}
	if(isdefined(var_ddd6bbfd))
	{
		self.var_5772ae4.var_ddd6bbfd = var_ddd6bbfd;
		self.var_5772ae4.var_f56360bf = 1;
		self function_9af49228(self.var_5772ae4.var_ddd6bbfd, var_a4e8111c, 2);
	}
}

/*
	Name: function_b3df73a8
	Namespace: namespace_63b4601c
	Checksum: 0xCDC66893
	Offset: 0x3698
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_b3df73a8()
{
	self.var_5772ae4.var_f56360bf = 0;
	self function_bb5f9faa(2);
}

/*
	Name: function_4406e447
	Namespace: namespace_63b4601c
	Checksum: 0xF479D6CF
	Offset: 0x36D8
	Size: 0x53
	Parameters: 1
	Flags: None
*/
function function_4406e447(var_2d18298)
{
	if(isdefined(var_2d18298))
	{
		self.var_5772ae4.var_2d18298 = var_2d18298;
		self function_6521eb5d(self.var_5772ae4.var_2d18298, 2);
	}
}

/*
	Name: function_d16e8674
	Namespace: namespace_63b4601c
	Checksum: 0xE56240B8
	Offset: 0x3738
	Size: 0x133
	Parameters: 2
	Flags: None
*/
function function_d16e8674(var_dd89f865, var_589ce774)
{
	if(!isdefined(var_dd89f865))
	{
		return 0;
	}
	var_c1c25cad = self.var_5772ae4;
	var_e8663043 = var_dd89f865 - var_c1c25cad.var_722885f3;
	var_a641ce84 = function_f781860c(var_e8663043) <= 1024 * 1024;
	if(var_a641ce84)
	{
		var_a641ce84 = namespace_82b91a51::function_22ff7ff0(var_c1c25cad.var_722885f3, var_c1c25cad.var_6ab6f4fd, var_dd89f865, function_ef0a72b2(35));
	}
	if(var_a641ce84 && (isdefined(var_589ce774) && var_589ce774) && isdefined(self.var_6050ab17))
	{
		var_a641ce84 = function_e7865c4b(var_c1c25cad.var_722885f3, var_dd89f865, 0, self.var_6050ab17);
	}
	return var_a641ce84;
}

/*
	Name: function_139e3a4a
	Namespace: namespace_63b4601c
	Checksum: 0x6B36B447
	Offset: 0x3878
	Size: 0x103
	Parameters: 2
	Flags: None
*/
function function_139e3a4a(var_b07228b6, var_589ce774)
{
	var_f230ef9a = 1;
	if(isdefined(var_b07228b6.var_255b9315) && var_b07228b6.var_255b9315 || var_b07228b6.var_3a90f16b <= 0)
	{
		var_f230ef9a = 0;
	}
	else if(function_5cfb84bb(var_b07228b6) && (var_b07228b6 function_8f454113() || var_b07228b6 namespace_d84e54db::function_a832c76f()))
	{
		var_f230ef9a = 0;
	}
	else if(isdefined(var_b07228b6.var_722885f3) && !function_d16e8674(var_b07228b6.var_722885f3, var_589ce774))
	{
		var_f230ef9a = 0;
	}
	return var_f230ef9a;
}

/*
	Name: function_c35210a8
	Namespace: namespace_63b4601c
	Checksum: 0xE7D1DBC2
	Offset: 0x3988
	Size: 0x12B
	Parameters: 1
	Flags: None
*/
function function_c35210a8(var_589ce774)
{
	var_526bc7e = [];
	var_399c5f4a = function_cb35e6c(1, 1);
	foreach(var_6050ab17 in var_399c5f4a)
	{
		if(function_139e3a4a(var_6050ab17, var_589ce774))
		{
			if(!isdefined(var_526bc7e))
			{
				var_526bc7e = [];
			}
			else if(!function_6e2770d8(var_526bc7e))
			{
				var_526bc7e = function_84970cc4(var_526bc7e);
			}
			var_526bc7e[var_526bc7e.size] = var_6050ab17;
		}
	}
	return var_526bc7e;
}

/*
	Name: function_cb35e6c
	Namespace: namespace_63b4601c
	Checksum: 0xE4156B1D
	Offset: 0x3AC0
	Size: 0xEB
	Parameters: 2
	Flags: None
*/
function function_cb35e6c(var_90f6a18c, var_c776eebd)
{
	var_399c5f4a = [];
	var_36a7b4ed = "allies";
	if(isdefined(var_90f6a18c) && var_90f6a18c)
	{
		var_c89de9c6 = function_b8494651(var_36a7b4ed);
		var_399c5f4a = function_525ae497(var_399c5f4a, var_c89de9c6, 0, 0);
	}
	if(isdefined(var_c776eebd) && var_c776eebd)
	{
		var_dc73eb5 = function_3f10449f(var_36a7b4ed);
		var_399c5f4a = function_525ae497(var_399c5f4a, var_dc73eb5, 0, 0);
	}
	return var_399c5f4a;
}

/*
	Name: function_18fb105e
	Namespace: namespace_63b4601c
	Checksum: 0x265F9972
	Offset: 0x3BB8
	Size: 0x283
	Parameters: 1
	Flags: None
*/
function function_18fb105e(var_3470f459)
{
	self endon("hash_e9de6408");
	self endon("hash_831c5309");
	self endon("hash_128f8789");
	self endon("hash_3d519007");
	self endon("hash_78a7a5b9");
	self function_d92edef5();
	var_c04ea392 = 0;
	var_161ae6a0 = 6;
	while(var_c04ea392 < var_161ae6a0)
	{
		if(!isdefined(self.var_6050ab17))
		{
			self.var_5772ae4.var_966f680a function_c2931a36("veh_hunter_scanner_loop", 1);
			/#
				function_4e418837(self function_d48f2ab3("Dev Block strings are not supported"), var_3470f459.var_722885f3, (0, 1, 0), 1, 3);
			#/
			var_a4e8111c = var_3470f459.var_722885f3 + (function_72a94f05(0, 40), function_72a94f05(0, 40), function_72a94f05(0, 40));
			var_657b1773 = function_c35210a8(1);
			if(var_657b1773.size > 0)
			{
				var_980e7aaf = function_e7bdc1a1(self.var_722885f3, var_657b1773);
				self.var_c6dedab7 = var_980e7aaf;
			}
		}
		else if(self namespace_5e7ee507::function_d16e8674(self.var_6050ab17.var_722885f3, 1))
		{
			self notify("hash_5176d091");
		}
		else
		{
			self notify("hash_5a14c09c");
		}
		self.var_5772ae4.var_966f680a function_eaa69754(1);
		wait(0.1);
		var_c04ea392 = var_c04ea392 + 0.1;
	}
	self function_45f7a75b();
}

/*
	Name: function_ab876b5a
	Namespace: namespace_63b4601c
	Checksum: 0x4AB7DA98
	Offset: 0x3E48
	Size: 0x8F
	Parameters: 3
	Flags: None
*/
function function_ab876b5a(var_ebe71496, var_2d0f3d61, var_199e0d00)
{
	level endon("hash_92bd0e81");
	while(1)
	{
		level waittill(var_2d0f3d61);
		function_4a0fb95e(var_ebe71496);
		wait(3);
		function_acdfe1fe(var_ebe71496, 1);
		level waittill(var_199e0d00);
		function_4a0fb95e(var_ebe71496);
	}
}

/*
	Name: function_cc6f3598
	Namespace: namespace_63b4601c
	Checksum: 0x8BBDEBA4
	Offset: 0x3EE0
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_cc6f3598()
{
	namespace_4dbf3ae3::function_1ab5ebec("temple_video");
	function_4a0fb95e("cp_vengeance_env_sign_dragon01");
	wait(1);
	function_acdfe1fe("cp_vengeance_env_sign_dragon01", 1);
	level waittill("hash_42cabc57");
	function_4a0fb95e("cp_vengeance_env_sign_dragon01");
}

/*
	Name: function_5dbf4126
	Namespace: namespace_63b4601c
	Checksum: 0xEC1110D6
	Offset: 0x3F68
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_5dbf4126()
{
	function_4a0fb95e("cp_vengeance_env_sign_parking01");
	wait(1);
	function_acdfe1fe("cp_vengeance_env_sign_parking01", 1);
	level namespace_ad23e503::function_1ab5ebec("plaza_cleared");
	function_4a0fb95e("cp_vengeance_env_sign_parking01");
}

/*
	Name: function_6bdeeb80
	Namespace: namespace_63b4601c
	Checksum: 0xA1B1902C
	Offset: 0x3FE8
	Size: 0x123
	Parameters: 0
	Flags: None
*/
function function_6bdeeb80()
{
	var_5ddef2e5 = [];
	if(isdefined(level.var_ad06727a.var_ba093e01))
	{
		foreach(var_a3d46ee4 in level.var_ad06727a.var_ba093e01)
		{
			if(function_65f192a6(var_a3d46ee4))
			{
				if(!isdefined(var_5ddef2e5))
				{
					var_5ddef2e5 = [];
				}
				else if(!function_6e2770d8(var_5ddef2e5))
				{
					var_5ddef2e5 = function_84970cc4(var_5ddef2e5);
				}
				var_5ddef2e5[var_5ddef2e5.size] = var_a3d46ee4;
			}
		}
	}
	return var_5ddef2e5.size >= 1;
}

/*
	Name: function_76bdbf62
	Namespace: namespace_63b4601c
	Checksum: 0xD0DA7AE9
	Offset: 0x4118
	Size: 0x193
	Parameters: 0
	Flags: None
*/
function function_76bdbf62()
{
	self endon("hash_128f8789");
	self.var_3e94206a = "allies";
	self.var_8aa848ca = 1;
	self namespace_d84e54db::function_c9e45d52(1);
	self namespace_d84e54db::function_b4f5e3b9(1);
	self namespace_d84e54db::function_ceb883cd("panic", 0);
	self.var_3a90f16b = 1;
	if(isdefined(self.var_9194748))
	{
		var_4dbf3ae3 = function_6ada35ba(self.var_9194748, "script_linkname");
		if(isdefined(var_4dbf3ae3))
		{
			namespace_4dbf3ae3::function_1ab5ebec(var_4dbf3ae3);
		}
	}
	self namespace_d84e54db::function_c9e45d52(0);
	self namespace_d84e54db::function_b4f5e3b9(0);
	if(isdefined(self.var_b07228b6))
	{
		var_90ca1fdd = function_b4cb3503(self.var_b07228b6, "targetname");
		self function_169cc712(var_90ca1fdd, 0, var_90ca1fdd.var_f8456b37);
	}
	self namespace_d84e54db::function_ceb883cd("panic", 1);
}

/*
	Name: function_3d5f97bd
	Namespace: namespace_63b4601c
	Checksum: 0x747E36B5
	Offset: 0x42B8
	Size: 0x183
	Parameters: 4
	Flags: None
*/
function function_3d5f97bd(var_90ca1fdd, var_41178307, var_37730a64, var_7d15e2f8)
{
	self endon("hash_128f8789");
	self function_e11ce512();
	self function_fb5720f7();
	self.var_7dfaf62 = 32;
	self function_169cc712(var_90ca1fdd.var_722885f3, 1);
	if(isdefined(var_37730a64) && var_37730a64 == 1)
	{
		var_3c61bfc2 = self namespace_82b91a51::function_5b7e3888("goal", "near_goal", "bad_path");
	}
	else
	{
		var_3c61bfc2 = self namespace_82b91a51::function_9fcf3cd8(15, "goal", "near_goal", "bad_path");
	}
	if(isdefined(var_3c61bfc2) && (var_3c61bfc2 == "goal" || var_3c61bfc2 == "near_goal"))
	{
		function_307b1179(self, var_41178307, var_7d15e2f8);
	}
	else
	{
		function_307b1179(self, undefined, var_7d15e2f8);
	}
}

/*
	Name: function_307b1179
	Namespace: namespace_63b4601c
	Checksum: 0xA6213E48
	Offset: 0x4448
	Size: 0x83
	Parameters: 3
	Flags: None
*/
function function_307b1179(var_d84e54db, var_41178307, var_7d15e2f8)
{
	if(isdefined(var_41178307) && var_41178307)
	{
		var_d84e54db function_2992720d();
	}
	else
	{
		var_e3b635fb = function_84970cc4(var_d84e54db);
		level thread function_ff5f379(var_e3b635fb, var_7d15e2f8);
	}
}

/*
	Name: function_ff5f379
	Namespace: namespace_63b4601c
	Checksum: 0xB750100B
	Offset: 0x44D8
	Size: 0x1DF
	Parameters: 2
	Flags: None
*/
function function_ff5f379(var_e3b635fb, var_ccd4343c)
{
	if(!isdefined(var_e3b635fb))
	{
		return;
	}
	var_e52b590a = 0.75;
	if(!isdefined(var_ccd4343c))
	{
		var_ccd4343c = 512;
	}
	while(var_e3b635fb.size > 0)
	{
		for(var_c957f6b6 = 0; var_c957f6b6 < var_e3b635fb.size; var_c957f6b6++)
		{
			if(!isdefined(var_e3b635fb[var_c957f6b6]) || !function_5b49d38c(var_e3b635fb[var_c957f6b6]))
			{
				function_81403b2f(var_e3b635fb, var_e3b635fb[var_c957f6b6]);
				continue;
			}
			if(function_719f06a1(var_ccd4343c, var_e3b635fb[var_c957f6b6].var_722885f3))
			{
				continue;
			}
			if(function_8c6350db(var_e3b635fb[var_c957f6b6].var_722885f3 + VectorScale((0, 0, 1), 48), var_e52b590a, 1))
			{
				continue;
			}
			if(!(isdefined(var_e3b635fb[var_c957f6b6].var_bab9655e) && var_e3b635fb[var_c957f6b6].var_bab9655e))
			{
				var_e3b635fb[var_c957f6b6] namespace_82b91a51::function_4b741fdc();
			}
			var_e3b635fb[var_c957f6b6] function_dc8c8404();
			function_81403b2f(var_e3b635fb, var_e3b635fb[var_c957f6b6]);
		}
		wait(1);
	}
}

/*
	Name: function_719f06a1
	Namespace: namespace_63b4601c
	Checksum: 0xB7A01CF8
	Offset: 0x46C0
	Size: 0x95
	Parameters: 2
	Flags: None
*/
function function_719f06a1(var_ccd4343c, var_c6f2fa46)
{
	var_1cc952f6 = var_ccd4343c * var_ccd4343c;
	for(var_c957f6b6 = 0; var_c957f6b6 < level.var_2395e945.size; var_c957f6b6++)
	{
		if(function_cb3d1c9b(var_c6f2fa46, level.var_2395e945[var_c957f6b6].var_722885f3) < var_1cc952f6)
		{
			return 1;
		}
	}
	return 0;
}

/*
	Name: function_8c6350db
	Namespace: namespace_63b4601c
	Checksum: 0x582F5697
	Offset: 0x4760
	Size: 0x87
	Parameters: 4
	Flags: None
*/
function function_8c6350db(var_c6f2fa46, var_82a044f1, var_2cd7fdc6, var_cdf1179b)
{
	for(var_c957f6b6 = 0; var_c957f6b6 < level.var_2395e945.size; var_c957f6b6++)
	{
		if(level.var_2395e945[var_c957f6b6] namespace_82b91a51::function_d61b846f(var_c6f2fa46, var_82a044f1, var_2cd7fdc6, var_cdf1179b))
		{
			return 1;
		}
	}
	return 0;
}

/*
	Name: function_80840124
	Namespace: namespace_63b4601c
	Checksum: 0x2F0C6FDF
	Offset: 0x47F0
	Size: 0x19F
	Parameters: 1
	Flags: None
*/
function function_80840124(var_f5d7a3f)
{
	level notify("hash_bab8795");
	level endon("hash_bab8795");
	var_17994622 = function_b8494651("axis");
	var_60aeac6b = [];
	var_60aeac6b[0] = "hend_damn_they_re_onto_u_1";
	var_60aeac6b[1] = "hend_damn_they_know_we_r_0";
	var_60aeac6b[2] = "hend_shit_go_hot_they_r_0";
	var_4e418837 = namespace_84970cc4::function_47d18840(var_60aeac6b);
	level function_ee75acde(var_4e418837);
	if(isdefined(var_f5d7a3f))
	{
		[[var_f5d7a3f]]();
	}
	wait(3);
	while(1)
	{
		if(level namespace_ad23e503::function_7922262b("combat_enemies_retreating"))
		{
			level namespace_ad23e503::function_9d134160("combat_enemies_retreating");
			break;
		}
		var_457b0e7 = function_b8494651("axis");
		namespace_82b91a51::function_da8ba893(function_72a94f05(15, 20), "combat_enemies_retreating");
	}
}

/*
	Name: function_ee78c834
	Namespace: namespace_63b4601c
	Checksum: 0xCD2535C7
	Offset: 0x4998
	Size: 0x47
	Parameters: 0
	Flags: None
*/
function function_ee78c834()
{
	while(1)
	{
		if(isdefined(self.var_ba64031a) && self.var_ba64031a == 1)
		{
			level notify("hash_fec3c49");
			break;
		}
		wait(1);
	}
}

/*
	Name: function_12a1b6a0
	Namespace: namespace_63b4601c
	Checksum: 0x844CAA8E
	Offset: 0x49E8
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_12a1b6a0()
{
	self endon("hash_128f8789");
	self endon("hash_643a7daf");
	var_ca775902 = function_c4d5ec1f("ar_marksman_veng_hero_weap");
	while(1)
	{
		if(self function_48c6a3a2() == var_ca775902)
		{
			break;
		}
		wait(0.05);
	}
	self waittill("hash_9206d256", var_d13f855e);
	self thread function_51caee84("dogleg_1_end");
}

/*
	Name: function_51caee84
	Namespace: namespace_63b4601c
	Checksum: 0xDA269CCD
	Offset: 0x4AA0
	Size: 0xF3
	Parameters: 1
	Flags: None
*/
function function_51caee84(var_6fbdf20)
{
	self endon("hash_128f8789");
	self endon("hash_643a7daf");
	level endon("hash_8a3b89d3");
	if(isdefined(var_6fbdf20))
	{
		level endon(var_6fbdf20);
	}
	var_ca775902 = function_c4d5ec1f("ar_marksman_veng_hero_weap");
	if(self function_48c6a3a2() == var_ca775902)
	{
		while(1)
		{
			self waittill("hash_9206d256", var_d13f855e);
			if(var_d13f855e == var_ca775902)
			{
				continue;
			}
			if(var_d13f855e != var_ca775902)
			{
				break;
			}
		}
	}
	self thread namespace_82b91a51::function_32d40124(&"COOP_EQUIP_SHEIVASSW", undefined, undefined, 4);
}

/*
	Name: function_b9785164
	Namespace: namespace_63b4601c
	Checksum: 0x5EF50BBE
	Offset: 0x4BA0
	Size: 0x79
	Parameters: 0
	Flags: None
*/
function function_b9785164()
{
	self endon("hash_643a7daf");
	while(isdefined(self))
	{
		self waittill("hash_9206d256", var_d13f855e);
		if(var_d13f855e.var_4be20d44 == "launcher_standard")
		{
			self thread function_fbd02062();
			self notify("hash_b8804640");
			break;
		}
	}
}

/*
	Name: function_b627f9ac
	Namespace: namespace_63b4601c
	Checksum: 0xBC849D36
	Offset: 0x4C28
	Size: 0x8B
	Parameters: 1
	Flags: None
*/
function function_b627f9ac(var_75ab460c)
{
	var_ca775902 = function_c4d5ec1f("ar_marksman_veng_hero_weap");
	if(!self function_2103ff4b(var_ca775902))
	{
		self function_860a040a(var_ca775902);
	}
	if(isdefined(var_75ab460c) && var_75ab460c)
	{
		self function_cb53a41e(var_ca775902);
	}
}

/*
	Name: function_fbd02062
	Namespace: namespace_63b4601c
	Checksum: 0x2FA6EA8A
	Offset: 0x4CC0
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_fbd02062()
{
	var_ca775902 = function_c4d5ec1f("ar_marksman_veng_hero_weap");
	if(self function_2103ff4b(var_ca775902))
	{
		self function_1f3745c0(var_ca775902);
	}
}

/*
	Name: function_bce5a9e
	Namespace: namespace_63b4601c
	Checksum: 0x106AD288
	Offset: 0x4D28
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_bce5a9e()
{
	self namespace_d84e54db::function_b4f5e3b9(1);
	self namespace_d84e54db::function_c9e45d52(1);
	self.var_fb7ce72a = &function_a7507be6;
	level waittill("hash_91737d19", var_52b4a338, var_5ed0c283);
	if(var_52b4a338.var_170527fb === "remote_snipers_ai")
	{
		var_52b4a338.var_5e36fd2e thread function_749b8ef8();
	}
}

/*
	Name: function_a7507be6
	Namespace: namespace_63b4601c
	Checksum: 0xF7EDD040
	Offset: 0x4DE0
	Size: 0x43
	Parameters: 2
	Flags: None
*/
function function_a7507be6(var_5dc5e20a, var_dfcc01fd)
{
	if(function_5dbf7eca(var_dfcc01fd.var_4be20d44, "hijack"))
	{
		return 1;
	}
}

/*
	Name: function_749b8ef8
	Namespace: namespace_63b4601c
	Checksum: 0xA00ECA32
	Offset: 0x4E30
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_749b8ef8()
{
	self endon("hash_643a7daf");
	self endon("hash_128f8789");
	self thread function_80d50798();
	self function_c20e893e(1);
	wait(1);
	self namespace_71e9cb84::function_e9c3870b("enemy_highlight", 1);
	while(self function_cb8df3d0())
	{
		wait(0.05);
	}
	self namespace_71e9cb84::function_e9c3870b("enemy_highlight", 0);
}

/*
	Name: function_f4c1160
	Namespace: namespace_63b4601c
	Checksum: 0x9AA06D9C
	Offset: 0x4EF0
	Size: 0x3DB
	Parameters: 1
	Flags: None
*/
function function_f4c1160(var_8c0019d7)
{
	self endon("hash_643a7daf");
	self endon("hash_128f8789");
	if(!function_85e4c3b3(var_8c0019d7))
	{
		return;
	}
	if(isdefined(self.var_3a92cc8f))
	{
		return;
	}
	self thread function_bf611bcc(&"CP_MI_SING_VENGEANCE_ACTIVATING_REMOTE_SNIPER", 2.5);
	self thread function_7a768ec("hijack_static_effect", 0, 1, 2);
	wait(2.5);
	var_8c0019d7.var_255b9315 = 1;
	var_d229c1e9 = function_a8fb77bd();
	self namespace_7cb6cd95::function_dc86efaa(var_d229c1e9, "begin");
	self namespace_7cb6cd95::function_dc86efaa(var_d229c1e9, "cloak");
	self namespace_7cb6cd95::function_dc86efaa(var_d229c1e9, "cloak_wait");
	self.var_3a92cc8f = self.var_722885f3;
	self.var_5b921246 = self function_89c87c9c();
	self function_a30814d(var_8c0019d7.var_722885f3);
	self function_eda2be50(var_8c0019d7 function_cd1d99bd("tag_flash"));
	self thread function_7a768ec("hijack_static_effect", 1, 0, 1.5);
	wait(0.05);
	var_8c0019d7 function_16337f9e(self, 0);
	var_8c0019d7 function_2821bb42(0);
	self thread function_c7ca0bfb();
	self thread function_80d50798();
	self function_c20e893e(1);
	self namespace_7cb6cd95::function_dc86efaa(var_d229c1e9, "return_wait");
	if(self.var_39b8096c)
	{
		var_8c0019d7 function_16337f9e(self, 0);
	}
	self namespace_71e9cb84::function_e9c3870b("enemy_highlight", 0);
	var_8c0019d7 function_2821bb42(1);
	self function_a30814d(self.var_3a92cc8f);
	self function_eda2be50(self.var_5b921246);
	self.var_3a92cc8f = undefined;
	self.var_5b921246 = undefined;
	self.var_a71359f0 = undefined;
	self thread namespace_7cb6cd95::function_13f4170a(2);
	self thread function_7a768ec("hijack_static_effect", 0, 0, 0);
	self namespace_7cb6cd95::function_dc86efaa(var_d229c1e9, "finish");
	wait(0.05);
	namespace_e216c11c::function_a5218027("visionset", "hijack_vehicle", self);
	namespace_e216c11c::function_a5218027("visionset", "hijack_vehicle_blur", self);
}

/*
	Name: function_7a768ec
	Namespace: namespace_63b4601c
	Checksum: 0x3B694752
	Offset: 0x52D8
	Size: 0x19B
	Parameters: 4
	Flags: None
*/
function function_7a768ec(var_7f86519e, var_b67bfdce, var_2fcd0a39, var_22e32101)
{
	/#
		namespace_33b293fd::function_a7ee953(function_65f192a6(self));
	#/
	self notify("sniper_roost_trans_cf_" + var_7f86519e);
	self endon("sniper_roost_trans_cf_" + var_7f86519e);
	self endon("hash_643a7daf");
	self endon("hash_128f8789");
	var_80e730ca = function_33724181(var_22e32101 * 1000);
	var_34fb19f = GetTime();
	var_b0875d69 = 0;
	var_b67bfdce = function_33724181(var_b67bfdce);
	var_2fcd0a39 = function_33724181(var_2fcd0a39);
	while(var_b0875d69 <= var_80e730ca)
	{
		var_9368ba0c = var_2fcd0a39;
		if(var_b0875d69 < var_80e730ca)
		{
			var_9368ba0c = var_b67bfdce + var_2fcd0a39 - var_b67bfdce * var_b0875d69 / var_80e730ca;
		}
		self namespace_71e9cb84::function_e9c3870b(var_7f86519e, var_9368ba0c);
		wait(0.05);
		var_b0875d69 = function_33724181(GetTime() - var_34fb19f);
	}
}

/*
	Name: function_bf611bcc
	Namespace: namespace_63b4601c
	Checksum: 0x657420A6
	Offset: 0x5480
	Size: 0xB3
	Parameters: 2
	Flags: None
*/
function function_bf611bcc(var_813fc428, var_62240a71)
{
	self notify("hash_bf611bcc");
	self endon("hash_bf611bcc");
	self endon("hash_643a7daf");
	var_b444826e = function_a8fb77bd();
	var_b444826e.var_2888112b = var_813fc428;
	var_b444826e.var_62240a71 = var_62240a71;
	self namespace_4d476a30::function_a73c3a23(var_b444826e);
	wait(var_62240a71);
	self namespace_4d476a30::function_efac4cb1();
}

/*
	Name: function_c7ca0bfb
	Namespace: namespace_63b4601c
	Checksum: 0x60B2C737
	Offset: 0x5540
	Size: 0x125
	Parameters: 0
	Flags: None
*/
function function_c7ca0bfb()
{
	self endon("hash_643a7daf");
	self.var_39b8096c = 0;
	var_e48beec7 = GetTime() + 45000;
	while(isdefined(self.var_91c8e9a9) && self.var_91c8e9a9 && !self.var_39b8096c)
	{
		self namespace_71e9cb84::function_e9c3870b("enemy_highlight", 1);
		wait(0.05);
		self.var_39b8096c = isdefined(self.var_91c8e9a9) && self.var_91c8e9a9 && GetTime() > var_e48beec7;
		if(var_e48beec7 - GetTime() < 3000)
		{
			self notify("hash_4efa2e41");
			if(!(isdefined(self.var_a71359f0) && self.var_a71359f0))
			{
				self.var_a71359f0 = 1;
				self thread function_7a768ec("hijack_static_effect", 0, 1, 2);
			}
		}
	}
	self notify("hash_c68b15c8");
}

/*
	Name: function_80d50798
	Namespace: namespace_63b4601c
	Checksum: 0x7A47C2CE
	Offset: 0x5670
	Size: 0x1DF
	Parameters: 0
	Flags: None
*/
function function_80d50798()
{
	self endon("hash_c68b15c8");
	self endon("hash_128f8789");
	self endon("hash_643a7daf");
	while(1)
	{
		self waittill("hash_c56ba9f7", var_8bcb913d, var_ba36487d, var_dfcc01fd);
		if(function_8d0347b8(var_8bcb913d))
		{
			if(function_62e4226e(100) > 50)
			{
				namespace_97d6aab7::function_65d0a3eb(var_8bcb913d);
			}
			if(function_62e4226e(100) > 50)
			{
				namespace_97d6aab7::function_18b95d62(var_8bcb913d);
			}
			if(function_62e4226e(100) > 50)
			{
				namespace_97d6aab7::function_ee545103(var_8bcb913d);
			}
			if(function_62e4226e(100) > 50)
			{
				namespace_97d6aab7::function_ecbdc254(var_8bcb913d);
			}
			else
			{
				namespace_97d6aab7::function_6bd6a8e5(var_8bcb913d);
			}
		}
		if(function_8d0347b8(var_8bcb913d))
		{
			var_30f3afa7 = var_8bcb913d.var_722885f3 - VectorScale((0, 0, 1), 50);
			wait(0.05);
			function_534b3cba(var_30f3afa7, 100, 10, 5000);
		}
	}
}

/*
	Name: function_2821bb42
	Namespace: namespace_63b4601c
	Checksum: 0x32D4D2C3
	Offset: 0x5858
	Size: 0x181
	Parameters: 1
	Flags: None
*/
function function_2821bb42(var_5ab41da9)
{
	var_6e89a7da = [];
	var_6e89a7da[var_6e89a7da.size] = "tag_turret";
	var_6e89a7da[var_6e89a7da.size] = "tag_turret_animate";
	var_6e89a7da[var_6e89a7da.size] = "tag_barrel";
	var_6e89a7da[var_6e89a7da.size] = "tag_barrel_animate";
	var_6e89a7da[var_6e89a7da.size] = "tag_sensor_animate";
	var_6e89a7da[var_6e89a7da.size] = "tag_ammo_belt_animate";
	var_6e89a7da[var_6e89a7da.size] = "tag_ammo_can_animate";
	var_6e89a7da[var_6e89a7da.size] = "tag_barrel_spin";
	var_6e89a7da[var_6e89a7da.size] = "tag_barrel_spin_animate";
	foreach(var_1b2a0d26 in var_6e89a7da)
	{
		if(var_5ab41da9)
		{
			self function_123d36d9(var_1b2a0d26);
			continue;
		}
		self function_db20c8d6(var_1b2a0d26);
	}
}

/*
	Name: function_5a886ae0
	Namespace: namespace_63b4601c
	Checksum: 0x437F9949
	Offset: 0x59E8
	Size: 0x2EF
	Parameters: 0
	Flags: None
*/
function function_5a886ae0()
{
	self endon("hash_128f8789");
	self notify("hash_90a20e6d");
	self endon("hash_90a20e6d");
	while(1)
	{
		var_e3b635fb = [];
		var_dea76e58 = function_b8494651("axis");
		foreach(var_d84e54db in var_dea76e58)
		{
			if(!isdefined(var_d84e54db))
			{
				continue;
			}
			if(!function_5b49d38c(var_d84e54db))
			{
				continue;
			}
			if(function_85e4c3b3(var_d84e54db))
			{
				continue;
			}
			if(namespace_ad06727a::function_437e9eec(var_d84e54db))
			{
				continue;
			}
			if(!isdefined(var_e3b635fb))
			{
				var_e3b635fb = [];
			}
			else if(!function_6e2770d8(var_e3b635fb))
			{
				var_e3b635fb = function_84970cc4(var_e3b635fb);
			}
			var_e3b635fb[var_e3b635fb.size] = var_d84e54db;
		}
		if(isdefined(var_e3b635fb) && var_e3b635fb.size > 0)
		{
			var_e3b635fb = function_57efbe1(var_e3b635fb, self.var_722885f3, 2, 64, 800);
			if(isdefined(var_e3b635fb) && var_e3b635fb.size > 0)
			{
				switch(function_26299103(4))
				{
					case 0:
					{
						self thread namespace_175490fb::function_d240e350("cybercom_fireflyswarm", var_e3b635fb);
						break;
					}
					case 1:
					{
						self thread namespace_175490fb::function_d240e350("cybercom_concussive");
						break;
					}
					case 2:
					{
						self thread namespace_175490fb::function_d240e350("cybercom_systemoverload", var_e3b635fb);
						break;
					}
					case 3:
					{
						self thread namespace_175490fb::function_d240e350("cybercom_servoshortout", var_e3b635fb);
						break;
					}
				}
				wait(function_72a94f05(20, 30));
			}
		}
		wait(2);
	}
}

/*
	Name: function_e6399870
	Namespace: namespace_63b4601c
	Checksum: 0x1FACDE79
	Offset: 0x5CE0
	Size: 0x101
	Parameters: 3
	Flags: None
*/
function function_e6399870(var_b8da2278, var_5e953b6, var_6971862e)
{
	if(!isdefined(var_5e953b6))
	{
		var_5e953b6 = "targetname";
	}
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_6971862e));
	#/
	var_cbf69fd2 = function_99201f25(var_b8da2278, var_5e953b6);
	foreach(var_4dbf3ae3 in var_cbf69fd2)
	{
		var_4dbf3ae3 thread function_b88d5e7(var_6971862e);
	}
}

/*
	Name: function_b88d5e7
	Namespace: namespace_63b4601c
	Checksum: 0xFB4CD404
	Offset: 0x5DF0
	Size: 0x419
	Parameters: 1
	Flags: None
*/
function function_b88d5e7(var_6971862e)
{
	var_b3db42a9 = undefined;
	if(isdefined(self.var_b07228b6))
	{
		var_b3db42a9 = namespace_14b42b8a::function_7faf4c39(self.var_b07228b6, "targetname");
	}
	if(!isdefined(var_b3db42a9) && isdefined(self.var_b07228b6))
	{
		var_b3db42a9 = function_99201f25(self.var_b07228b6, "targetname");
	}
	if(!isdefined(var_b3db42a9) || var_b3db42a9.size == 0)
	{
		/#
			function_2e4b8c78("Dev Block strings are not supported" + self.var_722885f3);
		#/
		return;
	}
	while(1)
	{
		self waittill("hash_4dbf3ae3", var_5dc5e20a);
		if(!function_65f192a6(var_5dc5e20a))
		{
			continue;
		}
		while(var_b3db42a9.size > 0)
		{
			var_c89de9c6 = function_b8494651("axis");
			var_c89de9c6 = function_57efbe1(var_c89de9c6, self.var_722885f3, 64, 0, 1000);
			foreach(var_d84e54db in var_c89de9c6)
			{
				if(var_b3db42a9.size <= 0)
				{
					break;
				}
				if(!isdefined(var_d84e54db) || !function_8d0347b8(var_d84e54db) || !function_5b49d38c(var_d84e54db))
				{
					break;
				}
				if(!(isdefined(var_d84e54db.var_8fc0e50e) && (var_d84e54db.var_8fc0e50e == "human" || var_d84e54db.var_8fc0e50e == "human_riotshield" || var_d84e54db.var_8fc0e50e == "human_rpg" || var_d84e54db.var_8fc0e50e == "civilian")))
				{
					break;
				}
				if(isdefined(var_d84e54db.var_25ce4365))
				{
					break;
				}
				if(var_d84e54db function_32fa5072(self))
				{
					break;
				}
				foreach(var_daf22616 in var_b3db42a9)
				{
					if(!isdefined(var_d84e54db) || !function_8d0347b8(var_d84e54db) || !function_5b49d38c(var_d84e54db))
					{
						break;
					}
					var_a051f85d = var_d84e54db function_25ce4365(var_daf22616.var_722885f3);
					if(isdefined(var_a051f85d))
					{
						var_daf22616 thread function_9856bfc7(var_a051f85d);
						var_b3db42a9[var_5e76f0af] = undefined;
						break;
					}
				}
			}
			if(var_b3db42a9.size > 0)
			{
				wait(1);
			}
		}
	}
}

/*
	Name: function_9856bfc7
	Namespace: namespace_63b4601c
	Checksum: 0xF1320DEF
	Offset: 0x6218
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_9856bfc7(var_a051f85d)
{
	var_a051f85d waittill("hash_128f8789");
	if(isdefined(self.var_a33b36db))
	{
		namespace_80983c42::function_80983c42(self.var_a33b36db);
	}
}

/*
	Name: function_c7b05b81
	Namespace: namespace_63b4601c
	Checksum: 0x6A525560
	Offset: 0x6268
	Size: 0x6F
	Parameters: 1
	Flags: None
*/
function function_c7b05b81(var_6971862e)
{
	self endon("hash_128f8789");
	while(1)
	{
		self waittill("hash_4dbf3ae3", var_5dc5e20a);
		if(!function_65f192a6(var_5dc5e20a))
		{
			continue;
		}
		var_5dc5e20a thread function_18538df(self, var_6971862e);
	}
}

/*
	Name: function_18538df
	Namespace: namespace_63b4601c
	Checksum: 0xEBA167C5
	Offset: 0x62E0
	Size: 0xEF
	Parameters: 2
	Flags: None
*/
function function_18538df(var_4dbf3ae3, var_6971862e)
{
	self endon("hash_128f8789");
	self endon("hash_643a7daf");
	self notify("molotov_trigger_damage_thread_" + var_4dbf3ae3 function_c7f3ce11());
	self endon("molotov_trigger_damage_thread_" + var_4dbf3ae3 function_c7f3ce11());
	if(!isdefined(self.var_c8adaf48))
	{
		self.var_c8adaf48 = 0;
	}
	while(self function_32fa5072(var_4dbf3ae3))
	{
		if(GetTime() - self.var_c8adaf48 >= 1000)
		{
			self.var_c8adaf48 = GetTime();
			self function_c3945cd5(var_6971862e, self.var_722885f3);
		}
		wait(0.05);
	}
}

/*
	Name: function_25ce4365
	Namespace: namespace_63b4601c
	Checksum: 0x6ACFD962
	Offset: 0x63D8
	Size: 0x2B9
	Parameters: 2
	Flags: None
*/
function function_25ce4365(var_1c83c677, var_4ccd5cb0)
{
	self endon("hash_128f8789");
	/#
		namespace_33b293fd::function_a7ee953(function_8d0347b8(self));
	#/
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_1c83c677));
	#/
	/#
		namespace_33b293fd::function_a7ee953(function_4451c715(var_1c83c677));
	#/
	self.var_25ce4365 = 1;
	var_ca775902 = function_c4d5ec1f("molotov_vengeance");
	var_a14d51c4 = undefined;
	if(isdefined(var_ca775902))
	{
		var_a14d51c4 = self function_dafe90e0(self function_501eb072(), var_1c83c677, 10, var_ca775902);
		if(!isdefined(var_a14d51c4))
		{
			self.var_25ce4365 = undefined;
			return undefined;
		}
		else
		{
			var_a14d51c4 thread function_1a32c391(0.05);
			var_a14d51c4 = undefined;
		}
		var_de878e17 = [];
		var_de878e17[0] = self;
		var_521db653 = function_a8fb77bd();
		var_521db653.var_722885f3 = self.var_722885f3;
		var_521db653.var_6ab6f4fd = (0, function_bdcdc423(var_1c83c677 - self.var_722885f3)[1], 0);
		if(function_5b49d38c(self))
		{
			var_521db653 thread namespace_cc27597::function_43718187(var_de878e17, "cin_ven_gen_grenade_throw_a");
			self waittill("hash_b4f3378");
			var_10c74fb1 = self function_d48f2ab3("J_Thumb_RI_1");
			var_a14d51c4 = self function_dafe90e0(var_10c74fb1, var_1c83c677, 10, var_ca775902);
			self.var_1fd9293d = var_a14d51c4;
			if(isdefined(var_4ccd5cb0) && var_4ccd5cb0)
			{
				self thread function_85c2c12();
			}
		}
	}
	self.var_25ce4365 = undefined;
	return var_a14d51c4;
}

/*
	Name: function_85c2c12
	Namespace: namespace_63b4601c
	Checksum: 0x34D37281
	Offset: 0x66A0
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_85c2c12()
{
	self endon("hash_128f8789");
	self namespace_d84e54db::function_c9e45d52(1);
	if(isdefined(self.var_1fd9293d))
	{
		self.var_1fd9293d waittill("hash_128f8789");
		wait(0.5);
	}
	self namespace_d84e54db::function_c9e45d52(0);
}

/*
	Name: function_1a32c391
	Namespace: namespace_63b4601c
	Checksum: 0xD5518401
	Offset: 0x6710
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function function_1a32c391(var_60db70fa)
{
	self endon("hash_128f8789");
	wait(var_60db70fa);
	self function_dc8c8404();
}

/*
	Name: function_f9c94344
	Namespace: namespace_63b4601c
	Checksum: 0x52A7A8D9
	Offset: 0x6750
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_f9c94344()
{
	level endon("hash_8a3b89d3");
	self endon("hash_128f8789");
	self waittill("hash_4dbf3ae3");
	namespace_ad06727a::function_9aa26b41();
}

/*
	Name: function_e3420328
	Namespace: namespace_63b4601c
	Checksum: 0x777AD70A
	Offset: 0x6798
	Size: 0x63
	Parameters: 2
	Flags: None
*/
function function_e3420328(var_cc27597, var_6fbdf20)
{
	level thread namespace_cc27597::function_43718187(var_cc27597);
	level namespace_ad23e503::function_1ab5ebec(var_6fbdf20);
	level thread namespace_cc27597::function_fcf56ab5(var_cc27597, 1);
}

/*
	Name: function_65a61b78
	Namespace: namespace_63b4601c
	Checksum: 0x8D93F120
	Offset: 0x6808
	Size: 0x147
	Parameters: 2
	Flags: None
*/
function function_65a61b78(var_c77d2837, var_6a07eb6c)
{
	level namespace_ad23e503::function_1ab5ebec("all_players_spawned");
	foreach(var_6bfe1586 in level.var_2395e945)
	{
		foreach(var_806fd666 in var_6a07eb6c)
		{
			if(isdefined(var_c77d2837[var_806fd666]))
			{
				var_c77d2837[var_806fd666] namespace_71e9cb84::function_74d6b22f("mature_hide", 1);
			}
		}
	}
}

/*
	Name: function_638bf7ab
	Namespace: namespace_63b4601c
	Checksum: 0x10602F6F
	Offset: 0x6958
	Size: 0xFB
	Parameters: 1
	Flags: None
*/
function function_638bf7ab(var_6fbdf20)
{
	var_6df9264 = function_9b7fda5e("script_model", self.var_722885f3);
	var_6df9264.var_6ab6f4fd = self.var_6ab6f4fd;
	var_6df9264 function_e48f905e(self.var_6df9264);
	var_6df9264 thread namespace_cc27597::function_43718187(self.var_caae374e, var_6df9264);
	wait(0.1);
	var_6df9264 namespace_1fb6a2e5::function_9688e0cb();
	level namespace_ad23e503::function_1ab5ebec(var_6fbdf20);
	if(isdefined(var_6df9264))
	{
		var_6df9264 function_470f7e4c();
		var_6df9264 function_dc8c8404();
	}
}

/*
	Name: function_a084a58f
	Namespace: namespace_63b4601c
	Checksum: 0xFF2643E9
	Offset: 0x6A60
	Size: 0x13
	Parameters: 0
	Flags: None
*/
function function_a084a58f()
{
	namespace_9f824288::function_5d2cdd99();
}

/*
	Name: function_ac2b4535
	Namespace: namespace_63b4601c
	Checksum: 0x77866142
	Offset: 0x6A80
	Size: 0xC3
	Parameters: 3
	Flags: None
*/
function function_ac2b4535(var_294306eb, var_54f8120e, var_ddaacf8f)
{
	if(!isdefined(var_ddaacf8f))
	{
		var_ddaacf8f = 1;
	}
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_294306eb), "Dev Block strings are not supported");
	#/
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_54f8120e), "Dev Block strings are not supported");
	#/
	namespace_cc27597::function_8f9f34e0(var_294306eb, &function_96861272, "players_done");
	level thread function_cb1e4146(var_294306eb, var_54f8120e, var_ddaacf8f);
}

/*
	Name: function_96861272
	Namespace: namespace_63b4601c
	Checksum: 0x76905281
	Offset: 0x6B50
	Size: 0x19
	Parameters: 1
	Flags: None
*/
function function_96861272(var_c77d2837)
{
	level notify("hash_552e05fb");
}

/*
	Name: function_cb1e4146
	Namespace: namespace_63b4601c
	Checksum: 0x22BFF42A
	Offset: 0x6B78
	Size: 0x173
	Parameters: 3
	Flags: None
*/
function function_cb1e4146(var_294306eb, var_54f8120e, var_ddaacf8f)
{
	level waittill("hash_552e05fb");
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a function_8c8e79fe();
	}
	namespace_82b91a51::function_93831e79(var_54f8120e);
	wait(0.5);
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a function_48f26766();
	}
	if(isdefined(var_ddaacf8f) && var_ddaacf8f)
	{
		namespace_9f824288::function_5d2cdd99();
	}
}

/*
	Name: function_4e8207e9
	Namespace: namespace_63b4601c
	Checksum: 0x5152F271
	Offset: 0x6CF8
	Size: 0x4B
	Parameters: 2
	Flags: None
*/
function function_4e8207e9(var_6194780b, var_864a3d55)
{
	if(!isdefined(var_864a3d55))
	{
		var_864a3d55 = 1;
	}
	level namespace_71e9cb84::function_74d6b22f("fxanims_" + var_6194780b, var_864a3d55);
}

/*
	Name: function_1c347e72
	Namespace: namespace_63b4601c
	Checksum: 0x34AF300E
	Offset: 0x6D50
	Size: 0x6B
	Parameters: 2
	Flags: None
*/
function function_1c347e72(var_a0b86a77, var_bb76866b)
{
	function_9e3608e3(var_a0b86a77);
	var_398ffcb7 = function_99201f25(var_bb76866b, "targetname");
	namespace_84970cc4::function_7e64f710(var_398ffcb7);
}

/*
	Name: function_ba7c52d5
	Namespace: namespace_63b4601c
	Checksum: 0x15416A69
	Offset: 0x6DC8
	Size: 0x2B
	Parameters: 2
	Flags: None
*/
function function_ba7c52d5(var_c77d2837, var_a0b86a77)
{
	function_6ddd4fa4(var_a0b86a77);
}

/*
	Name: function_a72c2dda
	Namespace: namespace_63b4601c
	Checksum: 0xCD9FA4C7
	Offset: 0x6E00
	Size: 0xD1
	Parameters: 2
	Flags: None
*/
function function_a72c2dda(var_c77d2837, var_a0b86a77)
{
	function_6ddd4fa4(var_a0b86a77);
	foreach(var_a3d46ee4 in var_c77d2837)
	{
		if(isdefined(var_a3d46ee4) && !function_5cfb84bb(var_a3d46ee4))
		{
			var_a3d46ee4 function_dc8c8404();
		}
	}
}

/*
	Name: function_f832e2fa
	Namespace: namespace_63b4601c
	Checksum: 0x825D127
	Offset: 0x6EE0
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_f832e2fa()
{
	if(function_8d0347b8(self))
	{
		return;
	}
	self.var_255b9315 = 1;
	self.var_c584775c = 1;
	self.var_3e94206a = "allies";
	self namespace_71e9cb84::function_74d6b22f("thermal_active", 1);
	self namespace_82b91a51::function_5b7e3888("death", "cleanup");
	if(isdefined(self))
	{
		self namespace_71e9cb84::function_74d6b22f("thermal_active", 0);
	}
}

/*
	Name: function_5fbec645
	Namespace: namespace_63b4601c
	Checksum: 0x31F24B6A
	Offset: 0x6FA8
	Size: 0x4B
	Parameters: 4
	Flags: None
*/
function function_5fbec645(var_d0fd3b65, var_67520c6a, var_61690ed5, var_30c07c99)
{
	self function_6ac438(0, var_d0fd3b65, var_67520c6a, var_61690ed5, var_30c07c99);
}

/*
	Name: function_ee75acde
	Namespace: namespace_63b4601c
	Checksum: 0xEE24EBA8
	Offset: 0x7000
	Size: 0x4B
	Parameters: 4
	Flags: None
*/
function function_ee75acde(var_d0fd3b65, var_67520c6a, var_61690ed5, var_30c07c99)
{
	self function_6ac438(1, var_d0fd3b65, var_67520c6a, var_61690ed5, var_30c07c99);
}

/*
	Name: function_6ac438
	Namespace: namespace_63b4601c
	Checksum: 0xEB3F4442
	Offset: 0x7058
	Size: 0x25B
	Parameters: 5
	Flags: Private
*/
function private function_6ac438(var_a463d127, var_d0fd3b65, var_67520c6a, var_61690ed5, var_30c07c99)
{
	var_8ef9b1c0 = function_d6df1f20(var_d0fd3b65, "_");
	var_f2205aa2 = var_8ef9b1c0[0];
	if(!isdefined(level.var_ad06727a) || var_f2205aa2 != "hend")
	{
		if(var_a463d127)
		{
			self namespace_71b8dba1::function_a463d127(var_d0fd3b65, var_67520c6a, undefined, var_30c07c99);
		}
		else
		{
			self namespace_71b8dba1::function_81141386(var_d0fd3b65, var_67520c6a, undefined, var_30c07c99);
		}
		return;
	}
	var_1f09bc21 = [];
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		if(!isdefined(var_30c07c99) || var_5dc5e20a == var_30c07c99)
		{
			self thread function_cb760154(var_a463d127, var_d0fd3b65, var_67520c6a, var_61690ed5, var_5dc5e20a);
			var_1f09bc21[var_1f09bc21.size] = var_5dc5e20a;
		}
	}
	while(var_1f09bc21.size)
	{
		for(var_c957f6b6 = var_1f09bc21.size - 1; var_c957f6b6 >= 0; var_c957f6b6--)
		{
			if(!isdefined(var_1f09bc21[var_c957f6b6]) || !isdefined(var_1f09bc21[var_c957f6b6].var_90180902) || !isdefined(var_1f09bc21[var_c957f6b6].var_90180902[var_f2205aa2]))
			{
				var_1f09bc21[var_c957f6b6] = undefined;
			}
		}
		wait(0.05);
	}
}

/*
	Name: function_cb760154
	Namespace: namespace_63b4601c
	Checksum: 0xDBEC0878
	Offset: 0x72C0
	Size: 0x1BF
	Parameters: 5
	Flags: Private
*/
function private function_cb760154(var_a463d127, var_d0fd3b65, var_67520c6a, var_61690ed5, var_30c07c99)
{
	var_30c07c99 endon("hash_643a7daf");
	/#
		namespace_33b293fd::function_a7ee953(function_65f192a6(var_30c07c99));
	#/
	var_8ef9b1c0 = function_d6df1f20(var_d0fd3b65, "_");
	var_f2205aa2 = var_8ef9b1c0[0];
	if(!isdefined(var_61690ed5))
	{
		var_61690ed5 = 0;
	}
	if(!isdefined(var_67520c6a))
	{
		var_67520c6a = 0;
	}
	if(!isdefined(var_30c07c99.var_90180902))
	{
		var_30c07c99.var_90180902 = [];
	}
	var_a5b0e2ce = -1;
	if(isdefined(var_30c07c99.var_90180902[var_f2205aa2]))
	{
		var_a5b0e2ce = var_30c07c99.var_90180902[var_f2205aa2];
	}
	if(var_a5b0e2ce > -1)
	{
		return;
	}
	var_30c07c99.var_90180902[var_f2205aa2] = var_61690ed5;
	if(var_a463d127)
	{
		self namespace_71b8dba1::function_a463d127(var_d0fd3b65, var_67520c6a, undefined, var_30c07c99);
	}
	else
	{
		self namespace_71b8dba1::function_81141386(var_d0fd3b65, var_67520c6a, undefined, var_30c07c99);
	}
	var_30c07c99.var_90180902[var_f2205aa2] = undefined;
}

/*
	Name: function_e00864bd
	Namespace: namespace_63b4601c
	Checksum: 0x49E334F3
	Offset: 0x7488
	Size: 0x93
	Parameters: 3
	Flags: None
*/
function function_e00864bd(var_7d67c678, var_86c93e40, var_3d29746)
{
	var_50bda1f6 = function_6ada35ba(var_7d67c678, "targetname");
	wait(0.1);
	var_50bda1f6 function_8c8e79fe();
	var_50bda1f6 function_422037f5();
	function_bab1ff00(var_3d29746, var_86c93e40);
}

/*
	Name: function_ffaf4723
	Namespace: namespace_63b4601c
	Checksum: 0x51C8CEDB
	Offset: 0x7528
	Size: 0x187
	Parameters: 4
	Flags: None
*/
function function_ffaf4723(var_bc601a70, var_7d67c678, var_3d29746, var_ad23e503)
{
	level endon(var_ad23e503);
	var_88cf688e = function_6ada35ba(var_bc601a70, "targetname");
	var_50bda1f6 = function_6ada35ba(var_7d67c678, "targetname");
	var_50bda1f6 function_8c8e79fe();
	var_50bda1f6 function_422037f5();
	while(1)
	{
		var_2d00103e = 0;
		foreach(var_5dc5e20a in level.var_9b1393e7)
		{
			if(var_5dc5e20a function_32fa5072(var_88cf688e))
			{
				var_2d00103e = 1;
				break;
			}
		}
		function_bab1ff00(var_3d29746, var_2d00103e);
		wait(0.1);
	}
}

