#using scripts\codescripts\struct;
#using scripts\cp\_load;
#using scripts\cp\cp_mi_zurich_newworld_util;
#using scripts\shared\clientfield_shared;
#using scripts\shared\fx_shared;
#using scripts\shared\postfx_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace namespace_ce0e5f06;

/*
	Name: function_2dc19561
	Namespace: namespace_ce0e5f06
	Checksum: 0x59A4E969
	Offset: 0xAB8
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("newworld_util", &function_8c87d8eb, undefined, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_ce0e5f06
	Checksum: 0xA023DC9E
	Offset: 0xAF8
	Size: 0x13
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	function_2ea898a8();
}

/*
	Name: function_2ea898a8
	Namespace: namespace_ce0e5f06
	Checksum: 0x81F7022E
	Offset: 0xB18
	Size: 0x6C3
	Parameters: 0
	Flags: None
*/
function function_2ea898a8()
{
	namespace_71e9cb84::function_50f16166("actor", "derez_ai_deaths", 1, 1, "int", &function_ecc75bea, 0, 0);
	namespace_71e9cb84::function_50f16166("actor", "cs_rez_in_fx", 1, 2, "counter", &function_9b9abce4, 0, 0);
	namespace_71e9cb84::function_50f16166("actor", "cs_rez_out_fx", 1, 2, "counter", &function_be66c05b, 0, 0);
	namespace_71e9cb84::function_50f16166("actor", "chase_suspect_fx", 1, 1, "int", &function_6e7d0ca2, 0, 0);
	namespace_71e9cb84::function_50f16166("actor", "wall_run_fx", 1, 1, "int", &function_752d4412, 0, 0);
	namespace_71e9cb84::function_50f16166("scriptmover", "derez_ai_deaths", 1, 1, "int", &function_ecc75bea, 0, 0);
	namespace_71e9cb84::function_50f16166("scriptmover", "truck_explosion_fx", 1, 1, "int", &function_258012a1, 0, 0);
	namespace_71e9cb84::function_50f16166("scriptmover", "derez_model_deaths", 1, 1, "int", &function_ecc75bea, 0, 0);
	namespace_71e9cb84::function_50f16166("scriptmover", "emp_door_fx", 1, 1, "int", &function_ddee6a4e, 0, 0);
	namespace_71e9cb84::function_50f16166("scriptmover", "smoke_grenade_fx", 1, 1, "int", &function_ce461171, 0, 0);
	namespace_71e9cb84::function_50f16166("scriptmover", "frag_grenade_fx", 1, 1, "int", &function_1e4e8925, 0, 0);
	namespace_71e9cb84::function_50f16166("scriptmover", "wall_break_fx", 1, 1, "int", &function_c8c87ed0, 0, 0);
	namespace_71e9cb84::function_50f16166("scriptmover", "train_explosion_fx", 1, 1, "int", &function_8d759480, 0, 0);
	namespace_71e9cb84::function_50f16166("scriptmover", "wasp_hack_fx", 1, 1, "int", &function_ec9960ef, 0, 0);
	namespace_71e9cb84::function_50f16166("vehicle", "wasp_hack_fx", 1, 1, "int", &function_ec9960ef, 0, 0);
	namespace_71e9cb84::function_50f16166("vehicle", "emp_vehicles_fx", 1, 1, "int", &function_ddee6a4e, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "player_snow_fx", 1, 4, "int", &function_e416b7db, 0, 0);
	namespace_71e9cb84::function_50f16166("allplayers", "player_spawn_fx", 1, 1, "int", &function_aebc5072, 0, 0);
	namespace_71e9cb84::function_50f16166("scriptmover", "emp_generator_fx", 1, 1, "int", &function_aad321ae, 0, 0);
	namespace_71e9cb84::function_50f16166("scriptmover", "train_fx_occlude", 1, 1, "int", &function_73c10276, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "waterplant_rotate_fans", 1, 1, "int", &function_1e2a542f, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "train_main_fx_occlude", 1, 1, "int", &function_4f8cc662, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "train_rumble_loop", 1, 1, "int", &function_b45c2459, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "postfx_futz", 1, 1, "counter", &function_baae4949, 0, 0);
}

