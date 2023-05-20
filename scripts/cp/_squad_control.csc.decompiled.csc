#using scripts\codescripts\struct;
#using scripts\shared\audio_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\duplicaterender_mgr;
#using scripts\shared\flagsys_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;
#using scripts\shared\visionset_mgr_shared;

#namespace namespace_36171bd3;

/*
	Name: function_2dc19561
	Namespace: namespace_36171bd3
	Checksum: 0x50E7EC9
	Offset: 0x618
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("squad_control", &function_8c87d8eb, undefined, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_36171bd3
	Checksum: 0xF4032903
	Offset: 0x658
	Size: 0x39B
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	level.var_4895afd5 = [];
	for(var_c957f6b6 = 0; var_c957f6b6 < 4; var_c957f6b6++)
	{
		var_cbb15570 = "keyline_outline_p" + var_c957f6b6;
		namespace_71e9cb84::function_50f16166("actor", var_cbb15570, 1, 2, "int", &function_29cf4c66, 0, 0);
		namespace_71e9cb84::function_50f16166("vehicle", var_cbb15570, 1, 2, "int", &function_29cf4c66, 0, 0);
		namespace_71e9cb84::function_50f16166("scriptmover", var_cbb15570, 1, 3, "int", &function_29cf4c66, 0, 0);
		level.var_4895afd5[var_cbb15570] = var_c957f6b6;
	}
	level.var_c1aa5253["squad_waypoint_base_client"] = "ui/fx_ui_flagbase_blue";
	level.var_e19a7b29 = [];
	for(var_c957f6b6 = 0; var_c957f6b6 < 4; var_c957f6b6++)
	{
		var_cbb15570 = "squad_indicator_p" + var_c957f6b6;
		namespace_71e9cb84::function_50f16166("actor", var_cbb15570, 1, 1, "int", &function_2636ef23, 0, 0);
		level.var_e19a7b29[var_cbb15570] = var_c957f6b6;
	}
	namespace_1c38f9cf::function_c20cc247("sitrep_keyline_white", 25, "keyline_active_white", "keyfill_active_white", 2, "mc/hud_outline_model_z_white", 0);
	namespace_1c38f9cf::function_c20cc247("sitrep_keyline_red", 25, "keyline_active_red", "keyfill_active_red", 2, "mc/hud_outline_model_red", 0);
	namespace_1c38f9cf::function_c20cc247("sitrep_keyline_green", 25, "keyline_active_green", "keyfill_active_green", 2, "mc/hud_outline_model_green", 0);
	namespace_1c38f9cf::function_c20cc247("sitrep_keyline_white_through_walls", 25, "keyline_active_white_through_walls", "keyfill_active_white_through_walls", 2, "mc/hud_outline_model_white", 1);
	namespace_71e9cb84::function_50f16166("actor", "robot_camo_shader", 1, 3, "int", &function_f532bd65, 0, 1);
	namespace_1c38f9cf::function_787bc305("camo_fr", 90, "gadget_camo_on,gadget_camo_friend", "gadget_camo_flicker,gadget_camo_break", 0, "mc/hud_outline_predator_camo_active_ally");
	namespace_1c38f9cf::function_787bc305("camo_fr_fl", 80, "gadget_camo_on,gadget_camo_flicker,gadget_camo_friend", "gadget_camo_break", 0, "mc/hud_outline_predator_camo_disruption_ally");
	namespace_1c38f9cf::function_787bc305("camo_brk", 70, "gadget_camo_on,gadget_camo_break", undefined, 0, "mc/hud_outline_predator_break");
}

/*
	Name: function_29cf4c66
	Namespace: namespace_36171bd3
	Checksum: 0x4EB77184
	Offset: 0xA00
	Size: 0x27B
	Parameters: 7
	Flags: None
*/
function function_29cf4c66(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	self endon("hash_d5da096");
	var_4bc288a0 = level.var_4895afd5[var_7f86519e];
	var_6bfe1586 = function_79c174a3(var_ec74b091);
	if(!isdefined(var_6bfe1586) || var_4bc288a0 != var_6bfe1586 function_c7f3ce11())
	{
		return;
	}
	/#
		namespace_33b293fd::function_a7ee953(isdefined(self), "Dev Block strings are not supported");
	#/
	level namespace_957e94ce::function_1ab5ebec("duplicaterender_registry_ready");
	/#
		namespace_33b293fd::function_a7ee953(isdefined(self), "Dev Block strings are not supported");
	#/
	if(var_9193c732 == 1)
	{
		self namespace_1c38f9cf::function_c4cc39ce(var_ec74b091, "keyline_active_white", "keyfill_active_white");
	}
	else if(var_9193c732 == 2)
	{
		self namespace_1c38f9cf::function_c4cc39ce(var_ec74b091, "keyline_active_red", "keyfill_active_red");
	}
	else if(var_9193c732 == 3)
	{
		self namespace_1c38f9cf::function_c4cc39ce(var_ec74b091, "keyline_active_green", "keyfill_active_green");
	}
	else if(var_9193c732 == 4)
	{
		self namespace_1c38f9cf::function_c4cc39ce(var_ec74b091, "keyline_active_white_through_walls", "keyfill_active_white_through_walls");
	}
	else
	{
		self namespace_1c38f9cf::function_c4cc39ce(var_ec74b091, undefined, "keyline_active_white,keyfill_active_white");
		self namespace_1c38f9cf::function_c4cc39ce(var_ec74b091, undefined, "keyline_active_red,keyfill_active_red");
		self namespace_1c38f9cf::function_c4cc39ce(var_ec74b091, undefined, "keyline_active_green,keyfill_active_green");
		self namespace_1c38f9cf::function_c4cc39ce(var_ec74b091, undefined, "keyline_active_white_through_walls,keyfill_active_white_through_walls");
	}
}