/*
	Name: function_ecc75bea
	Namespace: namespace_ce0e5f06
	Checksum: 0xE16631C4
	Offset: 0x11E8
	Size: 0x22B
	Parameters: 7
	Flags: None
*/
function function_ecc75bea(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1 && isdefined(var_ec74b091))
	{
		self function_921a1574(0, "evt_ai_derez");
		function_bd23b431(var_ec74b091, "player/fx_ai_dni_rez_out_arm_left_clean", "j_elbow_le");
		function_bd23b431(var_ec74b091, "player/fx_ai_dni_rez_out_arm_left_clean", "j_shoulder_le");
		function_bd23b431(var_ec74b091, "player/fx_ai_dni_rez_out_arm_right_clean", "j_elbow_ri");
		function_bd23b431(var_ec74b091, "player/fx_ai_dni_rez_out_arm_right_clean", "j_shoulder_ri");
		function_bd23b431(var_ec74b091, "player/fx_ai_dni_rez_out_head_clean", "j_head");
		function_bd23b431(var_ec74b091, "player/fx_ai_dni_rez_out_hip_left_clean", "j_hip_le");
		function_bd23b431(var_ec74b091, "player/fx_ai_dni_rez_out_hip_right_clean", "j_hip_ri");
		function_bd23b431(var_ec74b091, "player/fx_ai_dni_rez_out_leg_left_clean", "j_knee_le");
		function_bd23b431(var_ec74b091, "player/fx_ai_dni_rez_out_leg_right_clean", "j_knee_ri");
		function_bd23b431(var_ec74b091, "player/fx_ai_dni_rez_out_torso_clean", "j_spine4");
		function_bd23b431(var_ec74b091, "player/fx_ai_dni_rez_out_waist_clean", "j_spinelower");
	}
}

/*
	Name: function_e416b7db
	Namespace: namespace_ce0e5f06
	Checksum: 0x73ADECD7
	Offset: 0x1420
	Size: 0x153
	Parameters: 7
	Flags: None
*/
function function_e416b7db(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	var_5dc5e20a = function_79c174a3(var_ec74b091);
	if(var_9193c732 == 1)
	{
		var_5dc5e20a thread function_120f324e(var_ec74b091, 1);
	}
	else if(var_9193c732 == 2)
	{
		var_5dc5e20a thread function_120f324e(var_ec74b091, 0.5);
	}
	else if(var_9193c732 == 3)
	{
		var_5dc5e20a thread function_120f324e(var_ec74b091, 0.25);
	}
	else if(var_9193c732 == 4)
	{
		var_5dc5e20a notify("hash_860e4d9e");
		var_5dc5e20a function_5677f0fa(var_ec74b091);
	}
	else
	{
		var_5dc5e20a notify("hash_860e4d9e");
		var_5dc5e20a function_97cc38a5(var_ec74b091);
	}
}

/*
	Name: function_5677f0fa
	Namespace: namespace_ce0e5f06
	Checksum: 0x8DEAA341
	Offset: 0x1580
	Size: 0x103
	Parameters: 1
	Flags: None
*/
function function_5677f0fa(var_ec74b091)
{
	if(!isdefined(level.var_3383b379))
	{
		level.var_3383b379 = [];
	}
	self function_97cc38a5();
	var_4bc288a0 = self function_c7f3ce11();
	level.var_3383b379[var_4bc288a0] = namespace_82b91a51::function_b9fd52a4(var_ec74b091, "tag_origin", self.var_722885f3);
	level.var_3383b379[var_4bc288a0] function_37f7858a(self);
	level.var_3383b379[var_4bc288a0] thread function_7683b584(self);
	function_da6acfd2(var_ec74b091, "weather/fx_snow_player_os_nworld", level.var_3383b379[var_4bc288a0], "tag_origin");
}

/*
	Name: function_97cc38a5
	Namespace: namespace_ce0e5f06
	Checksum: 0xC569FECA
	Offset: 0x1690
	Size: 0x7B
	Parameters: 1
	Flags: None
*/
function function_97cc38a5(var_ec74b091)
{
	if(!isdefined(level.var_3383b379))
	{
		level.var_3383b379 = [];
	}
	var_4bc288a0 = self function_c7f3ce11();
	if(isdefined(level.var_3383b379[var_4bc288a0]))
	{
		level.var_3383b379[var_4bc288a0] function_dc8c8404();
	}
}

/*
	Name: function_7683b584
	Namespace: namespace_ce0e5f06
	Checksum: 0xB96B40C1
	Offset: 0x1718
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_7683b584(var_5dc5e20a)
{
	self endon("hash_128f8789");
	var_5dc5e20a waittill("hash_128f8789");
	self function_dc8c8404();
}

/*
	Name: function_120f324e
	Namespace: namespace_ce0e5f06
	Checksum: 0x9A4D43DB
	Offset: 0x1760
	Size: 0x7D
	Parameters: 2
	Flags: None
*/
function function_120f324e(var_ec74b091, var_ee7dbbc9)
{
	self notify("hash_860e4d9e");
	self endon("hash_860e4d9e");
	self function_97cc38a5(var_ec74b091);
	while(isdefined(self))
	{
		function_da6acfd2(var_ec74b091, "weather/fx_snow_player_slow_os_nworld", self, "none");
		wait(var_ee7dbbc9);
	}
}

/*
	Name: function_ff1b6796
	Namespace: namespace_ce0e5f06
	Checksum: 0x59EB7A43
	Offset: 0x17E8
	Size: 0x173
	Parameters: 1
	Flags: None
*/
function function_ff1b6796(var_ec74b091)
{
	if(isdefined(self.var_f3f44e9))
	{
		return;
	}
	var_27c4935 = (0, 0, 0);
	var_fc9f79e7 = "snow/fx_snow_train_flap_sm";
	if(self.var_6df9264 == "p7_zur_train_car_brake_flap_36")
	{
		var_27c4935 = VectorScale((1, 0, 0), 36);
		var_fc9f79e7 = "snow/fx_snow_train_flap";
	}
	else if(self.var_6df9264 == "p7_zur_train_car_brake_flap_48")
	{
		var_27c4935 = VectorScale((1, 0, 0), 48);
		var_fc9f79e7 = "snow/fx_snow_train_flap_sm";
	}
	else if(self.var_6df9264 == "p7_zur_train_car_brake_flap_48_yellow")
	{
		var_27c4935 = VectorScale((1, 0, 0), 48);
		var_fc9f79e7 = "snow/fx_snow_train_flap_sm";
	}
	var_83683dc7 = namespace_82b91a51::function_b9fd52a4(var_ec74b091, "tag_origin", self.var_722885f3 + var_27c4935, self.var_6ab6f4fd);
	var_83683dc7 function_37f7858a(self);
	self.var_f3f44e9 = var_83683dc7;
	var_83683dc7 function_88a10e85(var_ec74b091, "brake_flap_snow", var_fc9f79e7, "tag_origin");
}

/*
	Name: function_52bc98a1
	Namespace: namespace_ce0e5f06
	Checksum: 0xCB47F400
	Offset: 0x1968
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_52bc98a1(var_ec74b091)
{
	self function_88a10e85(var_ec74b091, "robot_snow_impact", "snow/fx_snow_train_robot_fall_impact", "tag_origin", 0);
}

/*
	Name: function_aebc5072
	Namespace: namespace_ce0e5f06
	Checksum: 0xEB46EE82
	Offset: 0x19B0
	Size: 0x9B
	Parameters: 7
	Flags: None
*/
function function_aebc5072(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		self function_88a10e85(var_ec74b091, "objective_light", "player/fx_ai_dni_rez_in_hero_clean");
	}
	else
	{
		self function_be968491(var_ec74b091, "objective_light", "player/fx_ai_dni_rez_in_hero_clean");
	}
}

/*
	Name: function_9b9abce4
	Namespace: namespace_ce0e5f06
	Checksum: 0x6B3188C9
	Offset: 0x1A58
	Size: 0x21B
	Parameters: 7
	Flags: None
*/
function function_9b9abce4(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	function_bd23b431(var_ec74b091, "player/fx_ai_dni_rez_in_arm_left_clean", "j_elbow_le");
	function_bd23b431(var_ec74b091, "player/fx_ai_dni_rez_in_arm_left_clean", "j_shoulder_le");
	function_bd23b431(var_ec74b091, "player/fx_ai_dni_rez_in_arm_right_clean", "j_elbow_ri");
	function_bd23b431(var_ec74b091, "player/fx_ai_dni_rez_in_arm_right_clean", "j_shoulder_ri");
	function_bd23b431(var_ec74b091, "player/fx_ai_dni_rez_in_head_clean", "j_head");
	function_bd23b431(var_ec74b091, "player/fx_ai_dni_rez_in_hip_left_clean", "j_hip_le");
	function_bd23b431(var_ec74b091, "player/fx_ai_dni_rez_in_hip_right_clean", "j_hip_ri");
	function_bd23b431(var_ec74b091, "player/fx_ai_dni_rez_in_leg_left_clean", "j_knee_le");
	function_bd23b431(var_ec74b091, "player/fx_ai_dni_rez_in_leg_right_clean", "j_knee_ri");
	function_bd23b431(var_ec74b091, "player/fx_ai_dni_rez_in_torso_clean", "j_spine4");
	function_bd23b431(var_ec74b091, "player/fx_ai_dni_rez_in_waist_clean", "j_spinelower");
	if(var_9193c732 == 2)
	{
		self thread function_1c2b3dda(var_ec74b091, 1);
	}
}