/*
	Name: function_f532bd65
	Namespace: namespace_36171bd3
	Checksum: 0x2C2F2C53
	Offset: 0xC88
	Size: 0xCB
	Parameters: 7
	Flags: None
*/
function function_f532bd65(var_1094988d, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	self namespace_1c38f9cf::function_1e56fc11("gadget_camo_flicker", var_9193c732 == 2);
	self namespace_1c38f9cf::function_1e56fc11("gadget_camo_break", var_9193c732 == 3);
	self namespace_1c38f9cf::function_1e56fc11("gadget_camo_on", var_9193c732 != 0);
	self namespace_1c38f9cf::function_c4cc39ce(var_1094988d);
}

/*
	Name: function_2636ef23
	Namespace: namespace_36171bd3
	Checksum: 0xC0DAB579
	Offset: 0xD60
	Size: 0xF3
	Parameters: 7
	Flags: None
*/
function function_2636ef23(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	var_4bc288a0 = level.var_e19a7b29[var_7f86519e];
	var_6bfe1586 = function_79c174a3(var_ec74b091);
	if(!isdefined(var_6bfe1586) || var_4bc288a0 != var_6bfe1586 function_c7f3ce11())
	{
		return;
	}
	if(var_9193c732 === 1)
	{
		self thread function_cffc9622(var_ec74b091);
	}
	else if(var_9193c732 === 0)
	{
		self thread function_50bf7fe9(var_ec74b091);
	}
}

/*
	Name: function_cffc9622
	Namespace: namespace_36171bd3
	Checksum: 0xB5A6F6E3
	Offset: 0xE60
	Size: 0xAB
	Parameters: 1
	Flags: None
*/
function function_cffc9622(var_ec74b091)
{
	self.var_56f42b55 = namespace_82b91a51::function_b9fd52a4(var_ec74b091, "tag_origin", self.var_722885f3, self.var_6ab6f4fd + VectorScale((-1, 0, 0), 90));
	self.var_56f42b55 function_37f7858a(self);
	self.var_c8a562aa = function_da6acfd2(var_ec74b091, level.var_c1aa5253["squad_waypoint_base_client"], self.var_56f42b55, "tag_origin");
}

/*
	Name: function_50bf7fe9
	Namespace: namespace_36171bd3
	Checksum: 0xBCC6F4F8
	Offset: 0xF18
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function function_50bf7fe9(var_ec74b091)
{
	if(isdefined(self.var_c8a562aa))
	{
		function_28573e36(var_ec74b091, self.var_c8a562aa, 1);
	}
	if(isdefined(self.var_56f42b55))
	{
		self.var_56f42b55 function_dc8c8404();
	}
}