/*
	Name: function_be66c05b
	Namespace: namespace_ce0e5f06
	Checksum: 0x9AD1FEF8
	Offset: 0x1C80
	Size: 0x21B
	Parameters: 7
	Flags: None
*/
function function_be66c05b(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	function_bd23b431(var_ec74b091, "player/fx_ai_dni_rez_out_arm_left_clean", "j_elbow_le");
	function_bd23b431(var_ec74b091, "player/fx_ai_dni_rez_out_arm_left_clean", "j_shoulder_le");
	function_bd23b431(var_ec74b091, "player/fx_ai_dni_rez_out_arm_right_clean", "j_elbow_ri");
	function_bd23b431(var_ec74b091, "player/fx_ai_dni_rez_out_arm_right_clean", "j_shoulder_ri");
	function_bd23b431(var_ec74b091, "player/fx_ai_dni_rez_out_head_clean", "j_head");
	function_bd23b431(var_ec74b091, "player/fx_ai_dni_rez_out_hip_left_clean", "j_hip_le");
	function_bd23b431(var_ec74b091, "player/fx_ai_dni_rez_out_hip_right_clean", "j_hip_ri");
	function_bd23b431(var_ec74b091, "player/fx_ai_dni_rez_out_leg_left_clean", "j_knee_le");
	function_bd23b431(var_ec74b091, "player/fx_ai_dni_rez_out_leg_right_clean", "j_knee_ri");
	function_bd23b431(var_ec74b091, "player/fx_ai_dni_rez_out_torso_clean", "j_spine4");
	function_bd23b431(var_ec74b091, "player/fx_ai_dni_rez_out_waist_clean", "j_spinelower");
	if(var_9193c732 == 2)
	{
		self thread function_1c2b3dda(var_ec74b091, 0);
	}
}

/*
	Name: function_1c2b3dda
	Namespace: namespace_ce0e5f06
	Checksum: 0xA348106B
	Offset: 0x1EA8
	Size: 0x1AB
	Parameters: 2
	Flags: None
*/
function function_1c2b3dda(var_ec74b091, var_21082827)
{
	if(!isdefined(var_21082827))
	{
		var_21082827 = 1;
	}
	self endon("hash_d5da096");
	var_f721d9a5 = GetTime();
	if(!var_21082827)
	{
		self function_e7f6dc4e(0, 0, "scriptVector0", 0, 0, 0);
	}
	else
	{
		self function_e7f6dc4e(0, 0, "scriptVector0", 1, 0, 0);
	}
	var_67c8a9ed = 1;
	while(var_67c8a9ed)
	{
		var_60db70fa = GetTime();
		var_e65455e6 = var_60db70fa - var_f721d9a5 / 1000;
		if(var_e65455e6 >= 0.5)
		{
			var_e65455e6 = 0.5;
			var_67c8a9ed = 0;
		}
		if(!var_21082827)
		{
			var_868ea283 = 1 - var_e65455e6 / 0.5;
		}
		else
		{
			var_868ea283 = var_e65455e6 / 0.5;
		}
		self function_e7f6dc4e(0, 0, "scriptVector0", var_868ea283, 0, 0);
		wait(0.01);
	}
	wait(0.05);
	self function_e7f6dc4e(0, 0, "scriptVector0", 0, 0, 0);
}

/*
	Name: function_bd23b431
	Namespace: namespace_ce0e5f06
	Checksum: 0x82F1185
	Offset: 0x2060
	Size: 0x63
	Parameters: 3
	Flags: None
*/
function function_bd23b431(var_ec74b091, var_fc9f79e7, var_c6107c9b)
{
	var_ac46de76 = function_da6acfd2(var_ec74b091, var_fc9f79e7, self, var_c6107c9b);
	function_6af43dcb(var_ec74b091, var_ac46de76, 1);
}

/*
	Name: function_6e7d0ca2
	Namespace: namespace_ce0e5f06
	Checksum: 0x785E78CF
	Offset: 0x20D0
	Size: 0x153
	Parameters: 7
	Flags: None
*/
function function_6e7d0ca2(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		self function_88a10e85(var_ec74b091, "suspect_trail", "player/fx_plyr_ghost_trail_nworld", "tag_origin");
		self function_88a10e85(var_ec74b091, "suspect_trail_feet_left", "player/fx_plyr_ghost_trail_feet_nworld", "J_Ball_LE");
		self function_88a10e85(var_ec74b091, "suspect_trail_feet_right", "player/fx_plyr_ghost_trail_feet_nworld", "J_Ball_RI");
	}
	else
	{
		self function_be968491(var_ec74b091, "suspect_trail", "player/fx_plyr_ghost_trail_nworld");
		self function_be968491(var_ec74b091, "suspect_trail_feet_left", "player/fx_plyr_ghost_trail_feet_nworld");
		self function_be968491(var_ec74b091, "suspect_trail_feet_right", "player/fx_plyr_ghost_trail_feet_nworld");
	}
}

/*
	Name: function_752d4412
	Namespace: namespace_ce0e5f06
	Checksum: 0x88A3F08C
	Offset: 0x2230
	Size: 0xFB
	Parameters: 7
	Flags: None
*/
function function_752d4412(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		self function_88a10e85(var_ec74b091, "suspect_trail_feet_left", "player/fx_plyr_ghost_trail_feet_nworld", "J_Ball_LE");
		self function_88a10e85(var_ec74b091, "suspect_trail_feet_right", "player/fx_plyr_ghost_trail_feet_nworld", "J_Ball_RI");
	}
	else
	{
		self function_be968491(var_ec74b091, "suspect_trail_feet_left", "player/fx_plyr_ghost_trail_feet_nworld");
		self function_be968491(var_ec74b091, "suspect_trail_feet_right", "player/fx_plyr_ghost_trail_feet_nworld");
	}
}

/*
	Name: function_ec9960ef
	Namespace: namespace_ce0e5f06
	Checksum: 0x765789D3
	Offset: 0x2338
	Size: 0xA3
	Parameters: 7
	Flags: None
*/
function function_ec9960ef(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		self function_88a10e85(var_ec74b091, "wasp_hack", "vehicle/fx_light_wasp_friendly_hacked", "tag_origin");
	}
	else
	{
		self function_be968491(var_ec74b091, "wasp_hack", "vehicle/fx_light_wasp_friendly_hacked");
	}
}

/*
	Name: function_258012a1
	Namespace: namespace_ce0e5f06
	Checksum: 0x79664504
	Offset: 0x23E8
	Size: 0xA3
	Parameters: 7
	Flags: None
*/
function function_258012a1(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		self function_88a10e85(var_ec74b091, "truck_explosion", "explosions/fx_exp_truck_slomo_nworld", "tag_fx_front");
	}
	else
	{
		self function_be968491(var_ec74b091, "truck_explosion", "explosions/fx_exp_truck_slomo_nworld");
	}
}

/*
	Name: function_aad321ae
	Namespace: namespace_ce0e5f06
	Checksum: 0xB0664EC4
	Offset: 0x2498
	Size: 0x6B
	Parameters: 7
	Flags: None
*/
function function_aad321ae(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		function_fd4ba5e1(var_ec74b091, "explosions/fx_exp_emp_lg_nworld", self.var_722885f3);
	}
}

/*
	Name: function_73c10276
	Namespace: namespace_ce0e5f06
	Checksum: 0xEB5A050D
	Offset: 0x2510
	Size: 0x143
	Parameters: 7
	Flags: None
*/
function function_73c10276(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		self.var_d07c1b83 = namespace_82b91a51::function_b9fd52a4(var_ec74b091, "tag_origin", self.var_722885f3, self.var_6ab6f4fd);
		self.var_d07c1b83 function_37f7858a(self);
		self.var_c604c399 = function_6edd51c4(var_ec74b091, self.var_d07c1b83, "tag_origin", (1300 / 2, 450 / 2, 500 / 2));
	}
	else if(isdefined(self.var_c604c399))
	{
		function_3356408f(var_ec74b091, self.var_c604c399);
		self.var_d07c1b83 function_dc8c8404();
	}
}

/*
	Name: function_4f8cc662
	Namespace: namespace_ce0e5f06
	Checksum: 0x4D5ADB07
	Offset: 0x2660
	Size: 0x355
	Parameters: 7
	Flags: None
*/
function function_4f8cc662(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		var_c828a8ed = namespace_14b42b8a::function_7922262b("train_main_occluder", "targetname");
		var_c828a8ed.var_44fe3058 = namespace_82b91a51::function_b9fd52a4(var_ec74b091, "tag_origin", var_c828a8ed.var_722885f3, var_c828a8ed.var_6ab6f4fd);
		var_c828a8ed.var_c604c399 = function_6edd51c4(var_ec74b091, var_c828a8ed.var_44fe3058, "tag_origin", (10240 / 2, 400 / 2, 288 / 2));
		var_30cb37a9 = namespace_14b42b8a::function_7922262b("train_end_occluder", "targetname");
		var_30cb37a9.var_44fe3058 = namespace_82b91a51::function_b9fd52a4(var_ec74b091, "tag_origin", var_30cb37a9.var_722885f3, var_30cb37a9.var_6ab6f4fd);
		var_30cb37a9.var_c604c399 = function_6edd51c4(var_ec74b091, var_30cb37a9.var_44fe3058, "tag_origin", (2928 / 2, 400 / 2, 288 / 2));
		var_5987da1 = namespace_14b42b8a::function_7faf4c39("train_double_decker_occluder", "targetname");
		foreach(var_d6e89d77 in var_5987da1)
		{
			var_d6e89d77.var_44fe3058 = namespace_82b91a51::function_b9fd52a4(var_ec74b091, "tag_origin", var_d6e89d77.var_722885f3, var_d6e89d77.var_6ab6f4fd);
			var_d6e89d77.var_c604c399 = function_6edd51c4(var_ec74b091, var_d6e89d77.var_44fe3058, "tag_origin", (1300 / 2, 600 / 2, 680 / 2));
		}
	}
}

/*
	Name: function_ce461171
	Namespace: namespace_ce0e5f06
	Checksum: 0x486A1CCA
	Offset: 0x29C0
	Size: 0xA3
	Parameters: 7
	Flags: None
*/
function function_ce461171(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		self.var_ae927961 = function_da6acfd2(var_ec74b091, "explosions/fx_exp_grenade_smoke_nworld", self, "tag_origin");
	}
	else if(isdefined(self.var_ae927961))
	{
		function_d555a113(var_ec74b091, self.var_ae927961);
	}
}

/*
	Name: function_1e4e8925
	Namespace: namespace_ce0e5f06
	Checksum: 0x60A791F0
	Offset: 0x2A70
	Size: 0x103
	Parameters: 7
	Flags: None
*/
function function_1e4e8925(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		var_83683dc7 = namespace_82b91a51::function_b9fd52a4(var_ec74b091, "tag_origin", self.var_722885f3);
		var_83683dc7 namespace_82b91a51::function_67520c6a(30, undefined, &function_dc8c8404);
		var_83683dc7 function_88a10e85(var_ec74b091, "frag_grenade", "explosions/fx_exp_grenade_default", "tag_origin");
	}
	else
	{
		self function_be968491(var_ec74b091, "frag_grenade", "explosions/fx_exp_grenade_default");
	}
}

/*
	Name: function_c8c87ed0
	Namespace: namespace_ce0e5f06
	Checksum: 0x40DAF0A6
	Offset: 0x2B80
	Size: 0x103
	Parameters: 7
	Flags: None
*/
function function_c8c87ed0(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		var_83683dc7 = namespace_82b91a51::function_b9fd52a4(var_ec74b091, "tag_origin", self.var_722885f3);
		var_83683dc7 namespace_82b91a51::function_67520c6a(5, undefined, &function_dc8c8404);
		var_83683dc7 function_88a10e85(var_ec74b091, "wall_break", "destruct/fx_dest_wall_nworld", "tag_origin");
	}
	else
	{
		self function_be968491(var_ec74b091, "wall_break", "destruct/fx_dest_wall_nworld");
	}
}

/*
	Name: function_8d759480
	Namespace: namespace_ce0e5f06
	Checksum: 0x1D2D79CA
	Offset: 0x2C90
	Size: 0xA3
	Parameters: 7
	Flags: None
*/
function function_8d759480(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		self function_88a10e85(var_ec74b091, "train_explosion", "explosions/fx_exp_train_car_nworld", "fx_01_jnt");
	}
	else
	{
		self function_be968491(var_ec74b091, "train_explosion", "explosions/fx_exp_train_car_nworld");
	}
}

/*
	Name: function_ddee6a4e
	Namespace: namespace_ce0e5f06
	Checksum: 0xAAFD7786
	Offset: 0x2D40
	Size: 0xA3
	Parameters: 7
	Flags: None
*/
function function_ddee6a4e(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		self function_88a10e85(var_ec74b091, "emp_vehicles", "electric/fx_elec_emp_machines_nworld", "tag_origin");
	}
	else
	{
		self function_be968491(var_ec74b091, "emp_vehicles", "electric/fx_elec_emp_machines_nworld");
	}
}

/*
	Name: function_b45c2459
	Namespace: namespace_ce0e5f06
	Checksum: 0x33EFF85
	Offset: 0x2DF0
	Size: 0x6D
	Parameters: 7
	Flags: None
*/
function function_b45c2459(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		self thread function_dd551c54(var_ec74b091);
	}
	else
	{
		self notify("hash_2608c3ca");
	}
}

/*
	Name: function_dd551c54
	Namespace: namespace_ce0e5f06
	Checksum: 0xDCF3D5B
	Offset: 0x2E68
	Size: 0x1AD
	Parameters: 1
	Flags: None
*/
function function_dd551c54(var_ec74b091)
{
	self endon("hash_128f8789");
	self endon("hash_d5da096");
	self endon("hash_2608c3ca");
	while(1)
	{
		var_ffb35e3f = function_72a94f05(2, 7.5);
		wait(var_ffb35e3f);
		var_725460af = function_26299103(5) + 1;
		var_a4c1ab1b = self.var_722885f3;
		switch(var_725460af)
		{
			case 1:
			{
				self thread function_bfff202d(var_ec74b091, 4);
				break;
			}
			case 2:
			{
				self thread function_bfff202d(var_ec74b091, 3.5);
				break;
			}
			case 3:
			{
				self thread function_bfff202d(var_ec74b091, 3);
				break;
			}
			case 4:
			{
				self thread function_bfff202d(var_ec74b091, 2.5);
				break;
			}
			case 5:
			{
				self thread function_bfff202d(var_ec74b091, 2);
				break;
			}
			case default:
			{
				break;
			}
		}
	}
}

/*
	Name: function_bfff202d
	Namespace: namespace_ce0e5f06
	Checksum: 0xE95C8D6D
	Offset: 0x3020
	Size: 0xBF
	Parameters: 2
	Flags: None
*/
function function_bfff202d(var_ec74b091, var_f05509e4)
{
	self endon("hash_128f8789");
	self endon("hash_d5da096");
	self endon("hash_2608c3ca");
	if(isdefined(var_f05509e4))
	{
		var_a78a7a9e = function_a8fb77bd();
		var_a78a7a9e endon("hash_4573206");
		var_a78a7a9e namespace_82b91a51::function_6729b6ba(var_f05509e4, "timeout");
	}
	while(1)
	{
		self function_e2af603e(var_ec74b091, "cp_newworld_rumble_train_roof_loop");
		wait(0.185);
	}
}

/*
	Name: function_be968491
	Namespace: namespace_ce0e5f06
	Checksum: 0x6EC9DEE
	Offset: 0x30E8
	Size: 0x10B
	Parameters: 3
	Flags: None
*/
function function_be968491(var_ec74b091, var_7b81749, var_fc9f79e7)
{
	if(!isdefined(self.var_62bb476b))
	{
		self.var_62bb476b = [];
	}
	if(!isdefined(self.var_62bb476b[var_ec74b091]))
	{
		self.var_62bb476b[var_ec74b091] = [];
	}
	if(!isdefined(self.var_62bb476b[var_ec74b091][var_7b81749]))
	{
		self.var_62bb476b[var_ec74b091][var_7b81749] = [];
	}
	if(isdefined(var_fc9f79e7) && isdefined(self.var_62bb476b[var_ec74b091][var_7b81749][var_fc9f79e7]))
	{
		var_ac46de76 = self.var_62bb476b[var_ec74b091][var_7b81749][var_fc9f79e7];
		function_28573e36(var_ec74b091, var_ac46de76, 0);
		self.var_62bb476b[var_ec74b091][var_7b81749][var_fc9f79e7] = undefined;
	}
}

/*
	Name: function_400e6e82
	Namespace: namespace_ce0e5f06
	Checksum: 0xA68F8874
	Offset: 0x3200
	Size: 0x11D
	Parameters: 3
	Flags: None
*/
function function_400e6e82(var_ec74b091, var_7b81749, var_91599cfb)
{
	if(!isdefined(var_91599cfb))
	{
		var_91599cfb = 1;
	}
	if(isdefined(self.var_62bb476b) && isdefined(self.var_62bb476b[var_ec74b091]) && isdefined(self.var_62bb476b[var_ec74b091][var_7b81749]))
	{
		var_a15d7eed = function_391512da(self.var_62bb476b[var_ec74b091][var_7b81749]);
		for(var_c957f6b6 = 0; var_c957f6b6 < var_a15d7eed.size; var_c957f6b6++)
		{
			function_28573e36(var_ec74b091, self.var_62bb476b[var_ec74b091][var_7b81749][var_a15d7eed[var_c957f6b6]], var_91599cfb);
			self.var_62bb476b[var_ec74b091][var_7b81749][var_a15d7eed[var_c957f6b6]] = undefined;
		}
	}
}

/*
	Name: function_88a10e85
	Namespace: namespace_ce0e5f06
	Checksum: 0x2F1A9D12
	Offset: 0x3328
	Size: 0x131
	Parameters: 6
	Flags: None
*/
function function_88a10e85(var_ec74b091, var_7b81749, var_fc9f79e7, var_c6107c9b, var_cffd17f8, var_ff19846d)
{
	if(!isdefined(var_c6107c9b))
	{
		var_c6107c9b = "tag_origin";
	}
	if(!isdefined(var_cffd17f8))
	{
		var_cffd17f8 = 1;
	}
	if(!isdefined(var_ff19846d))
	{
		var_ff19846d = 0;
	}
	self function_be968491(var_ec74b091, var_7b81749, var_fc9f79e7);
	if(var_cffd17f8)
	{
		self function_400e6e82(var_ec74b091, var_7b81749, 0);
	}
	var_ac46de76 = function_da6acfd2(var_ec74b091, var_fc9f79e7, self, var_c6107c9b);
	if(var_ff19846d == 1)
	{
		function_6af43dcb(var_ec74b091, var_ac46de76, var_ff19846d);
	}
	self.var_62bb476b[var_ec74b091][var_7b81749][var_fc9f79e7] = var_ac46de76;
}

/*
	Name: function_ea0e7704
	Namespace: namespace_ce0e5f06
	Checksum: 0x1380EBD0
	Offset: 0x3468
	Size: 0x191
	Parameters: 8
	Flags: None
*/
function function_ea0e7704(var_ec74b091, var_7b81749, var_fc9f79e7, var_cffd17f8, var_c55dcd82, var_d230ad83, var_766fbf83, var_ff19846d)
{
	if(!isdefined(var_cffd17f8))
	{
		var_cffd17f8 = 1;
	}
	if(!isdefined(var_ff19846d))
	{
		var_ff19846d = 0;
	}
	self function_be968491(var_ec74b091, var_7b81749, var_fc9f79e7);
	if(var_cffd17f8)
	{
		self function_400e6e82(var_ec74b091, var_7b81749, 0);
	}
	if(isdefined(var_d230ad83) && isdefined(var_766fbf83))
	{
		var_ac46de76 = function_fd4ba5e1(var_ec74b091, var_fc9f79e7, var_c55dcd82, var_d230ad83, var_766fbf83);
	}
	else if(isdefined(var_d230ad83))
	{
		var_ac46de76 = function_fd4ba5e1(var_ec74b091, var_fc9f79e7, var_c55dcd82, var_d230ad83);
	}
	else
	{
		var_ac46de76 = function_fd4ba5e1(var_ec74b091, var_fc9f79e7, var_c55dcd82);
	}
	function_6af43dcb(var_ec74b091, var_ac46de76, var_ff19846d);
	self.var_62bb476b[var_ec74b091][var_7b81749][var_fc9f79e7] = var_ac46de76;
}

/*
	Name: function_baae4949
	Namespace: namespace_ce0e5f06
	Checksum: 0x1388BF72
	Offset: 0x3608
	Size: 0x63
	Parameters: 7
	Flags: None
*/
function function_baae4949(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		self namespace_bdde9225::function_bca12b73("pstfx_dni_screen_futz");
	}
}

/*
	Name: function_1e2a542f
	Namespace: namespace_ce0e5f06
	Checksum: 0x1C0BFA76
	Offset: 0x3678
	Size: 0x20B
	Parameters: 7
	Flags: None
*/
function function_1e2a542f(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	var_17287685 = function_6ada35ba(var_ec74b091, "wt_fan_01", "targetname");
	var_3d2af0ee = function_6ada35ba(var_ec74b091, "wt_fan_02", "targetname");
	var_632d6b57 = function_6ada35ba(var_ec74b091, "wt_fan_03", "targetname");
	var_591c1278 = function_6ada35ba(var_ec74b091, "wt_fan_04", "targetname");
	if(var_9193c732 != var_ade4d29d && var_9193c732 == 1)
	{
		var_17287685 thread function_65012f08();
		wait(0.1);
		var_3d2af0ee thread function_65012f08();
		wait(0.1);
		var_632d6b57 thread function_65012f08();
		wait(0.1);
		var_591c1278 thread function_65012f08();
	}
	if(var_9193c732 == 0)
	{
		level notify("hash_c78324b7");
		var_17287685 function_dc8c8404();
		var_3d2af0ee function_dc8c8404();
		var_632d6b57 function_dc8c8404();
		var_591c1278 function_dc8c8404();
	}
}

/*
	Name: function_65012f08
	Namespace: namespace_ce0e5f06
	Checksum: 0x97140ECF
	Offset: 0x3890
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_65012f08()
{
	self endon("hash_c78324b7");
	var_35651350 = 3;
	while(1)
	{
		self function_21d0da55(180, var_35651350);
		self waittill("hash_6654e4f4");
	}
}

